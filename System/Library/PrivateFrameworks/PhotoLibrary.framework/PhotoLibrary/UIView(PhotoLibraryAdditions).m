@interface UIView(PhotoLibraryAdditions)
- (uint64_t)pl_drawBorderWithColor:()PhotoLibraryAdditions width:;
- (uint64_t)pl_isOnScreen:()PhotoLibraryAdditions;
- (uint64_t)pl_setHidden:()PhotoLibraryAdditions delay:animated:;
@end

@implementation UIView(PhotoLibraryAdditions)

- (uint64_t)pl_setHidden:()PhotoLibraryAdditions delay:animated:
{
  if (a3)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  result = [a1 alpha];
  if (v9 != v7)
  {
    if (a4)
    {
      [a1 setHidden:0];
      [objc_opt_class() pl_setHiddenAnimationDuration];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __61__UIView_PhotoLibraryAdditions__pl_setHidden_delay_animated___block_invoke;
      v12[3] = &unk_2782A22F0;
      v12[4] = a1;
      *&v12[5] = v7;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __61__UIView_PhotoLibraryAdditions__pl_setHidden_delay_animated___block_invoke_2;
      v10[3] = &unk_2782A2318;
      v10[4] = a1;
      *&v10[5] = v7;
      v11 = a3;
      return [MEMORY[0x277D75D18] animateWithDuration:0 delay:v12 options:v10 animations:? completion:?];
    }

    else
    {
      [objc_msgSend(a1 "layer")];
      [a1 setHidden:a3];

      return [a1 setAlpha:v7];
    }
  }

  return result;
}

- (uint64_t)pl_drawBorderWithColor:()PhotoLibraryAdditions width:
{
  v6 = [a1 layer];
  [v6 setBorderColor:{objc_msgSend(a4, "CGColor")}];

  return [v6 setBorderWidth:a2];
}

- (uint64_t)pl_isOnScreen:()PhotoLibraryAdditions
{
  [a1 bounds];
  [a1 convertRect:0 toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [a3 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = [a1 window];
  if (result)
  {
    v22 = v6;
    v23 = v8;
    v24 = v10;
    v25 = v12;
    v26 = v14;
    v27 = v16;
    v28 = v18;
    v29 = v20;

    return CGRectIntersectsRect(*&v22, *&v26);
  }

  return result;
}

@end