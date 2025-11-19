@interface TSUProgressContextProgress
- (TSUProgressContextProgress)initWithProgressContext:(id)a3;
- (double)value;
- (id)addProgressObserverWithValueInterval:(double)a3 queue:(id)a4 handler:(id)a5;
- (id)initForSubclass;
- (void)p_progressDidChange:(id)a3;
- (void)p_updateProgressContextObserver;
- (void)removeProgressObserver:(id)a3;
@end

@implementation TSUProgressContextProgress

- (TSUProgressContextProgress)initWithProgressContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TSUProgressContextProgress;
  v6 = [(TSUProgress *)&v11 initForSubclass];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 5, a3);
    v8 = dispatch_queue_create("com.apple.tangier.TSUProgressContextProgress", 0);
    progressContextObserverQueue = v7->_progressContextObserverQueue;
    v7->_progressContextObserverQueue = v8;
  }

  return v7;
}

- (id)initForSubclass
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUProgressContextProgress initForSubclass]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUProgress.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:559 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUProgressContextProgress initForSubclass]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (double)value
{
  progressContext = self->_progressContext;
  if (!progressContext)
  {
    return 0.0;
  }

  [(TSUProgressContext *)progressContext overallProgress];
  return result;
}

- (id)addProgressObserverWithValueInterval:(double)a3 queue:(id)a4 handler:(id)a5
{
  v8.receiver = self;
  v8.super_class = TSUProgressContextProgress;
  v6 = [(TSUProgress *)&v8 addProgressObserverWithValueInterval:a4 queue:a5 handler:a3];
  [(TSUProgressContextProgress *)self p_updateProgressContextObserver];

  return v6;
}

- (void)removeProgressObserver:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSUProgressContextProgress;
  [(TSUProgress *)&v4 removeProgressObserver:a3];
  [(TSUProgressContextProgress *)self p_updateProgressContextObserver];
}

- (void)p_updateProgressContextObserver
{
  progressContextObserverQueue = self->_progressContextObserverQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770941C8;
  block[3] = &unk_27A7023D8;
  block[4] = self;
  dispatch_async(progressContextObserverQueue, block);
}

- (void)p_progressDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"TSUProgressMessage"];

  if (v5)
  {
    [(TSUProgress *)self setMessage:v5];
  }

  [(TSUProgress *)self protected_progressDidChange];
}

@end