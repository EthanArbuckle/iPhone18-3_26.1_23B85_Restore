@interface UIViewController(SUAdditions)
- (BOOL)isDescendantOfViewController:()SUAdditions;
- (BOOL)isInMoreList;
- (SUViewControllerContext)copyArchivableContext;
- (id)_sectionForViewController:()SUAdditions;
- (id)su_closestNavigationController;
- (id)viewControllerFactory;
- (uint64_t)isRootViewController;
- (void)dismissAnimated:()SUAdditions;
- (void)keyboardDidHideWithInfo:()SUAdditions;
- (void)keyboardDidShowWithInfo:()SUAdditions;
- (void)keyboardWillHideWithInfo:()SUAdditions;
- (void)keyboardWillShowWithInfo:()SUAdditions;
- (void)parentViewControllerHierarchyDidChange;
- (void)resetRestoredContext;
- (void)setBadgeValue:()SUAdditions animated:blink:;
@end

@implementation UIViewController(SUAdditions)

- (void)parentViewControllerHierarchyDidChange
{
  v14 = *MEMORY[0x1E69E9840];
  childViewControllers = [self childViewControllers];
  v2 = [childViewControllers copy];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 parentViewControllerHierarchyDidChange];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (SUViewControllerContext)copyArchivableContext
{
  v2 = objc_alloc_init(SUViewControllerContext);
  section = [self section];
  identifier = [section identifier];
  [(SUViewControllerContext *)v2 setSectionIdentifier:identifier];

  return v2;
}

- (void)dismissAnimated:()SUAdditions
{
  presentingViewController = [self presentingViewController];
  overlayViewController = [self overlayViewController];
  _popoverController = [self _popoverController];
  tabBarController = _popoverController;
  if (overlayViewController)
  {
    overlayBackgroundViewController = [overlayViewController overlayBackgroundViewController];
    [overlayBackgroundViewController dismissOverlay:overlayViewController animated:a3];
LABEL_5:

    goto LABEL_6;
  }

  if (presentingViewController)
  {
    overlayBackgroundViewController = [MEMORY[0x1E69DD258] transitionSafePerformer:?];
    [overlayBackgroundViewController dismissViewControllerAnimated:a3 completion:0];
    goto LABEL_5;
  }

  if (!_popoverController)
  {
    tabBarController = [self tabBarController];
    overlayBackgroundViewController = [tabBarController transientViewController];
    if (overlayBackgroundViewController && [self isDescendantOfViewController:overlayBackgroundViewController])
    {
      v10 = [MEMORY[0x1E69DD258] transitionSafePerformer:tabBarController];
      [v10 setTransientViewController:0 animated:a3];
    }

    else
    {
      v11 = MEMORY[0x1E69DD258];
      navigationController = [self navigationController];
      v10 = [v11 transitionSafePerformer:navigationController];

      v13 = [v10 popViewControllerAnimated:a3];
    }

    goto LABEL_5;
  }

  v9 = [MEMORY[0x1E69DD258] transitionSafePerformer:_popoverController];

  [v9 dismissPopoverAnimated:a3];
  tabBarController = v9;
LABEL_6:
}

- (BOOL)isDescendantOfViewController:()SUAdditions
{
  v4 = a3;
  selfCopy = self;
  parentViewController = selfCopy;
  for (i = selfCopy != 0; parentViewController != v4 && parentViewController; i = parentViewController != 0)
  {
    v8 = parentViewController;
    parentViewController = [parentViewController parentViewController];
  }

  return i;
}

- (BOOL)isInMoreList
{
  tabBarController = [self tabBarController];
  if (!tabBarController)
  {
    tabBarController = +[SUClientDispatch tabBarController];
    if (!tabBarController)
    {
      return 0;
    }
  }

  v3 = tabBarController;
  moreNavigationController = [tabBarController moreNavigationController];
  navigationController = [self navigationController];
  allViewControllers = [v3 allViewControllers];
  v7 = [allViewControllers indexOfObjectIdenticalTo:moreNavigationController];
  v8 = [allViewControllers indexOfObjectIdenticalTo:navigationController];
  v10 = v8 >= v7 && v8 != 0x7FFFFFFFFFFFFFFFLL;

  return v10;
}

- (uint64_t)isRootViewController
{
  tabBarController = [self tabBarController];
  navigationController = [self navigationController];
  v4 = navigationController;
  if (tabBarController && navigationController)
  {
    moreNavigationController = [tabBarController moreNavigationController];
    v6 = moreNavigationController == v4;
  }

  else
  {
    if (!navigationController)
    {
      parentViewController = [self parentViewController];
LABEL_14:
      isRootViewController = 1;
      goto LABEL_15;
    }

    v6 = 0;
  }

  viewControllers = [v4 viewControllers];
  if (v6 >= [viewControllers count])
  {
    v9 = 1;
  }

  else
  {
    v8 = [viewControllers objectAtIndex:v6];
    v9 = v8 == self;
  }

  parentViewController2 = [self parentViewController];
  parentViewController = parentViewController2;
  if (v9)
  {
    goto LABEL_14;
  }

  isRootViewController = 0;
  if (parentViewController2 != v4 && parentViewController2 != tabBarController)
  {
    isRootViewController = [parentViewController2 isRootViewController];
  }

LABEL_15:

  return isRootViewController;
}

- (void)keyboardDidHideWithInfo:()SUAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  childViewControllers = [self childViewControllers];
  v6 = [childViewControllers copy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) keyboardDidHideWithInfo:{v4, v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)keyboardDidShowWithInfo:()SUAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  childViewControllers = [self childViewControllers];
  v6 = [childViewControllers copy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) keyboardDidShowWithInfo:{v4, v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)keyboardWillHideWithInfo:()SUAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  childViewControllers = [self childViewControllers];
  v6 = [childViewControllers copy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) keyboardWillHideWithInfo:{v4, v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)keyboardWillShowWithInfo:()SUAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  childViewControllers = [self childViewControllers];
  v6 = [childViewControllers copy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) keyboardWillShowWithInfo:{v4, v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)resetRestoredContext
{
  parentViewController = [self parentViewController];
  [parentViewController resetRestoredContext];
}

- (id)_sectionForViewController:()SUAdditions
{
  parentViewController = [self parentViewController];
  v3 = [parentViewController _sectionForViewController:self];

  return v3;
}

- (void)setBadgeValue:()SUAdditions animated:blink:
{
  LODWORD(v6) = a4;
  v8 = a3;
  v19 = v8;
  if (v8)
  {
    v9 = a5;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  tabBarItem = [self tabBarItem];
  [tabBarItem setBadgeValue:v19 animated:v6 blink:v9];

  tabBarController = [self tabBarController];
  if (!tabBarController)
  {
    tabBarController = +[SUClientDispatch tabBarController];
  }

  moreNavigationController = [tabBarController moreNavigationController];
  tabBarItem2 = [moreNavigationController tabBarItem];

  if ([self isInMoreList])
  {
    v14 = tabBarItem2;
    v15 = v19;
    v16 = v6;
    v17 = v9;
  }

  else
  {
    v14 = tabBarItem2;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  [v14 setBadgeValue:v15 animated:v16 blink:v17];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SUViewControllerBadgeDidChangeNotification" object:self];
}

- (id)viewControllerFactory
{
  parentViewController = [self parentViewController];
  v2 = parentViewController;
  if (parentViewController)
  {
    viewControllerFactory = [parentViewController viewControllerFactory];
LABEL_3:
    viewControllerFactory2 = viewControllerFactory;
    goto LABEL_5;
  }

  v5 = +[SUClientDispatch clientInterface];
  viewControllerFactory2 = [v5 viewControllerFactory];

  if (!viewControllerFactory2)
  {
    viewControllerFactory = objc_alloc_init(SUViewControllerFactory);
    goto LABEL_3;
  }

LABEL_5:

  return viewControllerFactory2;
}

- (id)su_closestNavigationController
{
  navigationController = [self navigationController];

  if (navigationController)
  {
    navigationController2 = [self navigationController];
  }

  else
  {
    parentViewController = [self parentViewController];
    navigationController2 = [parentViewController su_closestNavigationController];
  }

  return navigationController2;
}

@end