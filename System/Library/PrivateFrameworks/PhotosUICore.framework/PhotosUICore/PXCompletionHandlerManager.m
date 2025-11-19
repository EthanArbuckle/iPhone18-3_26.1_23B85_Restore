@interface PXCompletionHandlerManager
@end

@implementation PXCompletionHandlerManager

void __53___PXCompletionHandlerManager_callCompletionHandlers__block_invoke(uint64_t a1, void *a2)
{
  aBlock = a2;
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  [v3 cancelPreviousPerformRequestsWithTarget:v4 selector:sel__handleTimeoutOfCompletionHandler_ object:v5];

  aBlock[2]();
}

@end