@interface PFTSuspendableSchedulerDecorator
+ (id)resumedSchedulerWithScheduler:(id)scheduler;
+ (id)suspendedSchedulerWithScheduler:(id)scheduler;
- (NSString)description;
- (PFTSuspendableSchedulerDecorator)initWithScheduler:(id)scheduler;
- (double)timestamp;
- (id)_nts_enqueueCancellableBlock:(id)block qualityOfService:(unint64_t)service;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)_performFirstQueuedTask;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
- (void)resume;
- (void)suspend;
@end

@implementation PFTSuspendableSchedulerDecorator

- (void)resume
{
  lock = [(PFTSuspendableSchedulerDecorator *)self lock];
  [lock lock];

  lock2 = [(PFTSuspendableSchedulerDecorator *)self lock];
  [lock2 unlockWithCondition:1];

  scheduler = [(PFTSuspendableSchedulerDecorator *)self scheduler];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__PFTSuspendableSchedulerDecorator_resume__block_invoke;
  v6[3] = &unk_279A52C60;
  v6[4] = self;
  [scheduler performBlock:v6];
}

- (void)_performFirstQueuedTask
{
  lock = [(PFTSuspendableSchedulerDecorator *)self lock];
  [lock lock];

  lock2 = [(PFTSuspendableSchedulerDecorator *)self lock];
  condition = [lock2 condition];

  if (condition)
  {
    queue = [(PFTSuspendableSchedulerDecorator *)self queue];
    dequeue = [queue dequeue];

    lock3 = [(PFTSuspendableSchedulerDecorator *)self lock];
    lock4 = lock3;
    if (dequeue)
    {
      [lock3 unlockWithCondition:1];

      dequeue[2](dequeue);
      scheduler = [(PFTSuspendableSchedulerDecorator *)self scheduler];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __59__PFTSuspendableSchedulerDecorator__performFirstQueuedTask__block_invoke;
      v11[3] = &unk_279A52C60;
      v11[4] = self;
      [scheduler performBlock:v11];

      return;
    }

    [lock3 unlockWithCondition:2];
  }

  else
  {
    lock4 = [(PFTSuspendableSchedulerDecorator *)self lock];
    [lock4 unlock];
  }
}

+ (id)suspendedSchedulerWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v5 = [[self alloc] initWithScheduler:schedulerCopy];

  return v5;
}

+ (id)resumedSchedulerWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v5 = [[self alloc] initWithScheduler:schedulerCopy];

  [v5 resume];

  return v5;
}

- (PFTSuspendableSchedulerDecorator)initWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v14.receiver = self;
  v14.super_class = PFTSuspendableSchedulerDecorator;
  v6 = [(PFTSuspendableSchedulerDecorator *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scheduler, scheduler);
    v8 = objc_alloc_init(PFTQueue);
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    lock = v7->_lock;
    v7->_lock = v10;

    v12 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_scheduler withName:@"scheduler"];
  condition = [(NSConditionLock *)self->_lock condition];
  v6 = @"PFTSuspendableSchedulerConditionBuffering";
  if (condition == 1)
  {
    v6 = @"PFTSuspendableSchedulerConditionDraining";
  }

  if (condition == 2)
  {
    v7 = @"PFTSuspendableSchedulerConditionRelaying";
  }

  else
  {
    v7 = v6;
  }

  v8 = [v3 appendObject:v7 withName:@"status"];
  build = [v3 build];

  return build;
}

- (void)suspend
{
  lock = [(PFTSuspendableSchedulerDecorator *)self lock];
  [lock lock];

  lock2 = [(PFTSuspendableSchedulerDecorator *)self lock];
  [lock2 unlockWithCondition:0];
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__PFTSuspendableSchedulerDecorator_performBlock_qualityOfService___block_invoke;
  v9[3] = &unk_279A52FE8;
  v10 = blockCopy;
  v7 = blockCopy;
  v8 = [(PFTSuspendableSchedulerDecorator *)self performCancellableBlock:v9 qualityOfService:service];
}

- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  lock = [(PFTSuspendableSchedulerDecorator *)self lock];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__PFTSuspendableSchedulerDecorator_performCancellableBlock_qualityOfService___block_invoke;
  v14[3] = &unk_279A53288;
  v14[4] = self;
  v16 = &v19;
  v17 = &v23;
  v8 = blockCopy;
  v15 = v8;
  serviceCopy = service;
  PFTRunWithLock(lock, v14);

  if (*(v20 + 24) == 1)
  {
    scheduler = [(PFTSuspendableSchedulerDecorator *)self scheduler];
    v10 = [scheduler performCancellableBlock:v8 qualityOfService:service];
    v11 = v24[5];
    v24[5] = v10;
  }

  v12 = v24[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v12;
}

void __77__PFTSuspendableSchedulerDecorator_performCancellableBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lock];
  v3 = [v2 condition];

  if (v3 == 2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v4 = [*(a1 + 32) _nts_enqueueCancellableBlock:*(a1 + 40) qualityOfService:*(a1 + 64)];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (id)_nts_enqueueCancellableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v7 = objc_alloc_init(PFTCancellationToken);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __82__PFTSuspendableSchedulerDecorator__nts_enqueueCancellableBlock_qualityOfService___block_invoke;
  v26[3] = &unk_279A52AE8;
  v8 = blockCopy;
  v28 = v8;
  v9 = v7;
  v27 = v9;
  v10 = v26;
  v11 = v10;
  if (service <= 2)
  {
    if (!service)
    {
      v14 = MEMORY[0x25F8CF560](v10);
      goto LABEL_17;
    }

    if (service == 2)
    {
      v12 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v13 = dispatch_block_create_with_qos_class(0, v12, 0, v10);
      goto LABEL_16;
    }

LABEL_11:
    v12 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  if (service <= 4)
  {
    if (service == 3)
    {
      v12 = QOS_CLASS_UTILITY;
    }

    else
    {
      v12 = QOS_CLASS_USER_INITIATED;
    }

    goto LABEL_15;
  }

  if (service == 5)
  {
    v12 = QOS_CLASS_USER_INTERACTIVE;
    goto LABEL_15;
  }

  if (service != 6)
  {
    goto LABEL_11;
  }

  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v10);
LABEL_16:
  v15 = v13;
  v14 = objc_opt_self();

LABEL_17:
  v16 = [v14 copy];

  queue = [(PFTSuspendableSchedulerDecorator *)self queue];
  v18 = MEMORY[0x25F8CF560](v16);
  [queue enqueue:v18];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v16);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __82__PFTSuspendableSchedulerDecorator__nts_enqueueCancellableBlock_qualityOfService___block_invoke_2;
  v21[3] = &unk_279A532D8;
  objc_copyWeak(&v22, &location);
  objc_copyWeak(&v23, &from);
  [(PFTCancellationToken *)v9 addCancellationBlock:v21];
  v19 = v9;
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v19;
}

void __82__PFTSuspendableSchedulerDecorator__nts_enqueueCancellableBlock_qualityOfService___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained lock];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __82__PFTSuspendableSchedulerDecorator__nts_enqueueCancellableBlock_qualityOfService___block_invoke_3;
  v4[3] = &unk_279A532B0;
  objc_copyWeak(&v5, (a1 + 40));
  v4[4] = WeakRetained;
  PFTRunWithLock(v3, v4);

  objc_destroyWeak(&v5);
}

void __82__PFTSuspendableSchedulerDecorator__nts_enqueueCancellableBlock_qualityOfService___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) queue];
  v3 = MEMORY[0x25F8CF560](WeakRetained);
  [v2 dequeueObject:v3];
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v9 = objc_alloc_init(PFTCancellationToken);
  scheduler = [(PFTSuspendableSchedulerDecorator *)self scheduler];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __77__PFTSuspendableSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke;
  v19 = &unk_279A53300;
  selfCopy = self;
  v22 = blockCopy;
  serviceCopy = service;
  v11 = v9;
  v21 = v11;
  v12 = blockCopy;
  v13 = [scheduler afterDelay:&v16 performBlock:delay];

  [(PFTCancellationToken *)v11 addCancellable:v13, v16, v17, v18, v19, selfCopy];
  v14 = v11;

  return v11;
}

void __77__PFTSuspendableSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__PFTSuspendableSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke_2;
  v4[3] = &unk_279A52FE8;
  v5 = *(a1 + 48);
  v3 = [v2 performCancellableBlock:v4 qualityOfService:*(a1 + 56)];
  [*(a1 + 40) addCancellable:v3];
}

- (double)timestamp
{
  scheduler = [(PFTSuspendableSchedulerDecorator *)self scheduler];
  [scheduler timestamp];
  v4 = v3;

  return v4;
}

@end