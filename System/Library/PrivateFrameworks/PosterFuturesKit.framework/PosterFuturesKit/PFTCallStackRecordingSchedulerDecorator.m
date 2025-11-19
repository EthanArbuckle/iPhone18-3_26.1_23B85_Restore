@interface PFTCallStackRecordingSchedulerDecorator
+ (id)os_log;
- (NSString)description;
- (PFTCallStackRecordingSchedulerDecorator)initWithScheduler:(id)a3;
- (double)timestamp;
- (id)afterDelay:(double)a3 performBlock:(id)a4;
- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5;
- (id)performCancellableBlock:(id)a3;
- (id)performCancellableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (void)blockBecamePending;
- (void)performBlock:(id)a3;
- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4;
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

- (PFTCallStackRecordingSchedulerDecorator)initWithScheduler:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PFTCallStackRecordingSchedulerDecorator;
  v6 = [(PFTCallStackRecordingSchedulerDecorator *)&v10 init];
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
  v4 = [(PFTCallStackRecordingSchedulerDecorator *)self scheduler];
  v5 = [v3 appendObject:v4 withName:@"scheduler"];

  v6 = [v3 build];

  return v6;
}

- (void)blockBecamePending
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_25ED8F000, a2, OS_LOG_TYPE_DEBUG, "Scheduling block with call stack: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  [(PFTCallStackRecordingSchedulerDecorator *)self blockBecamePending];
  v5 = [(PFTCallStackRecordingSchedulerDecorator *)self scheduler];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__PFTCallStackRecordingSchedulerDecorator_performBlock___block_invoke;
  v7[3] = &unk_279A52CD8;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  [(PFTCallStackRecordingSchedulerDecorator *)self blockBecamePending];
  v7 = [(PFTCallStackRecordingSchedulerDecorator *)self scheduler];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__PFTCallStackRecordingSchedulerDecorator_performBlock_qualityOfService___block_invoke;
  v9[3] = &unk_279A52CD8;
  v10 = v6;
  v8 = v6;
  [v7 performBlock:v9 qualityOfService:a4];
}

- (id)performCancellableBlock:(id)a3
{
  v4 = a3;
  [(PFTCallStackRecordingSchedulerDecorator *)self blockBecamePending];
  v5 = [(PFTCallStackRecordingSchedulerDecorator *)self scheduler];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__PFTCallStackRecordingSchedulerDecorator_performCancellableBlock___block_invoke;
  v9[3] = &unk_279A52FE8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 performCancellableBlock:v9];

  return v7;
}

- (id)performCancellableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  [(PFTCallStackRecordingSchedulerDecorator *)self blockBecamePending];
  v7 = [(PFTCallStackRecordingSchedulerDecorator *)self scheduler];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__PFTCallStackRecordingSchedulerDecorator_performCancellableBlock_qualityOfService___block_invoke;
  v11[3] = &unk_279A52FE8;
  v12 = v6;
  v8 = v6;
  v9 = [v7 performCancellableBlock:v11 qualityOfService:a4];

  return v9;
}

- (id)afterDelay:(double)a3 performBlock:(id)a4
{
  v6 = a4;
  [(PFTCallStackRecordingSchedulerDecorator *)self blockBecamePending];
  v7 = [(PFTCallStackRecordingSchedulerDecorator *)self scheduler];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__PFTCallStackRecordingSchedulerDecorator_afterDelay_performBlock___block_invoke;
  v11[3] = &unk_279A52CD8;
  v12 = v6;
  v8 = v6;
  v9 = [v7 afterDelay:v11 performBlock:a3];

  return v9;
}

- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5
{
  v8 = a4;
  [(PFTCallStackRecordingSchedulerDecorator *)self blockBecamePending];
  v9 = [(PFTCallStackRecordingSchedulerDecorator *)self scheduler];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__PFTCallStackRecordingSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke;
  v13[3] = &unk_279A52CD8;
  v14 = v8;
  v10 = v8;
  v11 = [v9 afterDelay:v13 performBlock:a5 qualityOfService:a3];

  return v11;
}

- (double)timestamp
{
  v2 = [(PFTCallStackRecordingSchedulerDecorator *)self scheduler];
  [v2 timestamp];
  v4 = v3;

  return v4;
}

@end