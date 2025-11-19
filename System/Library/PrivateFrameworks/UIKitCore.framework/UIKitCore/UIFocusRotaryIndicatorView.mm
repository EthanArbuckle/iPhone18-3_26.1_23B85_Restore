@interface UIFocusRotaryIndicatorView
@end

@implementation UIFocusRotaryIndicatorView

uint64_t __54___UIFocusRotaryIndicatorView_toggleVisible_animated___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54___UIFocusRotaryIndicatorView_toggleVisible_animated___block_invoke_2;
  v6[3] = &unk_1E70F3590;
  v6[4] = *(a1 + 32);
  [UIView animateWithDuration:v6 animations:0.15];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  return [*(a1 + 32) layoutIfNeeded];
}

void __54___UIFocusRotaryIndicatorView_toggleVisible_animated___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 488);
  *(v1 + 488) = 0;
}

uint64_t __54___UIFocusRotaryIndicatorView_toggleVisible_animated___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 448);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

uint64_t __54___UIFocusRotaryIndicatorView_toggleVisible_animated___block_invoke_5(uint64_t a1)
{
  memset(&v11, 0, sizeof(v11));
  v2 = *(a1 + 32);
  v3 = *(v2 + 448);
  if (v3)
  {
    [v3 transform];
    v2 = *(a1 + 32);
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  CGAffineTransformRotate(&v11, &v10, 1.96349541);
  v4 = *(v2 + 448);
  v10 = v11;
  [v4 setTransform:&v10];
  memset(&v10, 0, sizeof(v10));
  v5 = *(a1 + 32);
  v6 = *(v5 + 448);
  if (v6)
  {
    [v6 transform];
    v5 = *(a1 + 32);
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  CGAffineTransformRotate(&v10, &v9, 1.96349541);
  v7 = *(v5 + 448);
  v9 = v10;
  return [v7 setTransform:&v9];
}

void __54___UIFocusRotaryIndicatorView_toggleVisible_animated___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 496);
  *(v1 + 496) = 0;
}

uint64_t __54___UIFocusRotaryIndicatorView_toggleVisible_animated___block_invoke_7(uint64_t a1)
{
  memset(&v9, 0, sizeof(v9));
  if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_RotaryFocusRingHiddenScale, @"RotaryFocusRingHiddenScale", _UIInternalPreferenceUpdateDouble))
  {
    v2 = 0.1;
  }

  else
  {
    v2 = *&qword_1EA95E968;
  }

  if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_RotaryFocusRingHiddenScale, @"RotaryFocusRingHiddenScale", _UIInternalPreferenceUpdateDouble))
  {
    v3 = 0.1;
  }

  else
  {
    v3 = *&qword_1EA95E968;
  }

  CGAffineTransformMakeScale(&v9, v2, v3);
  v4 = *(*(a1 + 32) + 448);
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *&v8.a = *MEMORY[0x1E695EFD0];
  *&v8.c = v5;
  *&v8.tx = *(MEMORY[0x1E695EFD0] + 32);
  [v4 setTransform:&v8];
  v6 = *(a1 + 32);
  v8 = v9;
  [v6 setTransform:&v8];
  [*(a1 + 32) setAlpha:0.0];
  return [*(a1 + 32) layoutIfNeeded];
}

void __54___UIFocusRotaryIndicatorView_toggleVisible_animated___block_invoke_8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 480);
  *(v2 + 480) = 0;

  v4 = *(*(a1 + 32) + 448);
  v8 = *(MEMORY[0x1E695EFD0] + 16);
  v10 = *MEMORY[0x1E695EFD0];
  v9 = v10;
  v11 = v8;
  v12 = *(MEMORY[0x1E695EFD0] + 32);
  v7 = v12;
  [v4 setTransform:&v10];
  v5 = *(a1 + 32);
  v10 = v9;
  v11 = v8;
  v12 = v7;
  [v5 setTransform:&v10];
  v6 = [*(*(a1 + 32) + 472) layer];
  [v6 setCompositingFilter:0];
}

@end