#!/bin/bash

set -e

pacman --noconfirm -Suy

pacman --noconfirm -S --needed \
    git \
    subversion \ 
    tar \
    zip \
    p7zip \ 
    make \
    patch \
    automake \
    autoconf \
    libtool \
    bison \
    gettext-devel \
    sshpass \
    texinfo \
    autogen \
    dejagnu \
    
git clone -b develop https://github.com/niXman/mingw-builds
cd mingw-builds
./build --mode=gcc-8.2.0 --arch=x86_64 --threads=win32 --with-default-msvcrt=ucrt --exceptions=seh --rt-version=v6
