@interface PASDispatch
@end

@implementation PASDispatch

uint64_t __54___PASDispatch_notifyGroup_onQueue_withTimeout_block___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __54___PASDispatch_notifyGroup_onQueue_withTimeout_block___block_invoke_5(void *a1)
{
  obj = *(*(a1[4] + 8) + 40);
  objc_sync_enter(obj);
  v2 = *(*(a1[5] + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
  }

  WeakRetained = objc_loadWeakRetained((*(a1[6] + 8) + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_block_cancel(WeakRetained);
  }

  objc_sync_exit(obj);
}

void __54___PASDispatch_notifyGroup_onQueue_withTimeout_block___block_invoke_2(uint64_t a1)
{
  obj = *(*(*(a1 + 40) + 8) + 40);
  objc_sync_enter(obj);
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    (*(*(*(*(a1 + 56) + 8) + 40) + 16))();
  }

  v2 = *(*(a1 + 56) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  dispatch_block_cancel(*(a1 + 32));
  objc_sync_exit(obj);
}

@end