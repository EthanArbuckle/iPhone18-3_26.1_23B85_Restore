@interface TSPComponentWriteChannelAdapter
- (TSPComponentWriteChannelAdapter)initWithChannel:(id)channel handler:(id)handler;
- (void)_close;
- (void)close;
- (void)writeData:(id)data;
@end

@implementation TSPComponentWriteChannelAdapter

- (TSPComponentWriteChannelAdapter)initWithChannel:(id)channel handler:(id)handler
{
  channelCopy = channel;
  handlerCopy = handler;
  if (!channelCopy)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100157970();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100157984();
    }

    v15 = [NSString stringWithUTF8String:"[TSPComponentWriteChannelAdapter initWithChannel:handler:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/NSData_TSPersistence.mm"];
    [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:254 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "channel"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v8 = 0;
    goto LABEL_9;
  }

  v18.receiver = self;
  v18.super_class = TSPComponentWriteChannelAdapter;
  v8 = [(TSPComponentWriteChannelAdapter *)&v18 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("TSPComponentWriteChannelAdapter.Write", v9);
    v11 = *(v8 + 1);
    *(v8 + 1) = v10;

    dispatch_queue_set_specific(*(v8 + 1), off_1001E9368, off_1001E9368, 0);
    v12 = objc_retainBlock(handlerCopy);
    v13 = *(v8 + 3);
    *(v8 + 3) = v12;

    v14 = channelCopy;
    self = *(v8 + 2);
    *(v8 + 2) = v14;
LABEL_9:
  }

  return v8;
}

- (void)writeData:(id)data
{
  dataCopy = data;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004DB80;
  v7[3] = &unk_1001C52C8;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(queue, v7);
}

- (void)close
{
  v3 = off_1001E9368;
  if (dispatch_get_specific(off_1001E9368) == v3)
  {

    [(TSPComponentWriteChannelAdapter *)self _close];
  }

  else
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004DEC0;
    block[3] = &unk_1001C5710;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

- (void)_close
{
  error = self->_error;
  (*(self->_handler + 2))();
  [(TSUFileIOChannel *)self->_channel close];
  channel = self->_channel;
  self->_channel = 0;
}

@end