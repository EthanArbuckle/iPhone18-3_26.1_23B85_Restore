@interface UISplitViewController(PXProgrammaticNavigation)
- (id)_participantForDestination:()PXProgrammaticNavigation routingOptions:;
- (id)nextExistingParticipantOnRouteToDestination:()PXProgrammaticNavigation;
- (uint64_t)routingOptionsForDestination:()PXProgrammaticNavigation;
- (void)navigateToDestination:()PXProgrammaticNavigation options:completionHandler:;
@end

@implementation UISplitViewController(PXProgrammaticNavigation)

- (void)navigateToDestination:()PXProgrammaticNavigation options:completionHandler:
{
  v9 = a3;
  v10 = a5;
  v23 = 0;
  v11 = [self _participantForDestination:v9 routingOptions:&v23];
  if (!v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController+PXProgrammaticNavigation.m" lineNumber:434 description:{@"Invalid parameter not satisfying: %@", @"participant"}];
  }

  v12 = v23;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __99__UISplitViewController_PXProgrammaticNavigation__navigateToDestination_options_completionHandler___block_invoke;
  v17[3] = &unk_1E7741E10;
  v17[4] = self;
  v18 = v11;
  v21 = a2;
  v22 = a4;
  v19 = v9;
  v20 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  [self _px_prepareNavigationFromViewController:self routingOptions:v12 options:a4 completionHandler:v17];
}

- (id)nextExistingParticipantOnRouteToDestination:()PXProgrammaticNavigation
{
  v4 = a3;
  v5 = [self _participantForDestination:v4 routingOptions:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 nextExistingParticipantOnRouteToDestination:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)routingOptionsForDestination:()PXProgrammaticNavigation
{
  v6 = 0;
  v3 = [self _participantForDestination:a3 routingOptions:&v6];
  if (v3)
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_participantForDestination:()PXProgrammaticNavigation routingOptions:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  viewControllers = [self viewControllers];
  v8 = [viewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(viewControllers);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 routingOptionsForDestination:v6];
        if (v13)
        {
          v15 = v13;
          v14 = v12;

          if (a4 && v14)
          {
            *a4 = v15;
          }

          goto LABEL_13;
        }
      }

      v9 = [viewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

@end