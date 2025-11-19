@interface PLClientTransaction
@end

@implementation PLClientTransaction

void __43___PLClientTransaction_completeTransaction__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  if ((v3 & 0x80000000) == 0)
  {
    flock(*(v2 + 80), 8);
    close(v3);
    *(*(a1 + 32) + 80) = -1;
    v2 = *(a1 + 32);
  }

  WeakRetained = objc_loadWeakRetained((v2 + 96));

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((*(a1 + 32) + 96));
    dispatch_semaphore_signal(v5);

    v6 = (*(a1 + 32) + 96);

    objc_storeWeak(v6, 0);
  }
}

void __31___PLClientTransaction_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  if ((v3 & 0x80000000) == 0)
  {
    flock(*(v2 + 80), 8);
    close(v3);
    *(*(a1 + 32) + 80) = -1;
    v2 = *(a1 + 32);
  }

  WeakRetained = objc_loadWeakRetained((v2 + 96));

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((*(a1 + 32) + 96));
    dispatch_semaphore_signal(v5);

    v6 = (*(a1 + 32) + 96);

    objc_storeWeak(v6, 0);
  }
}

uint64_t __49___PLClientTransaction_persistTransactionScopes___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  if ((result & 0x80000000) == 0)
  {
    pwrite(result, (a1 + 40), 8uLL, 0);
    v3 = *(*(a1 + 32) + 80);

    return fsync(v3);
  }

  return result;
}

void __44___PLClientTransaction__fdResourceSemaphore__block_invoke()
{
  if ((PLIsAssetsd() & 1) == 0)
  {
    v0 = dispatch_semaphore_create(16);
    v1 = _fdResourceSemaphore_fdResourceSem;
    _fdResourceSemaphore_fdResourceSem = v0;
  }
}

void __41___PLClientTransaction__fdIsolationQueue__block_invoke()
{
  v0 = dispatch_queue_create("PLClientServerTransactions.fdIsolationQueue", 0);
  v1 = _fdIsolationQueue_sQueue;
  _fdIsolationQueue_sQueue = v0;
}

@end