@interface PSBufferIndexer
- (PSBufferIndexer)initWithResourceStream:(id)a3;
- (uint64_t)allocateResources;
- (void)allocateResources;
@end

@implementation PSBufferIndexer

- (void)allocateResources
{
  if (![(PSBufferIndexer *)self currentIndex])
  {
    v14 = 0;
    p_resourceStream = &self->_resourceStream;
    v4 = [(PSResourceStreamProtocol *)self->_resourceStream key];
    [PSConstants getBufferDepthsForKey:v4 writerDepth:&v14 + 4 readerDepth:&v14];

    v5 = [(PSResourceStreamProtocol *)self->_resourceStream resourceClass];
    if (v5 == 8 || v5 == 7 || v5 == 4)
    {
      v6 = *p_resourceStream;
      v7 = [(PSResourceStreamProtocol *)v6 allocator];
      v8 = v7(*p_resourceStream, (HIDWORD(v14) + v14));
      resPointerArr = self->_resPointerArr;
      self->_resPointerArr = v8;
    }

    else
    {
      v10 = [(PSBufferIndexer *)&v13 allocateResources];
      [(PSBufferIndexer *)v10 initWithResourceStream:v11, v12];
    }
  }
}

- (PSBufferIndexer)initWithResourceStream:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PSBufferIndexer;
  v6 = [(PSBufferIndexer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resourceStream, a3);
    v7->_currentIndex = 0;
  }

  return v7;
}

- (uint64_t)allocateResources
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [*a2 key];
  asprintf(a1, "Unsupported resource stream type sent to allocator for key:%s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [*a2 key];
    [v6 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Unsupported resource stream type sent to allocator for key:%s", v9, v10, v11, v12, v22, v23, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [(PSDeviceManager *)v20 setNotificationPort];
}

@end