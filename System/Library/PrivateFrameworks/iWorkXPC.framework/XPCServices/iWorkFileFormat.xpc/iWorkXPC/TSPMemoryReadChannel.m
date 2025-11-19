@interface TSPMemoryReadChannel
- (BOOL)isValid;
- (TSPMemoryReadChannel)init;
- (TSPMemoryReadChannel)initWithDispatchData:(id)a3;
- (TSPMemoryReadChannel)initWithNSData:(id)a3;
- (void)_close;
- (void)close;
- (void)readFromOffset:(int64_t)a3 length:(unint64_t)a4 handler:(id)a5;
- (void)readWithHandler:(id)a3;
@end

@implementation TSPMemoryReadChannel

- (TSPMemoryReadChannel)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C59C8);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSPMemoryReadChannel init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPMemoryReadChannel.m";
    v15 = 1024;
    v16 = 19;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSPMemoryReadChannel init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPMemoryReadChannel.m"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:19 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSPMemoryReadChannel init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPMemoryReadChannel)initWithDispatchData:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = TSPMemoryReadChannel;
  v6 = [(TSPMemoryReadChannel *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchData, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("TSPMemoryReadChannel.Read", v8);
    readQueue = v7->_readQueue;
    v7->_readQueue = v9;

    dispatch_queue_set_specific(v7->_readQueue, off_1001E8840, off_1001E8840, 0);
  }

  return v7;
}

- (TSPMemoryReadChannel)initWithNSData:(id)a3
{
  v4 = [a3 tsp_dispatchData];
  v5 = [(TSPMemoryReadChannel *)self initWithDispatchData:v4];

  return v5;
}

- (void)readFromOffset:(int64_t)a3 length:(unint64_t)a4 handler:(id)a5
{
  v8 = a5;
  readQueue = self->_readQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000C800;
  v11[3] = &unk_1001C59F0;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(readQueue, v11);
}

- (void)readWithHandler:(id)a3
{
  v4 = a3;
  readQueue = self->_readQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C94C;
  v7[3] = &unk_1001C5A18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(readQueue, v7);
}

- (BOOL)isValid
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  readQueue = self->_readQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000CA24;
  v5[3] = &unk_1001C5A40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(readQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)close
{
  v3 = off_1001E8840;
  if (dispatch_get_specific(off_1001E8840) == v3)
  {

    [(TSPMemoryReadChannel *)self _close];
  }

  else
  {
    readQueue = self->_readQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000CAF8;
    block[3] = &unk_1001C5A68;
    block[4] = self;
    dispatch_sync(readQueue, block);
  }
}

- (void)_close
{
  dispatchData = self->_dispatchData;
  self->_dispatchData = 0;
  _objc_release_x1();
}

@end