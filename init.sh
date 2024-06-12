#!/bin/bash

# init process creating a dir

mkdir -p /data-ram

# mount using memory ( i used a 16GB memory)

mount -t tmpfs -o size=16384M tmpfs /data-ram

# if you want to verify if is working just run this command

cd /data-ram && dd if=/dev/zero of=file_2GB.iso bs=1M count=2048

# use top command to verify if the memory is consumid by the file_2GB.iso
# after this, just run the docker compose up and done, you have a pgsql running on memory ram
