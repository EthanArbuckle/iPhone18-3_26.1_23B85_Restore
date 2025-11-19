@interface UIStatusBarDynamicSplitDefaultAnimation
@end

@implementation UIStatusBarDynamicSplitDefaultAnimation

void ___UIStatusBarDynamicSplitDefaultAnimation_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [a2 type];
  v10 = [v7 region];
  v11 = [v10 identifier];
  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  if (v9 == 2)
  {
    [v7 setAbsoluteFrame:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56)}];
  }

  else
  {
    [v7 setAlpha:0.0];
    CGAffineTransformMakeScale(&v16, 0.85, 0.85);
    v15 = v16;
    [v7 setTransform:&v15];
  }

  if (v9 == 1)
  {
    v14 = 0.3;
  }

  else
  {
    v14 = 0.0;
  }

  _UIStatusBarDynamicSplitPerformBaseAnimation(v7, v9 == 2, 0, 0, v8, 0.85, 0.25, v14);
}

uint64_t ___UIStatusBarDynamicSplitDefaultAnimation_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 type] == 2)
  {
    v6 = [v5 region];
    v7 = [v6 isEnabled];

    if (v7)
    {
      [v5 absoluteFrame];
      v8 = *(*(a1 + 32) + 8);
      v8[4] = v9;
      v8[5] = v10;
      v8[6] = v11;
      v8[7] = v12;
      v13 = 1;
      [v5 setFloating:1];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

uint64_t ___UIStatusBarDynamicSplitDefaultAnimation_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 region];
  v4 = [v3 identifier];
  v5 = [v4 isEqual:*(*(*(a1 + 32) + 8) + 40)];

  return v5;
}

@end