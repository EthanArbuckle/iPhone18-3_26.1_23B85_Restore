@interface UIAsyncInvocationObserver
@end

@implementation UIAsyncInvocationObserver

void __52___UIAsyncInvocationObserver__didCompleteInvocation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 25) & 1) == 0)
  {
    *(v1 + 25) = 1;
    v2 = *(a1 + 32);
    if (*(v2 + 24) == 1)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        dispatch_resume(v3);
      }
    }
  }
}

void __45___UIAsyncInvocationObserver_whenCompleteDo___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 8))
  {
    v3 = dispatch_queue_create("Async Observer", 0);
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(a1 + 32);
  }

  if ((*(v2 + 24) & 1) == 0 && (*(v2 + 25) & 1) == 0)
  {
    *(v2 + 24) = 1;
    dispatch_suspend(*(*(a1 + 32) + 8));
    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 8);
  v7 = *(a1 + 40);

  dispatch_async(v6, v7);
}

void __69___UIAsyncInvocationObserver_whenInvocationsCompleteForObservers_do___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  if ([v3 count])
  {
    v2 = 0;
    do
    {
      dispatch_semaphore_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
      ++v2;
    }

    while ([v3 count] > v2);
  }

  (*(*(a1 + 48) + 16))();
}

@end