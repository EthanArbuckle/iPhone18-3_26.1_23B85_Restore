@interface PSCVPixelBufferResource
- (PSCVPixelBufferResource)initWithKey:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 pixelFormat:(unsigned int)a6;
- (id)deserialize:(char *)a3 timeStamp:(unint64_t *)a4;
- (void)copyISPBufferWithInput:(__CVBuffer *)a3 output:(__CVBuffer *)a4;
- (void)dealloc;
- (void)serialize:(id)a3 buff:(char *)a4 time:(unint64_t)a5 buff_size:(unsigned int)a6;
- (void)writePixelBuffer:(__CVBuffer *)a3 metadata:(id)a4 time:(id *)a5 ariadneID:(unint64_t)a6 view_index:(int *)a7;
@end

@implementation PSCVPixelBufferResource

- (PSCVPixelBufferResource)initWithKey:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 pixelFormat:(unsigned int)a6
{
  v10 = a3;
  v19.receiver = self;
  v19.super_class = PSCVPixelBufferResource;
  v11 = [(PSCVPixelBufferResource *)&v19 init];
  if (v11)
  {
    v12 = malloc_type_malloc(0x18uLL, 0x10000400CE834B2uLL);
    v11->pixel_attributes = v12;
    if (v12)
    {
      v12->var0 = a4;
      v12->var1 = a5;
      v12->var2 = a6;
      [v10 cStringUsingEncoding:4];
      v11->_writer = ps_buffer_create_group_writer_with_options();
      ps_buffer_add_serial_data();
      pixel_attributes = v11->pixel_attributes;
      writer = v11->_writer;
      ps_buffer_install_cvpixelbuffer();
      v15 = v11->_writer;
      ps_buffer_add_nonshared_serial_data();
      v16 = v11->_writer;
      ps_buffer_add_serial_data();
      v17 = v11->_writer;
      ps_buffer_finalize_setup();
    }
  }

  return v11;
}

- (void)dealloc
{
  pixel_attributes = self->pixel_attributes;
  if (pixel_attributes)
  {
    free(pixel_attributes);
  }

  if (self->_writer)
  {
    ps_buffer_delete_write_buffer();
  }

  v4.receiver = self;
  v4.super_class = PSCVPixelBufferResource;
  [(PSCVPixelBufferResource *)&v4 dealloc];
}

- (void)serialize:(id)a3 buff:(char *)a4 time:(unint64_t)a5 buff_size:(unsigned int)a6
{
  v9 = a3;
  v11 = v9;
  if (!v9)
  {
    if (a6 >= 0x11)
    {
      *a4 = 0;
      *(a4 + 1) = a5;
      goto LABEL_7;
    }

LABEL_10:
    sub_1000181C8();
  }

  v10 = [v9 length];
  if (v10 + 16 >= a6)
  {
    goto LABEL_10;
  }

  *a4 = v10;
  *(a4 + 1) = a5;
  if (v10)
  {
    [v11 getBytes:a4 + 20 length:{objc_msgSend(v11, "length")}];
  }

LABEL_7:
}

- (id)deserialize:(char *)a3 timeStamp:(unint64_t *)a4
{
  v6 = sub_100013BF4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v16 = 134217984;
    v17 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Deserializing from mem(%p)!!!\n", &v16, 0xCu);
  }

  v7 = sub_100013BF4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *a3;
    v16 = 134217984;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Deserialized: len %lul \n", &v16, 0xCu);
  }

  *a4 = *(a3 + 1);
  v9 = sub_100013BF4();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = *a4;
    v16 = 134217984;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Deserialized: timeStamp %llul \n", &v16, 0xCu);
  }

  if (*a3)
  {
    v11 = [NSData dataWithBytes:a3 + 20 length:?];
    v12 = sub_100013BF4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v11 length];
      v14 = *a4;
      v16 = 134218240;
      v17 = v13;
      v18 = 2048;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Deserialized: %lul @%llu.....\n", &v16, 0x16u);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)copyISPBufferWithInput:(__CVBuffer *)a3 output:(__CVBuffer *)a4
{
  CVPixelBufferLockBaseAddress(a3, 0);
  CVPixelBufferLockBaseAddress(a4, 0);
  PlaneCount = CVPixelBufferGetPlaneCount(a4);
  v7 = 0;
  if (PlaneCount <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = PlaneCount;
  }

  do
  {
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a4, v7);
    v10 = CVPixelBufferGetHeightOfPlane(a3, v7);
    if (HeightOfPlane >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = HeightOfPlane;
    }

    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, v7);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, v7);
    v14 = CVPixelBufferGetBaseAddressOfPlane(a4, v7);
    v15 = CVPixelBufferGetBytesPerRowOfPlane(a4, v7);
    if (BytesPerRowOfPlane >= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = BytesPerRowOfPlane;
    }

    if (v11 >= 1)
    {
      v17 = v15;
      do
      {
        memcpy(v14, BaseAddressOfPlane, v16);
        BaseAddressOfPlane += BytesPerRowOfPlane;
        v14 += v17;
        --v11;
      }

      while (v11);
    }

    ++v7;
  }

  while (v7 != v8);
  CVPixelBufferUnlockBaseAddress(a4, 0);

  CVPixelBufferUnlockBaseAddress(a3, 0);
}

- (void)writePixelBuffer:(__CVBuffer *)a3 metadata:(id)a4 time:(id *)a5 ariadneID:(unint64_t)a6 view_index:(int *)a7
{
  writer = self->_writer;
  v12 = a4;
  v13 = ps_buffer_get_write_buffers();
  v14 = *(v13 + 8);
  v15 = *(v13 + 40);
  **(v13 + 104) = 1;
  v17 = *a5;
  CMClockConvertHostTimeToSystemUnits(&v17);
  [(PSCVPixelBufferResource *)self copyISPBufferWithInput:a3 output:v15];
  v17 = *a5;
  [(PSCVPixelBufferResource *)self serialize:v12 buff:v14 time:CMClockConvertHostTimeToSystemUnits(&v17) buff_size:90112];

  v16 = self->_writer;
  *a7 = ps_buffer_release_write_buffers();
}

@end