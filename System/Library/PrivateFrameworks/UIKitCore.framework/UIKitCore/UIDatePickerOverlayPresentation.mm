@interface UIDatePickerOverlayPresentation
@end

@implementation UIDatePickerOverlayPresentation

uint64_t __64___UIDatePickerOverlayPresentation_presentDatePicker_onDismiss___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    [*(a1 + 32) set_overlayPresentation:*(a1 + 40)];
    v3 = [*(a1 + 40) platterView];

    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (v3)
    {
      [v4 _transitionToDatePicker:v5];
    }

    else
    {
      [v4 _presentNewDatePicker:v5];
    }

    v8 = [*(a1 + 32) datePickerMode];
    v9 = 3;
    if (!v8)
    {
      v9 = 1;
    }

    if (v8 == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9;
    }

    [*(a1 + 40) setActiveMode:v10];
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);

    return [v11 setDismissHandler:v12];
  }

  else
  {
    result = *(a1 + 48);
    if (result)
    {
      v7 = *(result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t __64___UIDatePickerOverlayPresentation_dismissPresentationAnimated___block_invoke(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) overlayPlatterInitialScale];
  v3 = v2;
  CGAffineTransformMakeScale(&v19, v2, v2);
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v18 = v19;
  [v4 setTransform:&v18];
  [*(*(*(a1 + 40) + 8) + 40) bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [*(*(*(a1 + 32) + 8) + 40) overlayPlatterInitialHeight];
  v14 = v13;
  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  Height = CGRectGetHeight(v20);
  if (Height >= v14 / v3)
  {
    v16 = v14 / v3;
  }

  else
  {
    v16 = Height;
  }

  v21.origin.x = v6;
  v21.origin.y = v8;
  v21.size.width = v10;
  v21.size.height = v12;
  [*(*(*(a1 + 40) + 8) + 40) setBounds:{0.0, 0.0, CGRectGetWidth(v21), v16}];
  [*(*(*(a1 + 40) + 8) + 40) setAlpha:0.0];
  return [*(*(*(a1 + 40) + 8) + 40) layoutIfNeeded];
}

uint64_t __64___UIDatePickerOverlayPresentation_dismissPresentationAnimated___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(*(result + 32) + 8) + 40) removeFromSuperview];
  }

  return result;
}

void __81___UIDatePickerOverlayPresentation__prepareDatePickerPresentationWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPresentingContainerViewController:0];
  [*(a1 + 32) activeDatePicker];

  (*(*(*(a1 + 32) + 8) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

uint64_t __58___UIDatePickerOverlayPresentation__presentNewDatePicker___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBounds:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  [*(a1 + 32) setAlpha:1.0];
  return [*(a1 + 32) layoutIfNeeded];
}

uint64_t __58___UIDatePickerOverlayPresentation__presentNewDatePicker___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setAlpha:0.0];
}

uint64_t __60___UIDatePickerOverlayPresentation__transitionToDatePicker___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 128);
  v6 = *(a1 + 112);
  v7 = v2;
  v8 = *(a1 + 144);
  v3 = [*(*(*(a1 + 32) + 8) + 40) contentView];
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  [v3 setTransform:v5];

  [*(*(*(a1 + 40) + 8) + 40) setBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(*(*(a1 + 40) + 8) + 40) setCenter:{*(a1 + 80), *(a1 + 88)}];
  [*(*(*(a1 + 40) + 8) + 40) datePickerTransitionAnimation];
  return [*(*(*(a1 + 40) + 8) + 40) layoutIfNeeded];
}

uint64_t __60___UIDatePickerOverlayPresentation__transitionToDatePicker___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(*(result + 32) + 8) + 40) datePickerTransitionCompletion];
  }

  return result;
}

void __60___UIDatePickerOverlayPresentation__transitionToDatePicker___block_invoke_4(uint64_t a1)
{
  [UIView performWithoutAnimation:*(a1 + 40)];
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60___UIDatePickerOverlayPresentation__transitionToDatePicker___block_invoke_5;
  v5[3] = &unk_1E70F2F20;
  v5[4] = *(a1 + 56);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60___UIDatePickerOverlayPresentation__transitionToDatePicker___block_invoke_6;
  v3[3] = &unk_1E70F3608;
  v4 = *(a1 + 48);
  [v2 animateReducedMotionTransitionWithAnimations:v5 completion:v3];
}

uint64_t __76___UIDatePickerOverlayPresentation_animatePresentWithAnimations_completion___block_invoke(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

uint64_t __79___UIDatePickerOverlayPresentation_animateTransitionWithAnimations_completion___block_invoke(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

uint64_t __78___UIDatePickerOverlayPresentation_animateDismissalWithAnimations_completion___block_invoke(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

@end