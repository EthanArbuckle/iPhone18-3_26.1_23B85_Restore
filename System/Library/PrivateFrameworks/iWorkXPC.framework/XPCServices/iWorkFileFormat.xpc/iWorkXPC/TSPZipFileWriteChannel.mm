@interface TSPZipFileWriteChannel
- (TSPZipFileWriteChannel)init;
- (TSPZipFileWriteChannel)initWithArchiveWriter:(id)a3;
- (void)flushWithCompletion:(id)a3;
- (void)writeData:(id)a3 handler:(id)a4;
@end

@implementation TSPZipFileWriteChannel

- (TSPZipFileWriteChannel)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C6D00);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 67110146;
    v16 = v2;
    v17 = 2082;
    v18 = "[TSPZipFileWriteChannel init]";
    v19 = 2082;
    v20 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPZipFileWriteChannel.mm";
    v21 = 1024;
    v22 = 20;
    v23 = 2114;
    v24 = v5;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v6 = [NSString stringWithUTF8String:"[TSPZipFileWriteChannel init]"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPZipFileWriteChannel.mm"];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:20 isFatal:0 description:"Abstract method not overridden by %{public}@", v9];

  +[TSUAssertionHandler logBacktraceThrottled];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v11, "[TSPZipFileWriteChannel init]"];
  v13 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPZipFileWriteChannel)initWithArchiveWriter:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = TSPZipFileWriteChannel;
  v6 = [(TSPZipFileWriteChannel *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archiveWriter, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("TSPZipFileWriteChannel.Writer", v8);
    writerQueue = v7->_writerQueue;
    v7->_writerQueue = v9;
  }

  return v7;
}

- (void)writeData:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = atomic_load(&self->_isClosed);
  if (v8)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100153C5C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100153C70();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Channel is closed", v13, v14, v15, v16, v17, v18, v19, "[TSPZipFileWriteChannel writeData:handler:]");
    v20 = [NSString stringWithUTF8String:"[TSPZipFileWriteChannel writeData:handler:]"];
    v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPZipFileWriteChannel.mm"];
    [TSUAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:40 isFatal:1 description:"Channel is closed"];

    TSUCrashBreakpoint();
    abort();
  }

  if (v6)
  {
    size = dispatch_data_get_size(v6);
  }

  else
  {
    size = 0;
  }

  archiveWriter = self->_archiveWriter;
  writerQueue = self->_writerQueue;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100023F80;
  v22[3] = &unk_1001C6D28;
  v12 = v7;
  v23 = v12;
  v24 = size;
  [(TSUZipWriter *)archiveWriter addData:v6 queue:writerQueue completion:v22];
}

- (void)flushWithCompletion:(id)a3
{
  v4 = a3;
  +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    sub_100153D04();
  }

  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_100153D18();
  }

  v5 = [NSString stringWithUTF8String:"[TSPZipFileWriteChannel flushWithCompletion:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPZipFileWriteChannel.mm"];
  [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:57 isFatal:0 description:"Flushing ZIP write channel only adds a barrier."];

  +[TSUAssertionHandler logBacktraceThrottled];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002424C;
  v8[3] = &unk_1001C58E0;
  v7 = v4;
  v9 = v7;
  [(TSPZipFileWriteChannel *)self addBarrier:v8];
}

@end