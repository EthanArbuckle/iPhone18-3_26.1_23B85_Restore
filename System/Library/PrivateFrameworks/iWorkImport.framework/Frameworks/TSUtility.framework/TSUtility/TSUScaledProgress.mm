@interface TSUScaledProgress
- (BOOL)isIndeterminate;
- (TSUProgress)progress;
- (TSUScaledProgress)init;
- (double)value;
- (id)addProgressObserverWithValueInterval:(double)interval queue:(id)queue handler:(id)handler;
- (id)initForSubclass;
- (void)p_addProgressObserverToProgressInQueue;
- (void)p_removeProgressObserverFromProgressInQueue;
- (void)removeProgressObserver:(id)observer;
- (void)setMaxValue:(double)value;
- (void)setProgress:(id)progress;
@end

@implementation TSUScaledProgress

- (TSUScaledProgress)init
{
  v8.receiver = self;
  v8.super_class = TSUScaledProgress;
  initForSubclass = [(TSUProgress *)&v8 initForSubclass];
  if (initForSubclass)
  {
    v3 = objc_alloc_init(TSUScaledProgressStorage);
    storage = initForSubclass->_storage;
    initForSubclass->_storage = v3;

    v5 = dispatch_queue_create("com.apple.tangier.TSUScaledProgress", 0);
    progressQueue = initForSubclass->_progressQueue;
    initForSubclass->_progressQueue = v5;

    [(TSUScaledProgressStorage *)initForSubclass->_storage setMaxValue:1.0];
  }

  return initForSubclass;
}

- (id)initForSubclass
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUScaledProgress initForSubclass]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUProgress.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:297 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUScaledProgress initForSubclass]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSUProgress)progress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_277092D30;
  v10 = sub_277092D40;
  v11 = 0;
  progressQueue = self->_progressQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_277092D48;
  v5[3] = &unk_27A702428;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(progressQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setProgress:(id)progress
{
  progressCopy = progress;
  progressQueue = self->_progressQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_277092E40;
  v7[3] = &unk_27A702450;
  v7[4] = self;
  v8 = progressCopy;
  v6 = progressCopy;
  dispatch_async(progressQueue, v7);
}

- (double)value
{
  progress = [(TSUScaledProgress *)self progress];
  v4 = progress;
  if (progress)
  {
    [progress value];
    v6 = v5;
    [v4 maxValue];
    v8 = v6 / v7;
    [(TSUScaledProgress *)self maxValue];
    v10 = v8 * v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (void)setMaxValue:(double)value
{
  [(TSUScaledProgressStorage *)self->_storage setMaxValue:value];

  [(TSUProgress *)self protected_progressDidChange];
}

- (BOOL)isIndeterminate
{
  progress = [(TSUScaledProgress *)self progress];
  v3 = progress;
  if (progress)
  {
    isIndeterminate = [progress isIndeterminate];
  }

  else
  {
    isIndeterminate = 1;
  }

  return isIndeterminate;
}

- (id)addProgressObserverWithValueInterval:(double)interval queue:(id)queue handler:(id)handler
{
  v10.receiver = self;
  v10.super_class = TSUScaledProgress;
  v6 = [(TSUProgress *)&v10 addProgressObserverWithValueInterval:queue queue:handler handler:interval];
  progressQueue = self->_progressQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_277093080;
  block[3] = &unk_27A7023D8;
  block[4] = self;
  dispatch_async(progressQueue, block);

  return v6;
}

- (void)removeProgressObserver:(id)observer
{
  v6.receiver = self;
  v6.super_class = TSUScaledProgress;
  [(TSUProgress *)&v6 removeProgressObserver:observer];
  progressQueue = self->_progressQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27709316C;
  block[3] = &unk_27A7023D8;
  block[4] = self;
  dispatch_async(progressQueue, block);
}

- (void)p_addProgressObserverToProgressInQueue
{
  v3 = self->_progressQueue;
  if (v3 != MEMORY[0x277D85CD0] || ([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    dispatch_assert_queue_V2(v3);
  }

  if (self->_progress)
  {
    [(TSUProgress *)self protected_minProgressObserverValueInterval];
    v5 = *&v4;
    if (v4 >= 0 && ((v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v4 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      [(TSUProgress *)self->_progress maxValue];
      v9 = v8;
      [(TSUScaledProgress *)self maxValue];
      v11 = v5 * (v9 / v10);
      objc_initWeak(&location, self);
      progress = self->_progress;
      progressQueue = self->_progressQueue;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_277093354;
      v16[3] = &unk_27A7025A8;
      objc_copyWeak(&v17, &location);
      v14 = [(TSUProgress *)progress addProgressObserverWithValueInterval:progressQueue queue:v16 handler:v11];
      progressObserver = self->_progressObserver;
      self->_progressObserver = v14;

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

- (void)p_removeProgressObserverFromProgressInQueue
{
  v3 = self->_progressQueue;
  if (v3 != MEMORY[0x277D85CD0] || ([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    dispatch_assert_queue_V2(v3);
  }

  if (self->_progressObserver)
  {
    [(TSUProgress *)self->_progress removeProgressObserver:?];
    progressObserver = self->_progressObserver;
    self->_progressObserver = 0;
  }
}

@end