@interface TSPCGDataConsumer
+ (CGDataConsumer)newCGDataConsumerForWriteChannel:(id)a3;
- (TSPCGDataConsumer)init;
- (TSPCGDataConsumer)initWithWriteChannel:(id)a3;
- (unint64_t)putBytes:(const void *)a3 count:(unint64_t)a4;
- (void)_close;
- (void)close;
@end

@implementation TSPCGDataConsumer

+ (CGDataConsumer)newCGDataConsumerForWriteChannel:(id)a3
{
  v3 = a3;
  v4 = [[TSPCGDataConsumer alloc] initWithWriteChannel:v3];
  v5 = v4;
  if (v4)
  {
    v6 = CGDataConsumerCreate(v4, &off_1001C6D88);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (TSPCGDataConsumer)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C6D98);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSPCGDataConsumer init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCGDataConsumer.mm";
    v15 = 1024;
    v16 = 39;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSPCGDataConsumer init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCGDataConsumer.mm"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:39 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSPCGDataConsumer init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPCGDataConsumer)initWithWriteChannel:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TSPCGDataConsumer;
  v6 = [(TSPCGDataConsumer *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("TSPCGDataConsumer.Write", v7);
    v9 = *(v6 + 1);
    *(v6 + 1) = v8;

    dispatch_queue_set_specific(*(v6 + 1), off_1001E8D30, off_1001E8D30, 0);
    objc_storeStrong(v6 + 2, a3);
  }

  return v6;
}

- (unint64_t)putBytes:(const void *)a3 count:(unint64_t)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  writeQueue = self->_writeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002473C;
  block[3] = &unk_1001C6DE8;
  block[4] = self;
  block[5] = &v12;
  block[7] = a3;
  block[8] = a4;
  block[6] = &v8;
  dispatch_sync(writeQueue, block);
  v5 = 0;
  if (*(v13 + 24) == 1)
  {
    v5 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

- (void)close
{
  v3 = off_1001E8D30;
  if (dispatch_get_specific(off_1001E8D30) == v3)
  {

    [(TSPCGDataConsumer *)self _close];
  }

  else
  {
    writeQueue = self->_writeQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000249F0;
    block[3] = &unk_1001C5710;
    block[4] = self;
    dispatch_sync(writeQueue, block);
  }
}

- (void)_close
{
  [(TSUStreamWriteChannel *)self->_writeChannel close];
  if (self->_error)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_100153DAC();
    }

    v3 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      error = self->_error;
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [(NSError *)self->_error domain];
      v8 = [(NSError *)self->_error code];
      v9 = self->_error;
      v10 = 138544130;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v14 = 2048;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to write bytes. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", &v10, 0x2Au);
    }
  }
}

@end