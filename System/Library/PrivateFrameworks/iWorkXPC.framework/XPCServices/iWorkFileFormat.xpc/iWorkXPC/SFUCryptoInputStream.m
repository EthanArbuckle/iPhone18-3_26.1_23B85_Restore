@interface SFUCryptoInputStream
- (id)initForDecryptionWithInputStream:(id)a3 key:(id)a4;
- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4;
- (void)dealloc;
- (void)seekToOffset:(int64_t)a3;
@end

@implementation SFUCryptoInputStream

- (id)initForDecryptionWithInputStream:(id)a3 key:(id)a4
{
  v6 = [(SFUCryptoInputStream *)self init];
  if (v6)
  {
    v6->mBaseStream = a3;
    v7 = [SFUCryptoUtils ivLengthForKey:a4];
    v8 = &v11 - ((v7 + 15) & 0x1FFFFFFF0);
    if ([(SFUInputStream *)v6->mBaseStream readToBuffer:v8 size:v7]!= v7)
    {
      [NSException raise:NSGenericException format:@"Failed to read IV"];
    }

    v9 = [[SFUCryptor alloc] initWithKey:a4 operation:1 iv:v8 ivLength:v7];
    v6->mCryptor = v9;
    if (!v9)
    {
      [NSException raise:NSGenericException format:@"Failed to create SFUCryptor"];
    }

    if (v7)
    {
      if ([(SFUCryptoInputStream *)v6 readToBuffer:v8 size:v7]!= v7)
      {
        [NSException raise:NSGenericException format:@"Failed to read initial ciphertext"];
      }

      v6->mOffset = 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUCryptoInputStream;
  [(SFUCryptoInputStream *)&v3 dealloc];
}

- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4
{
  v7 = 0;
  v8 = 0;
  if (![(SFUCryptor *)self->mCryptor cryptDataFromStream:self->mBaseStream toBuffer:a3 length:a4 bytesRead:&v7 error:&v8])
  {
    v5 = [v8 localizedDescription];
    +[NSException raise:format:](NSException, "raise:format:", NSGenericException, @"SFUCryptor failed. %@: %@", v5, [v8 localizedFailureReason]);
  }

  result = v7;
  self->mOffset += v7;
  return result;
}

- (void)seekToOffset:(int64_t)a3
{
  v3 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    sub_1001611A0();
  }

  v4 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_1001611B4(v3, v4);
  }

  [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUCryptoInputStream seekToOffset:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptoInputStream.m"] lineNumber:85 isFatal:0 description:"SFUCryptoInputStream cannot seek."];
  +[TSUAssertionHandler logBacktraceThrottled];
}

@end