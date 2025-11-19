@interface TSUURLTrackerLogContext
- (TSUURLTrackerLogContext)init;
- (TSUURLTrackerLogContext)initWithURLTracker:(id)a3;
@end

@implementation TSUURLTrackerLogContext

- (TSUURLTrackerLogContext)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUURLTrackerLogContext init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUURLTracker.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:1115 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUURLTrackerLogContext init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSUURLTrackerLogContext)initWithURLTracker:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TSUURLTrackerLogContext;
  v5 = [(TSUURLTrackerLogContext *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    if (v4)
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
    }

    else
    {
      v8 = @"Nil";
    }

    v9 = [v6 initWithFormat:@"<%@:%p>", v8, v4];
    publicString = v5->_publicString;
    v5->_publicString = v9;

    if (v4)
    {
    }
  }

  return v5;
}

@end