@interface SBMenuBarManager
- (BOOL)_hitTestInMenuBarContentWithPoint:(CGPoint)a3 gestureWindow:(id)a4;
- (BOOL)_hitTestInMenuBarWindowWithPoint:(CGPoint)a3 gestureWindow:(id)a4;
- (BOOL)_isMenuBarGenerallyDisabled;
- (BOOL)_isTopScreenEdgeProtectedForScene:(id)a3;
- (BOOL)_locationIsInMenuBarRevealArea:(CGPoint)a3;
- (BOOL)_touchIsInMenuBarRevealArea:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)isPointInsideMenuBarContent:(CGPoint)a3 fromCoordinateSpace:(id)a4;
- (BOOL)shouldAllowCoverSheetPresentationGestureAtLocation:(CGPoint)a3 isTouchGesture:(BOOL)a4;
- (BOOL)shouldDisableMenusForAppRestrictionForViewController:(id)a3;
- (BOOL)transientUIHandledTouch:(id)a3 withSystemGestureRecognizer:(id)a4;
- (SBMenuBarManager)initWithWindowScene:(id)a3;
- (SBWindowScene)windowScene;
- (double)maximumContentWidthForMenuBarViewController:(id)a3;
- (id)displayNameForWebAppWithSceneIdentifier:(id)a3;
- (id)viewForSystemGestureRecognizer:(id)a3;
- (void)_acquireHideAppStatusBarAssertionIfNeeded;
- (void)_cancelDismissPeekedMenuBarTimer;
- (void)_cancelMenuRevealTimer;
- (void)_createWindowControlsViewController;
- (void)_dismissMenuBarAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)_handleAdjustPresentedMenuHoverGesture:(id)a3;
- (void)_handleContentSizeCategoryDidChange:(id)a3;
- (void)_handleDismissMenuBarHoverGesture:(id)a3;
- (void)_handleGuidedAccessActivationChanged:(id)a3;
- (void)_handlePresentGesture:(id)a3;
- (void)_handleShowMenuBarHoverGesture:(id)a3;
- (void)_notifyObserversOfVisibilityChange;
- (void)_scheduleDismissPeekedMenuBarTimer;
- (void)_setMenuBarVisible:(BOOL)a3 animated:(BOOL)a4 userInitiated:(BOOL)a5;
- (void)_setupTransitionSystemStatusBarIfNeededForTransitioningToPresented:(BOOL)a3;
- (void)_setupWindowControlsWrapperView;
- (void)_updateMenuBarVisibilityWithRequestedVisibility:(BOOL)a3;
- (void)addObserver:(id)a3;
- (void)cancelMenuBarRevealForHeldModifierKey;
- (void)menuWillPresentForViewController:(id)a3;
- (void)openHelpMenu;
- (void)peekMenuBar;
- (void)removeObserver:(id)a3;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
- (void)scheduleMenuBarRevealForHeldModifierKey;
- (void)toggleMenuBarVisibilityForSystemKeyboardShortcut;
- (void)windowSceneDidDisconnect:(id)a3;
@end

@implementation SBMenuBarManager

- (SBMenuBarManager)initWithWindowScene:(id)a3
{
  v42[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v40.receiver = self;
  v40.super_class = SBMenuBarManager;
  v5 = [(SBMenuBarManager *)&v40 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, v4);
    v7 = +[SBMenuBarDomain rootSettings];
    menuBarSettings = v6->_menuBarSettings;
    v6->_menuBarSettings = v7;

    v9 = +[SBDefaults localDefaults];
    v10 = [v9 gestureDefaults];
    gestureDefaults = v6->_gestureDefaults;
    v6->_gestureDefaults = v10;

    v12 = +[SBDefaults localDefaults];
    v13 = [v12 externalDisplayDefaults];
    externalDisplayDefaults = v6->_externalDisplayDefaults;
    v6->_externalDisplayDefaults = v13;

    objc_initWeak(&location, v6);
    v15 = MEMORY[0x277D43280];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __40__SBMenuBarManager_initWithWindowScene___block_invoke;
    v37[3] = &unk_2783A8C68;
    objc_copyWeak(&v38, &location);
    v16 = [v15 recipeWithTitle:@"Invalidate Main Menu If Presented" action:v37];
    [(PTDomain *)SBMenuBarDomain registerTestRecipe:v16];

    v17 = [(SBScreenEdgePanGestureRecognizer *)[SBMenuBarScreenEdgePanGestureRecognizer alloc] initWithTarget:v6 action:sel__handlePresentGesture_ type:6 options:0];
    presentGestureRecognizer = v6->_presentGestureRecognizer;
    v6->_presentGestureRecognizer = &v17->super;

    [(SBScreenEdgePanGestureRecognizer *)v6->_presentGestureRecognizer setDelegate:v6];
    [(SBScreenEdgePanGestureRecognizer *)v6->_presentGestureRecognizer setAllowedTouchTypes:&unk_28336DF50];
    [(UIScreenEdgePanGestureRecognizer *)v6->_presentGestureRecognizer setEdges:1];
    v19 = objc_alloc_init(MEMORY[0x277D3DF50]);
    pointerClientController = v6->_pointerClientController;
    v6->_pointerClientController = v19;

    v21 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:v6 action:sel__handleShowMenuBarHoverGesture_];
    pointerShowMenuBarHoverGestureRecognizer = v6->_pointerShowMenuBarHoverGestureRecognizer;
    v6->_pointerShowMenuBarHoverGestureRecognizer = v21;

    [(UIHoverGestureRecognizer *)v6->_pointerShowMenuBarHoverGestureRecognizer setDelegate:v6];
    v23 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:v6 action:sel__handleDismissMenuBarHoverGesture_];
    pointerDismissMenuBarHoverGestureRecognizer = v6->_pointerDismissMenuBarHoverGestureRecognizer;
    v6->_pointerDismissMenuBarHoverGestureRecognizer = v23;

    [(UIHoverGestureRecognizer *)v6->_pointerDismissMenuBarHoverGestureRecognizer setDelegate:v6];
    v25 = [v4 systemGestureManager];
    [v25 addGestureRecognizer:v6->_presentGestureRecognizer withType:141];
    [v25 addGestureRecognizer:v6->_pointerShowMenuBarHoverGestureRecognizer withType:142];
    [v25 addGestureRecognizer:v6->_pointerDismissMenuBarHoverGestureRecognizer withType:143];
    [v25 gestureRecognizerOfType:1 shouldRequireFailureOfGestureRecognizer:v6->_presentGestureRecognizer];
    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    [v26 addObserver:v6 selector:sel__handleCoverSheetDidPresent_ name:@"SBCoverSheetDidPresentNotification" object:0];
    [v26 addObserver:v6 selector:sel__handleGuidedAccessActivationChanged_ name:@"SBGuidedAccessActivationChangedNotification" object:0];
    [v26 addObserver:v6 selector:sel__handleContentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];
    if ([v4 isMainDisplayWindowScene])
    {
      objc_initWeak(&from, v6);
      v27 = [MEMORY[0x277CCABD8] mainQueue];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __40__SBMenuBarManager_initWithWindowScene___block_invoke_28;
      v34[3] = &unk_2783AFD98;
      objc_copyWeak(&v35, &from);
      v28 = [v26 addObserverForName:@"__SBExtendedDisplayMenuBarManagerPresenceChangedNotification" object:0 queue:v27 usingBlock:v34];
      externalDisplayConnectionObserver = v6->_externalDisplayConnectionObserver;
      v6->_externalDisplayConnectionObserver = v28;

      objc_destroyWeak(&v35);
      objc_destroyWeak(&from);
    }

    else if ([v4 isExtendedDisplayWindowScene])
    {
      v41 = @"present";
      v42[0] = MEMORY[0x277CBEC38];
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
      [v26 postNotificationName:@"__SBExtendedDisplayMenuBarManagerPresenceChangedNotification" object:0 userInfo:v30];
    }

    v31 = objc_alloc_init(SBMenuBarDemoMenuProvider);
    menuBarDemoMenuProvider = v6->_menuBarDemoMenuProvider;
    v6->_menuBarDemoMenuProvider = v31;

    [(SBMenuBarDemoMenuProvider *)v6->_menuBarDemoMenuProvider setDelegate:v6];
    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __40__SBMenuBarManager_initWithWindowScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained menuBarViewController];
  [v1 testInvalidation];
}

void __40__SBMenuBarManager_initWithWindowScene___block_invoke_28(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 userInfo];
    v5 = [v4 objectForKey:@"present"];
    WeakRetained[32] = [v5 BOOLValue];
  }
}

- (void)windowSceneDidDisconnect:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  menuBarSceneUpdateAssertion = self->_menuBarSceneUpdateAssertion;
  v5 = a3;
  [(BSInvalidatable *)menuBarSceneUpdateAssertion invalidate];
  [(PSPointerClientController *)self->_pointerClientController invalidate];
  [(BSInvalidatable *)self->_guidedAccessSystemGestureDisableAssertion invalidate];
  menuBarSceneProvider = self->_menuBarSceneProvider;
  self->_menuBarSceneProvider = 0;

  v7 = [v5 systemGestureManager];
  [v7 removeGestureRecognizer:self->_presentGestureRecognizer];
  [v7 removeGestureRecognizer:self->_pointerShowMenuBarHoverGestureRecognizer];
  [v7 removeGestureRecognizer:self->_pointerDismissMenuBarHoverGestureRecognizer];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 removeObserver:self];
  v9 = [v5 isExtendedDisplayWindowScene];

  if (v9)
  {
    v11 = @"present";
    v12[0] = MEMORY[0x277CBEC28];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v8 postNotificationName:@"__SBExtendedDisplayMenuBarManagerPresenceChangedNotification" object:0 userInfo:v10];
  }

  else if (self->_externalDisplayConnectionObserver)
  {
    [v8 removeObserver:?];
  }
}

- (void)_setMenuBarVisible:(BOOL)a3 animated:(BOOL)a4 userInitiated:(BOOL)a5
{
  if (self->_menuBarVisible != a3)
  {
    v5 = a4;
    menuBarViewController = self->_menuBarViewController;
    if (a3)
    {
      if (!menuBarViewController)
      {
        v8 = a5;
        v9 = [(SBMenuBarSceneProviding *)self->_menuBarSceneProvider menuBarRecipientScene];
        if (v9)
        {
          WeakRetained = objc_loadWeakRetained(&self->_windowScene);
          v11 = [WeakRetained statusBarManager];
          v12 = [v11 assertionManager];
          v13 = [(SBMenuBarSceneProviding *)self->_menuBarSceneProvider isStatusBarStyleControlledBySystem];
          v14 = [v11 reusePool];
          v15 = [v14 getReusableStatusBarWithReason:@"menu bar"];
          menuBarStatusBar = self->_menuBarStatusBar;
          self->_menuBarStatusBar = v15;

          self->_oldStatusBarTranslatesAutoresizingMaskValue = [(UIStatusBar *)self->_menuBarStatusBar translatesAutoresizingMaskIntoConstraints];
          [(SBMenuBarManager *)self _createWindowControlsViewController];
          if (([WeakRetained isExternalDisplayWindowScene] & 1) == 0 && v8)
          {
            v17 = [MEMORY[0x277D65DD0] sharedInstance];
            [v17 emitEvent:69];
          }

          objc_initWeak(&location, self);
          v18 = [SBMenuBarViewController alloc];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __62__SBMenuBarManager__setMenuBarVisible_animated_userInitiated___block_invoke;
          v23[3] = &unk_2783AFE10;
          objc_copyWeak(&v27, &location);
          v24 = v9;
          v19 = v11;
          v25 = v19;
          v28 = v13;
          v20 = v12;
          v26 = v20;
          v29 = v5;
          v21 = [(SBMenuBarViewController *)v18 initWithScene:v24 delegate:self animateInitialPresentation:v5 loadCompletion:v23];
          v22 = self->_menuBarViewController;
          self->_menuBarViewController = v21;

          objc_destroyWeak(&v27);
          objc_destroyWeak(&location);
        }
      }
    }

    else if (menuBarViewController)
    {

      [(SBMenuBarManager *)self _dismissMenuBarAnimated:a4];
    }
  }
}

void __62__SBMenuBarManager__setMenuBarVisible_animated_userInitiated___block_invoke(uint64_t a1, int a2)
{
  v62[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (a2 && WeakRetained)
  {
    v47 = objc_loadWeakRetained(WeakRetained + 8);
    v49 = [v5 menuBarViewController];
    v46 = [v5 menuBarSceneProvider];
    *(v5 + 56) = 1;
    [v5 _cancelDismissPeekedMenuBarTimer];
    v6 = [v47 transientUIInteractionManager];
    [v6 registerParticipantForTapToDismiss:v5];

    [*(a1 + 32) addObserver:v5];
    v7 = [(SBFTouchPassThroughWindow *)[SBMenuBarWindow alloc] initWithWindowScene:v47 role:@"SBTraitsParticipantRoleMenuBar" debugName:@"menuBarWindow"];
    [(SBMenuBarWindow *)v7 setWindowLevel:*MEMORY[0x277D772B8] + -1.0 + 1.0];
    [(SBMenuBarWindow *)v7 makeKeyAndVisible];
    v41 = v7;
    objc_storeStrong(v5 + 13, v7);
    v50 = v5[14];
    v48 = [v50 statusBar];
    [v48 setMenuBarProvider:v5];
    v8 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:v5 action:sel__handleAdjustPresentedMenuHoverGesture_];
    [v8 setDelegate:v5];
    [v5 setAdjustPresentedMenuHoverGestureRecognizer:v8];
    v42 = v8;
    [v50 addGestureRecognizer:v8];
    v9 = [*(a1 + 40) statusBar];
    v10 = [v9 foregroundColor];
    [v10 _luminance];
    v12 = v11;
    v13 = v11 > 0.5;

    [v5 setMenuBarBecomingVisible:1];
    if (*(a1 + 64) == 1)
    {
      v14 = [*(a1 + 48) currentEffectiveStatusBarStyleRequest];
      [v50 setStyleRequest:v14];

      [v49 setMenuBarContentIsLight:v12 > 0.5];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __62__SBMenuBarManager__setMenuBarVisible_animated_userInitiated___block_invoke_2;
      v60[3] = &unk_2783AC358;
      objc_copyWeak(&v61, (a1 + 56));
      [v49 addPresentationCompletionBlock:v60];
      objc_destroyWeak(&v61);
    }

    else
    {
      v15 = [v46 appLeadingStatusBarStyleRequest];
      v16 = [v46 appTrailingStatusBarStyleRequest];
      v17 = [v46 statusBarStyleAttributesForScene:*(a1 + 32)];
      [v15 style];
      v18 = _UIStatusBarResolvedStyleFromStyle();
      [v16 style];
      v19 = _UIStatusBarResolvedStyleFromStyle();
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __62__SBMenuBarManager__setMenuBarVisible_animated_userInitiated___block_invoke_3;
      v58[3] = &unk_2783AFDC0;
      v20 = v17;
      v59 = v20;
      v21 = MEMORY[0x223D6F7F0](v58);
      v22 = v21;
      v23 = v13;
      if (v15)
      {
        v23 = (*(v21 + 16))(v21, v18);
      }

      if (v16)
      {
        v13 = v22[2](v22, v19);
      }

      v24 = (v23 | v13) & 1;
      if ((v23 | v13))
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      [v49 setMenuBarContentIsLight:v24];
      [v49 setVariableBlurNeeded:1];
      [v48 setStyle:v18 forPartWithIdentifier:*MEMORY[0x277D6C030]];
      [v48 setStyle:v19 forPartWithIdentifier:*MEMORY[0x277D6C038]];
      [v48 setStyle:v25 forPartWithIdentifier:*MEMORY[0x277D6C028]];
      [v5 _setupTransitionSystemStatusBarIfNeededForTransitioningToPresented:1];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __62__SBMenuBarManager__setMenuBarVisible_animated_userInitiated___block_invoke_4;
      v55[3] = &unk_2783AB460;
      objc_copyWeak(v57, (a1 + 56));
      v57[1] = v25;
      v56 = v48;
      [v49 addAlongsidePresentationAnimations:v55];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __62__SBMenuBarManager__setMenuBarVisible_animated_userInitiated___block_invoke_5;
      v51[3] = &unk_2783AFDE8;
      objc_copyWeak(&v54, (a1 + 56));
      v52 = *(a1 + 40);
      v53 = v50;
      [v49 addPresentationCompletionBlock:v51];
      [v5 _acquireHideAppStatusBarAssertionIfNeeded];

      objc_destroyWeak(&v54);
      objc_destroyWeak(v57);
    }

    v26 = [*(a1 + 48) newSettingsAssertionWithStatusBarHidden:1 atLevel:7 reason:@"menu bar visible over wallpaper"];
    [v26 acquire];
    v27 = v5[16];
    v5[16] = v26;
    v39 = v26;

    [v5 _notifyObserversOfVisibilityChange];
    v28 = [v5[13] rootViewController];
    v29 = [v28 view];
    [v29 addSubview:v50];
    [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = MEMORY[0x277CCAAD0];
    v45 = [v50 topAnchor];
    v44 = [v29 topAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v62[0] = v43;
    v30 = [v50 widthAnchor];
    v31 = [v29 widthAnchor];
    [v46 windowControlsHorizontalSafeAreaPaddingForScene:*(a1 + 32)];
    v33 = [v30 constraintEqualToAnchor:v31 constant:-v32];
    v62[1] = v33;
    v34 = [v50 trailingAnchor];
    v35 = [v29 trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    v62[2] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:3];
    [v40 activateConstraints:v37];

    [v50 layoutIfNeeded];
    [v49 willMoveToParentViewController:v28];
    [v28 addChildViewController:v5[18]];

    [v48 setMode:4];
    [v49 didMoveToParentViewController:v28];
    [v5 _setupWindowControlsWrapperView];
    v38 = [v47 controlCenterController];
    [v38 dismissAnimated:1];
  }

  else if (WeakRetained)
  {
    [WeakRetained _dismissMenuBarAnimated:*(a1 + 65)];
  }
}

void __62__SBMenuBarManager__setMenuBarVisible_animated_userInitiated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMenuBarBecomingVisible:0];
}

BOOL __62__SBMenuBarManager__setMenuBarVisible_animated_userInitiated___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return a2 == 1;
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    return a2 == 1;
  }

  v4 = [v3 textColor];
  [v4 _luminance];
  v2 = v5 > 0.5;

  return v2;
}

void __62__SBMenuBarManager__setMenuBarVisible_animated_userInitiated___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained transitionOnlySystemStatusBar];
  v3 = [objc_alloc(MEMORY[0x277D6BFE8]) initWithResolvedStyle:*(a1 + 48) foregroundColor:0];
  [v2 setStyleRequest:v3];

  [*(a1 + 32) setStyle:*(a1 + 48) forPartWithIdentifier:*MEMORY[0x277D6C030]];
  [*(a1 + 32) setStyle:*(a1 + 48) forPartWithIdentifier:*MEMORY[0x277D6C038]];
}

void __62__SBMenuBarManager__setMenuBarVisible_animated_userInitiated___block_invoke_5(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v2 = [a1[4] reusePool];
  v3 = [WeakRetained transitionOnlySystemStatusBar];
  [v2 recycleStatusBar:v3];

  [WeakRetained setTransitionOnlySystemStatusBar:0];
  [WeakRetained setMenuBarBecomingVisible:0];
  [a1[5] setDisabledPartIdentifiers:0];
}

- (BOOL)isPointInsideMenuBarContent:(CGPoint)a3 fromCoordinateSpace:(id)a4
{
  [(SBMenuBarWindow *)self->_menuBarWindow convertPoint:a4 fromCoordinateSpace:a3.x, a3.y];
  if (!self->_menuBarVisible)
  {
    return 0;
  }

  v7 = v5;
  v8 = v6;
  v9 = [(SBFTouchPassThroughWindow *)self->_menuBarWindow hitTest:0 withEvent:?];

  if (!v9)
  {
    return 0;
  }

  [(UIStatusBar *)self->_menuBarStatusBar frame];
  v39.x = v7;
  v39.y = v8;
  if (!CGRectContainsPoint(v43, v39))
  {
    return 1;
  }

  menuBarStatusBar = self->_menuBarStatusBar;
  [(UIStatusBar *)menuBarStatusBar frameForPartWithIdentifier:*MEMORY[0x277D775C0]];
  [(UIStatusBar *)menuBarStatusBar convertRect:self->_menuBarWindow toView:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(SBMenuBarViewController *)self->_menuBarViewController view];
  [v19 frame];
  [v19 convertRect:self->_menuBarWindow toView:?];
  v37 = v21;
  v38 = v20;
  v23 = v22;
  v25 = v24;
  v26 = self->_menuBarStatusBar;
  [(UIStatusBar *)v26 frameForPartWithIdentifier:*MEMORY[0x277D775C8]];
  [(UIStatusBar *)v26 convertRect:self->_menuBarWindow toView:?];
  v35 = v28;
  v36 = v27;
  v33 = v30;
  v34 = v29;
  v44.origin.x = v12;
  v44.origin.y = v14;
  v44.size.width = v16;
  v44.size.height = v18;
  v40.x = v7;
  v40.y = v8;
  if (CGRectContainsPoint(v44, v40) || (v45.origin.y = v37, v45.origin.x = v38, v45.size.width = v23, v45.size.height = v25, v41.x = v7, v41.y = v8, CGRectContainsPoint(v45, v41)))
  {
    v31 = 1;
  }

  else
  {
    v46.origin.y = v35;
    v46.origin.x = v36;
    v46.size.height = v33;
    v46.size.width = v34;
    v42.x = v7;
    v42.y = v8;
    v31 = CGRectContainsPoint(v46, v42);
  }

  return v31;
}

- (BOOL)shouldAllowCoverSheetPresentationGestureAtLocation:(CGPoint)a3 isTouchGesture:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  if ([(SBMenuBarSceneProviding *)self->_menuBarSceneProvider isMenuBarSupported])
  {
    v8 = [(SBMenuBarSceneProviding *)self->_menuBarSceneProvider menuBarRecipientScene];
    if (!v4 || (LOBYTE(v9) = 1, [(SBGestureDefaults *)self->_gestureDefaults swipeToRevealMenuBarGesturesEnabled]) && v8 && !self->_menuBarVisible && ![(SBMenuBarManager *)self _isTopScreenEdgeProtectedForScene:v8])
    {
      v9 = ![(SBMenuBarManager *)self _locationIsInMenuBarRevealArea:x, y];
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)toggleMenuBarVisibilityForSystemKeyboardShortcut
{
  if (self->_menuBarVisible)
  {

    [(SBMenuBarManager *)self requestMenuBarVisibility:0];
  }

  else
  {
    [(SBMenuBarManager *)self setMenuBarVisible:1];
    objc_initWeak(&location, self);
    menuBarViewController = self->_menuBarViewController;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __68__SBMenuBarManager_toggleMenuBarVisibilityForSystemKeyboardShortcut__block_invoke;
    v4[3] = &unk_2783AC358;
    objc_copyWeak(&v5, &location);
    [(SBMenuBarViewController *)menuBarViewController addPresentationCompletionBlock:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __68__SBMenuBarManager_toggleMenuBarVisibilityForSystemKeyboardShortcut__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained menuBarViewController];
  [v1 openApplicationMenu];
}

- (void)scheduleMenuBarRevealForHeldModifierKey
{
  [(SBMenuBarManager *)self cancelMenuBarRevealForHeldModifierKey];
  v3 = [(SBMenuBarManager *)self windowScene];
  v4 = [v3 transientUIInteractionManager];
  [v4 registerParticipantForTapToDismiss:self];

  objc_initWeak(&location, self);
  v5 = MEMORY[0x277CBEBB8];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __59__SBMenuBarManager_scheduleMenuBarRevealForHeldModifierKey__block_invoke;
  v12 = &unk_2783AA438;
  objc_copyWeak(&v13, &location);
  v6 = [v5 timerWithTimeInterval:0 repeats:&v9 block:0.9];
  heldModifierKeyRevealTimer = self->_heldModifierKeyRevealTimer;
  self->_heldModifierKeyRevealTimer = v6;

  v8 = [MEMORY[0x277CBEB88] currentRunLoop];
  [v8 addTimer:self->_heldModifierKeyRevealTimer forMode:*MEMORY[0x277CBE738]];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __59__SBMenuBarManager_scheduleMenuBarRevealForHeldModifierKey__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained requestMenuBarVisibility:1];
    [v2 setHeldModifierKeyRevealTimer:0];
    WeakRetained = v2;
  }
}

- (void)cancelMenuBarRevealForHeldModifierKey
{
  heldModifierKeyRevealTimer = self->_heldModifierKeyRevealTimer;
  if (heldModifierKeyRevealTimer)
  {
    [(NSTimer *)heldModifierKeyRevealTimer invalidate];
    v4 = self->_heldModifierKeyRevealTimer;
    self->_heldModifierKeyRevealTimer = 0;

    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v5 = [WeakRetained transientUIInteractionManager];
    [v5 unregisterParticipantForTapToDismiss:self];
  }
}

- (void)_updateMenuBarVisibilityWithRequestedVisibility:(BOOL)a3
{
  v3 = a3;
  [(SBMenuBarManager *)self cancelMenuBarRevealForHeldModifierKey];
  v5 = [(SBMenuBarManager *)self windowScene];
  if (([v5 isExtendedDisplayWindowScene] & 1) == 0)
  {

    goto LABEL_8;
  }

  v6 = [(SBMenuBarSettings *)self->_menuBarSettings alwaysVisibleOnExternalDisplay];

  if (!v6)
  {
    goto LABEL_8;
  }

  if (![(SBMenuBarSceneProviding *)self->_menuBarSceneProvider isStatusBarStyleControlledBySystem])
  {
LABEL_6:
    v3 = 0;
    goto LABEL_8;
  }

  v3 = [(SBMenuBarSceneProviding *)self->_menuBarSceneProvider menuBarRecipientScene];
  if (!v3)
  {
LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  v7 = [(SBMenuBarManager *)self _isMenuBarGenerallyDisabled];

  if (v7)
  {
    goto LABEL_6;
  }

  if (!self->_menuBarVisible || ([(SBMenuBarSceneProviding *)self->_menuBarSceneProvider menuBarRecipientScene], v9 = objc_claimAutoreleasedReturnValue(), [(SBMenuBarViewController *)self->_menuBarViewController menuProvidingScene], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualObjects(), v10, v9, (v11 & 1) != 0))
  {
    v3 = 1;
    goto LABEL_8;
  }

  [(SBMenuBarManager *)self _setMenuBarVisible:0 animated:0 userInitiated:0];
  v8 = 0;
  v3 = 1;
LABEL_9:

  [(SBMenuBarManager *)self _setMenuBarVisible:v3 animated:v8 userInitiated:1];
}

- (void)openHelpMenu
{
  if (self->_menuBarVisible)
  {
    menuBarViewController = self->_menuBarViewController;

    [(SBMenuBarViewController *)menuBarViewController openHelpMenu];
  }

  else
  {
    [(SBMenuBarManager *)self setMenuBarVisible:1];
    objc_initWeak(&location, self);
    v4 = self->_menuBarViewController;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __32__SBMenuBarManager_openHelpMenu__block_invoke;
    v5[3] = &unk_2783AC358;
    objc_copyWeak(&v6, &location);
    [(SBMenuBarViewController *)v4 addPresentationCompletionBlock:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __32__SBMenuBarManager_openHelpMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained menuBarViewController];
  [v1 openHelpMenu];
}

- (void)peekMenuBar
{
  if (![(SBMenuBarManager *)self _isMenuBarGenerallyDisabled])
  {
    if (!self->_menuBarVisible)
    {
      [(SBMenuBarManager *)self _setMenuBarVisible:1 animated:1 userInitiated:0];
      objc_initWeak(&location, self);
      menuBarViewController = self->_menuBarViewController;
      v10 = v12;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __31__SBMenuBarManager_peekMenuBar__block_invoke_3;
      v12[3] = &unk_2783AC358;
      objc_copyWeak(&v13, &location);
      [(SBMenuBarViewController *)menuBarViewController addPresentationCompletionBlock:v12];
LABEL_12:
      objc_destroyWeak(v10 + 4);
      objc_destroyWeak(&location);
      return;
    }

    v3 = [(SBMenuBarSceneProviding *)self->_menuBarSceneProvider appLeadingStatusBarStyleRequest];
    [v3 style];
    v4 = _UIStatusBarResolvedStyleFromStyle();

    v5 = [(SBMenuBarSceneProviding *)self->_menuBarSceneProvider appTrailingStatusBarStyleRequest];
    [v5 style];
    v6 = _UIStatusBarResolvedStyleFromStyle();

    [(SBMenuBarManager *)self _createWindowControlsViewController];
    [(SBMenuBarManager *)self _setupWindowControlsWrapperView];
    if (self->_windowControlsViewController)
    {
      if (v6 == 2 && v4 == 2)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      [(SBMenuBarManager *)self _acquireHideAppStatusBarAssertionIfNeeded];
      objc_initWeak(&location, self);
      v9 = self->_menuBarViewController;
      v10 = v16;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __31__SBMenuBarManager_peekMenuBar__block_invoke;
      v16[3] = &unk_2783AFE38;
      objc_copyWeak(v17, &location);
      v17[1] = v8;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __31__SBMenuBarManager_peekMenuBar__block_invoke_2;
      v14[3] = &unk_2783AC358;
      objc_copyWeak(&v15, &location);
      [(SBMenuBarViewController *)v9 addWindowControlsAlongsideAnimations:v16 completion:v14];
      objc_destroyWeak(&v15);
      goto LABEL_12;
    }

    [(SBMenuBarManager *)self requestMenuBarVisibility:0];
  }
}

void __31__SBMenuBarManager_peekMenuBar__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained menuBarStatusBar];
  v3 = [objc_alloc(MEMORY[0x277D6BFE8]) initWithResolvedStyle:*(a1 + 40) foregroundColor:0];
  [v2 setStyleRequest:v3];

  v4 = [WeakRetained menuBarStatusBar];
  v5 = [v4 statusBar];

  [v5 setStyle:*(a1 + 40) forPartWithIdentifier:*MEMORY[0x277D6C030]];
  [v5 setStyle:*(a1 + 40) forPartWithIdentifier:*MEMORY[0x277D6C028]];
  [v5 setStyle:*(a1 + 40) forPartWithIdentifier:*MEMORY[0x277D6C038]];
  v6 = [WeakRetained menuBarViewController];
  [v6 setMenuBarContentIsLight:*(a1 + 40) == 1];
}

void __31__SBMenuBarManager_peekMenuBar__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleDismissPeekedMenuBarTimer];
}

void __31__SBMenuBarManager_peekMenuBar__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isMenuBarVisible])
  {
    [WeakRetained _scheduleDismissPeekedMenuBarTimer];
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)removeObserver:(id)a3
{
  [(NSHashTable *)self->_observers removeObject:a3];
  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (double)maximumContentWidthForMenuBarViewController:(id)a3
{
  [(UIStatusBar *)self->_menuBarStatusBar frame];
  v5 = v4;
  v6 = [(UIStatusBar *)self->_menuBarStatusBar statusBar];
  [v6 maximumPossibleMenuBarWidth];
  if (v7 > 0.0)
  {
    v5 = v7;
  }

  return v5;
}

- (void)menuWillPresentForViewController:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSHashTable *)self->_observers copy:a3];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) menuWillPresentForMenuBarManager:self];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)shouldDisableMenusForAppRestrictionForViewController:(id)a3
{
  v4 = [a3 menuProvidingScene];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v6 = [WeakRetained sceneManager];
  v7 = [v6 existingSceneHandleForScene:v4];
  v8 = [v7 application];

  if (v8)
  {
    v9 = [v8 info];
    if ([v9 isBlockedForScreenTimeExpiration])
    {
      v10 = 1;
    }

    else
    {
      v11 = [v8 bundleIdentifier];
      v10 = [SBApplicationAppProtectionAssistant shouldShieldApplicationWithBundleIdentifier:v11];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)displayNameForWebAppWithSceneIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v6 = [WeakRetained iconController];
  v7 = [v6 iconModel];
  v8 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:v4];

  v9 = [v7 leafIconForIdentifier:v8];
  v10 = [v9 displayName];

  return v10;
}

- (id)viewForSystemGestureRecognizer:(id)a3
{
  v3 = [(SBMenuBarManager *)self windowScene];
  v4 = [v3 statusBarManager];
  v5 = [v4 statusBar];

  return v5;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SBMenuBarManager *)self _isMenuBarGenerallyDisabled])
  {
    goto LABEL_2;
  }

  if (self->_presentGestureRecognizer != v6)
  {
    v8 = 1;
    goto LABEL_12;
  }

  if (![(SBGestureDefaults *)self->_gestureDefaults swipeToRevealMenuBarGesturesEnabled])
  {
LABEL_2:
    v8 = 0;
  }

  else
  {
    v9 = [(SBMenuBarSceneProviding *)self->_menuBarSceneProvider menuBarRecipientScene];
    v10 = v9;
    v8 = 0;
    if (!self->_menuBarVisible && v9)
    {
      v8 = ![(SBMenuBarManager *)self _isTopScreenEdgeProtectedForScene:v9]&& [(SBMenuBarManager *)self _touchIsInMenuBarRevealArea:v7];
    }
  }

LABEL_12:

  return v8;
}

- (BOOL)_touchIsInMenuBarRevealArea:(id)a3
{
  v3 = self;
  presentGestureRecognizer = self->_presentGestureRecognizer;
  v5 = a3;
  v6 = [(SBMenuBarManager *)v3 viewForSystemGestureRecognizer:presentGestureRecognizer];
  _UISystemGestureLocationForTouchInView();
  v8 = v7;
  v10 = v9;

  LOBYTE(v3) = [(SBMenuBarManager *)v3 _locationIsInMenuBarRevealArea:v8, v10];
  return v3;
}

- (BOOL)_locationIsInMenuBarRevealArea:(CGPoint)a3
{
  v3 = [(SBMenuBarManager *)self windowScene:a3.x];
  v4 = [v3 switcherController];

  [v4 effectiveLeadingStatusBarPartFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 effectiveTrailingStatusBarPartFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = MEMORY[0x277D76620];
  v22 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  if (v22 == 1)
  {
    v23 = v20;
  }

  else
  {
    v23 = v12;
  }

  if (v22 == 1)
  {
    v24 = v18;
  }

  else
  {
    v24 = v10;
  }

  if (v22 == 1)
  {
    v25 = v16;
  }

  else
  {
    v25 = v8;
  }

  if (v22 == 1)
  {
    v26 = v14;
  }

  else
  {
    v26 = v6;
  }

  CGRectGetMaxX(*(&v23 - 3));
  v27 = [*v21 userInterfaceLayoutDirection];
  if (v27 == 1)
  {
    v28 = v12;
  }

  else
  {
    v28 = v20;
  }

  if (v27 == 1)
  {
    v29 = v10;
  }

  else
  {
    v29 = v18;
  }

  if (v27 == 1)
  {
    v30 = v8;
  }

  else
  {
    v30 = v16;
  }

  if (v27 == 1)
  {
    v31 = v6;
  }

  else
  {
    v31 = v14;
  }

  CGRectGetMinX(*(&v28 - 3));
  if (BSFloatLessThanFloat())
  {
    v32 = BSFloatLessThanFloat();
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (BOOL)transientUIHandledTouch:(id)a3 withSystemGestureRecognizer:(id)a4
{
  v5 = a3;
  [(SBMenuBarManager *)self cancelMenuBarRevealForHeldModifierKey];
  v6 = [v5 window];
  v7 = [v5 view];
  [v5 locationInView:v7];
  v9 = v8;
  v11 = v10;

  [v6 convertPoint:v6 toView:{v9, v11}];
  v13 = v12;
  v15 = v14;

  if (self->_dismissPeekedMenuTimer && [(SBMenuBarManager *)self _hitTestInMenuBarContentWithPoint:v6 gestureWindow:v13, v15])
  {
    [(SBMenuBarManager *)self _cancelDismissPeekedMenuBarTimer];
  }

  v16 = [(SBMenuBarManager *)self _hitTestInMenuBarWindowWithPoint:v6 gestureWindow:v13, v15];
  if (!v16)
  {
    [(SBMenuBarManager *)self requestMenuBarVisibility:0];
  }

  return !v16;
}

- (void)_handlePresentGesture:(id)a3
{
  if ([a3 state] == 2)
  {

    [(SBMenuBarManager *)self setMenuBarVisible:1];
  }
}

- (void)_handleShowMenuBarHoverGesture:(id)a3
{
  v4 = a3;
  if ([v4 state] == 2 && !self->_menuBarVisible && !self->_pointerMenuRevealDelayTimer && -[PSPointerClientController pointerVisibilityState](self->_pointerClientController, "pointerVisibilityState") == 1)
  {
    v5 = [(SBMenuBarManager *)self viewForSystemGestureRecognizer:v4];
    _UISystemGestureLocationInView();
    v7 = v6;
    v9 = v8;
    v10 = [(SBMenuBarSceneProviding *)self->_menuBarSceneProvider menuBarRecipientScene];
    [(SBMenuBarSettings *)self->_menuBarSettings menuRevealYThresholdForPointer];
    v12 = v11;
    if (self->_isOnEmbeddedDisplayWithExternalConnected && [(SBExternalDisplayDefaults *)self->_externalDisplayDefaults arrangementEdge]== 1)
    {
      [(SBMenuBarSettings *)self->_menuBarSettings menuRevealExtraYThresholdForPointerWhenUnderExternalDisplay];
      v12 = v12 + v13;
    }

    if ([(SBMenuBarManager *)self _locationIsInMenuBarRevealArea:v7, v9]&& v9 <= v12 && v10 && ![(SBMenuBarManager *)self _isTopScreenEdgeProtectedForScene:v10])
    {
      v14 = MEMORY[0x277CBEBB8];
      [(SBMenuBarSettings *)self->_menuBarSettings menuRevealDelay];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __51__SBMenuBarManager__handleShowMenuBarHoverGesture___block_invoke;
      v18[3] = &unk_2783AD1F0;
      v18[4] = self;
      v15 = [v14 timerWithTimeInterval:0 repeats:v18 block:?];
      pointerMenuRevealDelayTimer = self->_pointerMenuRevealDelayTimer;
      self->_pointerMenuRevealDelayTimer = v15;

      v17 = [MEMORY[0x277CBEB88] currentRunLoop];
      [v17 addTimer:self->_pointerMenuRevealDelayTimer forMode:*MEMORY[0x277CBE738]];
    }
  }
}

uint64_t __51__SBMenuBarManager__handleShowMenuBarHoverGesture___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 59) = 1;
  [*(a1 + 32) setMenuBarVisible:1];
  v2 = *(a1 + 32);

  return [v2 _cancelMenuRevealTimer];
}

- (void)_handleDismissMenuBarHoverGesture:(id)a3
{
  v4 = a3;
  if (self->_menuBarVisible && self->_menuBarWasRevealedFromPointer || self->_pointerMenuRevealDelayTimer)
  {
    v14 = v4;
    v5 = [(SBMenuBarManager *)self viewForSystemGestureRecognizer:v4];
    _UISystemGestureLocationInView();
    v8 = v7;
    if (self->_pointerMenuRevealDelayTimer)
    {
      [(SBMenuBarSettings *)self->_menuBarSettings menuDismissYThresholdForPointer];
      if (v8 > v9)
      {
        [(SBMenuBarManager *)self _cancelMenuRevealTimer];
      }
    }

    else
    {
      v10 = v6;
      v11 = [(SBMenuBarManager *)self menuBarViewController];
      if ([v11 isShowingMenu])
      {
      }

      else
      {
        v12 = [v5 window];
        v13 = [(SBMenuBarManager *)self _hitTestInMenuBarWindowWithPoint:v12 gestureWindow:v10, v8];

        if (!v13)
        {
          [(SBMenuBarManager *)self requestMenuBarVisibility:0];
        }
      }
    }

    v4 = v14;
  }
}

- (void)_handleAdjustPresentedMenuHoverGesture:(id)a3
{
  v10 = a3;
  if ([v10 state] == 2)
  {
    v4 = [v10 view];
    [v10 locationInView:v4];
    v6 = v5;
    v8 = v7;

    v9 = [(UIStatusBar *)self->_menuBarStatusBar hitTest:0 withEvent:v6, v8];
    [(SBMenuBarViewController *)self->_menuBarViewController adjustPresentedMenuForPointerOverViewInContainer:v9];
  }
}

- (BOOL)_hitTestInMenuBarWindowWithPoint:(CGPoint)a3 gestureWindow:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [v7 screen];
  v9 = [v8 fixedCoordinateSpace];

  [v7 convertPoint:v9 toCoordinateSpace:{x, y}];
  v11 = v10;
  v13 = v12;

  [(SBMenuBarWindow *)self->_menuBarWindow convertPoint:v9 fromCoordinateSpace:v11, v13];
  v14 = [(SBFTouchPassThroughWindow *)self->_menuBarWindow hitTest:0 withEvent:?];
  LOBYTE(self) = v14 != 0;

  return self;
}

- (BOOL)_hitTestInMenuBarContentWithPoint:(CGPoint)a3 gestureWindow:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [v7 screen];
  v9 = [v8 fixedCoordinateSpace];

  [v7 convertPoint:v9 toCoordinateSpace:{x, y}];
  v11 = v10;
  v13 = v12;

  v14 = [(SBMenuBarViewController *)self->_menuBarViewController viewIfLoaded];
  v15 = v14;
  if (v14)
  {
    [v14 convertPoint:v9 fromCoordinateSpace:{v11, v13}];
    v16 = [v15 hitTest:0 withEvent:?];
    v17 = v16 != 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_isTopScreenEdgeProtectedForScene:(id)a3
{
  v4 = a3;
  if ([(SBMenuBarSceneProviding *)self->_menuBarSceneProvider shouldProtectTopScreenEdgeForScene:v4])
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v6 = [WeakRetained sceneManager];
    v7 = [v6 existingSceneHandleForScene:v4];
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = v10;

    v13 = [v12 screenEdgesDeferringSystemGestures];
    v11 = v13 & 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  menuBarViewController = self->_menuBarViewController;
  v6 = a3;
  v7 = [(SBMenuBarViewController *)menuBarViewController menuProvidingScene];
  v8 = BSEqualObjects();

  if (v8)
  {

    [(SBMenuBarManager *)self _setMenuBarVisible:0 animated:1 userInitiated:0];
  }
}

- (BOOL)_isMenuBarGenerallyDisabled
{
  v3 = +[SBSetupManager sharedInstance];
  if ([v3 isInSetupMode])
  {
    v4 = 1;
LABEL_12:

    return v4;
  }

  IsActive = SBGuidedAccessIsActive();

  if ((IsActive & 1) == 0)
  {
    v3 = [(SBMenuBarSceneProviding *)self->_menuBarSceneProvider menuBarRecipientScene];
    if (v3)
    {
      v6 = [(SBMenuBarManager *)self windowScene];
      v7 = [v6 sceneManager];
      v8 = [v7 existingSceneHandleForScene:v3];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 application];
    if (v9)
    {
      v10 = [SBApp privacyPreflightController];
      v11 = [v9 info];
      v12 = [v11 applicationIdentity];
      v4 = [v10 requiresPreflightForApplication:v12];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_12;
  }

  return 1;
}

- (void)_createWindowControlsViewController
{
  v3 = [(SBMenuBarSceneProviding *)self->_menuBarSceneProvider windowControlsViewController];
  windowControlsViewController = self->_windowControlsViewController;
  self->_windowControlsViewController = v3;

  v5 = self->_windowControlsViewController;

  [(SWKWindowControlsViewController *)v5 setSupportsHoverInteractions:0];
}

- (void)_setupWindowControlsWrapperView
{
  if (self->_windowControlsViewController)
  {
    v8 = [(SBMenuBarWindow *)self->_menuBarWindow rootViewController];
    [v8 addChildViewController:self->_windowControlsViewController];
    v3 = [SBWindowControlsWrapperView alloc];
    v4 = [(SWKWindowControlsViewController *)self->_windowControlsViewController view];
    v5 = [(SBWindowControlsWrapperView *)v3 initWithWindowControlsView:v4];
    windowControlsWrapperView = self->_windowControlsWrapperView;
    self->_windowControlsWrapperView = v5;

    v7 = [v8 view];
    [v7 addSubview:self->_windowControlsWrapperView];

    [(SWKWindowControlsViewController *)self->_windowControlsViewController didMoveToParentViewController:v8];
  }
}

- (void)_notifyObserversOfVisibilityChange
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) menuBarDidBecomeVisible:self->_menuBarVisible forManager:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_handleGuidedAccessActivationChanged:(id)a3
{
  IsActive = SBGuidedAccessIsActive();
  v5 = [(SBMenuBarManager *)self windowScene];
  guidedAccessSystemGestureDisableAssertion = self->_guidedAccessSystemGestureDisableAssertion;
  if (IsActive)
  {
    if (guidedAccessSystemGestureDisableAssertion)
    {
      goto LABEL_7;
    }

    v11 = v5;
    v7 = [MEMORY[0x277CBEB98] setWithArray:&unk_28336DF68];
    v8 = [v11 systemGestureManager];
    v9 = [v8 acquireSystemGestureDisableAssertionForReason:@"menu bar disabled for guided access" forSystemGestureTypes:v7];
    v10 = self->_guidedAccessSystemGestureDisableAssertion;
    self->_guidedAccessSystemGestureDisableAssertion = v9;
  }

  else
  {
    if (!guidedAccessSystemGestureDisableAssertion)
    {
      goto LABEL_7;
    }

    v11 = v5;
    [(BSInvalidatable *)guidedAccessSystemGestureDisableAssertion invalidate];
    v7 = self->_guidedAccessSystemGestureDisableAssertion;
    self->_guidedAccessSystemGestureDisableAssertion = 0;
  }

  v5 = v11;
LABEL_7:
}

- (void)_handleContentSizeCategoryDidChange:(id)a3
{
  v4 = a3;
  if (self->_menuBarVisible)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__SBMenuBarManager__handleContentSizeCategoryDidChange___block_invoke;
    v5[3] = &unk_2783AC358;
    objc_copyWeak(&v6, &location);
    [(SBMenuBarManager *)self _dismissMenuBarAnimated:1 withCompletion:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __56__SBMenuBarManager__handleContentSizeCategoryDidChange___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _setMenuBarVisible:1 animated:1 userInitiated:0];
  }
}

- (void)_dismissMenuBarAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __59__SBMenuBarManager__dismissMenuBarAnimated_withCompletion___block_invoke;
  v25[3] = &unk_2783A9C98;
  v25[4] = self;
  v7 = v6;
  v26 = v7;
  v8 = MEMORY[0x223D6F7F0](v25);
  v9 = v8;
  if (self->_menuBarVisible)
  {
    self->_menuBarVisible = 0;
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v11 = [(SBMenuBarSceneProviding *)self->_menuBarSceneProvider appLeadingStatusBarStyleRequest];
    v12 = [(SBMenuBarSceneProviding *)self->_menuBarSceneProvider appTrailingStatusBarStyleRequest];
    if (([(SBMenuBarSceneProviding *)self->_menuBarSceneProvider isStatusBarStyleControlledBySystem]& 1) == 0)
    {
      [(SBMenuBarManager *)self _setupTransitionSystemStatusBarIfNeededForTransitioningToPresented:0];
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __59__SBMenuBarManager__dismissMenuBarAnimated_withCompletion___block_invoke_2;
    v21[3] = &unk_2783A9BD8;
    v21[4] = self;
    v22 = v11;
    v23 = v12;
    v24 = WeakRetained;
    v13 = WeakRetained;
    v14 = v12;
    v15 = v11;
    v16 = MEMORY[0x223D6F7F0](v21);
    v17 = [(SBMenuBarViewController *)self->_menuBarViewController menuProvidingScene];
    [v17 removeObserver:self];

    menuBarViewController = self->_menuBarViewController;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__SBMenuBarManager__dismissMenuBarAnimated_withCompletion___block_invoke_3;
    v19[3] = &unk_2783A9C98;
    v19[4] = self;
    v20 = v9;
    [(SBMenuBarViewController *)menuBarViewController dismissAnimated:v4 alongsideAnimations:v16 completion:v19];
    [(SBMenuBarManager *)self _notifyObserversOfVisibilityChange];
  }

  else
  {
    (*(v8 + 16))(v8, 1);
  }
}

void __59__SBMenuBarManager__dismissMenuBarAnimated_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = [*(*(a1 + 32) + 112) statusBar];
  [v26 setMode:0];
  [v26 setMenuBarProvider:0];
  [v26 updateMenuBar];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [*(*(a1 + 32) + 112) setTranslatesAutoresizingMaskIntoConstraints:*(*(a1 + 32) + 58)];
  v5 = [WeakRetained statusBarManager];
  v6 = [v5 reusePool];
  [v6 recycleStatusBar:*(*(a1 + 32) + 112)];

  v7 = *(a1 + 32);
  v8 = *(v7 + 112);
  *(v7 + 112) = 0;

  v9 = [WeakRetained statusBarManager];
  v10 = [v9 reusePool];
  [v10 recycleStatusBar:*(*(a1 + 32) + 120)];

  v11 = *(a1 + 32);
  v12 = *(v11 + 120);
  *(v11 + 120) = 0;

  [*(*(a1 + 32) + 128) invalidate];
  v13 = *(a1 + 32);
  v14 = *(v13 + 128);
  *(v13 + 128) = 0;

  [*(*(a1 + 32) + 136) invalidate];
  v15 = *(a1 + 32);
  v16 = *(v15 + 136);
  *(v15 + 136) = 0;

  v17 = *(a1 + 32);
  v18 = *(v17 + 144);
  *(v17 + 144) = 0;

  [*(*(a1 + 32) + 104) setHidden:1];
  v19 = *(a1 + 32);
  v20 = *(v19 + 104);
  *(v19 + 104) = 0;

  v21 = *(a1 + 32);
  v22 = *(v21 + 16);
  *(v21 + 16) = 0;

  v23 = *(a1 + 32);
  v24 = *(v23 + 8);
  *(v23 + 8) = 0;

  v25 = *(a1 + 40);
  if (v25)
  {
    (*(v25 + 16))(v25, a2);
  }
}

void __59__SBMenuBarManager__dismissMenuBarAnimated_withCompletion___block_invoke_2(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 112) statusBar];
  if ([*(*(a1 + 32) + 72) isLeadingStatusBarRegionPreferredHiddenByApp])
  {
    [v6 setAlpha:*MEMORY[0x277D6C030] forPartWithIdentifier:0.0];
  }

  else
  {
    [*(a1 + 40) style];
    [v6 setStyle:_UIStatusBarResolvedStyleFromStyle() forPartWithIdentifier:*MEMORY[0x277D6C030]];
  }

  if ([*(*(a1 + 32) + 72) isTrailingStatusBarRegionPreferredHiddenByApp])
  {
    [v6 setAlpha:*MEMORY[0x277D6C038] forPartWithIdentifier:0.0];
  }

  else
  {
    [*(a1 + 48) style];
    [v6 setStyle:_UIStatusBarResolvedStyleFromStyle() forPartWithIdentifier:*MEMORY[0x277D6C038]];
  }

  v2 = *(*(a1 + 32) + 120);
  v3 = [*(a1 + 56) statusBarManager];
  v4 = [v3 assertionManager];
  v5 = [v4 currentEffectiveStatusBarStyleRequest];
  [v2 setStyleRequest:v5];

  [*(*(a1 + 32) + 8) focus];
}

void __59__SBMenuBarManager__dismissMenuBarAnimated_withCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v2 = [WeakRetained transientUIInteractionManager];
  [v2 unregisterParticipantForTapToDismiss:*(a1 + 32)];

  [*(a1 + 32) _cancelMenuRevealTimer];
  *(*(a1 + 32) + 59) = 0;
  (*(*(a1 + 40) + 16))();
}

- (void)_setupTransitionSystemStatusBarIfNeededForTransitioningToPresented:(BOOL)a3
{
  v3 = a3;
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = [(SBMenuBarSceneProviding *)self->_menuBarSceneProvider appLeadingStatusBarStyleRequest];
  v6 = [(SBMenuBarSceneProviding *)self->_menuBarSceneProvider appTrailingStatusBarStyleRequest];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 && !self->_transitionOnlySystemStatusBar)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v9 = [WeakRetained statusBarManager];
    v10 = [(UIStatusBar *)self->_menuBarStatusBar statusBar];
    v11 = [v9 reusePool];
    v12 = [v11 getReusableStatusBarWithReason:@"menu bar transition helper"];
    transitionOnlySystemStatusBar = self->_transitionOnlySystemStatusBar;
    self->_transitionOnlySystemStatusBar = v12;

    if (v3)
    {
      v14 = [v9 assertionManager];
      v15 = [v14 currentEffectiveStatusBarStyleRequest];
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x277D6BFE8]) initWithResolvedStyle:objc_msgSend(v10 foregroundColor:{"style"), 0}];
    }

    v36 = v10;
    v37 = v9;
    v35 = v15;
    [(UIStatusBar *)self->_transitionOnlySystemStatusBar setStyleRequest:v15];
    if (v5)
    {
      v16 = self->_transitionOnlySystemStatusBar;
      v43[0] = *MEMORY[0x277D6C038];
      v17 = v43[0];
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
      [(UIStatusBar *)v16 setEnabledPartIdentifiers:v18];

      menuBarStatusBar = self->_menuBarStatusBar;
      v42 = v17;
      v20 = &v42;
    }

    else
    {
      if (!v7)
      {
LABEL_15:
        v34 = [(SBMenuBarWindow *)self->_menuBarWindow rootViewController];
        v25 = [v34 view];
        [v25 addSubview:self->_transitionOnlySystemStatusBar];
        [(UIStatusBar *)self->_transitionOnlySystemStatusBar setTranslatesAutoresizingMaskIntoConstraints:0];
        v32 = MEMORY[0x277CCAAD0];
        v33 = [(UIStatusBar *)self->_transitionOnlySystemStatusBar topAnchor];
        v26 = [v25 topAnchor];
        v27 = [v33 constraintEqualToAnchor:v26];
        v39[0] = v27;
        v28 = [(UIStatusBar *)self->_transitionOnlySystemStatusBar widthAnchor];
        v29 = [v25 widthAnchor];
        v30 = [v28 constraintEqualToAnchor:v29];
        v39[1] = v30;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
        [v32 activateConstraints:v31];

        [(UIStatusBar *)self->_transitionOnlySystemStatusBar layoutIfNeeded];
        goto LABEL_16;
      }

      v21 = self->_transitionOnlySystemStatusBar;
      v41 = *MEMORY[0x277D6C030];
      v22 = v41;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      [(UIStatusBar *)v21 setEnabledPartIdentifiers:v23];

      menuBarStatusBar = self->_menuBarStatusBar;
      v40 = v22;
      v20 = &v40;
    }

    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [(UIStatusBar *)menuBarStatusBar setDisabledPartIdentifiers:v24];

    goto LABEL_15;
  }

LABEL_16:
}

- (void)_acquireHideAppStatusBarAssertionIfNeeded
{
  if (!self->_hideAppStatusBarAssertion)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v4 = [WeakRetained switcherController];
    v5 = [v4 requestInAppStatusBarHiddenAssertionForReason:@"menu bar visible over apps" animated:0];
    hideAppStatusBarAssertion = self->_hideAppStatusBarAssertion;
    self->_hideAppStatusBarAssertion = v5;
  }
}

- (void)_cancelMenuRevealTimer
{
  [(NSTimer *)self->_pointerMenuRevealDelayTimer invalidate];
  pointerMenuRevealDelayTimer = self->_pointerMenuRevealDelayTimer;
  self->_pointerMenuRevealDelayTimer = 0;
}

- (void)_scheduleDismissPeekedMenuBarTimer
{
  [(SBMenuBarManager *)self _cancelDismissPeekedMenuBarTimer];
  v3 = MEMORY[0x277CBEBB8];
  [(SBMenuBarSettings *)self->_menuBarSettings fullscreenPeekDuration];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SBMenuBarManager__scheduleDismissPeekedMenuBarTimer__block_invoke;
  v6[3] = &unk_2783AD1F0;
  v6[4] = self;
  v4 = [v3 timerWithTimeInterval:0 repeats:v6 block:?];
  [(SBMenuBarManager *)self setDismissPeekedMenuTimer:v4];
  v5 = [MEMORY[0x277CBEB88] currentRunLoop];
  [v5 addTimer:v4 forMode:*MEMORY[0x277CBE738]];
}

- (void)_cancelDismissPeekedMenuBarTimer
{
  [(NSTimer *)self->_dismissPeekedMenuTimer invalidate];
  dismissPeekedMenuTimer = self->_dismissPeekedMenuTimer;
  self->_dismissPeekedMenuTimer = 0;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end