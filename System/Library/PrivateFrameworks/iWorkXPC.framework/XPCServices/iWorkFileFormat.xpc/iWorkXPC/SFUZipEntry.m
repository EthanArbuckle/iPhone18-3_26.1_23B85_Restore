@interface SFUZipEntry
- (BOOL)isBackedByFile;
- (BOOL)isReadable;
- (SFUZipEntry)initWithDataRepresentation:(id)a3 compressionMethod:(int)a4 compressedSize:(unint64_t)a5 uncompressedSize:(unint64_t)a6 offset:(unint64_t)a7 crc:(unsigned int)a8;
- (id)backingFilePath;
- (id)data;
- (id)initFromCentralFileHeader:(const char *)a3 dataRepresentation:(id)a4;
- (id)inputStream;
- (unint64_t)backingFileDataOffset;
- (unint64_t)calculateEncodedLength;
- (unint64_t)dataOffset;
- (void)copyToFile:(id)a3;
- (void)dealloc;
- (void)readZip64ExtraField:(const char *)a3 size:(unint64_t)a4;
- (void)setCompressionFlags:(unsigned __int16)a3;
- (void)setCryptoKey:(id)a3;
- (void)setDataLength:(int64_t)a3;
@end

@implementation SFUZipEntry

- (id)initFromCentralFileHeader:(const char *)a3 dataRepresentation:(id)a4
{
  v6 = [(SFUZipEntry *)self init];
  if (v6)
  {
    v6->mArchiveDataRepresentation = a4;
    if (*(a3 + 2))
    {
      [SFUZipException raise:@"SFUZipCentralFileHeaderError" format:@"Encrypted files are not supported"];
    }

    [(SFUZipEntry *)v6 setCompressionFlags:*(a3 + 3)];
    v6->mCrc = *(a3 + 3);
    v6->mCompressedSize = *(a3 + 4);
    v6->mUncompressedSize = *(a3 + 5);
    if (*(a3 + 15))
    {
      [SFUZipException raise:@"SFUZipCentralFileHeaderError" format:@"No multi-disk support"];
    }

    v6->mOffset = *(a3 + 38);
  }

  return v6;
}

- (SFUZipEntry)initWithDataRepresentation:(id)a3 compressionMethod:(int)a4 compressedSize:(unint64_t)a5 uncompressedSize:(unint64_t)a6 offset:(unint64_t)a7 crc:(unsigned int)a8
{
  v14 = [(SFUZipEntry *)self init];
  if (v14)
  {
    v14->mArchiveDataRepresentation = a3;
    v14->mCompressionMethod = a4;
    v14->mCompressedSize = a5;
    v14->mUncompressedSize = a6;
    v14->mOffset = a7;
    v14->mCrc = a8;
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUZipEntry;
  [(SFUZipEntry *)&v3 dealloc];
}

- (BOOL)isReadable
{
  v3 = [(SFUZipArchiveDataRepresentation *)self->mArchiveDataRepresentation isReadable];
  if (v3)
  {
    LOBYTE(v3) = [(SFUZipEntry *)self dataOffset]!= 0;
  }

  return v3;
}

- (id)inputStream
{
  v3 = [(SFUZipEntry *)self dataOffset];
  if (!v3)
  {
    return v3;
  }

  if (self->mCryptoKey)
  {
    v3 = [(SFUZipArchiveDataRepresentation *)self->mArchiveDataRepresentation inputStreamWithOffset:v3 length:self->mCompressedSize];
    v4 = [[SFUCryptoInputStream alloc] initForDecryptionWithInputStream:v3 key:self->mCryptoKey];
    v5 = v4;
    mCompressionMethod = self->mCompressionMethod;
    if (mCompressionMethod == 1)
    {
      v3 = [[SFUZipInflateInputStream alloc] initWithInput:v4];
    }

    else
    {
      if (!mCompressionMethod)
      {
        goto LABEL_19;
      }

      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_10015C5C4();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015C5D8();
      }

      [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUZipEntry inputStream]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUZipEntry.m"] lineNumber:141 isFatal:0 description:"Bad compression method."];
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    return v3;
  }

  v7 = self->mCompressionMethod;
  if (v7 == 1)
  {
    v4 = [[SFUZipInflateInputStream alloc] initWithOffset:v3 end:v3 + self->mCompressedSize uncompressedSize:self->mUncompressedSize crc:self->mCrc dataRepresentation:self->mArchiveDataRepresentation];
LABEL_19:

    return v4;
  }

  if (v7)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015C660();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015C674();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUZipEntry inputStream]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUZipEntry.m"] lineNumber:154 isFatal:0 description:"Bad compression method."];
    +[TSUAssertionHandler logBacktraceThrottled];
    return 0;
  }

  mArchiveDataRepresentation = self->mArchiveDataRepresentation;
  v9 = [(SFUZipEntry *)self dataLength];

  return [(SFUZipArchiveDataRepresentation *)mArchiveDataRepresentation inputStreamWithOffset:v3 length:v9];
}

- (id)data
{
  v3 = [(SFUZipEntry *)self dataLength];
  if (v3 < 0)
  {
    [SFUZipException raise:@"SFUZipEntryError" format:@"Couldn't allocate NSMutableData with size: %qu", v3];
  }

  v4 = [NSMutableData dataWithLength:v3];
  if (!v4)
  {
    [SFUZipException raise:@"SFUZipEntryError" format:@"Couldn't allocate NSMutableData with size: %qu", v3];
  }

  v5 = objc_autoreleasePoolPush();
  if ([-[SFUZipEntry inputStream](self "inputStream")] != v3)
  {
    [SFUZipException raise:@"SFUZipEntryError" format:@"Couldn't read data with size: %qu", v3];
  }

  objc_autoreleasePoolPop(v5);
  return v4;
}

- (void)copyToFile:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  unlink([a3 fileSystemRepresentation]);
  v6 = SFUFileOpen(a3, "w");
  v7 = [(SFUDataRepresentation *)self bufferedInputStream];
  while (1)
  {
    __ptr = 0;
    v8 = [v7 readToOwnBuffer:&__ptr size:-1];
    if (!v8)
    {
      break;
    }

    if (fwrite(__ptr, 1uLL, v8, v6) != v8)
    {
      [NSException sfu_errnoRaise:@"SFUFileWriteError" format:@"Could not write"];
    }
  }

  [v7 close];
  fclose(v6);
  objc_autoreleasePoolPop(v5);
}

- (BOOL)isBackedByFile
{
  mArchiveDataRepresentation = self->mArchiveDataRepresentation;
  objc_opt_class();
  return objc_opt_isKindOfClass() & 1;
}

- (id)backingFilePath
{
  if ([(SFUZipEntry *)self isBackedByFile])
  {
    mArchiveDataRepresentation = self->mArchiveDataRepresentation;

    return [(SFUZipArchiveDataRepresentation *)mArchiveDataRepresentation path];
  }

  else
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015C6FC();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015C710();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUZipEntry backingFilePath]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUZipEntry.m"] lineNumber:227 isFatal:0 description:"[SFUZipEntry backingFilePath] called on an entry that is not backed by file."];
    +[TSUAssertionHandler logBacktraceThrottled];
    return 0;
  }
}

- (unint64_t)backingFileDataOffset
{
  if ([(SFUZipEntry *)self isBackedByFile])
  {

    return [(SFUZipEntry *)self dataOffset];
  }

  else
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015C798();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015C7AC();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUZipEntry backingFileDataOffset]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUZipEntry.m"] lineNumber:236 isFatal:0 description:"[SFUZipEntry backingFileDataOffset] called on an entry that is not backed by file."];
    +[TSUAssertionHandler logBacktraceThrottled];
    return 0;
  }
}

- (void)readZip64ExtraField:(const char *)a3 size:(unint64_t)a4
{
  v7 = a3;
  if (self->mUncompressedSize == 0xFFFFFFFF)
  {
    if (a4 <= 7)
    {
      [SFUZipException raise:@"SFUZipCentralFileHeaderError" format:@"Not enough room for Zip64 uncompressed size"];
    }

    v7 = a3 + 8;
    self->mUncompressedSize = *a3;
  }

  v8 = &a3[a4];
  if (self->mCompressedSize == 0xFFFFFFFF)
  {
    if (v7 + 8 > v8)
    {
      [SFUZipException raise:@"SFUZipCentralFileHeaderError" format:@"Not enough room for Zip64 compressed size"];
    }

    self->mCompressedSize = *v7;
    v7 += 8;
  }

  if (self->mOffset == 0xFFFFFFFF)
  {
    if (v7 + 8 > v8)
    {
      [SFUZipException raise:@"SFUZipCentralFileHeaderError" format:@"Not enough room for Zip64 offset"];
    }

    self->mOffset = *v7;
  }
}

- (void)setCompressionFlags:(unsigned __int16)a3
{
  if (a3 <= 25450)
  {
    if (a3)
    {
      if (a3 != 8)
      {
        goto LABEL_9;
      }

LABEL_8:
      self->mCompressionMethod = 1;
      return;
    }

    goto LABEL_7;
  }

  if (a3 == 25452)
  {
    goto LABEL_8;
  }

  if (a3 == 25451)
  {
LABEL_7:
    self->mCompressionMethod = 0;
    return;
  }

LABEL_9:
  [SFUZipException raise:@"SFUZipCentralFileHeaderError" format:@"Unsupported compression method"];
}

- (void)setCryptoKey:(id)a3
{
  v5 = a3;

  self->mCryptoKey = a3;
}

- (void)setDataLength:(int64_t)a3
{
  if (self->mCryptoKey)
  {
    self->mHasEncodedLength = 0;
    self->mUncompressedSize = a3;
  }

  else
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015C834();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015C848();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUZipEntry setDataLength:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUZipEntry.m"] lineNumber:294 isFatal:0 description:"Tried to call -setDataLength: on an unencrypted zip entry."];
    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

- (unint64_t)dataOffset
{
  if (self->mHasDataOffset)
  {
    return self->mDataOffset;
  }

  objc_sync_enter(self);
  if (self->mHasDataOffset)
  {
LABEL_7:
    objc_sync_exit(self);
    return self->mDataOffset;
  }

  v3 = [(SFUZipArchiveDataRepresentation *)self->mArchiveDataRepresentation bufferedInputStreamWithOffset:self->mOffset length:30];
  v11 = 0;
  if ([v3 readToOwnBuffer:&v11 size:30] != 30)
  {
    [SFUZipException raise:@"SFUZipEntryError" format:@"Could not read local header."];
  }

  v4 = v11;
  v5 = *v11++;
  if (v5 == 67324752)
  {
    v6 = *(v4 + 13);
    v7 = *(v4 + 14);
    mOffset = self->mOffset;
    v11 = (v4 + 30);
    self->mDataOffset = v6 + v7 + 30 + mOffset;
    __dmb(0xBu);
    self->mHasDataOffset = 1;
    [v3 close];
    goto LABEL_7;
  }

  if (TSUErrorCat_init_token != -1)
  {
    sub_10015C8D0();
  }

  v10 = TSUErrorCat_log_t;
  if (os_log_type_enabled(TSUErrorCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_10015C8F8(v10);
  }

  __dmb(0xBu);
  self->mHasDataOffset = 1;
  [v3 close];
  objc_sync_exit(self);
  return 0;
}

- (unint64_t)calculateEncodedLength
{
  if (!self->mHasEncodedLength)
  {
    objc_sync_enter(self);
    if (!self->mHasEncodedLength)
    {
      if (self->mCryptoKey)
      {
        mUncompressedSize = [SFUCryptoOutputStream encodedLengthForDataLength:self->mUncompressedSize key:?];
      }

      else
      {
        mUncompressedSize = self->mUncompressedSize;
      }

      self->mEncodedLength = mUncompressedSize;
      __dmb(0xBu);
      self->mHasEncodedLength = 1;
    }

    objc_sync_exit(self);
  }

  return self->mEncodedLength;
}

@end