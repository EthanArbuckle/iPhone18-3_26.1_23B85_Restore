@interface ISHashedDownloadProvider
- (BOOL)_checkHashForByteCount:(int64_t)count;
- (BOOL)_openFile;
- (BOOL)_truncateToSize:(int64_t)size;
- (BOOL)_writeDataWithHashing:(id)hashing returningError:(id *)error;
- (BOOL)_writeDataWithoutHashing:(id)hashing returningError:(id *)error;
- (BOOL)canStreamContentLength:(int64_t)length error:(id *)error;
- (BOOL)parseData:(id)data returningError:(id *)error;
- (ISHashedDownloadProvider)init;
- (id)closeStream;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_verifiedBytesByInitializingHashForFileSize:(int64_t)size;
- (void)_closeFile;
- (void)dealloc;
- (void)resetStream;
- (void)setup;
@end

@implementation ISHashedDownloadProvider

- (ISHashedDownloadProvider)init
{
  v5.receiver = self;
  v5.super_class = ISHashedDownloadProvider;
  v2 = [(ISDataProvider *)&v5 init];
  v3 = v2;
  if (v2)
  {
    CC_MD5_Init(&v2->_md5Context);
    v3->_fileDescriptor = -1;
    v3->_shouldResumeFromLocalBytes = 1;
  }

  return v3;
}

- (void)dealloc
{
  [(ISHashedDownloadProvider *)self _closeFile];

  v3.receiver = self;
  v3.super_class = ISHashedDownloadProvider;
  [(ISHashedDownloadProvider *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = ISHashedDownloadProvider;
  v5 = [(ISDataProvider *)&v7 copyWithZone:?];
  v5[15] = [(NSArray *)[(ISHashedDownloadProvider *)self hashes] copyWithZone:zone];
  v5[17] = [(NSString *)[(ISHashedDownloadProvider *)self localFilePath] copyWithZone:zone];
  v5[30] = [(ISHashedDownloadProvider *)self numberOfBytesToHash];
  return v5;
}

- (BOOL)canStreamContentLength:(int64_t)length error:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  if ((length & 0x8000000000000000) == 0)
  {
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_localFilePath];
    v8 = dispatch_semaphore_create(0);
    v9 = +[ISDevice sharedInstance];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__ISHashedDownloadProvider_canStreamContentLength_error___block_invoke;
    v13[3] = &unk_27A670E28;
    v13[5] = v8;
    v13[6] = &v14;
    v13[7] = &v20;
    v13[8] = length;
    v13[4] = self;
    [(ISDevice *)v9 requestFreeSpace:length atPath:v7 withOptions:0 completionBlock:v13];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v8);
    v10 = v15[5];
  }

  if (error)
  {
    *error = v15[5];
  }

  v11 = *(v21 + 24);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  return v11;
}

intptr_t __57__ISHashedDownloadProvider_canStreamContentLength_error___block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = *(a1 + 64);
      v21 = 138413058;
      v22 = v12;
      v23 = 2048;
      v24 = v13;
      v25 = 2048;
      v26 = a3;
      v27 = 2112;
      v28 = a4;
      LODWORD(v20) = 42;
      v14 = _os_log_send_and_compose_impl();
      if (v14)
      {
        v15 = v14;
        [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v21, v20}];
        free(v15);
        SSFileLog();
      }
    }

    *(*(*(a1 + 48) + 8) + 40) = SSGetNotEnoughDiskSpaceErrorWithCount();
    v16 = *(*(*(a1 + 48) + 8) + 40);
    v17 = *MEMORY[0x277CCA7E8];
    *(*(*(a1 + 48) + 8) + 40) = SSErrorBySettingUserInfoValue();
  }

  *(*(*(a1 + 56) + 8) + 24) = a2 != 0;
  result = dispatch_semaphore_signal(*(a1 + 40));
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)closeStream
{
  [(ISHashedDownloadProvider *)self _closeFile];
  v4.receiver = self;
  v4.super_class = ISHashedDownloadProvider;
  return [(ISDataProvider *)&v4 closeStream];
}

- (BOOL)parseData:(id)data returningError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = 0;
  if ((self->_fileDescriptor & 0x80000000) == 0)
  {
    if ([(ISHashedDownloadProvider *)self numberOfBytesToHash])
    {
      result = [(ISHashedDownloadProvider *)self _writeDataWithHashing:data returningError:&v18];
      if (!error)
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = [(ISHashedDownloadProvider *)self _writeDataWithoutHashing:data returningError:&v18];
      if (!error)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v11 = objc_opt_class();
    fileDescriptor = self->_fileDescriptor;
    v19 = 138412802;
    v20 = v11;
    v21 = 1024;
    v22 = fileDescriptor;
    v23 = 2112;
    localFilePath = [(ISHashedDownloadProvider *)self localFilePath];
    LODWORD(v17) = 28;
    v13 = _os_log_send_and_compose_impl();
    if (v13)
    {
      v14 = v13;
      [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:{4, &v19, v17}];
      free(v14);
      SSFileLog();
    }
  }

  v15 = ISError(7, 0, 0);
  result = 0;
  v18 = v15;
  if (error)
  {
LABEL_16:
    *error = v18;
  }

LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)resetStream
{
  if ([(ISHashedDownloadProvider *)self _openFile])
  {
    [(ISHashedDownloadProvider *)self _truncateToSize:0];
  }

  v3.receiver = self;
  v3.super_class = ISHashedDownloadProvider;
  [(ISDataProvider *)&v3 resetStream];
}

- (void)setup
{
  v27 = *MEMORY[0x277D85DE8];
  [(ISHashedDownloadProvider *)self _openFile];
  streamedBytes = [(ISHashedDownloadProvider *)self streamedBytes];
  if (streamedBytes >= 1)
  {
    v4 = streamedBytes;
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_INFO))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v23 = 138412546;
      v24 = objc_opt_class();
      v25 = 2048;
      v26 = v4;
      LODWORD(v21) = 22;
      v19 = &v23;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{4, &v23, v21}];
        free(v9);
        v19 = v10;
        SSFileLog();
      }
    }

    if ([(ISHashedDownloadProvider *)self shouldResumeFromLocalBytes])
    {
      if ([(ISHashedDownloadProvider *)self numberOfBytesToHash]>= 1 && ![(ISHashedDownloadProvider *)self validatedBytes])
      {
        [(ISHashedDownloadProvider *)self setValidatedBytes:[(ISHashedDownloadProvider *)self _verifiedBytesByInitializingHashForFileSize:v4]];
      }
    }

    else
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]2)
      {
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
      if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
      {
        v13 = shouldLog2 | 2;
      }

      else
      {
        v13 = shouldLog2;
      }

      if (!os_log_type_enabled([mEMORY[0x277D69B38]2 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v14 = objc_opt_class();
        v23 = 138412290;
        v24 = v14;
        LODWORD(v21) = 12;
        v20 = &v23;
        v15 = _os_log_send_and_compose_impl();
        if (v15)
        {
          v16 = v15;
          v17 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, &v23, v21}];
          free(v16);
          v20 = v17;
          SSFileLog();
        }
      }

      [(ISHashedDownloadProvider *)self _truncateToSize:0, v20];
    }
  }

  v22.receiver = self;
  v22.super_class = ISHashedDownloadProvider;
  [(ISDataProvider *)&v22 setup];
  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_checkHashForByteCount:(int64_t)count
{
  v32 = *MEMORY[0x277D85DE8];
  CC_MD5_Final(md, &self->_md5Context);
  v5 = ISStringFromDigest(md, 0x10u);
  numberOfBytesToHash = [(ISHashedDownloadProvider *)self numberOfBytesToHash];
  v7 = count / numberOfBytesToHash;
  v8 = (ceilf(v7) + -1.0);
  v9 = [(NSArray *)[(ISHashedDownloadProvider *)self hashes] objectAtIndex:v8];
  v10 = [v5 isEqualToString:v9];
  if ((v10 & 1) == 0)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v21 = 138413314;
      v14 = numberOfBytesToHash * v8;
      v22 = objc_opt_class();
      v23 = 2048;
      v24 = v14;
      v25 = 2048;
      countCopy = count;
      v27 = 2112;
      v28 = v5;
      v29 = 2112;
      v30 = v9;
      LODWORD(v20) = 52;
      v15 = _os_log_send_and_compose_impl();
      if (v15)
      {
        v16 = v15;
        [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, &v21, v20}];
        free(v16);
        SSFileLog();
      }
    }

    else
    {
      v14 = numberOfBytesToHash * v8;
    }

    v17 = objc_alloc_init(ISHashError);
    [(ISHashError *)v17 setActualHashString:v5];
    [(ISHashError *)v17 setExpectedHashString:v9];
    [(ISHashError *)v17 setRangeEnd:count];
    [(ISHashError *)v17 setRangeStart:v14];
    [(ISHashedDownloadProvider *)self setLastHashError:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_closeFile
{
  fileDescriptor = self->_fileDescriptor;
  if (fileDescriptor != -1)
  {
    close(fileDescriptor);
    self->_fileDescriptor = -1;
  }
}

- (BOOL)_openFile
{
  if (self->_fileDescriptor != -1)
  {
    return 1;
  }

  fileSystemRepresentation = [(NSString *)[(ISHashedDownloadProvider *)self localFilePath] fileSystemRepresentation];
  memset(&v8, 0, sizeof(v8));
  if (stat(fileSystemRepresentation, &v8) == -1)
  {
    st_size = 0;
  }

  else
  {
    st_size = v8.st_size;
  }

  if (st_size <= 0)
  {
    v6 = open(fileSystemRepresentation, 1538, 420);
  }

  else
  {
    v6 = open(fileSystemRepresentation, 522, 420);
  }

  self->_fileDescriptor = v6;
  v2 = v6 != -1;
  if (v6 != -1)
  {
    fcntl(v6, 48, 1);
    fcntl(self->_fileDescriptor, 68, 1);
    fcntl(self->_fileDescriptor, 76, 1);
    [(ISHashedDownloadProvider *)self setStreamedBytes:st_size];
  }

  return v2;
}

- (BOOL)_truncateToSize:(int64_t)size
{
  fileDescriptor = self->_fileDescriptor;
  v6 = fileDescriptor < 0 || ftruncate(fileDescriptor, size) == 0;
  [(ISHashedDownloadProvider *)self setStreamedBytes:size];
  CC_MD5_Init(&self->_md5Context);
  return v6;
}

- (int64_t)_verifiedBytesByInitializingHashForFileSize:(int64_t)size
{
  numberOfBytesToHash = [(ISHashedDownloadProvider *)self numberOfBytesToHash];
  v6 = 0;
  if (size)
  {
    if (numberOfBytesToHash)
    {
      v6 = size / numberOfBytesToHash * numberOfBytesToHash;
      v7 = size % numberOfBytesToHash;
      if (size % numberOfBytesToHash)
      {
        if (lseek(self->_fileDescriptor, v6, 0) == -1)
        {
          goto LABEL_17;
        }

        v8 = v7 >= 4096 ? 4096 : v7;
        v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
        if (!v9)
        {
          goto LABEL_17;
        }

        v10 = v9;
        CC_MD5_Init(&self->_md5Context);
        if (v7 < 1)
        {
          i = 0;
        }

        else
        {
          for (i = 0; i < v7; i += v13)
          {
            v12 = read(self->_fileDescriptor, v10, v8);
            if (!v12)
            {
              break;
            }

            v13 = v12;
            if (!CC_MD5_Update(&self->_md5Context, v10, v12))
            {
              break;
            }
          }
        }

        free(v10);
        if (i != v7)
        {
LABEL_17:
          [(ISHashedDownloadProvider *)self _truncateToSize:0];
          return 0;
        }
      }
    }
  }

  return v6;
}

- (BOOL)_writeDataWithHashing:(id)hashing returningError:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  contentLength = [(ISDataProvider *)self contentLength];
  streamedBytes = [(ISHashedDownloadProvider *)self streamedBytes];
  validatedBytes = [(ISHashedDownloadProvider *)self validatedBytes];
  numberOfBytesToHash = [(ISHashedDownloadProvider *)self numberOfBytesToHash];
  v10 = [hashing length];
  if (v10 >= 1)
  {
    v11 = v10;
    errorCopy = error;
    v12 = 0;
    v13 = streamedBytes % numberOfBytesToHash;
    while (1)
    {
      if (numberOfBytesToHash - v13 >= v11 - v12)
      {
        v14 = v11 - v12;
      }

      else
      {
        v14 = numberOfBytesToHash - v13;
      }

      if (v14 >= 1)
      {
        CC_MD5_Update(&self->_md5Context, ([hashing bytes] + v12), v14);
      }

      v15 = v14 + v13;
      if (v15 == numberOfBytesToHash || streamedBytes + v14 == contentLength)
      {
        if (![(ISHashedDownloadProvider *)self _checkHashForByteCount:?])
        {
          v19 = ISError(8, 0, 0);
          v27 = validatedBytes;
          [(ISHashedDownloadProvider *)self _truncateToSize:validatedBytes];
          error = errorCopy;
          goto LABEL_33;
        }

        CC_MD5_Init(&self->_md5Context);
        validatedBytes += v15;
      }

      v17 = write(self->_fileDescriptor, ([hashing bytes] + v12), v14);
      v18 = v17;
      if (v17 < v14)
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38])
        {
          mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog = [mEMORY[0x277D69B38] shouldLog];
        if ([mEMORY[0x277D69B38] shouldLogToDisk])
        {
          v22 = shouldLog | 2;
        }

        else
        {
          v22 = shouldLog;
        }

        if (os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_ERROR))
        {
          v23 = v22;
        }

        else
        {
          v23 = v22 & 2;
        }

        if (v23)
        {
          v34 = 138412802;
          v35 = objc_opt_class();
          v36 = 2048;
          v37 = v18;
          v38 = 2048;
          v39 = v14;
          LODWORD(v31) = 32;
          v30 = &v34;
          v24 = _os_log_send_and_compose_impl();
          if (v24)
          {
            v25 = v24;
            v26 = [MEMORY[0x277CCACA8] stringWithCString:v24 encoding:{4, &v34, v31}];
            free(v25);
            v30 = v26;
            SSFileLog();
          }
        }

        v19 = ISError(7, 0, 0);
        goto LABEL_31;
      }

      v13 = 0;
      v12 += v14;
      streamedBytes += v17;
      if (v12 >= v11)
      {
        v19 = 0;
LABEL_31:
        error = errorCopy;
        goto LABEL_32;
      }
    }
  }

  v19 = 0;
LABEL_32:
  v27 = validatedBytes;
LABEL_33:
  [(ISHashedDownloadProvider *)self setStreamedBytes:streamedBytes, v30];
  [(ISHashedDownloadProvider *)self setValidatedBytes:v27];
  if (error)
  {
    *error = v19;
  }

  result = v19 == 0;
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_writeDataWithoutHashing:(id)hashing returningError:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = [hashing length];
  v8 = write(self->_fileDescriptor, [hashing bytes], v7);
  if (v8 == v7)
  {
    [(ISHashedDownloadProvider *)self setStreamedBytes:[(ISHashedDownloadProvider *)self streamedBytes]+ v7];
    [(ISHashedDownloadProvider *)self setValidatedBytes:[(ISHashedDownloadProvider *)self validatedBytes]+ v7];
    v9 = 0;
    if (!error)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v12 = shouldLog | 2;
  }

  else
  {
    v12 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v12 &= 2u;
  }

  if (v12)
  {
    v18 = 138412802;
    v19 = objc_opt_class();
    v20 = 2048;
    v21 = v7;
    v22 = 2048;
    v23 = v8;
    LODWORD(v17) = 32;
    v13 = _os_log_send_and_compose_impl();
    if (v13)
    {
      v14 = v13;
      [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:{4, &v18, v17}];
      free(v14);
      SSFileLog();
    }
  }

  v9 = ISError(7, 0, 0);
  if (error)
  {
LABEL_15:
    *error = v9;
  }

LABEL_16:
  result = v8 == v7;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

@end