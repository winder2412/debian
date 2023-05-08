#!/bin/bash
ISYAY=/sbin/yay
if [ -z "$(command)" ]; then
    grep "deb https://deb.debian.org/debian/ unstable main" /etc/apt/sources.list
    sudo echo "deb https://deb.debian.org/debian/ unstable main
    deb-src https://deb.debian.org/debian/ unstable main" >> /etc/apt/sources.list
    apt update && apt upgrade
fi
else 
    echo -e "sid branch is already used,moving on"   
    apt update && apt upgrade
fi


