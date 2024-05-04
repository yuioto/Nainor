#!/usr/bin/env -S just --justfile
# Maintainer: yuioto <yuiotochan@outlook.com>

default:
	@just --list --unsorted

build:
	sudo mkarchiso -v -w work -o out .

build-act:
	act -j build

clean:
	rm -r out
	rm -r work
