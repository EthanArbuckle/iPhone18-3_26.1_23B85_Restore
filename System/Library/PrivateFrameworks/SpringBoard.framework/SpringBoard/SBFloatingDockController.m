@interface SBFloatingDockController
+ (BOOL)isFloatingDockSupported;
+ (BOOL)isFloatingDockUtilitiesSupported;
+ (void)initialize;
- (BOOL)_allowGestureRecognizers;
- (BOOL)_isActiveAssertionInDesiredLevel;
- (BOOL)containsPoint:(CGPoint)a3 fromCoordinateSpace:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)handlePromptingUserToUninstallIcon:(id)a3 location:(id)a4;
- (BOOL)isDefaultLibraryContainerViewControllerForegroundForFloatingDockRootViewController:(id)a3;
- (BOOL)isGesturePossible;
- (BOOL)isIconViewRecycled:(id)a3;
- (BOOL)isPresentingLibraryInFloatingDockWindow;
- (BOOL)shouldShowCloseBoxForIconView:(id)a3 proposedValue:(BOOL)a4;
- (BOOL)viewMap:(id)a3 shouldRecycleView:(id)a4;
- (CGRect)floatingDockScreenFrame;
- (CGRect)floatingDockScreenPresentationFrame;
- (SBFloatingDockBehaviorAssertion)activeAssertion;
- (SBFloatingDockController)initWithWindowScene:(id)a3 homeScreenContextProvider:(id)a4;
- (SBFloatingDockControllerDelegate)delegate;
- (SBFloatingDockHomeScreenContextProviding)homeScreenContextProvider;
- (SBFloatingDockViewController)floatingDockViewController;
- (SBLayoutStateTransitionCoordinator)layoutStateTransitionCoordinator;
- (SBWindowScene)windowScene;
- (double)_dockProgressForHoverTranslation:(double)a3;
- (double)minimumHomeScreenScaleForFloatingDockRootViewController:(id)a3;
- (id)_initWithWindowScene:(id)a3 homeScreenContextProvider:(id)a4 applicationController:(id)a5 recentsController:(id)a6 recentsDataStore:(id)a7 layoutStateTransitionCoordinator:(id)a8 appSuggestionManager:(id)a9 analyticsClient:(id)a10;
- (id)dequeueReusableIconViewOfClass:(Class)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)floatingDockListModel:(id)a3;
- (id)floatingDockRootViewController:(id)a3 acquireOrderFloatingDockContainerBeforeLibraryAssertionForReason:(id)a4;
- (id)floatingDockRootViewController:(id)a3 dataDropSessionDidUpdate:(id)a4 inIconListView:(id)a5;
- (id)iconViewMap;
- (id)libraryContainerViewControllerForFloatingDockRootViewController:(id)a3;
- (id)succinctDescription;
- (unint64_t)_indexOfPointerArray:(id)a3 ofObject:(void *)a4;
- (void)_addFloatingDockBehaviorAssertion:(id)a3 withCompletion:(id)a4;
- (void)_addFloatingDockWindowLevelAssertion:(id)a3;
- (void)_clearGestureAssertion;
- (void)_configureFloatingDockBehaviorAssertionForOpenFolder:(id)a3 atLevel:(unint64_t)a4;
- (void)_deriveActiveAssertion:(id *)a3 dockProgress:(double *)a4;
- (void)_dismissFloatingDockIfPresentedAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)_evaluateAssertions:(unint64_t)a3 interactive:(BOOL)a4 withCompletion:(id)a5;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)_handleDismissFloatingDockHoverGesture:(id)a3;
- (void)_handleTransitionForFolder:(id)a3 atLevel:(unint64_t)a4 presenting:(BOOL)a5 withTransitionCoordinator:(id)a6;
- (void)_presentFloatingDockIfDismissedAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)_recalculateWindowLevelForWindowLevelAssertions;
- (void)_removeFloatingDockBehaviorAssertion:(id)a3 withCompletion:(id)a4;
- (void)_removeFloatingDockWindowLevelAssertion:(id)a3;
- (void)_setupStateDumper;
- (void)_updateFocusAssertion;
- (void)assistantDidDisappear:(id)a3;
- (void)assistantWillAppear:(id)a3;
- (void)configureIconView:(id)a3 forIcon:(id)a4;
- (void)dealloc;
- (void)dismissFloatingDockIfPresentedAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)dismissFloatingDockUsingKeyCommandIfPresentedAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)floatingDockRootViewController:(id)a3 didChangeToFrame:(CGRect)a4;
- (void)floatingDockRootViewController:(id)a3 finishDownloadAnimationDidEndForIconView:(id)a4;
- (void)floatingDockRootViewController:(id)a3 finishDownloadAnimationWillBeginForIconView:(id)a4;
- (void)floatingDockRootViewController:(id)a3 floatingDockWantsToBePresented:(BOOL)a4;
- (void)floatingDockRootViewController:(id)a3 modifyProgress:(double)a4 interactive:(BOOL)a5 completion:(id)a6;
- (void)floatingDockRootViewController:(id)a3 willChangeToHeight:(double)a4 interactive:(BOOL)a5;
- (void)floatingDockRootViewController:(id)a3 willTransitionToSize:(CGSize)a4 withTransitionCoordinator:(id)a5;
- (void)floatingDockRootViewDidResignVisible:(id)a3;
- (void)floatingDockRootViewWillBecomeVisible:(id)a3;
- (void)floatingDockRootViewWillResignVisible:(id)a3;
- (void)handlePresentFloatingDockHoverGesture:(id)a3;
- (void)iconManager:(id)a3 willPerformTransitionWithFolder:(id)a4 presenting:(BOOL)a5 withTransitionCoordinator:(id)a6;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4;
- (void)presentFloatingDockIfDismissedAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)reconnectHostingClient:(id)a3;
- (void)recycleIconView:(id)a3;
- (void)registerForWindowScene:(id)a3;
- (void)resetRecentsAndSuggestions;
- (void)rootFolderPageStateProvider:(id)a3 didContinueTransitionToState:(int64_t)a4 progress:(double)a5;
- (void)rootFolderPageStateProvider:(id)a3 didEndTransitionFromState:(int64_t)a4 toState:(int64_t)a5 successfully:(BOOL)a6;
- (void)rootFolderPageStateProvider:(id)a3 willBeginTransitionToState:(int64_t)a4 animated:(BOOL)a5 interactive:(BOOL)a6;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation SBFloatingDockController

+ (BOOL)isFloatingDockSupported
{
  if (isFloatingDockSupported_onceToken != -1)
  {
    +[SBFloatingDockController isFloatingDockSupported];
  }

  return isFloatingDockSupported___isFloatingDockSupported;
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    SBIconLocationGroupAddLocation();

    SBIconLocationGroupAddLocation();
  }
}

- (SBFloatingDockController)initWithWindowScene:(id)a3 homeScreenContextProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SBMedusaDomain rootSettings];
  [v8 numberOfRecents];
  *&v9 = v9;
  v10 = vcvtms_u32_f32(*&v9);

  v11 = [SBRecentDisplayItemsController alloc];
  v12 = +[SBAppInteractionEventSourceManager sharedInstance];
  v13 = +[SBApplicationController sharedInstance];
  v14 = [(SBRecentDisplayItemsController *)v11 initWithRemovalPersonality:14 movePersonality:15 transitionFromSources:0 maxDisplayItems:v10 eventSource:v12 applicationController:v13 iconModelProvider:v6];

  v15 = [[SBRecentDisplayItemsDataStore alloc] initWithRecentLayouts:0 fallbackToRecentAppLayouts:0];
  v16 = [v7 layoutStateTransitionCoordinator];
  v17 = +[SBApplicationController sharedInstance];
  v18 = +[SBAppSuggestionManager sharedInstance];
  v19 = [MEMORY[0x277D65DD0] sharedInstance];
  v20 = [(SBFloatingDockController *)self _initWithWindowScene:v7 homeScreenContextProvider:v6 applicationController:v17 recentsController:v14 recentsDataStore:v15 layoutStateTransitionCoordinator:v16 appSuggestionManager:v18 analyticsClient:v19];

  return v20;
}

- (id)_initWithWindowScene:(id)a3 homeScreenContextProvider:(id)a4 applicationController:(id)a5 recentsController:(id)a6 recentsDataStore:(id)a7 layoutStateTransitionCoordinator:(id)a8 appSuggestionManager:(id)a9 analyticsClient:(id)a10
{
  v70[2] = *MEMORY[0x277D85DE8];
  v16 = a3;
  obj = a4;
  v56 = a5;
  v57 = a6;
  v58 = a7;
  v17 = a8;
  v59 = a9;
  v60 = a10;
  v69.receiver = self;
  v69.super_class = SBFloatingDockController;
  v18 = [(SBFloatingDockController *)&v69 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    objc_storeWeak(&v18->_windowScene, v16);
    objc_storeWeak(p_isa + 41, obj);
    v20 = +[SBIndirectPanGestureDomain rootSettings];
    v21 = p_isa[46];
    p_isa[46] = v20;

    [p_isa[46] addKeyObserver:p_isa];
    v22 = objc_alloc_init(SBFailingSystemGestureRecognizer);
    v23 = p_isa[40];
    p_isa[40] = v22;

    [p_isa[40] setAllowedTouchTypes:&unk_28336E6A0];
    [p_isa[40] sbf_setPencilTouchesAllowed:_os_feature_enabled_impl()];
    [p_isa[40] setDelegate:p_isa];
    v24 = [[SBFloatingDockRootViewController alloc] initWithHomeScreenContextProvider:obj applicationController:v56 recentsController:v57 recentsDataStore:v58 appSuggestionManager:v59 layoutStateTransitionCoordinator:v17 iconViewProvider:p_isa analyticsClient:v60];
    v25 = p_isa[1];
    p_isa[1] = v24;

    [p_isa[1] loadViewIfNeeded];
    v26 = [[SBIndirectPanGestureRecognizer alloc] initWithTarget:p_isa action:sel_handlePresentFloatingDockHoverGesture_ edges:4];
    v27 = p_isa[37];
    p_isa[37] = v26;

    [p_isa[37] setName:@"presentFloatingDockIndirectPanGestureRecognizer"];
    [p_isa[37] setDelegate:p_isa];
    v28 = p_isa[37];
    [p_isa[46] mouseActivationDistance];
    [v28 setActivationRecognitionDistance:?];
    v29 = p_isa[37];
    [p_isa[46] trackpadHysteresis];
    [v29 setHysteresis:0 forInputType:?];
    v30 = p_isa[37];
    [p_isa[46] mouseHysteresis];
    [v30 setHysteresis:1 forInputType:?];
    [p_isa[37] setShouldRequirePointerEventMovement:{objc_msgSend(p_isa[46], "shouldRequirePointerEventMovement")}];
    v31 = p_isa[37];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __202__SBFloatingDockController__initWithWindowScene_homeScreenContextProvider_applicationController_recentsController_recentsDataStore_layoutStateTransitionCoordinator_appSuggestionManager_analyticsClient___block_invoke;
    v67[3] = &unk_2783B7868;
    v32 = p_isa;
    v68 = v32;
    [v31 setTranslationAdjustmentBlock:v67];
    v55 = [v16 zStackResolver];
    v33 = [v55 acquireParticipantWithIdentifier:2 delegate:v32];
    v34 = v32[44];
    v32[44] = v33;

    v35 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:v32 action:sel__handleDismissFloatingDockHoverGesture_];
    v36 = v32[38];
    v32[38] = v35;

    [v32[38] setDelegate:v32];
    objc_storeWeak(v32 + 43, v17);
    [v17 addObserver:v32];
    [p_isa[1] setDelegate:v32];
    v37 = [obj iconManager];
    [v37 addPageStateObserver:v32];
    [v37 addFolderPresentationObserver:v32];
    v38 = [v16 assistantController];
    [v38 addObserver:v32];

    objc_storeStrong(v32 + 22, a10);
    objc_initWeak(&location, v32);
    v39 = +[SBDefaults localDefaults];
    v40 = [v39 appSwitcherDefaults];

    v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"chamoisWindowingEnabled"];
    v70[0] = v41;
    v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"medusaMultitaskingEnabled"];
    v70[1] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
    v44 = MEMORY[0x277D85CD0];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __202__SBFloatingDockController__initWithWindowScene_homeScreenContextProvider_applicationController_recentsController_recentsDataStore_layoutStateTransitionCoordinator_appSuggestionManager_analyticsClient___block_invoke_2;
    v64[3] = &unk_2783A8C68;
    objc_copyWeak(&v65, &location);
    v45 = [v40 observeDefaults:v43 onQueue:MEMORY[0x277D85CD0] withBlock:v64];

    if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleFloatingDock"))
    {
      v46 = [(SBWindow *)[SBFloatingDockWindow alloc] initWithWindowScene:v16 role:@"SBTraitsParticipantRoleFloatingDock" debugName:@"FloatingDock"];
      [(SBFloatingDockWindow *)v46 setRootViewController:p_isa[1]];
      [(SBFloatingDockWindow *)v46 setClipsToBounds:0];
    }

    else
    {
      v46 = [(SBMainScreenActiveInterfaceOrientationWindow *)[SBOldFloatingDockWindow alloc] initWithWindowScene:v16 role:@"SBTraitsParticipantRoleFloatingDock" debugName:@"FloatingDock"];
      [(SBFloatingDockWindow *)v46 setContentViewController:p_isa[1]];
      [(SBFloatingDockWindow *)v46 setPassesTouchesThrough:1];
    }

    [(SBFloatingDockWindow *)v46 setOpaque:0];
    [(SBWindow *)v46 setHidden:0];
    [(SBFloatingDockWindow *)v46 setWindowLevel:*MEMORY[0x277D772B0] + 5.0 + 20.0];
    objc_storeStrong(v32 + 39, v46);
    [v32 _setupStateDumper];
    v47 = [[SBFloatingDockRemoteContentManager alloc] initWithFloatingDockRootViewController:p_isa[1] windowScene:v16];
    v48 = v32[47];
    v32[47] = v47;

    [v32[47] setDelegate:v32];
    v49 = +[SBApplicationController sharedInstance];
    v50 = [v49 restrictionController];
    [v50 addObserver:v32[47]];

    v51 = MEMORY[0x277D432B0];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __202__SBFloatingDockController__initWithWindowScene_homeScreenContextProvider_applicationController_recentsController_recentsDataStore_layoutStateTransitionCoordinator_appSuggestionManager_analyticsClient___block_invoke_3;
    v62[3] = &unk_2783AC358;
    objc_copyWeak(&v63, &location);
    v52 = [v51 recipeWithTitle:@"Show Sidecar app in Dock" prepareBlock:0 toggleAction:v62 cleanupBlock:0];
    v53 = v32[34];
    v32[34] = v52;

    [MEMORY[0x277D661A0] registerTestRecipe:v32[34]];
    objc_destroyWeak(&v63);

    objc_destroyWeak(&v65);
    objc_destroyWeak(&location);
  }

  return p_isa;
}

void __202__SBFloatingDockController__initWithWindowScene_homeScreenContextProvider_applicationController_recentsController_recentsDataStore_layoutStateTransitionCoordinator_appSuggestionManager_analyticsClient___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFocusAssertion];
}

void __202__SBFloatingDockController__initWithWindowScene_homeScreenContextProvider_applicationController_recentsController_recentsDataStore_layoutStateTransitionCoordinator_appSuggestionManager_analyticsClient___block_invoke_3(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    v3 = +[SBApplicationController sharedInstance];
    v4 = [v3 applicationWithBundleIdentifier:@"com.apple.sidecar"];

    [WeakRetained setRequestedSuggestedApplication:v4];
  }

  else
  {
    [WeakRetained setRequestedSuggestedApplication:0];
  }
}

- (void)invalidate
{
  if (![(SBFloatingDockController *)self isInvalidated])
  {
    [(SBFloatingDockController *)self setInvalidated:1];
    focusAssertion = self->_focusAssertion;

    [(BSInvalidatable *)focusAssertion invalidate];
  }
}

- (void)dealloc
{
  v3 = [(SBFloatingDockController *)self homeScreenContextProvider];
  v4 = [v3 iconManager];
  [v4 removePageStateObserver:self];

  v5 = [v3 iconManager];
  [v5 removeFolderPresentationObserver:self];

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v7 = [WeakRetained assistantController];
  [v7 removeObserver:self];

  v8 = objc_loadWeakRetained(&self->_layoutStateTransitionCoordinator);
  [v8 removeObserver:self];

  v9 = +[SBApplicationController sharedInstance];
  v10 = [v9 restrictionController];
  [v10 removeObserver:self->_remoteContentManager];

  [(BSInvalidatable *)self->_floatingDockStateDumpHandle invalidate];
  [(BSInvalidatable *)self->_floatingDockRecursiveHitTestingStateDumpHandle invalidate];
  [(BSInvalidatable *)self->_focusAssertion invalidate];

  v11.receiver = self;
  v11.super_class = SBFloatingDockController;
  [(SBFloatingDockController *)&v11 dealloc];
}

- (BOOL)containsPoint:(CGPoint)a3 fromCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(SBFloatingDockController *)self isFloatingDockPresented]&& [(SBFloatingDockController *)self isFloatingDockFullyPresented])
  {
    v8 = [(SBFloatingDockRootViewController *)self->_viewController viewIfLoaded];
    v9 = v8;
    if (v8)
    {
      [v8 convertPoint:v7 fromCoordinateSpace:{x, y}];
      v11 = v10;
      v13 = v12;
      [(SBFloatingDockController *)self floatingDockScreenFrame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [v9 window];
      v23 = [v22 screen];
      v24 = [v23 fixedCoordinateSpace];
      [v9 convertRect:v24 fromCoordinateSpace:{v15, v17, v19, v21}];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v36.origin.x = v26;
      v36.origin.y = v28;
      v36.size.width = v30;
      v36.size.height = v32;
      v35.x = v11;
      v35.y = v13;
      v33 = CGRectContainsPoint(v36, v35);
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

void __51__SBFloatingDockController_isFloatingDockSupported__block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  isFloatingDockSupported___isFloatingDockSupported = (v1 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

+ (BOOL)isFloatingDockUtilitiesSupported
{
  if ([a1 isFloatingDockSupported])
  {
    if (isFloatingDockUtilitiesSupported_onceTokenDockUtilities != -1)
    {
      +[SBFloatingDockController isFloatingDockUtilitiesSupported];
    }

    v2 = isFloatingDockUtilitiesSupported___isFloatingDockUtilitiesSupported;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void __60__SBFloatingDockController_isFloatingDockUtilitiesSupported__block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  isFloatingDockUtilitiesSupported___isFloatingDockUtilitiesSupported = (v1 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (BOOL)isGesturePossible
{
  WeakRetained = objc_loadWeakRetained(&self->_activeAssertion);
  v3 = [WeakRetained gesturePossible];

  return v3;
}

- (CGRect)floatingDockScreenFrame
{
  [(SBFloatingDockRootViewController *)self->_viewController floatingDockScreenFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)floatingDockScreenPresentationFrame
{
  [(SBFloatingDockRootViewController *)self->_viewController floatingDockScreenPresentationFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)isPresentingLibraryInFloatingDockWindow
{
  v3 = [(SBFloatingDockController *)self floatingDockViewController];
  if ([v3 isPresentingLibrary])
  {
    v4 = [(SBFloatingDockController *)self windowScene];
    v5 = [v4 modalLibraryController];
    v6 = [v5 libraryViewController];
    v7 = [v6 parentViewController];
    v8 = v7 == self->_viewController;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SBFloatingDockViewController)floatingDockViewController
{
  [(SBFloatingDockRootViewController *)self->_viewController loadViewIfNeeded];
  viewController = self->_viewController;

  return [(SBFloatingDockRootViewController *)viewController floatingDockViewController];
}

- (void)presentFloatingDockIfDismissedAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(SBFloatingDockController *)self _canPresentFloatingDock])
  {
    [(SBFloatingDockController *)self setWasFloatingDockPresentedByPointer:0];
    [(SBFloatingDockController *)self _presentFloatingDockIfDismissedAnimated:v4 completionHandler:v6];
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)dismissFloatingDockUsingKeyCommandIfPresentedAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v8 = a4;
  v6 = [(SBFloatingDockController *)self homeScreenContextProvider];
  v7 = [v6 iconManager];
  if ([v7 areAnyIconShareSheetsShowing])
  {
    [v7 dismissIconShareSheets];
  }

  [(SBFloatingDockController *)self dismissFloatingDockIfPresentedAnimated:v4 completionHandler:v8];
}

- (void)dismissFloatingDockIfPresentedAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v10 = a4;
  v6 = [(SBFloatingDockController *)self homeScreenContextProvider];
  v7 = [v6 iconManager];
  if (!self->_homeScreenTodayViewTransitioning)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activeAssertion);
    if ([WeakRetained gesturePossible])
    {
      v9 = [v7 areAnyIconShareSheetsShowing];

      if ((v9 & 1) == 0)
      {
        [(SBFloatingDockController *)self setWasFloatingDockPresentedByPointer:0];
        if ([v6 areAnyIconViewContextMenusShowing])
        {
          [v6 dismissAppIconForceTouchControllers:0];
        }

        [(SBFloatingDockController *)self _dismissFloatingDockIfPresentedAnimated:v4 completionHandler:v10];
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  if (v10)
  {
    v10[2](v10, 0);
  }

LABEL_10:
}

- (BOOL)shouldShowCloseBoxForIconView:(id)a3 proposedValue:(BOOL)a4
{
  v6 = a3;
  v7 = [v6 location];
  if ([v7 isEqualToString:@"SBIconLocationFloatingDockSuggestions"])
  {
    v8 = [v6 icon];
    v9 = [v6 continuityInfo];

    if (v9)
    {
      a4 = 0;
    }

    else
    {
      v10 = objc_opt_self();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v8 applicationBundleID];
        v12 = [(SBFloatingDockController *)self requestedSuggestedApplication];
        v13 = [v12 bundleIdentifier];
        v14 = [v11 isEqualToString:v13];

        a4 = v14 ^ 1;
      }

      else
      {

        a4 = 1;
      }
    }
  }

  return a4;
}

- (BOOL)handlePromptingUserToUninstallIcon:(id)a3 location:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 isEqualToString:@"SBIconLocationFloatingDockSuggestions"];
  if (v6)
  {
    if ([v5 isApplicationIcon])
    {
      v7 = [v5 application];
      if (!v7)
      {
LABEL_8:

        goto LABEL_9;
      }

      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      v18 = @"SBFloatingDockSuggestionsDeletedNotificationBundleIdentifierKey";
      v9 = MEMORY[0x277CBEB98];
      v10 = [v7 bundleIdentifier];
      v11 = [v9 setWithObjects:{v10, 0}];
      v19[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v13 = v8;
LABEL_7:
      [v13 postNotificationName:@"SBFloatingDockSuggestionsDeletedNotification" object:0 userInfo:v12];

      goto LABEL_8;
    }

    if ([v5 isBookmarkIcon])
    {
      v7 = [v5 webClip];
      v14 = [v7 identifier];
      v8 = [SBWebApplication _webAppIdentifierFromWebClipIdentifier:v14];

      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = [MEMORY[0x277CBEB98] setWithObjects:{v8, 0, @"SBFloatingDockSuggestionsDeletedNotificationWebAppIdentifierKey"}];
      v17 = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v13 = v10;
      goto LABEL_7;
    }
  }

LABEL_9:

  return v6;
}

- (void)resetRecentsAndSuggestions
{
  v2 = [(SBFloatingDockRootViewController *)self->_viewController suggestionsModel];
  [v2 resetRecentsAndSuggestions];
}

- (void)_addFloatingDockWindowLevelAssertion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 priority];
  floatingDockWindowLevelAssertionsByPriority = self->_floatingDockWindowLevelAssertionsByPriority;
  v7 = self->_floatingDockWindowLevelAssertionsByPriority[v5];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:517];
    v8 = floatingDockWindowLevelAssertionsByPriority[v5];
    floatingDockWindowLevelAssertionsByPriority[v5] = v7;
  }

  v9 = SBLogDock();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "adding floating dock window level assertion: %{public}@", &v10, 0xCu);
  }

  [(NSPointerArray *)v7 addPointer:v4];
  [(SBFloatingDockController *)self _recalculateWindowLevelForWindowLevelAssertions];
}

- (void)_removeFloatingDockWindowLevelAssertion:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 priority];
  floatingDockWindowLevelAssertionsByPriority = self->_floatingDockWindowLevelAssertionsByPriority;
  v7 = self->_floatingDockWindowLevelAssertionsByPriority[v5];
  if (v7)
  {
    v8 = [(SBFloatingDockController *)self _indexOfPointerArray:v7 ofObject:v4];
    v9 = SBLogDock();
    v10 = v9;
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(SBFloatingDockController *)v4 _removeFloatingDockWindowLevelAssertion:v10, v11, v12, v13, v14, v15, v16];
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138543362;
        v26 = v4;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "removing floating dock window level assertion: %{public}@", &v25, 0xCu);
      }

      [(NSPointerArray *)v7 removePointerAtIndex:v8];
      if (![(NSPointerArray *)v7 count])
      {
        v24 = floatingDockWindowLevelAssertionsByPriority[v5];
        floatingDockWindowLevelAssertionsByPriority[v5] = 0;
      }

      [(SBFloatingDockController *)self _recalculateWindowLevelForWindowLevelAssertions];
    }
  }

  else
  {
    v17 = SBLogDock();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(SBFloatingDockController *)v4 _removeFloatingDockWindowLevelAssertion:v17, v18, v19, v20, v21, v22, v23];
    }
  }
}

- (void)_clearGestureAssertion
{
  activeGestureFloatingDockBehaviorAssertion = self->_activeGestureFloatingDockBehaviorAssertion;
  if (activeGestureFloatingDockBehaviorAssertion)
  {
    self->_activeGestureFloatingDockBehaviorAssertion = 0;

    v4 = self->_floatingDockBehaviorAssertionsByLevel[12];
    self->_floatingDockBehaviorAssertionsByLevel[12] = 0;
  }
}

- (void)_addFloatingDockBehaviorAssertion:(id)a3 withCompletion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 level];
  floatingDockBehaviorAssertionsByLevel = self->_floatingDockBehaviorAssertionsByLevel;
  v10 = self->_floatingDockBehaviorAssertionsByLevel[v8];
  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:517];
    v11 = floatingDockBehaviorAssertionsByLevel[v8];
    floatingDockBehaviorAssertionsByLevel[v8] = v10;
  }

  v12 = SBLogDock();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "adding floating dock behavior assertion: %{public}@", &v13, 0xCu);
  }

  [(NSPointerArray *)v10 addPointer:v6];
  [(SBFloatingDockController *)self _clearGestureAssertion];
  [(SBFloatingDockController *)self _evaluateAssertions:0 interactive:0 withCompletion:v7];
}

- (void)_removeFloatingDockBehaviorAssertion:(id)a3 withCompletion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 level];
  floatingDockBehaviorAssertionsByLevel = self->_floatingDockBehaviorAssertionsByLevel;
  v10 = self->_floatingDockBehaviorAssertionsByLevel[v8];
  if (v10)
  {
    v11 = [(SBFloatingDockController *)self _indexOfPointerArray:v10 ofObject:v6];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v11;
      v13 = SBLogDock();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543362;
        v23 = v6;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "removing floating dock behavior assertion: %{public}@", &v22, 0xCu);
      }

      [(NSPointerArray *)v10 removePointerAtIndex:v12];
      if (![(NSPointerArray *)v10 count])
      {
        v14 = floatingDockBehaviorAssertionsByLevel[v8];
        floatingDockBehaviorAssertionsByLevel[v8] = 0;
      }

      [(SBFloatingDockController *)self _clearGestureAssertion];
    }
  }

  else
  {
    v15 = SBLogDock();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(SBFloatingDockController *)v6 _removeFloatingDockBehaviorAssertion:v15 withCompletion:v16, v17, v18, v19, v20, v21];
    }
  }

  [(SBFloatingDockController *)self _evaluateAssertions:1 interactive:0 withCompletion:v7];
}

- (unint64_t)_indexOfPointerArray:(id)a3 ofObject:(void *)a4
{
  v5 = a3;
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    while ([v5 pointerAtIndex:v8] != a4)
    {
      if (v7 == ++v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (void)_deriveActiveAssertion:(id *)a3 dockProgress:(double *)a4
{
  v6 = 0;
  v33 = *MEMORY[0x277D85DE8];
  floatingDockBehaviorAssertionsByLevel = self->_floatingDockBehaviorAssertionsByLevel;
  v7 = &stru_283094718;
  do
  {
    v24 = v7;
    v8 = floatingDockBehaviorAssertionsByLevel[v6];
    v9 = v8;
    v25 = v6;
    if (v8)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v10 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v27;
        v13 = &stru_283094718;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            v15 = v13;
            if (*v27 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v16 = *(*(&v26 + 1) + 8 * i);
            v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"assertion: %@", v16];

            if (v16)
            {
              if (a4)
              {
                [v16 progress];
                *a4 = v17;
              }

              if (a3)
              {
                v18 = v16;
                *a3 = v16;
              }
            }
          }

          v11 = [(NSPointerArray *)v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
        }

        while (v11);
      }

      else
      {
        v13 = &stru_283094718;
      }
    }

    else
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"none"];
    }

    v19 = MEMORY[0x277CCACA8];
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
    v21 = SBFloatingDockBehaviorLevelDescription(v25);
    v7 = [v19 stringWithFormat:@"level #%@ (%@) - %@\n%@", v20, v21, v13, v24];

    v6 = v25 + 1;
  }

  while (v25 != 13);
  v22 = SBLogDock();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v7;
    _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Floating dock behavior assertions...\n%{public}@", buf, 0xCu);
  }
}

- (void)_evaluateAssertions:(unint64_t)a3 interactive:(BOOL)a4 withCompletion:(id)a5
{
  v5 = a4;
  v30 = a5;
  *&v31 = 1.0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __75__SBFloatingDockController__evaluateAssertions_interactive_withCompletion___block_invoke;
  v29[3] = &unk_2783A9C98;
  v29[4] = self;
  v8 = MEMORY[0x223D6F7F0](v29);
  if (a3 == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activeAssertion);
    v10 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained progress];
      v12 = *&v11;
      v31 = v11;
      v13 = [v10 isAnimated];
    }

    else
    {
      v15 = SBLogDock();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [SBFloatingDockController _evaluateAssertions:v15 interactive:? withCompletion:?];
      }

      [0 progress];
      v12 = *&v16;
      v31 = v16;
      v13 = 1;
    }

    viewController = self->_viewController;
    v18 = v12;
    goto LABEL_35;
  }

  v28 = 0;
  [(SBFloatingDockController *)self _deriveActiveAssertion:&v28 dockProgress:&v31];
  v10 = v28;
  objc_storeWeak(&self->_activeAssertion, v10);
  if (v10)
  {
    v14 = [v10 isAnimated];
  }

  else
  {
    v19 = SBLogDock();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [SBFloatingDockController _evaluateAssertions:v19 interactive:? withCompletion:?];
    }

    v14 = 1;
  }

  [(SBFloatingDockRootViewController *)self->_viewController presentedProgress];
  v21 = v20;
  if (a3 == 3)
  {
    goto LABEL_16;
  }

  if (a3 == 1)
  {
LABEL_24:
    if ([(SBFloatingDockRootViewController *)self->_viewController isTransitioningPresentation]&& v21 < 1.0)
    {
      v22 = [(SBFloatingDockController *)self windowScene];
      if ([v22 isMainDisplayWindowScene])
      {
        v23 = [(SBFloatingDockRootViewController *)self->_viewController view];
        v24 = [v23 window];
        v25 = [v24 interfaceOrientation];
        v26 = [SBApp activeInterfaceOrientation];

        if (v25 != v26)
        {
          v27 = SBLogDock();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            [SBFloatingDockController _evaluateAssertions:v27 interactive:? withCompletion:?];
          }

          goto LABEL_31;
        }
      }

      else
      {
      }
    }

    viewController = self->_viewController;
    v18 = *&v31;
    v13 = v14;
LABEL_35:
    [(SBFloatingDockRootViewController *)viewController setPresentationProgress:v13 animated:v5 interactive:v8 withCompletion:v18];
    goto LABEL_36;
  }

  if (a3)
  {
    if (BSFloatIsOne() & 1) != 0 || (BSFloatIsZero())
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

LABEL_16:
  if (![(SBFloatingDockRootViewController *)self->_viewController isFloatingDockFullyPresented]&& BSFloatIsOne())
  {
    *&v31 = 1.0;
    goto LABEL_24;
  }

  if ([(SBFloatingDockRootViewController *)self->_viewController isFloatingDockPresented]&& BSFloatIsZero())
  {
    *&v31 = 0.0;
    goto LABEL_24;
  }

LABEL_31:
  if (v8)
  {
    v8[2](v8, 1);
  }

LABEL_36:

  [(SBFloatingDockController *)self _updateFocusAssertion];
}

uint64_t __75__SBFloatingDockController__evaluateAssertions_interactive_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateFocusAssertion];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_updateFocusAssertion
{
  v3 = [(SBFloatingDockController *)self _isActiveAssertionInDesiredLevel];
  v4 = [(SBFloatingDockRootViewController *)self->_viewController isPresentingFolder];
  v5 = v3 & (v4 | [(SBFloatingDockRootViewController *)self->_viewController isFloatingDockPresented]);
  v12 = [(SBFloatingDockController *)self windowScene];
  if (![(SBFloatingDockController *)self isInvalidated]&& v5 && !self->_focusAssertion && v12)
  {
    v6 = +[SBWorkspace mainWorkspace];
    v7 = [v6 keyboardFocusController];
    v8 = +[SBKeyboardFocusLockReason floatingDock];
    v9 = [v7 focusLockSpringBoardWindowScene:v12 forReason:v8];
    focusAssertion = self->_focusAssertion;
    self->_focusAssertion = v9;

LABEL_9:
    goto LABEL_10;
  }

  if ((v5 & 1) == 0)
  {
    v11 = self->_focusAssertion;
    if (v11)
    {
      [(BSInvalidatable *)v11 invalidate];
      v6 = self->_focusAssertion;
      self->_focusAssertion = 0;
      goto LABEL_9;
    }
  }

LABEL_10:
}

- (BOOL)_isActiveAssertionInDesiredLevel
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v4 = [WeakRetained switcherController];

  v5 = objc_loadWeakRetained(&self->_activeAssertion);
  v6 = [v4 windowManagementContext];
  v7 = [v6 isChamoisOrFlexibleWindowing];

  if (v7)
  {
    v8 = 12;
  }

  else
  {
    v8 = 5;
  }

  v9 = [v5 level];
  v10 = v9 >= v8;
  if ((v7 & 1) == 0)
  {
    v11 = v9;
    v12 = [v4 unlockedEnvironmentMode];
    v10 = v11 >= v8 || v12 == 3;
  }

  return v10;
}

- (double)_dockProgressForHoverTranslation:(double)a3
{
  [(SBFloatingDockController *)self floatingDockViewTopMargin];
  [(SBFloatingDockController *)self floatingDockHeight];
  BSUIConstrainValueToIntervalWithRubberBand();
  return result;
}

- (void)_handleDismissFloatingDockHoverGesture:(id)a3
{
  v18 = a3;
  v4 = [(SBFloatingDockController *)self isFloatingDockFullyPresented];
  v5 = [(SBFloatingDockController *)self wasFloatingDockPresentedByPointer];
  WeakRetained = objc_loadWeakRetained(&self->_activeAssertion);
  v7 = [WeakRetained gesturePossible];

  v8 = [(SBFloatingDockController *)self homeScreenContextProvider];
  v9 = [v8 areAnyIconViewContextMenusShowing];
  v10 = [(SBFloatingDockController *)self remoteContentManager];
  v11 = [v10 isRemoteContentPresenting];

  if (v4 && v5 && v7 && (v9 & 1) == 0 && (v11 & 1) == 0)
  {
    v12 = [(SBFloatingDockRootViewController *)self->_viewController view];
    _UISystemGestureLocationInView();
    v14 = v13;
    [v12 frame];
    v16 = v15;
    [(SBFloatingDockRootViewController *)self->_viewController maximumFloatingDockHeight];
    if (v14 < v16 + v17 * -1.5)
    {
      [(SBFloatingDockController *)self dismissFloatingDockIfPresentedAnimated:1 completionHandler:0];
    }
  }
}

- (void)handlePresentFloatingDockHoverGesture:(id)a3
{
  v4 = a3;
  v5 = self->_viewController;
  v6 = [(SBFloatingDockRootViewController *)v5 delegate];
  v7 = [(SBFloatingDockRootViewController *)v5 view];
  [v4 translationInView:v7];
  v9 = v8;

  [(SBFloatingDockController *)self _dockProgressForHoverTranslation:v9];
  v11 = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__SBFloatingDockController_handlePresentFloatingDockHoverGesture___block_invoke;
  v17[3] = &unk_2783A8ED8;
  v17[4] = self;
  v12 = v6;
  v18 = v12;
  v13 = v5;
  v19 = v13;
  v14 = MEMORY[0x223D6F7F0](v17);
  v15 = [v4 state];
  switch(v15)
  {
    case 4:
      if (![(SBFloatingDockRootViewController *)v13 isFloatingDockPresented]|| v11 <= 1.0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    case 3:
      if ([v4 endReason] != 4)
      {
        if (![(SBFloatingDockRootViewController *)v13 isFloatingDockPresented]|| v11 <= 0.0)
        {
          break;
        }

        [(SBIndirectPanGestureSettings *)self->_settings dockProgressThresholdForPresentingDock];
        if (v11 < v16)
        {
LABEL_13:
          [(SBFloatingDockController *)self dismissFloatingDockIfPresentedAnimated:1 completionHandler:0];
          break;
        }
      }

LABEL_12:
      v14[2](v14);
      break;
    case 2:
      [v12 floatingDockRootViewController:v13 modifyProgress:1 interactive:0 completion:v11];
      break;
  }
}

uint64_t __66__SBFloatingDockController_handlePresentFloatingDockHoverGesture___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setWasFloatingDockPresentedByPointer:1];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 floatingDockRootViewController:v3 modifyProgress:0 interactive:0 completion:1.0];
}

- (void)registerForWindowScene:(id)a3
{
  v11 = a3;
  v4 = [(SBFloatingDockController *)self homeScreenContextProvider];
  v5 = [v4 iconManager];
  v6 = [(SBFloatingDockController *)self floatingDockViewController];
  if ([v11 isMainDisplayWindowScene])
  {
    [v5 setFloatingDockViewController:v6];
  }

  else
  {
    [v5 configureFloatingDockViewController:v6];
  }

  v7 = [v11 systemGestureManager];
  v8 = [(SBFloatingDockController *)self dismissFloatingDockSystemGestureRecognizer];
  [v7 addGestureRecognizer:v8 withType:32];

  v9 = [(SBFloatingDockController *)self presentFloatingDockIndirectPanGestureRecognizer];
  [v7 addGestureRecognizer:v9 withType:33];

  v10 = [(SBFloatingDockController *)self dismissFloatingDockHoverGestureRecognizer];
  [v7 addGestureRecognizer:v10 withType:34];
}

- (void)_presentFloatingDockIfDismissedAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v5 = a4;
  if ([(SBFloatingDockRootViewController *)self->_viewController isFloatingDockPresented])
  {
    if (v5)
    {
      v5[2](v5, 0);
    }
  }

  else
  {
    [(SBFloatingDockController *)self floatingDockRootViewController:self->_viewController modifyProgress:0 interactive:v5 completion:1.0];
  }
}

- (void)_dismissFloatingDockIfPresentedAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v5 = a4;
  if ([(SBFloatingDockRootViewController *)self->_viewController isFloatingDockPresented])
  {
    [(SBFloatingDockController *)self floatingDockRootViewController:self->_viewController modifyProgress:0 interactive:v5 completion:0.0];
  }

  else if (v5)
  {
    v5[2](v5, 0);
  }
}

- (BOOL)_allowGestureRecognizers
{
  WeakRetained = objc_loadWeakRetained(&self->_activeAssertion);
  if ([WeakRetained gesturePossible])
  {
    v4 = !self->_homeScreenTodayViewTransitioning;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)floatingDockRootViewController:(id)a3 willChangeToHeight:(double)a4 interactive:(BOOL)a5
{
  v5 = a5;
  v13[2] = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v12[0] = @"SBFloatingDockControllerHeight";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v12[1] = @"SBFloatingDockControllerHeightChangeInteractive";
  v13[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v8 postNotificationName:@"SBFloatingDockControllerHeightWillChangeNotification" object:self userInfo:v11];
}

- (void)floatingDockRootViewController:(id)a3 didChangeToFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13[1] = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = @"SBFloatingDockControllerFrame";
  v10 = [MEMORY[0x277CCAE60] valueWithCGRect:{x, y, width, height}];
  v13[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v9 postNotificationName:@"SBFloatingDockControllerFrameDidChangeNotification" object:self userInfo:v11];
}

- (void)floatingDockRootViewController:(id)a3 floatingDockWantsToBePresented:(BOOL)a4
{
  if (a4)
  {
    [(SBFloatingDockController *)self presentFloatingDockIfDismissedAnimated:1 completionHandler:0];
  }

  else
  {
    [(SBFloatingDockController *)self dismissFloatingDockIfPresentedAnimated:1 completionHandler:0];
  }
}

- (void)floatingDockRootViewController:(id)a3 modifyProgress:(double)a4 interactive:(BOOL)a5 completion:(id)a6
{
  activeGestureFloatingDockBehaviorAssertion = self->_activeGestureFloatingDockBehaviorAssertion;
  if (activeGestureFloatingDockBehaviorAssertion)
  {
    v8 = a5;
    v15 = a6;
    [(SBFloatingDockBehaviorAssertion *)activeGestureFloatingDockBehaviorAssertion modifyProgress:v8 interactive:v15 completion:a4];
    v9 = v15;
  }

  else
  {
    v11 = a6;
    WeakRetained = objc_loadWeakRetained(&self->_activeAssertion);
    v13 = [WeakRetained gesturePossible];

    v14 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:self visibleProgress:1 animated:v13 gesturePossible:12 atLevel:@"active gesture" reason:v11 withCompletion:a4];
    v9 = self->_activeGestureFloatingDockBehaviorAssertion;
    self->_activeGestureFloatingDockBehaviorAssertion = v14;
  }
}

- (double)minimumHomeScreenScaleForFloatingDockRootViewController:(id)a3
{
  v4 = [(SBFloatingDockController *)self delegate];
  v5 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v4 minimumHomeScreenScaleForFloatingDockController:self];
    v5 = v6;
  }

  return v5;
}

- (id)libraryContainerViewControllerForFloatingDockRootViewController:(id)a3
{
  v4 = [(UIWindow *)self->_floatingDockWindow _sbWindowScene];
  if ([v4 isMainDisplayWindowScene])
  {
    v5 = [(SBFloatingDockController *)self homeScreenContextProvider];
    v6 = [v5 homeScreenViewController];
  }

  else
  {
    v6 = self->_viewController;
  }

  return v6;
}

- (BOOL)isDefaultLibraryContainerViewControllerForegroundForFloatingDockRootViewController:(id)a3
{
  v3 = [(UIWindow *)self->_floatingDockWindow _sbWindowScene];
  if ([v3 isMainDisplayWindowScene])
  {
    v4 = [v3 switcherController];
    v5 = [v4 unlockedEnvironmentMode] == 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)floatingDockRootViewController:(id)a3 acquireOrderFloatingDockContainerBeforeLibraryAssertionForReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFloatingDockController *)self homeScreenContextProvider];
  v9 = [v8 homeScreenViewController];
  v10 = [v6 floatingDockViewController];
  v11 = [v10 libraryViewController];
  v12 = [v11 parentViewController];

  if (v12 == v9)
  {
    v24 = [SBFloatingDockWindowLevelAssertion alloc];
    v23 = [(SBFloatingDockWindowLevelAssertion *)v24 initWithFloatingDockController:self priority:4 level:v7 reason:*MEMORY[0x277D772B0] + -2.5];
  }

  else
  {
    v13 = [v6 floatingDockViewController];
    v14 = [v13 view];

    v15 = [v14 superview];
    [v15 sendSubviewToBack:v14];

    rootViewControllerOrderingAssertions = self->_rootViewControllerOrderingAssertions;
    if (!rootViewControllerOrderingAssertions)
    {
      v17 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v18 = self->_rootViewControllerOrderingAssertions;
      self->_rootViewControllerOrderingAssertions = v17;

      rootViewControllerOrderingAssertions = self->_rootViewControllerOrderingAssertions;
    }

    v19 = rootViewControllerOrderingAssertions;
    v20 = objc_alloc(MEMORY[0x277CF0CE8]);
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __124__SBFloatingDockController_floatingDockRootViewController_acquireOrderFloatingDockContainerBeforeLibraryAssertionForReason___block_invoke;
    v29 = &unk_2783B18A8;
    v30 = v19;
    v31 = v14;
    v21 = v14;
    v22 = v19;
    v23 = [v20 initWithIdentifier:@"SBFloatingDockRootViewController-subview-ordering" forReason:v7 invalidationBlock:&v26];

    [(NSHashTable *)v22 addObject:v23, v26, v27, v28, v29];
    v7 = v21;
  }

  return v23;
}

void __124__SBFloatingDockController_floatingDockRootViewController_acquireOrderFloatingDockContainerBeforeLibraryAssertionForReason___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) removeObject:a2];
  if (![*(a1 + 32) count])
  {
    v3 = [*(a1 + 40) superview];
    [v3 bringSubviewToFront:*(a1 + 40)];
  }
}

- (void)floatingDockRootViewWillBecomeVisible:(id)a3
{
  v4 = [(SBFloatingDockController *)self remoteContentManager];

  if (v4)
  {
    v5 = [(SBFloatingDockController *)self remoteContentManager];
    [v5 reactivateSceneView];

    v6 = [(SBFloatingDockController *)self remoteContentManager];
    [v6 showAllOpenIndicatorViews];
  }
}

- (void)floatingDockRootViewWillResignVisible:(id)a3
{
  v4 = [(SBFloatingDockController *)self remoteContentManager];

  if (v4)
  {
    v5 = [(SBFloatingDockController *)self remoteContentManager];
    [v5 closeFileStackIconIfNeeded];
  }
}

- (void)floatingDockRootViewDidResignVisible:(id)a3
{
  v4 = [(SBFloatingDockController *)self remoteContentManager];

  if (v4)
  {
    v5 = [(SBFloatingDockController *)self remoteContentManager];
    [v5 removeSceneHostingViewMatchMoveAnimation];

    v6 = [(SBFloatingDockController *)self remoteContentManager];
    [v6 hideAllOpenIndicatorViews];

    v7 = [(SBFloatingDockController *)self remoteContentManager];
    [v7 deactivateSceneView];
  }
}

- (void)floatingDockRootViewController:(id)a3 finishDownloadAnimationWillBeginForIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBFloatingDockController *)self remoteContentManager];
  [v6 configureIconViewForFinishDownloadAnimationWillBegin:v5];
}

- (void)floatingDockRootViewController:(id)a3 finishDownloadAnimationDidEndForIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBFloatingDockController *)self remoteContentManager];
  [v6 configureIconViewForFinishDownloadAnimationDidFinish:v5];
}

- (id)floatingDockRootViewController:(id)a3 dataDropSessionDidUpdate:(id)a4 inIconListView:(id)a5
{
  v5 = MEMORY[0x277D75490];
  v6 = a4;
  v7 = [v5 sharedInstance];
  v8 = [v7 sessionForDropSession:v6];

  v9 = [v8 info];
  v10 = [v9 processIdentifier];
  v11 = +[SBApplicationController sharedInstance];
  v12 = [v11 applicationWithPid:v10];

  v13 = [v12 bundleIdentifier];
  v14 = [v13 isEqualToString:@"com.apple.DocumentsApp"];
  v15 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:v14];

  return v15;
}

- (void)reconnectHostingClient:(id)a3
{
  v4 = [(SBFloatingDockController *)self remoteContentManager];

  if (v4)
  {
    v5 = [(SBFloatingDockController *)self remoteContentManager];
    [v5 reconnectHostingClient];
  }
}

- (void)floatingDockRootViewController:(id)a3 willTransitionToSize:(CGSize)a4 withTransitionCoordinator:(id)a5
{
  v6 = a5;
  v7 = [(SBFloatingDockController *)self remoteContentManager];

  if (v7)
  {
    v8[4] = self;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __106__SBFloatingDockController_floatingDockRootViewController_willTransitionToSize_withTransitionCoordinator___block_invoke;
    v9[3] = &unk_2783A9488;
    v9[4] = self;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __106__SBFloatingDockController_floatingDockRootViewController_willTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v8[3] = &unk_2783A9488;
    [v6 animateAlongsideTransition:v9 completion:v8];
  }
}

void __106__SBFloatingDockController_floatingDockRootViewController_willTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteContentManager];
  [v2 hideRemoteContent:1];

  v3 = [*(a1 + 32) remoteContentManager];
  [v3 repositionRemoteContent];
}

void __106__SBFloatingDockController_floatingDockRootViewController_willTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) remoteContentManager];
  [v1 hideRemoteContent:0];
}

- (id)iconViewMap
{
  iconViewMap = self->_iconViewMap;
  if (!iconViewMap)
  {
    v4 = [objc_alloc(MEMORY[0x277D66288]) initWithDelegate:self];
    v5 = self->_iconViewMap;
    self->_iconViewMap = v4;

    iconViewMap = self->_iconViewMap;
  }

  return iconViewMap;
}

- (id)dequeueReusableIconViewOfClass:(Class)a3
{
  v4 = [(SBFloatingDockController *)self iconViewMap];
  v5 = [v4 dequeueReusableViewOfClass:a3];

  return v5;
}

- (void)recycleIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockController *)self iconViewMap];
  [v5 recycleView:v4];
}

- (BOOL)isIconViewRecycled:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockController *)self iconViewMap];
  v6 = [v5 isViewRecycled:v4];

  return v6;
}

- (void)configureIconView:(id)a3 forIcon:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(SBFloatingDockController *)self homeScreenContextProvider];
  v8 = [v9 iconManager];
  [v8 configureIconView:v7 forIcon:v6];
}

- (BOOL)viewMap:(id)a3 shouldRecycleView:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(SBFloatingDockController *)self homeScreenContextProvider];
    v7 = [v6 iconManager];
    v8 = [v7 shouldRecycleIconView:v5];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)iconManager:(id)a3 willPerformTransitionWithFolder:(id)a4 presenting:(BOOL)a5 withTransitionCoordinator:(id)a6
{
  v7 = a5;
  v12 = a4;
  v9 = a6;
  v10 = [(UIWindow *)self->_floatingDockWindow _sbWindowScene];
  v11 = [v12 _sbWindowScene];
  if (v10 == v11)
  {
    [(SBFloatingDockController *)self _handleTransitionForFolder:v12 atLevel:0 presenting:v7 withTransitionCoordinator:v9];
  }
}

- (void)_handleTransitionForFolder:(id)a3 atLevel:(unint64_t)a4 presenting:(BOOL)a5 withTransitionCoordinator:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v13 = [WeakRetained switcherController];
    [v13 dismissMainSwitcherWithSource:24 animated:1];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__SBFloatingDockController__handleTransitionForFolder_atLevel_presenting_withTransitionCoordinator___block_invoke;
  v15[3] = &unk_2783B9C28;
  v18 = v7;
  v15[4] = self;
  v16 = v10;
  v17 = a4;
  v14 = v10;
  [v11 animateAlongsideTransition:v15 completion:0];
}

void __100__SBFloatingDockController__handleTransitionForFolder_atLevel_presenting_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isCancelled];
  v5 = [v3 isInteractive];

  if ((v5 & 1) == 0)
  {
    v6 = *(a1 + 32);
    if (v4 == *(a1 + 56))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 32);

      [v8 _configureFloatingDockBehaviorAssertionForOpenFolder:0 atLevel:v7];
    }

    else
    {
      v9 = [*(a1 + 40) folder];
      [v6 _configureFloatingDockBehaviorAssertionForOpenFolder:v9 atLevel:*(a1 + 48)];
    }
  }
}

- (void)_configureFloatingDockBehaviorAssertionForOpenFolder:(id)a3 atLevel:(unint64_t)a4
{
  v11 = a3;
  if (a4 == 1)
  {
    openFolderOverSceneLayoutFloatingDockBehaviorAssertion = self->_openFolderOverSceneLayoutFloatingDockBehaviorAssertion;
    if (v11)
    {
      if (openFolderOverSceneLayoutFloatingDockBehaviorAssertion)
      {
        goto LABEL_14;
      }

      v10 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:self visibleProgress:1 animated:1 gesturePossible:8 atLevel:@"open folder over scene layout" reason:0 withCompletion:0.0];
      v8 = self->_openFolderOverSceneLayoutFloatingDockBehaviorAssertion;
      self->_openFolderOverSceneLayoutFloatingDockBehaviorAssertion = v10;
    }

    else
    {
      if (!openFolderOverSceneLayoutFloatingDockBehaviorAssertion)
      {
        goto LABEL_14;
      }

      [(SBFloatingDockBehaviorAssertion *)openFolderOverSceneLayoutFloatingDockBehaviorAssertion invalidate];
      v8 = self->_openFolderOverSceneLayoutFloatingDockBehaviorAssertion;
      self->_openFolderOverSceneLayoutFloatingDockBehaviorAssertion = 0;
    }
  }

  else
  {
    if (a4)
    {
      goto LABEL_14;
    }

    openFolderOverHomeScreenFloatingDockBehaviorAssertion = self->_openFolderOverHomeScreenFloatingDockBehaviorAssertion;
    if (v11)
    {
      if (openFolderOverHomeScreenFloatingDockBehaviorAssertion)
      {
        goto LABEL_14;
      }

      v7 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:self visibleProgress:1 animated:1 gesturePossible:1 atLevel:@"open folder over homescreen" reason:0 withCompletion:0.0];
      v8 = self->_openFolderOverHomeScreenFloatingDockBehaviorAssertion;
      self->_openFolderOverHomeScreenFloatingDockBehaviorAssertion = v7;
    }

    else
    {
      if (!openFolderOverHomeScreenFloatingDockBehaviorAssertion)
      {
        goto LABEL_14;
      }

      [(SBFloatingDockBehaviorAssertion *)openFolderOverHomeScreenFloatingDockBehaviorAssertion invalidate];
      v8 = self->_openFolderOverHomeScreenFloatingDockBehaviorAssertion;
      self->_openFolderOverHomeScreenFloatingDockBehaviorAssertion = 0;
    }
  }

LABEL_14:
  [(SBFloatingDockController *)self _updateFocusAssertion];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(SBFloatingDockController *)self _allowGestureRecognizers])
  {
    goto LABEL_10;
  }

  if (self->_dismissFloatingDockSystemGestureRecognizer != v6)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (![(SBFloatingDockRootViewController *)self->_viewController isFloatingDockPresented])
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v9 = [(SBFloatingDockController *)self homeScreenContextProvider];
  v10 = [v9 iconManager];
  if ([v10 isShowingLeadingCustomView] & 1) != 0 || (objc_msgSend(v9, "areAnyIconViewContextMenusShowing") & 1) != 0 || (-[SBFloatingDockController remoteContentManager](self, "remoteContentManager"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isRemoteContentPresenting"), v11, (v12))
  {
    v8 = 0;
  }

  else
  {
    v14 = [(SBFloatingDockRootViewController *)self->_viewController viewIfLoaded];
    if (v14)
    {
      _UISystemGestureLocationForTouchInView();
      v16 = v15;
      v17 = [v14 hitTest:0 withEvent:?];
      v8 = 0;
      if (!v17)
      {
        v18 = [v14 window];
        v19 = [v18 windowScene];
        v17 = [v19 screen];

        if (!v17 || (-[SBFloatingDockRootViewController floatingDockScreenFrame](self->_viewController, "floatingDockScreenFrame"), v21 = v20, v23 = v22, v25 = v24, v27 = v26, [v17 fixedCoordinateSpace], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "convertRect:fromCoordinateSpace:", v28, v21, v23, v25, v27), v30 = v29, v32 = v31, v34 = v33, v36 = v35, v28, v37.origin.x = v30, v37.origin.y = v32, v37.size.width = v34, v37.size.height = v36, v16 <= CGRectGetMidY(v37)))
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 1;
    }
  }

LABEL_11:
  return v8;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_presentFloatingDockIndirectPanGestureRecognizer == a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v6 = +[SBCoverSheetPresentationManager sharedInstance];
    v7 = [v6 isVisible];

    v8 = [WeakRetained controlCenterController];
    v9 = [v8 isVisible];

    v10 = [WeakRetained assistantController];
    v11 = [v10 isVisible];

    v12 = +[SBSetupManager sharedInstance];
    v13 = [v12 isInSetupMode];

    v14 = [WeakRetained switcherController];
    v15 = [v14 isFloatingSwitcherVisible];

    if (([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture]& 1) != 0)
    {
      if (![(SBFloatingDockRootViewController *)self->_viewController isFloatingDockFullyPresented])
      {
        if (((v7 | v9 | v11 | v13 | v15) & 1) == 0)
        {
          v3 = 1;
          goto LABEL_11;
        }

        v16 = SBLogDock();
        v20 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
        if (v13)
        {
          if (!v20)
          {
            goto LABEL_10;
          }

          v23 = 0;
          v17 = "Preventing the indirect present dock gesture because the dock is not allowed in Buddy.";
          v18 = &v23;
        }

        else if (v15)
        {
          if (!v20)
          {
            goto LABEL_10;
          }

          v22 = 0;
          v17 = "Preventing the indirect present dock gesture because the slide over switcher is visible.";
          v18 = &v22;
        }

        else
        {
          if (!v20)
          {
            goto LABEL_10;
          }

          v21 = 0;
          v17 = "Preventing the indirect present dock gesture because although the dock owns the home gesture, Cover Sheet, Control Center, or Siri are still dismissing.";
          v18 = &v21;
        }

        goto LABEL_9;
      }

      v16 = SBLogDock();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v24 = 0;
        v17 = "Preventing the indirect present dock gesture because the floating dock is already presented.";
        v18 = &v24;
LABEL_9:
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, v17, v18, 2u);
      }
    }

    else
    {
      v16 = SBLogDock();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v17 = "Preventing the indirect present dock gesture because the dock doesn't own the home gesture.";
        v18 = buf;
        goto LABEL_9;
      }
    }

LABEL_10:

    v3 = 0;
LABEL_11:

    return v3;
  }

  return 1;
}

- (void)_gestureRecognizerFailed:(id)a3
{
  if (self->_dismissFloatingDockSystemGestureRecognizer == a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activeAssertion);
    v5 = [WeakRetained gesturePossible];

    if (v5)
    {
      [(SBFloatingDockController *)self dismissFloatingDockIfPresentedAnimated:1 completionHandler:0];
      analyticsClient = self->_analyticsClient;

      [(SBFAnalyticsClient *)analyticsClient emitEvent:27];
    }
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4
{
  v45 = a4;
  v41 = [(SBFloatingDockRootViewController *)self->_viewController isFloatingDockPresented];
  v5 = [v45 fromLayoutState];
  v6 = [v5 unlockedEnvironmentMode];
  v7 = [v45 toLayoutState];
  v8 = [v7 unlockedEnvironmentMode];
  v9 = [(SBFloatingDockController *)self homeScreenContextProvider];
  v40 = [(SBFloatingDockController *)self presentedFolderController];
  v44 = [v40 folder];
  if (!v44)
  {
    v10 = v7;
    v11 = [(SBFloatingDockController *)self windowScene];
    if ([v11 isMainDisplayWindowScene])
    {
      v12 = [v9 iconManager];
      v13 = [v12 openedFolderController];
      v44 = [v13 folder];
    }

    else
    {
      v44 = 0;
    }

    v7 = v10;
  }

  v39 = [v7 isEqual:v5 withRole:1];
  v14 = [v7 isEqual:v5 withRole:3];
  v42 = v5;
  v15 = [v5 bundleIDShowingAppExpose];
  v43 = v7;
  v16 = [v7 bundleIDShowingAppExpose];
  v17 = BSEqualStrings();

  v18 = 0;
  v19 = v6;
  v20 = v6 == 3 && v8 == 3;
  if (v6 == 3 && v8 == 3 && (v17 & 1) == 0)
  {
    v21 = [v43 bundleIDShowingAppExpose];
    v18 = v21 != 0;
  }

  v22 = [v45 applicationTransitionContext];
  activeGestureFloatingDockBehaviorAssertion = self->_activeGestureFloatingDockBehaviorAssertion;
  if (activeGestureFloatingDockBehaviorAssertion)
  {
    if (self->_wasFloatingDockPresentedByPointer)
    {
      v24 = (v8 - 1) < 2;
      LODWORD(activeGestureFloatingDockBehaviorAssertion) = 1;
      if (!v14)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    LODWORD(activeGestureFloatingDockBehaviorAssertion) = 0;
  }

  v24 = 0;
  if (!v14)
  {
LABEL_20:
    [(SBFloatingDockController *)self dismissFloatingDockIfPresentedAnimated:1 completionHandler:0];
    [(SBFloatingDockController *)self dismissPresentedFolderAnimated:1 withTransitionContext:v22 completion:0];
    [(SBFloatingDockController *)self dismissPresentedLibraryAnimated:1 withTransitionContext:v22 completion:0];
    v25 = 0;
    goto LABEL_24;
  }

LABEL_19:
  if (v18 || ((v39 | !v20 | activeGestureFloatingDockBehaviorAssertion | v24) & 1) == 0)
  {
    goto LABEL_20;
  }

  v26 = [(SBFloatingDockRootViewController *)self->_viewController isFloatingDockPresented];
  v25 = v8 == 1 || v26;
LABEL_24:
  if (((v19 == 2) & v17) != 0)
  {
    if (v8 != 3)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  v28 = v19 == 2 && v8 == 3;
  if (v8 == 2 || v28)
  {
LABEL_35:
    [(SBFloatingDockController *)self dismissPresentedLibraryAnimated:1 withTransitionContext:v22 completion:0];
  }

  if (v19 == 1 && v8 == 3)
  {
    v29 = [(SBFloatingDockController *)self windowScene];
    v30 = [v29 isMainDisplayWindowScene];
    if (v44 && [(SBFloatingDockController *)self isPresentingFolder])
    {
      if (v30)
      {
        v31 = [v44 icon];
        v32 = [(SBFloatingDockController *)self presentedFolderController];
        v33 = [v32 currentPageIndex];

        [(SBFloatingDockController *)self dismissPresentedFolderAnimated:0 completion:0];
        v34 = [v9 _rootFolderController];
        [v34 pushFolderIcon:v31 location:*MEMORY[0x277D666C8] animated:0 completion:0];

        v35 = [v9 _rootFolderController];
        v36 = [v35 folderControllerForFolder:v44];
        [v36 setCurrentPageIndex:v33 animated:0];
      }

      else
      {
        [(SBFloatingDockController *)self dismissPresentedFolderAnimated:0 completion:0];
      }
    }

    else
    {
      v37 = [(SBFloatingDockController *)self floatingDockViewController];
      v38 = [v37 isPresentingLibrary];

      if (!(v30 & 1 | ((v38 & 1) == 0)))
      {
        [(SBFloatingDockController *)self dismissPresentedLibraryAnimated:1 withTransitionContext:v22 completion:0];
      }
    }
  }

LABEL_46:
  [(SBFloatingDockController *)self _updateFocusAssertion];
  [(SBFloatingDockRootViewController *)self->_viewController prepareForTransitionToEnvironmentMode:v8 fromDockVisible:v41 toDockVisible:v25];
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4
{
  v22 = a4;
  v5 = [v22 toLayoutState];
  v6 = [v5 unlockedEnvironmentMode];
  if (v6 == 1)
  {
    v7 = [(SBFloatingDockController *)self homeScreenContextProvider];
    v8 = [v7 _openFolderController];
    v9 = v8;
    if (v8 && [v8 isOpen] && !-[SBFloatingDockController isPresentingFolder](self, "isPresentingFolder"))
    {
      v21 = [v9 folder];
      v10 = [v21 icon];
      v20 = [v9 originatingIconLocation];
      v11 = [v7 iconModel];
      v12 = [v11 rootFolder];
      v13 = [v12 dock];
      v14 = [v13 directlyContainsIcon:v10];

      if (v14)
      {
        v15 = [v7 _rootFolderController];
        v16 = [v15 folderControllerForFolder:v21];

        v19 = [v16 currentPageIndex];
        v17 = [v7 _rootFolderController];
        [v17 popFolderAnimated:0 completion:0];

        [(SBFloatingDockController *)self presentFolderForIcon:v10 location:v20 animated:0 completion:0];
        if (v16)
        {
          v18 = [(SBFloatingDockController *)self presentedFolderController];
          [v18 setCurrentPageIndex:v19 animated:0];
        }
      }
    }
  }

  if (([v22 isInterrupted] & 1) == 0)
  {
    [(SBFloatingDockRootViewController *)self->_viewController cleanupAfterTransitionToEnvironmentMode:v6];
  }
}

- (void)rootFolderPageStateProvider:(id)a3 willBeginTransitionToState:(int64_t)a4 animated:(BOOL)a5 interactive:(BOOL)a6
{
  v8 = [a3 pageState];
  v9 = SBRootFolderPageStateIsOnLeadingCustomPage();
  v10 = SBRootFolderPageStateIsOnLeadingCustomPage();
  if (v9 == v10)
  {
    if (a4 != 1 && v8 != 1)
    {
      return;
    }

    v13 = [SBFloatingDockBehaviorAssertion alloc];
    v14 = 1.0;
    if (a4 == 1)
    {
      v14 = 0.0;
    }

    v15 = [(SBFloatingDockBehaviorAssertion *)v13 initWithFloatingDockController:self visibleProgress:1 animated:1 gesturePossible:2 atLevel:@"icon pull started" reason:0 withCompletion:v14];
    iconPullSearchGestureShowingFloatingDockBehaviorAssertion = self->_iconPullSearchGestureShowingFloatingDockBehaviorAssertion;
    self->_iconPullSearchGestureShowingFloatingDockBehaviorAssertion = v15;
  }

  else
  {
    self->_homeScreenTodayViewTransitioning = 1;
    self->_homeScreenTransitioningToTodayView = v10;
    if (self->_todayViewFloatingDockBehaviorAssertion)
    {
      return;
    }

    v11 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:self visibleProgress:1 animated:1 gesturePossible:4 atLevel:@"beginning transition to today view" reason:0 withCompletion:1.0];
    iconPullSearchGestureShowingFloatingDockBehaviorAssertion = self->_todayViewFloatingDockBehaviorAssertion;
    self->_todayViewFloatingDockBehaviorAssertion = v11;
  }
}

- (void)rootFolderPageStateProvider:(id)a3 didContinueTransitionToState:(int64_t)a4 progress:(double)a5
{
  [a3 pageState];
  v7 = SBRootFolderPageStateIsOnLeadingCustomPage();
  v8 = SBRootFolderPageStateIsOnLeadingCustomPage();
  if (v7 != v8)
  {
    v9 = 1.0 - a5;
    if (v8)
    {
      v9 = a5;
    }

    v10 = 1.0 - v9;
    if (!self->_homeScreenTransitioningToTodayView)
    {
      [(SBFloatingDockRootViewController *)self->_viewController presentedProgress];
      if (v10 < v11)
      {
        v10 = v11;
      }
    }

    todayViewFloatingDockBehaviorAssertion = self->_todayViewFloatingDockBehaviorAssertion;

    [(SBFloatingDockBehaviorAssertion *)todayViewFloatingDockBehaviorAssertion modifyProgress:1 interactive:0 completion:v10];
  }
}

- (void)rootFolderPageStateProvider:(id)a3 didEndTransitionFromState:(int64_t)a4 toState:(int64_t)a5 successfully:(BOOL)a6
{
  v18 = a3;
  v10 = SBRootFolderPageStateIsOnLeadingCustomPage();
  if (v10 != SBRootFolderPageStateIsOnLeadingCustomPage())
  {
    *&self->_homeScreenTransitioningToTodayView = 0;
    iconPullSearchGestureShowingFloatingDockBehaviorAssertion = [(SBFloatingDockController *)self homeScreenContextProvider];
    v12 = [iconPullSearchGestureShowingFloatingDockBehaviorAssertion iconManager];
    v13 = [v12 isShowingOrTransitioningToLeadingCustomView];
    todayViewFloatingDockBehaviorAssertion = self->_todayViewFloatingDockBehaviorAssertion;
    if (v13)
    {
      [(SBFloatingDockBehaviorAssertion *)todayViewFloatingDockBehaviorAssertion modifyProgress:1 interactive:0 completion:0.0];
    }

    else
    {
      [(SBFloatingDockBehaviorAssertion *)todayViewFloatingDockBehaviorAssertion invalidate];
      v17 = self->_todayViewFloatingDockBehaviorAssertion;
      self->_todayViewFloatingDockBehaviorAssertion = 0;
    }

    goto LABEL_13;
  }

  v15 = a4 != 1;
  v16 = !a6;
  if (a4 != 1)
  {
    v16 = 0;
  }

  if (a5 == 1)
  {
    v15 = a6;
  }

  if (!v15 && !v16)
  {
    [(SBFloatingDockBehaviorAssertion *)self->_iconPullSearchGestureShowingFloatingDockBehaviorAssertion invalidate];
    iconPullSearchGestureShowingFloatingDockBehaviorAssertion = self->_iconPullSearchGestureShowingFloatingDockBehaviorAssertion;
    self->_iconPullSearchGestureShowingFloatingDockBehaviorAssertion = 0;
LABEL_13:
  }
}

- (void)_recalculateWindowLevelForWindowLevelAssertions
{
  v3 = 0;
  v4 = 0;
  v23 = *MEMORY[0x277D85DE8];
  floatingDockWindowLevelAssertionsByPriority = self->_floatingDockWindowLevelAssertionsByPriority;
  do
  {
    v6 = floatingDockWindowLevelAssertionsByPriority[v4];
    v7 = v6;
    if (v6)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [(NSPointerArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          v11 = 0;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * v11);
            if (v12)
            {
              v13 = v12;

              v3 = v13;
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [(NSPointerArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v9);
      }
    }

    ++v4;
  }

  while (v4 != 5);
  if (v3)
  {
    [v3 level];
    v15 = v14;
  }

  else
  {
    v15 = *MEMORY[0x277D772B0] + 5.0 + 20.0;
  }

  v16 = [(SBFloatingDockRootViewController *)self->_viewController view];
  v17 = [v16 window];
  [v17 setWindowLevel:v15];

  [(SBFloatingDockRootViewController *)self->_viewController updateDisplayLayoutElementWindowLevel:v15];
}

- (void)assistantWillAppear:(id)a3
{
  if (SBWorkspaceHasApplicationSceneInLockedOrUnlockedEnvironmentLayoutState() && !self->_assistantFloatingDockBehaviorAssertion)
  {
    v4 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:self visibleProgress:1 animated:0 gesturePossible:6 atLevel:@"assistant" reason:0 withCompletion:0.0];
    assistantFloatingDockBehaviorAssertion = self->_assistantFloatingDockBehaviorAssertion;
    self->_assistantFloatingDockBehaviorAssertion = v4;
  }
}

- (void)assistantDidDisappear:(id)a3
{
  [(SBFloatingDockBehaviorAssertion *)self->_assistantFloatingDockBehaviorAssertion invalidate];
  assistantFloatingDockBehaviorAssertion = self->_assistantFloatingDockBehaviorAssertion;
  self->_assistantFloatingDockBehaviorAssertion = 0;
}

- (id)floatingDockListModel:(id)a3
{
  v3 = [(SBFloatingDockController *)self homeScreenContextProvider];
  v4 = [v3 iconManager];
  v5 = [v4 rootFolder];
  v6 = [v5 dockUtilities];

  return v6;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_settings == v6 && self->_presentFloatingDockIndirectPanGestureRecognizer)
  {
    if ([v7 isEqualToString:@"trackpadHysteresis"])
    {
      presentFloatingDockIndirectPanGestureRecognizer = self->_presentFloatingDockIndirectPanGestureRecognizer;
      [(SBIndirectPanGestureSettings *)self->_settings trackpadHysteresis];
      v10 = presentFloatingDockIndirectPanGestureRecognizer;
      v11 = 0;
LABEL_7:
      [(SBIndirectPanGestureRecognizer *)v10 setHysteresis:v11 forInputType:?];
      goto LABEL_8;
    }

    if ([v8 isEqualToString:@"mouseHysteresis"])
    {
      v12 = self->_presentFloatingDockIndirectPanGestureRecognizer;
      [(SBIndirectPanGestureSettings *)self->_settings mouseHysteresis];
      v10 = v12;
      v11 = 1;
      goto LABEL_7;
    }

    if ([v8 isEqualToString:@"mouseActivationDistance"])
    {
      v13 = self->_presentFloatingDockIndirectPanGestureRecognizer;
      [(SBIndirectPanGestureSettings *)self->_settings mouseActivationDistance];
      [(SBIndirectPanGestureRecognizer *)v13 setActivationRecognitionDistance:?];
    }

    else if ([v8 isEqualToString:@"orthogonalTranslationAdjustmentFactor"])
    {
      v14 = self->_presentFloatingDockIndirectPanGestureRecognizer;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __56__SBFloatingDockController_settings_changedValueForKey___block_invoke;
      v15[3] = &unk_2783B7868;
      v15[4] = self;
      [(SBIndirectPanGestureRecognizer *)v14 setTranslationAdjustmentBlock:v15];
    }

    else if ([v8 isEqualToString:@"shouldRequirePointerEventMovement"])
    {
      [(SBIndirectPanGestureRecognizer *)self->_presentFloatingDockIndirectPanGestureRecognizer setShouldRequirePointerEventMovement:[(SBIndirectPanGestureSettings *)self->_settings shouldRequirePointerEventMovement]];
    }
  }

LABEL_8:
}

- (id)succinctDescription
{
  v2 = [(SBFloatingDockController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFloatingDockController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockController *)self succinctDescriptionBuilder];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__SBFloatingDockController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_2783A8ED8;
  v6 = v5;
  v12 = v6;
  v13 = self;
  v14 = v4;
  v7 = v4;
  [v6 appendBodySectionWithName:0 multilinePrefix:v7 block:v11];
  v8 = v14;
  v9 = v6;

  return v6;
}

void __66__SBFloatingDockController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"floating dock view controller"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 320) withName:@"dismiss floating dock system gesture recognizer"];
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 336));
  v6 = [v4 appendObject:WeakRetained withName:@"current active assertion"];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__SBFloatingDockController_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v14[3] = &unk_2783A8ED8;
  v9 = *(a1 + 32);
  v7 = v9.i64[0];
  v15 = vextq_s8(v9, v9, 8uLL);
  v16 = *(a1 + 48);
  [v7 appendBodySectionWithName:@"floatingDockBehaviorByAssertionLevel" multilinePrefix:&stru_283094718 block:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__SBFloatingDockController_descriptionBuilderWithMultilinePrefix___block_invoke_3;
  v11[3] = &unk_2783A8ED8;
  v10 = *(a1 + 32);
  v8 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  v13 = *(a1 + 48);
  [v8 appendBodySectionWithName:@"_floatingDockWindowLevelAssertionsByPriority" multilinePrefix:&stru_283094718 block:v11];
}

void __66__SBFloatingDockController_descriptionBuilderWithMultilinePrefix___block_invoke_2(void *a1)
{
  for (i = 0; i != 14; ++i)
  {
    v3 = *(a1[4] + 8 * i + 24);
    if (v3)
    {
      v4 = a1[5];
      v5 = v3;
      v6 = [v5 allObjects];
      v7 = MEMORY[0x277CCACA8];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      v9 = [v8 description];
      v10 = SBFloatingDockBehaviorLevelDescription(i);
      v11 = [v7 stringWithFormat:@"%@ - (%@)", v9, v10];
      [v4 appendArraySection:v6 withName:v11 multilinePrefix:a1[6] skipIfEmpty:0];
    }
  }
}

void __66__SBFloatingDockController_descriptionBuilderWithMultilinePrefix___block_invoke_3(void *a1)
{
  for (i = 0; i != 5; ++i)
  {
    v3 = *(a1[4] + 8 * i + 136);
    if (v3)
    {
      v4 = a1[5];
      v5 = v3;
      v6 = [v5 allObjects];
      v7 = MEMORY[0x277CCACA8];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      v9 = [v8 description];
      v10 = SBFloatingDockWindowLevelPriorityDescription(i);
      v11 = [v7 stringWithFormat:@"%@ - (%@)", v9, v10];
      [v4 appendArraySection:v6 withName:v11 multilinePrefix:a1[6] skipIfEmpty:0];
    }
  }
}

- (void)_setupStateDumper
{
  if (!self->_floatingDockStateDumpHandle)
  {
    if (+[SBFloatingDockController isFloatingDockSupported])
    {
      objc_initWeak(&location, self);
      v3 = MEMORY[0x277D85CD0];
      v4 = MEMORY[0x277D85CD0];
      v18[1] = MEMORY[0x277D85DD0];
      v18[2] = 3221225472;
      v18[3] = __45__SBFloatingDockController__setupStateDumper__block_invoke;
      v18[4] = &unk_2783AB940;
      objc_copyWeak(&v19, &location);
      v5 = BSLogAddStateCaptureBlockWithTitle();
      floatingDockStateDumpHandle = self->_floatingDockStateDumpHandle;
      self->_floatingDockStateDumpHandle = v5;

      v13 = 0;
      v14 = &v13;
      v15 = 0x3042000000;
      v16 = __Block_byref_object_copy__76;
      v17 = __Block_byref_object_dispose__76;
      v18[0] = 0;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __45__SBFloatingDockController__setupStateDumper__block_invoke_208;
      v12[3] = &unk_2783B9C78;
      v12[4] = &v13;
      v7 = MEMORY[0x223D6F7F0](v12);
      objc_storeWeak(v14 + 5, v7);
      objc_copyWeak(&v11, &location);
      v10 = v7;
      v8 = BSLogAddStateCaptureBlockWithTitle();
      floatingDockRecursiveHitTestingStateDumpHandle = self->_floatingDockRecursiveHitTestingStateDumpHandle;
      self->_floatingDockRecursiveHitTestingStateDumpHandle = v8;

      objc_destroyWeak(&v11);
      _Block_object_dispose(&v13, 8);
      objc_destroyWeak(v18);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }
}

id __45__SBFloatingDockController__setupStateDumper__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    v4 = [v2 descriptionBuilderWithMultilinePrefix:0];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __45__SBFloatingDockController__setupStateDumper__block_invoke_2;
    v12 = &unk_2783A92D8;
    v13 = v4;
    v14 = v3;
    v5 = v3;
    v6 = v4;
    [v6 appendBodySectionWithName:@"floating dock presentation state" multilinePrefix:&stru_283094718 block:&v9];
    v7 = [v6 build];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __45__SBFloatingDockController__setupStateDumper__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isFloatingDockPresented"), @"isFloatingDockPresented"}];
  v3 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isFloatingDockFullyPresented"), @"isFloatingDockFullyPresented"}];
  v4 = *(a1 + 32);
  [*(a1 + 40) floatingDockScreenFrame];
  v5 = [v4 appendRect:@"floatingDockScreenFrame" withName:?];
  v6 = *(a1 + 32);
  [*(a1 + 40) floatingDockScreenPresentationFrame];
  v7 = [v6 appendRect:@"floatingDockScreenPresentationFrame" withName:?];
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) view];
  v10 = [v9 window];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_283094718;
  }

  v13 = [v8 appendObject:v12 withName:@"floatingDockWindow"];

  v14 = MEMORY[0x277CCABB0];
  v15 = *(a1 + 32);
  v19 = [*(a1 + 40) view];
  v16 = [v19 window];
  [v16 windowLevel];
  v17 = [v14 numberWithDouble:?];
  v18 = [v15 appendObject:v17 withName:@"floatingDockWindowLevel"];
}

void __45__SBFloatingDockController__setupStateDumper__block_invoke_208(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = objc_opt_new();
  v13 = v12;
  if (a5)
  {
    v14 = a5;
    do
    {
      v15 = [v13 stringByAppendingString:@"\t"];

      v13 = v15;
      --v14;
    }

    while (v14);
  }

  else
  {
    v15 = v12;
  }

  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __45__SBFloatingDockController__setupStateDumper__block_invoke_2_212;
  v22[3] = &unk_2783B9C50;
  v23 = v11;
  v24 = v9;
  v18 = *(a1 + 32);
  v25 = v10;
  v26 = v18;
  v27 = a5;
  v19 = v10;
  v20 = v9;
  v21 = v11;
  [v21 appendBodySectionWithName:v17 multilinePrefix:v15 block:v22];
}

void __45__SBFloatingDockController__setupStateDumper__block_invoke_2_212(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isUserInteractionEnabled"), @"isUserInteractionEnabled"}];
  v3 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"bs_isHitTestingDisabled"), @"bs_isHitTestingDisabled"}];
  v14 = [*(a1 + 40) subviews];
  if ([v14 count])
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = [v4 evaluateWithObject:*(a1 + 40)];

      if ((v5 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [*(a1 + 40) subviews];
    v7 = [v6 reverseObjectEnumerator];

    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          WeakRetained = objc_loadWeakRetained((*(*(a1 + 56) + 8) + 40));
          (*(WeakRetained + 2))(WeakRetained, v12, *(a1 + 48), *(a1 + 32), *(a1 + 64) + 1);
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
  }
}

id __45__SBFloatingDockController__setupStateDumper__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained descriptionBuilderWithMultilinePrefix:0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__SBFloatingDockController__setupStateDumper__block_invoke_4;
    v9[3] = &unk_2783A9C20;
    v5 = *(a1 + 32);
    v10 = v4;
    v11 = v5;
    v9[4] = v3;
    v6 = v4;
    [v6 appendBodySectionWithName:@"floating dock user interface interaction enabled" multilinePrefix:&stru_283094718 block:v9];
    v7 = [v6 build];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __45__SBFloatingDockController__setupStateDumper__block_invoke_4(void *a1)
{
  v2 = a1[6];
  v3 = *(a1[4] + 312);
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_229];
  (*(v2 + 16))(v2, v3, v4, a1[5], 0);
}

BOOL __45__SBFloatingDockController__setupStateDumper__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (SBFloatingDockControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBFloatingDockHomeScreenContextProviding)homeScreenContextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_homeScreenContextProvider);

  return WeakRetained;
}

- (SBFloatingDockBehaviorAssertion)activeAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_activeAssertion);

  return WeakRetained;
}

- (SBLayoutStateTransitionCoordinator)layoutStateTransitionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutStateTransitionCoordinator);

  return WeakRetained;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end