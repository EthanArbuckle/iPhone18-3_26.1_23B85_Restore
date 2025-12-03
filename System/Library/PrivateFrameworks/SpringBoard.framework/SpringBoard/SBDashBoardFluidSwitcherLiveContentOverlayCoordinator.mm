@interface SBDashBoardFluidSwitcherLiveContentOverlayCoordinator
- (SBDashBoardFluidSwitcherLiveContentOverlayCoordinator)initWithWindowScene:(id)scene;
- (SBDashBoardFluidSwitcherLiveContentOverlayCoordinatorDataSource)dataSource;
- (SBSwitcherLiveContentOverlayCoordinatorDelegate)delegate;
- (SBWindowScene)sbWindowScene;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
@end

@implementation SBDashBoardFluidSwitcherLiveContentOverlayCoordinator

- (SBDashBoardFluidSwitcherLiveContentOverlayCoordinator)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v10.receiver = self;
  v10.super_class = SBDashBoardFluidSwitcherLiveContentOverlayCoordinator;
  v5 = [(SBDashBoardFluidSwitcherLiveContentOverlayCoordinator *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sbWindowScene, sceneCopy);
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    liveContentOverlaysByLeafAppLayout = v6->_liveContentOverlaysByLeafAppLayout;
    v6->_liveContentOverlaysByLeafAppLayout = strongToStrongObjectsMapTable;
  }

  return v6;
}

- (void)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  delegate = [(SBDashBoardFluidSwitcherLiveContentOverlayCoordinator *)self delegate];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMapTable *)self->_liveContentOverlaysByLeafAppLayout copy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [(NSMapTable *)self->_liveContentOverlaysByLeafAppLayout removeObjectForKey:v9];
        [delegate removeLiveContentOverlayForAppLayout:v9 animated:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  v58 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (![(SBDashBoardFluidSwitcherLiveContentOverlayCoordinator *)self areLiveContentOverlayUpdatesSuspended])
  {
    delegate = [(SBDashBoardFluidSwitcherLiveContentOverlayCoordinator *)self delegate];
    dataSource = [(SBDashBoardFluidSwitcherLiveContentOverlayCoordinator *)self dataSource];
    fromLayoutState = [contextCopy fromLayoutState];
    toLayoutState = [contextCopy toLayoutState];
    v44 = fromLayoutState;
    appLayout = [fromLayoutState appLayout];
    v43 = toLayoutState;
    appLayout2 = [toLayoutState appLayout];
    v10 = MEMORY[0x277CBEB98];
    v42 = appLayout;
    leafAppLayouts = [appLayout leafAppLayouts];
    v12 = [v10 setWithArray:leafAppLayouts];

    v13 = MEMORY[0x277CBEB98];
    v41 = appLayout2;
    leafAppLayouts2 = [appLayout2 leafAppLayouts];
    v15 = [v13 setWithArray:leafAppLayouts2];

    v39 = v15;
    v16 = [v15 mutableCopy];
    v40 = v12;
    [v16 minusSet:v12];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v16;
    v49 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v49)
    {
      v48 = *v54;
      v17 = *MEMORY[0x277CBF3A0];
      v18 = *(MEMORY[0x277CBF3A0] + 8);
      v19 = *(MEMORY[0x277CBF3A0] + 16);
      v20 = *(MEMORY[0x277CBF3A0] + 24);
      selfCopy = self;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v54 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v53 + 1) + 8 * i);
          v23 = [v22 itemForLayoutRole:1];
          if ([v23 type] == 7 || !objc_msgSend(v23, "type"))
          {
            v52 = v22;
            v24 = [dataSource liveContentOverlayCoordinator:self hostableEntityForDisplayItem:v23];
            v25 = [SBDashBoardHostableWorkspaceEntity alloc];
            bundleIdentifier = [v23 bundleIdentifier];
            v51 = v24;
            v27 = [(SBDashBoardHostableWorkspaceEntity *)v25 initWithBundleIdentifier:bundleIdentifier hostableEntity:v24];

            v28 = [SBDashBoardSwitcherHostableEntityLiveContentOverlay alloc];
            dashBoardHostableEntity = [(SBDashBoardHostableWorkspaceEntity *)v27 dashBoardHostableEntity];
            WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
            v31 = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)v28 initWithEntity:dashBoardHostableEntity windowScene:WeakRetained];

            LOBYTE(v38) = 0;
            v32 = v27;
            [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)v31 configureWithWorkspaceEntity:v27 referenceFrame:1 contentOrientation:1 containerOrientation:1 layoutRole:1 sbsDisplayLayoutRole:0 zOrderIndex:v17 spaceConfiguration:v18 floatingConfiguration:v19 hasClassicAppOrientationMismatch:v20 sizingPolicy:1, 0, v38, 2];
            parentViewControllerForContentOverlay = [delegate parentViewControllerForContentOverlay];
            contentViewController = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)v31 contentViewController];
            view = [contentViewController view];
            if (objc_opt_respondsToSelector())
            {
              v36 = contentViewController;
              v37 = [dataSource liveContentOverlayCoordinator:self coverSheetPresenterForDisplayItem:v23];
              [v36 setPresenter:v37];

              self = selfCopy;
            }

            [parentViewControllerForContentOverlay addChildViewController:contentViewController];
            [contentViewController bs_beginAppearanceTransition:1 animated:0];
            [contentViewController didMoveToParentViewController:parentViewControllerForContentOverlay];
            [contentViewController bs_endAppearanceTransition];
            [(NSMapTable *)self->_liveContentOverlaysByLeafAppLayout setObject:v31 forKey:v52];
            [delegate addLiveContentOverlay:v31 forAppLayout:v52 animated:{objc_msgSend(contextCopy, "animationsDisabled") ^ 1}];
          }
        }

        v49 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v49);
    }
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  v36 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (![(SBDashBoardFluidSwitcherLiveContentOverlayCoordinator *)self areLiveContentOverlayUpdatesSuspended])
  {
    delegate = [(SBDashBoardFluidSwitcherLiveContentOverlayCoordinator *)self delegate];
    fromLayoutState = [contextCopy fromLayoutState];
    toLayoutState = [contextCopy toLayoutState];
    v30 = fromLayoutState;
    appLayout = [fromLayoutState appLayout];
    v29 = toLayoutState;
    appLayout2 = [toLayoutState appLayout];
    v11 = MEMORY[0x277CBEB98];
    v28 = appLayout;
    leafAppLayouts = [appLayout leafAppLayouts];
    v13 = [v11 setWithArray:leafAppLayouts];

    v14 = MEMORY[0x277CBEB98];
    v27 = appLayout2;
    leafAppLayouts2 = [appLayout2 leafAppLayouts];
    v16 = [v14 setWithArray:leafAppLayouts2];

    v26 = v13;
    v17 = [v13 mutableCopy];
    v25 = v16;
    [v17 minusSet:v16];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v31 + 1) + 8 * i);
          v24 = [v23 itemForLayoutRole:1];
          if ([v24 type] == 7 || !objc_msgSend(v24, "type"))
          {
            [(NSMapTable *)self->_liveContentOverlaysByLeafAppLayout removeObjectForKey:v23];
            [delegate removeLiveContentOverlayForAppLayout:v23 animated:{objc_msgSend(contextCopy, "animationsDisabled") ^ 1}];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v20);
    }
  }
}

- (SBWindowScene)sbWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);

  return WeakRetained;
}

- (SBSwitcherLiveContentOverlayCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBDashBoardFluidSwitcherLiveContentOverlayCoordinatorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end