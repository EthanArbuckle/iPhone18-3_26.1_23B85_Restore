@interface FilesystemDownloadDataConsumer
- (BOOL)_checkHashForByteCount:(int64_t)a3;
- (BOOL)_hashAndWriteData:(id)a3 error:(id *)a4;
- (BOOL)_openFile;
- (BOOL)consumeData:(id)a3 error:(id *)a4;
- (BOOL)finish:(id *)a3;
- (FilesystemDownloadDataConsumer)initWithPath:(id)a3 MD5Hashes:(id)a4 numberOfBytesToHash:(int64_t)a5;
- (void)_truncateToSize:(int64_t)a3;
- (void)dealloc;
- (void)reset;
- (void)suspend;
@end

@implementation FilesystemDownloadDataConsumer

- (FilesystemDownloadDataConsumer)initWithPath:(id)a3 MD5Hashes:(id)a4 numberOfBytesToHash:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = FilesystemDownloadDataConsumer;
  v10 = [(FilesystemDownloadDataConsumer *)&v16 init];
  if (v10)
  {
    v11 = [v9 copy];
    v12 = *(v10 + 25);
    *(v10 + 25) = v11;

    *(v10 + 129) = a5;
    v13 = [v8 copy];
    v14 = *(v10 + 137);
    *(v10 + 137) = v13;

    [v10 _openFile];
    if (*(v10 + 17) == -1)
    {

      v10 = 0;
    }
  }

  return v10;
}

- (void)dealloc
{
  v3 = *(&self->_bytesWritten + 1);
  if (v3 != -1)
  {
    close(v3);
  }

  v4.receiver = self;
  v4.super_class = FilesystemDownloadDataConsumer;
  [(FilesystemDownloadDataConsumer *)&v4 dealloc];
}

- (BOOL)consumeData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (*(&self->_md5Context.num + 1) < 1)
  {
    v10 = write(*(&self->_bytesWritten + 1), [v6 bytes], objc_msgSend(v6, "length"));
    if (v10 < 0)
    {
      v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
      v8 = 0;
    }

    else
    {
      v11 = v10;
      v9 = 0;
      *(&self->super._overrideProgress + 1) += v11;
      *(&self->_resumptionOffset + 1) += v11;
      v8 = 1;
    }
  }

  else
  {
    v15 = 0;
    v8 = [(FilesystemDownloadDataConsumer *)self _hashAndWriteData:v6 error:&v15];
    v9 = v15;
  }

  v12 = (self->_bytesWritten & 0x10000000000) != 0 || *(&self->super._overrideProgress + 1) > 0;
  BYTE5(self->_bytesWritten) = v12;
  if (a4)
  {
    v13 = v8;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    v9 = v9;
    *a4 = v9;
  }

  return v8;
}

- (BOOL)finish:(id *)a3
{
  if (*(&self->_bytesWritten + 1) == -1)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    if (*(&self->_md5Context.num + 1) < 1 || *(&self->_resumptionOffset + 1) >= *(&self->super._overrideProgress + 1) || [(FilesystemDownloadDataConsumer *)self _checkHashForByteCount:?])
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      v5 = ISError();
      [(FilesystemDownloadDataConsumer *)self _truncateToSize:*(&self->_resumptionOffset + 1)];
      v6 = 0;
    }

    close(*(&self->_bytesWritten + 1));
    *(&self->_bytesWritten + 1) = -1;
    if (a3 && !v6)
    {
      v7 = v5;
      v6 = 0;
      *a3 = v5;
    }
  }

  return v6;
}

- (void)reset
{
  [(FilesystemDownloadDataConsumer *)self suspend];
  [(FilesystemDownloadDataConsumer *)self _openFile];
  BYTE5(self->_bytesWritten) = *(&self->_path + 1) != 0;
}

- (void)suspend
{
  v3 = *(&self->_bytesWritten + 1);
  if (v3 != -1)
  {
    close(v3);
    *(&self->_bytesWritten + 1) = -1;
  }
}

- (BOOL)_checkHashForByteCount:(int64_t)a3
{
  CC_MD5_Final(md, (&self->_hashes + 1));
  v5 = ISStringFromDigest();
  v6 = a3 / *(&self->_md5Context.num + 1);
  v7 = (ceilf(v6) + -1.0);
  if ([*(&self->_fd + 1) count] <= v7)
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v18 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v9 = v18 | 2;
    }

    else
    {
      v9 = v18;
    }

    v10 = [v8 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v19 = objc_opt_class();
      v20 = *(&self->_md5Context.num + 1);
      *v25 = 138413058;
      *&v25[4] = v19;
      *&v25[12] = 2048;
      *&v25[14] = v7;
      *&v25[22] = 2048;
      v26 = a3;
      *v27 = 2048;
      *&v27[2] = v20;
      v21 = v19;
      LODWORD(v24) = 42;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
        LOBYTE(v9) = 0;
        goto LABEL_25;
      }

      v10 = [NSString stringWithCString:v22 encoding:4, v25, v24, *v25, *&v25[8], v26, *v27, *&v27[8]];
      free(v22);
      SSFileLog();
      LOBYTE(v9) = 0;
    }

    goto LABEL_24;
  }

  v8 = [*(&self->_fd + 1) objectAtIndex:v7];
  LOBYTE(v9) = [v5 isEqualToString:v8];
  if ((v9 & 1) == 0)
  {
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v14 = objc_opt_class();
      v15 = *(&self->_md5Context.num + 1) * v7;
      *v25 = 138413314;
      *&v25[4] = v14;
      *&v25[12] = 2048;
      *&v25[14] = v15;
      *&v25[22] = 2048;
      v26 = a3;
      *v27 = 2112;
      *&v27[2] = v5;
      *&v27[10] = 2112;
      *&v27[12] = v8;
      v16 = v14;
      LODWORD(v24) = 52;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
LABEL_24:

        goto LABEL_25;
      }

      v13 = [NSString stringWithCString:v17 encoding:4, v25, v24, *v25, *&v25[16], v26, *v27, *&v27[16]];
      free(v17);
      SSFileLog();
    }

    goto LABEL_24;
  }

LABEL_25:

  return v9;
}

- (BOOL)_hashAndWriteData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = *(&self->super._overrideProgress + 1);
  v8 = *(&self->_md5Context.num + 1);
  v9 = [v6 length];
  if (v9 < 1)
  {
LABEL_13:
    v16 = 0;
    v17 = 1;
    goto LABEL_19;
  }

  v10 = v9;
  v20 = a4;
  v11 = 0;
  v12 = v7 % v8;
  while (1)
  {
    v13 = *(&self->_md5Context.num + 1);
    v14 = v13 - v12 >= v10 - v11 ? v10 - v11 : v13 - v12;
    if (v14 >= 1)
    {
      CC_MD5_Update((&self->_hashes + 1), [v6 bytes] + v11, v14);
      v13 = *(&self->_md5Context.num + 1);
    }

    if (v14 + v12 == v13)
    {
      break;
    }

LABEL_11:
    v15 = write(*(&self->_bytesWritten + 1), [v6 bytes] + v11, v14);
    if (v15 < v14)
    {
      v16 = ISError();
      goto LABEL_16;
    }

    v12 = 0;
    v11 += v14;
    *(&self->super._overrideProgress + 1) += v15;
    if (v11 >= v10)
    {
      goto LABEL_13;
    }
  }

  if ([(FilesystemDownloadDataConsumer *)self _checkHashForByteCount:*(&self->super._overrideProgress + 1) + v14])
  {
    CC_MD5_Init((&self->_hashes + 1));
    *(&self->_resumptionOffset + 1) += v13;
    goto LABEL_11;
  }

  v16 = ISError();
  [(FilesystemDownloadDataConsumer *)self _truncateToSize:*(&self->_resumptionOffset + 1)];
LABEL_16:
  if (v20)
  {
    v18 = v16;
    v17 = 0;
    *v20 = v16;
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (BOOL)_openFile
{
  v3 = [*(&self->_numberOfBytesToHash + 1) fileSystemRepresentation];
  v4 = open(v3, 522, 420);
  *(&self->_bytesWritten + 1) = v4;
  if (v4 == -1)
  {
    return 0;
  }

  fcntl(v4, 48, 1);
  fcntl(*(&self->_bytesWritten + 1), 76, 1);
  CC_MD5_Init((&self->_hashes + 1));
  memset(&v18, 0, sizeof(v18));
  if (stat(v3, &v18) != -1)
  {
    st_size = v18.st_size;
    *(&self->super._overrideProgress + 1) = v18.st_size;
    *(&self->_path + 1) = st_size;
  }

  v6 = *(&self->_md5Context.num + 1);
  if (v6 >= 1)
  {
    v7 = *(&self->_path + 1);
    if (v7)
    {
      v8 = v7 / v6 * v6;
      *(&self->_resumptionOffset + 1) = v8;
      if (v8 != *(&self->_path + 1))
      {
        if (lseek(*(&self->_bytesWritten + 1), v8, 0) == -1)
        {
          goto LABEL_21;
        }

        v9 = *(&self->_resumptionOffset + 1);
        v10 = *(&self->_path + 1) - v9;
        v11 = v10 >= 0x4000 ? 0x4000 : (*(&self->_path + 1) - v9);
        v12 = malloc_type_malloc(v11, 0x100004077774924uLL);
        if (!v12)
        {
          goto LABEL_21;
        }

        v13 = v12;
        if (v10 < 1)
        {
          i = 0;
        }

        else
        {
          for (i = 0; i < v10; i += v16)
          {
            v15 = read(*(&self->_bytesWritten + 1), v13, v11);
            if (!v15)
            {
              break;
            }

            v16 = v15;
            if (!CC_MD5_Update((&self->_hashes + 1), v13, v15))
            {
              break;
            }
          }
        }

        free(v13);
        if (i != v10)
        {
LABEL_21:
          [(FilesystemDownloadDataConsumer *)self _truncateToSize:0];
        }
      }
    }
  }

  return *(&self->_bytesWritten + 1) != -1;
}

- (void)_truncateToSize:(int64_t)a3
{
  ftruncate(*(&self->_bytesWritten + 1), a3);
  CC_MD5_Init((&self->_hashes + 1));
  *(&self->super._overrideProgress + 1) = a3;
  BYTE5(self->_bytesWritten) = a3 > 0;
  *(&self->_path + 1) = a3;
  *(&self->_resumptionOffset + 1) = a3;
}

@end