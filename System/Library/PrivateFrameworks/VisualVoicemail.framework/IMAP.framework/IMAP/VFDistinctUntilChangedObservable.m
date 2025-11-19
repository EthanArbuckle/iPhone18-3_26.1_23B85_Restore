@interface VFDistinctUntilChangedObservable
@end

@implementation VFDistinctUntilChangedObservable

void __47___VFDistinctUntilChangedObservable_subscribe___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _isLastResultDistinctFromResult:?])
  {
    [*(a1 + 40) observerDidReceiveResult:v3];
  }
}

@end