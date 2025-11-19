@interface UITabBarController(PXProgrammaticNavigation)
- (id)px_navigationDestination;
- (uint64_t)nextExistingParticipantOnRouteToDestination:()PXProgrammaticNavigation;
- (void)_px_prepareNavigationFromViewController:()PXProgrammaticNavigation routingOptions:options:completionHandler:;
- (void)navigateToDestination:()PXProgrammaticNavigation options:completionHandler:;
- (void)px_switchToTabAndNavigateToDestination:()PXProgrammaticNavigation options:completionHandler:;
- (void)routingOptionsForDestination:()PXProgrammaticNavigation;
@end

@implementation UITabBarController(PXProgrammaticNavigation)

- (id)px_navigationDestination
{
  v1 = [a1 selectedViewController];
  v2 = [v1 px_navigationDestination];

  return v2;
}

- (void)px_switchToTabAndNavigateToDestination:()PXProgrammaticNavigation options:completionHandler:
{
  v7 = a3;
  v8 = a5;
  [a1 viewControllers];
  objc_claimAutoreleasedReturnValue();
  v7;
  PXFind();
}

- (void)navigateToDestination:()PXProgrammaticNavigation options:completionHandler:
{
  v9 = a3;
  v10 = a5;
  v11 = [a1 _nextExistingViewControllerOnRouteToDestination:v9];
  if (v11)
  {
    v12 = [a1 selectedViewController];
    if (v11 == v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = a1;
    }

    v14 = v13;
  }

  else
  {
    v14 = a1;
  }

  v15 = [v14 routingOptionsForDestination:v9];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__UITabBarController_PXProgrammaticNavigation__navigateToDestination_options_completionHandler___block_invoke;
  v18[3] = &unk_1E774C530;
  v18[4] = a1;
  v19 = v9;
  v21 = a2;
  v22 = a4;
  v20 = v10;
  v16 = v10;
  v17 = v9;
  [a1 _px_prepareNavigationFromViewController:v14 routingOptions:v15 options:a4 completionHandler:v18];
}

- (void)_px_prepareNavigationFromViewController:()PXProgrammaticNavigation routingOptions:options:completionHandler:
{
  v11 = a3;
  v12 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __129__UITabBarController_PXProgrammaticNavigation___px_prepareNavigationFromViewController_routingOptions_options_completionHandler___block_invoke;
  v16[3] = &unk_1E774C530;
  v16[4] = a1;
  v17 = v11;
  v18 = v12;
  v19 = a2;
  v20 = a5;
  v15.receiver = a1;
  v15.super_class = &off_1F1AFB000;
  v13 = v11;
  v14 = v12;
  objc_msgSendSuper2(&v15, sel__px_prepareNavigationFromViewController_routingOptions_options_completionHandler_, a1, a4, a5, v16);
}

- (uint64_t)nextExistingParticipantOnRouteToDestination:()PXProgrammaticNavigation
{
  v4 = a3;
  v5 = [a1 selectedViewController];
  v6 = [v5 routingOptionsForDestination:v4];

  v7 = v6 << 63 >> 63;
  v8 = (v7 & v5);

  return v7 & v5;
}

- (void)routingOptionsForDestination:()PXProgrammaticNavigation
{
  v4 = a3;
  [a1 viewControllers];
  objc_claimAutoreleasedReturnValue();
  v5 = v4;
  PXFind();
}

@end