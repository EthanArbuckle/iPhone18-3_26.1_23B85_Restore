@interface TSUBufferedReadChannelHelper
- (TSUBufferedReadChannelHelper)init;
- (TSUBufferedReadChannelHelper)initWithBufferedReadChannel:(id)channel;
- (void)readWithHandler:(id)handler;
- (void)readWithHandlerAndWait:(id)wait;
@end

@implementation TSUBufferedReadChannelHelper

- (TSUBufferedReadChannelHelper)initWithBufferedReadChannel:(id)channel
{
  channelCopy = channel;
  v9.receiver = self;
  v9.super_class = TSUBufferedReadChannelHelper;
  v5 = [(TSUBufferedReadChannelHelper *)&v9 init];
  if (v5)
  {
    if (!channelCopy)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_10015CF50();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015CF78();
      }

      v6 = [NSString stringWithUTF8String:"[TSUBufferedReadChannelHelper initWithBufferedReadChannel:]"];
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m"];
      [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:378 isFatal:0 description:"invalid nil value for '%{public}s'", "bufferedReadChannel"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    objc_storeWeak(&v5->_bufferedReadChannel, channelCopy);
  }

  return v5;
}

- (TSUBufferedReadChannelHelper)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001CD590);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSUBufferedReadChannelHelper init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m";
    v15 = 1024;
    v16 = 385;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSUBufferedReadChannelHelper init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:385 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSUBufferedReadChannelHelper init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)readWithHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_bufferedReadChannel);
  [WeakRetained setStreamReadChannelSourceHandler:handlerCopy];
}

- (void)readWithHandlerAndWait:(id)wait
{
  waitCopy = wait;
  v4 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001CD5B0);
  }

  v5 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v17 = v4;
    v18 = 2082;
    v19 = "[TSUBufferedReadChannelHelper readWithHandlerAndWait:]";
    v20 = 2082;
    v21 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m";
    v22 = 1024;
    v23 = 397;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d TSUBufferedReadChannel should not call readWithHandlerAndWait on TSUBufferedReadChannelHelper", buf, 0x22u);
  }

  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d TSUBufferedReadChannel should not call readWithHandlerAndWait on TSUBufferedReadChannelHelper", v6, v7, v8, v9, v10, v11, v12, "[TSUBufferedReadChannelHelper readWithHandlerAndWait:]");
  v13 = [NSString stringWithUTF8String:"[TSUBufferedReadChannelHelper readWithHandlerAndWait:]"];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m"];
  [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:397 isFatal:1 description:"TSUBufferedReadChannel should not call readWithHandlerAndWait on TSUBufferedReadChannelHelper"];

  TSUCrashBreakpoint(v15);
  abort();
}

@end