@interface RPFileTransferResumeStateItem
- (BOOL)outputFileItemUsable:(id)a3;
- (BOOL)sourceFileItemUsable:(id)a3;
- (RPFileTransferResumeStateItem)initWithFileTransferRequestDict:(id)a3;
- (RPFileTransferResumeStateItem)initWithStateDict:(id)a3;
- (unint64_t)bytesWritten;
- (unint64_t)fileModTime;
- (unint64_t)fileModTimeNsec;
- (unint64_t)fileOffset;
- (unint64_t)fileSize;
- (void)dealloc;
- (void)setBytesWritten:(unint64_t)a3;
- (void)setError:(id)a3;
- (void)setFileModTime:(unint64_t)a3;
- (void)setFileModTimeNsec:(unint64_t)a3;
- (void)setFileOffset:(unint64_t)a3;
- (void)setFileSize:(unint64_t)a3;
@end

@implementation RPFileTransferResumeStateItem

- (RPFileTransferResumeStateItem)initWithFileTransferRequestDict:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RPFileTransferResumeStateItem;
  v5 = [(RPFileTransferResumeStateItem *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    fileInfo = v5->_fileInfo;
    v5->_fileInfo = v6;

    CFStringGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    if (v8)
    {
      [(RPFileTransferResumeStateItem *)v5 setFileName:v8];
    }

    [(RPFileTransferResumeStateItem *)v5 setFileSize:CFDictionaryGetInt64()];
    [(RPFileTransferResumeStateItem *)v5 setFileOffset:CFDictionaryGetInt64()];
    [(RPFileTransferResumeStateItem *)v5 setFileModTime:CFDictionaryGetInt64()];
    [(RPFileTransferResumeStateItem *)v5 setFileModTimeNsec:CFDictionaryGetInt64()];
    [(RPFileTransferResumeStateItem *)v5 setBytesWritten:0];
    [(RPFileTransferResumeStateItem *)v5 setError:0];
    v9 = v5;
  }

  return v5;
}

- (RPFileTransferResumeStateItem)initWithStateDict:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = RPFileTransferResumeStateItem;
  v6 = [(RPFileTransferResumeStateItem *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileInfo, a3);
    v8 = v7;
  }

  return v7;
}

- (void)dealloc
{
  fileInfo = self->_fileInfo;
  self->_fileInfo = 0;

  v4.receiver = self;
  v4.super_class = RPFileTransferResumeStateItem;
  [(RPFileTransferResumeStateItem *)&v4 dealloc];
}

- (unint64_t)fileSize
{
  v2 = [(NSMutableDictionary *)self->_fileInfo objectForKey:@"fileSize"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFileSize:(unint64_t)a3
{
  fileInfo = self->_fileInfo;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)fileInfo setValue:v4 forKey:@"fileSize"];
}

- (unint64_t)fileOffset
{
  v2 = [(NSMutableDictionary *)self->_fileInfo objectForKey:@"fileOffset"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFileOffset:(unint64_t)a3
{
  fileInfo = self->_fileInfo;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)fileInfo setValue:v4 forKey:@"fileOffset"];
}

- (unint64_t)fileModTime
{
  v2 = [(NSMutableDictionary *)self->_fileInfo objectForKey:@"modTime"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFileModTime:(unint64_t)a3
{
  fileInfo = self->_fileInfo;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)fileInfo setValue:v4 forKey:@"modTime"];
}

- (unint64_t)fileModTimeNsec
{
  v2 = [(NSMutableDictionary *)self->_fileInfo objectForKey:@"modTimeNsec"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFileModTimeNsec:(unint64_t)a3
{
  fileInfo = self->_fileInfo;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)fileInfo setValue:v4 forKey:@"modTimeNsec"];
}

- (unint64_t)bytesWritten
{
  v2 = [(NSMutableDictionary *)self->_fileInfo objectForKey:@"bytesWritten"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBytesWritten:(unint64_t)a3
{
  fileInfo = self->_fileInfo;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)fileInfo setValue:v4 forKey:@"bytesWritten"];
}

- (void)setError:(id)a3
{
  fileInfo = self->_fileInfo;
  v4 = [a3 copy];
  [(NSMutableDictionary *)fileInfo setValue:v4 forKey:@"error"];
}

- (BOOL)sourceFileItemUsable:(id)a3
{
  v4 = a3;
  v5 = [(RPFileTransferResumeStateItem *)self error];

  if (v5)
  {
    if (gLogCategory_RPFileTransferSession <= 30 && (gLogCategory_RPFileTransferSession != -1 || _LogCategory_Initialize()))
    {
      [RPFileTransferResumeStateItem sourceFileItemUsable:v4];
    }

    goto LABEL_26;
  }

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 fileExistsAtPath:v4];

  if ((v7 & 1) == 0)
  {
    if (gLogCategory_RPFileTransferSession <= 30 && (gLogCategory_RPFileTransferSession != -1 || _LogCategory_Initialize()))
    {
      [RPFileTransferResumeStateItem sourceFileItemUsable:v4];
    }

    goto LABEL_26;
  }

  memset(&v12, 0, sizeof(v12));
  if (stat([v4 UTF8String], &v12))
  {
    if (gLogCategory_RPFileTransferSession <= 30)
    {
      if (gLogCategory_RPFileTransferSession == -1)
      {
        v8 = 0;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_27;
        }
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_25;
    }

LABEL_26:
    v8 = 0;
    goto LABEL_27;
  }

  tv_sec = v12.st_mtimespec.tv_sec;
  tv_nsec = v12.st_mtimespec.tv_nsec;
  if (tv_sec == [(RPFileTransferResumeStateItem *)self fileModTime]&& tv_nsec == [(RPFileTransferResumeStateItem *)self fileModTimeNsec])
  {
    if (gLogCategory_RPFileTransferSession > 30)
    {
      v8 = 1;
      goto LABEL_27;
    }

    if (gLogCategory_RPFileTransferSession == -1)
    {
      v8 = 1;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_27;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    if (gLogCategory_RPFileTransferSession > 30)
    {
      goto LABEL_26;
    }

    if (gLogCategory_RPFileTransferSession == -1)
    {
      v8 = 0;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_27;
      }
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_25:
  [v4 UTF8String];
  LogPrintF();
LABEL_27:

  return v8;
}

- (BOOL)outputFileItemUsable:(id)a3
{
  v4 = a3;
  v5 = [(RPFileTransferResumeStateItem *)self fileName];
  v6 = [v4 stringByAppendingPathComponent:v5];

  v7 = [(RPFileTransferResumeStateItem *)self fileOffset];
  v8 = [(RPFileTransferResumeStateItem *)self bytesWritten];
  v9 = [(RPFileTransferResumeStateItem *)self error];

  if (v9)
  {
    if (gLogCategory_RPFileTransferSession <= 30 && (gLogCategory_RPFileTransferSession != -1 || _LogCategory_Initialize()))
    {
      [RPFileTransferResumeStateItem outputFileItemUsable:v6];
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v12 = v8 + v7;
  if (!(v8 + v7))
  {
    if (gLogCategory_RPFileTransferSession <= 30 && (gLogCategory_RPFileTransferSession != -1 || _LogCategory_Initialize()))
    {
      [RPFileTransferResumeStateItem outputFileItemUsable:v6];
    }

    goto LABEL_5;
  }

  v13 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = [v13 fileExistsAtPath:v6];

  if ((v14 & 1) == 0)
  {
    if (gLogCategory_RPFileTransferSession <= 30 && (gLogCategory_RPFileTransferSession != -1 || _LogCategory_Initialize()))
    {
      [RPFileTransferResumeStateItem outputFileItemUsable:v6];
    }

    goto LABEL_5;
  }

  memset(&v15, 0, sizeof(v15));
  if (stat([v6 UTF8String], &v15))
  {
    if (gLogCategory_RPFileTransferSession <= 30 && (gLogCategory_RPFileTransferSession != -1 || _LogCategory_Initialize()))
    {
      [RPFileTransferResumeStateItem outputFileItemUsable:v6];
    }

    goto LABEL_5;
  }

  if (v15.st_size < v12)
  {
    if (gLogCategory_RPFileTransferSession <= 30 && (gLogCategory_RPFileTransferSession != -1 || _LogCategory_Initialize()))
    {
      [v6 UTF8String];
      LogPrintF();
    }

    goto LABEL_5;
  }

  if (gLogCategory_RPFileTransferSession <= 30 && (gLogCategory_RPFileTransferSession != -1 || _LogCategory_Initialize()))
  {
    [RPFileTransferResumeStateItem outputFileItemUsable:v6];
  }

  v10 = 1;
LABEL_6:

  return v10;
}

@end