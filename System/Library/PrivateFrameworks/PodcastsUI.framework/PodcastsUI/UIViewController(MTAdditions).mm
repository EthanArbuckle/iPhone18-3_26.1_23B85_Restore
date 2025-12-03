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
  [self setRestorationIdentifier:v3];
}

- (id)_recursiveDescriptionWithLevel:()MTAdditions result:
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [@"\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t\t|\t" substringToIndex:3 * a3];
  [v6 appendFormat:@"%@", v7];

  restorationIdentifier = [self restorationIdentifier];
  v9 = restorationIdentifier;
  if (restorationIdentifier)
  {
    v10 = restorationIdentifier;
  }

  else
  {
    v10 = @"nil";
  }

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v6 appendFormat:@"(%p) [SRI:%@] %@\n", self, v10, v12];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  childViewControllers = [self childViewControllers];
  v14 = [childViewControllers countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v18 = [*(*(&v20 + 1) + 8 * i) _recursiveDescriptionWithLevel:a3 + 1 result:v6];
      }

      v15 = [childViewControllers countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  return v6;
}

- (id)recursiveDescription
{
  string = [MEMORY[0x277CCAB68] string];
  v3 = [self _recursiveDescriptionWithLevel:0 result:string];

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
  childViewControllers = [self childViewControllers];
  v6 = [childViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        objc_enumerationMutation(childViewControllers);
      }

      v10 = *(*(&v11 + 1) + 8 * v9);
      [v10 visitChildenViewControllers:v4];
      if (v4[2](v4, v10))
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [childViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  childViewControllers = [a3 childViewControllers];
  if ([childViewControllers countByEnumeratingWithState:v7 objects:v8 count:16])
  {
    if (**(&v7[0] + 1) == self)
    {
      v5 = 1;
    }

    else
    {
      v5 = [self isADescendantOfParentViewController:?];
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
  if (![self isViewLoaded])
  {
    return 0;
  }

  view = [self view];
  window = [view window];
  v4 = window != 0;

  return v4;
}

- (id)mt_topViewController
{
  selfCopy = self;
  presentedViewController = [selfCopy presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [selfCopy presentedViewController];

      v3PresentedViewController = [presentedViewController2 presentedViewController];

      selfCopy = presentedViewController2;
    }

    while (v3PresentedViewController);
  }

  else
  {
    presentedViewController2 = selfCopy;
  }

  return presentedViewController2;
}

- (id)mt_topViewControllerExcludingPopovers
{
  selfCopy = self;
  presentedViewController = [selfCopy presentedViewController];
  v3 = presentedViewController;
  if (presentedViewController && ([presentedViewController popoverPresentationController], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    do
    {
      v5 = v3;

      popoverPresentationController = [v5 popoverPresentationController];

      selfCopy = v5;
    }

    while (!popoverPresentationController);
  }

  else
  {
    v5 = selfCopy;
  }

  return v5;
}

- (id)mt_topNavigationController
{
  selfCopy = self;
  mt_rootViewController = [MEMORY[0x277D75D28] mt_rootViewController];
  v3 = 0;
  if (selfCopy)
  {
    while (selfCopy != mt_rootViewController)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = selfCopy;

        v3 = v4;
      }

      parentViewController = [selfCopy parentViewController];

      selfCopy = parentViewController;
      if (!parentViewController)
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
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  delegate = [mEMORY[0x277D75128] delegate];

  window = [delegate window];
  rootViewController = [window rootViewController];

  return rootViewController;
}

@end