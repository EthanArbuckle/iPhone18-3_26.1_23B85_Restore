@interface TSPCompressionComponentWriteChannel
- (void)close;
- (void)dealloc;
- (void)writeData:(id)a3;
@end

@implementation TSPCompressionComponentWriteChannel

- (void)dealloc
{
  if (self->_writeChannel)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100157548();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015755C();
    }

    v3 = [NSString stringWithUTF8String:"[TSPCompressionComponentWriteChannel dealloc]"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCompressionComponentWriteChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:29 isFatal:0 description:"Failed to close write channel prior to dealloc"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v5.receiver = self;
  v5.super_class = TSPCompressionComponentWriteChannel;
  [(TSPCompressionComponentWriteChannel *)&v5 dealloc];
}

- (void)close
{
  writeQueue = self->_writeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004C3B8;
  block[3] = &unk_1001C5A68;
  block[4] = self;
  dispatch_sync(writeQueue, block);
}

- (void)writeData:(id)a3
{
  v4 = a3;
  writeQueue = self->_writeQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004C4B4;
  v7[3] = &unk_1001C9338;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(writeQueue, v7);
}

@end