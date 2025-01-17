FROM quay.io/pypa/manylinux2010_x86_64

ENV HDF5_VERSION 1.12.1
ENV HDF5_DIR /usr/local

COPY install_libaec.sh /tmp/install_libaec.sh
RUN bash /tmp/install_libaec.sh
COPY install_hdf5.sh /tmp/install_hdf5.sh
RUN bash /tmp/install_hdf5.sh
