@interface UIStatusBarDynamicSplitPerformBaseAnimation
@end

@implementation UIStatusBarDynamicSplitPerformBaseAnimation

uint64_t ___UIStatusBarDynamicSplitPerformBaseAnimation_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 49);
  v4 = *(a1 + 32);
  if (v2 == 1)
  {
    if (v3)
    {
      [v4 setDynamicHidingAlpha:0.0];
      CGAffineTransformMakeScale(&v16, *(a1 + 40), *(a1 + 40));
      v5 = *(a1 + 32);
      v13 = *&v16.a;
      v14 = *&v16.c;
      v6 = *&v16.tx;
LABEL_6:
      v15 = v6;
      return [v5 setDynamicHidingTransform:&v13];
    }

    [v4 setAlpha:0.0];
    CGAffineTransformMakeScale(&v12, *(a1 + 40), *(a1 + 40));
    v9 = *(a1 + 32);
    v13 = *&v12.a;
    v14 = *&v12.c;
    v10 = *&v12.tx;
  }

  else
  {
    if (v3)
    {
      [v4 setDynamicHidingAlpha:1.0];
      v5 = *(a1 + 32);
      v7 = *(MEMORY[0x1E695EFD0] + 16);
      v13 = *MEMORY[0x1E695EFD0];
      v14 = v7;
      v6 = *(MEMORY[0x1E695EFD0] + 32);
      goto LABEL_6;
    }

    [v4 setAlpha:1.0];
    v9 = *(a1 + 32);
    v11 = *(MEMORY[0x1E695EFD0] + 16);
    v13 = *MEMORY[0x1E695EFD0];
    v14 = v11;
    v10 = *(MEMORY[0x1E695EFD0] + 32);
  }

  v15 = v10;
  return [v9 setTransform:&v13];
}

@end