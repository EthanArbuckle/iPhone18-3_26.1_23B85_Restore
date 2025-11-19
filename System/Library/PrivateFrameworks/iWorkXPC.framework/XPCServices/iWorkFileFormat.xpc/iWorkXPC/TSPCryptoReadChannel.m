@interface TSPCryptoReadChannel
- (TSPCryptoReadChannel)init;
- (TSPCryptoReadChannel)initWithReadChannel:(id)a3 decryptionKey:(id)a4 blockInfos:(id)a5;
- (void)_readBlocksWithHandler:(id)a3;
- (void)_resetCryptor;
- (void)close;
- (void)dealloc;
- (void)readWithHandler:(id)a3;
@end

@implementation TSPCryptoReadChannel

- (TSPCryptoReadChannel)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C5D78);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSPCryptoReadChannel init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoReadChannel.mm";
    v15 = 1024;
    v16 = 37;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSPCryptoReadChannel init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoReadChannel.mm"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:37 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSPCryptoReadChannel init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPCryptoReadChannel)initWithReadChannel:(id)a3 decryptionKey:(id)a4 blockInfos:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25.receiver = self;
  v25.super_class = TSPCryptoReadChannel;
  v12 = [(TSPCryptoReadChannel *)&v25 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_27;
  }

  if (!v9)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015104C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100151074();
    }

    v14 = [NSString stringWithUTF8String:"[TSPCryptoReadChannel initWithReadChannel:decryptionKey:blockInfos:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoReadChannel.mm"];
    [TSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:43 isFatal:0 description:"invalid nil value for '%{public}s'", "readChannel"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  objc_storeStrong(&v12->_readChannel, a3);
  if (!v10)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100151114();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015113C();
    }

    v16 = [NSString stringWithUTF8String:"[TSPCryptoReadChannel initWithReadChannel:decryptionKey:blockInfos:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoReadChannel.mm"];
    [TSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:46 isFatal:0 description:"invalid nil value for '%{public}s'", "decryptionKey"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  objc_storeStrong(&v12->_decryptionKey, a4);
  v18 = [v11 copy];
  blockInfos = v12->_blockInfos;
  v12->_blockInfos = v18;

  if (!v12->_readChannel || !v12->_decryptionKey)
  {
LABEL_24:

    v13 = 0;
    goto LABEL_27;
  }

  v20 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  v12->_iv = v20;
  if (!v20)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_1001511DC();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100151204();
    }

    v22 = [NSString stringWithUTF8String:"[TSPCryptoReadChannel initWithReadChannel:decryptionKey:blockInfos:]"];
    v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoReadChannel.mm"];
    [TSUAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:62 isFatal:0 description:"Failed to allocate space for IV"];

    +[TSUAssertionHandler logBacktraceThrottled];
    goto LABEL_24;
  }

  if ([(NSArray *)v12->_blockInfos count])
  {
    v21 = [(NSArray *)v12->_blockInfos objectAtIndexedSubscript:0];
    v13->_remainingBlockSize = [v21 encodedLength];
  }

  else
  {
    v12->_remainingBlockSize = -1;
  }

  v13->_nextBlockIndex = 0;
LABEL_27:

  return v13;
}

- (void)dealloc
{
  [(TSPCryptoReadChannel *)self close];
  cryptor = self->_cryptor;
  if (cryptor)
  {
    CCCryptorRelease(cryptor);
    self->_cryptor = 0;
  }

  iv = self->_iv;
  if (iv)
  {
    free(iv);
    self->_iv = 0;
  }

  v5.receiver = self;
  v5.super_class = TSPCryptoReadChannel;
  [(TSPCryptoReadChannel *)&v5 dealloc];
}

- (void)close
{
  [(TSUStreamReadChannel *)self->_readChannel close];
  readChannel = self->_readChannel;
  self->_readChannel = 0;
}

- (void)readWithHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001193C;
  v4[3] = &unk_1001C5F68;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(TSPCryptoReadChannel *)v5 _readBlocksWithHandler:v4];
}

- (void)_readBlocksWithHandler:(id)a3
{
  v4 = a3;
  readChannel = self->_readChannel;
  if (!readChannel)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100151814();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100151828();
    }

    v6 = [NSString stringWithUTF8String:"[TSPCryptoReadChannel _readBlocksWithHandler:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoReadChannel.mm"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:277 isFatal:0 description:"Read channel is already closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
    readChannel = self->_readChannel;
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 1;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100012F6C;
  v9[3] = &unk_1001C5FB0;
  v11 = v12;
  v8 = v4;
  v9[4] = self;
  v10 = v8;
  [(TSUStreamReadChannel *)readChannel readWithHandler:v9];

  _Block_object_dispose(v12, 8);
}

- (void)_resetCryptor
{
  holdData = self->_holdData;
  self->_holdData = 0;

  self->_ivRead = 0;
  self->_initialBytesIgnored = 0;
  cryptor = self->_cryptor;
  if (cryptor)
  {
    CCCryptorRelease(cryptor);
    self->_cryptor = 0;
  }
}

@end