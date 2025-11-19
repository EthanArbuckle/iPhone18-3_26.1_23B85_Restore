@interface PXObservable
@end

@implementation PXObservable

void __77__PXObservable_PXStory__pxStory_enumerateStatesByWatchingChanges_usingBlock___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0 && (a1[8] & a3) != 0)
  {
    v6 = v5;
    (*(a1[5] + 16))();
    v5 = v6;
    if (*(*(a1[6] + 8) + 24) == 1)
    {
      [*(*(a1[7] + 8) + 40) cancel];
      v5 = v6;
    }
  }
}

uint64_t __102__PXObservable_PXStory__pxStory_enumerateStatesWithTimeout_watchingChanges_usingBlock_timeoutHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*a4 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __102__PXObservable_PXStory__pxStory_enumerateStatesWithTimeout_watchingChanges_usingBlock_timeoutHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cancel];
  result = *(a1 + 40);
  if (result && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end