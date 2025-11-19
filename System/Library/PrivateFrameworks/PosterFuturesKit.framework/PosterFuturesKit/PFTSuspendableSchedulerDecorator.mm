@interface PFTSuspendableSchedulerDecorator
+ (id)resumedSchedulerWithScheduler:(id)a3;
+ (id)suspendedSchedulerWithScheduler:(id)a3;
- (NSString)description;
- (PFTSuspendableSchedulerDecorator)initWithScheduler:(id)a3;
- (double)timestamp;
- (id)_nts_enqueueCancellableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5;
- (id)performCancellableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (void)_performFirstQueuedTask;
- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (void)resume;
- (void)suspend;
@end

@implementation PFTSuspendableSchedulerDecorator

- (void)resume
{
  v3 = [(PFTSuspendableSchedulerDecorator *)self lock];
  [v3 lock];

  v4 = [(PFTSuspendableSchedulerDecorator *)self lock];
  [v4 unlockWithCondition:1];

  v5 = [(PFTSuspendableSchedulerDecorator *)self scheduler];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__PFTSuspendableSchedulerDecorator_resume__block_invoke;
  v6[3] = &unk_279A52C60;
  v6[4] = self;
  [v5 performBlock:v6];
}

- (void)_performFirstQueuedTask
{
  v3 = [(PFTSuspendableSchedulerDecorator *)self lock];
  [v3 lock];

  v4 = [(PFTSuspendableSchedulerDecorator *)self lock];
  v5 = [v4 condition];

  if (v5)
  {
    v6 = [(PFTSuspendableSchedulerDecorator *)self queue];
    v7 = [v6 dequeue];

    v8 = [(PFTSuspendableSchedulerDecorator *)self lock];
    v10 = v8;
    if (v7)
    {
      [v8 unlockWithCondition:1];

      v7[2](v7);
      v9 = [(PFTSuspendableSchedulerDecorator *)self scheduler];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __59__PFTSuspendableSchedulerDecorator__performFirstQueuedTask__block_invoke;
      v11[3] = &unk_279A52C60;
      v11[4] = self;
      [v9 performBlock:v11];

      return;
    }

    [v8 unlockWithCondition:2];
  }

  else
  {
    v10 = [(PFTSuspendableSchedulerDecorator *)self lock];
    [v10 unlock];
  }
}

+ (id)suspendedSchedulerWithScheduler:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithScheduler:v4];

  return v5;
}

+ (id)resumedSchedulerWithScheduler:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithScheduler:v4];

  [v5 resume];

  return v5;
}

- (PFTSuspendableSchedulerDecorator)initWithScheduler:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PFTSuspendableSchedulerDecorator;
  v6 = [(PFTSuspendableSchedulerDecorator *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scheduler, a3);
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
  v5 = [(NSConditionLock *)self->_lock condition];
  v6 = @"PFTSuspendableSchedulerConditionBuffering";
  if (v5 == 1)
  {
    v6 = @"PFTSuspendableSchedulerConditionDraining";
  }

  if (v5 == 2)
  {
    v7 = @"PFTSuspendableSchedulerConditionRelaying";
  }

  else
  {
    v7 = v6;
  }

  v8 = [v3 appendObject:v7 withName:@"status"];
  v9 = [v3 build];

  return v9;
}

- (void)suspend
{
  v3 = [(PFTSuspendableSchedulerDecorator *)self lock];
  [v3 lock];

  v4 = [(PFTSuspendableSchedulerDecorator *)self lock];
  [v4 unlockWithCondition:0];
}

- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__PFTSuspendableSchedulerDecorator_performBlock_qualityOfService___block_invoke;
  v9[3] = &unk_279A52FE8;
  v10 = v6;
  v7 = v6;
  v8 = [(PFTSuspendableSchedulerDecorator *)self performCancellableBlock:v9 qualityOfService:a4];
}

- (id)performCancellableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
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
  v7 = [(PFTSuspendableSchedulerDecorator *)self lock];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__PFTSuspendableSchedulerDecorator_performCancellableBlock_qualityOfService___block_invoke;
  v14[3] = &unk_279A53288;
  v14[4] = self;
  v16 = &v19;
  v17 = &v23;
  v8 = v6;
  v15 = v8;
  v18 = a4;
  PFTRunWithLock(v7, v14);

  if (*(v20 + 24) == 1)
  {
    v9 = [(PFTSuspendableSchedulerDecorator *)self scheduler];
    v10 = [v9 performCancellableBlock:v8 qualityOfService:a4];
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

- (id)_nts_enqueueCancellableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(PFTCancellationToken);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __82__PFTSuspendableSchedulerDecorator__nts_enqueueCancellableBlock_qualityOfService___block_invoke;
  v26[3] = &unk_279A52AE8;
  v8 = v6;
  v28 = v8;
  v9 = v7;
  v27 = v9;
  v10 = v26;
  v11 = v10;
  if (a4 <= 2)
  {
    if (!a4)
    {
      v14 = MEMORY[0x25F8CF560](v10);
      goto LABEL_17;
    }

    if (a4 == 2)
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

  if (a4 <= 4)
  {
    if (a4 == 3)
    {
      v12 = QOS_CLASS_UTILITY;
    }

    else
    {
      v12 = QOS_CLASS_USER_INITIATED;
    }

    goto LABEL_15;
  }

  if (a4 == 5)
  {
    v12 = QOS_CLASS_USER_INTERACTIVE;
    goto LABEL_15;
  }

  if (a4 != 6)
  {
    goto LABEL_11;
  }

  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v10);
LABEL_16:
  v15 = v13;
  v14 = objc_opt_self();

LABEL_17:
  v16 = [v14 copy];

  v17 = [(PFTSuspendableSchedulerDecorator *)self queue];
  v18 = MEMORY[0x25F8CF560](v16);
  [v17 enqueue:v18];

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

- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5
{
  v8 = a4;
  v9 = objc_alloc_init(PFTCancellationToken);
  v10 = [(PFTSuspendableSchedulerDecorator *)self scheduler];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __77__PFTSuspendableSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke;
  v19 = &unk_279A53300;
  v20 = self;
  v22 = v8;
  v23 = a5;
  v11 = v9;
  v21 = v11;
  v12 = v8;
  v13 = [v10 afterDelay:&v16 performBlock:a3];

  [(PFTCancellationToken *)v11 addCancellable:v13, v16, v17, v18, v19, v20];
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
  v2 = [(PFTSuspendableSchedulerDecorator *)self scheduler];
  [v2 timestamp];
  v4 = v3;

  return v4;
}

@end