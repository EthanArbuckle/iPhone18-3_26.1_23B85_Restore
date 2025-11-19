@interface UIFocusMapRecurseSearchForFocusSystemInEligibleContainer
@end

@implementation UIFocusMapRecurseSearchForFocusSystemInEligibleContainer

void ____UIFocusMapRecurseSearchForFocusSystemInEligibleContainer_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  v6 = v8;
  if (*(a1 + 32) != v8)
  {
    if (*(a1 + 40) == v8)
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      *a3 = 1;
      goto LABEL_14;
    }

    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      v7 = [*(a1 + 48) containsObject:v8];
      v6 = v8;
      if (v7)
      {
        *(*(*(a1 + 80) + 8) + 24) = 0;
        goto LABEL_14;
      }
    }

    if ([*(a1 + 56) containsObject:v6])
    {
      *(*(*(a1 + 88) + 8) + 24) = 0;
    }

    else
    {
      *(*(*(a1 + 88) + 8) + 24) = _UIFocusEnvironmentIsEligibleForFocusOcclusion(v8, 0);
      if (*(*(*(a1 + 88) + 8) + 24) == 1)
      {
        [*(a1 + 48) addObject:v8];
LABEL_13:
        v6 = v8;
        goto LABEL_14;
      }

      [*(a1 + 56) addObject:v8];
    }

    *a3 = 1;
    goto LABEL_13;
  }

LABEL_14:
}

@end