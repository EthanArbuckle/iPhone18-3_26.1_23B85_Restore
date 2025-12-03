@interface SBFloatingDockController
+ (BOOL)isFloatingDockSupported;
+ (BOOL)isFloatingDockUtilitiesSupported;
+ (void)initialize;
- (BOOL)_allowGestureRecognizers;
- (BOOL)_isActiveAssertionInDesiredLevel;
- (BOOL)containsPoint:(CGPoint)point fromCoordinateSpace:(id)space;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)handlePromptingUserToUninstallIcon:(id)icon location:(id)location;
- (BOOL)isDefaultLibraryContainerViewControllerForegroundForFloatingDockRootViewController:(id)controller;
- (BOOL)isGesturePossible;
- (BOOL)isIconViewRecycled:(id)recycled;
- (BOOL)isPresentingLibraryInFloatingDockWindow;
- (BOOL)shouldShowCloseBoxForIconView:(id)view proposedValue:(BOOL)value;
- (BOOL)viewMap:(id)map shouldRecycleView:(id)view;
- (CGRect)floatingDockScreenFrame;
- (CGRect)floatingDockScreenPresentationFrame;
- (SBFloatingDockBehaviorAssertion)activeAssertion;
- (SBFloatingDockController)initWithWindowScene:(id)scene homeScreenContextProvider:(id)provider;
- (SBFloatingDockControllerDelegate)delegate;
- (SBFloatingDockHomeScreenContextProviding)homeScreenContextProvider;
- (SBFloatingDockViewController)floatingDockViewController;
- (SBLayoutStateTransitionCoordinator)layoutStateTransitionCoordinator;
- (SBWindowScene)windowScene;
- (double)_dockProgressForHoverTranslation:(double)translation;
- (double)minimumHomeScreenScaleForFloatingDockRootViewController:(id)controller;
- (id)_initWithWindowScene:(id)scene homeScreenContextProvider:(id)provider applicationController:(id)controller recentsController:(id)recentsController recentsDataStore:(id)store layoutStateTransitionCoordinator:(id)coordinator appSuggestionManager:(id)manager analyticsClient:(id)self0;
- (id)dequeueReusableIconViewOfClass:(Class)class;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)floatingDockListModel:(id)model;
- (id)floatingDockRootViewController:(id)controller acquireOrderFloatingDockContainerBeforeLibraryAssertionForReason:(id)reason;
- (id)floatingDockRootViewController:(id)controller dataDropSessionDidUpdate:(id)update inIconListView:(id)view;
- (id)iconViewMap;
- (id)libraryContainerViewControllerForFloatingDockRootViewController:(id)controller;
- (id)succinctDescription;
- (unint64_t)_indexOfPointerArray:(id)array ofObject:(void *)object;
- (void)_addFloatingDockBehaviorAssertion:(id)assertion withCompletion:(id)completion;
- (void)_addFloatingDockWindowLevelAssertion:(id)assertion;
- (void)_clearGestureAssertion;
- (void)_configureFloatingDockBehaviorAssertionForOpenFolder:(id)folder atLevel:(unint64_t)level;
- (void)_deriveActiveAssertion:(id *)assertion dockProgress:(double *)progress;
- (void)_dismissFloatingDockIfPresentedAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)_evaluateAssertions:(unint64_t)assertions interactive:(BOOL)interactive withCompletion:(id)completion;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)_handleDismissFloatingDockHoverGesture:(id)gesture;
- (void)_handleTransitionForFolder:(id)folder atLevel:(unint64_t)level presenting:(BOOL)presenting withTransitionCoordinator:(id)coordinator;
- (void)_presentFloatingDockIfDismissedAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)_recalculateWindowLevelForWindowLevelAssertions;
- (void)_removeFloatingDockBehaviorAssertion:(id)assertion withCompletion:(id)completion;
- (void)_removeFloatingDockWindowLevelAssertion:(id)assertion;
- (void)_setupStateDumper;
- (void)_updateFocusAssertion;
- (void)assistantDidDisappear:(id)disappear;
- (void)assistantWillAppear:(id)appear;
- (void)configureIconView:(id)view forIcon:(id)icon;
- (void)dealloc;
- (void)dismissFloatingDockIfPresentedAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)dismissFloatingDockUsingKeyCommandIfPresentedAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)floatingDockRootViewController:(id)controller didChangeToFrame:(CGRect)frame;
- (void)floatingDockRootViewController:(id)controller finishDownloadAnimationDidEndForIconView:(id)view;
- (void)floatingDockRootViewController:(id)controller finishDownloadAnimationWillBeginForIconView:(id)view;
- (void)floatingDockRootViewController:(id)controller floatingDockWantsToBePresented:(BOOL)presented;
- (void)floatingDockRootViewController:(id)controller modifyProgress:(double)progress interactive:(BOOL)interactive completion:(id)completion;
- (void)floatingDockRootViewController:(id)controller willChangeToHeight:(double)height interactive:(BOOL)interactive;
- (void)floatingDockRootViewController:(id)controller willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)floatingDockRootViewDidResignVisible:(id)visible;
- (void)floatingDockRootViewWillBecomeVisible:(id)visible;
- (void)floatingDockRootViewWillResignVisible:(id)visible;
- (void)handlePresentFloatingDockHoverGesture:(id)gesture;
- (void)iconManager:(id)manager willPerformTransitionWithFolder:(id)folder presenting:(BOOL)presenting withTransitionCoordinator:(id)coordinator;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)presentFloatingDockIfDismissedAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)reconnectHostingClient:(id)client;
- (void)recycleIconView:(id)view;
- (void)registerForWindowScene:(id)scene;
- (void)resetRecentsAndSuggestions;
- (void)rootFolderPageStateProvider:(id)provider didContinueTransitionToState:(int64_t)state progress:(double)progress;
- (void)rootFolderPageStateProvider:(id)provider didEndTransitionFromState:(int64_t)state toState:(int64_t)toState successfully:(BOOL)successfully;
- (void)rootFolderPageStateProvider:(id)provider willBeginTransitionToState:(int64_t)state animated:(BOOL)animated interactive:(BOOL)interactive;
- (void)settings:(id)settings changedValueForKey:(id)key;
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

  if (v3 == self)
  {
    SBIconLocationGroupAddLocation();

    SBIconLocationGroupAddLocation();
  }
}

- (SBFloatingDockController)initWithWindowScene:(id)scene homeScreenContextProvider:(id)provider
{
  providerCopy = provider;
  sceneCopy = scene;
  v8 = +[SBMedusaDomain rootSettings];
  [v8 numberOfRecents];
  *&v9 = v9;
  v10 = vcvtms_u32_f32(*&v9);

  v11 = [SBRecentDisplayItemsController alloc];
  v12 = +[SBAppInteractionEventSourceManager sharedInstance];
  v13 = +[SBApplicationController sharedInstance];
  v14 = [(SBRecentDisplayItemsController *)v11 initWithRemovalPersonality:14 movePersonality:15 transitionFromSources:0 maxDisplayItems:v10 eventSource:v12 applicationController:v13 iconModelProvider:providerCopy];

  v15 = [[SBRecentDisplayItemsDataStore alloc] initWithRecentLayouts:0 fallbackToRecentAppLayouts:0];
  layoutStateTransitionCoordinator = [sceneCopy layoutStateTransitionCoordinator];
  v17 = +[SBApplicationController sharedInstance];
  v18 = +[SBAppSuggestionManager sharedInstance];
  mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
  v20 = [(SBFloatingDockController *)self _initWithWindowScene:sceneCopy homeScreenContextProvider:providerCopy applicationController:v17 recentsController:v14 recentsDataStore:v15 layoutStateTransitionCoordinator:layoutStateTransitionCoordinator appSuggestionManager:v18 analyticsClient:mEMORY[0x277D65DD0]];

  return v20;
}

- (id)_initWithWindowScene:(id)scene homeScreenContextProvider:(id)provider applicationController:(id)controller recentsController:(id)recentsController recentsDataStore:(id)store layoutStateTransitionCoordinator:(id)coordinator appSuggestionManager:(id)manager analyticsClient:(id)self0
{
  v70[2] = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  obj = provider;
  controllerCopy = controller;
  recentsControllerCopy = recentsController;
  storeCopy = store;
  coordinatorCopy = coordinator;
  managerCopy = manager;
  clientCopy = client;
  v69.receiver = self;
  v69.super_class = SBFloatingDockController;
  v18 = [(SBFloatingDockController *)&v69 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    objc_storeWeak(&v18->_windowScene, sceneCopy);
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
    v24 = [[SBFloatingDockRootViewController alloc] initWithHomeScreenContextProvider:obj applicationController:controllerCopy recentsController:recentsControllerCopy recentsDataStore:storeCopy appSuggestionManager:managerCopy layoutStateTransitionCoordinator:coordinatorCopy iconViewProvider:p_isa analyticsClient:clientCopy];
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
    zStackResolver = [sceneCopy zStackResolver];
    v33 = [zStackResolver acquireParticipantWithIdentifier:2 delegate:v32];
    v34 = v32[44];
    v32[44] = v33;

    v35 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:v32 action:sel__handleDismissFloatingDockHoverGesture_];
    v36 = v32[38];
    v32[38] = v35;

    [v32[38] setDelegate:v32];
    objc_storeWeak(v32 + 43, coordinatorCopy);
    [coordinatorCopy addObserver:v32];
    [p_isa[1] setDelegate:v32];
    iconManager = [obj iconManager];
    [iconManager addPageStateObserver:v32];
    [iconManager addFolderPresentationObserver:v32];
    assistantController = [sceneCopy assistantController];
    [assistantController addObserver:v32];

    objc_storeStrong(v32 + 22, client);
    objc_initWeak(&location, v32);
    v39 = +[SBDefaults localDefaults];
    appSwitcherDefaults = [v39 appSwitcherDefaults];

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
    v45 = [appSwitcherDefaults observeDefaults:v43 onQueue:MEMORY[0x277D85CD0] withBlock:v64];

    if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleFloatingDock"))
    {
      v46 = [(SBWindow *)[SBFloatingDockWindow alloc] initWithWindowScene:sceneCopy role:@"SBTraitsParticipantRoleFloatingDock" debugName:@"FloatingDock"];
      [(SBFloatingDockWindow *)v46 setRootViewController:p_isa[1]];
      [(SBFloatingDockWindow *)v46 setClipsToBounds:0];
    }

    else
    {
      v46 = [(SBMainScreenActiveInterfaceOrientationWindow *)[SBOldFloatingDockWindow alloc] initWithWindowScene:sceneCopy role:@"SBTraitsParticipantRoleFloatingDock" debugName:@"FloatingDock"];
      [(SBFloatingDockWindow *)v46 setContentViewController:p_isa[1]];
      [(SBFloatingDockWindow *)v46 setPassesTouchesThrough:1];
    }

    [(SBFloatingDockWindow *)v46 setOpaque:0];
    [(SBWindow *)v46 setHidden:0];
    [(SBFloatingDockWindow *)v46 setWindowLevel:*MEMORY[0x277D772B0] + 5.0 + 20.0];
    objc_storeStrong(v32 + 39, v46);
    [v32 _setupStateDumper];
    v47 = [[SBFloatingDockRemoteContentManager alloc] initWithFloatingDockRootViewController:p_isa[1] windowScene:sceneCopy];
    v48 = v32[47];
    v32[47] = v47;

    [v32[47] setDelegate:v32];
    v49 = +[SBApplicationController sharedInstance];
    restrictionController = [v49 restrictionController];
    [restrictionController addObserver:v32[47]];

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
  homeScreenContextProvider = [(SBFloatingDockController *)self homeScreenContextProvider];
  iconManager = [homeScreenContextProvider iconManager];
  [iconManager removePageStateObserver:self];

  iconManager2 = [homeScreenContextProvider iconManager];
  [iconManager2 removeFolderPresentationObserver:self];

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  assistantController = [WeakRetained assistantController];
  [assistantController removeObserver:self];

  v8 = objc_loadWeakRetained(&self->_layoutStateTransitionCoordinator);
  [v8 removeObserver:self];

  v9 = +[SBApplicationController sharedInstance];
  restrictionController = [v9 restrictionController];
  [restrictionController removeObserver:self->_remoteContentManager];

  [(BSInvalidatable *)self->_floatingDockStateDumpHandle invalidate];
  [(BSInvalidatable *)self->_floatingDockRecursiveHitTestingStateDumpHandle invalidate];
  [(BSInvalidatable *)self->_focusAssertion invalidate];

  v11.receiver = self;
  v11.super_class = SBFloatingDockController;
  [(SBFloatingDockController *)&v11 dealloc];
}

- (BOOL)containsPoint:(CGPoint)point fromCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  spaceCopy = space;
  if ([(SBFloatingDockController *)self isFloatingDockPresented]&& [(SBFloatingDockController *)self isFloatingDockFullyPresented])
  {
    viewIfLoaded = [(SBFloatingDockRootViewController *)self->_viewController viewIfLoaded];
    v9 = viewIfLoaded;
    if (viewIfLoaded)
    {
      [viewIfLoaded convertPoint:spaceCopy fromCoordinateSpace:{x, y}];
      v11 = v10;
      v13 = v12;
      [(SBFloatingDockController *)self floatingDockScreenFrame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      window = [v9 window];
      screen = [window screen];
      fixedCoordinateSpace = [screen fixedCoordinateSpace];
      [v9 convertRect:fixedCoordinateSpace fromCoordinateSpace:{v15, v17, v19, v21}];
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
  if ([self isFloatingDockSupported])
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
  gesturePossible = [WeakRetained gesturePossible];

  return gesturePossible;
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
  floatingDockViewController = [(SBFloatingDockController *)self floatingDockViewController];
  if ([floatingDockViewController isPresentingLibrary])
  {
    windowScene = [(SBFloatingDockController *)self windowScene];
    modalLibraryController = [windowScene modalLibraryController];
    libraryViewController = [modalLibraryController libraryViewController];
    parentViewController = [libraryViewController parentViewController];
    v8 = parentViewController == self->_viewController;
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

- (void)presentFloatingDockIfDismissedAnimated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  if ([(SBFloatingDockController *)self _canPresentFloatingDock])
  {
    [(SBFloatingDockController *)self setWasFloatingDockPresentedByPointer:0];
    [(SBFloatingDockController *)self _presentFloatingDockIfDismissedAnimated:animatedCopy completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)dismissFloatingDockUsingKeyCommandIfPresentedAnimated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  homeScreenContextProvider = [(SBFloatingDockController *)self homeScreenContextProvider];
  iconManager = [homeScreenContextProvider iconManager];
  if ([iconManager areAnyIconShareSheetsShowing])
  {
    [iconManager dismissIconShareSheets];
  }

  [(SBFloatingDockController *)self dismissFloatingDockIfPresentedAnimated:animatedCopy completionHandler:handlerCopy];
}

- (void)dismissFloatingDockIfPresentedAnimated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  homeScreenContextProvider = [(SBFloatingDockController *)self homeScreenContextProvider];
  iconManager = [homeScreenContextProvider iconManager];
  if (!self->_homeScreenTodayViewTransitioning)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activeAssertion);
    if ([WeakRetained gesturePossible])
    {
      areAnyIconShareSheetsShowing = [iconManager areAnyIconShareSheetsShowing];

      if ((areAnyIconShareSheetsShowing & 1) == 0)
      {
        [(SBFloatingDockController *)self setWasFloatingDockPresentedByPointer:0];
        if ([homeScreenContextProvider areAnyIconViewContextMenusShowing])
        {
          [homeScreenContextProvider dismissAppIconForceTouchControllers:0];
        }

        [(SBFloatingDockController *)self _dismissFloatingDockIfPresentedAnimated:animatedCopy completionHandler:handlerCopy];
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

LABEL_10:
}

- (BOOL)shouldShowCloseBoxForIconView:(id)view proposedValue:(BOOL)value
{
  viewCopy = view;
  location = [viewCopy location];
  if ([location isEqualToString:@"SBIconLocationFloatingDockSuggestions"])
  {
    icon = [viewCopy icon];
    continuityInfo = [viewCopy continuityInfo];

    if (continuityInfo)
    {
      value = 0;
    }

    else
    {
      v10 = objc_opt_self();
      if (objc_opt_isKindOfClass())
      {
        applicationBundleID = [icon applicationBundleID];
        requestedSuggestedApplication = [(SBFloatingDockController *)self requestedSuggestedApplication];
        bundleIdentifier = [requestedSuggestedApplication bundleIdentifier];
        v14 = [applicationBundleID isEqualToString:bundleIdentifier];

        value = v14 ^ 1;
      }

      else
      {

        value = 1;
      }
    }
  }

  return value;
}

- (BOOL)handlePromptingUserToUninstallIcon:(id)icon location:(id)location
{
  v19[1] = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  v6 = [location isEqualToString:@"SBIconLocationFloatingDockSuggestions"];
  if (v6)
  {
    if ([iconCopy isApplicationIcon])
    {
      application = [iconCopy application];
      if (!application)
      {
LABEL_8:

        goto LABEL_9;
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v18 = @"SBFloatingDockSuggestionsDeletedNotificationBundleIdentifierKey";
      v9 = MEMORY[0x277CBEB98];
      bundleIdentifier = [application bundleIdentifier];
      v11 = [v9 setWithObjects:{bundleIdentifier, 0}];
      v19[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v13 = defaultCenter;
LABEL_7:
      [v13 postNotificationName:@"SBFloatingDockSuggestionsDeletedNotification" object:0 userInfo:v12];

      goto LABEL_8;
    }

    if ([iconCopy isBookmarkIcon])
    {
      application = [iconCopy webClip];
      identifier = [application identifier];
      defaultCenter = [SBWebApplication _webAppIdentifierFromWebClipIdentifier:identifier];

      bundleIdentifier = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = [MEMORY[0x277CBEB98] setWithObjects:{defaultCenter, 0, @"SBFloatingDockSuggestionsDeletedNotificationWebAppIdentifierKey"}];
      v17 = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v13 = bundleIdentifier;
      goto LABEL_7;
    }
  }

LABEL_9:

  return v6;
}

- (void)resetRecentsAndSuggestions
{
  suggestionsModel = [(SBFloatingDockRootViewController *)self->_viewController suggestionsModel];
  [suggestionsModel resetRecentsAndSuggestions];
}

- (void)_addFloatingDockWindowLevelAssertion:(id)assertion
{
  v12 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  priority = [assertionCopy priority];
  floatingDockWindowLevelAssertionsByPriority = self->_floatingDockWindowLevelAssertionsByPriority;
  v7 = self->_floatingDockWindowLevelAssertionsByPriority[priority];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:517];
    v8 = floatingDockWindowLevelAssertionsByPriority[priority];
    floatingDockWindowLevelAssertionsByPriority[priority] = v7;
  }

  v9 = SBLogDock();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = assertionCopy;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "adding floating dock window level assertion: %{public}@", &v10, 0xCu);
  }

  [(NSPointerArray *)v7 addPointer:assertionCopy];
  [(SBFloatingDockController *)self _recalculateWindowLevelForWindowLevelAssertions];
}

- (void)_removeFloatingDockWindowLevelAssertion:(id)assertion
{
  v27 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  priority = [assertionCopy priority];
  floatingDockWindowLevelAssertionsByPriority = self->_floatingDockWindowLevelAssertionsByPriority;
  v7 = self->_floatingDockWindowLevelAssertionsByPriority[priority];
  if (v7)
  {
    v8 = [(SBFloatingDockController *)self _indexOfPointerArray:v7 ofObject:assertionCopy];
    v9 = SBLogDock();
    v10 = v9;
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(SBFloatingDockController *)assertionCopy _removeFloatingDockWindowLevelAssertion:v10, v11, v12, v13, v14, v15, v16];
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138543362;
        v26 = assertionCopy;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "removing floating dock window level assertion: %{public}@", &v25, 0xCu);
      }

      [(NSPointerArray *)v7 removePointerAtIndex:v8];
      if (![(NSPointerArray *)v7 count])
      {
        v24 = floatingDockWindowLevelAssertionsByPriority[priority];
        floatingDockWindowLevelAssertionsByPriority[priority] = 0;
      }

      [(SBFloatingDockController *)self _recalculateWindowLevelForWindowLevelAssertions];
    }
  }

  else
  {
    v17 = SBLogDock();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(SBFloatingDockController *)assertionCopy _removeFloatingDockWindowLevelAssertion:v17, v18, v19, v20, v21, v22, v23];
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

- (void)_addFloatingDockBehaviorAssertion:(id)assertion withCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  completionCopy = completion;
  level = [assertionCopy level];
  floatingDockBehaviorAssertionsByLevel = self->_floatingDockBehaviorAssertionsByLevel;
  v10 = self->_floatingDockBehaviorAssertionsByLevel[level];
  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:517];
    v11 = floatingDockBehaviorAssertionsByLevel[level];
    floatingDockBehaviorAssertionsByLevel[level] = v10;
  }

  v12 = SBLogDock();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = assertionCopy;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "adding floating dock behavior assertion: %{public}@", &v13, 0xCu);
  }

  [(NSPointerArray *)v10 addPointer:assertionCopy];
  [(SBFloatingDockController *)self _clearGestureAssertion];
  [(SBFloatingDockController *)self _evaluateAssertions:0 interactive:0 withCompletion:completionCopy];
}

- (void)_removeFloatingDockBehaviorAssertion:(id)assertion withCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  completionCopy = completion;
  level = [assertionCopy level];
  floatingDockBehaviorAssertionsByLevel = self->_floatingDockBehaviorAssertionsByLevel;
  v10 = self->_floatingDockBehaviorAssertionsByLevel[level];
  if (v10)
  {
    v11 = [(SBFloatingDockController *)self _indexOfPointerArray:v10 ofObject:assertionCopy];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v11;
      v13 = SBLogDock();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543362;
        v23 = assertionCopy;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "removing floating dock behavior assertion: %{public}@", &v22, 0xCu);
      }

      [(NSPointerArray *)v10 removePointerAtIndex:v12];
      if (![(NSPointerArray *)v10 count])
      {
        v14 = floatingDockBehaviorAssertionsByLevel[level];
        floatingDockBehaviorAssertionsByLevel[level] = 0;
      }

      [(SBFloatingDockController *)self _clearGestureAssertion];
    }
  }

  else
  {
    v15 = SBLogDock();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(SBFloatingDockController *)assertionCopy _removeFloatingDockBehaviorAssertion:v15 withCompletion:v16, v17, v18, v19, v20, v21];
    }
  }

  [(SBFloatingDockController *)self _evaluateAssertions:1 interactive:0 withCompletion:completionCopy];
}

- (unint64_t)_indexOfPointerArray:(id)array ofObject:(void *)object
{
  arrayCopy = array;
  v6 = [arrayCopy count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    while ([arrayCopy pointerAtIndex:v8] != object)
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

- (void)_deriveActiveAssertion:(id *)assertion dockProgress:(double *)progress
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
              if (progress)
              {
                [v16 progress];
                *progress = v17;
              }

              if (assertion)
              {
                v18 = v16;
                *assertion = v16;
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

- (void)_evaluateAssertions:(unint64_t)assertions interactive:(BOOL)interactive withCompletion:(id)completion
{
  interactiveCopy = interactive;
  completionCopy = completion;
  *&v31 = 1.0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __75__SBFloatingDockController__evaluateAssertions_interactive_withCompletion___block_invoke;
  v29[3] = &unk_2783A9C98;
  v29[4] = self;
  v8 = MEMORY[0x223D6F7F0](v29);
  if (assertions == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activeAssertion);
    v10 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained progress];
      v12 = *&v11;
      v31 = v11;
      isAnimated = [v10 isAnimated];
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
      isAnimated = 1;
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
    isAnimated2 = [v10 isAnimated];
  }

  else
  {
    v19 = SBLogDock();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [SBFloatingDockController _evaluateAssertions:v19 interactive:? withCompletion:?];
    }

    isAnimated2 = 1;
  }

  [(SBFloatingDockRootViewController *)self->_viewController presentedProgress];
  v21 = v20;
  if (assertions == 3)
  {
    goto LABEL_16;
  }

  if (assertions == 1)
  {
LABEL_24:
    if ([(SBFloatingDockRootViewController *)self->_viewController isTransitioningPresentation]&& v21 < 1.0)
    {
      windowScene = [(SBFloatingDockController *)self windowScene];
      if ([windowScene isMainDisplayWindowScene])
      {
        view = [(SBFloatingDockRootViewController *)self->_viewController view];
        window = [view window];
        interfaceOrientation = [window interfaceOrientation];
        activeInterfaceOrientation = [SBApp activeInterfaceOrientation];

        if (interfaceOrientation != activeInterfaceOrientation)
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
    isAnimated = isAnimated2;
LABEL_35:
    [(SBFloatingDockRootViewController *)viewController setPresentationProgress:isAnimated animated:interactiveCopy interactive:v8 withCompletion:v18];
    goto LABEL_36;
  }

  if (assertions)
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
  _isActiveAssertionInDesiredLevel = [(SBFloatingDockController *)self _isActiveAssertionInDesiredLevel];
  isPresentingFolder = [(SBFloatingDockRootViewController *)self->_viewController isPresentingFolder];
  v5 = _isActiveAssertionInDesiredLevel & (isPresentingFolder | [(SBFloatingDockRootViewController *)self->_viewController isFloatingDockPresented]);
  windowScene = [(SBFloatingDockController *)self windowScene];
  if (![(SBFloatingDockController *)self isInvalidated]&& v5 && !self->_focusAssertion && windowScene)
  {
    v6 = +[SBWorkspace mainWorkspace];
    keyboardFocusController = [v6 keyboardFocusController];
    v8 = +[SBKeyboardFocusLockReason floatingDock];
    v9 = [keyboardFocusController focusLockSpringBoardWindowScene:windowScene forReason:v8];
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
  switcherController = [WeakRetained switcherController];

  v5 = objc_loadWeakRetained(&self->_activeAssertion);
  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    v8 = 12;
  }

  else
  {
    v8 = 5;
  }

  level = [v5 level];
  v10 = level >= v8;
  if ((isChamoisOrFlexibleWindowing & 1) == 0)
  {
    v11 = level;
    unlockedEnvironmentMode = [switcherController unlockedEnvironmentMode];
    v10 = v11 >= v8 || unlockedEnvironmentMode == 3;
  }

  return v10;
}

- (double)_dockProgressForHoverTranslation:(double)translation
{
  [(SBFloatingDockController *)self floatingDockViewTopMargin];
  [(SBFloatingDockController *)self floatingDockHeight];
  BSUIConstrainValueToIntervalWithRubberBand();
  return result;
}

- (void)_handleDismissFloatingDockHoverGesture:(id)gesture
{
  gestureCopy = gesture;
  isFloatingDockFullyPresented = [(SBFloatingDockController *)self isFloatingDockFullyPresented];
  wasFloatingDockPresentedByPointer = [(SBFloatingDockController *)self wasFloatingDockPresentedByPointer];
  WeakRetained = objc_loadWeakRetained(&self->_activeAssertion);
  gesturePossible = [WeakRetained gesturePossible];

  homeScreenContextProvider = [(SBFloatingDockController *)self homeScreenContextProvider];
  areAnyIconViewContextMenusShowing = [homeScreenContextProvider areAnyIconViewContextMenusShowing];
  remoteContentManager = [(SBFloatingDockController *)self remoteContentManager];
  isRemoteContentPresenting = [remoteContentManager isRemoteContentPresenting];

  if (isFloatingDockFullyPresented && wasFloatingDockPresentedByPointer && gesturePossible && (areAnyIconViewContextMenusShowing & 1) == 0 && (isRemoteContentPresenting & 1) == 0)
  {
    view = [(SBFloatingDockRootViewController *)self->_viewController view];
    _UISystemGestureLocationInView();
    v14 = v13;
    [view frame];
    v16 = v15;
    [(SBFloatingDockRootViewController *)self->_viewController maximumFloatingDockHeight];
    if (v14 < v16 + v17 * -1.5)
    {
      [(SBFloatingDockController *)self dismissFloatingDockIfPresentedAnimated:1 completionHandler:0];
    }
  }
}

- (void)handlePresentFloatingDockHoverGesture:(id)gesture
{
  gestureCopy = gesture;
  v5 = self->_viewController;
  delegate = [(SBFloatingDockRootViewController *)v5 delegate];
  view = [(SBFloatingDockRootViewController *)v5 view];
  [gestureCopy translationInView:view];
  v9 = v8;

  [(SBFloatingDockController *)self _dockProgressForHoverTranslation:v9];
  v11 = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__SBFloatingDockController_handlePresentFloatingDockHoverGesture___block_invoke;
  v17[3] = &unk_2783A8ED8;
  v17[4] = self;
  v12 = delegate;
  v18 = v12;
  v13 = v5;
  v19 = v13;
  v14 = MEMORY[0x223D6F7F0](v17);
  state = [gestureCopy state];
  switch(state)
  {
    case 4:
      if (![(SBFloatingDockRootViewController *)v13 isFloatingDockPresented]|| v11 <= 1.0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    case 3:
      if ([gestureCopy endReason] != 4)
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

- (void)registerForWindowScene:(id)scene
{
  sceneCopy = scene;
  homeScreenContextProvider = [(SBFloatingDockController *)self homeScreenContextProvider];
  iconManager = [homeScreenContextProvider iconManager];
  floatingDockViewController = [(SBFloatingDockController *)self floatingDockViewController];
  if ([sceneCopy isMainDisplayWindowScene])
  {
    [iconManager setFloatingDockViewController:floatingDockViewController];
  }

  else
  {
    [iconManager configureFloatingDockViewController:floatingDockViewController];
  }

  systemGestureManager = [sceneCopy systemGestureManager];
  dismissFloatingDockSystemGestureRecognizer = [(SBFloatingDockController *)self dismissFloatingDockSystemGestureRecognizer];
  [systemGestureManager addGestureRecognizer:dismissFloatingDockSystemGestureRecognizer withType:32];

  presentFloatingDockIndirectPanGestureRecognizer = [(SBFloatingDockController *)self presentFloatingDockIndirectPanGestureRecognizer];
  [systemGestureManager addGestureRecognizer:presentFloatingDockIndirectPanGestureRecognizer withType:33];

  dismissFloatingDockHoverGestureRecognizer = [(SBFloatingDockController *)self dismissFloatingDockHoverGestureRecognizer];
  [systemGestureManager addGestureRecognizer:dismissFloatingDockHoverGestureRecognizer withType:34];
}

- (void)_presentFloatingDockIfDismissedAnimated:(BOOL)animated completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SBFloatingDockRootViewController *)self->_viewController isFloatingDockPresented])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    [(SBFloatingDockController *)self floatingDockRootViewController:self->_viewController modifyProgress:0 interactive:handlerCopy completion:1.0];
  }
}

- (void)_dismissFloatingDockIfPresentedAnimated:(BOOL)animated completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SBFloatingDockRootViewController *)self->_viewController isFloatingDockPresented])
  {
    [(SBFloatingDockController *)self floatingDockRootViewController:self->_viewController modifyProgress:0 interactive:handlerCopy completion:0.0];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
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

- (void)floatingDockRootViewController:(id)controller willChangeToHeight:(double)height interactive:(BOOL)interactive
{
  interactiveCopy = interactive;
  v13[2] = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v12[0] = @"SBFloatingDockControllerHeight";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:height];
  v12[1] = @"SBFloatingDockControllerHeightChangeInteractive";
  v13[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:interactiveCopy];
  v13[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [defaultCenter postNotificationName:@"SBFloatingDockControllerHeightWillChangeNotification" object:self userInfo:v11];
}

- (void)floatingDockRootViewController:(id)controller didChangeToFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13[1] = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = @"SBFloatingDockControllerFrame";
  v10 = [MEMORY[0x277CCAE60] valueWithCGRect:{x, y, width, height}];
  v13[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [defaultCenter postNotificationName:@"SBFloatingDockControllerFrameDidChangeNotification" object:self userInfo:v11];
}

- (void)floatingDockRootViewController:(id)controller floatingDockWantsToBePresented:(BOOL)presented
{
  if (presented)
  {
    [(SBFloatingDockController *)self presentFloatingDockIfDismissedAnimated:1 completionHandler:0];
  }

  else
  {
    [(SBFloatingDockController *)self dismissFloatingDockIfPresentedAnimated:1 completionHandler:0];
  }
}

- (void)floatingDockRootViewController:(id)controller modifyProgress:(double)progress interactive:(BOOL)interactive completion:(id)completion
{
  activeGestureFloatingDockBehaviorAssertion = self->_activeGestureFloatingDockBehaviorAssertion;
  if (activeGestureFloatingDockBehaviorAssertion)
  {
    interactiveCopy = interactive;
    completionCopy = completion;
    [(SBFloatingDockBehaviorAssertion *)activeGestureFloatingDockBehaviorAssertion modifyProgress:interactiveCopy interactive:completionCopy completion:progress];
    v9 = completionCopy;
  }

  else
  {
    completionCopy2 = completion;
    WeakRetained = objc_loadWeakRetained(&self->_activeAssertion);
    gesturePossible = [WeakRetained gesturePossible];

    v14 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:self visibleProgress:1 animated:gesturePossible gesturePossible:12 atLevel:@"active gesture" reason:completionCopy2 withCompletion:progress];
    v9 = self->_activeGestureFloatingDockBehaviorAssertion;
    self->_activeGestureFloatingDockBehaviorAssertion = v14;
  }
}

- (double)minimumHomeScreenScaleForFloatingDockRootViewController:(id)controller
{
  delegate = [(SBFloatingDockController *)self delegate];
  v5 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [delegate minimumHomeScreenScaleForFloatingDockController:self];
    v5 = v6;
  }

  return v5;
}

- (id)libraryContainerViewControllerForFloatingDockRootViewController:(id)controller
{
  _sbWindowScene = [(UIWindow *)self->_floatingDockWindow _sbWindowScene];
  if ([_sbWindowScene isMainDisplayWindowScene])
  {
    homeScreenContextProvider = [(SBFloatingDockController *)self homeScreenContextProvider];
    homeScreenViewController = [homeScreenContextProvider homeScreenViewController];
  }

  else
  {
    homeScreenViewController = self->_viewController;
  }

  return homeScreenViewController;
}

- (BOOL)isDefaultLibraryContainerViewControllerForegroundForFloatingDockRootViewController:(id)controller
{
  _sbWindowScene = [(UIWindow *)self->_floatingDockWindow _sbWindowScene];
  if ([_sbWindowScene isMainDisplayWindowScene])
  {
    switcherController = [_sbWindowScene switcherController];
    v5 = [switcherController unlockedEnvironmentMode] == 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)floatingDockRootViewController:(id)controller acquireOrderFloatingDockContainerBeforeLibraryAssertionForReason:(id)reason
{
  controllerCopy = controller;
  reasonCopy = reason;
  homeScreenContextProvider = [(SBFloatingDockController *)self homeScreenContextProvider];
  homeScreenViewController = [homeScreenContextProvider homeScreenViewController];
  floatingDockViewController = [controllerCopy floatingDockViewController];
  libraryViewController = [floatingDockViewController libraryViewController];
  parentViewController = [libraryViewController parentViewController];

  if (parentViewController == homeScreenViewController)
  {
    v24 = [SBFloatingDockWindowLevelAssertion alloc];
    v23 = [(SBFloatingDockWindowLevelAssertion *)v24 initWithFloatingDockController:self priority:4 level:reasonCopy reason:*MEMORY[0x277D772B0] + -2.5];
  }

  else
  {
    floatingDockViewController2 = [controllerCopy floatingDockViewController];
    view = [floatingDockViewController2 view];

    superview = [view superview];
    [superview sendSubviewToBack:view];

    rootViewControllerOrderingAssertions = self->_rootViewControllerOrderingAssertions;
    if (!rootViewControllerOrderingAssertions)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v18 = self->_rootViewControllerOrderingAssertions;
      self->_rootViewControllerOrderingAssertions = weakObjectsHashTable;

      rootViewControllerOrderingAssertions = self->_rootViewControllerOrderingAssertions;
    }

    v19 = rootViewControllerOrderingAssertions;
    v20 = objc_alloc(MEMORY[0x277CF0CE8]);
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __124__SBFloatingDockController_floatingDockRootViewController_acquireOrderFloatingDockContainerBeforeLibraryAssertionForReason___block_invoke;
    v29 = &unk_2783B18A8;
    v30 = v19;
    v31 = view;
    v21 = view;
    v22 = v19;
    v23 = [v20 initWithIdentifier:@"SBFloatingDockRootViewController-subview-ordering" forReason:reasonCopy invalidationBlock:&v26];

    [(NSHashTable *)v22 addObject:v23, v26, v27, v28, v29];
    reasonCopy = v21;
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

- (void)floatingDockRootViewWillBecomeVisible:(id)visible
{
  remoteContentManager = [(SBFloatingDockController *)self remoteContentManager];

  if (remoteContentManager)
  {
    remoteContentManager2 = [(SBFloatingDockController *)self remoteContentManager];
    [remoteContentManager2 reactivateSceneView];

    remoteContentManager3 = [(SBFloatingDockController *)self remoteContentManager];
    [remoteContentManager3 showAllOpenIndicatorViews];
  }
}

- (void)floatingDockRootViewWillResignVisible:(id)visible
{
  remoteContentManager = [(SBFloatingDockController *)self remoteContentManager];

  if (remoteContentManager)
  {
    remoteContentManager2 = [(SBFloatingDockController *)self remoteContentManager];
    [remoteContentManager2 closeFileStackIconIfNeeded];
  }
}

- (void)floatingDockRootViewDidResignVisible:(id)visible
{
  remoteContentManager = [(SBFloatingDockController *)self remoteContentManager];

  if (remoteContentManager)
  {
    remoteContentManager2 = [(SBFloatingDockController *)self remoteContentManager];
    [remoteContentManager2 removeSceneHostingViewMatchMoveAnimation];

    remoteContentManager3 = [(SBFloatingDockController *)self remoteContentManager];
    [remoteContentManager3 hideAllOpenIndicatorViews];

    remoteContentManager4 = [(SBFloatingDockController *)self remoteContentManager];
    [remoteContentManager4 deactivateSceneView];
  }
}

- (void)floatingDockRootViewController:(id)controller finishDownloadAnimationWillBeginForIconView:(id)view
{
  viewCopy = view;
  remoteContentManager = [(SBFloatingDockController *)self remoteContentManager];
  [remoteContentManager configureIconViewForFinishDownloadAnimationWillBegin:viewCopy];
}

- (void)floatingDockRootViewController:(id)controller finishDownloadAnimationDidEndForIconView:(id)view
{
  viewCopy = view;
  remoteContentManager = [(SBFloatingDockController *)self remoteContentManager];
  [remoteContentManager configureIconViewForFinishDownloadAnimationDidFinish:viewCopy];
}

- (id)floatingDockRootViewController:(id)controller dataDropSessionDidUpdate:(id)update inIconListView:(id)view
{
  v5 = MEMORY[0x277D75490];
  updateCopy = update;
  sharedInstance = [v5 sharedInstance];
  v8 = [sharedInstance sessionForDropSession:updateCopy];

  info = [v8 info];
  processIdentifier = [info processIdentifier];
  v11 = +[SBApplicationController sharedInstance];
  v12 = [v11 applicationWithPid:processIdentifier];

  bundleIdentifier = [v12 bundleIdentifier];
  v14 = [bundleIdentifier isEqualToString:@"com.apple.DocumentsApp"];
  v15 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:v14];

  return v15;
}

- (void)reconnectHostingClient:(id)client
{
  remoteContentManager = [(SBFloatingDockController *)self remoteContentManager];

  if (remoteContentManager)
  {
    remoteContentManager2 = [(SBFloatingDockController *)self remoteContentManager];
    [remoteContentManager2 reconnectHostingClient];
  }
}

- (void)floatingDockRootViewController:(id)controller willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  remoteContentManager = [(SBFloatingDockController *)self remoteContentManager];

  if (remoteContentManager)
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
    [coordinatorCopy animateAlongsideTransition:v9 completion:v8];
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

- (id)dequeueReusableIconViewOfClass:(Class)class
{
  iconViewMap = [(SBFloatingDockController *)self iconViewMap];
  v5 = [iconViewMap dequeueReusableViewOfClass:class];

  return v5;
}

- (void)recycleIconView:(id)view
{
  viewCopy = view;
  iconViewMap = [(SBFloatingDockController *)self iconViewMap];
  [iconViewMap recycleView:viewCopy];
}

- (BOOL)isIconViewRecycled:(id)recycled
{
  recycledCopy = recycled;
  iconViewMap = [(SBFloatingDockController *)self iconViewMap];
  v6 = [iconViewMap isViewRecycled:recycledCopy];

  return v6;
}

- (void)configureIconView:(id)view forIcon:(id)icon
{
  iconCopy = icon;
  viewCopy = view;
  homeScreenContextProvider = [(SBFloatingDockController *)self homeScreenContextProvider];
  iconManager = [homeScreenContextProvider iconManager];
  [iconManager configureIconView:viewCopy forIcon:iconCopy];
}

- (BOOL)viewMap:(id)map shouldRecycleView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    homeScreenContextProvider = [(SBFloatingDockController *)self homeScreenContextProvider];
    iconManager = [homeScreenContextProvider iconManager];
    v8 = [iconManager shouldRecycleIconView:viewCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)iconManager:(id)manager willPerformTransitionWithFolder:(id)folder presenting:(BOOL)presenting withTransitionCoordinator:(id)coordinator
{
  presentingCopy = presenting;
  folderCopy = folder;
  coordinatorCopy = coordinator;
  _sbWindowScene = [(UIWindow *)self->_floatingDockWindow _sbWindowScene];
  _sbWindowScene2 = [folderCopy _sbWindowScene];
  if (_sbWindowScene == _sbWindowScene2)
  {
    [(SBFloatingDockController *)self _handleTransitionForFolder:folderCopy atLevel:0 presenting:presentingCopy withTransitionCoordinator:coordinatorCopy];
  }
}

- (void)_handleTransitionForFolder:(id)folder atLevel:(unint64_t)level presenting:(BOOL)presenting withTransitionCoordinator:(id)coordinator
{
  presentingCopy = presenting;
  folderCopy = folder;
  coordinatorCopy = coordinator;
  if (presentingCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    switcherController = [WeakRetained switcherController];
    [switcherController dismissMainSwitcherWithSource:24 animated:1];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__SBFloatingDockController__handleTransitionForFolder_atLevel_presenting_withTransitionCoordinator___block_invoke;
  v15[3] = &unk_2783B9C28;
  v18 = presentingCopy;
  v15[4] = self;
  v16 = folderCopy;
  levelCopy = level;
  v14 = folderCopy;
  [coordinatorCopy animateAlongsideTransition:v15 completion:0];
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

- (void)_configureFloatingDockBehaviorAssertionForOpenFolder:(id)folder atLevel:(unint64_t)level
{
  folderCopy = folder;
  if (level == 1)
  {
    openFolderOverSceneLayoutFloatingDockBehaviorAssertion = self->_openFolderOverSceneLayoutFloatingDockBehaviorAssertion;
    if (folderCopy)
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
    if (level)
    {
      goto LABEL_14;
    }

    openFolderOverHomeScreenFloatingDockBehaviorAssertion = self->_openFolderOverHomeScreenFloatingDockBehaviorAssertion;
    if (folderCopy)
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

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (![(SBFloatingDockController *)self _allowGestureRecognizers])
  {
    goto LABEL_10;
  }

  if (self->_dismissFloatingDockSystemGestureRecognizer != recognizerCopy)
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

  homeScreenContextProvider = [(SBFloatingDockController *)self homeScreenContextProvider];
  iconManager = [homeScreenContextProvider iconManager];
  if ([iconManager isShowingLeadingCustomView] & 1) != 0 || (objc_msgSend(homeScreenContextProvider, "areAnyIconViewContextMenusShowing") & 1) != 0 || (-[SBFloatingDockController remoteContentManager](self, "remoteContentManager"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isRemoteContentPresenting"), v11, (v12))
  {
    v8 = 0;
  }

  else
  {
    viewIfLoaded = [(SBFloatingDockRootViewController *)self->_viewController viewIfLoaded];
    if (viewIfLoaded)
    {
      _UISystemGestureLocationForTouchInView();
      v16 = v15;
      screen = [viewIfLoaded hitTest:0 withEvent:?];
      v8 = 0;
      if (!screen)
      {
        window = [viewIfLoaded window];
        windowScene = [window windowScene];
        screen = [windowScene screen];

        if (!screen || (-[SBFloatingDockRootViewController floatingDockScreenFrame](self->_viewController, "floatingDockScreenFrame"), v21 = v20, v23 = v22, v25 = v24, v27 = v26, [screen fixedCoordinateSpace], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(viewIfLoaded, "convertRect:fromCoordinateSpace:", v28, v21, v23, v25, v27), v30 = v29, v32 = v31, v34 = v33, v36 = v35, v28, v37.origin.x = v30, v37.origin.y = v32, v37.size.width = v34, v37.size.height = v36, v16 <= CGRectGetMidY(v37)))
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_presentFloatingDockIndirectPanGestureRecognizer == begin)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v6 = +[SBCoverSheetPresentationManager sharedInstance];
    isVisible = [v6 isVisible];

    controlCenterController = [WeakRetained controlCenterController];
    isVisible2 = [controlCenterController isVisible];

    assistantController = [WeakRetained assistantController];
    isVisible3 = [assistantController isVisible];

    v12 = +[SBSetupManager sharedInstance];
    isInSetupMode = [v12 isInSetupMode];

    switcherController = [WeakRetained switcherController];
    isFloatingSwitcherVisible = [switcherController isFloatingSwitcherVisible];

    if (([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture]& 1) != 0)
    {
      if (![(SBFloatingDockRootViewController *)self->_viewController isFloatingDockFullyPresented])
      {
        if (((isVisible | isVisible2 | isVisible3 | isInSetupMode | isFloatingSwitcherVisible) & 1) == 0)
        {
          v3 = 1;
          goto LABEL_11;
        }

        v16 = SBLogDock();
        v20 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
        if (isInSetupMode)
        {
          if (!v20)
          {
            goto LABEL_10;
          }

          v23 = 0;
          v17 = "Preventing the indirect present dock gesture because the dock is not allowed in Buddy.";
          v18 = &v23;
        }

        else if (isFloatingSwitcherVisible)
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

- (void)_gestureRecognizerFailed:(id)failed
{
  if (self->_dismissFloatingDockSystemGestureRecognizer == failed)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activeAssertion);
    gesturePossible = [WeakRetained gesturePossible];

    if (gesturePossible)
    {
      [(SBFloatingDockController *)self dismissFloatingDockIfPresentedAnimated:1 completionHandler:0];
      analyticsClient = self->_analyticsClient;

      [(SBFAnalyticsClient *)analyticsClient emitEvent:27];
    }
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  contextCopy = context;
  isFloatingDockPresented = [(SBFloatingDockRootViewController *)self->_viewController isFloatingDockPresented];
  fromLayoutState = [contextCopy fromLayoutState];
  unlockedEnvironmentMode = [fromLayoutState unlockedEnvironmentMode];
  toLayoutState = [contextCopy toLayoutState];
  unlockedEnvironmentMode2 = [toLayoutState unlockedEnvironmentMode];
  homeScreenContextProvider = [(SBFloatingDockController *)self homeScreenContextProvider];
  presentedFolderController = [(SBFloatingDockController *)self presentedFolderController];
  folder = [presentedFolderController folder];
  if (!folder)
  {
    v10 = toLayoutState;
    windowScene = [(SBFloatingDockController *)self windowScene];
    if ([windowScene isMainDisplayWindowScene])
    {
      iconManager = [homeScreenContextProvider iconManager];
      openedFolderController = [iconManager openedFolderController];
      folder = [openedFolderController folder];
    }

    else
    {
      folder = 0;
    }

    toLayoutState = v10;
  }

  v39 = [toLayoutState isEqual:fromLayoutState withRole:1];
  v14 = [toLayoutState isEqual:fromLayoutState withRole:3];
  v42 = fromLayoutState;
  bundleIDShowingAppExpose = [fromLayoutState bundleIDShowingAppExpose];
  v43 = toLayoutState;
  bundleIDShowingAppExpose2 = [toLayoutState bundleIDShowingAppExpose];
  v17 = BSEqualStrings();

  v18 = 0;
  v19 = unlockedEnvironmentMode;
  v20 = unlockedEnvironmentMode == 3 && unlockedEnvironmentMode2 == 3;
  if (unlockedEnvironmentMode == 3 && unlockedEnvironmentMode2 == 3 && (v17 & 1) == 0)
  {
    bundleIDShowingAppExpose3 = [v43 bundleIDShowingAppExpose];
    v18 = bundleIDShowingAppExpose3 != 0;
  }

  applicationTransitionContext = [contextCopy applicationTransitionContext];
  activeGestureFloatingDockBehaviorAssertion = self->_activeGestureFloatingDockBehaviorAssertion;
  if (activeGestureFloatingDockBehaviorAssertion)
  {
    if (self->_wasFloatingDockPresentedByPointer)
    {
      v24 = (unlockedEnvironmentMode2 - 1) < 2;
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
    [(SBFloatingDockController *)self dismissPresentedFolderAnimated:1 withTransitionContext:applicationTransitionContext completion:0];
    [(SBFloatingDockController *)self dismissPresentedLibraryAnimated:1 withTransitionContext:applicationTransitionContext completion:0];
    v25 = 0;
    goto LABEL_24;
  }

LABEL_19:
  if (v18 || ((v39 | !v20 | activeGestureFloatingDockBehaviorAssertion | v24) & 1) == 0)
  {
    goto LABEL_20;
  }

  isFloatingDockPresented2 = [(SBFloatingDockRootViewController *)self->_viewController isFloatingDockPresented];
  v25 = unlockedEnvironmentMode2 == 1 || isFloatingDockPresented2;
LABEL_24:
  if (((v19 == 2) & v17) != 0)
  {
    if (unlockedEnvironmentMode2 != 3)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  v28 = v19 == 2 && unlockedEnvironmentMode2 == 3;
  if (unlockedEnvironmentMode2 == 2 || v28)
  {
LABEL_35:
    [(SBFloatingDockController *)self dismissPresentedLibraryAnimated:1 withTransitionContext:applicationTransitionContext completion:0];
  }

  if (v19 == 1 && unlockedEnvironmentMode2 == 3)
  {
    windowScene2 = [(SBFloatingDockController *)self windowScene];
    isMainDisplayWindowScene = [windowScene2 isMainDisplayWindowScene];
    if (folder && [(SBFloatingDockController *)self isPresentingFolder])
    {
      if (isMainDisplayWindowScene)
      {
        icon = [folder icon];
        presentedFolderController2 = [(SBFloatingDockController *)self presentedFolderController];
        currentPageIndex = [presentedFolderController2 currentPageIndex];

        [(SBFloatingDockController *)self dismissPresentedFolderAnimated:0 completion:0];
        _rootFolderController = [homeScreenContextProvider _rootFolderController];
        [_rootFolderController pushFolderIcon:icon location:*MEMORY[0x277D666C8] animated:0 completion:0];

        _rootFolderController2 = [homeScreenContextProvider _rootFolderController];
        v36 = [_rootFolderController2 folderControllerForFolder:folder];
        [v36 setCurrentPageIndex:currentPageIndex animated:0];
      }

      else
      {
        [(SBFloatingDockController *)self dismissPresentedFolderAnimated:0 completion:0];
      }
    }

    else
    {
      floatingDockViewController = [(SBFloatingDockController *)self floatingDockViewController];
      isPresentingLibrary = [floatingDockViewController isPresentingLibrary];

      if (!(isMainDisplayWindowScene & 1 | ((isPresentingLibrary & 1) == 0)))
      {
        [(SBFloatingDockController *)self dismissPresentedLibraryAnimated:1 withTransitionContext:applicationTransitionContext completion:0];
      }
    }
  }

LABEL_46:
  [(SBFloatingDockController *)self _updateFocusAssertion];
  [(SBFloatingDockRootViewController *)self->_viewController prepareForTransitionToEnvironmentMode:unlockedEnvironmentMode2 fromDockVisible:isFloatingDockPresented toDockVisible:v25];
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  contextCopy = context;
  toLayoutState = [contextCopy toLayoutState];
  unlockedEnvironmentMode = [toLayoutState unlockedEnvironmentMode];
  if (unlockedEnvironmentMode == 1)
  {
    homeScreenContextProvider = [(SBFloatingDockController *)self homeScreenContextProvider];
    _openFolderController = [homeScreenContextProvider _openFolderController];
    v9 = _openFolderController;
    if (_openFolderController && [_openFolderController isOpen] && !-[SBFloatingDockController isPresentingFolder](self, "isPresentingFolder"))
    {
      folder = [v9 folder];
      icon = [folder icon];
      originatingIconLocation = [v9 originatingIconLocation];
      iconModel = [homeScreenContextProvider iconModel];
      rootFolder = [iconModel rootFolder];
      dock = [rootFolder dock];
      v14 = [dock directlyContainsIcon:icon];

      if (v14)
      {
        _rootFolderController = [homeScreenContextProvider _rootFolderController];
        v16 = [_rootFolderController folderControllerForFolder:folder];

        currentPageIndex = [v16 currentPageIndex];
        _rootFolderController2 = [homeScreenContextProvider _rootFolderController];
        [_rootFolderController2 popFolderAnimated:0 completion:0];

        [(SBFloatingDockController *)self presentFolderForIcon:icon location:originatingIconLocation animated:0 completion:0];
        if (v16)
        {
          presentedFolderController = [(SBFloatingDockController *)self presentedFolderController];
          [presentedFolderController setCurrentPageIndex:currentPageIndex animated:0];
        }
      }
    }
  }

  if (([contextCopy isInterrupted] & 1) == 0)
  {
    [(SBFloatingDockRootViewController *)self->_viewController cleanupAfterTransitionToEnvironmentMode:unlockedEnvironmentMode];
  }
}

- (void)rootFolderPageStateProvider:(id)provider willBeginTransitionToState:(int64_t)state animated:(BOOL)animated interactive:(BOOL)interactive
{
  pageState = [provider pageState];
  v9 = SBRootFolderPageStateIsOnLeadingCustomPage();
  v10 = SBRootFolderPageStateIsOnLeadingCustomPage();
  if (v9 == v10)
  {
    if (state != 1 && pageState != 1)
    {
      return;
    }

    v13 = [SBFloatingDockBehaviorAssertion alloc];
    v14 = 1.0;
    if (state == 1)
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

- (void)rootFolderPageStateProvider:(id)provider didContinueTransitionToState:(int64_t)state progress:(double)progress
{
  [provider pageState];
  v7 = SBRootFolderPageStateIsOnLeadingCustomPage();
  v8 = SBRootFolderPageStateIsOnLeadingCustomPage();
  if (v7 != v8)
  {
    progressCopy = 1.0 - progress;
    if (v8)
    {
      progressCopy = progress;
    }

    v10 = 1.0 - progressCopy;
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

- (void)rootFolderPageStateProvider:(id)provider didEndTransitionFromState:(int64_t)state toState:(int64_t)toState successfully:(BOOL)successfully
{
  providerCopy = provider;
  v10 = SBRootFolderPageStateIsOnLeadingCustomPage();
  if (v10 != SBRootFolderPageStateIsOnLeadingCustomPage())
  {
    *&self->_homeScreenTransitioningToTodayView = 0;
    iconPullSearchGestureShowingFloatingDockBehaviorAssertion = [(SBFloatingDockController *)self homeScreenContextProvider];
    iconManager = [iconPullSearchGestureShowingFloatingDockBehaviorAssertion iconManager];
    isShowingOrTransitioningToLeadingCustomView = [iconManager isShowingOrTransitioningToLeadingCustomView];
    todayViewFloatingDockBehaviorAssertion = self->_todayViewFloatingDockBehaviorAssertion;
    if (isShowingOrTransitioningToLeadingCustomView)
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

  successfullyCopy = state != 1;
  v16 = !successfully;
  if (state != 1)
  {
    v16 = 0;
  }

  if (toState == 1)
  {
    successfullyCopy = successfully;
  }

  if (!successfullyCopy && !v16)
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

  view = [(SBFloatingDockRootViewController *)self->_viewController view];
  window = [view window];
  [window setWindowLevel:v15];

  [(SBFloatingDockRootViewController *)self->_viewController updateDisplayLayoutElementWindowLevel:v15];
}

- (void)assistantWillAppear:(id)appear
{
  if (SBWorkspaceHasApplicationSceneInLockedOrUnlockedEnvironmentLayoutState() && !self->_assistantFloatingDockBehaviorAssertion)
  {
    v4 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:self visibleProgress:1 animated:0 gesturePossible:6 atLevel:@"assistant" reason:0 withCompletion:0.0];
    assistantFloatingDockBehaviorAssertion = self->_assistantFloatingDockBehaviorAssertion;
    self->_assistantFloatingDockBehaviorAssertion = v4;
  }
}

- (void)assistantDidDisappear:(id)disappear
{
  [(SBFloatingDockBehaviorAssertion *)self->_assistantFloatingDockBehaviorAssertion invalidate];
  assistantFloatingDockBehaviorAssertion = self->_assistantFloatingDockBehaviorAssertion;
  self->_assistantFloatingDockBehaviorAssertion = 0;
}

- (id)floatingDockListModel:(id)model
{
  homeScreenContextProvider = [(SBFloatingDockController *)self homeScreenContextProvider];
  iconManager = [homeScreenContextProvider iconManager];
  rootFolder = [iconManager rootFolder];
  dockUtilities = [rootFolder dockUtilities];

  return dockUtilities;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settingsCopy = settings;
  keyCopy = key;
  v8 = keyCopy;
  if (self->_settings == settingsCopy && self->_presentFloatingDockIndirectPanGestureRecognizer)
  {
    if ([keyCopy isEqualToString:@"trackpadHysteresis"])
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
  succinctDescriptionBuilder = [(SBFloatingDockController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFloatingDockController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBFloatingDockController *)self succinctDescriptionBuilder];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__SBFloatingDockController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_2783A8ED8;
  v6 = succinctDescriptionBuilder;
  v12 = v6;
  selfCopy = self;
  v14 = prefixCopy;
  v7 = prefixCopy;
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