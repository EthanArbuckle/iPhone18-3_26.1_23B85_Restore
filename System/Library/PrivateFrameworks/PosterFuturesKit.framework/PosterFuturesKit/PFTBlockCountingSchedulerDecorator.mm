@interface PFTBlockCountingSchedulerDecorator
+ (id)os_log;
- (NSString)description;
- (PFTBlockCountingSchedulerDecorator)initWithScheduler:(id)a3;
- (double)timestamp;
- (id)afterDelay:(double)a3 performBlock:(id)a4;
- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5;
- (id)performCancellableBlock:(id)a3;
- (id)performCancellableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (void)blockBecameActive;
- (void)blockBecameCompleted;
- (void)blockBecamePending;
- (void)performBlock:(id)a3;
- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4;
@end

@implementation PFTBlockCountingSchedulerDecorator

+ (id)os_log
{
  if (os_log_pft_once_token_8_0 != -1)
  {
    +[PFTBlockCountingSchedulerDecorator os_log];
  }

  v3 = os_log_pft_once_object_8_0;

  return v3;
}

uint64_t __44__PFTBlockCountingSchedulerDecorator_os_log__block_invoke()
{
  os_log_pft_once_object_8_0 = os_log_create("com.apple.PosterFuturesKit.debug", "scheduler-counting");

  return MEMORY[0x2821F96F8]();
}

- (PFTBlockCountingSchedulerDecorator)initWithScheduler:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PFTBlockCountingSchedulerDecorator;
  v6 = [(PFTBlockCountingSchedulerDecorator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scheduler, a3);
    v8 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(PFTBlockCountingSchedulerDecorator *)self scheduler];
  v5 = [v3 appendObject:v4 withName:@"scheduler"];

  v6 = [v3 build];

  return v6;
}

- (void)blockBecamePending
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = 134218752;
  v8 = a1;
  v9 = 2048;
  v10 = v3;
  v11 = 2048;
  v12 = v4;
  v13 = 2048;
  v14 = v5;
  _os_log_debug_impl(&dword_25ED8F000, log, OS_LOG_TYPE_DEBUG, "Scheduler %p has new pending block (%lu pending, %lu active, %lu completed)", &v7, 0x2Au);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)blockBecameActive
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  *&v2->_pendingBlockCount = vaddq_s64(*&v2->_pendingBlockCount, xmmword_25EDA92D0);
  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    pendingBlockCount = v2->_pendingBlockCount;
    activeBlockCount = v2->_activeBlockCount;
    completedBlockCount = v2->_completedBlockCount;
    v8 = 134218752;
    v9 = v2;
    v10 = 2048;
    v11 = pendingBlockCount;
    v12 = 2048;
    v13 = activeBlockCount;
    v14 = 2048;
    v15 = completedBlockCount;
    _os_log_debug_impl(&dword_25ED8F000, v3, OS_LOG_TYPE_DEBUG, "Scheduler %p has new active block (%lu pending, %lu active, %lu completed)", &v8, 0x2Au);
  }

  objc_sync_exit(v2);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)blockBecameCompleted
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  *&v2->_activeBlockCount = vaddq_s64(*&v2->_activeBlockCount, xmmword_25EDA92D0);
  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    pendingBlockCount = v2->_pendingBlockCount;
    activeBlockCount = v2->_activeBlockCount;
    completedBlockCount = v2->_completedBlockCount;
    v8 = 134218752;
    v9 = v2;
    v10 = 2048;
    v11 = pendingBlockCount;
    v12 = 2048;
    v13 = activeBlockCount;
    v14 = 2048;
    v15 = completedBlockCount;
    _os_log_debug_impl(&dword_25ED8F000, v3, OS_LOG_TYPE_DEBUG, "Scheduler %p has new completed block (%lu pending, %lu active, %lu completed)", &v8, 0x2Au);
  }

  objc_sync_exit(v2);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  [(PFTBlockCountingSchedulerDecorator *)self blockBecamePending];
  v5 = [(PFTBlockCountingSchedulerDecorator *)self scheduler];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__PFTBlockCountingSchedulerDecorator_performBlock___block_invoke;
  v7[3] = &unk_279A52D20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

uint64_t __51__PFTBlockCountingSchedulerDecorator_performBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) blockBecameActive];
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 blockBecameCompleted];
}

- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  [(PFTBlockCountingSchedulerDecorator *)self blockBecamePending];
  v7 = [(PFTBlockCountingSchedulerDecorator *)self scheduler];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__PFTBlockCountingSchedulerDecorator_performBlock_qualityOfService___block_invoke;
  v9[3] = &unk_279A52D20;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 performBlock:v9 qualityOfService:a4];
}

uint64_t __68__PFTBlockCountingSchedulerDecorator_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  [*(a1 + 32) blockBecameActive];
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 blockBecameCompleted];
}

- (id)performCancellableBlock:(id)a3
{
  v4 = a3;
  [(PFTBlockCountingSchedulerDecorator *)self blockBecamePending];
  v5 = [(PFTBlockCountingSchedulerDecorator *)self scheduler];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__PFTBlockCountingSchedulerDecorator_performCancellableBlock___block_invoke;
  v9[3] = &unk_279A52D48;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 performCancellableBlock:v9];

  return v7;
}

uint64_t __62__PFTBlockCountingSchedulerDecorator_performCancellableBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 blockBecameActive];
  (*(*(a1 + 40) + 16))();

  v5 = *(a1 + 32);

  return [v5 blockBecameCompleted];
}

- (id)performCancellableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  [(PFTBlockCountingSchedulerDecorator *)self blockBecamePending];
  v7 = [(PFTBlockCountingSchedulerDecorator *)self scheduler];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__PFTBlockCountingSchedulerDecorator_performCancellableBlock_qualityOfService___block_invoke;
  v11[3] = &unk_279A52D48;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = [v7 performCancellableBlock:v11 qualityOfService:a4];

  return v9;
}

uint64_t __79__PFTBlockCountingSchedulerDecorator_performCancellableBlock_qualityOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 blockBecameActive];
  (*(*(a1 + 40) + 16))();

  v5 = *(a1 + 32);

  return [v5 blockBecameCompleted];
}

- (id)afterDelay:(double)a3 performBlock:(id)a4
{
  v6 = a4;
  [(PFTBlockCountingSchedulerDecorator *)self blockBecamePending];
  v7 = [(PFTBlockCountingSchedulerDecorator *)self scheduler];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__PFTBlockCountingSchedulerDecorator_afterDelay_performBlock___block_invoke;
  v11[3] = &unk_279A52D20;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = [v7 afterDelay:v11 performBlock:a3];

  return v9;
}

uint64_t __62__PFTBlockCountingSchedulerDecorator_afterDelay_performBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) blockBecameActive];
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 blockBecameCompleted];
}

- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5
{
  v8 = a4;
  [(PFTBlockCountingSchedulerDecorator *)self blockBecamePending];
  v9 = [(PFTBlockCountingSchedulerDecorator *)self scheduler];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__PFTBlockCountingSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke;
  v13[3] = &unk_279A52D20;
  v13[4] = self;
  v14 = v8;
  v10 = v8;
  v11 = [v9 afterDelay:v13 performBlock:a5 qualityOfService:a3];

  return v11;
}

uint64_t __79__PFTBlockCountingSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  [*(a1 + 32) blockBecameActive];
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 blockBecameCompleted];
}

- (double)timestamp
{
  v2 = [(PFTBlockCountingSchedulerDecorator *)self scheduler];
  [v2 timestamp];
  v4 = v3;

  return v4;
}

@end