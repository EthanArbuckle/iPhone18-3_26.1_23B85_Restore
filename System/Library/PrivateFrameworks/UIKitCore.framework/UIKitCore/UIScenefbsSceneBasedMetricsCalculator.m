@interface UIScenefbsSceneBasedMetricsCalculator
@end

@implementation UIScenefbsSceneBasedMetricsCalculator

uint64_t __75___UIScenefbsSceneBasedMetricsCalculator__updateMetricsOnWindows_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = v3;
    v7 = [v6 _affectsScreenOrientation];
    v8 = [UIApp _viewServiceIgnoresSceneForLegacyInterfaceOrientation:v6];
    if ([v6 _isInternal])
    {
      v9 = [v6 _affectsAppLifecycleIfInternal];
    }

    else
    {
      v9 = 1;
    }

    v11 = [v6 screen];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v13 = [WeakRetained screen];
    v14 = [v11 isEqual:v13];

    if (v9)
    {
      v10 = v14 & v7 & (v8 ^ 1u);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end