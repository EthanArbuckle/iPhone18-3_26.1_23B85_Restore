@interface UIInteractivePageControlVisualProvider
@end

@implementation UIInteractivePageControlVisualProvider

void __50___UIInteractivePageControlVisualProvider_prepare__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(_UIInteractivePageControlVisualProvider *)WeakRetained _updateReuseQueue];
    [v2[1] setNeedsLayout];
    WeakRetained = v2;
  }
}

uint64_t __65___UIInteractivePageControlVisualProvider_setPreciseTouchedPage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v3[0] = *(a1 + 40);
  v3[1] = v1;
  v3[2] = *(a1 + 72);
  return [*(a1 + 32) setContentTransform:v3];
}

uint64_t __65___UIInteractivePageControlVisualProvider_setPreciseTouchedPage___block_invoke_2(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048628 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

uint64_t __68___UIInteractivePageControlVisualProvider_setPage_interactionState___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) currentPage];
  if (result == *(a1 + 40))
  {
    result = [*(a1 + 32) interactionState];
    if (result == *(a1 + 48))
    {
      v3 = *(a1 + 32);

      return [v3 setInteractionState:0];
    }
  }

  return result;
}

void __72___UIInteractivePageControlVisualProvider__setDisplayedPage_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) continuousDisplayedPage];
  [v3 setValue:v2];

  v4 = [*(a1 + 32) indicatorFeed];
  v17 = [v4 activeIndicatorForPage:*(a1 + 48)];

  v5 = [*(a1 + 32) indicatorFeed];
  v6 = [v5 activeIndicatorForPage:*(a1 + 40)];

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v9 <= v8)
  {
    v10 = 2 * (v9 < v8);
  }

  else
  {
    v10 = 1;
  }

  if (v7)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  [v17 setMode:-[_UIInteractivePageControlVisualProvider _indicatorModeForPage:](v7 direction:{v9), v11}];
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  if (v12 <= v13)
  {
    v15 = 2 * (v12 < v13);
  }

  else
  {
    v15 = 1;
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  [v6 setMode:-[_UIInteractivePageControlVisualProvider _indicatorModeForPage:](v14 direction:{v12), v16}];
}

uint64_t __72___UIInteractivePageControlVisualProvider__setDisplayedPage_completion___block_invoke_2(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048628 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

uint64_t __72___UIInteractivePageControlVisualProvider__setDisplayedPage_completion___block_invoke_3(uint64_t result, int a2, char a3)
{
  if (a2 && (a3 & 1) == 0)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

id *__56___UIInteractivePageControlVisualProvider_setScrubbing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentView];
  [v2 setTransform:&v6];

  if (*(a1 + 88))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [*(a1 + 32) scrubProgress];
  [v4 setValue:v3];

  return [(_UIInteractivePageControlVisualProvider *)*(a1 + 32) _updateIndicatorMode];
}

uint64_t __56___UIInteractivePageControlVisualProvider_setScrubbing___block_invoke_2(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048628 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

uint64_t __62___UIInteractivePageControlVisualProvider_setPlatterExpanded___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

uint64_t __62___UIInteractivePageControlVisualProvider_setPlatterExpanded___block_invoke_2(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048628 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

@end