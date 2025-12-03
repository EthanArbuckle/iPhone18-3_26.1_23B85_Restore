@interface PFTCallStackRecordingSchedulerDecorator
+ (id)os_log;
- (NSString)description;
- (PFTCallStackRecordingSchedulerDecorator)initWithScheduler:(id)scheduler;
- (double)timestamp;
- (id)afterDelay:(double)delay performBlock:(id)block;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancellableBlock:(id)block;
- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)blockBecamePending;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation PFTCallStackRecordingSchedulerDecorator

+ (id)os_log
{
  if (os_log_pft_once_token_8_2 != -1)
  {
    +[PFTCallStackRecordingSchedulerDecorator os_log];
  }

  v3 = os_log_pft_once_object_8_2;

  return v3;
}

uint64_t __49__PFTCallStackRecordingSchedulerDecorator_os_log__block_invoke()
{
  os_log_pft_once_object_8_2 = os_log_create("com.apple.FutureKit.debug", "scheduler-callstack");

  return MEMORY[0x2821F96F8]();
}

- (PFTCallStackRecordingSchedulerDecorator)initWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v10.receiver = self;
  v10.super_class = PFTCallStackRecordingSchedulerDecorator;
  v6 = [(PFTCallStackRecordingSchedulerDecorator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scheduler, scheduler);
    v8 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  scheduler = [(PFTCallStackRecordingSchedulerDecorator *)self scheduler];
  v5 = [v3 appendObject:scheduler withName:@"scheduler"];

  build = [v3 build];

  return build;
}

- (void)blockBecamePending
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_25ED8F000, a2, OS_LOG_TYPE_DEBUG, "Scheduling block with call stack: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  [(PFTCallStackRecordingSchedulerDecorator *)self blockBecamePending];
  scheduler = [(PFTCallStackRecordingSchedulerDecorator *)self scheduler];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__PFTCallStackRecordingSchedulerDecorator_performBlock___block_invoke;
  v7[3] = &unk_279A52CD8;
  v8 = blockCopy;
  v6 = blockCopy;
  [scheduler performBlock:v7];
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  [(PFTCallStackRecordingSchedulerDecorator *)self blockBecamePending];
  scheduler = [(PFTCallStackRecordingSchedulerDecorator *)self scheduler];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__PFTCallStackRecordingSchedulerDecorator_performBlock_qualityOfService___block_invoke;
  v9[3] = &unk_279A52CD8;
  v10 = blockCopy;
  v8 = blockCopy;
  [scheduler performBlock:v9 qualityOfService:service];
}

- (id)performCancellableBlock:(id)block
{
  blockCopy = block;
  [(PFTCallStackRecordingSchedulerDecorator *)self blockBecamePending];
  scheduler = [(PFTCallStackRecordingSchedulerDecorator *)self scheduler];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__PFTCallStackRecordingSchedulerDecorator_performCancellableBlock___block_invoke;
  v9[3] = &unk_279A52FE8;
  v10 = blockCopy;
  v6 = blockCopy;
  v7 = [scheduler performCancellableBlock:v9];

  return v7;
}

- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  [(PFTCallStackRecordingSchedulerDecorator *)self blockBecamePending];
  scheduler = [(PFTCallStackRecordingSchedulerDecorator *)self scheduler];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__PFTCallStackRecordingSchedulerDecorator_performCancellableBlock_qualityOfService___block_invoke;
  v11[3] = &unk_279A52FE8;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = [scheduler performCancellableBlock:v11 qualityOfService:service];

  return v9;
}

- (id)afterDelay:(double)delay performBlock:(id)block
{
  blockCopy = block;
  [(PFTCallStackRecordingSchedulerDecorator *)self blockBecamePending];
  scheduler = [(PFTCallStackRecordingSchedulerDecorator *)self scheduler];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__PFTCallStackRecordingSchedulerDecorator_afterDelay_performBlock___block_invoke;
  v11[3] = &unk_279A52CD8;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = [scheduler afterDelay:v11 performBlock:delay];

  return v9;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  [(PFTCallStackRecordingSchedulerDecorator *)self blockBecamePending];
  scheduler = [(PFTCallStackRecordingSchedulerDecorator *)self scheduler];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__PFTCallStackRecordingSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke;
  v13[3] = &unk_279A52CD8;
  v14 = blockCopy;
  v10 = blockCopy;
  v11 = [scheduler afterDelay:v13 performBlock:service qualityOfService:delay];

  return v11;
}

- (double)timestamp
{
  scheduler = [(PFTCallStackRecordingSchedulerDecorator *)self scheduler];
  [scheduler timestamp];
  v4 = v3;

  return v4;
}

@end