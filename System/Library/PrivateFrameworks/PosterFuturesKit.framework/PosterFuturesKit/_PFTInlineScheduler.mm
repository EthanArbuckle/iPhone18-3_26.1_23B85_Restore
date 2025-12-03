@interface _PFTInlineScheduler
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation _PFTInlineScheduler

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v4 = objc_autoreleasePoolPush();
  blockCopy[2]();
  objc_autoreleasePoolPop(v4);
}

- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v5 = objc_alloc_init(PFTInlineSchedulerCancellationToken);
  v6 = objc_autoreleasePoolPush();
  blockCopy[2](blockCopy, v5);
  objc_autoreleasePoolPop(v6);

  return v5;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64___PFTInlineScheduler_afterDelay_performBlock_qualityOfService___block_invoke;
  v18[3] = &unk_279A53170;
  v7 = blockCopy;
  v19 = v7;
  v8 = MEMORY[0x25F8CF560](v18);
  Current = CFAbsoluteTimeGetCurrent();
  v10 = CFRunLoopTimerCreateWithHandler(0, Current + delay, 0.0, 0, 0, v8);
  v11 = CFRunLoopGetCurrent();
  CFRunLoopAddTimer(v11, v10, *MEMORY[0x277CBF048]);
  v12 = v10;
  v13 = objc_alloc_init(PFTInlineSchedulerCancellationToken);
  objc_initWeak(&location, v12);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64___PFTInlineScheduler_afterDelay_performBlock_qualityOfService___block_invoke_2;
  v15[3] = &unk_279A52D78;
  objc_copyWeak(&v16, &location);
  [(PFTCancellationToken *)v13 addCancellationBlock:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v13;
}

@end