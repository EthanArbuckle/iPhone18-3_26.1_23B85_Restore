@interface UIFluidSliderDiscreteButtonDriver
@end

@implementation UIFluidSliderDiscreteButtonDriver

void __58___UIFluidSliderDiscreteButtonDriver__handleButton_state___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _pressedButton])
  {
    [WeakRetained _incrementValue];
    [WeakRetained set_isRepeating:1];
  }
}

void __58___UIFluidSliderDiscreteButtonDriver__handleButton_state___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _releaseCurrentlyPressedButton];
}

uint64_t __60___UIFluidSliderDiscreteButtonDriver__issueUpdateWithValue___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __60___UIFluidSliderDiscreteButtonDriver__issueUpdateWithValue___block_invoke_2;
  v2[3] = &unk_1E7116870;
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048627 updateReason:v2 animations:*&v6.minimum, *&v6.maximum, *&v6.preferred];
}

void __60___UIFluidSliderDiscreteButtonDriver__issueUpdateWithValue___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) drivable];
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v4;
  v6 = *(a1 + 72);
  [v2 fluidSliderDriver:v3 didGenerateUpdate:v5];
}

@end