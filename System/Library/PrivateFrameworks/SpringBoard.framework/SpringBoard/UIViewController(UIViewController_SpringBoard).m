@interface UIViewController(UIViewController_SpringBoard)
+ (id)sb_firstDescendantOfViewControllers:()UIViewController_SpringBoard passingTest:;
- (SBMutableStatusBarSettings)sb_childOrPresentedViewControllerStatusBarSettings;
- (id)sb_firstDescendantOfClass:()UIViewController_SpringBoard;
- (id)sb_firstDescendantPassingTest:()UIViewController_SpringBoard;
- (uint64_t)sb_beginAppearanceTransitionIfNecessary:()UIViewController_SpringBoard animated:;
- (uint64_t)sb_endAppearanceTransitionIfNecessary;
- (uint64_t)sb_firstDescendantOfClassNamed:()UIViewController_SpringBoard;
@end

@implementation UIViewController(UIViewController_SpringBoard)

- (SBMutableStatusBarSettings)sb_childOrPresentedViewControllerStatusBarSettings
{
  v2 = [a1 _effectiveStatusBarStyleViewController];
  v3 = [a1 _effectiveStatusBarHiddenViewController];
  v4 = v3;
  if (v2 == a1 && v3 == a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = objc_alloc_init(SBMutableStatusBarSettings);
    v6 = [v4 _preferredStatusBarVisibility];
    v7 = [v2 preferredStatusBarStyle];
    if (v6)
    {
      v8 = 1.0;
      if (v6 == 1)
      {
        v8 = 0.0;
      }

      v9 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
      [(SBMutableStatusBarSettings *)v5 setAlpha:v9];
    }

    if (v7 != -1)
    {
      if (v7)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      v11 = [objc_alloc(MEMORY[0x277D760A8]) initWithStyle:v10];
      [(SBMutableStatusBarSettings *)v5 setLegibilitySettings:v11];
    }
  }

  return v5;
}

- (uint64_t)sb_beginAppearanceTransitionIfNecessary:()UIViewController_SpringBoard animated:
{
  result = [a1 isViewLoaded];
  if (result)
  {
    v8 = [a1 _appearState];
    if (a3)
    {
      if (!v8 || v8 == 3)
      {
        goto LABEL_5;
      }
    }

    else if ((v8 - 1) <= 1)
    {
LABEL_5:
      [a1 beginAppearanceTransition:a3 animated:a4];
      return 1;
    }

    return 0;
  }

  return result;
}

- (uint64_t)sb_endAppearanceTransitionIfNecessary
{
  result = [a1 isViewLoaded];
  if (result)
  {
    if (([a1 _appearState] & 0xFFFFFFFD) == 1)
    {
      [a1 endAppearanceTransition];
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (id)sb_firstDescendantOfViewControllers:()UIViewController_SpringBoard passingTest:
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 bs_firstObjectPassingTest:v7];
  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [v15 childViewControllers];
          [v9 addObjectsFromArray:v16];

          v17 = [v15 presentedViewController];
          [v9 _sb_safeAddObject:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      v8 = [a1 sb_firstDescendantOfViewControllers:v9 passingTest:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)sb_firstDescendantPassingTest:()UIViewController_SpringBoard
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v9[0] = a1;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = [v5 sb_firstDescendantOfViewControllers:v6 passingTest:v4];

  return v7;
}

- (id)sb_firstDescendantOfClass:()UIViewController_SpringBoard
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__UIViewController_UIViewController_SpringBoard__sb_firstDescendantOfClass___block_invoke;
  v5[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v5[4] = a3;
  v3 = [a1 sb_firstDescendantPassingTest:v5];

  return v3;
}

- (uint64_t)sb_firstDescendantOfClassNamed:()UIViewController_SpringBoard
{
  v4 = NSClassFromString(aClassName);

  return [a1 sb_firstDescendantOfClass:v4];
}

@end