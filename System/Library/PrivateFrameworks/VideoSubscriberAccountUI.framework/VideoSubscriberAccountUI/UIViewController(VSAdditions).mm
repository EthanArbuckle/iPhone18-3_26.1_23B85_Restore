@interface UIViewController(VSAdditions)
- (id)vs_addFocusGuideFromView:()VSAdditions toViews:withDirection:;
- (uint64_t)vs_ignoreInteractionCount;
- (uint64_t)vs_updateNavigationItemAndForceViewReloadWithSearchController:()VSAdditions;
- (uint64_t)vs_updateNavigationItemAndForceViewReloadWithSearchController:()VSAdditions rightBarButtonItem:;
- (void)_forceViewReload;
- (void)vs_beginIgnoringInteraction;
- (void)vs_endIgnoringInteraction;
- (void)vs_makeFrontmostAnimated:()VSAdditions completion:;
- (void)vs_makeTopmostInNavigationStack:()VSAdditions completion:;
- (void)vs_setIgnoreInteractionCount:()VSAdditions;
- (void)vs_updateViewModel:()VSAdditions withUserInterfaceStyle:andPreferredLogoSize:;
@end

@implementation UIViewController(VSAdditions)

- (uint64_t)vs_ignoreInteractionCount
{
  v1 = objc_getAssociatedObject(self, "VSInteractionIgnoreCountKey");
  integerValue = [v1 integerValue];

  return integerValue;
}

- (void)vs_setIgnoreInteractionCount:()VSAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  objc_setAssociatedObject(self, "VSInteractionIgnoreCountKey", v2, 3);
}

- (void)vs_beginIgnoringInteraction
{
  vs_ignoreInteractionCount = [self vs_ignoreInteractionCount];
  [self vs_setIgnoreInteractionCount:vs_ignoreInteractionCount + 1];
  if (!vs_ignoreInteractionCount)
  {
    view = [self view];
    [view setUserInteractionEnabled:0];
  }
}

- (void)vs_endIgnoringInteraction
{
  v2 = [self vs_ignoreInteractionCount] - 1;
  [self vs_setIgnoreInteractionCount:v2];
  if (!v2)
  {
    view = [self view];
    [view setUserInteractionEnabled:1];
  }
}

- (id)vs_addFocusGuideFromView:()VSAdditions toViews:withDirection:
{
  v8 = a3;
  v9 = MEMORY[0x277D75500];
  v10 = a4;
  v11 = objc_alloc_init(v9);
  view = [self view];
  [view addLayoutGuide:v11];

  [v11 setPreferredFocusEnvironments:v10];
  widthAnchor = [v11 widthAnchor];
  widthAnchor2 = [v8 widthAnchor];
  v15 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v15 setActive:1];

  heightAnchor = [v11 heightAnchor];
  heightAnchor2 = [v8 heightAnchor];
  v18 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [v18 setActive:1];

  if (a5 > 3)
  {
    if (a5 == 8)
    {
      topAnchor = [v11 topAnchor];
      topAnchor2 = [v8 topAnchor];
      v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [v31 setActive:1];

      leftAnchor = [v11 leftAnchor];
      rightAnchor = [v8 rightAnchor];
      goto LABEL_14;
    }

    if (a5 != 4)
    {
      goto LABEL_8;
    }

    topAnchor3 = [v11 topAnchor];
    bottomAnchor = [v8 bottomAnchor];
LABEL_11:
    v26 = bottomAnchor;
    v27 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    [v27 setActive:1];

    leftAnchor2 = [v11 leftAnchor];
    goto LABEL_12;
  }

  if (a5 == 1)
  {
    topAnchor3 = [v11 bottomAnchor];
    bottomAnchor = [v8 topAnchor];
    goto LABEL_11;
  }

  if (a5 == 2)
  {
    topAnchor4 = [v11 topAnchor];
    topAnchor5 = [v8 topAnchor];
    v21 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    [v21 setActive:1];

    leftAnchor2 = [v11 rightAnchor];
LABEL_12:
    leftAnchor = leftAnchor2;
    rightAnchor = [v8 leftAnchor];
LABEL_14:
    v32 = rightAnchor;
    v33 = [leftAnchor constraintEqualToAnchor:rightAnchor];
    [v33 setActive:1];

    goto LABEL_15;
  }

LABEL_8:
  leftAnchor = VSDefaultLogObject();
  if (os_log_type_enabled(leftAnchor, OS_LOG_TYPE_DEFAULT))
  {
    *v35 = 0;
    _os_log_impl(&dword_270DD4000, leftAnchor, OS_LOG_TYPE_DEFAULT, "Tried to add a UIFocusGuide for an unsupported direction", v35, 2u);
  }

LABEL_15:

  return v11;
}

- (void)vs_updateViewModel:()VSAdditions withUserInterfaceStyle:andPreferredLogoSize:
{
  v9 = a5;
  if ([v9 userInterfaceStyle] != a6)
  {
    if ([v9 conformsToProtocol:&unk_2880E88E0])
    {
      [v9 setPreferredLogoSize:{self, a2}];
    }

    [v9 setUserInterfaceStyle:a6];
  }
}

- (uint64_t)vs_updateNavigationItemAndForceViewReloadWithSearchController:()VSAdditions
{
  v4 = a3;
  navigationItem = [self navigationItem];
  [navigationItem setSearchController:v4];

  return [self _forceViewReload];
}

- (uint64_t)vs_updateNavigationItemAndForceViewReloadWithSearchController:()VSAdditions rightBarButtonItem:
{
  v6 = a4;
  v7 = a3;
  navigationItem = [self navigationItem];
  [navigationItem setRightBarButtonItem:v6];

  navigationItem2 = [self navigationItem];
  [navigationItem2 setSearchController:v7];

  return [self _forceViewReload];
}

- (void)_forceViewReload
{
  v15 = *MEMORY[0x277D85DE8];
  view = [self view];
  window = [view window];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  subviews = [window subviews];
  v4 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 removeFromSuperview];
        [window addSubview:v8];
      }

      v5 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)vs_makeFrontmostAnimated:()VSAdditions completion:
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  presentedViewController = [self presentedViewController];

  if (presentedViewController)
  {
    v8 = VSDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [self debugDescription];
      presentedViewController2 = [self presentedViewController];
      v11 = [presentedViewController2 debugDescription];
      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Warning: %@ is already presenting %@", &v14, 0x16u);
    }

    presentedViewController3 = [self presentedViewController];
    [presentedViewController3 dismissViewControllerAnimated:a3 completion:v6];
  }

  else
  {
    v6[2](v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)vs_makeTopmostInNavigationStack:()VSAdditions completion:
{
  v8 = a4;
  navigationController = [self navigationController];

  if (navigationController)
  {
    navigationController2 = [self navigationController];
    [navigationController2 vs_popToViewController:self animated:a3 completion:v8];
  }

  else
  {
    v8[2]();
  }
}

@end