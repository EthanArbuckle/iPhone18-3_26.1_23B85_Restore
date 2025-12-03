@interface SFUCryptoOutputStream
+ (unint64_t)encodedLengthForDataLength:(unint64_t)length key:(id)key;
- (id)closeLocalStream;
- (id)initForEncryptionWithOutputStream:(id)stream key:(id)key computeCrc32:(BOOL)crc32;
- (id)inputStream;
- (unsigned)crc32;
- (void)close;
- (void)dealloc;
- (void)seekToOffset:(int64_t)offset whence:(int)whence;
- (void)writeBuffer:(const char *)buffer size:(unint64_t)size;
@end

@implementation SFUCryptoOutputStream

+ (unint64_t)encodedLengthForDataLength:(unint64_t)length key:(id)key
{
  v6 = 2 * [SFUCryptoUtils ivLengthForKey:key];
  keyType = [key keyType];
  LODWORD(v8) = v6 - (length & 0xF) + 16;
  if (keyType)
  {
    v8 = v6;
  }

  else
  {
    v8 = v8;
  }

  if (__CFADD__(v8, length))
  {
    v8 = 0;
  }

  return v8 + length;
}

- (id)initForEncryptionWithOutputStream:(id)stream key:(id)key computeCrc32:(BOOL)crc32
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = [(SFUCryptoOutputStream *)self init];
  if (v8)
  {
    v8->mBaseStream = stream;
    v8->mComputeCrc32 = crc32;
    v9 = [SFUCryptoUtils ivLengthForKey:key];
    v10 = v17 - ((v9 + 15) & 0x1FFFFFFF0);
    v11 = *MEMORY[0x277CDC540];
    v12 = SecRandomCopyBytes(*MEMORY[0x277CDC540], v9, v10);
    v13 = MEMORY[0x277CBE648];
    if (v12)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"Failed to generate IV"];
    }

    v14 = [[SFUCryptor alloc] initWithKey:key operation:0 iv:v10 ivLength:v9];
    v8->mCryptor = v14;
    if (!v14)
    {
      [MEMORY[0x277CBEAD8] raise:*v13 format:@"Failed to create SFUCryptor"];
    }

    [(SFUOutputStream *)v8->mBaseStream writeBuffer:v10 size:v9];
    if (v8->mComputeCrc32)
    {
      v15 = crc32(0, 0, 0);
      v8->mCrc32 = v15;
      v8->mCrc32 = crc32(v15, v10, v9);
    }

    if (v9)
    {
      if (SecRandomCopyBytes(v11, v9, v10))
      {
        [MEMORY[0x277CBEAD8] raise:*v13 format:@"Failed to generate initial plaintext"];
      }

      [(SFUCryptoOutputStream *)v8 writeBuffer:v10 size:v9];
    }
  }

  return v8;
}

- (void)dealloc
{
  if (!self->mIsClosed)
  {
    [(SFUCryptoOutputStream *)self closeLocalStream];
  }

  v3.receiver = self;
  v3.super_class = SFUCryptoOutputStream;
  [(SFUCryptoOutputStream *)&v3 dealloc];
}

- (void)writeBuffer:(const char *)buffer size:(unint64_t)size
{
  if (self->mIsClosed)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Tried to write data to a closed SFUCryptoOutputStream."];
  }

  v11 = 0;
  if (self->mComputeCrc32)
  {
    p_mCrc32 = &self->mCrc32;
  }

  else
  {
    p_mCrc32 = 0;
  }

  if (![(SFUCryptor *)self->mCryptor cryptDataFromBuffer:buffer length:size toStream:self->mBaseStream finished:0 crc32:p_mCrc32 error:&v11])
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = *MEMORY[0x277CBE648];
    localizedDescription = [v11 localizedDescription];
    [v8 raise:v9 format:{@"SFUCryptor failed. %@: %@", localizedDescription, objc_msgSend(v11, "localizedFailureReason")}];
  }
}

- (void)seekToOffset:(int64_t)offset whence:(int)whence
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[SFUCryptoOutputStream seekToOffset:whence:]", *&whence}];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUCryptoOutputStream.mm"], 124, 0, "SFUCryptoOutputStream cannot seek.");

  +[TSUAssertionHandler logBacktraceThrottled];
}

- (id)inputStream
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUCryptoOutputStream inputStream]"];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUCryptoOutputStream.mm"], 136, 0, "SFUCryptoOutputStream cannot create an input stream.");
  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (unsigned)crc32
{
  if (!self->mComputeCrc32 || !self->mIsClosed)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUCryptoOutputStream crc32]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUCryptoOutputStream.mm"], 141, 0, "Can't call -crc32 unless the stream is closed and was asked to compute the CRC32.");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return self->mCrc32;
}

- (void)close
{
  [(SFUCryptoOutputStream *)self closeLocalStream];
  mBaseStream = self->mBaseStream;

  [(SFUOutputStream *)mBaseStream close];
}

- (id)closeLocalStream
{
  if (!self->mIsClosed)
  {
    self->mIsClosed = 1;
    v10 = 0;
    mBaseStream = self->mBaseStream;
    mCryptor = self->mCryptor;
    if (self->mComputeCrc32)
    {
      p_mCrc32 = &self->mCrc32;
    }

    else
    {
      p_mCrc32 = 0;
    }

    if (![(SFUCryptor *)mCryptor cryptDataFromBuffer:0 length:0 toStream:mBaseStream finished:1 crc32:p_mCrc32 error:&v10])
    {
      v6 = MEMORY[0x277CBEAD8];
      v7 = *MEMORY[0x277CBE648];
      localizedDescription = [v10 localizedDescription];
      [v6 raise:v7 format:{@"SFUCryptor failed. %@: %@", localizedDescription, objc_msgSend(v10, "localizedFailureReason")}];
    }
  }

  return self->mBaseStream;
}

@end