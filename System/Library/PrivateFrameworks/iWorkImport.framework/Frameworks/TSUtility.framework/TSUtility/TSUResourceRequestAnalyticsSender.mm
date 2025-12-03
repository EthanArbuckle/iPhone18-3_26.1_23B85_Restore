@interface TSUResourceRequestAnalyticsSender
+ (id)sharedInstanceQueue;
+ (void)sendAnalyticsForResourceRequest:(id)request error:(id)error;
+ (void)setSharedAnalyticsSender:(id)sender;
- (void)sendAnalyticsForResourceRequest:(id)request error:(id)error;
@end

@implementation TSUResourceRequestAnalyticsSender

+ (void)sendAnalyticsForResourceRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  sharedInstanceQueue = [self sharedInstanceQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_27709B5F8;
  v11[3] = &unk_27A702450;
  v12 = requestCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = requestCopy;
  dispatch_async(sharedInstanceQueue, v11);
}

+ (void)setSharedAnalyticsSender:(id)sender
{
  senderCopy = sender;
  sharedInstanceQueue = [self sharedInstanceQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27709B6B8;
  block[3] = &unk_27A7023D8;
  v8 = senderCopy;
  v6 = senderCopy;
  dispatch_async(sharedInstanceQueue, block);
}

- (void)sendAnalyticsForResourceRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUResourceRequestAnalyticsSender sendAnalyticsForResourceRequest:error:]"];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUResourceRequestAnalyticsSender.m"];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:32 isFatal:0 description:"Abstract method not overridden by %{public}@", v10];

  +[TSUAssertionHandler logBacktraceThrottled];
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [v13 stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "-[TSUResourceRequestAnalyticsSender sendAnalyticsForResourceRequest:error:]"];
  v17 = [v11 exceptionWithName:v12 reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

+ (id)sharedInstanceQueue
{
  if (qword_280A63CE0 != -1)
  {
    sub_277114020();
  }

  v3 = qword_280A63CD8;

  return v3;
}

@end