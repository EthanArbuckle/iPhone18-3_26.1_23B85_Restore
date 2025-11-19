@interface VFConcatenatingObservable
@end

@implementation VFConcatenatingObservable

void __69___VFConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    [*(a1 + 40) observerDidReceiveResult:v3];
  }
}

void __69___VFConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    if ([*(a1 + 40) count] < 2)
    {
      v2 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v2 = [*(a1 + 40) subarrayWithRange:{1, objc_msgSend(*(a1 + 40), "count") - 1}];
    }

    v3 = v2;
    [*(a1 + 56) subscribeObserver:*(a1 + 48) toObservables:v2 unless:*(a1 + 32)];
  }
}

void __69___VFConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    [*(a1 + 40) observerDidFailWithError:v3];
  }
}

@end