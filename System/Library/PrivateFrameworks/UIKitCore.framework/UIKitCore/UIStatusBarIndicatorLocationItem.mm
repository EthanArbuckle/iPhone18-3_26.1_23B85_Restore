@interface UIStatusBarIndicatorLocationItem
@end

@implementation UIStatusBarIndicatorLocationItem

void __63___UIStatusBarIndicatorLocationItem_applyUpdate_toDisplayItem___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63___UIStatusBarIndicatorLocationItem_applyUpdate_toDisplayItem___block_invoke_2;
  v15[3] = &unk_1E70F3590;
  v16 = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63___UIStatusBarIndicatorLocationItem_applyUpdate_toDisplayItem___block_invoke_3;
  v10[3] = &unk_1E71042A8;
  v11 = *(a1 + 32);
  v12 = v16;
  v13 = *(a1 + 40);
  v14 = v7;
  v8 = v7;
  v9 = v16;
  [UIView animateWithDuration:v15 animations:v10 completion:0.166666667];
}

uint64_t __63___UIStatusBarIndicatorLocationItem_applyUpdate_toDisplayItem___block_invoke_2(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.66, 0.66);
  v2 = *(a1 + 32);
  v4 = v5;
  [v2 setTransform:&v4];
  return [*(a1 + 32) setAlpha:0.25];
}

void __63___UIStatusBarIndicatorLocationItem_applyUpdate_toDisplayItem___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v9.receiver = *(a1 + 48);
    v9.super_class = _UIStatusBarIndicatorLocationItem;
    v5 = objc_msgSendSuper2(&v9, sel_applyUpdate_toDisplayItem_, v4, v3);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63___UIStatusBarIndicatorLocationItem_applyUpdate_toDisplayItem___block_invoke_4;
    v7[3] = &unk_1E70F3590;
    v8 = *(a1 + 40);
    [UIView animateWithDuration:v7 animations:*(a1 + 56) completion:0.166666667];
  }

  else
  {
    v6 = *(*(a1 + 56) + 16);

    v6();
  }
}

uint64_t __63___UIStatusBarIndicatorLocationItem_applyUpdate_toDisplayItem___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  return [*(a1 + 32) setAlpha:1.0];
}

@end