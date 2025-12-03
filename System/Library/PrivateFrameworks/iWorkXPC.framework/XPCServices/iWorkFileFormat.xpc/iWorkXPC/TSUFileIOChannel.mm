@interface TSUFileIOChannel
- (BOOL)isValid;
- (TSUFileIOChannel)initWithType:(unint64_t)type descriptor:(int)descriptor cleanupHandler:(id)handler;
- (void)addBarrier:(id)barrier;
- (void)close;
- (void)dealloc;
- (void)flushWithCompletion:(id)completion;
- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler;
- (void)setLowWater:(unint64_t)water;
- (void)truncateToLength:(int64_t)length completion:(id)completion;
- (void)writeData:(id)data offset:(int64_t)offset handler:(id)handler;
@end

@implementation TSUFileIOChannel

- (TSUFileIOChannel)initWithType:(unint64_t)type descriptor:(int)descriptor cleanupHandler:(id)handler
{
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = TSUFileIOChannel;
  v9 = [(TSUFileIOChannel *)&v21 init];
  if (v9)
  {
    v10 = v9;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("TSUFileIOChannel.IO", v11);
    ioQueue = v10->_ioQueue;
    v10->_ioQueue = v12;

    v14 = v10->_ioQueue;
    cleanup_handler[0] = _NSConcreteStackBlock;
    cleanup_handler[1] = 3221225472;
    cleanup_handler[2] = sub_1000A1600;
    cleanup_handler[3] = &unk_1001CE0E0;
    v20 = handlerCopy;
    v15 = dispatch_io_create(type, descriptor, v14, cleanup_handler);
    channel = v10->_channel;
    v10->_channel = v15;

    if (!v10->_channel)
    {

      v10 = 0;
    }

    v17 = v10;
  }

  else
  {
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 12);
    }

    v17 = 0;
  }

  return v17;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_isClosed);
  if ((v3 & 1) == 0)
  {
    channel = self->_channel;
    if (channel)
    {
      dispatch_io_close(channel, 0);
    }
  }

  v5.receiver = self;
  v5.super_class = TSUFileIOChannel;
  [(TSUFileIOChannel *)&v5 dealloc];
}

- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  v9 = atomic_load(&self->_isClosed);
  if (v9)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015F7B4();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015F7C8();
    }

    v10 = [NSString stringWithUTF8String:"[TSUFileIOChannel readFromOffset:length:handler:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:217 isFatal:0 description:"Channel is closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  p_ioQueue = &self->_ioQueue;
  ioQueue = self->_ioQueue;
  v13 = p_ioQueue[1];
  io_handler[0] = _NSConcreteStackBlock;
  io_handler[1] = 3221225472;
  io_handler[2] = sub_1000A1930;
  io_handler[3] = &unk_1001CE128;
  v17 = handlerCopy;
  v15 = handlerCopy;
  dispatch_io_read(v13, offset, length, ioQueue, io_handler);
}

- (void)writeData:(id)data offset:(int64_t)offset handler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v10 = atomic_load(&self->_isClosed);
  if (v10)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015F850();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015F864();
    }

    v11 = [NSString stringWithUTF8String:"[TSUFileIOChannel writeData:offset:handler:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:239 isFatal:0 description:"Channel is closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (!dataCopy)
  {
    dataCopy = &_dispatch_data_empty;
    v13 = &_dispatch_data_empty;
  }

  size = dispatch_data_get_size(dataCopy);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  p_ioQueue = &self->_ioQueue;
  ioQueue = self->_ioQueue;
  v16 = p_ioQueue[1];
  io_handler[0] = _NSConcreteStackBlock;
  io_handler[1] = 3221225472;
  io_handler[2] = sub_1000A1C28;
  io_handler[3] = &unk_1001CE170;
  v21 = v23;
  v22 = size;
  v20 = handlerCopy;
  v18 = handlerCopy;
  dispatch_io_write(v16, offset, dataCopy, ioQueue, io_handler);

  _Block_object_dispose(v23, 8);
}

- (void)close
{
  if ((atomic_exchange(&self->_isClosed, 1u) & 1) == 0)
  {
    if (self->_channel)
    {
      goto LABEL_14;
    }

    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015F8EC();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015F900();
    }

    v3 = [NSString stringWithUTF8String:"[TSUFileIOChannel close]"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:263 isFatal:0 description:"invalid nil value for '%{public}s'", "_channel"];

    +[TSUAssertionHandler logBacktraceThrottled];
    if (self->_channel)
    {
LABEL_14:
      if (+[TSUFileIOChannel shouldFullFsyncOnClose])
      {
        if ((self->_oflag & 3) != 0)
        {
          v5 = dispatch_semaphore_create(0);
          channel = self->_channel;
          barrier[0] = _NSConcreteStackBlock;
          barrier[1] = 3221225472;
          barrier[2] = sub_1000A1F20;
          barrier[3] = &unk_1001C9338;
          barrier[4] = self;
          v7 = v5;
          v9 = v7;
          dispatch_io_barrier(channel, barrier);
          dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      dispatch_io_close(self->_channel, 0);
    }
  }
}

- (void)setLowWater:(unint64_t)water
{
  v5 = atomic_load(&self->_isClosed);
  if (v5)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015FB54();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015FB68();
    }

    v6 = [NSString stringWithUTF8String:"[TSUFileIOChannel setLowWater:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:295 isFatal:0 description:"Channel is closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  dispatch_io_set_low_water(self->_channel, water);
}

- (void)addBarrier:(id)barrier
{
  barrierCopy = barrier;
  v5 = atomic_load(&self->_isClosed);
  if (v5)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015FBF0();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015FC04();
    }

    v6 = [NSString stringWithUTF8String:"[TSUFileIOChannel addBarrier:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:301 isFatal:0 description:"Channel is closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  dispatch_io_barrier(self->_channel, barrierCopy);
}

- (void)flushWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = atomic_load(&self->_isClosed);
  if (v5)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015FC8C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015FCA0();
    }

    v6 = [NSString stringWithUTF8String:"[TSUFileIOChannel flushWithCompletion:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:307 isFatal:0 description:"Channel is closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  channel = self->_channel;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A25BC;
  v10[3] = &unk_1001C5A18;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_io_barrier(channel, v10);
}

- (void)truncateToLength:(int64_t)length completion:(id)completion
{
  completionCopy = completion;
  v7 = atomic_load(&self->_isClosed);
  if (v7)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015FDC4();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015FDD8();
    }

    v8 = [NSString stringWithUTF8String:"[TSUFileIOChannel truncateToLength:completion:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:325 isFatal:0 description:"Channel is closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  channel = self->_channel;
  barrier[0] = _NSConcreteStackBlock;
  barrier[1] = 3221225472;
  barrier[2] = sub_1000A2924;
  barrier[3] = &unk_1001CE2B8;
  v13 = completionCopy;
  lengthCopy = length;
  barrier[4] = self;
  v11 = completionCopy;
  dispatch_io_barrier(channel, barrier);
}

- (BOOL)isValid
{
  v4 = atomic_load(&self->_isClosed);
  if (v4)
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  descriptor = dispatch_io_get_descriptor(self->_channel);
  v7 = 0;
  return read(descriptor, &v7, 0) == 0;
}

@end