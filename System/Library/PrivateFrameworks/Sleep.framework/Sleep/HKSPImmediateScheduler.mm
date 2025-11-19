@interface HKSPImmediateScheduler
@end

@implementation HKSPImmediateScheduler

void __50___HKSPImmediateScheduler_performCancelableBlock___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __50___HKSPImmediateScheduler_performCancelableBlock___block_invoke_2;
  v2[3] = &unk_279C75F00;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _performOnMainThreadIfNecessary:v2];
}

void __50___HKSPImmediateScheduler_performCancelableBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(MEMORY[0x277D2C8C8]);
  (*(v1 + 16))(v1, v2);
}

@end