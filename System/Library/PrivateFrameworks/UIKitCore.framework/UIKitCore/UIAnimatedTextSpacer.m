@interface UIAnimatedTextSpacer
@end

@implementation UIAnimatedTextSpacer

void __63___UIAnimatedTextSpacer_initWithSpringBehavior_delay_duration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(*(a1 + 32) + 56) presentationValue];
  [WeakRetained _updateAnimationWithPresentationValue:?];
}

uint64_t __40___UIAnimatedTextSpacer__startAnimation__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) setValue:*(*(a1 + 32) + 32)];
  result = *(*(a1 + 32) + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __40___UIAnimatedTextSpacer__startAnimation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finalizeAnimation];
}

void __78___UIAnimatedTextSpacer_beginExplicitHeightAnimationFromSource_toDestination___block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAnimationWithPresentationValue:a2];
}

void __78___UIAnimatedTextSpacer_beginExplicitHeightAnimationFromSource_toDestination___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finalizeAnimation];
}

@end