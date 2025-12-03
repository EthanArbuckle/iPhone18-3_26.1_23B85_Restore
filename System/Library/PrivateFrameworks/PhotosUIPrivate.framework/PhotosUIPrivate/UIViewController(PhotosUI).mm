@interface UIViewController(PhotosUI)
+ (id)pu_currentViewControllerStack;
- (BOOL)pu_isPresenting;
- (uint64_t)_pu_updateStatusBarVisibilityWithAnimationSettings:()PhotosUI;
- (uint64_t)pu_preferredStatusBarUpdateAnimation;
- (uint64_t)pu_wantsNavigationBarVisible;
- (uint64_t)pu_wantsTabBarVisible;
- (uint64_t)pu_wantsToolbarVisible;
- (void)_pu_performBarsVisibilityUpdatesWithAnimationSettings:()PhotosUI isStatusBarHidden:;
- (void)_pu_setNavigationBarVisible:()PhotosUI withAnimationSettings:;
- (void)_pu_setPreferredStatusBarUpdateAnimation:()PhotosUI;
- (void)_pu_setTabBarVisible:()PhotosUI withAnimationSettings:;
- (void)_pu_setToolbarVisible:()PhotosUI withAnimationSettings:;
- (void)pu_performBarsVisibilityUpdatesWithAnimationSettings:()PhotosUI;
- (void)pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:()PhotosUI;
@end

@implementation UIViewController(PhotosUI)

- (uint64_t)pu_wantsToolbarVisible
{
  px_barAppearance = [self px_barAppearance];
  if ([px_barAppearance isEnabled])
  {
    prefersToolbarVisible = [px_barAppearance prefersToolbarVisible];
  }

  else
  {
    prefersToolbarVisible = 0;
  }

  return prefersToolbarVisible;
}

- (BOOL)pu_isPresenting
{
  presentedViewController = [self presentedViewController];
  v2 = presentedViewController != 0;

  return v2;
}

- (void)_pu_setPreferredStatusBarUpdateAnimation:()PhotosUI
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  objc_setAssociatedObject(self, @"PUPreferredStatusBarUpdateAnimationAssociationKey", v2, 1);
}

- (void)_pu_setTabBarVisible:()PhotosUI withAnimationSettings:
{
  if (a4 == 1)
  {
    v7 = 6;
  }

  else
  {
    v7 = 0;
  }

  if (a4 == 2)
  {
    v8 = 7;
  }

  else
  {
    v8 = v7;
  }

  tabBarController = [self tabBarController];
  contentScrollView = [tabBarController contentScrollView];
  _isAutomaticContentOffsetAdjustmentEnabled = [contentScrollView _isAutomaticContentOffsetAdjustmentEnabled];
  [contentScrollView _setAutomaticContentOffsetAdjustmentEnabled:0];
  if (a3)
  {
    [tabBarController showBarWithTransition:v8 duration:*&a5];
  }

  else
  {
    [tabBarController hideBarWithTransition:v8 duration:*&a5];
  }

  [contentScrollView _setAutomaticContentOffsetAdjustmentEnabled:_isAutomaticContentOffsetAdjustmentEnabled];
}

- (void)_pu_setToolbarVisible:()PhotosUI withAnimationSettings:
{
  navigationController = [self navigationController];
  v8 = [navigationController isToolbarHidden] == a3;
  v9 = navigationController;
  if (v8)
  {
    v10 = *&a5;
    contentScrollView = [navigationController contentScrollView];
    _isAutomaticContentOffsetAdjustmentEnabled = [contentScrollView _isAutomaticContentOffsetAdjustmentEnabled];
    [contentScrollView _setAutomaticContentOffsetAdjustmentEnabled:0];
    if (a4 == 2)
    {
      v13 = a3 ^ 1u;
      v14 = navigationController;
      v15 = 4;
    }

    else
    {
      if (a4 != 1)
      {
        if (!a4)
        {
          [navigationController setToolbarHidden:a3 ^ 1u animated:0];
        }

        goto LABEL_10;
      }

      v13 = a3 ^ 1u;
      v14 = navigationController;
      v15 = 15;
    }

    [v14 _setToolbarHidden:v13 edge:v15 duration:v10];
LABEL_10:
    [contentScrollView _setAutomaticContentOffsetAdjustmentEnabled:_isAutomaticContentOffsetAdjustmentEnabled];

    v9 = navigationController;
  }
}

- (void)_pu_setNavigationBarVisible:()PhotosUI withAnimationSettings:
{
  navigationController = [self navigationController];
  v8 = [navigationController isNavigationBarHidden] == a3;
  v9 = navigationController;
  if (v8)
  {
    if (a4 == 2)
    {
      v10 = a3 ^ 1u;
      v11 = 1;
    }

    else
    {
      if (a4 != 1)
      {
        if (a4)
        {
          goto LABEL_11;
        }

        [navigationController setNavigationBarHidden:a3 ^ 1u animated:{0, *&a5}];
        goto LABEL_10;
      }

      v10 = a3 ^ 1u;
      v11 = 15;
    }

    [navigationController _setNavigationBarHidden:v10 edge:v11 duration:*&a5];
LABEL_10:
    v9 = navigationController;
  }

LABEL_11:
}

- (uint64_t)_pu_updateStatusBarVisibilityWithAnimationSettings:()PhotosUI
{
  v5 = 1;
  if (a3 == 2)
  {
    v5 = 2;
  }

  if (a3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  [self _pu_setPreferredStatusBarUpdateAnimation:v6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__UIViewController_PhotosUI___pu_updateStatusBarVisibilityWithAnimationSettings___block_invoke;
  v9[3] = &unk_1E7B80DD0;
  v9[4] = self;
  return [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:*&a4];
}

- (void)_pu_performBarsVisibilityUpdatesWithAnimationSettings:()PhotosUI isStatusBarHidden:
{
  prefersStatusBarHidden = [self prefersStatusBarHidden];
  pu_wantsNavigationBarVisible = [self pu_wantsNavigationBarVisible];
  pu_wantsToolbarVisible = [self pu_wantsToolbarVisible];
  pu_wantsTabBarVisible = [self pu_wantsTabBarVisible];
  navigationController = [self navigationController];
  isNavigationBarHidden = [navigationController isNavigationBarHidden];
  _useStandardStatusBarHeight = [navigationController _useStandardStatusBarHeight];
  if (prefersStatusBarHidden != a5 && pu_wantsNavigationBarVisible == isNavigationBarHidden && prefersStatusBarHidden != pu_wantsNavigationBarVisible)
  {
    [navigationController _setUseStandardStatusBarHeight:1];
  }

  if (prefersStatusBarHidden)
  {
    [self _pu_updateStatusBarVisibilityWithAnimationSettings:{a3, a4}];
    [self _pu_setNavigationBarVisible:pu_wantsNavigationBarVisible withAnimationSettings:{a3, a4}];
    [self _pu_setTabBarVisible:pu_wantsTabBarVisible withAnimationSettings:{a3, a4}];
    [self _pu_setToolbarVisible:pu_wantsToolbarVisible withAnimationSettings:{a3, a4}];
  }

  else
  {
    [self _pu_setNavigationBarVisible:pu_wantsNavigationBarVisible withAnimationSettings:{a3, a4}];
    [self _pu_setTabBarVisible:pu_wantsTabBarVisible withAnimationSettings:{a3, a4}];
    [self _pu_setToolbarVisible:pu_wantsToolbarVisible withAnimationSettings:{a3, a4}];
    [self _pu_updateStatusBarVisibilityWithAnimationSettings:{a3, a4}];
  }

  [navigationController _setUseStandardStatusBarHeight:_useStandardStatusBarHeight];
}

- (void)pu_performBarsVisibilityUpdatesWithAnimationSettings:()PhotosUI
{
  px_isVisible = [self px_isVisible];
  navigationController = [self navigationController];
  topViewController = [navigationController topViewController];

  v9 = navigationController;
  if (navigationController)
  {
    v10 = topViewController == self;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (px_isVisible && v11)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    isStatusBarHidden = [mEMORY[0x1E69DC668] isStatusBarHidden];

    [self _pu_performBarsVisibilityUpdatesWithAnimationSettings:a3 isStatusBarHidden:{a4, isStatusBarHidden}];
    v9 = navigationController;
  }
}

- (uint64_t)pu_preferredStatusBarUpdateAnimation
{
  v1 = objc_getAssociatedObject(self, @"PUPreferredStatusBarUpdateAnimationAssociationKey");
  integerValue = [v1 integerValue];

  return integerValue;
}

- (void)pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:()PhotosUI
{
  pu_navigationController = [self pu_navigationController];
  [pu_navigationController viewController:self willSetupInitialBarsVisibilityOnViewWillAppearAnimated:a3];

  transitionCoordinator = [self transitionCoordinator];
  if (([transitionCoordinator isCancelled] & 1) == 0)
  {
    if (a3)
    {
      [transitionCoordinator transitionDuration];
      v7 = v6;
      v8 = 1;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    isStatusBarHidden = [mEMORY[0x1E69DC668] isStatusBarHidden];

    navigationController = [self navigationController];
    pu_currentNavigationTransition = [navigationController pu_currentNavigationTransition];

    if (pu_currentNavigationTransition)
    {
      isStatusBarHidden = [pu_currentNavigationTransition wasStatusBarHiddenBeforeTransition];
    }

    [self _pu_performBarsVisibilityUpdatesWithAnimationSettings:v8 isStatusBarHidden:{v7, isStatusBarHidden}];
  }
}

- (uint64_t)pu_wantsTabBarVisible
{
  px_barAppearance = [self px_barAppearance];
  if ([px_barAppearance isEnabled])
  {
    prefersTabBarVisible = [px_barAppearance prefersTabBarVisible];
  }

  else
  {
    prefersTabBarVisible = 1;
  }

  return prefersTabBarVisible;
}

- (uint64_t)pu_wantsNavigationBarVisible
{
  px_barAppearance = [self px_barAppearance];
  if ([px_barAppearance isEnabled])
  {
    prefersNavigationBarVisible = [px_barAppearance prefersNavigationBarVisible];
  }

  else
  {
    prefersNavigationBarVisible = 1;
  }

  return prefersNavigationBarVisible;
}

+ (id)pu_currentViewControllerStack
{
  v25 = *MEMORY[0x1E69E9840];
  if (pu_currentViewControllerStack_onceToken != -1)
  {
    dispatch_once(&pu_currentViewControllerStack_onceToken, &__block_literal_global_98356);
  }

  rootViewController = [pu_currentViewControllerStack_window rootViewController];
  px_topmostPresentedViewController = [rootViewController px_topmostPresentedViewController];
  v2 = px_topmostPresentedViewController;
  if (px_topmostPresentedViewController)
  {
    v3 = px_topmostPresentedViewController;
  }

  else
  {
    v3 = rootViewController;
  }

  v4 = v3;

  if (v4)
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = v4;
    v6 = [MEMORY[0x1E695DF70] arrayWithObject:v4];
    if ([v6 count])
    {
      v19 = array;
      do
      {
        firstObject = [v6 firstObject];
        [v6 removeObjectAtIndex:0];
        [array insertObject:firstObject atIndex:0];
        childViewControllers = [firstObject childViewControllers];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 addObjectsFromArray:childViewControllers];
        }

        else
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v9 = childViewControllers;
          v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v21;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v21 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v20 + 1) + 8 * i);
                if ([v14 isViewLoaded])
                {
                  view = [v14 view];
                  window = [view window];

                  if (window && ([window isHidden] & 1) == 0)
                  {
                    [v6 addObject:v14];
                  }
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
            }

            while (v11);
          }

          array = v19;
        }
      }

      while ([v6 count]);
    }

    v4 = v18;
  }

  else
  {
    array = 0;
  }

  return array;
}

@end