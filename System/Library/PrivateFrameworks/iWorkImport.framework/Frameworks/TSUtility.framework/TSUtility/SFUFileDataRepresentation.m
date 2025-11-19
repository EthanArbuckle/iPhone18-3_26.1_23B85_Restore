@interface SFUFileDataRepresentation
- (BOOL)hasSameLocationAs:(id)a3;
- (BOOL)isCryptoKeyIdenticalToKey:(id)a3;
- (SFUFileDataRepresentation)initWithCopyOfData:(id)a3 path:(id)a4 cryptoKey:(id)a5;
- (SFUFileDataRepresentation)initWithInputStream:(id)a3 cryptoKey:(id)a4 dataLength:(int64_t)a5;
- (SFUFileDataRepresentation)initWithPath:(id)a3 sharedFileDescriptor:(int)a4 cryptoKey:(id)a5 dataLength:(int64_t)a6;
- (id)inputStream;
- (int64_t)dataLength;
- (void)dealloc;
- (void)readFileAttributes;
- (void)setFileType:(unsigned int)a3;
@end

@implementation SFUFileDataRepresentation

- (SFUFileDataRepresentation)initWithPath:(id)a3 sharedFileDescriptor:(int)a4 cryptoKey:(id)a5 dataLength:(int64_t)a6
{
  if (!a3)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUFileDataRepresentation initWithPath:sharedFileDescriptor:cryptoKey:dataLength:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v11, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUFileDataRepresentation.m"], 48, 0, "Invalid parameter not satisfying: %{public}s", "path != nil");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v12 = [(SFUFileDataRepresentation *)self init];
  if (v12)
  {
    v12->mPath = a3;
    v13 = a5;
    v12->mCryptoKey = v13;
    if (v13)
    {
      v12->mPlaintextDataLength = a6;
    }

    v12->mSharedFd = a4;
    [(SFUFileDataRepresentation *)v12 path];
  }

  return v12;
}

- (SFUFileDataRepresentation)initWithCopyOfData:(id)a3 path:(id)a4 cryptoKey:(id)a5
{
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(a3 "path")] || (objc_msgSend(a3, "isCryptoKeyIdenticalToKey:", a5) & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [a3 bufferedInputStream];
      unlink([a4 fileSystemRepresentation]);
      v11 = [[SFUFileOutputStream alloc] initWithPath:a4];
      v12 = v11;
      if (a5)
      {
        v13 = [[SFUCryptoOutputStream alloc] initForEncryptionWithOutputStream:v11 key:a5];
      }

      else
      {
        v13 = v11;
      }

      while (1)
      {
        v16 = 0;
        v15 = [v10 readToOwnBuffer:&v16 size:-1];
        if (!v15)
        {
          break;
        }

        [(SFUFileOutputStream *)v13 writeBuffer:v16 size:v15];
      }

      [v10 close];
      [(SFUFileOutputStream *)v13 close];

      objc_autoreleasePoolPop(v9);
    }

    return -[SFUFileDataRepresentation initWithPath:cryptoKey:dataLength:](self, "initWithPath:cryptoKey:dataLength:", a4, a5, [a3 dataLength]);
  }

  else
  {

    return 0;
  }
}

- (SFUFileDataRepresentation)initWithInputStream:(id)a3 cryptoKey:(id)a4 dataLength:(int64_t)a5
{
  v8 = [(SFUFileDataRepresentation *)self init];
  if (v8)
  {
    v9 = a4;
    v8->mCryptoKey = v9;
    if (v9)
    {
      v8->mPlaintextDataLength = a5;
    }

    v8->mInputStream = a3;
  }

  return v8;
}

- (void)dealloc
{
  if (self->mDeleteFileWhenDone && self->mPath)
  {
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  }

  v3.receiver = self;
  v3.super_class = SFUFileDataRepresentation;
  [(SFUFileDataRepresentation *)&v3 dealloc];
}

- (void)setFileType:(unsigned int)a3
{
  v5 = [(SFUFileDataRepresentation *)self path];
  objc_sync_enter(self);
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:a3];
    v7 = objc_alloc(MEMORY[0x277CBEB38]);
    v8 = [v7 initWithObjectsAndKeys:{v6, *MEMORY[0x277CCA130], 0}];
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  }

  self->mFileType = a3;

  objc_sync_exit(self);
}

- (int64_t)dataLength
{
  if (self->mCryptoKey)
  {
    return self->mPlaintextDataLength;
  }

  else
  {
    return [(SFUFileDataRepresentation *)self encodedLength];
  }
}

- (BOOL)isCryptoKeyIdenticalToKey:(id)a3
{
  mCryptoKey = self->mCryptoKey;
  result = (a3 | mCryptoKey) == 0;
  if (a3)
  {
    if (mCryptoKey)
    {
      return [a3 isEqual:mCryptoKey];
    }
  }

  return result;
}

- (id)inputStream
{
  mSharedFd = self->mSharedFd;
  if (mSharedFd == -1 || pread(mSharedFd, 0, 0, 0) == -1)
  {
    v4 = [[SFUFileInputStream alloc] initWithPath:[(SFUFileDataRepresentation *)self path] offset:0 length:[(SFUFileDataRepresentation *)self encodedLength]];
  }

  else
  {
    v4 = [[SFUFileInputStream alloc] initWithFileDescriptor:sub_27709E49C(self->mSharedFd) offset:0 length:[(SFUFileDataRepresentation *)self encodedLength]];
  }

  v5 = v4;
  if (self->mCryptoKey)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [[SFUCryptoInputStream alloc] initForDecryptionWithInputStream:v4 key:self->mCryptoKey];

    v5 = v7;
  }

  return v5;
}

- (BOOL)hasSameLocationAs:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(SFUFileDataRepresentation *)self path];
  v6 = [a3 path];

  return [v5 isEqualToString:v6];
}

- (void)readFileAttributes
{
  if (!self->mHasFileAttributes)
  {
    objc_sync_enter(self);
    if (!self->mHasFileAttributes)
    {
      v3 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      v4 = v3;
      if (v3)
      {
        v5 = [v3 objectForKey:*MEMORY[0x277CCA1C0]];
        if (v5)
        {
          self->mFileLength = [v5 unsignedLongLongValue];
        }

        v6 = [v4 objectForKey:*MEMORY[0x277CCA130]];
        if (v6)
        {
          self->mFileType = [v6 unsignedIntValue];
        }

        __dmb(0xBu);
        self->mHasFileAttributes = 1;
      }
    }

    objc_sync_exit(self);
  }
}

@end