@interface TSUCompressionReadChannel
- (void)close;
- (void)dealloc;
- (void)readWithHandler:(id)a3;
@end

@implementation TSUCompressionReadChannel

- (void)dealloc
{
  if (self->_readChannel)
  {
    v3 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015D3D8();
    }

    v4 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015D3EC(v3, v4);
    }

    v5 = [NSString stringWithUTF8String:"[TSUCompressionReadChannel dealloc]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUCompressionReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:31 isFatal:0 description:"Failed to close read channel prior to dealloc"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v7.receiver = self;
  v7.super_class = TSUCompressionReadChannel;
  [(TSUCompressionReadChannel *)&v7 dealloc];
}

- (void)close
{
  [(TSUStreamReadChannel *)self->_readChannel close];
  readChannel = self->_readChannel;
  self->_readChannel = 0;

  compressor = self->_compressor;
  self->_compressor = 0;
}

- (void)readWithHandler:(id)a3
{
  v4 = a3;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 1;
  v5 = self->_compressor;
  readChannel = self->_readChannel;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000937AC;
  v9[3] = &unk_1001CD7B8;
  v12 = v13;
  v7 = v5;
  v10 = v7;
  v8 = v4;
  v11 = v8;
  [(TSUStreamReadChannel *)readChannel readWithHandler:v9];

  _Block_object_dispose(v13, 8);
}

@end