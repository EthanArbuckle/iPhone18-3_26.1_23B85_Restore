@interface PFTQueueScheduler
@end

@implementation PFTQueueScheduler

uint64_t __63___PFTQueueScheduler_performCancellableBlock_qualityOfService___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

void __63___PFTQueueScheduler_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) cancel];

  objc_autoreleasePoolPop(v2);
}

@end