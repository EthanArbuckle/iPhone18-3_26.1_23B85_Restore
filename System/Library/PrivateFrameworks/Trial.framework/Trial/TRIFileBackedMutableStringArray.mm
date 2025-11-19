@interface TRIFileBackedMutableStringArray
+ (id)arrayFromDirectory:(id)a3;
- (BOOL)addString:(id)a3;
- (BOOL)enumerateStringsWithBlock:(id)a3;
- (TRIFileBackedMutableStringArray)init;
- (void)dealloc;
@end

@implementation TRIFileBackedMutableStringArray

- (TRIFileBackedMutableStringArray)init
{
  v27 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = TRIFileBackedMutableStringArray;
  v2 = [(TRIFileBackedMutableStringArray *)&v20 init];
  v3 = v2;
  if (!v2)
  {
LABEL_8:
    v11 = v3;
    goto LABEL_12;
  }

  v2->_fd = -1;
  v2->_count = 0;
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"TRIFileBackedMutableStringArray-"];

  v19 = 0;
  v6 = [MEMORY[0x277D425B8] mkstempWithPrefix:v5 error:&v19];
  v7 = v19;
  if (v6)
  {
    v8 = [v6 path];
    v9 = unlink([v8 fileSystemRepresentation]);

    if (v9)
    {
      v10 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = [v6 path];
        v16 = __error();
        v17 = strerror(*v16);
        v18 = *__error();
        *buf = 138412802;
        v22 = v15;
        v23 = 2080;
        v24 = v17;
        v25 = 1024;
        v26 = v18;
        _os_log_error_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_ERROR, "Failed to unlink tempfile %@: %s (%d)", buf, 0x1Cu);
      }
    }

    v3->_fd = [v6 fd];

    goto LABEL_8;
  }

  v12 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v22 = v5;
    v23 = 2112;
    v24 = v7;
    _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "Failed to create tempfile %@XXXXXX for TRIFileBackedMutableStringArray: %@", buf, 0x16u);
  }

  v11 = 0;
LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)dealloc
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
  }

  v4.receiver = self;
  v4.super_class = TRIFileBackedMutableStringArray;
  [(TRIFileBackedMutableStringArray *)&v4 dealloc];
}

+ (id)arrayFromDirectory:(id)a3
{
  v5 = a3;
  v6 = objc_opt_new();
  if (v6)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v9 = [v7 enumeratorAtURL:v8 includingPropertiesForKeys:0 options:1 errorHandler:0];

    v10 = objc_autoreleasePoolPush();
    v11 = [v9 nextObject];
    if (v11)
    {
      v12 = v11;
      while (1)
      {
        v13 = [v12 path];
        if (!v13)
        {
          v15 = [MEMORY[0x277CCA890] currentHandler];
          [v15 handleFailureInMethod:a2 object:a1 file:@"TRIFileBackedMutableStringArray.m" lineNumber:72 description:{@"Expression was unexpectedly nil/false: %@", @"url.path"}];
        }

        v14 = [v6 addString:v13];

        objc_autoreleasePoolPop(v10);
        if (!v14)
        {
          break;
        }

        v10 = objc_autoreleasePoolPush();
        v12 = [v9 nextObject];
        if (!v12)
        {
          goto LABEL_8;
        }
      }

      v16 = 0;
    }

    else
    {
LABEL_8:
      objc_autoreleasePoolPop(v10);
      v16 = v6;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)addString:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 UTF8String];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:self->_fd closeOnDealloc:0];
    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v7 length:strlen(v7) + 1 freeWhenDone:0];
    v15 = 0;
    v10 = [v8 writeData:v9 error:&v15];
    v11 = v15;
    if (v10)
    {
      ++self->_count;
    }

    else
    {
      v12 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v11;
        _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "Failed to append string to TRIFileBackedMutableStringArray: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_error_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_ERROR, "Failed to add non-UTF-8 string to TRIFileBackedMutableStringArray: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);
  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)enumerateStringsWithBlock:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  memset(&v36, 0, sizeof(v36));
  if (!fstat(self->_fd, &v36))
  {
    st_size = v36.st_size;
    if (v36.st_size)
    {
      v9 = mmap(0, v36.st_size, 1, 1, self->_fd, 0);
      if (v9 == -1)
      {
        v6 = TRILogCategory_ClientFramework();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_3;
        }

        v20 = __error();
        v21 = strerror(*v20);
        v22 = *__error();
        v36.st_dev = 136315394;
        *&v36.st_mode = v21;
        WORD2(v36.st_ino) = 1024;
        *(&v36.st_ino + 6) = v22;
        v23 = "Failed to mmap() tempfile: %s (%d)";
        v24 = &v36;
LABEL_21:
        _os_log_error_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_ERROR, v23, v24, 0x12u);
        goto LABEL_3;
      }

      v10 = v9;
      v11 = &v9[st_size];
      v12 = v9;
      do
      {
        if (v12 >= v11)
        {
          break;
        }

        v13 = memchr(v12, 0, v11 - v12);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        LOBYTE(v36.st_dev) = 0;
        v15 = objc_autoreleasePoolPush();
        v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v12];
        if (!v16)
        {
          v31 = [MEMORY[0x277CCA890] currentHandler];
          [v31 handleFailureInMethod:a2 object:self file:@"TRIFileBackedMutableStringArray.m" lineNumber:145 description:@"String somehow did not survive round-trip to UTF-8."];
        }

        v5[2](v5, v16, &v36);

        objc_autoreleasePoolPop(v15);
        v12 = v14 + 1;
      }

      while (LOBYTE(v36.st_dev) != 1);
      if (munmap(v10, st_size))
      {
        v17 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v28 = __error();
          v29 = strerror(*v28);
          v30 = *__error();
          v36.st_dev = 136315394;
          *&v36.st_mode = v29;
          WORD2(v36.st_ino) = 1024;
          *(&v36.st_ino + 6) = v30;
          _os_log_error_impl(&dword_22EA6B000, v17, OS_LOG_TYPE_ERROR, "Failed to munmap TRIFileBackedMutableStringArray buffer: %s (%d)", &v36, 0x12u);
        }
      }
    }

    v7 = 1;
    goto LABEL_17;
  }

  v6 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v25 = __error();
    v26 = strerror(*v25);
    v27 = *__error();
    *buf = 136315394;
    v33 = v26;
    v34 = 1024;
    v35 = v27;
    v23 = "Failed to stat tempfile for TRIFileBackedMutableStringArray enumeration: %s (%d)";
    v24 = buf;
    goto LABEL_21;
  }

LABEL_3:

  v7 = 0;
LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

@end