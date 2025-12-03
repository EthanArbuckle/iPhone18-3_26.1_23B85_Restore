@interface PSCVPixelBufferResource
- (PSCVPixelBufferResource)initWithKey:(id)key width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format;
- (id)deserialize:(char *)deserialize timeStamp:(unint64_t *)stamp;
- (void)copyISPBufferWithInput:(__CVBuffer *)input output:(__CVBuffer *)output;
- (void)dealloc;
- (void)serialize:(id)serialize buff:(char *)buff time:(unint64_t)time buff_size:(unsigned int)buff_size;
- (void)writePixelBuffer:(__CVBuffer *)buffer metadata:(id)metadata time:(id *)time ariadneID:(unint64_t)d view_index:(int *)view_index;
@end

@implementation PSCVPixelBufferResource

- (PSCVPixelBufferResource)initWithKey:(id)key width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format
{
  keyCopy = key;
  v19.receiver = self;
  v19.super_class = PSCVPixelBufferResource;
  v11 = [(PSCVPixelBufferResource *)&v19 init];
  if (v11)
  {
    v12 = malloc_type_malloc(0x18uLL, 0x10000400CE834B2uLL);
    v11->pixel_attributes = v12;
    if (v12)
    {
      v12->var0 = width;
      v12->var1 = height;
      v12->var2 = format;
      [keyCopy cStringUsingEncoding:4];
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

- (void)serialize:(id)serialize buff:(char *)buff time:(unint64_t)time buff_size:(unsigned int)buff_size
{
  serializeCopy = serialize;
  v11 = serializeCopy;
  if (!serializeCopy)
  {
    if (buff_size >= 0x11)
    {
      *buff = 0;
      *(buff + 1) = time;
      goto LABEL_7;
    }

LABEL_10:
    sub_1000181C8();
  }

  v10 = [serializeCopy length];
  if (v10 + 16 >= buff_size)
  {
    goto LABEL_10;
  }

  *buff = v10;
  *(buff + 1) = time;
  if (v10)
  {
    [v11 getBytes:buff + 20 length:{objc_msgSend(v11, "length")}];
  }

LABEL_7:
}

- (id)deserialize:(char *)deserialize timeStamp:(unint64_t *)stamp
{
  v6 = sub_100013BF4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v16 = 134217984;
    deserializeCopy = deserialize;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Deserializing from mem(%p)!!!\n", &v16, 0xCu);
  }

  v7 = sub_100013BF4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *deserialize;
    v16 = 134217984;
    deserializeCopy = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Deserialized: len %lul \n", &v16, 0xCu);
  }

  *stamp = *(deserialize + 1);
  v9 = sub_100013BF4();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = *stamp;
    v16 = 134217984;
    deserializeCopy = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Deserialized: timeStamp %llul \n", &v16, 0xCu);
  }

  if (*deserialize)
  {
    v11 = [NSData dataWithBytes:deserialize + 20 length:?];
    v12 = sub_100013BF4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v11 length];
      v14 = *stamp;
      v16 = 134218240;
      deserializeCopy = v13;
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

- (void)copyISPBufferWithInput:(__CVBuffer *)input output:(__CVBuffer *)output
{
  CVPixelBufferLockBaseAddress(input, 0);
  CVPixelBufferLockBaseAddress(output, 0);
  PlaneCount = CVPixelBufferGetPlaneCount(output);
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
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(output, v7);
    v10 = CVPixelBufferGetHeightOfPlane(input, v7);
    if (HeightOfPlane >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = HeightOfPlane;
    }

    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(input, v7);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(input, v7);
    v14 = CVPixelBufferGetBaseAddressOfPlane(output, v7);
    v15 = CVPixelBufferGetBytesPerRowOfPlane(output, v7);
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
  CVPixelBufferUnlockBaseAddress(output, 0);

  CVPixelBufferUnlockBaseAddress(input, 0);
}

- (void)writePixelBuffer:(__CVBuffer *)buffer metadata:(id)metadata time:(id *)time ariadneID:(unint64_t)d view_index:(int *)view_index
{
  writer = self->_writer;
  metadataCopy = metadata;
  v13 = ps_buffer_get_write_buffers();
  v14 = *(v13 + 8);
  v15 = *(v13 + 40);
  **(v13 + 104) = 1;
  v17 = *time;
  CMClockConvertHostTimeToSystemUnits(&v17);
  [(PSCVPixelBufferResource *)self copyISPBufferWithInput:buffer output:v15];
  v17 = *time;
  [(PSCVPixelBufferResource *)self serialize:metadataCopy buff:v14 time:CMClockConvertHostTimeToSystemUnits(&v17) buff_size:90112];

  v16 = self->_writer;
  *view_index = ps_buffer_release_write_buffers();
}

@end