mkdir -p ids

# ids peak (camera SDK) with ueye transport layer
if [ ! -f ids/ids-peak-with-ueyetl_2.15.0.0-352_arm64.deb ]; then
    curl https://fr.ids-imaging.com/files/downloads/ids-peak/software/linux-arm64/ids-peak-with-ueyetl_2.15.0.0-352_arm64.deb -o ids/ids-peak-with-ueyetl_2.15.0.0-352_arm64.deb
fi

# ids dependencies and extract archive
if [ ! -f ids/ids-software-suite-linux-arm64-4.96.1-debian.tgz ]; then
    curl https://fr.ids-imaging.com/files/downloads/ids-software-suite/software/linux-arm64/ids-software-suite-linux-arm64-4.96.1-debian.tgz -o ids/ids-software-suite-linux-arm64-4.96.1-debian.tgz \
    && tar -xzvf ids/ids-software-suite-linux-arm64-4.96.1-debian.tgz -C ids \
    && tar -xzvf ids/ueye_4.96.1.2054_arm64.deb.tar.gz -C ids
fi