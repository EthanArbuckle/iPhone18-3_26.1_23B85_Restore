@interface UIScrollView
@end

@implementation UIScrollView

uint64_t __77__UIScrollView_PhotosUI__pu_ppt_scrollToContentOffset_withCompletionHandler___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
{
  [*(a1 + 32) contentOffset];
  v7 = v6;
  v8 = (*(*(a1 + 40) + 16))();
  v9 = (*(*(a1 + 40) + 16))(v7, *(a1 + 56) * a3, *(a1 + 72));
  PXPointRoundToPixel();
  [*(a1 + 32) contentOffset];
  PXPointRoundToPixel();
  result = PXPointApproximatelyEqualToPoint();
  if (result)
  {
    *a2 = 1;
  }

  else
  {
    v11 = *(a1 + 32);

    return [v11 setContentOffset:0 animated:{v8, v9}];
  }

  return result;
}

double __77__UIScrollView_PhotosUI__pu_ppt_scrollToContentOffset_withCompletionHandler___block_invoke(double a1, double a2, double a3)
{
  PXFloatSign();
  v7 = v6;
  PXFloatSign();
  if (v7 == v8)
  {
    a1 = a1 + a2;
    PXFloatSign();
    v10 = v9;
    PXFloatSign();
    if (v10 != v11)
    {
      return a3;
    }
  }

  return a1;
}

@end