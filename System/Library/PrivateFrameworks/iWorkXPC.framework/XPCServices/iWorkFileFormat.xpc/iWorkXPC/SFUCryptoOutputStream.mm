@interface SFUCryptoOutputStream
+ (unint64_t)encodedLengthForDataLength:(unint64_t)length key:(id)key;
- (id)closeLocalStream;
- (id)initForEncryptionWithOutputStream:(id)stream key:(id)key computeCrc32:(BOOL)crc32;
- (id)inputStream;
- (unsigned)crc32;
- (void)close;
- (void)dealloc;
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
  v8 = [(SFUCryptoOutputStream *)self init];
  if (v8)
  {
    v8->mBaseStream = stream;
    v8->mComputeCrc32 = crc32;
    v9 = [SFUCryptoUtils ivLengthForKey:key];
    v10 = &v14 - ((v9 + 15) & 0x1FFFFFFF0);
    if (SecRandomCopyBytes(kSecRandomDefault, v9, v10))
    {
      [NSException raise:NSGenericException format:@"Failed to generate IV"];
    }

    v11 = [[SFUCryptor alloc] initWithKey:key operation:0 iv:v10 ivLength:v9];
    v8->mCryptor = v11;
    if (!v11)
    {
      [NSException raise:NSGenericException format:@"Failed to create SFUCryptor"];
    }

    [(SFUOutputStream *)v8->mBaseStream writeBuffer:v10 size:v9];
    if (v8->mComputeCrc32)
    {
      v12 = crc32(0, 0, 0);
      v8->mCrc32 = v12;
      v8->mCrc32 = crc32(v12, v10, v9);
    }

    if (v9)
    {
      if (SecRandomCopyBytes(kSecRandomDefault, v9, v10))
      {
        [NSException raise:NSGenericException format:@"Failed to generate initial plaintext"];
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
    [NSException raise:NSInternalInconsistencyException format:@"Tried to write data to a closed SFUCryptoOutputStream."];
  }

  v9 = 0;
  if (self->mComputeCrc32)
  {
    p_mCrc32 = &self->mCrc32;
  }

  else
  {
    p_mCrc32 = 0;
  }

  if (![(SFUCryptor *)self->mCryptor cryptDataFromBuffer:buffer length:size toStream:self->mBaseStream finished:0 crc32:p_mCrc32 error:&v9])
  {
    localizedDescription = [v9 localizedDescription];
    +[NSException raise:format:](NSException, "raise:format:", NSGenericException, @"SFUCryptor failed. %@: %@", localizedDescription, [v9 localizedFailureReason]);
  }
}

- (id)inputStream
{
  +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    sub_1001598EC();
  }

  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_100159900();
  }

  [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUCryptoOutputStream inputStream]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptoOutputStream.mm"] lineNumber:136 isFatal:0 description:"SFUCryptoOutputStream cannot create an input stream."];
  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (unsigned)crc32
{
  if (!self->mComputeCrc32 || !self->mIsClosed)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100159988();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015999C();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUCryptoOutputStream crc32]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptoOutputStream.mm"] lineNumber:141 isFatal:0 description:"Can't call -crc32 unless the stream is closed and was asked to compute the CRC32."];
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
    v8 = 0;
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

    if (![(SFUCryptor *)mCryptor cryptDataFromBuffer:0 length:0 toStream:mBaseStream finished:1 crc32:p_mCrc32 error:&v8])
    {
      localizedDescription = [v8 localizedDescription];
      +[NSException raise:format:](NSException, "raise:format:", NSGenericException, @"SFUCryptor failed. %@: %@", localizedDescription, [v8 localizedFailureReason]);
    }
  }

  return self->mBaseStream;
}

@end