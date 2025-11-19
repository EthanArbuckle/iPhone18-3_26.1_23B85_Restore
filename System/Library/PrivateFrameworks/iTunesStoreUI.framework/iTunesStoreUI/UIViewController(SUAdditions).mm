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
  v1 = [a1 childViewControllers];
  v2 = [v1 copy];

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
  v3 = [a1 section];
  v4 = [v3 identifier];
  [(SUViewControllerContext *)v2 setSectionIdentifier:v4];

  return v2;
}

- (void)dismissAnimated:()SUAdditions
{
  v14 = [a1 presentingViewController];
  v5 = [a1 overlayViewController];
  v6 = [a1 _popoverController];
  v7 = v6;
  if (v5)
  {
    v8 = [v5 overlayBackgroundViewController];
    [v8 dismissOverlay:v5 animated:a3];
LABEL_5:

    goto LABEL_6;
  }

  if (v14)
  {
    v8 = [MEMORY[0x1E69DD258] transitionSafePerformer:?];
    [v8 dismissViewControllerAnimated:a3 completion:0];
    goto LABEL_5;
  }

  if (!v6)
  {
    v7 = [a1 tabBarController];
    v8 = [v7 transientViewController];
    if (v8 && [a1 isDescendantOfViewController:v8])
    {
      v10 = [MEMORY[0x1E69DD258] transitionSafePerformer:v7];
      [v10 setTransientViewController:0 animated:a3];
    }

    else
    {
      v11 = MEMORY[0x1E69DD258];
      v12 = [a1 navigationController];
      v10 = [v11 transitionSafePerformer:v12];

      v13 = [v10 popViewControllerAnimated:a3];
    }

    goto LABEL_5;
  }

  v9 = [MEMORY[0x1E69DD258] transitionSafePerformer:v6];

  [v9 dismissPopoverAnimated:a3];
  v7 = v9;
LABEL_6:
}

- (BOOL)isDescendantOfViewController:()SUAdditions
{
  v4 = a3;
  v5 = a1;
  v6 = v5;
  for (i = v5 != 0; v6 != v4 && v6; i = v6 != 0)
  {
    v8 = v6;
    v6 = [v6 parentViewController];
  }

  return i;
}

- (BOOL)isInMoreList
{
  v2 = [a1 tabBarController];
  if (!v2)
  {
    v2 = +[SUClientDispatch tabBarController];
    if (!v2)
    {
      return 0;
    }
  }

  v3 = v2;
  v4 = [v2 moreNavigationController];
  v5 = [a1 navigationController];
  v6 = [v3 allViewControllers];
  v7 = [v6 indexOfObjectIdenticalTo:v4];
  v8 = [v6 indexOfObjectIdenticalTo:v5];
  v10 = v8 >= v7 && v8 != 0x7FFFFFFFFFFFFFFFLL;

  return v10;
}

- (uint64_t)isRootViewController
{
  v2 = [a1 tabBarController];
  v3 = [a1 navigationController];
  v4 = v3;
  if (v2 && v3)
  {
    v5 = [v2 moreNavigationController];
    v6 = v5 == v4;
  }

  else
  {
    if (!v3)
    {
      v11 = [a1 parentViewController];
LABEL_14:
      v12 = 1;
      goto LABEL_15;
    }

    v6 = 0;
  }

  v7 = [v4 viewControllers];
  if (v6 >= [v7 count])
  {
    v9 = 1;
  }

  else
  {
    v8 = [v7 objectAtIndex:v6];
    v9 = v8 == a1;
  }

  v10 = [a1 parentViewController];
  v11 = v10;
  if (v9)
  {
    goto LABEL_14;
  }

  v12 = 0;
  if (v10 != v4 && v10 != v2)
  {
    v12 = [v10 isRootViewController];
  }

LABEL_15:

  return v12;
}

- (void)keyboardDidHideWithInfo:()SUAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 childViewControllers];
  v6 = [v5 copy];

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
  v5 = [a1 childViewControllers];
  v6 = [v5 copy];

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
  v5 = [a1 childViewControllers];
  v6 = [v5 copy];

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
  v5 = [a1 childViewControllers];
  v6 = [v5 copy];

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
  v1 = [a1 parentViewController];
  [v1 resetRestoredContext];
}

- (id)_sectionForViewController:()SUAdditions
{
  v2 = [a1 parentViewController];
  v3 = [v2 _sectionForViewController:a1];

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

  v10 = [a1 tabBarItem];
  [v10 setBadgeValue:v19 animated:v6 blink:v9];

  v11 = [a1 tabBarController];
  if (!v11)
  {
    v11 = +[SUClientDispatch tabBarController];
  }

  v12 = [v11 moreNavigationController];
  v13 = [v12 tabBarItem];

  if ([a1 isInMoreList])
  {
    v14 = v13;
    v15 = v19;
    v16 = v6;
    v17 = v9;
  }

  else
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  [v14 setBadgeValue:v15 animated:v16 blink:v17];
  v18 = [MEMORY[0x1E696AD88] defaultCenter];
  [v18 postNotificationName:@"SUViewControllerBadgeDidChangeNotification" object:a1];
}

- (id)viewControllerFactory
{
  v1 = [a1 parentViewController];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 viewControllerFactory];
LABEL_3:
    v4 = v3;
    goto LABEL_5;
  }

  v5 = +[SUClientDispatch clientInterface];
  v4 = [v5 viewControllerFactory];

  if (!v4)
  {
    v3 = objc_alloc_init(SUViewControllerFactory);
    goto LABEL_3;
  }

LABEL_5:

  return v4;
}

- (id)su_closestNavigationController
{
  v2 = [a1 navigationController];

  if (v2)
  {
    v3 = [a1 navigationController];
  }

  else
  {
    v4 = [a1 parentViewController];
    v3 = [v4 su_closestNavigationController];
  }

  return v3;
}

@end