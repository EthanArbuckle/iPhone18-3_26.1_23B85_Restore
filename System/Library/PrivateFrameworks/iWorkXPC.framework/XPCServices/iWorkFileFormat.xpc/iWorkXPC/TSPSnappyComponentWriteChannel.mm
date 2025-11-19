@interface TSPSnappyComponentWriteChannel
- (TSPSnappyComponentWriteChannel)initWithWriteChannel:(id)a3;
- (void)close;
- (void)dealloc;
- (void)writeBlock;
- (void)writeData:(id)a3;
@end

@implementation TSPSnappyComponentWriteChannel

- (TSPSnappyComponentWriteChannel)initWithWriteChannel:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TSPSnappyComponentWriteChannel;
  v6 = [(TSPSnappyComponentWriteChannel *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("TSPSnappyComponentWriteChannel.Write", v7);
    writeQueue = v6->_writeQueue;
    v6->_writeQueue = v8;

    objc_storeStrong(&v6->_writeChannel, a3);
  }

  return v6;
}

- (void)dealloc
{
  if (self->_writeChannel)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100154940();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100154954();
    }

    v3 = [NSString stringWithUTF8String:"[TSPSnappyComponentWriteChannel dealloc]"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPSnappyComponentWriteChannel.mm"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:32 isFatal:0 description:"Didn't close"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v5.receiver = self;
  v5.super_class = TSPSnappyComponentWriteChannel;
  [(TSPSnappyComponentWriteChannel *)&v5 dealloc];
}

- (void)writeData:(id)a3
{
  v4 = a3;
  writeQueue = self->_writeQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B978;
  v7[3] = &unk_1001C52C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(writeQueue, v7);
}

- (void)writeBlock
{
  v3 = &self->_uncompressedBuffer[65520];
  v4 = snappy::MaxCompressedLength(self->_uncompressedLength);
  v5 = malloc_type_malloc(v4 + 4, 0x100004077774924uLL);
  v6 = *(v3 + 2);
  v8[0] = off_1001D34A8;
  v8[1] = self->_uncompressedBuffer;
  v8[2] = v6;
  v7[0] = off_1001D34F8;
  v7[1] = v5 + 4;
  snappy::Compress(v8, v7);
}

- (void)close
{
  writeQueue = self->_writeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BF10;
  block[3] = &unk_1001C5710;
  block[4] = self;
  dispatch_sync(writeQueue, block);
}

@end