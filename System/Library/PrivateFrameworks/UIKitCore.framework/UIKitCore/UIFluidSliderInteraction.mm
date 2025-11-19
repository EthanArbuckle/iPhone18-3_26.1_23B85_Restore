@interface UIFluidSliderInteraction
@end

@implementation UIFluidSliderInteraction

void __59___UIFluidSliderInteraction_initWithConfiguration_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _issueUpdate];
}

uint64_t __46___UIFluidSliderInteraction_setConfiguration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _normalizedTrackSize];
  v3 = v2;
  v4 = [*(a1 + 32) _trackWidth];
  [v4 setValue:v3];

  [*(a1 + 32) _normalizedTrackSize];
  v6 = v5;
  v7 = [*(a1 + 32) _trackLength];
  [v7 setValue:v6];

  v8 = *(a1 + 32);
  [v8 value];

  return [v8 _targetNewValue:?];
}

void __45___UIFluidSliderInteraction__targetNewValue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _animatedValue];
  [v2 setValue:v1];
}

void __45___UIFluidSliderInteraction__targetNewScale___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _trackScale];
  [v2 setValue:v1];
}

void __59___UIFluidSliderInteraction__cancelDriversExcludingDriver___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _drivers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (v7 != *(a1 + 40))
        {
          [v7 cancel];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void __49___UIFluidSliderInteraction__animate_withSpring___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048627 updateReason:v1 animations:*&v3.minimum, *&v3.maximum, *&v3.preferred];
}

@end