@interface PFTInhibitingSchedulerDecorator
- (PFTInhibitingSchedulerDecorator)initWithScheduler:(id)scheduler inhibitorFactory:(id)factory;
- (double)timestamp;
- (id)afterDelay:(double)delay performBlock:(id)block;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancellableBlock:(id)block;
- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation PFTInhibitingSchedulerDecorator

- (PFTInhibitingSchedulerDecorator)initWithScheduler:(id)scheduler inhibitorFactory:(id)factory
{
  schedulerCopy = scheduler;
  factoryCopy = factory;
  v15.receiver = self;
  v15.super_class = PFTInhibitingSchedulerDecorator;
  v9 = [(PFTInhibitingSchedulerDecorator *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scheduler, scheduler);
    v11 = [factoryCopy copy];
    inhibitorFactory = v10->_inhibitorFactory;
    v10->_inhibitorFactory = v11;

    v13 = v10;
  }

  return v10;
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  inhibitorFactory = [(PFTInhibitingSchedulerDecorator *)self inhibitorFactory];
  v7 = inhibitorFactory[2]();

  [v7 start];
  scheduler = [(PFTInhibitingSchedulerDecorator *)self scheduler];
  [scheduler performBlock:blockCopy];

  [v7 stop];
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  inhibitorFactory = [(PFTInhibitingSchedulerDecorator *)self inhibitorFactory];
  v9 = inhibitorFactory[2]();

  [v9 start];
  scheduler = [(PFTInhibitingSchedulerDecorator *)self scheduler];
  [scheduler performBlock:blockCopy qualityOfService:service];

  [v9 stop];
}

- (id)performCancellableBlock:(id)block
{
  blockCopy = block;
  inhibitorFactory = [(PFTInhibitingSchedulerDecorator *)self inhibitorFactory];
  v6 = inhibitorFactory[2]();

  [v6 start];
  scheduler = [(PFTInhibitingSchedulerDecorator *)self scheduler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__PFTInhibitingSchedulerDecorator_performCancellableBlock___block_invoke;
  v12[3] = &unk_279A53468;
  v13 = v6;
  v14 = blockCopy;
  v8 = v6;
  v9 = blockCopy;
  v10 = [scheduler performCancellableBlock:v12];

  return v10;
}

uint64_t __59__PFTInhibitingSchedulerDecorator_performCancellableBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 stop];
}

- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  inhibitorFactory = [(PFTInhibitingSchedulerDecorator *)self inhibitorFactory];
  v8 = inhibitorFactory[2]();

  [v8 start];
  scheduler = [(PFTInhibitingSchedulerDecorator *)self scheduler];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__PFTInhibitingSchedulerDecorator_performCancellableBlock_qualityOfService___block_invoke;
  v14[3] = &unk_279A53468;
  v15 = v8;
  v16 = blockCopy;
  v10 = v8;
  v11 = blockCopy;
  v12 = [scheduler performCancellableBlock:v14 qualityOfService:service];

  return v12;
}

uint64_t __76__PFTInhibitingSchedulerDecorator_performCancellableBlock_qualityOfService___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 stop];
}

- (id)afterDelay:(double)delay performBlock:(id)block
{
  blockCopy = block;
  inhibitorFactory = [(PFTInhibitingSchedulerDecorator *)self inhibitorFactory];
  v8 = inhibitorFactory[2]();

  [v8 start];
  scheduler = [(PFTInhibitingSchedulerDecorator *)self scheduler];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__PFTInhibitingSchedulerDecorator_afterDelay_performBlock___block_invoke;
  v14[3] = &unk_279A52AE8;
  v15 = v8;
  v16 = blockCopy;
  v10 = v8;
  v11 = blockCopy;
  v12 = [scheduler afterDelay:v14 performBlock:delay];

  return v12;
}

uint64_t __59__PFTInhibitingSchedulerDecorator_afterDelay_performBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 stop];
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  inhibitorFactory = [(PFTInhibitingSchedulerDecorator *)self inhibitorFactory];
  v10 = inhibitorFactory[2]();

  [v10 start];
  scheduler = [(PFTInhibitingSchedulerDecorator *)self scheduler];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__PFTInhibitingSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke;
  v16[3] = &unk_279A52AE8;
  v17 = v10;
  v18 = blockCopy;
  v12 = v10;
  v13 = blockCopy;
  v14 = [scheduler afterDelay:v16 performBlock:service qualityOfService:delay];

  return v14;
}

uint64_t __76__PFTInhibitingSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 stop];
}

- (double)timestamp
{
  scheduler = [(PFTInhibitingSchedulerDecorator *)self scheduler];
  [scheduler timestamp];
  v4 = v3;

  return v4;
}

@end