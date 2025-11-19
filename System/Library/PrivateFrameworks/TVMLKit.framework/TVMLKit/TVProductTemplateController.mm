@interface TVProductTemplateController
@end

@implementation TVProductTemplateController

void __46___TVProductTemplateController_viewDidAppear___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"filters.blurFilter.inputRadius"];
  [v3 setToValue:&unk_287E487F8];
  [v3 setDuration:0.4];
  [v3 setFillMode:*MEMORY[0x277CDA238]];
  [v3 setRemovedOnCompletion:0];
  [v3 setDelegate:*(a1 + 32)];
  v2 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
  [v3 setTimingFunction:v2];

  [*(*(a1 + 32) + 1080) addAnimation:v3 forKey:@"blurRadiusAnimation"];
}

void __61___TVProductTemplateController_configureAppearanceTransition__block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained navigationController];
    v5 = [v4 navigationBar];
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 49))
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [v5 _setBackgroundOpacity:v6];
  if (*(a1 + 49))
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  [v5 _setTitleOpacity:v7];
  v8 = *(a1 + 32);
  if (*(a1 + 49) == 1)
  {
    [*(a1 + 32) setTitle:0];
  }

  else
  {
    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 navigationItem];
    v11 = [v10 title];
    [v8 setTitle:v11];
  }

  if (*(a1 + 49))
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] tvmlkit_keyColor];
  }
  v12 = ;
  [v5 setTintColor:v12];
}

void __61___TVProductTemplateController_configureAppearanceTransition__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = a2;
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained navigationController];
    v5 = [v4 navigationBar];
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 49))
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [v5 _setBackgroundOpacity:v6];
  if (*(a1 + 49))
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  [v5 _setTitleOpacity:v7];
  v8 = *(a1 + 32);
  if (*(a1 + 49) == 1)
  {
    [*(a1 + 32) setTitle:0];
  }

  else
  {
    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 navigationItem];
    v11 = [v10 title];
    [v8 setTitle:v11];
  }

  if (*(a1 + 49))
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] tvmlkit_keyColor];
  }
  v12 = ;
  [v5 setTintColor:v12];

  v13 = objc_loadWeakRetained((a1 + 40));
  [v13 setNeedsStatusBarAppearanceUpdate];
}

uint64_t __83___TVProductTemplateController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1168) collectionViewLayout];
  [v2 invalidateLayout];

  v3 = *(a1 + 32);

  return [v3 configureAppearanceTransition];
}

void __52___TVProductTemplateController_scrollViewDidScroll___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 performSelector:sel__cancelImpressionsUpdate];
  }
}

uint64_t __62___TVProductTemplateController__updateTopHeroImageVisibility___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setTitleOpacity:1.0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 setTitle:v3];
}

uint64_t __62___TVProductTemplateController__updateTopHeroImageVisibility___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setTitleOpacity:0.0];
  v2 = *(a1 + 40);

  return [v2 setTitle:0];
}

void __78___TVProductTemplateController__spacingMetricsForViewControllers_contentSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 view];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  if ([v3 conformsToProtocol:&unk_287E7FA58])
  {
    v4 = [v3 rowMetricsForExpectedWidth:0 firstItemRowIndex:*(a1 + 48)];
    TVRowMetricsMakeWithList(v4, &v10);
    v6 = *(&v10 + 1);
    v5 = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
  }

  else
  {
    [v3 tv_sizeThatFits:{*(a1 + 48), 0.0}];
    v6 = v7;
    v5 = 0;
  }

  *(*(*(a1 + 40) + 8) + 40) = v6 + *(*(*(a1 + 40) + 8) + 40);
  v8 = *(a1 + 32);
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v11 = v15;
  v12 = v16;
  v13 = v17;
  v14 = v18;
  v9 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:&v10];
  [v8 addObject:v9];
}

@end