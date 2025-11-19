@interface PFTJumpToMainRunLoopScheduler
@end

@implementation PFTJumpToMainRunLoopScheduler

void __64___PFTJumpToMainRunLoopScheduler_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __75___PFTJumpToMainRunLoopScheduler_performCancellableBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void __75___PFTJumpToMainRunLoopScheduler_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __75___PFTJumpToMainRunLoopScheduler_afterDelay_performBlock_qualityOfService___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

@end