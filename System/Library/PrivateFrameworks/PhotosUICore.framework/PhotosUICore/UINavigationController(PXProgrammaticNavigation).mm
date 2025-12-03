@interface UINavigationController(PXProgrammaticNavigation)
- (BOOL)routingOptionsForDestination:()PXProgrammaticNavigation;
- (id)px_navigationDestination;
- (void)_px_prepareNavigationFromViewController:()PXProgrammaticNavigation routingOptions:options:completionHandler:;
- (void)navigateToDestination:()PXProgrammaticNavigation options:completionHandler:;
- (void)nextExistingParticipantOnRouteToDestination:()PXProgrammaticNavigation;
- (void)px_navigateToStateAllowingTabSwitchingWithOptions:()PXProgrammaticNavigation completionHandler:;
@end

@implementation UINavigationController(PXProgrammaticNavigation)

- (id)px_navigationDestination
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  viewControllers = [self viewControllers];
  reverseObjectEnumerator = [viewControllers reverseObjectEnumerator];

  v3 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        px_navigationDestination = [*(*(&v10 + 1) + 8 * i) px_navigationDestination];
        if (px_navigationDestination)
        {
          v8 = px_navigationDestination;
          goto LABEL_11;
        }
      }

      v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (void)navigateToDestination:()PXProgrammaticNavigation options:completionHandler:
{
  v9 = a3;
  v10 = a5;
  selfCopy = self;
  v12 = MEMORY[0x1E695DFD8];
  childViewControllers = [selfCopy childViewControllers];
  v14 = childViewControllers;
  if (childViewControllers)
  {
    v15 = childViewControllers;
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  v16 = [v12 setWithArray:v15];

  v17 = [selfCopy _nextExistingViewControllerOnRouteToDestination:v9];
  if (v17)
  {
    v18 = selfCopy;
    while ([v16 containsObject:v17])
    {
      v19 = v17;

      v17 = [v19 _nextExistingViewControllerOnRouteToDestination:v9];

      v18 = v19;
      if (!v17)
      {
        goto LABEL_11;
      }
    }

    v19 = v18;
  }

  else
  {
    v19 = selfCopy;
  }

LABEL_11:
  v20 = [v19 routingOptionsForDestination:v9];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __100__UINavigationController_PXProgrammaticNavigation__navigateToDestination_options_completionHandler___block_invoke;
  v24[3] = &unk_1E7741ED8;
  v28 = a2;
  v29 = v20;
  v24[4] = selfCopy;
  v25 = v19;
  v30 = a4;
  v26 = v9;
  v27 = v10;
  v21 = v10;
  v22 = v9;
  v23 = v19;
  [selfCopy _px_prepareNavigationFromViewController:v23 routingOptions:v20 options:a4 completionHandler:v24];
}

- (void)_px_prepareNavigationFromViewController:()PXProgrammaticNavigation routingOptions:options:completionHandler:
{
  v11 = a3;
  v12 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __133__UINavigationController_PXProgrammaticNavigation___px_prepareNavigationFromViewController_routingOptions_options_completionHandler___block_invoke;
  v16[3] = &unk_1E7741E88;
  v16[4] = self;
  v17 = v11;
  v18 = v12;
  v19 = a2;
  v20 = a5;
  v21 = a4;
  v15.receiver = self;
  v15.super_class = UINavigationController_0;
  v13 = v11;
  v14 = v12;
  objc_msgSendSuper2(&v15, sel__px_prepareNavigationFromViewController_routingOptions_options_completionHandler_, self, a4, a5, v16);
}

- (void)nextExistingParticipantOnRouteToDestination:()PXProgrammaticNavigation
{
  v4 = a3;
  viewControllers = [self viewControllers];
  firstObject = [viewControllers firstObject];

  v7 = [firstObject routingOptionsForDestination:v4];
  if (v7)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (BOOL)routingOptionsForDestination:()PXProgrammaticNavigation
{
  v4 = a3;
  viewControllers = [self viewControllers];
  firstObject = [viewControllers firstObject];

  v7 = [firstObject routingOptionsForDestination:v4];
  return v7 != 0;
}

- (void)px_navigateToStateAllowingTabSwitchingWithOptions:()PXProgrammaticNavigation completionHandler:
{
  v6 = a4;
  topViewController = [self topViewController];
  v8 = topViewController;
  if (topViewController)
  {
    [topViewController px_navigateToStateAllowingTabSwitchingWithOptions:a3 completionHandler:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UINavigationController_0;
    objc_msgSendSuper2(&v9, sel_px_navigateToStateAllowingTabSwitchingWithOptions_completionHandler_, a3, v6);
  }
}

@end