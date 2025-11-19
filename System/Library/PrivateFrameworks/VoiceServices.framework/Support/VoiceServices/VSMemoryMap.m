@interface VSMemoryMap
- (BOOL)mmap;
- (VSMemoryMap)initWithFilePath:(id)a3;
- (void)dealloc;
- (void)madvise;
@end

@implementation VSMemoryMap

- (void)madvise
{
  v13 = *MEMORY[0x277D85DE8];
  fileSize = self->_fileSize;
  if (fileSize)
  {
    v8[0] = 0;
    v8[1] = fileSize;
    fcntl(self->_fd, 44, v8);
    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      filePath = self->_filePath;
      v7 = self->_fileSize;
      *buf = 138412546;
      v10 = filePath;
      v11 = 2048;
      v12 = v7;
      _os_log_debug_impl(&dword_2727E4000, v4, OS_LOG_TYPE_DEBUG, "fcntl called on file '%@', size: %lu", buf, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)mmap
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(NSString *)self->_filePath UTF8String];
  v4 = open(v3, 0);
  self->_fd = v4;
  if (v4 <= 0)
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v16 = __error();
      v17 = strerror(*v16);
      v22.st_dev = 136315394;
      *&v22.st_mode = v3;
      WORD2(v22.st_ino) = 2080;
      *(&v22.st_ino + 6) = v17;
      v8 = "Unable to open file '%s', error: %s";
      v9 = &v22;
      goto LABEL_14;
    }
  }

  else
  {
    memset(&v22, 0, sizeof(v22));
    if (fstat(v4, &v22))
    {
      close(self->_fd);
      v5 = VSGetLogDefault();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = __error();
        v7 = strerror(*v6);
        v18 = 136315394;
        v19 = v3;
        v20 = 2080;
        v21 = v7;
        v8 = "Unable to get size of file '%s', error: %s";
LABEL_5:
        v9 = &v18;
LABEL_14:
        _os_log_error_impl(&dword_2727E4000, v5, OS_LOG_TYPE_ERROR, v8, v9, 0x16u);
      }
    }

    else
    {
      st_size = v22.st_size;
      self->_fileSize = v22.st_size;
      v13 = mmap(0, st_size, 1, 1, self->_fd, 0);
      if (v13 != -1)
      {
        self->_mappedData = v13;
        result = 1;
        goto LABEL_8;
      }

      v5 = VSGetLogDefault();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v14 = __error();
        v15 = strerror(*v14);
        v18 = 136315394;
        v19 = v3;
        v20 = 2080;
        v21 = v15;
        v8 = "Unable to mmap '%s', error: %s";
        goto LABEL_5;
      }
    }
  }

  result = 0;
LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  if (madvise(self->_mappedData, self->_fileSize, 4))
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      filePath = self->_filePath;
      v7 = __error();
      v8 = strerror(*v7);
      *buf = 138412546;
      v14 = filePath;
      v15 = 2080;
      v16 = v8;
      _os_log_error_impl(&dword_2727E4000, v3, OS_LOG_TYPE_ERROR, "Unable to madvise file '%@' MADV_DONTNEED, error: %s", buf, 0x16u);
    }
  }

  if (munmap(self->_mappedData, self->_fileSize))
  {
    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = self->_filePath;
      v10 = __error();
      v11 = strerror(*v10);
      *buf = 138412546;
      v14 = v9;
      v15 = 2080;
      v16 = v11;
      _os_log_error_impl(&dword_2727E4000, v4, OS_LOG_TYPE_ERROR, "Unable to munmap file '%@', error: %s", buf, 0x16u);
    }
  }

  close(self->_fd);
  v12.receiver = self;
  v12.super_class = VSMemoryMap;
  [(VSMemoryMap *)&v12 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (VSMemoryMap)initWithFilePath:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = VSMemoryMap;
  v6 = [(VSMemoryMap *)&v10 init];
  v7 = v6;
  if (!v6 || (v6->_mappedData = 0, objc_storeStrong(&v6->_filePath, a3), v8 = 0, [(VSMemoryMap *)v7 mmap]))
  {
    v8 = v7;
  }

  return v8;
}

@end