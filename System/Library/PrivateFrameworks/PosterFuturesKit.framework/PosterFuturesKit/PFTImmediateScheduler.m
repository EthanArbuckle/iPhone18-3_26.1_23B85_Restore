@interface PFTImmediateScheduler
@end

@implementation PFTImmediateScheduler

void __67___PFTImmediateScheduler_performCancellableBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

@end