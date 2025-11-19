@interface SFUCryptoOutputStream
+ (unint64_t)encodedLengthForDataLength:(unint64_t)a3 key:(id)a4;
- (id)closeLocalStream;
- (id)initForEncryptionWithOutputStream:(id)a3 key:(id)a4 computeCrc32:(BOOL)a5;
- (id)inputStream;
- (unsigned)crc32;
- (void)close;
- (void)dealloc;
- (void)seekToOffset:(int64_t)a3 whence:(int)a4;
- (void)writeBuffer:(const char *)a3 size:(unint64_t)a4;
@end

@implementation SFUCryptoOutputStream

+ (unint64_t)encodedLengthForDataLength:(unint64_t)a3 key:(id)a4
{
  v6 = 2 * [SFUCryptoUtils ivLengthForKey:a4];
  v7 = [a4 keyType];
  LODWORD(v8) = v6 - (a3 & 0xF) + 16;
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v8;
  }

  if (__CFADD__(v8, a3))
  {
    v8 = 0;
  }

  return v8 + a3;
}

- (id)initForEncryptionWithOutputStream:(id)a3 key:(id)a4 computeCrc32:(BOOL)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = [(SFUCryptoOutputStream *)self init];
  if (v8)
  {
    v8->mBaseStream = a3;
    v8->mComputeCrc32 = a5;
    v9 = [SFUCryptoUtils ivLengthForKey:a4];
    v10 = v17 - ((v9 + 15) & 0x1FFFFFFF0);
    v11 = *MEMORY[0x277CDC540];
    v12 = SecRandomCopyBytes(*MEMORY[0x277CDC540], v9, v10);
    v13 = MEMORY[0x277CBE648];
    if (v12)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"Failed to generate IV"];
    }

    v14 = [[SFUCryptor alloc] initWithKey:a4 operation:0 iv:v10 ivLength:v9];
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

- (void)writeBuffer:(const char *)a3 size:(unint64_t)a4
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

  if (![(SFUCryptor *)self->mCryptor cryptDataFromBuffer:a3 length:a4 toStream:self->mBaseStream finished:0 crc32:p_mCrc32 error:&v11])
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = *MEMORY[0x277CBE648];
    v10 = [v11 localizedDescription];
    [v8 raise:v9 format:{@"SFUCryptor failed. %@: %@", v10, objc_msgSend(v11, "localizedFailureReason")}];
  }
}

- (void)seekToOffset:(int64_t)a3 whence:(int)a4
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[SFUCryptoOutputStream seekToOffset:whence:]", *&a4}];
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
      v8 = [v10 localizedDescription];
      [v6 raise:v7 format:{@"SFUCryptor failed. %@: %@", v8, objc_msgSend(v10, "localizedFailureReason")}];
    }
  }

  return self->mBaseStream;
}

@end