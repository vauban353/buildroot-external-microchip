#!/usr/bin/env bash

cd ${BINARIES_DIR}
mkdir dts
# cp -r microchip/ dts/
pwd
cp mpfs-icicle-kit.dtb dts/
cp ../../../buildroot-external-microchip/board/bboard/bvf/bv-fire.its bv-fire.its
${BUILD_DIR}/uboot-2022.01/tools/mkimage -f ./bv-fire.its bv-fire.itb
