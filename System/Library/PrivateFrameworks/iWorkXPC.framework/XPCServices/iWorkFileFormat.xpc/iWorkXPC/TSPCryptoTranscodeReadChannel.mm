@interface TSPCryptoTranscodeReadChannel
- (TSPCryptoTranscodeReadChannel)init;
- (TSPCryptoTranscodeReadChannel)initWithReadChannel:(id)a3 decryptionInfo:(id)a4 encryptionInfo:(id)a5;
- (void)close;
- (void)readWithHandler:(id)a3;
@end

@implementation TSPCryptoTranscodeReadChannel

- (TSPCryptoTranscodeReadChannel)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C73C0);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSPCryptoTranscodeReadChannel init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoTranscodeReadChannel.mm";
    v15 = 1024;
    v16 = 33;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSPCryptoTranscodeReadChannel init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoTranscodeReadChannel.mm"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:33 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSPCryptoTranscodeReadChannel init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPCryptoTranscodeReadChannel)initWithReadChannel:(id)a3 decryptionInfo:(id)a4 encryptionInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = TSPCryptoTranscodeReadChannel;
  v11 = [(TSPCryptoTranscodeReadChannel *)&v19 init];
  if (v11)
  {
    if (v9)
    {
      v12 = [TSPCryptoReadChannel alloc];
      v13 = [v9 cryptoKey];
      v14 = [v9 blockInfos];
      v15 = [(TSPCryptoReadChannel *)v12 initWithReadChannel:v8 decryptionKey:v13 blockInfos:v14];
      readChannel = v11->_readChannel;
      v11->_readChannel = v15;
    }

    else
    {
      v17 = v8;
      v13 = v11->_readChannel;
      v11->_readChannel = v17;
    }

    objc_storeStrong(&v11->_encryptionInfo, a5);
    if (!v11->_readChannel)
    {

      v11 = 0;
    }
  }

  return v11;
}

- (void)readWithHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_encryptionInfo)
  {
    v6 = [[TSPIOHandlerWriteChannelAdapter alloc] initWithHandler:v4];
    v7 = [[TSPCryptoComponentWriteChannel alloc] initWithWriteChannel:v6 encryptionInfo:self->_encryptionInfo];
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v19 = 0;
    readChannel = self->_readChannel;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002B3F0;
    v14[3] = &unk_1001C73E8;
    v17 = v18;
    v9 = v6;
    v15 = v9;
    v16 = v7;
    v10 = v7;
    [(TSUStreamReadChannel *)readChannel readWithHandler:v14];

    _Block_object_dispose(v18, 8);
  }

  else
  {
    v11 = self->_readChannel;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002B4C8;
    v12[3] = &unk_1001C7410;
    v13 = v4;
    [(TSUStreamReadChannel *)v11 readWithHandler:v12];
    v9 = v13;
  }
}

- (void)close
{
  [(TSUStreamReadChannel *)self->_readChannel close];
  readChannel = self->_readChannel;
  self->_readChannel = 0;
}

@end