@interface VFGeneratorObservable
@end

@implementation VFGeneratorObservable

void __57___VFGeneratorObservable__scheduleNextResultForObserver___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 8) isCanceled] & 1) == 0 && (objc_msgSend(*(a1 + 32), "_isFinished") & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    v4 = (*(*(v2 + 40) + 16))();
    [*(a1 + 40) observerDidReceiveResult:v4];
    [*(a1 + 32) _updateState];
    [*(a1 + 32) _scheduleNextResultForObserver:*(a1 + 40)];
  }
}

@end