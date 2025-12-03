@interface PFTCoalescingSchedulerDecorator
- (PFTCoalescingSchedulerDecorator)initWithScheduler:(id)scheduler coalescingWindow:(double)window;
- (double)timestamp;
- (id)afterDelay:(double)delay performBlock:(id)block;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service;
- (unint64_t)getAndIncrementState;
- (void)flushDelayedBlock;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
- (void)removeDelayedBlock:(id)block;
@end

@implementation PFTCoalescingSchedulerDecorator

- (PFTCoalescingSchedulerDecorator)initWithScheduler:(id)scheduler coalescingWindow:(double)window
{
  schedulerCopy = scheduler;
  v14.receiver = self;
  v14.super_class = PFTCoalescingSchedulerDecorator;
  v8 = [(PFTCoalescingSchedulerDecorator *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scheduler, scheduler);
    v9->_coalescingWindow = window;
    v9->_state = 0;
    v10 = objc_alloc_init(PFTStack);
    delayedBlocks = v9->_delayedBlocks;
    v9->_delayedBlocks = v10;

    v12 = v9;
  }

  return v9;
}

- (unint64_t)getAndIncrementState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(PFTCoalescingSchedulerDecorator *)selfCopy state])
  {
    v3 = 1;
  }

  else
  {
    [(PFTCoalescingSchedulerDecorator *)selfCopy setState:1];
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)flushDelayedBlock
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  delayedBlocks = [(PFTCoalescingSchedulerDecorator *)selfCopy delayedBlocks];
  v4 = [delayedBlocks count];

  if (v4)
  {
    delayedBlocks2 = [(PFTCoalescingSchedulerDecorator *)selfCopy delayedBlocks];
    v6 = [delayedBlocks2 pop];

    delayedBlocks3 = [(PFTCoalescingSchedulerDecorator *)selfCopy delayedBlocks];
    popAll = [delayedBlocks3 popAll];

    scheduler = [(PFTCoalescingSchedulerDecorator *)selfCopy scheduler];
    [(PFTCoalescingSchedulerDecorator *)selfCopy coalescingWindow];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__PFTCoalescingSchedulerDecorator_flushDelayedBlock__block_invoke;
    v11[3] = &unk_279A52C60;
    v11[4] = selfCopy;
    v10 = [scheduler afterDelay:v11 performBlock:?];
  }

  else
  {
    [(PFTCoalescingSchedulerDecorator *)selfCopy setState:0];
    v6 = 0;
  }

  objc_sync_exit(selfCopy);

  if (v6)
  {
    v6[2](v6);
  }
}

- (void)removeDelayedBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  delayedBlocks = [(PFTCoalescingSchedulerDecorator *)selfCopy delayedBlocks];
  v6 = MEMORY[0x25F8CF560](blockCopy);
  [delayedBlocks removeObject:v6];

  objc_sync_exit(selfCopy);
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__PFTCoalescingSchedulerDecorator_performBlock___block_invoke;
  v7[3] = &unk_279A52D48;
  v7[4] = self;
  v8 = blockCopy;
  v5 = blockCopy;
  v6 = [(PFTCoalescingSchedulerDecorator *)self performCancellableBlock:v7];
}

void __48__PFTCoalescingSchedulerDecorator_performBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) scheduler];
  [v2 performBlock:*(a1 + 40)];
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__PFTCoalescingSchedulerDecorator_performBlock_qualityOfService___block_invoke;
  v9[3] = &unk_279A53198;
  v9[4] = self;
  v10 = blockCopy;
  serviceCopy = service;
  v7 = blockCopy;
  v8 = [(PFTCoalescingSchedulerDecorator *)self performCancellableBlock:v9];
}

void __65__PFTCoalescingSchedulerDecorator_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) scheduler];
  [v2 performBlock:*(a1 + 40) qualityOfService:*(a1 + 48)];
}

- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v7 = objc_alloc_init(PFTCancellationToken);
  getAndIncrementState = [(PFTCoalescingSchedulerDecorator *)self getAndIncrementState];
  if (getAndIncrementState == 1)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_initWeak(&location, selfCopy);
    objc_initWeak(&from, v7);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __76__PFTCoalescingSchedulerDecorator_performCancellableBlock_qualityOfService___block_invoke_2;
    v21[3] = &unk_279A531C0;
    objc_copyWeak(&v23, &location);
    objc_copyWeak(v24, &from);
    v22 = blockCopy;
    v24[1] = service;
    v13 = [v21 copy];
    delayedBlocks = [(PFTCoalescingSchedulerDecorator *)selfCopy delayedBlocks];
    v15 = MEMORY[0x25F8CF560](v13);
    [delayedBlocks push:v15];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __76__PFTCoalescingSchedulerDecorator_performCancellableBlock_qualityOfService___block_invoke_3;
    v18[3] = &unk_279A52C88;
    objc_copyWeak(&v20, &location);
    v16 = v13;
    v19 = v16;
    [(PFTCancellationToken *)v7 addCancellationBlock:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(v24);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    objc_sync_exit(selfCopy);
  }

  else
  {
    if (getAndIncrementState)
    {
      goto LABEL_6;
    }

    scheduler = [(PFTCoalescingSchedulerDecorator *)self scheduler];
    selfCopy = [scheduler performCancellableBlock:blockCopy qualityOfService:service];

    scheduler2 = [(PFTCoalescingSchedulerDecorator *)self scheduler];
    [(PFTCoalescingSchedulerDecorator *)self coalescingWindow];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __76__PFTCoalescingSchedulerDecorator_performCancellableBlock_qualityOfService___block_invoke;
    v27[3] = &unk_279A52C60;
    v27[4] = self;
    v12 = [scheduler2 afterDelay:v27 performBlock:?];

    [(PFTCancellationToken *)v7 addCancellable:selfCopy];
    [(PFTCancellationToken *)v7 addCancellable:v12];
  }

LABEL_6:

  return v7;
}

void __76__PFTCoalescingSchedulerDecorator_performCancellableBlock_qualityOfService___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  if (([v2 isCancelled] & 1) == 0)
  {
    v3 = [WeakRetained scheduler];
    v4 = [v3 performCancellableBlock:*(a1 + 32) qualityOfService:*(a1 + 56)];

    [v2 addCancellable:v4];
  }
}

void __76__PFTCoalescingSchedulerDecorator_performCancellableBlock_qualityOfService___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeDelayedBlock:*(a1 + 32)];
}

- (id)afterDelay:(double)delay performBlock:(id)block
{
  blockCopy = block;
  scheduler = [(PFTCoalescingSchedulerDecorator *)self scheduler];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__PFTCoalescingSchedulerDecorator_afterDelay_performBlock___block_invoke;
  v11[3] = &unk_279A52D20;
  v11[4] = self;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = [scheduler afterDelay:v11 performBlock:delay];

  return v9;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  scheduler = [(PFTCoalescingSchedulerDecorator *)self scheduler];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__PFTCoalescingSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke;
  v13[3] = &unk_279A531E8;
  v13[4] = self;
  v14 = blockCopy;
  serviceCopy = service;
  v10 = blockCopy;
  v11 = [scheduler afterDelay:v13 performBlock:service qualityOfService:delay];

  return v11;
}

- (double)timestamp
{
  scheduler = [(PFTCoalescingSchedulerDecorator *)self scheduler];
  [scheduler timestamp];
  v4 = v3;

  return v4;
}

@end