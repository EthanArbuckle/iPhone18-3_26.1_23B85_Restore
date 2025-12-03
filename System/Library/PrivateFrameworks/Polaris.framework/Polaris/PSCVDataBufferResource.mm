@interface PSCVDataBufferResource
- (PSCVDataBufferResource)initWithKey:(id)key width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format;
- (id)deserialize:(char *)deserialize timeStamp:(unint64_t *)stamp;
- (void)copyCVDataBufferWithInput:(__CVBuffer *)input output:(__CVBuffer *)output;
- (void)dealloc;
- (void)serialize:(id)serialize buff:(char *)buff time:(unint64_t)time buff_size:(unsigned int)buff_size;
- (void)writeDataBuffer:(__CVBuffer *)buffer metadata:(id)metadata time:(id *)time view_index:(int *)view_index;
@end

@implementation PSCVDataBufferResource

- (PSCVDataBufferResource)initWithKey:(id)key width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format
{
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = PSCVDataBufferResource;
  v11 = [(PSCVDataBufferResource *)&v14 init];
  if (v11)
  {
    v12 = malloc_type_malloc(0x18uLL, 0x10000400CE834B2uLL);
    v11->cvdata_attributes = v12;
    if (v12)
    {
      v12->var0 = width;
      v12->var1 = height;
      v12->var2 = format;
      [keyCopy cStringUsingEncoding:4];
      v11->_writer = ps_buffer_create_group_writer_with_options();
      MEMORY[0x25F8C8900]();
      MEMORY[0x25F8C8D90](v11->_writer, cvdataBufferAllocator, v11->cvdata_attributes);
      MEMORY[0x25F8C88E0](v11->_writer, 8, 1, 0);
      MEMORY[0x25F8C8900](v11->_writer, 8);
      MEMORY[0x25F8C8C70](v11->_writer);
    }
  }

  return v11;
}

- (void)dealloc
{
  cvdata_attributes = self->cvdata_attributes;
  if (cvdata_attributes)
  {
    free(cvdata_attributes);
  }

  if (self->_writer)
  {
    ps_buffer_delete_write_buffer();
  }

  v4.receiver = self;
  v4.super_class = PSCVDataBufferResource;
  [(PSCVDataBufferResource *)&v4 dealloc];
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
    [PSCVDataBufferResource serialize:buff:time:buff_size:];
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
  v21 = *MEMORY[0x277D85DE8];
  v6 = _polarisdLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v17 = 134217984;
    deserializeCopy = deserialize;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "Deserializing from mem(%p)!!!\n", &v17, 0xCu);
  }

  v7 = _polarisdLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *deserialize;
    v17 = 134217984;
    deserializeCopy = v8;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "Deserialized: len %lul \n", &v17, 0xCu);
  }

  *stamp = *(deserialize + 1);
  v9 = _polarisdLogSharedInstance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = *stamp;
    v17 = 134217984;
    deserializeCopy = v10;
    _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_ERROR, "Deserialized: timeStamp %llul \n", &v17, 0xCu);
  }

  if (*deserialize)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:deserialize + 20 length:?];
    v12 = _polarisdLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v11 length];
      v14 = *stamp;
      v17 = 134218240;
      deserializeCopy = v13;
      v19 = 2048;
      v20 = v14;
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_ERROR, "Deserialized: %lul @%llu.....\n", &v17, 0x16u);
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)copyCVDataBufferWithInput:(__CVBuffer *)input output:(__CVBuffer *)output
{
  if (input)
  {
    if (output)
    {
      DataSize = CVDataBufferGetDataSize();
      IOSurface = CVDataBufferGetIOSurface();
      if (IOSurface)
      {
        v6 = IOSurface;
        v7 = CVDataBufferGetIOSurface();
        if (v7)
        {
          v8 = v7;
          IOSurfaceLock(v7, 0, 0);
          BaseAddress = IOSurfaceGetBaseAddress(v8);
          IOSurfaceLock(v6, 0, 0);
          v10 = IOSurfaceGetBaseAddress(v6);
          memcpy(BaseAddress, v10, DataSize);
          IOSurfaceUnlock(v6, 0, 0);

          IOSurfaceUnlock(v8, 0, 0);
        }

        else
        {
          [PSCVDataBufferResource copyCVDataBufferWithInput:output:];
        }
      }

      else
      {
        [PSCVDataBufferResource copyCVDataBufferWithInput:output:];
      }
    }

    else
    {
      [PSCVDataBufferResource copyCVDataBufferWithInput:output:];
    }
  }

  else
  {
    [PSCVDataBufferResource copyCVDataBufferWithInput:output:];
  }
}

- (void)writeDataBuffer:(__CVBuffer *)buffer metadata:(id)metadata time:(id *)time view_index:(int *)view_index
{
  writer = self->_writer;
  metadataCopy = metadata;
  v12 = ps_buffer_get_write_buffers();
  v13 = *(v12 + 8);
  v14 = *(v12 + 40);
  **(v12 + 104) = 1;
  [(PSCVDataBufferResource *)self copyCVDataBufferWithInput:buffer output:v13];
  v16 = *time;
  [(PSCVDataBufferResource *)self serialize:metadataCopy buff:v14 time:CMClockConvertHostTimeToSystemUnits(&v16) buff_size:90112];

  v15 = self->_writer;
  *view_index = ps_buffer_release_write_buffers();
}

- (void)serialize:buff:time:buff_size:.cold.1()
{
  v1 = _polarisdLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  abort();
}

- (void)copyCVDataBufferWithInput:output:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = _polarisdLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)copyCVDataBufferWithInput:output:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = _polarisdLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)copyCVDataBufferWithInput:output:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = _polarisdLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)copyCVDataBufferWithInput:output:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = _polarisdLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end