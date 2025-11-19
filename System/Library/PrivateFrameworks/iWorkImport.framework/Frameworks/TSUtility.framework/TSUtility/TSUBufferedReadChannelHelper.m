@interface TSUBufferedReadChannelHelper
- (TSUBufferedReadChannelHelper)init;
- (TSUBufferedReadChannelHelper)initWithBufferedReadChannel:(id)a3;
- (void)readWithHandler:(id)a3;
- (void)readWithHandlerAndWait:(id)a3;
@end

@implementation TSUBufferedReadChannelHelper

- (TSUBufferedReadChannelHelper)initWithBufferedReadChannel:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSUBufferedReadChannelHelper;
  v5 = [(TSUBufferedReadChannelHelper *)&v9 init];
  if (v5)
  {
    if (!v4)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannelHelper initWithBufferedReadChannel:]"];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBufferedReadChannel.m"];
      [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:378 isFatal:0 description:"invalid nil value for '%{public}s'", "bufferedReadChannel"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    objc_storeWeak(&v5->_bufferedReadChannel, v4);
  }

  return v5;
}

- (TSUBufferedReadChannelHelper)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannelHelper init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBufferedReadChannel.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:385 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUBufferedReadChannelHelper init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)readWithHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_bufferedReadChannel);
  [WeakRetained setStreamReadChannelSourceHandler:v4];
}

- (void)readWithHandlerAndWait:(id)a3
{
  v3 = a3;
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d TSUBufferedReadChannel should not call readWithHandlerAndWait on TSUBufferedReadChannelHelper", v4, v5, v6, v7, v8, v9, v10, "[TSUBufferedReadChannelHelper readWithHandlerAndWait:]");
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannelHelper readWithHandlerAndWait:]"];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBufferedReadChannel.m"];
  [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:397 isFatal:1 description:"TSUBufferedReadChannel should not call readWithHandlerAndWait on TSUBufferedReadChannelHelper"];

  TSUCrashBreakpoint(v13);
  abort();
}

@end