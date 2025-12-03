@interface SFUFileDataRepresentation
- (BOOL)hasSameLocationAs:(id)as;
- (BOOL)isCryptoKeyIdenticalToKey:(id)key;
- (CGDataProvider)cgDataProvider;
- (SFUFileDataRepresentation)initWithCopyOfData:(id)data path:(id)path cryptoKey:(id)key;
- (SFUFileDataRepresentation)initWithInputStream:(id)stream cryptoKey:(id)key dataLength:(int64_t)length;
- (SFUFileDataRepresentation)initWithPath:(id)path sharedFileDescriptor:(int)descriptor cryptoKey:(id)key dataLength:(int64_t)length;
- (id)inputStream;
- (int64_t)dataLength;
- (void)dealloc;
- (void)readFileAttributes;
- (void)setFileType:(unsigned int)type;
@end

@implementation SFUFileDataRepresentation

- (SFUFileDataRepresentation)initWithPath:(id)path sharedFileDescriptor:(int)descriptor cryptoKey:(id)key dataLength:(int64_t)length
{
  if (!path)
  {
    v11 = +[TSUAssertionHandler currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUFileDataRepresentation initWithPath:sharedFileDescriptor:cryptoKey:dataLength:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUFileDataRepresentation.m"), 50, @"Invalid parameter not satisfying: %s", "path != nil"}];
  }

  v13 = [(SFUFileDataRepresentation *)self init];
  if (v13)
  {
    v13->mPath = path;
    keyCopy = key;
    v13->mCryptoKey = keyCopy;
    if (keyCopy)
    {
      v13->mPlaintextDataLength = length;
    }

    v13->mSharedFd = descriptor;
    [(SFUFileDataRepresentation *)v13 path];
  }

  return v13;
}

- (SFUFileDataRepresentation)initWithCopyOfData:(id)data path:(id)path cryptoKey:(id)key
{
  if (data)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(data "path")] || (objc_msgSend(data, "isCryptoKeyIdenticalToKey:", key) & 1) == 0)
    {
      v9 = objc_alloc_init(MEMORY[0x277CCA8B0]);
      bufferedInputStream = [data bufferedInputStream];
      unlink([path fileSystemRepresentation]);
      v11 = [[SFUFileOutputStream alloc] initWithPath:path];
      v12 = v11;
      if (key)
      {
        v13 = [[SFUCryptoOutputStream alloc] initForEncryptionWithOutputStream:v11 key:key];
      }

      else
      {
        v13 = v11;
      }

      while (1)
      {
        v16 = 0;
        v15 = [bufferedInputStream readToOwnBuffer:&v16 size:-1];
        if (!v15)
        {
          break;
        }

        [(SFUFileOutputStream *)v13 writeBuffer:v16 size:v15];
      }

      [bufferedInputStream close];
      [(SFUFileOutputStream *)v13 close];
    }

    return -[SFUFileDataRepresentation initWithPath:cryptoKey:dataLength:](self, "initWithPath:cryptoKey:dataLength:", path, key, [data dataLength]);
  }

  else
  {

    return 0;
  }
}

- (SFUFileDataRepresentation)initWithInputStream:(id)stream cryptoKey:(id)key dataLength:(int64_t)length
{
  v8 = [(SFUFileDataRepresentation *)self init];
  if (v8)
  {
    keyCopy = key;
    v8->mCryptoKey = keyCopy;
    if (keyCopy)
    {
      v8->mPlaintextDataLength = length;
    }

    v8->mInputStream = stream;
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

- (void)setFileType:(unsigned int)type
{
  path = [(SFUFileDataRepresentation *)self path];
  objc_sync_enter(self);
  if (path)
  {
    v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:type];
    v7 = objc_alloc(MEMORY[0x277CBEB38]);
    v8 = [v7 initWithObjectsAndKeys:{v6, *MEMORY[0x277CCA130], 0}];
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  }

  self->mFileType = type;

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

- (BOOL)isCryptoKeyIdenticalToKey:(id)key
{
  mCryptoKey = self->mCryptoKey;
  result = (key | mCryptoKey) == 0;
  if (key)
  {
    if (mCryptoKey)
    {
      return [key isEqual:mCryptoKey];
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
    v4 = [[SFUFileInputStream alloc] initWithFileDescriptor:SFUDup(self->mSharedFd) offset:0 length:[(SFUFileDataRepresentation *)self encodedLength]];
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

- (BOOL)hasSameLocationAs:(id)as
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  path = [(SFUFileDataRepresentation *)self path];
  path2 = [as path];

  return [path isEqualToString:path2];
}

- (CGDataProvider)cgDataProvider
{
  if (self->mCryptoKey)
  {
    v4.receiver = self;
    v4.super_class = SFUFileDataRepresentation;
    return [(SFUDataRepresentation *)&v4 cgDataProvider];
  }

  else
  {
    v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:{-[SFUFileDataRepresentation path](self, "path")}];

    return CGDataProviderCreateWithURL(v3);
  }
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