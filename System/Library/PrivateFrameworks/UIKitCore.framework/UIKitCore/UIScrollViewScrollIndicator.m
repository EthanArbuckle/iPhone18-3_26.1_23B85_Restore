@interface UIScrollViewScrollIndicator
@end

@implementation UIScrollViewScrollIndicator

void __56___UIScrollViewScrollIndicator__layoutFillViewAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if ([*(a1 + 32) expandedForDirectManipulation])
  {
    v10 = [*(a1 + 32) _visualStyle];
    v11 = [v10 doesExpand];

    if (v11)
    {
      v12 = [*(a1 + 32) type];
      v13 = [*(a1 + 32) _visualStyle];
      [v13 staticDimensionExpandedSize];
      v15 = v14;

      if (v12 == 1)
      {
        v16 = v9;
      }

      else
      {
        v16 = v15;
      }

      if (v12 == 1)
      {
        v17 = v15;
      }

      else
      {
        v17 = v7;
      }

      [*(a1 + 32) _offsetFillViewRectForExpandedState:{v3, v5, v17, v16}];
      v3 = v18;
      v5 = v19;
      v7 = v20;
      v9 = v21;
    }
  }

  if ([*(a1 + 32) type] == 1)
  {
    v22 = v7;
  }

  else
  {
    v22 = v9;
  }

  v23 = *(a1 + 32);
  v24 = [v23 roundedFillView];
  [v24 frame];
  v26 = v25;
  v28 = v27;
  if ([v23 type] != 1)
  {
    v26 = v28;
  }

  if (v22 != v26)
  {
    if ([*(a1 + 32) type] == 1)
    {
      v29 = v7;
    }

    else
    {
      v29 = v9;
    }

    v30 = [*(a1 + 32) _visualStyle];
    [v30 fillViewCornerRadiusForStaticDimensionSize:v29];
    v32 = v31;

    v33 = [*(a1 + 32) roundedFillView];
    v34 = [v33 layer];
    [v34 setCornerRadius:v32];
  }

  v35 = [*(a1 + 32) roundedFillView];
  [v35 setFrame:{v3, v5, v7, v9}];
}

@end