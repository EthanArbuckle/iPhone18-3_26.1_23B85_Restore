@interface PFTOperationQueueScheduler
@end

@implementation PFTOperationQueueScheduler

void __72___PFTOperationQueueScheduler_performCancellableBlock_qualityOfService___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

uint64_t __72___PFTOperationQueueScheduler_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _enqueueBlock:v4 qualityOfService:v5];
  }

  return result;
}

@end