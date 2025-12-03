@interface _PFTMainThreadScheduler
- (_PFTMainThreadScheduler)init;
- (double)timestamp;
- (id)afterDelay:(double)delay performBlock:(id)block;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancellableBlock:(id)block;
- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service;
- (id)schedulerForImmediateExecution;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation _PFTMainThreadScheduler

- (id)schedulerForImmediateExecution
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(_PFTMainThreadScheduler *)self inlineScheduler];
  }

  else
  {
    [(_PFTMainThreadScheduler *)self jumpToMainScheduler];
  }
  v3 = ;

  return v3;
}

- (_PFTMainThreadScheduler)init
{
  v11.receiver = self;
  v11.super_class = _PFTMainThreadScheduler;
  v2 = [(_PFTMainThreadScheduler *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(_PFTInlineScheduler);
    inlineScheduler = v2->_inlineScheduler;
    v2->_inlineScheduler = v3;

    v5 = +[_PFTJumpToMainRunLoopScheduler isAvailable];
    v6 = off_279A52950;
    if (v5)
    {
      v6 = off_279A52958;
    }

    v7 = objc_alloc_init(*v6);
    jumpToMainScheduler = v2->_jumpToMainScheduler;
    v2->_jumpToMainScheduler = v7;

    v9 = v2;
  }

  return v2;
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  schedulerForImmediateExecution = [(_PFTMainThreadScheduler *)self schedulerForImmediateExecution];
  [schedulerForImmediateExecution performBlock:blockCopy];
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  schedulerForImmediateExecution = [(_PFTMainThreadScheduler *)self schedulerForImmediateExecution];
  [schedulerForImmediateExecution performBlock:blockCopy qualityOfService:service];
}

- (id)performCancellableBlock:(id)block
{
  blockCopy = block;
  schedulerForImmediateExecution = [(_PFTMainThreadScheduler *)self schedulerForImmediateExecution];
  v6 = [schedulerForImmediateExecution performCancellableBlock:blockCopy];

  return v6;
}

- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  schedulerForImmediateExecution = [(_PFTMainThreadScheduler *)self schedulerForImmediateExecution];
  v8 = [schedulerForImmediateExecution performCancellableBlock:blockCopy qualityOfService:service];

  return v8;
}

- (id)afterDelay:(double)delay performBlock:(id)block
{
  blockCopy = block;
  schedulerForDelayedExecution = [(_PFTMainThreadScheduler *)self schedulerForDelayedExecution];
  v8 = [schedulerForDelayedExecution afterDelay:blockCopy performBlock:delay];

  return v8;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  schedulerForDelayedExecution = [(_PFTMainThreadScheduler *)self schedulerForDelayedExecution];
  v10 = [schedulerForDelayedExecution afterDelay:blockCopy performBlock:service qualityOfService:delay];

  return v10;
}

- (double)timestamp
{
  schedulerForImmediateExecution = [(_PFTMainThreadScheduler *)self schedulerForImmediateExecution];
  [schedulerForImmediateExecution timestamp];
  v4 = v3;

  return v4;
}

@end