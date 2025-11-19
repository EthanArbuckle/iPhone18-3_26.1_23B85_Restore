@interface PASLazyPurgeableResult
@end

@implementation PASLazyPurgeableResult

void __49___PASLazyPurgeableResult__createDispatchSources__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    pthread_mutex_lock((WeakRetained + 16));
    v1 = *(WeakRetained + 1);
    *(WeakRetained + 1) = 0;

    dispatch_source_cancel(*(WeakRetained + 12));
    v2 = *(WeakRetained + 12);
    *(WeakRetained + 12) = 0;

    v3 = *(WeakRetained + 13);
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = *(WeakRetained + 13);
      *(WeakRetained + 13) = 0;
    }

    pthread_mutex_unlock((WeakRetained + 16));
  }
}

void __49___PASLazyPurgeableResult__createDispatchSources__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [_PASDispatch autoreleasingSerialQueueWithLabel:"_PASLazyPurgeableResult-dispatch-sources" qosClass:17];
  v2 = _createDispatchSources__pasExprOnceResult;
  _createDispatchSources__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end