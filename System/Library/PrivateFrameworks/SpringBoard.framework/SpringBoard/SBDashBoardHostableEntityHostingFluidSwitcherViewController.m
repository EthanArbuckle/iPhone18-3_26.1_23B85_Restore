@interface SBDashBoardHostableEntityHostingFluidSwitcherViewController
- (BOOL)_runTransitionRequest:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)activateDisplayItemForEntity:(id)a3 fromRequest:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)handleEvent:(id)a3;
- (BOOL)isHostingAnApp;
- (BOOL)shouldMatchMoveIconZoomingView:(id)a3;
- (BOOL)wouldHandleButtonEvent:(id)a3;
- (CGRect)applicationTransitionContext:(id)a3 frameForApplicationSceneEntity:(id)a4;
- (CGRect)iconFrameForAppLayout:(id)a3;
- (CGRect)switcherContentController:(id)a3 frameForItemWithRole:(int64_t)a4 inMainAppLayout:(id)a5 interfaceOrientation:(int64_t)a6;
- (SBDashBoardHostableEntityHostingFluidSwitcherViewController)initWithHostableEntity:(id)a3 isEphemeralSwitcher:(BOOL)a4;
- (SBDashBoardHostableEntityHostingFluidSwitcherViewControllerDelegate)delegate;
- (SBFSwitcherBackdropControlling)switcherBackdropController;
- (double)iconCornerRadiusForAppLayout:(id)a3;
- (id)_contentViewControllers;
- (id)_iconViewForAppLayout:(id)a3;
- (id)_workspaceTransitionRequestForSwitcherTransitionRequest:(id)a3 gestureInitiated:(BOOL)a4 isDismissal:(BOOL *)a5;
- (id)appLayoutsForSwitcherContentController:(id)a3;
- (id)hostedAppSceneHandle;
- (id)hostedAppSceneHandles;
- (id)liveContentOverlayCoordinator:(id)a3 hostableEntityForDisplayItem:(id)a4;
- (id)switcherContentController:(id)a3 transitionEventForContext:(id)a4 identifier:(id)a5 phase:(unint64_t)a6 animated:(BOOL)a7;
- (void)_handleBottomEdgeGesture:(id)a3;
- (void)_handleBottomEdgeGestureBegan:(id)a3;
- (void)_handleBottomEdgeGestureChanged:(id)a3;
- (void)_handleBottomEdgeGestureEnded:(id)a3;
- (void)_setupBackdropView;
- (void)_updateHomeGesture;
- (void)_updateHomeGesturePreference;
- (void)_updateModifierTimelinePresence;
- (void)aggregateAppearance:(id)a3;
- (void)aggregateBehavior:(id)a3;
- (void)dealloc;
- (void)didTransitionToPresented:(BOOL)a3;
- (void)loadView;
- (void)setDismissGestureEnabled:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)switcherContentController:(id)a3 performTransitionWithRequest:(id)a4 gestureInitiated:(BOOL)a5;
- (void)switcherContentController:(id)a3 setHomeScreenBackdropBlurMaterialRecipeName:(id)a4 withAnimationMode:(int64_t)a5 completion:(id)a6;
- (void)switcherContentController:(id)a3 setHomeScreenBackdropBlurProgress:(double)a4 withAnimationMode:(int64_t)a5 completion:(id)a6;
- (void)switcherContentController:(id)a3 setHomeScreenBackdropBlurType:(int64_t)a4;
- (void)switcherContentController:(id)a3 setHomeScreenScale:(double)a4 withAnimationMode:(int64_t)a5 completion:(id)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
@end

@implementation SBDashBoardHostableEntityHostingFluidSwitcherViewController

- (SBDashBoardHostableEntityHostingFluidSwitcherViewController)initWithHostableEntity:(id)a3 isEphemeralSwitcher:(BOOL)a4
{
  v7 = a3;
  v8 = [v7 displayItemRepresentation];
  if (v8)
  {
    v26.receiver = self;
    v26.super_class = SBDashBoardHostableEntityHostingFluidSwitcherViewController;
    v9 = [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)&v26 init];
    if (v9)
    {
      v10 = +[SBSwitcherWindowManagementContext singleAppContext];
      windowManagementContext = v9->_windowManagementContext;
      v9->_windowManagementContext = v10;

      objc_storeStrong(&v9->_currentHostableEntity, a3);
      activatingHostableEntity = v9->_activatingHostableEntity;
      v9->_activatingHostableEntity = 0;

      v9->_ephemeralSwitcher = a4;
      v13 = objc_alloc_init(SBMainDisplayLayoutStateManager);
      layoutStateManager = v9->_layoutStateManager;
      v9->_layoutStateManager = &v13->super;

      v15 = [SBMainDisplayLayoutStateManager _initialLayoutStateWithDisplayOrdinal:0 isDisplayExternal:0];
      layoutState = v9->_layoutState;
      v9->_layoutState = v15;

      v17 = [MEMORY[0x277D02C20] rootSettings];
      v18 = [v17 cameraExtensionSettings];
      cameraExtensionSettings = v9->_cameraExtensionSettings;
      v9->_cameraExtensionSettings = v18;

      v20 = +[SBAppSwitcherDomain rootSettings];
      switcherSettings = v9->_switcherSettings;
      v9->_switcherSettings = v20;

      v22 = [(SBAppSwitcherSettings *)v9->_switcherSettings dashboardHomeGestureSettings];
      homeGestureSettings = v9->_homeGestureSettings;
      v9->_homeGestureSettings = v22;

      [(PTSettings *)v9->_switcherSettings addKeyObserver:v9];
      [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)v9 setDismissesOnScreenOff:1];
    }

    self = v9;
    v24 = self;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)dealloc
{
  [(PTSettings *)self->_switcherSettings removeKeyObserver:self];
  [(SBFluidSwitcherViewController *)self->_switcherViewController invalidate];
  switcherViewController = self->_switcherViewController;
  self->_switcherViewController = 0;

  [(SBDashBoardHostableEntityWorkspaceTransitionManager *)self->_transitionManager invalidate];
  transitionManager = self->_transitionManager;
  self->_transitionManager = 0;

  v5.receiver = self;
  v5.super_class = SBDashBoardHostableEntityHostingFluidSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v5 dealloc];
}

- (BOOL)activateDisplayItemForEntity:(id)a3 fromRequest:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __124__SBDashBoardHostableEntityHostingFluidSwitcherViewController_activateDisplayItemForEntity_fromRequest_animated_completion___block_invoke;
  v37[3] = &unk_2783A9C70;
  v14 = v13;
  v38 = v14;
  v15 = MEMORY[0x223D6F7F0](v37);
  v16 = [v11 displayItemRepresentation];
  if (v16)
  {
    v17 = [v12 applicationContext];
    [v17 preludeAnimationTokenWrapper];
    v18 = v26 = v7;
    v19 = [v18 consumeToken];

    v20 = +[SBMainWorkspace sharedInstance];
    v21 = [v20 createRequestWithOptions:0];

    [v21 setSource:{objc_msgSend(v12, "source")}];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __124__SBDashBoardHostableEntityHostingFluidSwitcherViewController_activateDisplayItemForEntity_fromRequest_animated_completion___block_invoke_2;
    v32[3] = &unk_2783AF7F0;
    v33 = v16;
    v22 = v11;
    v34 = v22;
    v23 = v19;
    v35 = v23;
    v36 = self;
    [v21 modifyApplicationContext:v32];
    objc_storeStrong(&self->_activatingHostableEntity, a3);
    objc_initWeak(&location, self);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __124__SBDashBoardHostableEntityHostingFluidSwitcherViewController_activateDisplayItemForEntity_fromRequest_animated_completion___block_invoke_3;
    v27[3] = &unk_2783B08A8;
    objc_copyWeak(&v30, &location);
    v28 = v22;
    v29 = v15;
    v24 = [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _runTransitionRequest:v21 animated:v26 completion:v27];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else
  {
    v15[2](v15, 0);
    v24 = 0;
  }

  return v24;
}

uint64_t __124__SBDashBoardHostableEntityHostingFluidSwitcherViewController_activateDisplayItemForEntity_fromRequest_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __124__SBDashBoardHostableEntityHostingFluidSwitcherViewController_activateDisplayItemForEntity_fromRequest_animated_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SBDashBoardHostableWorkspaceEntity alloc];
  v5 = [*(a1 + 32) bundleIdentifier];
  v7 = [(SBDashBoardHostableWorkspaceEntity *)v4 initWithBundleIdentifier:v5 hostableEntity:*(a1 + 40)];

  v6 = [SBConsumableTokenWrapper consumableTokenWrapperWithToken:*(a1 + 48)];
  [v3 setPreludeAnimationTokenWrapper:v6];

  [v3 setActivatingEntity:v7];
  [v3 setDelegate:*(a1 + 56)];
}

void __124__SBDashBoardHostableEntityHostingFluidSwitcherViewController_activateDisplayItemForEntity_fromRequest_animated_completion___block_invoke_3(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      objc_storeStrong(WeakRetained + 146, *(a1 + 32));
      v5 = v7[147];
      v7[147] = 0;

      [v7[134] noteAppLayoutsDidChange];
      [v7[135] setNeedsUpdatePreferencesWithReason:@"_currentHostableEntity changed"];
    }

    else
    {
      v6 = WeakRetained[147];
      if (v6 == *(a1 + 32))
      {
        WeakRetained[147] = 0;
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)_runTransitionRequest:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  transitionManager = self->_transitionManager;
  if (transitionManager)
  {
    bottomEdgeRecognizer = self->_bottomEdgeRecognizer;
    if (bottomEdgeRecognizer)
    {
      v13 = [(SBHomeGesturePanGestureRecognizer *)bottomEdgeRecognizer isEnabled];
      [(SBHomeGesturePanGestureRecognizer *)self->_bottomEdgeRecognizer setEnabled:0];
      [(SBHomeGesturePanGestureRecognizer *)self->_bottomEdgeRecognizer setEnabled:v13];
    }

    [v8 finalize];
    v14 = [v8 applicationContext];
    v15 = [v14 layoutState];
    layoutState = self->_layoutState;
    self->_layoutState = v15;

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __105__SBDashBoardHostableEntityHostingFluidSwitcherViewController__runTransitionRequest_animated_completion___block_invoke;
    v18[3] = &unk_2783B08D0;
    v18[4] = self;
    v19 = a4;
    [(CSCoverSheetViewControllerBase *)self updateAppearance:v18];
    [(SBDashBoardHostableEntityWorkspaceTransitionManager *)self->_transitionManager interruptCurrentTransitionIfNeeded];
    [(SBDashBoardHostableEntityWorkspaceTransitionManager *)self->_transitionManager executeTransitionRequest:v8 completion:v10];
  }

  else
  {
    (*(v9 + 2))(v9, 0);
  }

  return transitionManager != 0;
}

id __105__SBDashBoardHostableEntityHostingFluidSwitcherViewController__runTransitionRequest_animated_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) aggregateAppearance:a2];
  if (*(a1 + 40) == 1)
  {
    [*(*(a1 + 32) + 1072) defaultTransitionAnimationSettings];
  }

  else
  {
    [MEMORY[0x277CF0B70] settingsWithDuration:0.0];
  }
  v3 = ;

  return v3;
}

- (void)setDismissGestureEnabled:(BOOL)a3
{
  if (self->_dismissGestureEnabled != a3)
  {
    self->_dismissGestureEnabled = a3;
    [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _updateHomeGesturePreference];

    [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
  }
}

- (void)loadView
{
  v2.receiver = self;
  v2.super_class = SBDashBoardHostableEntityHostingFluidSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v2 loadView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBDashBoardHostableEntityHostingFluidSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:a3];
  [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _updateHomeGesturePreference];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBDashBoardHostableEntityHostingFluidSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidAppear:a3];
  [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _updateHomeGesturePreference];
  [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _updateHomeGesture];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBDashBoardHostableEntityHostingFluidSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillDisappear:a3];
  [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _updateHomeGesturePreference];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SBDashBoardHostableEntityHostingFluidSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v7 viewDidDisappear:a3];
  [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _updateHomeGesturePreference];
  [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self bs_removeChildViewController:self->_switcherViewController];
  [(SBFluidSwitcherViewController *)self->_switcherViewController invalidate];
  switcherViewController = self->_switcherViewController;
  self->_switcherViewController = 0;

  [(SBDashBoardHostableEntityWorkspaceTransitionManager *)self->_transitionManager invalidate];
  transitionManager = self->_transitionManager;
  self->_transitionManager = 0;

  v6 = [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self delegate];
  [v6 dashBoardHostableEntityFluidSwitcherViewControllerDidDismiss:self];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v24.receiver = self;
  v24.super_class = SBDashBoardHostableEntityHostingFluidSwitcherViewController;
  [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)&v24 viewIsAppearing:a3];
  if (!self->_switcherViewController)
  {
    v4 = [(UIViewController *)self _sbWindowScene];
    [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _updateHomeGesturePreference];
    v5 = objc_alloc_init(SBDashBoardRootSwitcherModifier);
    v6 = [[SBFluidSwitcherPersonality alloc] initWithRootModifier:v5];
    v7 = [[SBDashBoardFluidSwitcherLiveContentOverlayCoordinator alloc] initWithWindowScene:v4];
    [(SBDashBoardFluidSwitcherLiveContentOverlayCoordinator *)v7 setDataSource:self];
    v8 = [SBDashBoardSecureFluidSwitcherViewController alloc];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(SBFluidSwitcherViewController *)v8 initWithPersonality:v6 liveContentOverlayCoordinator:v7 dataSource:self delegate:self debugName:v10];
    switcherViewController = self->_switcherViewController;
    self->_switcherViewController = v11;

    v13 = [[SBDashBoardHostableEntityWorkspaceTransitionManager alloc] initWithSwitcherViewController:self->_switcherViewController];
    transitionManager = self->_transitionManager;
    self->_transitionManager = v13;

    v15 = [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self view];
    v16 = [(SBDashBoardSecureFluidSwitcherViewController *)self->_switcherViewController view];
    v17 = self->_switcherViewController;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __79__SBDashBoardHostableEntityHostingFluidSwitcherViewController_viewIsAppearing___block_invoke;
    v20[3] = &unk_2783B08F8;
    v21 = v16;
    v22 = v15;
    v23 = self;
    v18 = v15;
    v19 = v16;
    [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self bs_addChildViewController:v17 animated:0 transitionBlock:v20];
    [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _setupBackdropView];
  }
}

void __79__SBDashBoardHostableEntityHostingFluidSwitcherViewController_viewIsAppearing___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v4 bounds];
  [v3 setFrame:?];
  [*(a1 + 32) setAutoresizingMask:18];
  [*(a1 + 48) _updateModifierTimelinePresence];
  v5[2]();
}

- (void)aggregateBehavior:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SBDashBoardHostableEntityHostingFluidSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v15 aggregateBehavior:v4];
  [v4 setIdleWarnMode:2];
  [v4 setIdleTimerMode:1];
  [v4 setIdleTimerDuration:17];
  if ([(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self isDismissGestureEnabled])
  {
    [v4 addRestrictedCapabilities:4104];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _contentViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v4 unionBehavior:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)aggregateAppearance:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = SBDashBoardHostableEntityHostingFluidSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v32 aggregateAppearance:v4];
  layoutState = self->_layoutState;
  v6 = objc_opt_class();
  v7 = layoutState;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [(SBLayoutState *)v9 unlockedEnvironmentMode];
  if (v10 == 3)
  {
    v11 = objc_opt_new();
    v12 = [v11 priority:40];
    v13 = [v12 hidden:1];
    v14 = [v13 fakeStatusBar:BSSettingFlagForBool()];

    [v4 addComponent:v14];
    v15 = objc_opt_new();
    v16 = [v15 priority:40];
    v17 = [v16 hidden:1];

    [v4 addComponent:v17];
    v18 = objc_opt_new();
    v19 = [v18 priority:40];
    v20 = [v19 hidden:1];
    v21 = [v20 suppressTeachableMomentsAnimation:1];

    [v4 addComponent:v21];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _contentViewControllers];
  v23 = [v22 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v29;
    do
    {
      v26 = 0;
      do
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v28 + 1) + 8 * v26);
        if (objc_opt_respondsToSelector())
        {
          [v4 unionAppearance:v27];
        }

        ++v26;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v24);
  }
}

- (BOOL)wouldHandleButtonEvent:(id)a3
{
  v4 = a3;
  if ([v4 type] == 27)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(CSHostableEntity *)self->_currentHostableEntity hostingViewController];
    v5 = [v6 wouldHandleButtonEvent:v4];
  }

  return v5;
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBDashBoardHostableEntityHostingFluidSwitcherViewController;
  if (-[CSCoverSheetViewControllerBase handleEvent:](&v10, sel_handleEvent_, v4) && ([v4 isConsumable] & 1) != 0)
  {
    goto LABEL_8;
  }

  v5 = [v4 type];
  if (v5 == 27 || v5 == 25 && [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self dismissesOnScreenOff])
  {
    [(CSCoverSheetViewControllerBase *)self dismiss];
  }

  v6 = [(CSHostableEntity *)self->_currentHostableEntity hostingViewController];
  v7 = [v6 handleEvent:v4];

  if (v7)
  {
LABEL_8:
    v8 = [v4 isConsumable];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)didTransitionToPresented:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SBDashBoardHostableEntityHostingFluidSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v6 didTransitionToPresented:?];
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherBackdropController);
    [WeakRetained setScale:2 behaviorMode:0 completion:1.0];
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v6 = a4;
  if ([a3 isEqual:self->_switcherSettings] && objc_msgSend(v6, "isEqualToString:", @"showLockedModifierTimeline"))
  {
    [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _updateModifierTimelinePresence];
  }
}

- (id)liveContentOverlayCoordinator:(id)a3 hostableEntityForDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  p_currentHostableEntity = &self->_currentHostableEntity;
  currentHostableEntity = self->_currentHostableEntity;
  if (currentHostableEntity && ([(CSHostableEntity *)currentHostableEntity displayItemRepresentation], v10 = objc_claimAutoreleasedReturnValue(), v11 = [(SBDisplayItem *)v7 isEqualToItem:v10], v10, (v11 & 1) != 0) || (p_currentHostableEntity = &self->_activatingHostableEntity, (activatingHostableEntity = self->_activatingHostableEntity) != 0) && ([(CSHostableEntity *)activatingHostableEntity displayItemRepresentation], v13 = objc_claimAutoreleasedReturnValue(), v14 = [(SBDisplayItem *)v7 isEqualToItem:v13], v13, v14))
  {
    v15 = *p_currentHostableEntity;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)switcherContentController:(id)a3 performTransitionWithRequest:(id)a4 gestureInitiated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v15 = 0;
  v10 = [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _workspaceTransitionRequestForSwitcherTransitionRequest:v9 gestureInitiated:v5 isDismissal:&v15];
  if (v15 == 1)
  {
    [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self setDismissGestureEnabled:0];
  }

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __135__SBDashBoardHostableEntityHostingFluidSwitcherViewController_switcherContentController_performTransitionWithRequest_gestureInitiated___block_invoke;
  v11[3] = &unk_2783B0920;
  v13 = v15;
  objc_copyWeak(&v12, &location);
  [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _runTransitionRequest:v10 animated:1 completion:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __135__SBDashBoardHostableEntityHostingFluidSwitcherViewController_switcherContentController_performTransitionWithRequest_gestureInitiated___block_invoke(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained dismiss];
  }
}

- (void)switcherContentController:(id)a3 setHomeScreenScale:(double)a4 withAnimationMode:(int64_t)a5 completion:(id)a6
{
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_switcherBackdropController);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setScale:a5 behaviorMode:v11 completion:a4];
  }

  else if (v11)
  {
    v11[2](v11, 1, 0);
  }
}

- (void)switcherContentController:(id)a3 setHomeScreenBackdropBlurProgress:(double)a4 withAnimationMode:(int64_t)a5 completion:(id)a6
{
  v12 = a3;
  v10 = a6;
  backdropView = self->_backdropView;
  if (backdropView)
  {
    [(SBHomeScreenBackdropViewBase *)backdropView setBlurProgress:a5 behaviorMode:v10 completion:a4];
  }

  else if (v10)
  {
    v10[2](v10, 1, 0);
  }
}

- (void)switcherContentController:(id)a3 setHomeScreenBackdropBlurType:(int64_t)a4
{
  v6 = a3;
  if (a4 == 3)
  {
    [(SBHomeScreenBackdropViewBase *)self->_backdropView beginRequiringLiveBackdropViewForReason:@"SBDashBoardCaptureExtensionBackdropRequiringReason"];
LABEL_4:
    [(SBHomeScreenBackdropViewBase *)self->_backdropView beginRequiringBackdropViewForReason:@"SBDashBoardCaptureExtensionBackdropRequiringReason"];
    goto LABEL_6;
  }

  [(SBHomeScreenBackdropViewBase *)self->_backdropView endRequiringLiveBackdropViewForReason:@"SBDashBoardCaptureExtensionBackdropRequiringReason"];
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    goto LABEL_4;
  }

  [(SBHomeScreenBackdropViewBase *)self->_backdropView endRequiringBackdropViewForReason:@"SBDashBoardCaptureExtensionBackdropRequiringReason"];
LABEL_6:
}

- (void)switcherContentController:(id)a3 setHomeScreenBackdropBlurMaterialRecipeName:(id)a4 withAnimationMode:(int64_t)a5 completion:(id)a6
{
  v9 = a4;
  v10 = MEMORY[0x277D75D18];
  cameraExtensionSettings = self->_cameraExtensionSettings;
  v12 = a6;
  v13 = [(CSCameraExtensionSettings *)cameraExtensionSettings coverSheetContentScaleSettings];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __162__SBDashBoardHostableEntityHostingFluidSwitcherViewController_switcherContentController_setHomeScreenBackdropBlurMaterialRecipeName_withAnimationMode_completion___block_invoke;
  v15[3] = &unk_2783A92D8;
  v15[4] = self;
  v16 = v9;
  v14 = v9;
  [v10 sb_animateWithSettings:v13 mode:a5 animations:v15 completion:v12];
}

void __162__SBDashBoardHostableEntityHostingFluidSwitcherViewController_switcherContentController_setHomeScreenBackdropBlurMaterialRecipeName_withAnimationMode_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1128);
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;

  v6 = v7;
  if (v7)
  {
    [v7 setMaterialRecipeName:*(a1 + 40)];
    v6 = v7;
  }
}

- (id)appLayoutsForSwitcherContentController:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [SBAppLayout alloc];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  v12 = v5;
  v6 = [(CSHostableEntity *)self->_currentHostableEntity displayItemRepresentation];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v8 = [(SBAppLayout *)v4 initWithItemsForLayoutRoles:v7 configuration:1 environment:1 preferredDisplayOrdinal:0];

  v11 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];

  return v9;
}

- (id)switcherContentController:(id)a3 transitionEventForContext:(id)a4 identifier:(id)a5 phase:(unint64_t)a6 animated:(BOOL)a7
{
  v7 = a7;
  v10 = a4;
  v11 = a5;
  v12 = [v10 previousLayoutState];
  v13 = objc_opt_class();
  v14 = v12;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = [v16 unlockedEnvironmentMode];
  v18 = [v10 layoutState];
  v19 = objc_opt_class();
  v20 = v18;
  if (v19)
  {
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  v23 = [v22 unlockedEnvironmentMode];
  v24 = [v16 appLayout];
  v25 = [v22 appLayout];
  v26 = [[SBTransitionSwitcherModifierEvent alloc] initWithTransitionID:v11 phase:a6 animated:v7];

  [(SBTransitionSwitcherModifierEvent *)v26 setFromAppLayout:v24];
  [(SBTransitionSwitcherModifierEvent *)v26 setFromEnvironmentMode:v17];
  -[SBTransitionSwitcherModifierEvent setFromInterfaceOrientation:](v26, "setFromInterfaceOrientation:", [v16 interfaceOrientation]);
  v27 = [v16 elementWithRole:1];
  -[SBTransitionSwitcherModifierEvent setFromAppLayoutWantsExclusiveForeground:](v26, "setFromAppLayoutWantsExclusiveForeground:", [v27 hasLayoutAttributes:2]);

  [(SBTransitionSwitcherModifierEvent *)v26 setToAppLayout:v25];
  [(SBTransitionSwitcherModifierEvent *)v26 setToEnvironmentMode:v23];
  -[SBTransitionSwitcherModifierEvent setToInterfaceOrientation:](v26, "setToInterfaceOrientation:", [v22 interfaceOrientation]);
  v28 = [v22 elementWithRole:1];

  -[SBTransitionSwitcherModifierEvent setToAppLayoutWantsExclusiveForeground:](v26, "setToAppLayoutWantsExclusiveForeground:", [v28 hasLayoutAttributes:2]);
  [(SBTransitionSwitcherModifierEvent *)v26 setActivatingAppLayout:v25];
  v29 = [v10 request];
  -[SBTransitionSwitcherModifierEvent setGestureInitiated:](v26, "setGestureInitiated:", [v29 source] == 11);

  v30 = [v10 preludeAnimationTokenWrapper];
  v31 = [v30 isTokenAvailable];

  if (a6 == 1 && v31)
  {
    v32 = [v10 preludeAnimationTokenWrapper];
    v33 = [v32 consumeToken];

    v34 = [SBConsumableTokenWrapper consumableTokenWrapperWithToken:v33];
    [(SBTransitionSwitcherModifierEvent *)v26 setZoomFromHardwareButtonPreludeTokenWrapper:v34];
  }

  return v26;
}

- (CGRect)switcherContentController:(id)a3 frameForItemWithRole:(int64_t)a4 inMainAppLayout:(id)a5 interfaceOrientation:(int64_t)a6
{
  v6 = [(SBDashBoardSecureFluidSwitcherViewController *)self->_switcherViewController view:a3];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)iconFrameForAppLayout:(id)a3
{
  v4 = [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _iconViewForAppLayout:a3];
  if (v4)
  {
    v5 = [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self view];
    v6 = [v5 _screen];
    v7 = [v6 fixedCoordinateSpace];

    [v4 iconImageFrame];
    [v4 convertRect:v7 toCoordinateSpace:?];
    [v5 convertRect:v7 fromCoordinateSpace:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = *MEMORY[0x277CBF398];
    v11 = *(MEMORY[0x277CBF398] + 8);
    v13 = *(MEMORY[0x277CBF398] + 16);
    v15 = *(MEMORY[0x277CBF398] + 24);
  }

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (double)iconCornerRadiusForAppLayout:(id)a3
{
  [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self iconFrameForAppLayout:a3];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  IsNull = CGRectIsNull(v11);
  result = 0.0;
  if (!IsNull)
  {
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    v9 = CGRectGetWidth(v12);
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v10 = CGRectGetHeight(v13);
    if (v9 <= v10)
    {
      v10 = v9;
    }

    return v10 * 0.5;
  }

  return result;
}

- (BOOL)shouldMatchMoveIconZoomingView:(id)a3
{
  v4 = [a3 window];
  v5 = [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self view];
  v6 = [v5 window];
  v7 = v4 == v6;

  return v7;
}

- (CGRect)applicationTransitionContext:(id)a3 frameForApplicationSceneEntity:(id)a4
{
  v4 = [(UIViewController *)self _sbWindowScene:a3];
  v5 = [v4 _FBSScene];
  v6 = [v5 settings];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 setActivationPolicyForParticipantsBelow:2];
  v8 = MEMORY[0x277CBEB98];
  v9 = [(CSHostableEntity *)self->_currentHostableEntity applicationBundleIdentifier];
  v10 = [v8 setWithObject:v9];
  [v7 setAssociatedBundleIdentifiersToSuppressInSystemAperture:v10];

  v11 = [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _contentViewControllers];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __99__SBDashBoardHostableEntityHostingFluidSwitcherViewController_zStackParticipant_updatePreferences___block_invoke;
  v14[3] = &unk_2783B0948;
  v15 = v6;
  v16 = v7;
  v12 = v7;
  v13 = v6;
  [v11 bs_each:v14];
}

void __99__SBDashBoardHostableEntityHostingFluidSwitcherViewController_zStackParticipant_updatePreferences___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 zStackParticipant:*(a1 + 32) updatePreferences:*(a1 + 40)];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = [(UIViewController *)self _sbWindowScene];
  v5 = [v4 zStackResolver];
  v6 = v5 != 0;

  return v6 & [(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture];
}

- (BOOL)isHostingAnApp
{
  v2 = [(SBLayoutState *)self->_layoutState elements];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)hostedAppSceneHandle
{
  v2 = [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self hostedAppSceneHandles];
  v3 = [v2 firstObject];

  return v3;
}

- (id)hostedAppSceneHandles
{
  v2 = [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _contentViewControllers];
  v3 = [v2 bs_compactMap:&__block_literal_global_83];
  v4 = [v3 bs_flatten];

  return v4;
}

id __84__SBDashBoardHostableEntityHostingFluidSwitcherViewController_hostedAppSceneHandles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 hostedAppSceneHandles];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateModifierTimelinePresence
{
  switcherViewController = self->_switcherViewController;
  v3 = [(SBAppSwitcherSettings *)self->_switcherSettings showLockedModifierTimeline];

  [(SBFluidSwitcherViewController *)switcherViewController setShowModifierTimeline:v3];
}

- (void)_updateHomeGesturePreference
{
  if ([(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self bs_isAppearingOrAppeared]&& SBHomeGestureEnabled() && self->_dismissGestureEnabled)
  {
    if (self->_zStackParticipant)
    {
      return;
    }

    v8 = [(UIViewController *)self _sbWindowScene];
    v3 = [v8 zStackResolver];
    v4 = [v3 acquireParticipantWithIdentifier:-[SBDashBoardHostableEntityHostingFluidSwitcherViewController _zStackParticipantIdentifier](self delegate:{"_zStackParticipantIdentifier"), self}];
    zStackParticipant = self->_zStackParticipant;
    self->_zStackParticipant = v4;

    v6 = v8;
  }

  else
  {
    v7 = self->_zStackParticipant;
    if (!v7)
    {
      return;
    }

    [(SBFZStackParticipant *)v7 invalidate];
    v6 = self->_zStackParticipant;
    self->_zStackParticipant = 0;
  }
}

- (void)_updateHomeGesture
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Not updating home gesture because no gesture manager is available for SBWindowScene %{public}@", &v2, 0xCu);
}

- (void)_handleBottomEdgeGesture:(id)a3
{
  v7 = a3;
  v4 = [v7 state];
  if ((v4 - 3) < 3)
  {
    [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _handleBottomEdgeGestureEnded:v7];
LABEL_8:
    v6 = v7;
    goto LABEL_9;
  }

  if (v4 == 2)
  {
    [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _handleBottomEdgeGestureChanged:v7];
    goto LABEL_8;
  }

  v5 = v4 == 1;
  v6 = v7;
  if (v5)
  {
    [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self _handleBottomEdgeGestureBegan:v7];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_handleBottomEdgeGestureBegan:(id)a3
{
  v4 = a3;
  [(SBDashBoardHostableEntityWorkspaceTransitionManager *)self->_transitionManager interruptCurrentTransitionIfNeeded];
  v5 = [MEMORY[0x277CCAD78] UUID];
  objc_initWeak(&location, self);
  v6 = [SBFluidSwitcherGesture alloc];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __93__SBDashBoardHostableEntityHostingFluidSwitcherViewController__handleBottomEdgeGestureBegan___block_invoke;
  v14 = &unk_2783B0990;
  objc_copyWeak(&v17, &location);
  v7 = v5;
  v15 = v7;
  v8 = v4;
  v16 = v8;
  v9 = [(SBFluidSwitcherGesture *)v6 initWithType:1 eventProvider:&v11];
  v10 = [(SBLayoutState *)self->_layoutState appLayout:v11];
  [(SBFluidSwitcherGesture *)v9 _setSelectedAppLayout:v10];

  objc_storeStrong(&self->_gesture, v9);
  [(SBFluidSwitcherViewController *)self->_switcherViewController handleFluidSwitcherGestureManager:self didBeginGesture:self->_gesture];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

SBGestureSwitcherModifierEvent *__93__SBDashBoardHostableEntityHostingFluidSwitcherViewController__handleBottomEdgeGestureBegan___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = SBGestureModifierPhaseForGestureState([v3 state]);
  v6 = [SBGestureSwitcherModifierEvent alloc];
  v7 = *(a1 + 32);
  v8 = [v3 selectedAppLayout];
  v9 = [v3 type];

  v10 = [(SBGestureSwitcherModifierEvent *)v6 initWithGestureID:v7 selectedAppLayout:v8 gestureType:v9 phase:v5];
  if (WeakRetained)
  {
    v11 = [WeakRetained view];
    v12 = WeakRetained[136];
    [v12 velocityInView:v11];
    [(SBGestureSwitcherModifierEvent *)v10 setVelocityInContainerView:?];
    [v12 translationInView:v11];
    [(SBGestureSwitcherModifierEvent *)v10 setTranslationInContainerView:?];
    [v12 _hysteresis];
    [(SBGestureSwitcherModifierEvent *)v10 setHysteresis:?];
    [v12 locationInView:v11];
    [(SBGestureSwitcherModifierEvent *)v10 setLocationInContainerView:?];
    -[SBGestureSwitcherModifierEvent setCanceled:](v10, "setCanceled:", [v12 state] == 4);
    if (objc_opt_respondsToSelector())
    {
      [(SBGestureSwitcherModifierEvent *)v10 setTouchHistoryProvider:*(a1 + 40)];
    }
  }

  return v10;
}

- (void)_handleBottomEdgeGestureChanged:(id)a3
{
  [(SBFluidSwitcherGesture *)self->_gesture _setState:2];
  switcherViewController = self->_switcherViewController;
  gesture = self->_gesture;

  [(SBFluidSwitcherViewController *)switcherViewController handleFluidSwitcherGestureManager:self didUpdateGesture:gesture];
}

- (void)_handleBottomEdgeGestureEnded:(id)a3
{
  [(SBFluidSwitcherGesture *)self->_gesture _setState:3];
  [(SBFluidSwitcherViewController *)self->_switcherViewController handleFluidSwitcherGestureManager:self didEndGesture:self->_gesture];
  gesture = self->_gesture;
  self->_gesture = 0;
}

- (id)_contentViewControllers
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [(SBLayoutState *)self->_layoutState appLayout];
  if (v3)
  {
    v4 = [(SBFluidSwitcherViewController *)self->_switcherViewController liveContentOverlayForAppLayout:v3];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 contentViewController];

      if (v5)
      {
        v8[0] = v5;
        v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v6 = MEMORY[0x277CBEBF8];
LABEL_7:

  return v6;
}

- (id)_iconViewForAppLayout:(id)a3
{
  v3 = [(CSHostableEntity *)self->_currentHostableEntity hostingViewController];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 iconZoomingView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setupBackdropView
{
  v7 = [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self view];
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v3 = [SBHomeScreenBackdropDarkTintView alloc];
    [v7 bounds];
    v4 = [(SBHomeScreenBackdropDarkTintView *)v3 initWithFrame:?];
  }

  else
  {
    v5 = [SBHomeScreenBackdropView alloc];
    [v7 bounds];
    v4 = [(SBHomeScreenBackdropView *)v5 initWithFrame:8 materialRecipe:&__block_literal_global_86_0 scaleAdjustment:?];
  }

  backdropView = self->_backdropView;
  self->_backdropView = v4;

  [(SBHomeScreenBackdropViewBase *)self->_backdropView setAutoresizingMask:18];
  [(SBHomeScreenBackdropViewBase *)self->_backdropView bs_setHitTestingDisabled:1];
  [v7 insertSubview:self->_backdropView atIndex:0];
}

double __81__SBDashBoardHostableEntityHostingFluidSwitcherViewController__setupBackdropView__block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 sbf_animatedBlurRadiusGraphicsQuality];

  result = 0.3;
  if (v1 >= 41)
  {
    return 0.5;
  }

  return result;
}

- (id)_workspaceTransitionRequestForSwitcherTransitionRequest:(id)a3 gestureInitiated:(BOOL)a4 isDismissal:(BOOL *)a5
{
  v6 = a4;
  v8 = a3;
  if ([v8 unlockedEnvironmentMode] == 1 || objc_msgSend(v8, "unlockedEnvironmentMode") == 2)
  {
    v9 = 1;
  }

  else
  {
    v10 = [v8 appLayout];
    v9 = [v10 type] == 1;
  }

  v11 = +[SBMainWorkspace sharedInstance];
  v12 = [v11 createRequestWithOptions:0];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __148__SBDashBoardHostableEntityHostingFluidSwitcherViewController__workspaceTransitionRequestForSwitcherTransitionRequest_gestureInitiated_isDismissal___block_invoke;
  v15[3] = &unk_2783A9E00;
  v16 = v9;
  v15[4] = self;
  [v12 modifyApplicationContext:v15];
  if (v6)
  {
    v13 = 11;
  }

  else
  {
    v13 = 0;
  }

  [v12 setSource:v13];
  if (a5)
  {
    *a5 = v9;
  }

  return v12;
}

void __148__SBDashBoardHostableEntityHostingFluidSwitcherViewController__workspaceTransitionRequestForSwitcherTransitionRequest_gestureInitiated_isDismissal___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40) == 1)
  {
    v4 = a2;
    v9 = objc_alloc_init(SBHomeScreenEntity);
  }

  else
  {
    v5 = a2;
    v6 = [SBDashBoardHostableWorkspaceEntity alloc];
    v7 = [*(*(a1 + 32) + 1168) displayItemRepresentation];
    v8 = [v7 bundleIdentifier];
    v9 = [(SBDashBoardHostableWorkspaceEntity *)v6 initWithBundleIdentifier:v8 hostableEntity:*(*(a1 + 32) + 1168)];
  }

  [a2 setActivatingEntity:v9];
  [a2 setDelegate:*(a1 + 32)];
}

- (SBDashBoardHostableEntityHostingFluidSwitcherViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBFSwitcherBackdropControlling)switcherBackdropController
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherBackdropController);

  return WeakRetained;
}

@end