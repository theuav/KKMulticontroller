#!/bin/bash

# find_arduino.sh
# http://theuav.net/
#
# Copyright (c) 2014 Juan-Carlos Mendez
# Licensed under the MIT license.
#
# This script will try to find the avr toolchain packed with arduino, which is 
# by far the easiest way for a user to get a working toolchain on the Mac
#
# Usage:
# On a Mac OS X machine with the Arduino app installed, type find_arduino.sh on 
# the command line before executing make
#

AVRTOOLPATH=""
# use spotlight to find where Arduino app is
[ -f "$(mdfind 'kMDItemDisplayName == Arduino' | grep -m 1 'Arduino.app')/Contents/Resources/Java/hardware/tools/avr/bin/avr-gcc" ] && {
	export AVRTOOLPATH="$(mdfind 'kMDItemDisplayName == Arduino' | grep -m 1 'Arduino.app')/Contents/Resources/Java/hardware/tools/avr/bin"
}
[ "$AVRTOOLPATH"x == ""x ] && {
    echo "The Arduino app was not found!  This is the easiest way to get a working avr toolchain on a Mac"
    exit 1
}

export PATH="$AVRTOOLPATH":$PATH

# The MIT License (MIT)
#
# Copyright (c) 2014 Juan-Carlos Mendez
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.