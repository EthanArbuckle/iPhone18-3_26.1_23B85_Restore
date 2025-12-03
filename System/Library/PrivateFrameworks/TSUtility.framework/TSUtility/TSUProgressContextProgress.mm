@interface TSUProgressContextProgress
- (TSUProgressContextProgress)initWithProgressContext:(id)context;
- (double)value;
- (id)addProgressObserverWithValueInterval:(double)interval queue:(id)queue handler:(id)handler;
- (void)dealloc;
- (void)p_progressDidChange:(id)change;
- (void)p_updateProgressContextObserver;
- (void)removeProgressObserver:(id)observer;
@end

@implementation TSUProgressContextProgress

- (TSUProgressContextProgress)initWithProgressContext:(id)context
{
  v6.receiver = self;
  v6.super_class = TSUProgressContextProgress;
  v4 = [(TSUProgress *)&v6 init];
  if (v4)
  {
    v4->mProgressContext = context;
    v4->mProgressContextObserverQueue = dispatch_queue_create("com.apple.iWork.TSUProgressContextProgress", 0);
  }

  return v4;
}

- (void)dealloc
{
  mProgressContextObserverQueue = self->mProgressContextObserverQueue;
  if (mProgressContextObserverQueue)
  {
    dispatch_release(mProgressContextObserverQueue);
  }

  v4.receiver = self;
  v4.super_class = TSUProgressContextProgress;
  [(TSUProgress *)&v4 dealloc];
}

- (double)value
{
  mProgressContext = self->mProgressContext;
  if (!mProgressContext)
  {
    return 0.0;
  }

  [(TSUProgressContext *)mProgressContext overallProgress];
  return result;
}

- (id)addProgressObserverWithValueInterval:(double)interval queue:(id)queue handler:(id)handler
{
  v8.receiver = self;
  v8.super_class = TSUProgressContextProgress;
  v6 = [(TSUProgress *)&v8 addProgressObserverWithValueInterval:queue queue:handler handler:interval];
  [(TSUProgressContextProgress *)self p_updateProgressContextObserver];
  return v6;
}

- (void)removeProgressObserver:(id)observer
{
  v4.receiver = self;
  v4.super_class = TSUProgressContextProgress;
  [(TSUProgress *)&v4 removeProgressObserver:observer];
  [(TSUProgressContextProgress *)self p_updateProgressContextObserver];
}

- (void)p_updateProgressContextObserver
{
  mProgressContextObserverQueue = self->mProgressContextObserverQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__TSUProgressContextProgress_p_updateProgressContextObserver__block_invoke;
  block[3] = &unk_279D65CF0;
  block[4] = self;
  dispatch_async(mProgressContextObserverQueue, block);
}

uint64_t __61__TSUProgressContextProgress_p_updateProgressContextObserver__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v3 = [*(a1 + 32) protected_hasProgressObservers];
  v4 = *(a1 + 32);
  if ((*(v4 + 48) & 1) != 0 || !v3)
  {
    if (!(v3 & 1 | ((*(v4 + 48) & 1) == 0)))
    {
      [*(v4 + 32) removeProgressObserver:?];
    }
  }

  else
  {
    [*(v4 + 32) addProgressObserver:v4 selector:sel_p_progressDidChange_];
    *(*(a1 + 32) + 48) = 1;
  }

  return [v2 drain];
}

- (void)p_progressDidChange:(id)change
{
  v4 = [objc_msgSend(change "userInfo")];
  if (v4)
  {
    [(TSUProgress *)self setMessage:v4];
  }

  [(TSUProgress *)self protected_progressDidChange];
}

@end