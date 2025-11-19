@interface PASMemoryHeavyOperation
@end

@implementation PASMemoryHeavyOperation

uint64_t ___PASMemoryHeavyOperation_block_invoke_2(uint64_t a1)
{
  pthread_setspecific(_PASMemoryHeavyOperation_tlKey, 1);
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v2);
  v3 = _PASMemoryHeavyOperation_tlKey;

  return pthread_setspecific(v3, 0);
}

uint64_t ___PASMemoryHeavyOperation_block_invoke()
{
  v0 = dispatch_queue_create("_PASMemoryHeavyOperationLock-UI", 0);
  v1 = _PASMemoryHeavyOperation_uiQueue;
  _PASMemoryHeavyOperation_uiQueue = v0;

  v2 = dispatch_queue_create("_PASMemoryHeavyOperationLock-Low", 0);
  v3 = _PASMemoryHeavyOperation_lowQueue;
  _PASMemoryHeavyOperation_lowQueue = v2;

  return pthread_key_create(&_PASMemoryHeavyOperation_tlKey, 0);
}

@end