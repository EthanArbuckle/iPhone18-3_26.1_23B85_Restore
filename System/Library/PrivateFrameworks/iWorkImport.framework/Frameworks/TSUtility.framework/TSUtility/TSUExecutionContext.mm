@interface TSUExecutionContext
+ (TSUExecutionContext)sharedContext;
+ (void)beginApplicationContext;
+ (void)beginApplicationExtensionContext;
+ (void)performWithApplication:(id)application;
- (BOOL)isApplicationContext;
- (BOOL)isUILayoutRTL;
- (UIApplication)application;
- (void)performWithApplication:(id)application;
@end

@implementation TSUExecutionContext

+ (void)beginApplicationContext
{
  if (qword_280A63D78)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUExecutionContext beginApplicationContext]"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUExecutionContext.m"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:121 isFatal:0 description:"Setting sharedContext after it has already been set"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v5 = objc_alloc_init(TSUApplicationExecutionContext);
  [self setSharedContext:v5];
}

+ (void)beginApplicationExtensionContext
{
  v3 = objc_alloc_init(TSUApplicationExtensionExecutionContext);
  [self setSharedContext:v3];
}

+ (TSUExecutionContext)sharedContext
{
  if (qword_280A63D80 != -1)
  {
    sub_27711453C();
  }

  v2 = qword_280A63D78;
  if (!qword_280A63D78)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUExecutionContext sharedContext]"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUExecutionContext.m"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:145 isFatal:0 description:"invalid nil value for '%{public}s'", "_sharedContext"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v2 = qword_280A63D78;
  }

  return v2;
}

- (UIApplication)application
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUExecutionContext application]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUExecutionContext.m"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:154 isFatal:0 description:"Abstract method not overridden by %{public}@", v5];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"Abstract method not overridden by %@: %s", v10, "-[TSUExecutionContext application]"];
  v12 = [v6 exceptionWithName:v7 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

- (BOOL)isApplicationContext
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUExecutionContext isApplicationContext]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUExecutionContext.m"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:158 isFatal:0 description:"Abstract method not overridden by %{public}@", v5];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"Abstract method not overridden by %@: %s", v10, "-[TSUExecutionContext isApplicationContext]"];
  v12 = [v6 exceptionWithName:v7 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

- (void)performWithApplication:(id)application
{
  applicationCopy = application;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUExecutionContext performWithApplication:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUExecutionContext.m"];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:162 isFatal:0 description:"Abstract method not overridden by %{public}@", v7];

  +[TSUAssertionHandler logBacktraceThrottled];
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"Abstract method not overridden by %@: %s", v12, "-[TSUExecutionContext performWithApplication:]"];
  v14 = [v8 exceptionWithName:v9 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

+ (void)performWithApplication:(id)application
{
  applicationCopy = application;
  sharedContext = [self sharedContext];
  [sharedContext performWithApplication:applicationCopy];
}

- (BOOL)isUILayoutRTL
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUExecutionContext isUILayoutRTL]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUExecutionContext.m"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:172 isFatal:0 description:"Abstract method not overridden by %{public}@", v5];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"Abstract method not overridden by %@: %s", v10, "-[TSUExecutionContext isUILayoutRTL]"];
  v12 = [v6 exceptionWithName:v7 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

@end