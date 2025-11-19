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
  v1 = objc_getAssociatedObject(a1, "VSInteractionIgnoreCountKey");
  v2 = [v1 integerValue];

  return v2;
}

- (void)vs_setIgnoreInteractionCount:()VSAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  objc_setAssociatedObject(a1, "VSInteractionIgnoreCountKey", v2, 3);
}

- (void)vs_beginIgnoringInteraction
{
  v2 = [a1 vs_ignoreInteractionCount];
  [a1 vs_setIgnoreInteractionCount:v2 + 1];
  if (!v2)
  {
    v3 = [a1 view];
    [v3 setUserInteractionEnabled:0];
  }
}

- (void)vs_endIgnoringInteraction
{
  v2 = [a1 vs_ignoreInteractionCount] - 1;
  [a1 vs_setIgnoreInteractionCount:v2];
  if (!v2)
  {
    v3 = [a1 view];
    [v3 setUserInteractionEnabled:1];
  }
}

- (id)vs_addFocusGuideFromView:()VSAdditions toViews:withDirection:
{
  v8 = a3;
  v9 = MEMORY[0x277D75500];
  v10 = a4;
  v11 = objc_alloc_init(v9);
  v12 = [a1 view];
  [v12 addLayoutGuide:v11];

  [v11 setPreferredFocusEnvironments:v10];
  v13 = [v11 widthAnchor];
  v14 = [v8 widthAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [v11 heightAnchor];
  v17 = [v8 heightAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  if (a5 > 3)
  {
    if (a5 == 8)
    {
      v29 = [v11 topAnchor];
      v30 = [v8 topAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];
      [v31 setActive:1];

      v25 = [v11 leftAnchor];
      v28 = [v8 rightAnchor];
      goto LABEL_14;
    }

    if (a5 != 4)
    {
      goto LABEL_8;
    }

    v23 = [v11 topAnchor];
    v24 = [v8 bottomAnchor];
LABEL_11:
    v26 = v24;
    v27 = [v23 constraintEqualToAnchor:v24];
    [v27 setActive:1];

    v22 = [v11 leftAnchor];
    goto LABEL_12;
  }

  if (a5 == 1)
  {
    v23 = [v11 bottomAnchor];
    v24 = [v8 topAnchor];
    goto LABEL_11;
  }

  if (a5 == 2)
  {
    v19 = [v11 topAnchor];
    v20 = [v8 topAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = [v11 rightAnchor];
LABEL_12:
    v25 = v22;
    v28 = [v8 leftAnchor];
LABEL_14:
    v32 = v28;
    v33 = [v25 constraintEqualToAnchor:v28];
    [v33 setActive:1];

    goto LABEL_15;
  }

LABEL_8:
  v25 = VSDefaultLogObject();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v35 = 0;
    _os_log_impl(&dword_270DD4000, v25, OS_LOG_TYPE_DEFAULT, "Tried to add a UIFocusGuide for an unsupported direction", v35, 2u);
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
      [v9 setPreferredLogoSize:{a1, a2}];
    }

    [v9 setUserInterfaceStyle:a6];
  }
}

- (uint64_t)vs_updateNavigationItemAndForceViewReloadWithSearchController:()VSAdditions
{
  v4 = a3;
  v5 = [a1 navigationItem];
  [v5 setSearchController:v4];

  return [a1 _forceViewReload];
}

- (uint64_t)vs_updateNavigationItemAndForceViewReloadWithSearchController:()VSAdditions rightBarButtonItem:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 navigationItem];
  [v8 setRightBarButtonItem:v6];

  v9 = [a1 navigationItem];
  [v9 setSearchController:v7];

  return [a1 _forceViewReload];
}

- (void)_forceViewReload
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = [a1 view];
  v2 = [v1 window];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 subviews];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 removeFromSuperview];
        [v2 addSubview:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)vs_makeFrontmostAnimated:()VSAdditions completion:
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a1 presentedViewController];

  if (v7)
  {
    v8 = VSDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [a1 debugDescription];
      v10 = [a1 presentedViewController];
      v11 = [v10 debugDescription];
      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Warning: %@ is already presenting %@", &v14, 0x16u);
    }

    v12 = [a1 presentedViewController];
    [v12 dismissViewControllerAnimated:a3 completion:v6];
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
  v6 = [a1 navigationController];

  if (v6)
  {
    v7 = [a1 navigationController];
    [v7 vs_popToViewController:a1 animated:a3 completion:v8];
  }

  else
  {
    v8[2]();
  }
}

@end