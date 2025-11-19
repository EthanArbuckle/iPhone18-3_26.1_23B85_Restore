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
  v1 = [a1 px_barAppearance];
  if ([v1 isEnabled])
  {
    v2 = [v1 prefersToolbarVisible];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)pu_isPresenting
{
  v1 = [a1 presentedViewController];
  v2 = v1 != 0;

  return v2;
}

- (void)_pu_setPreferredStatusBarUpdateAnimation:()PhotosUI
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  objc_setAssociatedObject(a1, @"PUPreferredStatusBarUpdateAnimationAssociationKey", v2, 1);
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

  v11 = [a1 tabBarController];
  v9 = [v11 contentScrollView];
  v10 = [v9 _isAutomaticContentOffsetAdjustmentEnabled];
  [v9 _setAutomaticContentOffsetAdjustmentEnabled:0];
  if (a3)
  {
    [v11 showBarWithTransition:v8 duration:*&a5];
  }

  else
  {
    [v11 hideBarWithTransition:v8 duration:*&a5];
  }

  [v9 _setAutomaticContentOffsetAdjustmentEnabled:v10];
}

- (void)_pu_setToolbarVisible:()PhotosUI withAnimationSettings:
{
  v16 = [a1 navigationController];
  v8 = [v16 isToolbarHidden] == a3;
  v9 = v16;
  if (v8)
  {
    v10 = *&a5;
    v11 = [v16 contentScrollView];
    v12 = [v11 _isAutomaticContentOffsetAdjustmentEnabled];
    [v11 _setAutomaticContentOffsetAdjustmentEnabled:0];
    if (a4 == 2)
    {
      v13 = a3 ^ 1u;
      v14 = v16;
      v15 = 4;
    }

    else
    {
      if (a4 != 1)
      {
        if (!a4)
        {
          [v16 setToolbarHidden:a3 ^ 1u animated:0];
        }

        goto LABEL_10;
      }

      v13 = a3 ^ 1u;
      v14 = v16;
      v15 = 15;
    }

    [v14 _setToolbarHidden:v13 edge:v15 duration:v10];
LABEL_10:
    [v11 _setAutomaticContentOffsetAdjustmentEnabled:v12];

    v9 = v16;
  }
}

- (void)_pu_setNavigationBarVisible:()PhotosUI withAnimationSettings:
{
  v12 = [a1 navigationController];
  v8 = [v12 isNavigationBarHidden] == a3;
  v9 = v12;
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

        [v12 setNavigationBarHidden:a3 ^ 1u animated:{0, *&a5}];
        goto LABEL_10;
      }

      v10 = a3 ^ 1u;
      v11 = 15;
    }

    [v12 _setNavigationBarHidden:v10 edge:v11 duration:*&a5];
LABEL_10:
    v9 = v12;
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

  [a1 _pu_setPreferredStatusBarUpdateAnimation:v6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__UIViewController_PhotosUI___pu_updateStatusBarVisibilityWithAnimationSettings___block_invoke;
  v9[3] = &unk_1E7B80DD0;
  v9[4] = a1;
  return [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:*&a4];
}

- (void)_pu_performBarsVisibilityUpdatesWithAnimationSettings:()PhotosUI isStatusBarHidden:
{
  v9 = [a1 prefersStatusBarHidden];
  v10 = [a1 pu_wantsNavigationBarVisible];
  v11 = [a1 pu_wantsToolbarVisible];
  v12 = [a1 pu_wantsTabBarVisible];
  v15 = [a1 navigationController];
  v13 = [v15 isNavigationBarHidden];
  v14 = [v15 _useStandardStatusBarHeight];
  if (v9 != a5 && v10 == v13 && v9 != v10)
  {
    [v15 _setUseStandardStatusBarHeight:1];
  }

  if (v9)
  {
    [a1 _pu_updateStatusBarVisibilityWithAnimationSettings:{a3, a4}];
    [a1 _pu_setNavigationBarVisible:v10 withAnimationSettings:{a3, a4}];
    [a1 _pu_setTabBarVisible:v12 withAnimationSettings:{a3, a4}];
    [a1 _pu_setToolbarVisible:v11 withAnimationSettings:{a3, a4}];
  }

  else
  {
    [a1 _pu_setNavigationBarVisible:v10 withAnimationSettings:{a3, a4}];
    [a1 _pu_setTabBarVisible:v12 withAnimationSettings:{a3, a4}];
    [a1 _pu_setToolbarVisible:v11 withAnimationSettings:{a3, a4}];
    [a1 _pu_updateStatusBarVisibilityWithAnimationSettings:{a3, a4}];
  }

  [v15 _setUseStandardStatusBarHeight:v14];
}

- (void)pu_performBarsVisibilityUpdatesWithAnimationSettings:()PhotosUI
{
  v7 = [a1 px_isVisible];
  v14 = [a1 navigationController];
  v8 = [v14 topViewController];

  v9 = v14;
  if (v14)
  {
    v10 = v8 == a1;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v7 && v11)
  {
    v12 = [MEMORY[0x1E69DC668] sharedApplication];
    v13 = [v12 isStatusBarHidden];

    [a1 _pu_performBarsVisibilityUpdatesWithAnimationSettings:a3 isStatusBarHidden:{a4, v13}];
    v9 = v14;
  }
}

- (uint64_t)pu_preferredStatusBarUpdateAnimation
{
  v1 = objc_getAssociatedObject(a1, @"PUPreferredStatusBarUpdateAnimationAssociationKey");
  v2 = [v1 integerValue];

  return v2;
}

- (void)pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:()PhotosUI
{
  v5 = [a1 pu_navigationController];
  [v5 viewController:a1 willSetupInitialBarsVisibilityOnViewWillAppearAnimated:a3];

  v13 = [a1 transitionCoordinator];
  if (([v13 isCancelled] & 1) == 0)
  {
    if (a3)
    {
      [v13 transitionDuration];
      v7 = v6;
      v8 = 1;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = [MEMORY[0x1E69DC668] sharedApplication];
    v10 = [v9 isStatusBarHidden];

    v11 = [a1 navigationController];
    v12 = [v11 pu_currentNavigationTransition];

    if (v12)
    {
      v10 = [v12 wasStatusBarHiddenBeforeTransition];
    }

    [a1 _pu_performBarsVisibilityUpdatesWithAnimationSettings:v8 isStatusBarHidden:{v7, v10}];
  }
}

- (uint64_t)pu_wantsTabBarVisible
{
  v1 = [a1 px_barAppearance];
  if ([v1 isEnabled])
  {
    v2 = [v1 prefersTabBarVisible];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

- (uint64_t)pu_wantsNavigationBarVisible
{
  v1 = [a1 px_barAppearance];
  if ([v1 isEnabled])
  {
    v2 = [v1 prefersNavigationBarVisible];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

+ (id)pu_currentViewControllerStack
{
  v25 = *MEMORY[0x1E69E9840];
  if (pu_currentViewControllerStack_onceToken != -1)
  {
    dispatch_once(&pu_currentViewControllerStack_onceToken, &__block_literal_global_98356);
  }

  v0 = [pu_currentViewControllerStack_window rootViewController];
  v1 = [v0 px_topmostPresentedViewController];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = v0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v18 = v4;
    v6 = [MEMORY[0x1E695DF70] arrayWithObject:v4];
    if ([v6 count])
    {
      v19 = v5;
      do
      {
        v7 = [v6 firstObject];
        [v6 removeObjectAtIndex:0];
        [v5 insertObject:v7 atIndex:0];
        v8 = [v7 childViewControllers];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 addObjectsFromArray:v8];
        }

        else
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v9 = v8;
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
                  v15 = [v14 view];
                  v16 = [v15 window];

                  if (v16 && ([v16 isHidden] & 1) == 0)
                  {
                    [v6 addObject:v14];
                  }
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
            }

            while (v11);
          }

          v5 = v19;
        }
      }

      while ([v6 count]);
    }

    v4 = v18;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end