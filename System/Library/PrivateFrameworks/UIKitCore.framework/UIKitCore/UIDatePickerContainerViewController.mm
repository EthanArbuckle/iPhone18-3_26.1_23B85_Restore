@interface UIDatePickerContainerViewController
@end

@implementation UIDatePickerContainerViewController

void __64___UIDatePickerContainerViewController_keyboardFrameWillChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentation];
  v3 = [v2 platterView];

  if (v3 && [v3 isUserInteractionEnabled])
  {
    [*(a1 + 32) keyboardAdjustmentOffset];
    v5 = v4;
    [v3 frame];
    v22 = CGRectOffset(v21, 0.0, -v5);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    v10 = [*(a1 + 32) presentation];
    v11 = [v10 activeDatePicker];
    v12 = [v11 _style];

    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    if (CGRectIntersectsRect(*(*(*(a1 + 40) + 8) + 32), v24))
    {
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v23 = CGRectIntersection(*(*(*(a1 + 40) + 8) + 32), v25);
      CGRectGetHeight(v23);
      [v12 overlayPlatterDefaultMargin];
    }

    UIRoundToViewScale(v3);
    v14 = v13;
    [*(a1 + 32) setKeyboardAdjustmentOffset:?];
    if (v14 != v5)
    {
      v15 = *(*(*(a1 + 48) + 8) + 24);
      v16 = *(*(*(a1 + 56) + 8) + 24);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __64___UIDatePickerContainerViewController_keyboardFrameWillChange___block_invoke_2;
      v17[3] = &unk_1E70F6848;
      v18 = v3;
      v19 = v5;
      v20 = v14;
      [UIView animateWithDuration:v16 delay:v17 options:0 animations:v15 completion:0.0];
    }
  }
}

uint64_t __64___UIDatePickerContainerViewController_keyboardFrameWillChange___block_invoke_2(uint64_t a1)
{
  memset(&v8, 0, sizeof(v8));
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 transform];
  }

  v3 = -*(a1 + 40);
  v6 = v8;
  CGAffineTransformTranslate(&v7, &v6, 0.0, v3);
  v8 = v7;
  v4 = *(a1 + 48);
  if (v4 != 0.0)
  {
    v6 = v8;
    CGAffineTransformTranslate(&v7, &v6, 0.0, v4);
    v8 = v7;
  }

  v7 = v8;
  return [*(a1 + 32) setTransform:&v7];
}

@end