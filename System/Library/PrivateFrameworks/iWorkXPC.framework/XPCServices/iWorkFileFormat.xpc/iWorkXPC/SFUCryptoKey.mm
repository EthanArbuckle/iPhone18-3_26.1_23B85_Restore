@interface SFUCryptoKey
- (id)initAes128Key:(const char *)key length:(unsigned int)length iterationCount:(unsigned int)count;
- (id)initAes128KeyFromPassphrase:(const char *)passphrase length:(unsigned int)length iterationCount:(unsigned int)count saltData:(id)data;
- (id)initAes128KeyFromPassphrase:(id)passphrase withIterationCountAndSaltDataFromCryptoKey:(id)key;
- (void)addBlockInfo:(id)info;
- (void)dealloc;
- (void)incrementDecodedLengthBy:(unint64_t)by;
@end

@implementation SFUCryptoKey

- (void)addBlockInfo:(id)info
{
  if ([(SFUCryptoKey *)self preferredBlockSize]== -1)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100154E60();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100154E74();
    }

    v3 = [NSString stringWithUTF8String:"[SFUCryptoKey(TSPCryptoInfo) addBlockInfo:]"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoInfo.mm"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:140 isFatal:0 description:"We should not be adding a block info when the preferred block size is SIZE_T_MAX."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

- (void)incrementDecodedLengthBy:(unint64_t)by
{
  +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    sub_100154EFC();
  }

  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_100154F10();
  }

  v3 = [NSString stringWithUTF8String:"[SFUCryptoKey(TSPCryptoInfo) incrementDecodedLengthBy:]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoInfo.mm"];
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:144 isFatal:0 description:"This is not a mutable crypto info."];

  +[TSUAssertionHandler logBacktraceThrottled];
}

- (id)initAes128KeyFromPassphrase:(id)passphrase withIterationCountAndSaltDataFromCryptoKey:(id)key
{
  if (!passphrase)
  {
    return 0;
  }

  uTF8String = [passphrase UTF8String];
  v7 = strlen(uTF8String);
  iterationCount = [key iterationCount];
  saltData = [key saltData];

  return [(SFUCryptoKey *)self initAes128KeyFromPassphrase:uTF8String length:v7 iterationCount:iterationCount saltData:saltData];
}

- (id)initAes128KeyFromPassphrase:(const char *)passphrase length:(unsigned int)length iterationCount:(unsigned int)count saltData:(id)data
{
  v14.receiver = self;
  v14.super_class = SFUCryptoKey;
  v10 = [(SFUCryptoKey *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->mIterationCount = count;
    v10->mKeyLength = 16;
    v10->mKey = malloc_type_calloc(1uLL, 0x10uLL, 0x100004077774924uLL);
    v11->_passphrase = [[NSString alloc] initWithBytes:passphrase length:length encoding:4];
    v12 = [data copy];
    v11->mSaltData = v12;
    if ((SFUDeriveAes128Key(passphrase, length, v11->mIterationCount, v11->mKey, v11->mKeyLength, [(NSData *)v12 bytes], [(NSData *)v11->mSaltData length]) & 1) == 0)
    {

      return 0;
    }
  }

  return v11;
}

- (id)initAes128Key:(const char *)key length:(unsigned int)length iterationCount:(unsigned int)count
{
  v11.receiver = self;
  v11.super_class = SFUCryptoKey;
  v7 = [(SFUCryptoKey *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->mIterationCount = count;
    v7->mKeyLength = 16;
    if (length == 16)
    {
      v7->mKey = malloc_type_calloc(1uLL, 0x10uLL, 0x100004077774924uLL);
      mKeyLength = v8->mKeyLength;
      __memcpy_chk();
    }

    else
    {

      return 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  mKey = self->mKey;
  if (mKey)
  {
    free(mKey);
    self->mKey = 0;
  }

  v4.receiver = self;
  v4.super_class = SFUCryptoKey;
  [(SFUCryptoKey *)&v4 dealloc];
}

@end