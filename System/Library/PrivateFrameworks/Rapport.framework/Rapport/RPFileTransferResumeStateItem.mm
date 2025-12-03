@interface RPFileTransferResumeStateItem
- (BOOL)outputFileItemUsable:(id)usable;
- (BOOL)sourceFileItemUsable:(id)usable;
- (RPFileTransferResumeStateItem)initWithFileTransferRequestDict:(id)dict;
- (RPFileTransferResumeStateItem)initWithStateDict:(id)dict;
- (unint64_t)bytesWritten;
- (unint64_t)fileModTime;
- (unint64_t)fileModTimeNsec;
- (unint64_t)fileOffset;
- (unint64_t)fileSize;
- (void)dealloc;
- (void)setBytesWritten:(unint64_t)written;
- (void)setError:(id)error;
- (void)setFileModTime:(unint64_t)time;
- (void)setFileModTimeNsec:(unint64_t)nsec;
- (void)setFileOffset:(unint64_t)offset;
- (void)setFileSize:(unint64_t)size;
@end

@implementation RPFileTransferResumeStateItem

- (RPFileTransferResumeStateItem)initWithFileTransferRequestDict:(id)dict
{
  dictCopy = dict;
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

- (RPFileTransferResumeStateItem)initWithStateDict:(id)dict
{
  dictCopy = dict;
  v10.receiver = self;
  v10.super_class = RPFileTransferResumeStateItem;
  v6 = [(RPFileTransferResumeStateItem *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileInfo, dict);
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
    unsignedLongLongValue = [v2 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (void)setFileSize:(unint64_t)size
{
  fileInfo = self->_fileInfo;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:size];
  [(NSMutableDictionary *)fileInfo setValue:v4 forKey:@"fileSize"];
}

- (unint64_t)fileOffset
{
  v2 = [(NSMutableDictionary *)self->_fileInfo objectForKey:@"fileOffset"];
  v3 = v2;
  if (v2)
  {
    unsignedLongLongValue = [v2 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (void)setFileOffset:(unint64_t)offset
{
  fileInfo = self->_fileInfo;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:offset];
  [(NSMutableDictionary *)fileInfo setValue:v4 forKey:@"fileOffset"];
}

- (unint64_t)fileModTime
{
  v2 = [(NSMutableDictionary *)self->_fileInfo objectForKey:@"modTime"];
  v3 = v2;
  if (v2)
  {
    unsignedLongLongValue = [v2 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (void)setFileModTime:(unint64_t)time
{
  fileInfo = self->_fileInfo;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:time];
  [(NSMutableDictionary *)fileInfo setValue:v4 forKey:@"modTime"];
}

- (unint64_t)fileModTimeNsec
{
  v2 = [(NSMutableDictionary *)self->_fileInfo objectForKey:@"modTimeNsec"];
  v3 = v2;
  if (v2)
  {
    unsignedLongLongValue = [v2 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (void)setFileModTimeNsec:(unint64_t)nsec
{
  fileInfo = self->_fileInfo;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:nsec];
  [(NSMutableDictionary *)fileInfo setValue:v4 forKey:@"modTimeNsec"];
}

- (unint64_t)bytesWritten
{
  v2 = [(NSMutableDictionary *)self->_fileInfo objectForKey:@"bytesWritten"];
  v3 = v2;
  if (v2)
  {
    unsignedLongLongValue = [v2 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (void)setBytesWritten:(unint64_t)written
{
  fileInfo = self->_fileInfo;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:written];
  [(NSMutableDictionary *)fileInfo setValue:v4 forKey:@"bytesWritten"];
}

- (void)setError:(id)error
{
  fileInfo = self->_fileInfo;
  v4 = [error copy];
  [(NSMutableDictionary *)fileInfo setValue:v4 forKey:@"error"];
}

- (BOOL)sourceFileItemUsable:(id)usable
{
  usableCopy = usable;
  error = [(RPFileTransferResumeStateItem *)self error];

  if (error)
  {
    if (gLogCategory_RPFileTransferSession <= 30 && (gLogCategory_RPFileTransferSession != -1 || _LogCategory_Initialize()))
    {
      [RPFileTransferResumeStateItem sourceFileItemUsable:usableCopy];
    }

    goto LABEL_26;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [defaultManager fileExistsAtPath:usableCopy];

  if ((v7 & 1) == 0)
  {
    if (gLogCategory_RPFileTransferSession <= 30 && (gLogCategory_RPFileTransferSession != -1 || _LogCategory_Initialize()))
    {
      [RPFileTransferResumeStateItem sourceFileItemUsable:usableCopy];
    }

    goto LABEL_26;
  }

  memset(&v12, 0, sizeof(v12));
  if (stat([usableCopy UTF8String], &v12))
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
  [usableCopy UTF8String];
  LogPrintF();
LABEL_27:

  return v8;
}

- (BOOL)outputFileItemUsable:(id)usable
{
  usableCopy = usable;
  fileName = [(RPFileTransferResumeStateItem *)self fileName];
  v6 = [usableCopy stringByAppendingPathComponent:fileName];

  fileOffset = [(RPFileTransferResumeStateItem *)self fileOffset];
  bytesWritten = [(RPFileTransferResumeStateItem *)self bytesWritten];
  error = [(RPFileTransferResumeStateItem *)self error];

  if (error)
  {
    if (gLogCategory_RPFileTransferSession <= 30 && (gLogCategory_RPFileTransferSession != -1 || _LogCategory_Initialize()))
    {
      [RPFileTransferResumeStateItem outputFileItemUsable:v6];
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v12 = bytesWritten + fileOffset;
  if (!(bytesWritten + fileOffset))
  {
    if (gLogCategory_RPFileTransferSession <= 30 && (gLogCategory_RPFileTransferSession != -1 || _LogCategory_Initialize()))
    {
      [RPFileTransferResumeStateItem outputFileItemUsable:v6];
    }

    goto LABEL_5;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v14 = [defaultManager fileExistsAtPath:v6];

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