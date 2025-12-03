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
  selectedViewController = [self selectedViewController];
  px_navigationDestination = [selectedViewController px_navigationDestination];

  return px_navigationDestination;
}

- (void)px_switchToTabAndNavigateToDestination:()PXProgrammaticNavigation options:completionHandler:
{
  v7 = a3;
  v8 = a5;
  [self viewControllers];
  objc_claimAutoreleasedReturnValue();
  v7;
  PXFind();
}

- (void)navigateToDestination:()PXProgrammaticNavigation options:completionHandler:
{
  v9 = a3;
  v10 = a5;
  v11 = [self _nextExistingViewControllerOnRouteToDestination:v9];
  if (v11)
  {
    selectedViewController = [self selectedViewController];
    if (v11 == selectedViewController)
    {
      selfCopy = v11;
    }

    else
    {
      selfCopy = self;
    }

    selfCopy2 = selfCopy;
  }

  else
  {
    selfCopy2 = self;
  }

  v15 = [selfCopy2 routingOptionsForDestination:v9];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__UITabBarController_PXProgrammaticNavigation__navigateToDestination_options_completionHandler___block_invoke;
  v18[3] = &unk_1E774C530;
  v18[4] = self;
  v19 = v9;
  v21 = a2;
  v22 = a4;
  v20 = v10;
  v16 = v10;
  v17 = v9;
  [self _px_prepareNavigationFromViewController:selfCopy2 routingOptions:v15 options:a4 completionHandler:v18];
}

- (void)_px_prepareNavigationFromViewController:()PXProgrammaticNavigation routingOptions:options:completionHandler:
{
  v11 = a3;
  v12 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __129__UITabBarController_PXProgrammaticNavigation___px_prepareNavigationFromViewController_routingOptions_options_completionHandler___block_invoke;
  v16[3] = &unk_1E774C530;
  v16[4] = self;
  v17 = v11;
  v18 = v12;
  v19 = a2;
  v20 = a5;
  v15.receiver = self;
  v15.super_class = &off_1F1AFB000;
  v13 = v11;
  v14 = v12;
  objc_msgSendSuper2(&v15, sel__px_prepareNavigationFromViewController_routingOptions_options_completionHandler_, self, a4, a5, v16);
}

- (uint64_t)nextExistingParticipantOnRouteToDestination:()PXProgrammaticNavigation
{
  v4 = a3;
  selectedViewController = [self selectedViewController];
  v6 = [selectedViewController routingOptionsForDestination:v4];

  v7 = v6 << 63 >> 63;
  v8 = (v7 & selectedViewController);

  return v7 & selectedViewController;
}

- (void)routingOptionsForDestination:()PXProgrammaticNavigation
{
  v4 = a3;
  [self viewControllers];
  objc_claimAutoreleasedReturnValue();
  v5 = v4;
  PXFind();
}

@end