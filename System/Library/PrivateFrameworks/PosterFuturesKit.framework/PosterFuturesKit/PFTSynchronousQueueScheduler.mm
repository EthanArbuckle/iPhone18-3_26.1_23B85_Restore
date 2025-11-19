@interface PFTSynchronousQueueScheduler
@end

@implementation PFTSynchronousQueueScheduler

void __74___PFTSynchronousQueueScheduler_performCancellableBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __74___PFTSynchronousQueueScheduler_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CCACC8] sleepForTimeInterval:*(a1 + 40)];
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

@end