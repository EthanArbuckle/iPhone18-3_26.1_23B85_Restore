@interface VSMappedData
- (VSMappedData)init;
- (VSMappedData)initWithFilePath:(id)path initialSize:(unint64_t)size;
- (_NSRange)appendData:(id)data;
- (void)_appendToMappedMemory:(id)memory;
- (void)_convertToFallbackMemory;
- (void)bytesAtOffset:(unint64_t)offset;
- (void)dealloc;
@end

@implementation VSMappedData

- (void)bytesAtOffset:(unint64_t)offset
{
  fallbackInMemoryData = self->_fallbackInMemoryData;
  if (fallbackInMemoryData)
  {
    return [(NSMutableData *)fallbackInMemoryData mutableBytes]+ offset;
  }

  mmappedData = self->_mmappedData;
  if (mmappedData)
  {
    return &mmappedData[offset];
  }

  else
  {
    return 0;
  }
}

- (_NSRange)appendData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    if (self->_mmappedData)
    {
      [(VSMappedData *)self _appendToMappedMemory:dataCopy];
    }

    else
    {
      [(VSMappedData *)self _appendToFallbackMemory:dataCopy];
    }

    v7 = self->_totalLength + [dataCopy length];
    self->_totalLength = v7;
    totalLength = v7 - [dataCopy length];
    v5 = [dataCopy length];
  }

  else
  {
    v5 = 0;
    totalLength = self->_totalLength;
  }

  v8 = totalLength;
  v9 = v5;
  result.length = v9;
  result.location = v8;
  return result;
}

- (void)_appendToMappedMemory:(id)memory
{
  v26 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  v5 = [memoryCopy length];
  totalLength = self->_totalLength;
  mappedLength = self->_mappedLength;
  if (totalLength + v5 >= mappedLength)
  {
    v10 = (([memoryCopy length] + mappedLength) * 1.5);
    v8 = [MEMORY[0x277CCA9F8] fileHandleForUpdatingAtPath:self->_filePath];
    if (ftruncate([v8 fileDescriptor], v10))
    {
      v11 = VSGetLogDefault();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      v19 = *__error();
      v20 = __error();
      v21 = strerror(*v20);
      v22 = 67109378;
      v23 = v19;
      v24 = 2080;
      v25 = v21;
      v18 = "Unable to resize mapped file, errno: %d, error: %s";
    }

    else
    {
      v13 = mmap(0, v10, 3, 1, [v8 fileDescriptor], 0);
      if (v13 != -1)
      {
        v9 = v13;
        mmappedData = self->_mmappedData;
        if (mmappedData)
        {
          munmap(mmappedData, self->_mappedLength);
        }

        self->_mmappedData = v9;
        self->_mappedLength = v10;
        totalLength = self->_totalLength;
        goto LABEL_3;
      }

      v11 = VSGetLogDefault();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_6:

        [(VSMappedData *)self _convertToFallbackMemory];
        [(VSMappedData *)self _appendToFallbackMemory:memoryCopy];
        goto LABEL_7;
      }

      v15 = *__error();
      v16 = __error();
      v17 = strerror(*v16);
      v22 = 67109378;
      v23 = v15;
      v24 = 2080;
      v25 = v17;
      v18 = "Unable to mmap file, errno: %d, error: %s";
    }

    _os_log_error_impl(&dword_272850000, v11, OS_LOG_TYPE_ERROR, v18, &v22, 0x12u);
    goto LABEL_6;
  }

  v8 = 0;
  v9 = self->_mmappedData;
LABEL_3:
  memcpy(&v9[totalLength], [memoryCopy bytes], objc_msgSend(memoryCopy, "length"));
LABEL_7:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_convertToFallbackMemory
{
  p_mmappedData = &self->_mmappedData;
  v4 = [MEMORY[0x277CBEB28] dataWithBytes:self->_mmappedData length:self->_totalLength];
  fallbackInMemoryData = self->_fallbackInMemoryData;
  self->_fallbackInMemoryData = v4;

  if (*p_mmappedData)
  {
    munmap(*p_mmappedData, self->_mappedLength);
  }

  *p_mmappedData = 0;
  self->_mappedLength = 0;
}

- (void)dealloc
{
  mmappedData = self->_mmappedData;
  if (mmappedData)
  {
    munmap(mmappedData, self->_mappedLength);
  }

  if (self->_shouldCleanFile)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtPath:self->_filePath error:0];
  }

  v5.receiver = self;
  v5.super_class = VSMappedData;
  [(VSMappedData *)&v5 dealloc];
}

- (VSMappedData)init
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = NSTemporaryDirectory();
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"VSMappedData%p", self, v4];
  v11[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v7 = [v3 pathWithComponents:v6];

  v8 = [(VSMappedData *)self initWithFilePath:v7 initialSize:512000];
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (VSMappedData)initWithFilePath:(id)path initialSize:(unint64_t)size
{
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = VSMappedData;
  v8 = [(VSMappedData *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_filePath, path);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [defaultManager fileExistsAtPath:v9->_filePath];

    if ((v11 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager2 createFileAtPath:v9->_filePath contents:0 attributes:0];

      v9->_shouldCleanFile = 1;
    }

    v13 = [MEMORY[0x277CCA9F8] fileHandleForUpdatingAtPath:v9->_filePath];
    v14 = v13;
    if (v13 && (v9->_mappedLength = size, !ftruncate([v13 fileDescriptor], v9->_mappedLength)))
    {
      v9->_mmappedData = mmap(0, v9->_mappedLength, 3, 1, [v14 fileDescriptor], 0);
      [v14 closeFile];
    }

    else
    {
      v9->_mappedLength = 0;
      filePath = v9->_filePath;
      v9->_filePath = 0;
    }

    if (v9->_mmappedData + 1 <= 1)
    {
      data = [MEMORY[0x277CBEB28] data];
      fallbackInMemoryData = v9->_fallbackInMemoryData;
      v9->_fallbackInMemoryData = data;

      v9->_mmappedData = 0;
    }
  }

  return v9;
}

@end