#!/bin/bash
set -e -x

# Install packages and test
for PYBIN in /opt/python/*/bin/; do
    "${PYBIN}/pip" install pyaudio3 --no-index -f /io/wheelhouse
    (cd "$HOME"; "${PYBIN}/nosetests" pymanylinuxdemo)
done