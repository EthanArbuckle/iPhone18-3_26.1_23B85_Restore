@interface UIStatusBarDualIndicatorItem
@end

@implementation UIStatusBarDualIndicatorItem

void __93___UIStatusBarDualIndicatorItem_additionRemovalAnimationForSubItem_image_update_displayItem___block_invoke(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if (a1[4])
  {
    [a1[5] setImage:?];
    [a1[6] itemSpacing];
    v7 = v6;
    v8 = [a1[6] itemSpacingConstraint];
    [v8 setConstant:v7];

    [a1[6] additionRemovalScale];
    v10 = v9;
    [a1[6] additionRemovalScale];
    CGAffineTransformMakeScale(&v30, v10, v11);
    v12 = a1[5];
    v29 = v30;
    [v12 setTransform:&v29];
    [a1[5] setAlpha:0.0];
  }

  [a1[6] additionRemovalDuration];
  v14 = v13;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __93___UIStatusBarDualIndicatorItem_additionRemovalAnimationForSubItem_image_update_displayItem___block_invoke_2;
  v25[3] = &unk_1E70F6228;
  v26 = a1[4];
  v15 = a1[5];
  v16 = a1[6];
  v27 = v15;
  v28 = v16;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __93___UIStatusBarDualIndicatorItem_additionRemovalAnimationForSubItem_image_update_displayItem___block_invoke_3;
  v20[3] = &unk_1E71042A8;
  v21 = a1[5];
  v17 = a1[4];
  v18 = a1[6];
  v22 = v17;
  v23 = v18;
  v24 = v5;
  v19 = v5;
  [UIView animateWithDuration:v25 animations:v20 completion:v14];
}

uint64_t __93___UIStatusBarDualIndicatorItem_additionRemovalAnimationForSubItem_image_update_displayItem___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = (a1 + 40);
    v2 = *(a1 + 40);
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&v12.a = *MEMORY[0x1E695EFD0];
    *&v12.c = v4;
    *&v12.tx = *(MEMORY[0x1E695EFD0] + 32);
    [v2 setTransform:&v12];
    v5 = 1.0;
  }

  else
  {
    [*(a1 + 48) additionRemovalScale];
    v7 = v6;
    [*(a1 + 48) additionRemovalScale];
    CGAffineTransformMakeScale(&v11, v7, v8);
    v9 = *(a1 + 40);
    v3 = (a1 + 40);
    v12 = v11;
    [v9 setTransform:&v12];
    v5 = 0.0;
  }

  return [*v3 setAlpha:v5];
}

uint64_t __93___UIStatusBarDualIndicatorItem_additionRemovalAnimationForSubItem_image_update_displayItem___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setImage:*(a1 + 40)];
    if (!*(a1 + 40))
    {
      v3 = [*(a1 + 48) itemSpacingConstraint];
      [v3 setConstant:0.0];
    }

    v4 = *(a1 + 32);
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    v7[0] = *MEMORY[0x1E695EFD0];
    v7[1] = v5;
    v7[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v4 setTransform:v7];
    [*(a1 + 32) setAlpha:1.0];
  }

  return (*(*(a1 + 56) + 16))();
}

@end