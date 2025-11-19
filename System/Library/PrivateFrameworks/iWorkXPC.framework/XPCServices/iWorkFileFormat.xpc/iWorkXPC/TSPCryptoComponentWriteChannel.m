@interface TSPCryptoComponentWriteChannel
- (BOOL)_initializeBlock;
- (BOOL)_resetBuffer;
- (TSPCryptoComponentWriteChannel)init;
- (TSPCryptoComponentWriteChannel)initWithWriteChannel:(id)a3 encryptionInfo:(id)a4 bufferSize:(unint64_t)a5;
- (void)_writeData:(id)a3 isDecryptedData:(BOOL)a4;
- (void)close;
- (void)dealloc;
@end

@implementation TSPCryptoComponentWriteChannel

- (TSPCryptoComponentWriteChannel)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C5FD0);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSPCryptoComponentWriteChannel init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoComponentWriteChannel.mm";
    v15 = 1024;
    v16 = 40;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSPCryptoComponentWriteChannel init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:40 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSPCryptoComponentWriteChannel init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPCryptoComponentWriteChannel)initWithWriteChannel:(id)a3 encryptionInfo:(id)a4 bufferSize:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v27.receiver = self;
  v27.super_class = TSPCryptoComponentWriteChannel;
  v11 = [(TSPCryptoComponentWriteChannel *)&v27 init];
  v12 = v11;
  if (v11)
  {
    if (!v9)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_1001518B0();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_1001518D8();
      }

      v13 = [NSString stringWithUTF8String:"[TSPCryptoComponentWriteChannel initWithWriteChannel:encryptionInfo:bufferSize:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
      [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:50 isFatal:0 description:"invalid nil value for '%{public}s'", "writeChannel"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    objc_storeStrong(&v11->_writeChannel, a3);
    if (!v10)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_100151980();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_1001519A8();
      }

      v15 = [NSString stringWithUTF8String:"[TSPCryptoComponentWriteChannel initWithWriteChannel:encryptionInfo:bufferSize:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
      [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:53 isFatal:0 description:"invalid nil value for '%{public}s'", "encryptionInfo"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    objc_storeStrong(&v11->_encryptionInfo, a4);
    [(TSPMutableCryptoInfo *)v11->_encryptionInfo reset];
    v17 = 144;
    if (a5 > 0x90)
    {
      v17 = a5;
    }

    v11->_bufferSize = v17;
    v18 = +[NSProcessInfo processInfo];
    v19 = [v18 physicalMemory];

    if (v19 / 0x64 / v11->_bufferSize <= 0x20)
    {
      v20 = 32;
    }

    else
    {
      v20 = v19 / 0x64 / v11->_bufferSize;
    }

    v21 = dispatch_semaphore_create(v20);
    bufferSemaphore = v11->_bufferSemaphore;
    v11->_bufferSemaphore = v21;

    if (v11->_writeChannel)
    {
      v23 = [(TSPMutableCryptoInfo *)v11->_encryptionInfo cryptoKey];
      if (v23 && [(TSPCryptoComponentWriteChannel *)v11 _resetBuffer])
      {
        v24 = [(TSPCryptoComponentWriteChannel *)v11 _initializeBlock];

        if (v24)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    writeChannel = v12->_writeChannel;
    v12->_writeChannel = 0;

    v12 = 0;
  }

LABEL_26:

  return v12;
}

- (BOOL)_resetBuffer
{
  v3 = self->_bufferSemaphore;
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = malloc_type_malloc(self->_bufferSize, 0x100004077774924uLL);
  v5 = v4;
  if (v4)
  {
    self->_buffer = v4;
    bufferSize = self->_bufferSize;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100013B90;
    v14[3] = &unk_1001C6058;
    v16 = v4;
    v15 = v3;
    v7 = dispatch_data_create(v5, bufferSize, 0, v14);
    bufferDispatchData = self->_bufferDispatchData;
    self->_bufferDispatchData = v7;

    v9 = self->_bufferSize;
    self->_bufferPosition = 0;
    self->_remainingBufferSize = v9;
    v10 = self->_bufferDispatchData != 0;
  }

  else
  {
    dispatch_semaphore_signal(v3);
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100151A50();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100151A64();
    }

    v11 = [NSString stringWithUTF8String:"[TSPCryptoComponentWriteChannel _resetBuffer]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:85 isFatal:0 description:"Failed to allocate space for encryption buffer"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v10 = 0;
  }

  return v10;
}

- (BOOL)_initializeBlock
{
  v3 = [(TSPMutableCryptoInfo *)self->_encryptionInfo cryptoKey];
  v4 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  if (!v4 || SecRandomCopyBytes(kSecRandomDefault, 0x10uLL, v4))
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100151CD8();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100151CEC();
    }

    v5 = [NSString stringWithUTF8String:"[TSPCryptoComponentWriteChannel _initializeBlock]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:109 isFatal:0 description:"Failed to generate IV"];

    +[TSUAssertionHandler logBacktraceThrottled];
LABEL_8:
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v7 = CCCryptorCreate(0, 0, 1u, [v3 keyData], objc_msgSend(v3, "keyLength"), v4, &self->_cryptor);
  if (v7 || !self->_cryptor)
  {
    v8 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100151C24();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100151C38(v8);
    }

    v9 = [NSString stringWithUTF8String:"[TSPCryptoComponentWriteChannel _initializeBlock]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:115 isFatal:0 description:"CCCryptorCreate() failed: %d", v7];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  else
  {
    *self->_ccHmacContext.ctx = 0u;
    *&self->_ccHmacContext.ctx[88] = 0u;
    *&self->_ccHmacContext.ctx[92] = 0u;
    *&self->_ccHmacContext.ctx[80] = 0u;
    *&self->_ccHmacContext.ctx[84] = 0u;
    *&self->_ccHmacContext.ctx[72] = 0u;
    *&self->_ccHmacContext.ctx[76] = 0u;
    *&self->_ccHmacContext.ctx[64] = 0u;
    *&self->_ccHmacContext.ctx[68] = 0u;
    *&self->_ccHmacContext.ctx[56] = 0u;
    *&self->_ccHmacContext.ctx[60] = 0u;
    *&self->_ccHmacContext.ctx[48] = 0u;
    *&self->_ccHmacContext.ctx[52] = 0u;
    *&self->_ccHmacContext.ctx[40] = 0u;
    *&self->_ccHmacContext.ctx[44] = 0u;
    *&self->_ccHmacContext.ctx[32] = 0u;
    *&self->_ccHmacContext.ctx[36] = 0u;
    *&self->_ccHmacContext.ctx[24] = 0u;
    *&self->_ccHmacContext.ctx[28] = 0u;
    *&self->_ccHmacContext.ctx[16] = 0u;
    *&self->_ccHmacContext.ctx[20] = 0u;
    *&self->_ccHmacContext.ctx[8] = 0u;
    *&self->_ccHmacContext.ctx[12] = 0u;
    *&self->_ccHmacContext.ctx[4] = 0u;
    v12 = [v3 passphrase];
    v13 = [v12 cStringUsingEncoding:4];

    if (v13)
    {
      v14 = strlen(v13);
      CCHmacInit(&self->_ccHmacContext, 0, v13, v14);
      writeChannel = self->_writeChannel;
      v16 = dispatch_data_create(v4, 0x10uLL, 0, _dispatch_data_destructor_free);
      [(TSPComponentWriteChannel *)writeChannel writeData:v16];

      self->_encodedBlockLength += 16;
      v4 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
      if (v4 && !SecRandomCopyBytes(kSecRandomDefault, 0x10uLL, v4))
      {
        v21 = dispatch_data_create(v4, 0x10uLL, 0, _dispatch_data_destructor_free);
        [(TSPCryptoComponentWriteChannel *)self _writeData:v21 isDecryptedData:0];

        LOBYTE(v4) = 1;
        goto LABEL_17;
      }

      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_100151AEC();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_100151B00();
      }

      v17 = [NSString stringWithUTF8String:"[TSPCryptoComponentWriteChannel _initializeBlock]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
      [TSUAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:139 isFatal:0 description:"Failed to generate initial block of random plaintext"];

      +[TSUAssertionHandler logBacktraceThrottled];
      goto LABEL_8;
    }

    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100151B88();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100151B9C();
    }

    v19 = [NSString stringWithUTF8String:"[TSPCryptoComponentWriteChannel _initializeBlock]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
    [TSUAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:124 isFatal:0 description:"Invalid passphrase"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

LABEL_16:
  free(v4);
  LOBYTE(v4) = 0;
LABEL_17:

  return v4;
}

- (void)dealloc
{
  [(TSPCryptoComponentWriteChannel *)self close];
  cryptor = self->_cryptor;
  if (cryptor)
  {
    CCCryptorRelease(cryptor);
    self->_cryptor = 0;
  }

  v4.receiver = self;
  v4.super_class = TSPCryptoComponentWriteChannel;
  [(TSPCryptoComponentWriteChannel *)&v4 dealloc];
}

- (void)_writeData:(id)a3 isDecryptedData:(BOOL)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001438C;
  v4[3] = &unk_1001C6120;
  v4[4] = self;
  v5 = a4;
  dispatch_data_apply(a3, v4);
}

- (void)close
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_writeChannel)
  {
    [(TSPCryptoComponentWriteChannel *)obj _finalizeBlockForClosing:1];
    [(TSPComponentWriteChannel *)obj->_writeChannel close];
    writeChannel = obj->_writeChannel;
    obj->_writeChannel = 0;
  }

  objc_sync_exit(obj);
}

@end