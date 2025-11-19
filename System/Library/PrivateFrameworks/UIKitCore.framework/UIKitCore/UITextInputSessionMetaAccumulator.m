@interface UITextInputSessionMetaAccumulator
@end

@implementation UITextInputSessionMetaAccumulator

void __71___UITextInputSessionMetaAccumulator_accumulatorWithName_accumulators___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1[4] + 8) + 24);
  v7 = a2;
  v8 = [v7 depthRange];
  if (v6 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  *(*(a1[4] + 8) + 24) = v9;
  v10 = *(*(a1[5] + 8) + 24);
  v11 = [v7 depthRange];
  v13 = v11 + v12;
  if (v10 > v11 + v12)
  {
    v13 = v10;
  }

  *(*(a1[5] + 8) + 24) = v13;
  v14 = [v7 type];

  if (v14 != a1[7])
  {
    *(*(a1[6] + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __58___UITextInputSessionMetaAccumulator_increaseWithActions___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  if ([v11 depthRange] <= *(a1 + 56) && objc_msgSend(v11, "_increaseWithActions:", *(a1 + 32)))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v7 = *(a1 + 40);
    if (*(v7 + 128) + 1 == a3)
    {
      v8 = [*(v7 + 120) count] - 1;
      v9 = *(a1 + 40);
      if (v8 == a3)
      {
        v10 = [*(a1 + 32) firstObject];
        [v9 _increaseWithCount:1 source:{objc_msgSend(v10, "source")}];

        *(*(a1 + 40) + 128) = a3;
      }

      else
      {
        ++v9[16];
      }

      *a4 = 1;
    }

    else
    {
      *(v7 + 128) = -1;
    }
  }
}

@end