@interface UIViewController(PXProgrammaticNavigation)
- (PXPerformanceBaselineNavigationParticipant)px_forwardingNavigationParticipantForDestination:()PXProgrammaticNavigation;
- (id)_nextExistingParticipantOnRouteToDestination:()PXProgrammaticNavigation;
- (id)_nextExistingViewControllerOnRouteToDestination:()PXProgrammaticNavigation;
- (id)nextExistingParticipantOnRouteToDestination:()PXProgrammaticNavigation;
- (id)px_navigationDestination;
- (uint64_t)routingOptionsForDestination:()PXProgrammaticNavigation;
- (void)_navigateToDestination:()PXProgrammaticNavigation options:completionHandler:;
- (void)_px_prepareNavigationFromViewController:()PXProgrammaticNavigation routingOptions:options:completionHandler:;
- (void)navigateToDestination:()PXProgrammaticNavigation options:completionHandler:;
- (void)px_dismissPresentedViewControllerWithOptions:()PXProgrammaticNavigation completionHandler:;
@end

@implementation UIViewController(PXProgrammaticNavigation)

- (id)px_navigationDestination
{
  v1 = [a1 px_forwardingNavigationParticipantForDestination:0];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 px_navigationDestination];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_px_prepareNavigationFromViewController:()PXProgrammaticNavigation routingOptions:options:completionHandler:
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  if (v9 != a1)
  {
    PXAssertGetLog();
  }

  [a1 px_dismissPresentedViewControllerWithOptions:a5 completionHandler:v10];
}

- (void)_navigateToDestination:()PXProgrammaticNavigation options:completionHandler:
{
  v9 = a3;
  v10 = a5;
  v11 = a1;
  v12 = MEMORY[0x1E695DFD8];
  v13 = [v11 childViewControllers];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  v16 = [v12 setWithArray:v15];

  v17 = [v11 _nextExistingViewControllerOnRouteToDestination:v9];
  if (v17)
  {
    v18 = v11;
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
    v19 = v11;
  }

LABEL_11:
  v20 = [v19 routingOptionsForDestination:v9];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __95__UIViewController_PXProgrammaticNavigation___navigateToDestination_options_completionHandler___block_invoke;
  v24[3] = &unk_1E7741E10;
  v24[4] = v11;
  v25 = v19;
  v28 = a2;
  v29 = a4;
  v26 = v9;
  v27 = v10;
  v21 = v10;
  v22 = v9;
  v23 = v19;
  [v11 _px_prepareNavigationFromViewController:v23 routingOptions:v20 options:a4 completionHandler:v24];
}

- (id)_nextExistingViewControllerOnRouteToDestination:()PXProgrammaticNavigation
{
  v4 = a1;
  while (1)
  {
    v5 = v4;
    v4 = [v4 nextExistingParticipantOnRouteToDestination:a3];

    if (!v4)
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (id)_nextExistingParticipantOnRouteToDestination:()PXProgrammaticNavigation
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__192296;
  v21 = __Block_byref_object_dispose__192297;
  v22 = 0;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __91__UIViewController_PXProgrammaticNavigation___nextExistingParticipantOnRouteToDestination___block_invoke;
  v14 = &unk_1E7741DE8;
  v16 = &v17;
  v5 = v4;
  v15 = v5;
  v6 = _Block_copy(&v11);
  v7 = [a1 px_nextViewControllerInNavigationController];
  v6[2](v6, v7);

  v8 = [a1 presentedViewController];
  v6[2](v6, v8);

  v9 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v9;
}

- (void)navigateToDestination:()PXProgrammaticNavigation options:completionHandler:
{
  v8 = a5;
  v9 = a3;
  v10 = [a1 px_forwardingNavigationParticipantForDestination:v9];
  if (objc_opt_respondsToSelector())
  {
    [v10 navigateToDestination:v9 options:a4 completionHandler:v8];
  }

  else
  {
    [a1 _navigateToDestination:v9 options:a4 completionHandler:v8];
  }
}

- (id)nextExistingParticipantOnRouteToDestination:()PXProgrammaticNavigation
{
  v4 = a3;
  v5 = [a1 px_forwardingNavigationParticipantForDestination:v4];
  v6 = v5;
  if (v5)
  {
    [v5 nextExistingParticipantOnRouteToDestination:v4];
  }

  else
  {
    [a1 _nextExistingParticipantOnRouteToDestination:v4];
  }
  v7 = ;

  return v7;
}

- (uint64_t)routingOptionsForDestination:()PXProgrammaticNavigation
{
  v4 = a3;
  v5 = [a1 px_forwardingNavigationParticipantForDestination:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 routingOptionsForDestination:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)px_dismissPresentedViewControllerWithOptions:()PXProgrammaticNavigation completionHandler:
{
  v6 = a4;
  v7 = [a1 presentedViewController];
  if (v7)
  {
    if (objc_opt_respondsToSelector() & 1) == 0 || (v8 = [v7 isReadyForDismissal], (a3) || v8)
    {
      v9 = v7;
      if (objc_opt_respondsToSelector())
      {
        [v9 prepareForDismissal];
      }

      v10 = [v9 presentingViewController];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __109__UIViewController_PXProgrammaticNavigation__px_dismissPresentedViewControllerWithOptions_completionHandler___block_invoke;
      v11[3] = &unk_1E774C250;
      v12 = v6;
      [v10 dismissViewControllerAnimated:0 completion:v11];
    }

    else
    {
      (*(v6 + 2))(v6, 3, 0);
    }
  }

  else
  {
    (*(v6 + 2))(v6, 1, 0);
  }
}

- (PXPerformanceBaselineNavigationParticipant)px_forwardingNavigationParticipantForDestination:()PXProgrammaticNavigation
{
  if ([a3 type] == 17)
  {
    v4 = [[PXPerformanceBaselineNavigationParticipant alloc] initWithPresentingViewController:a1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end