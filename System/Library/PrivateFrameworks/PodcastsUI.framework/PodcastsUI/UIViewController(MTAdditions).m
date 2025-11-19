@interface UIViewController(MTAdditions)
+ (id)mt_rootViewController;
- (BOOL)mt_isVisible;
- (id)_recursiveDescriptionWithLevel:()MTAdditions result:;
- (id)mt_topNavigationController;
- (id)mt_topViewController;
- (id)mt_topViewControllerExcludingPopovers;
- (id)recursiveDescription;
- (uint64_t)isADescendantOfParentViewController:()MTAdditions;
- (void)useDefaultRestorationIdentifier;
- (void)visitChildenViewControllers:()MTAdditions;
@end

@implementation UIViewController(MTAdditions)

- (void)useDefaultRestorationIdentifier
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [a1 setRestorationIdentifier:v3];
}

- (id)_recursiveDescriptionWithLevel:()MTAdditions result:
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [@"\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t" substringToIndex:3 * a3];
  [v6 appendFormat:@"%@", v7];

  v8 = [a1 restorationIdentifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"nil";
  }

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v6 appendFormat:@"(%p) [SRI:%@] %@\n", a1, v10, v12];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [a1 childViewControllers];
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v20 + 1) + 8 * i) _recursiveDescriptionWithLevel:a3 + 1 result:v6];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  return v6;
}

- (id)recursiveDescription
{
  v2 = [MEMORY[0x277CCAB68] string];
  v3 = [a1 _recursiveDescriptionWithLevel:0 result:v2];

  return v3;
}

- (void)visitChildenViewControllers:()MTAdditions
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a1 childViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v11 + 1) + 8 * v9);
      [v10 visitChildenViewControllers:v4];
      if (v4[2](v4, v10))
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (uint64_t)isADescendantOfParentViewController:()MTAdditions
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v4 = [a3 childViewControllers];
  if ([v4 countByEnumeratingWithState:v7 objects:v8 count:16])
  {
    if (**(&v7[0] + 1) == a1)
    {
      v5 = 1;
    }

    else
    {
      v5 = [a1 isADescendantOfParentViewController:?];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)mt_isVisible
{
  if (![a1 isViewLoaded])
  {
    return 0;
  }

  v2 = [a1 view];
  v3 = [v2 window];
  v4 = v3 != 0;

  return v4;
}

- (id)mt_topViewController
{
  v1 = a1;
  v2 = [v1 presentedViewController];

  if (v2)
  {
    do
    {
      v3 = [v1 presentedViewController];

      v4 = [v3 presentedViewController];

      v1 = v3;
    }

    while (v4);
  }

  else
  {
    v3 = v1;
  }

  return v3;
}

- (id)mt_topViewControllerExcludingPopovers
{
  v1 = a1;
  v2 = [v1 presentedViewController];
  v3 = v2;
  if (v2 && ([v2 popoverPresentationController], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    do
    {
      v5 = v3;

      v6 = [v5 popoverPresentationController];

      v1 = v5;
    }

    while (!v6);
  }

  else
  {
    v5 = v1;
  }

  return v5;
}

- (id)mt_topNavigationController
{
  v1 = a1;
  v2 = [MEMORY[0x277D75D28] mt_rootViewController];
  v3 = 0;
  if (v1)
  {
    while (v1 != v2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v1;

        v3 = v4;
      }

      v5 = [v1 parentViewController];

      v1 = v5;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v6 = v3;
  }

  else
  {
LABEL_6:
    v6 = v3;
  }

  return v6;
}

+ (id)mt_rootViewController
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  v1 = [v0 delegate];

  v2 = [v1 window];
  v3 = [v2 rootViewController];

  return v3;
}

@end