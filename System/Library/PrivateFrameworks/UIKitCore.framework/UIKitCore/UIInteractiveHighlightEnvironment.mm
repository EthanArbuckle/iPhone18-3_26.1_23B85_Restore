@interface UIInteractiveHighlightEnvironment
@end

@implementation UIInteractiveHighlightEnvironment

uint64_t __96___UIInteractiveHighlightEnvironment_applyBackgroundEffectWithMagnitude_interactive_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presentationValue];
  v4 = v3;

  [*(*(a1 + 32) + 64) setFractionComplete:v4];
  result = *(*(a1 + 32) + 120);
  if (result)
  {
    v7 = *(result + 16);
    v5.n128_f64[0] = v4;

    return v7(v5);
  }

  return result;
}

void __96___UIInteractiveHighlightEnvironment_applyBackgroundEffectWithMagnitude_interactive_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setValue:v1];
}

uint64_t __96___UIInteractiveHighlightEnvironment_applyBackgroundEffectWithMagnitude_interactive_completion___block_invoke_3(uint64_t a1, uint64_t a2, char a3)
{
  if ((*(a1 + 56) & 1) == 0 && (a3 & 1) == 0 && [*(*(a1 + 32) + 104) isEqual:*(a1 + 40)])
  {
    [*(a1 + 32) finalizeBackgroundEffect];
  }

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __68___UIInteractiveHighlightEnvironment_setHidden_animated_completion___block_invoke(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  return [*(*(a1 + 32) + 16) setAlpha:v1];
}

uint64_t __68___UIInteractiveHighlightEnvironment_setHidden_animated_completion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setHidden:*(a1 + 48)];
  [*(*(a1 + 32) + 16) setAlpha:1.0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

BOOL __63___UIInteractiveHighlightEnvironment_indexOfViewRecordForView___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 view];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    *a4 = 1;
  }

  return v6 == v7;
}

BOOL __63___UIInteractiveHighlightEnvironment_removeViewRecordsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 view];

  if (v3)
  {
    v4 = [v2 interactiveHighlightEffects];
    v5 = [v4 count] == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void __65___UIInteractiveHighlightEnvironment_newBackgroundEffectAnimator__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundVisualEffectForProgress:1.6];
  [*(*(a1 + 32) + 32) setBackgroundEffects:v2];
}

@end