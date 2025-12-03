@interface SBFluidSwitcherPageContentViewProvider
- (CGSize)_pageViewSizeForAppLayout:(id)layout;
- (SBFluidSwitcherPageContentViewProvider)init;
- (SBFluidSwitcherPageContentViewProvider)initWithDelegate:(id)delegate snapshotCache:(id)cache lockoutViewProvider:(id)provider;
- (SBFluidSwitcherPageContentViewProviderDelegate)delegate;
- (id)_containerViewController;
- (id)_snapshotViewDelegate;
- (id)_snapshotViewForAppLayout:(id)layout setActive:(BOOL)active;
- (id)_viewForService:(id)service appLayout:(id)layout;
- (id)existingTransientOverlayViewControllerForAppLayout:(id)layout;
- (id)pageContentViewForAppLayout:(id)layout setActive:(BOOL)active;
- (int64_t)_interfaceOrientation;
- (int64_t)_preferredContentInterfaceOrientationForViewController:(id)controller preferredInterfaceOrientation:(int64_t)orientation;
- (void)_applyTransientOverlayViewController:(id)controller toPageContentView:(id)view;
- (void)_relinquishTransientOverlayViewController:(id)controller forPageContentView:(id)view;
- (void)acquiredViewController:(id)controller forTransientOverlayAppLayout:(id)layout;
- (void)appSwitcherTransientOverlayPageContentViewDidChangeActive:(id)active;
- (void)appSwitcherTransientOverlayPageContentViewDidChangeContainerOrientation:(id)orientation;
- (void)purgePageContentViewForAppLayout:(id)layout;
- (void)relinquishTransientOverlayViewController:(id)controller;
@end

@implementation SBFluidSwitcherPageContentViewProvider

- (id)_snapshotViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained delegateForSnapshotPageViewFromProvider:self];

  return v4;
}

- (id)_containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained containerViewControllerForPageViewFromProvider:self];

  return v4;
}

- (SBFluidSwitcherPageContentViewProvider)initWithDelegate:(id)delegate snapshotCache:(id)cache lockoutViewProvider:(id)provider
{
  delegateCopy = delegate;
  cacheCopy = cache;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = SBFluidSwitcherPageContentViewProvider;
  v12 = [(SBFluidSwitcherPageContentViewProvider *)&v14 init];
  if (v12)
  {
    if (delegateCopy)
    {
      if (cacheCopy)
      {
LABEL_4:
        objc_storeWeak(&v12->_delegate, delegateCopy);
        objc_storeStrong(&v12->_snapshotCache, cache);
        objc_storeStrong(&v12->_lockoutVCProvider, provider);
        goto LABEL_5;
      }
    }

    else
    {
      [SBFluidSwitcherPageContentViewProvider initWithDelegate:a2 snapshotCache:v12 lockoutViewProvider:?];
      if (cacheCopy)
      {
        goto LABEL_4;
      }
    }

    [SBFluidSwitcherPageContentViewProvider initWithDelegate:a2 snapshotCache:v12 lockoutViewProvider:?];
    goto LABEL_4;
  }

LABEL_5:

  return v12;
}

- (SBFluidSwitcherPageContentViewProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherPageContentViewProvider.m" lineNumber:68 description:@"use initWithDelegate:snapshotCache:"];

  return 0;
}

- (void)acquiredViewController:(id)controller forTransientOverlayAppLayout:(id)layout
{
  v21 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  objectEnumerator = [(NSMapTable *)self->_pageContentViewToTransientOverlayViewController objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  v8 = [allObjects containsObject:controllerCopy];

  if ((v8 & 1) == 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = self->_transientOverlayPageContentViews;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          v15 = [(NSMapTable *)self->_pageContentViewToTransientOverlayViewController objectForKey:v14, v16];
          if (!v15 && [v14 isActive])
          {
            [(SBFluidSwitcherPageContentViewProvider *)self _applyTransientOverlayViewController:controllerCopy toPageContentView:v14];
            goto LABEL_13;
          }
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

- (id)existingTransientOverlayViewControllerForAppLayout:(id)layout
{
  v20 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  if ([layoutCopy type] == 2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_pageContentViewToTransientOverlayViewController;
    v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          appLayout = [v10 appLayout];
          v12 = [appLayout isEqual:layoutCopy];

          if (v12)
          {
            v13 = [(NSMapTable *)self->_pageContentViewToTransientOverlayViewController objectForKey:v10];
            goto LABEL_13;
          }
        }

        v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_13:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)pageContentViewForAppLayout:(id)layout setActive:(BOOL)active
{
  activeCopy = active;
  layoutCopy = layout;
  if ([layoutCopy type] == 3)
  {
    v7 = +[SBAppSwitcherServiceManager sharedInstance];
    registeredServicesSnapshot = [v7 registeredServicesSnapshot];

    v9 = [layoutCopy itemForLayoutRole:1];
    bundleIdentifier = [v9 bundleIdentifier];
    v11 = [registeredServicesSnapshot serviceForBundleIdentifier:bundleIdentifier];
    v12 = [(SBFluidSwitcherPageContentViewProvider *)self _viewForService:v11 appLayout:layoutCopy];
    [(SBAppSwitcherTransientOverlayPageContentView *)v12 setActive:activeCopy];
    [(SBAppSwitcherTransientOverlayPageContentView *)v12 setOrientation:[(SBFluidSwitcherPageContentViewProvider *)self _interfaceOrientation]];

    goto LABEL_13;
  }

  if ([layoutCopy type] != 2)
  {
    if ([layoutCopy type])
    {
      if ([layoutCopy type] != 5)
      {
        v12 = 0;
        goto LABEL_13;
      }

      v17 = [SBPlusSwitcherPageContentView alloc];
      v18 = [(SBPlusSwitcherPageContentView *)v17 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    }

    else
    {
      v18 = [(SBFluidSwitcherPageContentViewProvider *)self _snapshotViewForAppLayout:layoutCopy setActive:activeCopy];
    }

    v12 = v18;
    goto LABEL_13;
  }

  v13 = [SBAppSwitcherTransientOverlayPageContentView alloc];
  [(SBFluidSwitcherPageContentViewProvider *)self _pageViewSizeForAppLayout:layoutCopy];
  SBRectWithSize();
  v12 = [(SBAppSwitcherTransientOverlayPageContentView *)v13 initWithFrame:layoutCopy appLayout:?];
  [(SBAppSwitcherTransientOverlayPageContentView *)v12 setDelegate:self];
  [(SBAppSwitcherTransientOverlayPageContentView *)v12 setActive:activeCopy];
  [(SBAppSwitcherTransientOverlayPageContentView *)v12 setOrientation:[(SBFluidSwitcherPageContentViewProvider *)self _interfaceOrientation]];
  transientOverlayPageContentViews = self->_transientOverlayPageContentViews;
  if (!transientOverlayPageContentViews)
  {
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    v16 = self->_transientOverlayPageContentViews;
    self->_transientOverlayPageContentViews = v15;

    transientOverlayPageContentViews = self->_transientOverlayPageContentViews;
  }

  [(NSMutableArray *)transientOverlayPageContentViews addObject:v12];
LABEL_13:

  return v12;
}

- (void)purgePageContentViewForAppLayout:(id)layout
{
  v33 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  if ([layoutCopy type] == 3)
  {
    v5 = [layoutCopy itemForLayoutRole:1];
    switcherServiceViewControllerMap = self->_switcherServiceViewControllerMap;
    bundleIdentifier = [v5 bundleIdentifier];
    [(NSMutableDictionary *)switcherServiceViewControllerMap removeObjectForKey:bundleIdentifier];
LABEL_3:

    goto LABEL_4;
  }

  if ([layoutCopy type] != 2)
  {
    goto LABEL_18;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = self->_transientOverlayPageContentViews;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v5 = 0;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        appLayout = [v13 appLayout];
        v15 = [appLayout isEqual:layoutCopy];

        if (v15)
        {
          if (!v5)
          {
            v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
          }

          [v5 addObject:v13];
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  else
  {
    v5 = 0;
  }

  if ([v5 count])
  {
    [(NSMutableArray *)self->_transientOverlayPageContentViews removeObjectsInArray:v5];
    if (![(NSMutableArray *)self->_transientOverlayPageContentViews count])
    {
      transientOverlayPageContentViews = self->_transientOverlayPageContentViews;
      self->_transientOverlayPageContentViews = 0;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    bundleIdentifier = v5;
    v17 = [bundleIdentifier countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(bundleIdentifier);
          }

          v21 = *(*(&v23 + 1) + 8 * j);
          v22 = [(NSMapTable *)self->_pageContentViewToTransientOverlayViewController objectForKey:v21, v23];
          if (v22)
          {
            [(SBFluidSwitcherPageContentViewProvider *)self _relinquishTransientOverlayViewController:v22 forPageContentView:v21];
          }
        }

        v18 = [bundleIdentifier countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v18);
    }

    goto LABEL_3;
  }

LABEL_4:

LABEL_18:
}

- (void)relinquishTransientOverlayViewController:(id)controller
{
  v18 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = [(NSMapTable *)self->_pageContentViewToTransientOverlayViewController copy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [v6 objectForKey:{v11, v13}];
        if (v12 == controllerCopy)
        {
          [(SBFluidSwitcherPageContentViewProvider *)self _relinquishTransientOverlayViewController:v12 forPageContentView:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)appSwitcherTransientOverlayPageContentViewDidChangeActive:(id)active
{
  activeCopy = active;
  isActive = [activeCopy isActive];
  v5 = [(NSMapTable *)self->_pageContentViewToTransientOverlayViewController objectForKey:activeCopy];
  appLayout = v5;
  if (isActive)
  {

    if (appLayout)
    {
      goto LABEL_10;
    }

    appLayout = [activeCopy appLayout];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [WeakRetained viewControllerForTransientOverlayAppLayout:appLayout fromProvider:self];

    if (v8)
    {
      [(SBFluidSwitcherPageContentViewProvider *)self _applyTransientOverlayViewController:v8 toPageContentView:activeCopy];
    }

    else
    {
      [activeCopy setContentView:0];
    }
  }

  else if (v5)
  {
    [(SBFluidSwitcherPageContentViewProvider *)self _relinquishTransientOverlayViewController:v5 forPageContentView:activeCopy];
  }

LABEL_10:
}

- (void)appSwitcherTransientOverlayPageContentViewDidChangeContainerOrientation:(id)orientation
{
  pageContentViewToTransientOverlayViewController = self->_pageContentViewToTransientOverlayViewController;
  orientationCopy = orientation;
  v7 = [(NSMapTable *)pageContentViewToTransientOverlayViewController objectForKey:orientationCopy];
  v6 = -[SBFluidSwitcherPageContentViewProvider _preferredContentInterfaceOrientationForViewController:preferredInterfaceOrientation:](self, "_preferredContentInterfaceOrientationForViewController:preferredInterfaceOrientation:", v7, [orientationCopy orientation]);
  [v7 setContainerOrientation:v6];
  [orientationCopy setContentOrientation:v6];
}

- (int64_t)_preferredContentInterfaceOrientationForViewController:(id)controller preferredInterfaceOrientation:(int64_t)orientation
{
  supportedInterfaceOrientations = [controller supportedInterfaceOrientations];
  if (supportedInterfaceOrientations)
  {
    v6 = supportedInterfaceOrientations;
  }

  else
  {
    v6 = 2;
  }

  v7 = XBInterfaceOrientationMaskForInterfaceOrientation();
  v8 = 1;
  v9 = 4;
  v10 = 2;
  if ((v6 & 8) != 0)
  {
    v10 = 3;
  }

  if ((v6 & 0x10) == 0)
  {
    v9 = v10;
  }

  if ((v6 & 2) == 0)
  {
    v8 = v9;
  }

  if ((v6 & v7) != 0)
  {
    return orientation;
  }

  else
  {
    return v8;
  }
}

- (int64_t)_interfaceOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained orientationForPageViewFromProvider:self];

  return v4;
}

- (CGSize)_pageViewSizeForAppLayout:(id)layout
{
  layoutCopy = layout;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sizeForAppLayout:layoutCopy fromProvider:self];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)_snapshotViewForAppLayout:(id)layout setActive:(BOOL)active
{
  activeCopy = active;
  layoutCopy = layout;
  v7 = [SBAppSwitcherReusableSnapshotView alloc];
  _snapshotViewDelegate = [(SBFluidSwitcherPageContentViewProvider *)self _snapshotViewDelegate];
  snapshotCache = self->_snapshotCache;
  lockoutVCProvider = self->_lockoutVCProvider;
  appClipOverlayCoordinator = [SBApp appClipOverlayCoordinator];
  _containerViewController = [(SBFluidSwitcherPageContentViewProvider *)self _containerViewController];
  v13 = [(SBAppSwitcherReusableSnapshotView *)v7 initWithDelegate:_snapshotViewDelegate snapshotCache:snapshotCache lockoutVCProvider:lockoutVCProvider appClipOverlayCoordinator:appClipOverlayCoordinator containerViewController:_containerViewController];

  [(SBAppSwitcherReusableSnapshotView *)v13 setActive:activeCopy];
  [(SBAppSwitcherReusableSnapshotView *)v13 setAppLayout:layoutCopy];
  [(SBFluidSwitcherPageContentViewProvider *)self _pageViewSizeForAppLayout:layoutCopy];

  SBRectWithSize();
  [(SBAppSwitcherReusableSnapshotView *)v13 setFrame:?];

  return v13;
}

- (id)_viewForService:(id)service appLayout:(id)layout
{
  serviceCopy = service;
  layoutCopy = layout;
  v8 = [SBAppSwitcherServicePageContentView alloc];
  [(SBFluidSwitcherPageContentViewProvider *)self _pageViewSizeForAppLayout:layoutCopy];

  SBRectWithSize();
  v9 = [(SBAppSwitcherServicePageContentView *)v8 initWithFrame:?];
  if (!self->_switcherServiceViewControllerMap)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    switcherServiceViewControllerMap = self->_switcherServiceViewControllerMap;
    self->_switcherServiceViewControllerMap = v10;
  }

  bundleIdentifier = [serviceCopy bundleIdentifier];
  v13 = [(NSMutableDictionary *)self->_switcherServiceViewControllerMap objectForKey:bundleIdentifier];
  if (v13)
  {
    _containerViewController = [(SBFluidSwitcherPageContentViewProvider *)self _containerViewController];
    [v13 beginAppearanceTransition:1 animated:0];
    [_containerViewController addChildViewController:v13];
    view = [v13 view];
    [(SBAppSwitcherServicePageContentView *)v9 bounds];
    [view setFrame:?];
    [view setAutoresizingMask:18];
    [(SBAppSwitcherServicePageContentView *)v9 addSubview:view];
    [v13 didMoveToParentViewController:_containerViewController];
    [v13 bs_endAppearanceTransition];
  }

  else
  {
    viewServiceClassName = [serviceCopy viewServiceClassName];
    bundleIdentifier2 = [serviceCopy bundleIdentifier];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __68__SBFluidSwitcherPageContentViewProvider__viewForService_appLayout___block_invoke;
    v20[3] = &unk_2783C03B0;
    v20[4] = self;
    v21 = v9;
    v22 = bundleIdentifier;
    v18 = [SBAppSwitcherPageServiceRemoteViewController requestViewController:viewServiceClassName fromServiceWithBundleIdentifier:bundleIdentifier2 connectionHandler:v20];
  }

  return v9;
}

void __68__SBFluidSwitcherPageContentViewProvider__viewForService_appLayout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [*(a1 + 32) _containerViewController];
    [v5 beginAppearanceTransition:1 animated:0];
    [v8 addChildViewController:v5];
    v9 = [v5 view];
    [*(a1 + 40) bounds];
    [v9 setFrame:?];
    [v9 setAutoresizingMask:18];
    [*(a1 + 40) addSubview:v9];
    [*(*(a1 + 32) + 48) setObject:v5 forKey:*(a1 + 48)];
    [v5 didMoveToParentViewController:v8];
    [v5 bs_endAppearanceTransition];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_4;
    }

    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Failed to load remote view service: %{public}@. %@", &v11, 0x16u);
    }
  }

LABEL_4:
}

- (void)_applyTransientOverlayViewController:(id)controller toPageContentView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  pageContentViewToTransientOverlayViewController = self->_pageContentViewToTransientOverlayViewController;
  if (!pageContentViewToTransientOverlayViewController)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:512 capacity:1];
    v9 = self->_pageContentViewToTransientOverlayViewController;
    self->_pageContentViewToTransientOverlayViewController = v8;

    pageContentViewToTransientOverlayViewController = self->_pageContentViewToTransientOverlayViewController;
  }

  [(NSMapTable *)pageContentViewToTransientOverlayViewController setObject:controllerCopy forKey:viewCopy];
  _containerViewController = [(SBFluidSwitcherPageContentViewProvider *)self _containerViewController];
  [_containerViewController addChildViewController:controllerCopy];
  [controllerCopy didMoveToParentViewController:_containerViewController];
  [controllerCopy bs_beginAppearanceTransition:1 animated:0];
  [viewCopy setOrientation:{-[SBFluidSwitcherPageContentViewProvider _interfaceOrientation](self, "_interfaceOrientation")}];
  v11 = -[SBFluidSwitcherPageContentViewProvider _preferredContentInterfaceOrientationForViewController:preferredInterfaceOrientation:](self, "_preferredContentInterfaceOrientationForViewController:preferredInterfaceOrientation:", controllerCopy, [viewCopy orientation]);
  [controllerCopy setContainerOrientation:v11];
  [viewCopy setContentOrientation:v11];
  view = [controllerCopy view];
  [viewCopy setContentView:view];

  [controllerCopy bs_endAppearanceTransition:1];
}

- (void)_relinquishTransientOverlayViewController:(id)controller forPageContentView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  if (controllerCopy)
  {
    [controllerCopy bs_beginAppearanceTransition:0 animated:0];
    [viewCopy setContentView:0];
    [controllerCopy bs_endAppearanceTransition:0];
    [controllerCopy willMoveToParentViewController:0];
    [controllerCopy removeFromParentViewController];
    [(NSMapTable *)self->_pageContentViewToTransientOverlayViewController removeObjectForKey:viewCopy];
    if (![(NSMapTable *)self->_pageContentViewToTransientOverlayViewController count])
    {
      pageContentViewToTransientOverlayViewController = self->_pageContentViewToTransientOverlayViewController;
      self->_pageContentViewToTransientOverlayViewController = 0;
    }
  }
}

- (SBFluidSwitcherPageContentViewProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDelegate:(uint64_t)a1 snapshotCache:(uint64_t)a2 lockoutViewProvider:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherPageContentViewProvider.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
}

- (void)initWithDelegate:(uint64_t)a1 snapshotCache:(uint64_t)a2 lockoutViewProvider:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherPageContentViewProvider.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"cache"}];
}

@end