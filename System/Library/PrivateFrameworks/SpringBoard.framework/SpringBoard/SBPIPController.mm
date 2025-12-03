@interface SBPIPController
- (BOOL)_acquirePIPStashAssertionIfNecessaryForTransitionContext:(id)context onWindowScene:(id)scene;
- (BOOL)_allWindowScenesLocked;
- (BOOL)_connectedWindowScenesIncludesExternalDisplay;
- (BOOL)_hasStashAssertionForWindowScene:(id)scene;
- (BOOL)_isContentViewAlignedLeftWithPosition:(unint64_t)position orientation:(int64_t)orientation;
- (BOOL)_isContentViewAlignedTopWithPosition:(unint64_t)position orientation:(int64_t)orientation;
- (BOOL)_isPointInsidePictureInPictureContent:(CGPoint)content onWindowScene:(id)scene;
- (BOOL)_shouldHideWindowScene:(id)scene;
- (BOOL)_shouldStashForTransitionContext:(id)context onWindowScene:(id)scene;
- (BOOL)hasCameraInterruptionForBundleIdentifier:(id)identifier;
- (BOOL)isPictureInPictureWindowVisibleOnWindowScene:(id)scene;
- (BOOL)isPresentingPictureInPictureRequiringMedusaKeyboard;
- (CGRect)homeScreenInitialPIPFrameForWindowScene:(id)scene withContentViewSize:(CGSize)size position:(unint64_t)position padding:(double)padding fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation shouldUpdate:(BOOL)update gestureInitiated:(BOOL)self0;
- (NSArray)hostedAppSceneHandles;
- (SBPIPController)initWithIdleTimerCoordinator:(id)coordinator windowLevel:(double)level interactionSettings:(id)settings adapter:(id)adapter;
- (SBWindowSceneManager)windowSceneManager;
- (UIEdgeInsets)_edgeInsetsForSource:(int64_t)source onWindowScene:(id)scene exists:(BOOL *)exists;
- (UIEdgeInsets)_keyboardInsetsForWindowScene:(id)scene;
- (UIEdgeInsets)_pictureInPictureWindowMarginsOnWindowScene:(id)scene;
- (UIEdgeInsets)_updatePictureInPictureOverlayInsetsOnWindowScene:(id)scene withCurrentLayoutState:(BOOL)state toHomeScreen:(BOOL)screen toInterfaceOrientation:(int64_t)orientation shouldUpdate:(BOOL)update;
- (double)windowLevelForWindowScene:(id)scene;
- (id)_acquireInterruptionAssertionForReason:(int64_t)reason identifier:(id)identifier cameraSensorBundleIdentifier:(id)bundleIdentifier;
- (id)_acquireStashAssertionForWindowScene:(id)scene withReason:(int64_t)reason identifier:(id)identifier customAllowedEnvironmentModes:(id)modes;
- (id)_allContainerViewControllers;
- (id)_contextForContainerViewController:(id)controller creatingWithWindowSceneIfNeeded:(id)needed;
- (id)_createNewWindowForContainerViewController:(id)controller onWindowScene:(id)scene;
- (id)_leadingWindowForWindowScene:(id)scene;
- (id)_overrideInsetsOnWindowScene:(id)scene forReason:(id)reason identifier:(id)identifier;
- (id)_windowScenesDisplayingPIPContent;
- (id)anyContentViewPresentedOnWindowScene:(id)scene;
- (id)containerViewControllerForContentViewController:(id)controller;
- (id)containerViewControllersOnWindowScene:(id)scene;
- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior;
- (id)createAndRegisterPictureInPictureMorphAnimatorControllerWithTargetProcessIdentifier:(int)identifier uuid:(id)uuid scenePersistenceIdentifier:(id)persistenceIdentifier appLayout:(id)layout layoutRole:(int64_t)role appLayoutBoundingBox:(CGRect)box gestureInitiated:(BOOL)initiated direction:(int64_t)self0;
- (id)dataSourceForMorphAnimatorController:(id)controller;
- (id)pictureInPictureMorphAnimatorControllerForProcessIdentifier:(int)identifier scenePersistenceIdentifier:(id)persistenceIdentifier;
- (void)_addPictureInPictureMorphAnimatorController:(id)controller;
- (void)_cancelInterruptionDebouncingTimer;
- (void)_edgeInsetsDidChangeOnWindowScene:(id)scene;
- (void)_enumerateContextsForWindowScene:(id)scene usingBlock:(id)block;
- (void)_invalidateInterruptionAssertion:(id)assertion;
- (void)_keyboardWillChangeFrame:(id)frame;
- (void)_keyboardWillRotate:(id)rotate;
- (void)_keyboardWillShowOrHide:(id)hide;
- (void)_lockStateDidChange:(id)change;
- (void)_managePictureInPictureWindowVisibilityForWindowScene:(id)scene animated:(BOOL)animated;
- (void)_minimumStashedPaddingDidChangeOnWindowScene:(id)scene;
- (void)_moveContext:(id)context toWindowScene:(id)scene;
- (void)_performWithoutAnimation:(id)animation;
- (void)_refreshLockStateProviderInterruptionAssertions;
- (void)_registerForLockStateNotificationsForWindowScene:(id)scene;
- (void)_relinquishPIPStashAssertionIfNecessaryForTransitionContext:(id)context;
- (void)_removePictureInPictureMorphAnimatorController:(id)controller;
- (void)_restorePictureInPictureForTestForApplicationWithBundleIdentifier:(id)identifier;
- (void)_setAdapter:(id)adapter;
- (void)_setAlpha:(double)alpha forWindowsOnWindowScene:(id)scene;
- (void)_setContainersStashed:(BOOL)stashed forWindowScene:(id)scene;
- (void)_setHidden:(BOOL)hidden forWindowsOnWindowScene:(id)scene;
- (void)_setWindowsLevel:(double)level forWindowsOnWindowScene:(id)scene;
- (void)_startPictureInPictureTestActionForApplicationWithBundleIdentifier:(id)identifier;
- (void)_suspendPIPForInterruptionAssertion:(id)assertion;
- (void)_unregisterForLockStateNotificationsForWindowScene:(id)scene;
- (void)_updateContainerViewControllersContentPaddingOnWindowScene:(id)scene;
- (void)_updateHyperregionComposers;
- (void)_updateZStackIfNeededForDisappearingContainerViewController:(id)controller;
- (void)_visualizeKeyboardFrameIfNeeded;
- (void)_windowSceneDidConnect:(id)connect;
- (void)_windowSceneDidDisconnect:(id)disconnect;
- (void)activityDidChangeForSensorActivityDataProvider:(id)provider;
- (void)addContainerViewController:(id)controller dataSource:(id)source;
- (void)alertItemsController:(id)controller didActivateAlertItem:(id)item;
- (void)alertItemsController:(id)controller didDeactivateAlertItem:(id)item forReason:(int)reason;
- (void)assistantDidDisappear:(id)disappear windowScene:(id)scene;
- (void)assistantWillAppear:(id)appear windowScene:(id)scene;
- (void)bringTetheredContentToFrontOnWindowScene:(id)scene;
- (void)cancelPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:(int)background scenePersistenceIdentifier:(id)identifier;
- (void)containerViewController:(id)controller didFinishStartAnimationWithInitialInterfaceOrientation:(int64_t)orientation;
- (void)containerViewController:(id)controller userDidUpdateStashState:(BOOL)state;
- (void)containerViewControllerDidBeginInteraction:(id)interaction;
- (void)containerViewControllerDidEndInteraction:(id)interaction targetWindowScene:(id)scene;
- (void)containerViewControllerUserMayUpdateStashState:(id)state;
- (void)dealloc;
- (void)displayLayoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context;
- (void)endPIPInterruptionForAssertion:(id)assertion;
- (void)handleDestructionRequestForSceneHandles:(id)handles;
- (void)hideContainersExcludingContainerForContentViewControllerAndTetheredOnes:(id)ones animated:(BOOL)animated;
- (void)invalidateIdleTimerBehaviors;
- (void)keyboardFocusController:(id)controller externalSceneDidAcquireFocus:(id)focus;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)lockStateProvider:(id)provider didUpdateIsUILocked:(BOOL)locked;
- (void)movePIPContentToWindowScene:(id)scene;
- (void)prepareContainerViewControllerForHidingContentViewController:(id)controller;
- (void)removeContainerViewController:(id)controller;
- (void)restoreContentViewController:(id)controller appSceneEntity:(id)entity morphAnimatorConfigurationBlock:(id)block completion:(id)completion;
- (void)setEnhancedWindowingModeEnabled:(BOOL)enabled windowScene:(id)scene;
- (void)setPictureInPictureWindowsHidden:(BOOL)hidden forReason:(id)reason;
- (void)showAllContentOnWindowScene:(id)scene animated:(BOOL)animated;
- (void)startPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:(int)background scenePersistenceIdentifier:(id)identifier animated:(BOOL)animated completionHandler:(id)handler;
- (void)updatePictureInPictureWindowLevelForWindowScene:(id)scene;
- (void)updateZStackParticipantPreferencesIfNeeded:(id)needed windowScene:(id)scene;
@end

@implementation SBPIPController

- (NSArray)hostedAppSceneHandles
{
  _allContainerViewControllers = [(SBPIPController *)self _allContainerViewControllers];
  v3 = [_allContainerViewControllers bs_compactMap:&__block_literal_global_222];

  return v3;
}

- (id)_allContainerViewControllers
{
  keyEnumerator = [(NSMapTable *)self->_containerViewControllerToContextMap keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  return allObjects;
}

- (void)_visualizeKeyboardFrameIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_windowSceneManager);
  embeddedDisplayWindowScene = [WeakRetained embeddedDisplayWindowScene];

  if (-[SBPIPController isPictureInPictureWindowVisibleOnWindowScene:](self, "isPictureInPictureWindowVisibleOnWindowScene:", embeddedDisplayWindowScene) && (+[SBDefaults localDefaults](SBDefaults, "localDefaults"), v4 = objc_claimAutoreleasedReturnValue(), [v4 pipDefaults], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "visualizeKeyboardFrame"), v5, v4, v6))
  {
    [MEMORY[0x277D75830] visiblePeripheralFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(SBPIPController *)self _leadingWindowForWindowScene:embeddedDisplayWindowScene];
    screen = [v15 screen];
    coordinateSpace = [screen coordinateSpace];

    coordinateSpace2 = [v15 coordinateSpace];
    [coordinateSpace convertRect:coordinateSpace2 toCoordinateSpace:{v8, v10, v12, v14}];
    v23 = v19;
    v24 = v20;
    v25 = v21;
    v26 = v22;
    keyboardInsetsVisualizerView = self->_keyboardInsetsVisualizerView;
    if (v15 && !keyboardInsetsVisualizerView)
    {
      v28 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v19, v20, v21, v22}];
      v29 = self->_keyboardInsetsVisualizerView;
      self->_keyboardInsetsVisualizerView = v28;

      [(UIView *)self->_keyboardInsetsVisualizerView setUserInteractionEnabled:0];
      layer = [(UIView *)self->_keyboardInsetsVisualizerView layer];
      systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
      [layer setBorderColor:{objc_msgSend(systemYellowColor, "CGColor")}];

      layer2 = [(UIView *)self->_keyboardInsetsVisualizerView layer];
      [layer2 setBorderWidth:5.0];

      [v15 addSubview:self->_keyboardInsetsVisualizerView];
      keyboardInsetsVisualizerView = self->_keyboardInsetsVisualizerView;
    }

    [(UIView *)keyboardInsetsVisualizerView setFrame:v23, v24, v25, v26];
    [v15 bringSubviewToFront:self->_keyboardInsetsVisualizerView];
  }

  else
  {
    [(UIView *)self->_keyboardInsetsVisualizerView removeFromSuperview];
    v15 = self->_keyboardInsetsVisualizerView;
    self->_keyboardInsetsVisualizerView = 0;
  }
}

- (id)_windowScenesDisplayingPIPContent
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  objectEnumerator = [(NSMapTable *)self->_containerViewControllerToContextMap objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        windowScene = [*(*(&v11 + 1) + 8 * i) windowScene];
        [v3 addObject:windowScene];
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)invalidateIdleTimerBehaviors
{
  _allContainerViewControllers = [(SBPIPController *)self _allContainerViewControllers];
  v4 = [_allContainerViewControllers bs_containsObjectPassingTest:&__block_literal_global_281_0];

  if (self->_hasIdleTimerBehaviors != v4)
  {
    self->_hasIdleTimerBehaviors = v4;
    idleTimerCoordinatorHelper = self->_idleTimerCoordinatorHelper;
    if (v4)
    {
      +[SBIdleTimerBehavior disabledBehavior];
    }

    else
    {
      +[SBIdleTimerBehavior autoLockBehavior];
    }
    v7 = ;
    v6 = [SBIdleTimerCoordinatorHelper proposeIdleTimerBehavior:"proposeIdleTimerBehavior:fromProvider:reason:" fromProvider:? reason:?];
  }
}

- (void)_cancelInterruptionDebouncingTimer
{
  interruptionEndDebouncingTimer = self->_interruptionEndDebouncingTimer;
  if (interruptionEndDebouncingTimer)
  {
    debouncedAssertion = [(SBPIPInterruptionDebouncingTimer *)interruptionEndDebouncingTimer debouncedAssertion];
    [(SBPIPController *)self endPIPInterruptionForAssertion:debouncedAssertion];

    [(BSAbsoluteMachTimer *)self->_interruptionEndDebouncingTimer invalidate];
    v5 = self->_interruptionEndDebouncingTimer;
    self->_interruptionEndDebouncingTimer = 0;

    v6 = SBLogPIP();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Assertions] PIP interruption debounce timer was canceled. Stop interrupting PIP for previously expired assertion.", v7, 2u);
    }
  }
}

- (BOOL)isPresentingPictureInPictureRequiringMedusaKeyboard
{
  _allContainerViewControllers = [(SBPIPController *)self _allContainerViewControllers];
  v3 = [_allContainerViewControllers bs_containsObjectPassingTest:&__block_literal_global_225];

  return v3;
}

- (void)_refreshLockStateProviderInterruptionAssertions
{
  _allWindowScenesLocked = [(SBPIPController *)self _allWindowScenesLocked];
  p_lockedInterruptionAssertion = &self->_lockedInterruptionAssertion;
  lockedInterruptionAssertion = self->_lockedInterruptionAssertion;
  if (_allWindowScenesLocked)
  {
    if (lockedInterruptionAssertion)
    {
      return;
    }

    v7 = SBStringForPIPBehaviorOverrideReason(2uLL);
    obj = [(SBPIPController *)self _acquireInterruptionAssertionForReason:2 identifier:v7 cameraSensorBundleIdentifier:0];

    v6 = obj;
    if (obj)
    {
      objc_storeStrong(&self->_lockedInterruptionAssertion, obj);
      [(SBPIPController *)self _suspendPIPForInterruptionAssertion:obj];
      v6 = obj;
    }
  }

  else
  {
    [(BSSimpleAssertion *)lockedInterruptionAssertion invalidate];
    v6 = *p_lockedInterruptionAssertion;
    *p_lockedInterruptionAssertion = 0;
  }
}

- (BOOL)_allWindowScenesLocked
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_connectedWindowScenes;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        uiLockStateProvider = [*(*(&v11 + 1) + 8 * i) uiLockStateProvider];
        isUILocked = [uiLockStateProvider isUILocked];

        if (!isUILocked)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (SBPIPController)initWithIdleTimerCoordinator:(id)coordinator windowLevel:(double)level interactionSettings:(id)settings adapter:(id)adapter
{
  coordinatorCopy = coordinator;
  settingsCopy = settings;
  adapterCopy = adapter;
  v49.receiver = self;
  v49.super_class = SBPIPController;
  v13 = [(SBPIPController *)&v49 init];
  if (v13)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    containerViewControllerToContextMap = v13->_containerViewControllerToContextMap;
    v13->_containerViewControllerToContextMap = strongToStrongObjectsMapTable;

    objc_storeStrong(&v13->_interactionSettings, settings);
    v16 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:0];
    pictureInPictureMorphAnimatorControllers = v13->_pictureInPictureMorphAnimatorControllers;
    v13->_pictureInPictureMorphAnimatorControllers = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pictureInPictureWindowHiddenReasons = v13->_pictureInPictureWindowHiddenReasons;
    v13->_pictureInPictureWindowHiddenReasons = v18;

    v13->_windowLevel = level;
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    windowSceneToWindowMarginsMap = v13->_windowSceneToWindowMarginsMap;
    v13->_windowSceneToWindowMarginsMap = weakToStrongObjectsMapTable;

    [(SBPIPController *)v13 _setAdapter:adapterCopy];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__lockStateDidChange_ name:@"SBAggregateLockStateDidChangeNotification" object:0];
    [defaultCenter addObserver:v13 selector:sel__keyboardWillShowOrHide_ name:*MEMORY[0x277D76C18] object:0];
    [defaultCenter addObserver:v13 selector:sel__keyboardWillShowOrHide_ name:*MEMORY[0x277D76C10] object:0];
    [defaultCenter addObserver:v13 selector:sel__keyboardWillChangeFrame_ name:*MEMORY[0x277D76C08] object:0];
    [defaultCenter addObserver:v13 selector:sel__keyboardWillRotate_ name:*MEMORY[0x277D774C8] object:0];
    v23 = +[SBAlertItemsController sharedInstance];
    [v23 addObserver:v13];

    v24 = +[SBAssistantController sharedInstance];
    [v24 addObserver:v13];

    sensorActivityDataProvider = [SBApp sensorActivityDataProvider];
    [sensorActivityDataProvider addObserver:v13];

    objc_storeWeak(&v13->_idleTimerCoordinator, coordinatorCopy);
    v26 = [[SBIdleTimerCoordinatorHelper alloc] initWithSourceProvider:v13];
    idleTimerCoordinatorHelper = v13->_idleTimerCoordinatorHelper;
    v13->_idleTimerCoordinatorHelper = v26;

    [(SBIdleTimerCoordinatorHelper *)v13->_idleTimerCoordinatorHelper setTargetCoordinator:coordinatorCopy];
    v13->_defaultToStashed = 0;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v30 = +[SBWorkspace mainWorkspace];
      keyboardFocusController = [v30 keyboardFocusController];
      v32 = [keyboardFocusController addKeyboardFocusObserver:v13];
      keyboardFocusObserver = v13->_keyboardFocusObserver;
      v13->_keyboardFocusObserver = v32;
    }

    configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    objc_initWeak(&location, v13);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __88__SBPIPController_initWithIdleTimerCoordinator_windowLevel_interactionSettings_adapter___block_invoke;
    v46[3] = &unk_2783ADD28;
    objc_copyWeak(&v47, &location);
    [configurationForDefaultMainDisplayMonitor setTransitionHandler:v46];
    v35 = [MEMORY[0x277D0AD08] monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
    displayLayoutMonitor = v13->_displayLayoutMonitor;
    v13->_displayLayoutMonitor = v35;

    WeakRetained = objc_loadWeakRetained(&v13->_windowSceneManager);
    embeddedDisplayWindowScene = [WeakRetained embeddedDisplayWindowScene];
    layoutStateTransitionCoordinator = [embeddedDisplayWindowScene layoutStateTransitionCoordinator];
    [layoutStateTransitionCoordinator addObserver:v13];

    v40 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v45, &location);
    v44 = v13;
    v41 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureInvalidatable = v44->_stateCaptureInvalidatable;
    v44->_stateCaptureInvalidatable = v41;

    objc_destroyWeak(&v45);
    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __88__SBPIPController_initWithIdleTimerCoordinator_windowLevel_interactionSettings_adapter___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained displayLayoutMonitor:v11 didUpdateDisplayLayout:v7 withContext:v8];
  }
}

__CFString *__88__SBPIPController_initWithIdleTimerCoordinator_windowLevel_interactionSettings_adapter___block_invoke_2(uint64_t a1)
{
  v23[9] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v22[0] = @"window scenes";
    v19 = [*(a1 + 32) _windowScenesDisplayingPIPContent];
    v3 = [v19 allObjects];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __88__SBPIPController_initWithIdleTimerCoordinator_windowLevel_interactionSettings_adapter___block_invoke_3;
    v20[3] = &unk_2783C30B0;
    v4 = WeakRetained;
    v21 = v4;
    v5 = [v3 bs_map:v20];
    v23[0] = v5;
    v22[1] = @"windowLevel";
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(v4 + 4)];
    v23[1] = v6;
    v22[2] = @"window hidden reasons";
    if ([*(v4 + 10) count])
    {
      v7 = *(v4 + 10);
    }

    else
    {
      v7 = @"none";
    }

    v23[2] = v7;
    v22[3] = @"fullscreen modal inset override assertion";
    v9 = *(v4 + 17);
    if (v9)
    {
      v10 = [*(v4 + 17) debugDescription];
    }

    else
    {
      v10 = @"none";
    }

    v11 = @"no";
    if (*(v4 + 40))
    {
      v11 = @"yes";
    }

    v23[3] = v10;
    v23[4] = v11;
    v22[4] = @"has idle timer behaviors";
    v22[5] = @"morphAnimatorControllers";
    if ([*(v4 + 24) count])
    {
      v12 = *(v4 + 24);
    }

    else
    {
      v12 = @"none";
    }

    v23[5] = v12;
    v22[6] = @"interruption assertions";
    v13 = [*(v4 + 14) count];
    if (v13)
    {
      v14 = [*(v4 + 14) allObjects];
    }

    else
    {
      v14 = @"none";
    }

    v15 = *(v4 + 20);
    if (!v15)
    {
      v15 = @"none";
    }

    v23[6] = v14;
    v23[7] = v15;
    v22[7] = @"interruption debouncing timer";
    v22[8] = @"active pip default stash state ";
    v16 = @"normal";
    if (*(v4 + 168))
    {
      v16 = @"stashed";
    }

    v23[8] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:9];
    v8 = [v17 description];

    if (v13)
    {
    }

    if (v9)
    {
    }
  }

  else
  {
    v8 = &stru_283094718;
  }

  return v8;
}

id __88__SBPIPController_initWithIdleTimerCoordinator_windowLevel_interactionSettings_adapter___block_invoke_3(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = [v3 pictureInPictureManager];
  v4 = [v24 _sourceToEdgeInsets];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [v4 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v4 objectForKey:v11];
        v13 = SBStringFromPictureInPictureInsetsSource([v11 integerValue]);
        [(__CFString *)v5 setObject:v12 forKey:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v8);
  }

  v14 = [v24 _windowLevelOverrideAssertionsForContentType:0];
  v15 = [*(*(a1 + 32) + 104) objectForKey:v3];
  v16 = [*(a1 + 32) _leadingWindowForWindowScene:v3];
  v29[0] = @"window level overrides";
  v17 = @"none";
  if ([(__CFString *)v14 count])
  {
    v18 = v14;
  }

  else
  {
    v18 = @"none";
  }

  v30[0] = v18;
  v29[1] = @"insets for source";
  if ([(__CFString *)v5 count])
  {
    v19 = v5;
  }

  else
  {
    v19 = @"none";
  }

  v30[1] = v19;
  v29[2] = @"stash assertions";
  if ([(__CFString *)v15 count])
  {
    v20 = v15;
  }

  else
  {
    v20 = @"none";
  }

  v30[2] = v20;
  v29[3] = @"window level";
  if (v16)
  {
    v21 = MEMORY[0x277CCABB0];
    [v16 windowLevel];
    v17 = [v21 numberWithDouble:?];
  }

  v30[3] = v17;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];
  if (v16)
  {
  }

  return v22;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  [(FBSDisplayLayoutMonitor *)self->_displayLayoutMonitor invalidate];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSMapTable *)self->_containerViewControllerToContextMap copy];
  keyEnumerator = [v3 keyEnumerator];

  v5 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        [(SBPIPController *)self removeContainerViewController:*(*(&v13 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v9 = +[SBAlertItemsController sharedInstance];
  [v9 removeObserver:self];

  v10 = +[SBAssistantController sharedInstance];
  [v10 removeObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
  [(BSInvalidatable *)self->_keyboardFocusObserver invalidate];
  [(BSAbsoluteMachTimer *)self->_interruptionEndDebouncingTimer invalidate];
  v12.receiver = self;
  v12.super_class = SBPIPController;
  [(SBPIPController *)&v12 dealloc];
}

- (void)_setAdapter:(id)adapter
{
  adapterCopy = adapter;
  if (self->_adapter != adapterCopy)
  {
    v17 = adapterCopy;
    *(self + 280) = *(self + 280) & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *(self + 280) = *(self + 280) & 0xFD | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 64;
    }

    else
    {
      v7 = 0;
    }

    *(self + 280) = *(self + 280) & 0xBF | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    *(self + 280) = *(self + 280) & 0xFB | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    *(self + 280) = *(self + 280) & 0xF7 | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 16;
    }

    else
    {
      v10 = 0;
    }

    *(self + 280) = *(self + 280) & 0xEF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 32;
    }

    else
    {
      v11 = 0;
    }

    *(self + 280) = *(self + 280) & 0xDF | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 0x80;
    }

    else
    {
      v12 = 0;
    }

    *(self + 280) = v12 & 0x80 | *(self + 280) & 0x7F;
    *(self + 281) = *(self + 281) & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    *(self + 281) = *(self + 281) & 0xFD | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    *(self + 281) = *(self + 281) & 0xFB | v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    *(self + 281) = *(self + 281) & 0xF7 | v15;
    if (objc_opt_respondsToSelector())
    {
      v16 = 16;
    }

    else
    {
      v16 = 0;
    }

    *(self + 281) = *(self + 281) & 0xEF | v16;
    objc_storeStrong(&self->_adapter, adapter);
    [(SBPIPControllerAdapter *)self->_adapter setPIPController:self];
    adapterCopy = v17;
  }
}

- (id)_contextForContainerViewController:(id)controller creatingWithWindowSceneIfNeeded:(id)needed
{
  controllerCopy = controller;
  neededCopy = needed;
  v9 = [(NSMapTable *)self->_containerViewControllerToContextMap objectForKey:controllerCopy];
  if (!v9)
  {
    if (neededCopy)
    {
      v9 = [[SBPIPContentContext alloc] initWithWindowScene:neededCopy containerViewController:controllerCopy];
      [(NSMapTable *)self->_containerViewControllerToContextMap setObject:v9 forKey:controllerCopy];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBPIPController.m" lineNumber:344 description:@"Attempting to look up an unknown content context"];

      v9 = 0;
    }
  }

  return v9;
}

- (void)_enumerateContextsForWindowScene:(id)scene usingBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  blockCopy = block;
  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  objectEnumerator = [(NSMapTable *)self->_containerViewControllerToContextMap objectEnumerator];
  v9 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(objectEnumerator);
      }

      v13 = *(*(&v15 + 1) + 8 * v12);
      windowScene = [v13 windowScene];

      if (windowScene == sceneCopy)
      {
        blockCopy[2](blockCopy, v13, &v19);
        if (v19)
        {
          break;
        }
      }

      if (v10 == ++v12)
      {
        v10 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (BOOL)_connectedWindowScenesIncludesExternalDisplay
{
  allObjects = [(NSHashTable *)self->_connectedWindowScenes allObjects];
  v3 = [allObjects bs_containsObjectPassingTest:&__block_literal_global_418];

  return v3;
}

- (void)_registerForLockStateNotificationsForWindowScene:(id)scene
{
  uiLockStateProvider = [scene uiLockStateProvider];
  lockStateProviders = self->_lockStateProviders;
  v8 = uiLockStateProvider;
  if (!lockStateProviders)
  {
    v6 = objc_opt_new();
    v7 = self->_lockStateProviders;
    self->_lockStateProviders = v6;

    uiLockStateProvider = v8;
    lockStateProviders = self->_lockStateProviders;
  }

  if (![(NSHashTable *)lockStateProviders containsObject:uiLockStateProvider])
  {
    [(NSHashTable *)self->_lockStateProviders addObject:v8];
    [v8 addLockStateObserver:self];
  }
}

- (void)_unregisterForLockStateNotificationsForWindowScene:(id)scene
{
  v19 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  uiLockStateProvider = [sceneCopy uiLockStateProvider];
  if ([(NSHashTable *)self->_lockStateProviders containsObject:uiLockStateProvider])
  {
    if ([(NSHashTable *)self->_connectedWindowScenes containsObject:sceneCopy])
    {
      v6 = SBLogPIP();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Assertions] Unregistering from the window scene lock state provider notifications but the window scene is still connected.", buf, 2u);
      }
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_connectedWindowScenes;
    v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          uiLockStateProvider2 = [*(*(&v13 + 1) + 8 * v11) uiLockStateProvider];

          if (uiLockStateProvider2 == uiLockStateProvider)
          {

            goto LABEL_16;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    [uiLockStateProvider removeLockStateObserver:self];
    [(NSHashTable *)self->_lockStateProviders removeObject:uiLockStateProvider];
  }

LABEL_16:
}

- (void)_windowSceneDidConnect:(id)connect
{
  connectCopy = connect;
  if (![(NSHashTable *)self->_connectedWindowScenes containsObject:?])
  {
    connectedWindowScenes = self->_connectedWindowScenes;
    if (!connectedWindowScenes)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v6 = self->_connectedWindowScenes;
      self->_connectedWindowScenes = weakObjectsHashTable;

      connectedWindowScenes = self->_connectedWindowScenes;
    }

    [(NSHashTable *)connectedWindowScenes addObject:connectCopy];
    [(SBPIPController *)self _updateHyperregionComposers];
    if ([(SBPIPController *)self _connectedWindowScenesIncludesExternalDisplay])
    {
      externalDisplayService = [SBApp externalDisplayService];
      [externalDisplayService addObserver:self];
    }

    [(SBPIPController *)self _registerForLockStateNotificationsForWindowScene:connectCopy];
    [(SBPIPController *)self _refreshLockStateProviderInterruptionAssertions];
  }
}

- (void)_windowSceneDidDisconnect:(id)disconnect
{
  v23 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  v5 = [(NSHashTable *)self->_connectedWindowScenes containsObject:disconnectCopy];
  if (v5)
  {
    [(NSHashTable *)self->_connectedWindowScenes removeObject:disconnectCopy];
    if (![(NSHashTable *)self->_connectedWindowScenes count])
    {
      connectedWindowScenes = self->_connectedWindowScenes;
      self->_connectedWindowScenes = 0;
    }

    [(SBPIPController *)self _unregisterForLockStateNotificationsForWindowScene:disconnectCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowSceneManager);
  activeDisplayWindowScene = [WeakRetained activeDisplayWindowScene];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  objectEnumerator = [(NSMapTable *)self->_containerViewControllerToContextMap objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  v11 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(allObjects);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        windowScene = [v15 windowScene];

        if (windowScene == disconnectCopy)
        {
          [(SBPIPController *)self _moveContext:v15 toWindowScene:activeDisplayWindowScene];
        }
      }

      v12 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  [(NSMapTable *)self->_windowSceneToWindowMarginsMap removeObjectForKey:disconnectCopy];
  [(NSMapTable *)self->_windowSceneToStashAssertionsMap removeObjectForKey:disconnectCopy];
  [(NSMapTable *)self->_windowSceneToInsetAssertionMap removeObjectForKey:disconnectCopy];
  if (v5)
  {
    [(SBPIPController *)self _updateHyperregionComposers];
  }

  if (![(SBPIPController *)self _connectedWindowScenesIncludesExternalDisplay])
  {
    externalDisplayService = [SBApp externalDisplayService];
    [externalDisplayService removeObserver:self];
  }
}

- (void)_moveContext:(id)context toWindowScene:(id)scene
{
  contextCopy = context;
  sceneCopy = scene;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__SBPIPController__moveContext_toWindowScene___block_invoke;
  v10[3] = &unk_2783A8ED8;
  v11 = contextCopy;
  v12 = sceneCopy;
  selfCopy = self;
  v8 = sceneCopy;
  v9 = contextCopy;
  [(SBPIPController *)self _performWithoutAnimation:v10];
}

void __46__SBPIPController__moveContext_toWindowScene___block_invoke(id *a1)
{
  v2 = [a1[4] containerViewController];
  v3 = [v2 interactionController];
  [v3 prepareForTransitionToWindowScene:a1[5]];

  [a1[6] _updateHyperregionComposers];
  v4 = [a1[4] windowScene];
  v10 = [v4 pictureInPictureManager];

  v5 = [a1[5] pictureInPictureManager];
  [v5 setNeedsUpdateZStackParticipantPreferencesWithReason:@"PIP context moved to new scene"];
  [a1[4] setWindowScene:a1[5]];
  v6 = [a1[4] window];
  v7 = v6;
  if (v6)
  {
    ++*(a1[6] + 36);
    [v6 setWindowScene:a1[5]];
    [a1[6] _edgeInsetsDidChangeOnWindowScene:a1[5]];
    [a1[6] updatePictureInPictureWindowLevelForWindowScene:a1[5]];
    [a1[6] _minimumStashedPaddingDidChangeOnWindowScene:a1[5]];
    [a1[6] _managePictureInPictureWindowVisibilityForWindowScene:a1[5] animated:0];
    --*(a1[6] + 36);
    [v5 setNeedsUpdateZStackParticipantPreferencesWithReason:@"PIP context moved to new scene"];
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    [v10 setNeedsUpdateZStackParticipantPreferencesWithReason:@"PIP context moved to new scene"];
  }

  [a1[6] _updateHyperregionComposers];
  [v7 setNeedsLayout];
  [v7 layoutIfNeeded];
  v8 = [a1[4] containerViewController];
  v9 = [v8 interactionController];
  [v9 finishTransitionToWindowScene:a1[5]];

  [a1[6] _refreshLockStateProviderInterruptionAssertions];
}

- (void)_performWithoutAnimation:(id)animation
{
  animationCopy = animation;
  _isInRetargetableAnimationBlock = [MEMORY[0x277D75D18] _isInRetargetableAnimationBlock];
  v5 = MEMORY[0x277D75D18];
  if (_isInRetargetableAnimationBlock)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__SBPIPController__performWithoutAnimation___block_invoke;
    v6[3] = &unk_2783A9348;
    v7 = animationCopy;
    [v5 _performWithoutRetargetingAnimations:v6];
  }

  else
  {
    [MEMORY[0x277D75D18] performWithoutAnimation:animationCopy];
  }
}

- (void)_updateHyperregionComposers
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  objectEnumerator = [(NSMapTable *)self->_containerViewControllerToContextMap objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        containerViewController = [v8 containerViewController];
        interactionController = [containerViewController interactionController];

        if (interactionController)
        {
          containerViewController2 = [v8 containerViewController];
          allObjects = [(NSHashTable *)self->_connectedWindowScenes allObjects];
          [containerViewController2 setConnectedWindowScenes:allObjects];

          [interactionController reloadHyperregionComposerData];
        }
      }

      v5 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)displayLayoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context
{
  v48 = *MEMORY[0x277D85DE8];
  monitorCopy = monitor;
  layoutCopy = layout;
  contextCopy = context;
  v10 = SBLogPIP();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v43 = monitorCopy;
    v44 = 2114;
    v45 = layoutCopy;
    v46 = 2114;
    v47 = contextCopy;
    _os_log_debug_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEBUG, "[DisplayMonitor][Layout] layoutMonitor:%{public}@ didUpdateDisplayLayout:%{public}@ withContext:%{public}@", buf, 0x20u);
  }

  v30 = monitorCopy;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v27 = layoutCopy;
  elements = [layoutCopy elements];
  v12 = [elements countByEnumeratingWithState:&v37 objects:v41 count:16];
  v29 = contextCopy;
  if (!v12)
  {
    v32 = 0;
    goto LABEL_25;
  }

  v13 = v12;
  v32 = 0;
  v14 = 0;
  v15 = *v38;
  v16 = *MEMORY[0x277D0ABA0];
  v31 = *MEMORY[0x277D66F50];
  do
  {
    v17 = 0;
    do
    {
      if (*v38 != v15)
      {
        objc_enumerationMutation(elements);
      }

      v18 = *(*(&v37 + 1) + 8 * v17);
      if ([v18 isSpringBoardElement])
      {
        level = [v18 level];
        identifier = [v18 identifier];
        layoutRole = [v18 layoutRole];
        if (level >= v14)
        {
          v22 = layoutRole;
          if ([v18 layoutRole] == 3)
          {
            if ([identifier isEqualToString:v16] & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", v31))
            {
              goto LABEL_10;
            }

            identifier2 = [v18 identifier];
          }

          else
          {
            if (level <= v14 || (v22 - 1) > 7 || ((0xC3u >> (v22 - 1)) & 1) == 0)
            {
              goto LABEL_10;
            }

            identifier2 = 0;
          }

          v32 = identifier2;
          v14 = level;
        }

LABEL_10:
      }

      ++v17;
    }

    while (v13 != v17);
    v24 = [elements countByEnumeratingWithState:&v37 objects:v41 count:16];
    v13 = v24;
  }

  while (v24);
LABEL_25:

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__SBPIPController_displayLayoutMonitor_didUpdateDisplayLayout_withContext___block_invoke;
  block[3] = &unk_2783A8ED8;
  v34 = v32;
  selfCopy = self;
  v36 = v27;
  v25 = v27;
  v26 = v32;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __75__SBPIPController_displayLayoutMonitor_didUpdateDisplayLayout_withContext___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 296));
    v3 = [*(a1 + 48) displayConfiguration];
    v4 = [v3 identity];
    v5 = [WeakRetained windowSceneForDisplayIdentity:v4];

    v6 = [*(a1 + 40) _overrideInsetsOnWindowScene:v5 forReason:@"FullScreenModalLayoutElement" identifier:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  [*(*(a1 + 40) + 136) invalidate];
  v7 = *(a1 + 40);
  v8 = *(v7 + 136);
  *(v7 + 136) = v6;
}

- (id)_overrideInsetsOnWindowScene:(id)scene forReason:(id)reason identifier:(id)identifier
{
  sceneCopy = scene;
  reasonCopy = reason;
  identifierCopy = identifier;
  windowSceneToInsetAssertionMap = self->_windowSceneToInsetAssertionMap;
  if (!windowSceneToInsetAssertionMap)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v13 = self->_windowSceneToInsetAssertionMap;
    self->_windowSceneToInsetAssertionMap = weakToStrongObjectsMapTable;

    windowSceneToInsetAssertionMap = self->_windowSceneToInsetAssertionMap;
  }

  v14 = [(NSMapTable *)windowSceneToInsetAssertionMap objectForKey:sceneCopy];
  if (!v14)
  {
    objc_initWeak(&location, self);
    v15 = MEMORY[0x277CF0BD0];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __69__SBPIPController__overrideInsetsOnWindowScene_forReason_identifier___block_invoke;
    v19[3] = &unk_2783C3100;
    objc_copyWeak(&v21, &location);
    v16 = sceneCopy;
    v20 = v16;
    v14 = [v15 assertionWithIdentifier:@"SBPIPControllerInsetOverrideAssertion" stateDidChangeHandler:v19];
    [(NSMapTable *)self->_windowSceneToInsetAssertionMap setObject:v14 forKey:v16];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  v17 = [v14 acquireForReason:reasonCopy withContext:identifierCopy];
  [(SBPIPController *)self _updateContainerViewControllersContentPaddingOnWindowScene:sceneCopy];

  return v17;
}

void __69__SBPIPController__overrideInsetsOnWindowScene_forReason_identifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateContainerViewControllersContentPaddingOnWindowScene:*(a1 + 32)];
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  toLayoutState = [contextCopy toLayoutState];
  unlockedEnvironmentMode = [toLayoutState unlockedEnvironmentMode];
  windowScene = [coordinatorCopy windowScene];

  if (![(SBPIPController *)self _acquirePIPStashAssertionIfNecessaryForTransitionContext:contextCopy onWindowScene:windowScene]&& unlockedEnvironmentMode != 3)
  {
    [(SBPIPController *)self _relinquishPIPStashAssertionIfNecessaryForTransitionContext:contextCopy];
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  contextCopy = context;
  toLayoutState = [contextCopy toLayoutState];
  if ([toLayoutState unlockedEnvironmentMode] == 3)
  {
    [(SBPIPController *)self _relinquishPIPStashAssertionIfNecessaryForTransitionContext:contextCopy];
  }
}

- (BOOL)_acquirePIPStashAssertionIfNecessaryForTransitionContext:(id)context onWindowScene:(id)scene
{
  sceneCopy = scene;
  contextCopy = context;
  toLayoutState = [contextCopy toLayoutState];
  fromLayoutState = [contextCopy fromLayoutState];
  unlockedEnvironmentMode = [toLayoutState unlockedEnvironmentMode];
  unlockedEnvironmentMode2 = [fromLayoutState unlockedEnvironmentMode];
  unlockedEnvironmentMode3 = [toLayoutState unlockedEnvironmentMode];
  unlockedEnvironmentMode4 = [fromLayoutState unlockedEnvironmentMode];
  v28 = [toLayoutState unlockedEnvironmentMode] == 2;
  isFloatingSwitcherVisible = [toLayoutState isFloatingSwitcherVisible];
  v34 = [fromLayoutState unlockedEnvironmentMode] == 2;
  isFloatingSwitcherVisible2 = [fromLayoutState isFloatingSwitcherVisible];
  v37 = toLayoutState;
  v29 = [toLayoutState isMeaningfullyDifferentFromLayoutState:fromLayoutState];
  WeakRetained = objc_loadWeakRetained(&self->_transitionStashAssertion);
  shouldUnstashOnTransitionFromHomescreen = [(SBPIPInteractionSettings *)self->_interactionSettings shouldUnstashOnTransitionFromHomescreen];
  shouldUnstashOnTransitionFromSwitcher = [(SBPIPInteractionSettings *)self->_interactionSettings shouldUnstashOnTransitionFromSwitcher];
  v12 = [WeakRetained behaviorOverrideReason] != 7;
  behaviorOverrideReason = [WeakRetained behaviorOverrideReason];
  v36 = WeakRetained;
  v14 = [WeakRetained behaviorOverrideReason] != 8;
  v15 = behaviorOverrideReason != 4;
  LODWORD(behaviorOverrideReason) = [(SBPIPController *)self _shouldStashForTransitionContext:contextCopy onWindowScene:sceneCopy];

  if (behaviorOverrideReason)
  {
    v16 = (v12 || shouldUnstashOnTransitionFromHomescreen) && (v15 || shouldUnstashOnTransitionFromSwitcher) && v14;
    if (!((v34 | isFloatingSwitcherVisible2) & 1 | (unlockedEnvironmentMode2 == 1)) && unlockedEnvironmentMode == 1 && [(SBPIPInteractionSettings *)self->_interactionSettings shouldStashOnTransitionToHomescreen]&& ((v16 | !shouldUnstashOnTransitionFromHomescreen) & 1) != 0)
    {
      v17 = 7;
LABEL_17:
      v19 = sceneCopy;
      v20 = v36;
LABEL_24:
      [v20 invalidate];
      v24 = [MEMORY[0x277CBEB98] setWithArray:&unk_28336EFE8];
      v25 = [(SBPIPController *)self _acquireStashAssertionForWindowScene:v19 withReason:v17 identifier:@"SBPIPSceneController" customAllowedEnvironmentModes:v24];
      objc_storeWeak(&self->_transitionStashAssertion, v25);

      v18 = 1;
      goto LABEL_25;
    }

    v22 = unlockedEnvironmentMode4 == 3 && unlockedEnvironmentMode3 == 3;
    if ((v22 & v29) == 1 && [(SBPIPInteractionSettings *)self->_interactionSettings shouldStashOnAppToAppTransitions])
    {
      v17 = 8;
      goto LABEL_17;
    }

    v20 = v36;
    if ((v34 | isFloatingSwitcherVisible2) & 1 | (((v28 | isFloatingSwitcherVisible) & 1) == 0))
    {
      v18 = 0;
LABEL_20:
      v19 = sceneCopy;
      goto LABEL_25;
    }

    v18 = 0;
    if (![(SBPIPInteractionSettings *)self->_interactionSettings shouldStashOnTransitionToSwitcher])
    {
      goto LABEL_20;
    }

    v23 = v16 | !shouldUnstashOnTransitionFromSwitcher;
    v19 = sceneCopy;
    if (v23)
    {
      v17 = 4;
      goto LABEL_24;
    }
  }

  else
  {
    v18 = 0;
    v19 = sceneCopy;
    v20 = v36;
  }

LABEL_25:

  return v18;
}

- (BOOL)_shouldStashForTransitionContext:(id)context onWindowScene:(id)scene
{
  contextCopy = context;
  sceneCopy = scene;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__SBPIPController__shouldStashForTransitionContext_onWindowScene___block_invoke;
  v10[3] = &unk_2783C3128;
  v8 = contextCopy;
  v11 = v8;
  v12 = &v13;
  [(SBPIPController *)self _enumerateContextsForWindowScene:sceneCopy usingBlock:v10];
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

void __66__SBPIPController__shouldStashForTransitionContext_onWindowScene___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 containerViewController];
  v6 = [v5 handleStashingForTransitionContext:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }
}

- (void)_relinquishPIPStashAssertionIfNecessaryForTransitionContext:(id)context
{
  contextCopy = context;
  toLayoutState = [contextCopy toLayoutState];
  fromLayoutState = [contextCopy fromLayoutState];

  unlockedEnvironmentMode = [toLayoutState unlockedEnvironmentMode];
  unlockedEnvironmentMode2 = [fromLayoutState unlockedEnvironmentMode];
  unlockedEnvironmentMode3 = [toLayoutState unlockedEnvironmentMode];
  isFloatingSwitcherVisible = [toLayoutState isFloatingSwitcherVisible];
  LOBYTE(contextCopy) = [fromLayoutState unlockedEnvironmentMode] == 2;
  v10 = contextCopy | [fromLayoutState isFloatingSwitcherVisible];
  WeakRetained = objc_loadWeakRetained(&self->_transitionStashAssertion);
  v12 = WeakRetained;
  v13 = 0;
  if ((v10 & 1) != 0 && unlockedEnvironmentMode3 != 2 && (isFloatingSwitcherVisible & 1) == 0)
  {
    v13 = [WeakRetained behaviorOverrideReason] == 4 && -[SBPIPInteractionSettings shouldUnstashOnTransitionFromSwitcher](self->_interactionSettings, "shouldUnstashOnTransitionFromSwitcher");
  }

  v14 = 0;
  if (unlockedEnvironmentMode2 == 1 && unlockedEnvironmentMode != 1)
  {
    v14 = [v12 behaviorOverrideReason] == 7 && -[SBPIPInteractionSettings shouldUnstashOnTransitionFromHomescreen](self->_interactionSettings, "shouldUnstashOnTransitionFromHomescreen");
  }

  if (v13 || v14)
  {
    [v12 invalidate];
    objc_storeWeak(&self->_transitionStashAssertion, 0);
  }
}

- (BOOL)_hasStashAssertionForWindowScene:(id)scene
{
  v3 = [(NSMapTable *)self->_windowSceneToStashAssertionsMap objectForKey:scene];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)containerViewController:(id)controller userDidUpdateStashState:(BOOL)state
{
  stateCopy = state;
  controllerCopy = controller;
  v7 = controllerCopy;
  if (stateCopy)
  {
    v8 = [(SBPIPController *)self _contextForContainerViewController:controllerCopy];
    windowScene = [v8 windowScene];

    if (![(SBPIPController *)self _hasStashAssertionForWindowScene:windowScene])
    {
      v10 = SBLogPIP();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[Assertions] No assertions found upon user stashing, starting resources usage reduction timer.", v22, 2u);
      }

      self->_defaultToStashed = 1;
      self->_isReducingResourcesUsage = 1;
      overrideResourcesUsageReductionTimeout = [v7 overrideResourcesUsageReductionTimeout];

      if (overrideResourcesUsageReductionTimeout)
      {
        overrideResourcesUsageReductionTimeout2 = [v7 overrideResourcesUsageReductionTimeout];
        [overrideResourcesUsageReductionTimeout2 doubleValue];
        v14 = v13;
      }

      else
      {
        v14 = 30.0;
      }

      [v7 startResourcesUsageReductionAfterTimeout:v14];
    }
  }

  else
  {
    self->_defaultToStashed = 0;
    self->_isReducingResourcesUsage = 0;
    [controllerCopy stopResourcesUsageReduction];
    WeakRetained = objc_loadWeakRetained(&self->_transitionStashAssertion);
    windowScene = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained invalidate];
      objc_storeWeak(&self->_transitionStashAssertion, 0);
    }
  }

  v16 = +[SBApplicationTestingManager sharedInstance];
  currentTestName = [v16 currentTestName];

  if (currentTestName && (([currentTestName containsString:@"PIP"] & 1) != 0 || objc_msgSend(currentTestName, "containsString:", @"PiP")))
  {
    v18 = @"SBApplicationTestingPIPIsNoLongerStashed";
    if (stateCopy)
    {
      v18 = @"SBApplicationTestingPIPIsStashed";
    }

    v19 = MEMORY[0x277CCAB98];
    v20 = v18;
    defaultCenter = [v19 defaultCenter];
    [defaultCenter postNotificationName:v20 object:0];
  }
}

- (void)containerViewControllerUserMayUpdateStashState:(id)state
{
  if (self->_isReducingResourcesUsage)
  {
    [state stopResourcesUsageReduction];
  }
}

- (void)containerViewController:(id)controller didFinishStartAnimationWithInitialInterfaceOrientation:(int64_t)orientation
{
  v9 = [(SBPIPController *)self _contextForContainerViewController:controller];
  window = [v9 window];
  interfaceOrientation = [window interfaceOrientation];

  if (interfaceOrientation != orientation)
  {
    windowScene = [v9 windowScene];
    -[SBPIPController _updatePictureInPictureOverlayInsetsOnWindowScene:withCurrentLayoutState:toHomeScreen:toInterfaceOrientation:shouldUpdate:](self, "_updatePictureInPictureOverlayInsetsOnWindowScene:withCurrentLayoutState:toHomeScreen:toInterfaceOrientation:shouldUpdate:", windowScene, 1, 0, [SBApp activeInterfaceOrientation], 1);
  }
}

- (void)activityDidChangeForSensorActivityDataProvider:(id)provider
{
  v60 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v5 = SBLogCommon();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v7 = _SBFLoggingMethodProem();
      NSLog(&cfstr_NeedsToBeInvok.isa, v7);
    }
  }

  v8 = [(SBPIPController *)self isPictureInPictureWindowVisibleOnWindowScene:0];
  v9 = @"[SensorActivity][PIPWindowHidden]";
  if (v8)
  {
    v9 = @"[SensorActivity]";
  }

  v43 = v9;
  activeCameraAndMicrophoneActivityAttributions = [providerCopy activeCameraAndMicrophoneActivityAttributions];
  if ([(NSMutableDictionary *)self->_cameraInterruptionAssertions count])
  {
    v11 = MEMORY[0x277CBEB98];
    allKeys = [(NSMutableDictionary *)self->_cameraInterruptionAssertions allKeys];
    v13 = [v11 setWithArray:allKeys];
  }

  else
  {
    v13 = 0;
  }

  v41 = providerCopy;
  activeCameraAndMicrophoneActivityAttributions2 = [providerCopy activeCameraAndMicrophoneActivityAttributions];
  v15 = [activeCameraAndMicrophoneActivityAttributions2 mutableCopy];

  [v15 minusSet:v13];
  v39 = v13;
  v38 = [v13 mutableCopy];
  [v38 minusSet:activeCameraAndMicrophoneActivityAttributions];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v49;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v48 + 1) + 8 * i);
        if (![v20 sensor])
        {
          activeEntityBundleIdentifier = [v20 activeEntityBundleIdentifier];
          v22 = [(NSMutableDictionary *)self->_cameraInterruptionAssertions objectForKeyedSubscript:v20];

          v23 = SBLogPIP();
          v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          if (v22)
          {
            if (v24)
            {
              *buf = 138543874;
              v54 = v43;
              v55 = 2114;
              v56 = v20;
              v57 = 2114;
              v58 = activeEntityBundleIdentifier;
              _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ NOT interrupting PIP for camera activity: attribution[%{public}@] bundleIdentifier[%{public}@], as we were already tracking a sensorAttribution for that app", buf, 0x20u);
            }
          }

          else
          {
            if (v24)
            {
              *buf = 138543874;
              v54 = v43;
              v55 = 2114;
              v56 = v20;
              v57 = 2114;
              v58 = activeEntityBundleIdentifier;
              _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Interrupting PIP for camera activity: attribution[%{public}@] bundleIdentifier[%{public}@]", buf, 0x20u);
            }

            if (!self->_cameraInterruptionAssertions)
            {
              v25 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
              cameraInterruptionAssertions = self->_cameraInterruptionAssertions;
              self->_cameraInterruptionAssertions = v25;
            }

            v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBPIPController-%@", activeEntityBundleIdentifier];
            v23 = [(SBPIPController *)self _acquireInterruptionAssertionForReason:1 identifier:v27 cameraSensorBundleIdentifier:activeEntityBundleIdentifier];

            if (v23)
            {
              [(NSMutableDictionary *)self->_cameraInterruptionAssertions setObject:v23 forKeyedSubscript:v20];
              [(SBPIPController *)self _suspendPIPForInterruptionAssertion:v23];
            }
          }
        }
      }

      v17 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v17);
  }

  v40 = activeCameraAndMicrophoneActivityAttributions;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v28 = v38;
  v29 = [v28 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v45;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v45 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v44 + 1) + 8 * j);
        v34 = [(NSMutableDictionary *)self->_cameraInterruptionAssertions objectForKeyedSubscript:v33];
        v35 = SBLogPIP();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          activeEntityBundleIdentifier2 = [v33 activeEntityBundleIdentifier];
          *buf = 138543874;
          v54 = v43;
          v55 = 2114;
          v56 = v33;
          v57 = 2114;
          v58 = activeEntityBundleIdentifier2;
          _os_log_impl(&dword_21ED4E000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing PIP interruption assertion for camera activity: attribution[%{public}@] bundleIdentifier[%{public}@]", buf, 0x20u);
        }

        [(NSMutableDictionary *)self->_cameraInterruptionAssertions setObject:0 forKeyedSubscript:v33];
        [v34 invalidate];
      }

      v30 = [v28 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v30);
  }

  if (![(NSMutableDictionary *)self->_cameraInterruptionAssertions count])
  {
    v37 = self->_cameraInterruptionAssertions;
    self->_cameraInterruptionAssertions = 0;
  }
}

- (void)addContainerViewController:(id)controller dataSource:(id)source
{
  v45 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  sourceCopy = source;
  contentViewController = [controllerCopy contentViewController];
  v10 = [(SBPIPController *)self containerViewControllerForContentViewController:contentViewController];

  if (v10)
  {
    [(SBPIPController *)a2 addContainerViewController:controllerCopy dataSource:v10];
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowSceneManager);
  scenePersistenceIdentifier = [controllerCopy scenePersistenceIdentifier];
  v13 = [WeakRetained windowSceneForPersistentIdentifier:scenePersistenceIdentifier];

  embeddedDisplayWindowScene = [WeakRetained embeddedDisplayWindowScene];
  activeDisplayWindowScene = [WeakRetained activeDisplayWindowScene];
  if (!v13)
  {
    if ([(SBPIPController *)self contentType]== 1)
    {
      v16 = embeddedDisplayWindowScene;
    }

    else
    {
      v16 = activeDisplayWindowScene;
    }

    v13 = v16;
  }

  pictureInPictureManager = [v13 pictureInPictureManager];
  [pictureInPictureManager _updateFloatingDockInsetsWithoutNotifyingControllers];

  if (![(NSHashTable *)self->_connectedWindowScenes containsObject:v13])
  {
    [(SBPIPController *)self _windowSceneDidConnect:v13];
  }

  if (![(NSHashTable *)self->_connectedWindowScenes containsObject:embeddedDisplayWindowScene])
  {
    [(SBPIPController *)self _windowSceneDidConnect:embeddedDisplayWindowScene];
  }

  if ([(SBPIPController *)self contentType]!= 1 && ![(NSHashTable *)self->_connectedWindowScenes containsObject:activeDisplayWindowScene])
  {
    [(SBPIPController *)self _windowSceneDidConnect:activeDisplayWindowScene];
  }

  v38 = activeDisplayWindowScene;
  v18 = [(SBPIPController *)self _createNewWindowForContainerViewController:controllerCopy onWindowScene:v13];
  v19 = [(SBPIPController *)self _contextForContainerViewController:controllerCopy];
  windowScene = [v19 windowScene];

  if (windowScene != v13)
  {
    [SBPIPController addContainerViewController:a2 dataSource:self];
  }

  [controllerCopy addObserver:self];
  allObjects = [(NSHashTable *)self->_connectedWindowScenes allObjects];
  [controllerCopy setConnectedWindowScenes:allObjects];

  [(SBPIPController *)self _pictureInPictureWindowMarginsOnWindowScene:v13];
  [controllerCopy setContentViewPadding:?];
  [controllerCopy setInteractionControllerEnabled:0 stashed:-[SBPIPController _hasStashAssertionForWindowScene:](self dataSource:{"_hasStashAssertionForWindowScene:", v13), sourceCopy}];
  [controllerCopy setInteractionObserver:self];
  [(SBPIPController *)self _minimumStashedPaddingDidChangeOnWindowScene:v13];
  [controllerCopy setInteractionsEnabled:1];
  [(SBPIPController *)self _updateHyperregionComposers];
  if (*(self + 280))
  {
    [(SBPIPControllerAdapter *)self->_adapter pipController:self didAddContainerViewController:controllerCopy];
  }

  v39 = embeddedDisplayWindowScene;
  processIdentifier = [controllerCopy processIdentifier];
  scenePersistenceIdentifier2 = [controllerCopy scenePersistenceIdentifier];
  v24 = [(SBPIPController *)self pictureInPictureMorphAnimatorControllerForProcessIdentifier:processIdentifier scenePersistenceIdentifier:scenePersistenceIdentifier2];

  if (v24)
  {
    [v24 setPictureInPictureContainerViewController:controllerCopy];
  }

  v25 = v10;
  if ((*(self + 281) & 8) != 0 && [(SBPIPControllerAdapter *)self->_adapter preventStashAssertionsForPIPController:self])
  {
    v37 = sourceCopy;
    v26 = [(NSMapTable *)self->_windowSceneToStashAssertionsMap objectForKey:v13];
    v27 = [v26 copy];

    self->_defaultToStashed = 0;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v28 = v27;
    v29 = [v28 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v41;
      do
      {
        v32 = 0;
        do
        {
          if (*v41 != v31)
          {
            objc_enumerationMutation(v28);
          }

          [*(*(&v40 + 1) + 8 * v32++) invalidate];
        }

        while (v30 != v32);
        v30 = [v28 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v30);
    }

    sourceCopy = v37;
  }

  [(SBPIPController *)self invalidateIdleTimerBehaviors];
  viewIfLoaded = [controllerCopy viewIfLoaded];
  window = [viewIfLoaded window];
  _sbWindowScene = [window _sbWindowScene];
  pictureInPictureManager2 = [_sbWindowScene pictureInPictureManager];

  [pictureInPictureManager2 setNeedsUpdateZStackParticipantPreferencesWithReason:@"added container view controller"];
}

- (id)containerViewControllersOnWindowScene:(id)scene
{
  sceneCopy = scene;
  if (sceneCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__SBPIPController_containerViewControllersOnWindowScene___block_invoke;
    v9[3] = &unk_2783C3150;
    v10 = array;
    v6 = array;
    [(SBPIPController *)self _enumerateContextsForWindowScene:sceneCopy usingBlock:v9];
    _allContainerViewControllers = [v6 copy];
  }

  else
  {
    _allContainerViewControllers = [(SBPIPController *)self _allContainerViewControllers];
  }

  return _allContainerViewControllers;
}

void __57__SBPIPController_containerViewControllersOnWindowScene___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 containerViewController];
  [v2 addObject:v3];
}

- (id)containerViewControllerForContentViewController:(id)controller
{
  v17 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  keyEnumerator = [(NSMapTable *)self->_containerViewControllerToContextMap keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        contentViewController = [v9 contentViewController];

        if (contentViewController == controllerCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)removeContainerViewController:(id)controller
{
  v17 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = SBLogPIP();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    *buf = 138543362;
    v16 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v7 = SBLogCommon();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

    if (v8)
    {
      v9 = _SBFLoggingMethodProem();
      NSLog(&cfstr_NeedsToBeInvok.isa, v9);
    }
  }

  [(SBPIPController *)self _updateZStackIfNeededForDisappearingContainerViewController:controllerCopy];
  v10 = [(NSMapTable *)self->_containerViewControllerToContextMap objectForKey:controllerCopy];
  if (v10)
  {
    if ((*(self + 280) & 2) != 0)
    {
      [(SBPIPControllerAdapter *)self->_adapter pipController:self willRemoveContainerViewController:controllerCopy];
    }

    [controllerCopy removeObserver:self];
    [controllerCopy setInteractionsEnabled:0];
    [controllerCopy invalidate];
    window = [v10 window];
    [window setHidden:1];
    [(NSMapTable *)self->_containerViewControllerToContextMap removeObjectForKey:controllerCopy];
    [(SBPIPController *)self invalidateIdleTimerBehaviors];
    windowScene = [v10 windowScene];
    v13 = [(SBPIPController *)self _leadingWindowForWindowScene:windowScene];
    v14 = v13;
    if (v13 && ([v13 isHidden] & 1) == 0)
    {
      -[SBPIPController _updatePictureInPictureOverlayInsetsOnWindowScene:withCurrentLayoutState:toHomeScreen:toInterfaceOrientation:shouldUpdate:](self, "_updatePictureInPictureOverlayInsetsOnWindowScene:withCurrentLayoutState:toHomeScreen:toInterfaceOrientation:shouldUpdate:", windowScene, 1, 0, [SBApp activeInterfaceOrientation], 1);
    }
  }
}

- (void)_updateZStackIfNeededForDisappearingContainerViewController:(id)controller
{
  controllerCopy = controller;
  viewIfLoaded = [controllerCopy viewIfLoaded];
  window = [viewIfLoaded window];
  _sbWindowScene = [window _sbWindowScene];
  pictureInPictureManager = [_sbWindowScene pictureInPictureManager];

  if ([controllerCopy shouldSuppressAssociatedElementsInSystemAperture])
  {
    bundleIdentifier = [controllerCopy bundleIdentifier];
  }

  else
  {
    bundleIdentifier = 0;
  }

  objc_storeStrong(&self->_bundleIDForAppRecentlyStoppingPIP, bundleIdentifier);
  v10 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__SBPIPController__updateZStackIfNeededForDisappearingContainerViewController___block_invoke;
  block[3] = &unk_2783A8ED8;
  v14 = bundleIdentifier;
  selfCopy = self;
  v16 = pictureInPictureManager;
  v11 = pictureInPictureManager;
  v12 = bundleIdentifier;
  dispatch_after(v10, MEMORY[0x277D85CD0], block);
}

uint64_t __79__SBPIPController__updateZStackIfNeededForDisappearingContainerViewController___block_invoke(uint64_t a1)
{
  if (BSEqualStrings())
  {
    v2 = *(a1 + 40);
    v3 = *(v2 + 184);
    *(v2 + 184) = 0;
  }

  v4 = *(a1 + 48);

  return [v4 setNeedsUpdateZStackParticipantPreferencesWithReason:@"removed container view controller"];
}

- (void)prepareContainerViewControllerForHidingContentViewController:(id)controller
{
  controllerCopy = controller;
  v16 = [(SBPIPController *)self containerViewControllerForContentViewController:controllerCopy];
  bundleIdentifier = [v16 bundleIdentifier];
  _sbWindowScene = [controllerCopy _sbWindowScene];

  layoutStateProvider = [_sbWindowScene layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];

  if (([layoutState floatingConfiguration] - 1) <= 1)
  {
    v9 = [layoutState elementWithRole:3];
    workspaceEntity = [v9 workspaceEntity];
    applicationSceneEntity = [workspaceEntity applicationSceneEntity];
    application = [applicationSceneEntity application];
    bundleIdentifier2 = [application bundleIdentifier];

    if (([bundleIdentifier isEqualToString:bundleIdentifier2] & 1) == 0)
    {
      v14 = [(SBPIPController *)self _contextForContainerViewController:v16];
      windowScene = [v14 windowScene];

      [(SBPIPController *)self _setWindowsLevel:windowScene forWindowsOnWindowScene:self->_windowLevel];
    }
  }
}

- (void)restoreContentViewController:(id)controller appSceneEntity:(id)entity morphAnimatorConfigurationBlock:(id)block completion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  blockCopy = block;
  completionCopy = completion;
  v14 = [(SBPIPController *)self containerViewControllerForContentViewController:controller];
  v15 = v14;
  if (v14)
  {
    v36 = a2;
    v37 = blockCopy;
    processIdentifier = [v14 processIdentifier];
    [entityCopy setFlag:1 forActivationSetting:57];
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SBPIPController contentType](self, "contentType")}];
    [entityCopy setObject:v17 forActivationSetting:58];

    v18 = +[SBMainWorkspace sharedInstance];
    sceneHandle = [entityCopy sceneHandle];
    displayIdentity = [sceneHandle displayIdentity];
    currentConfiguration = [displayIdentity currentConfiguration];
    v22 = [v18 createRequestWithOptions:0 displayConfiguration:currentConfiguration];

    processHandle = [MEMORY[0x277CF0CD0] processHandle];
    [v22 setOriginatingProcess:processHandle];

    [v22 setSource:45];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __106__SBPIPController_restoreContentViewController_appSceneEntity_morphAnimatorConfigurationBlock_completion___block_invoke;
    v42[3] = &unk_2783A98C8;
    v24 = entityCopy;
    v43 = v24;
    [v22 modifyApplicationContext:v42];
    sceneHandle2 = [v24 sceneHandle];
    persistenceIdentifier = [sceneHandle2 persistenceIdentifier];
    v27 = [(SBPIPController *)self pictureInPictureMorphAnimatorControllerForProcessIdentifier:processIdentifier scenePersistenceIdentifier:persistenceIdentifier];

    if (v27)
    {
      [SBPIPController restoreContentViewController:v36 appSceneEntity:self morphAnimatorConfigurationBlock:processIdentifier completion:?];
    }

    uniqueID = [v22 uniqueID];
    sceneHandle3 = [v24 sceneHandle];
    persistenceIdentifier2 = [sceneHandle3 persistenceIdentifier];

    v31 = [(SBPIPController *)self createAndRegisterPictureInPictureMorphAnimatorControllerWithTargetProcessIdentifier:processIdentifier uuid:uniqueID scenePersistenceIdentifier:persistenceIdentifier2 appLayout:0 layoutRole:0 appLayoutBoundingBox:0 gestureInitiated:*MEMORY[0x277CBF3A0] direction:*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), 1];

    [v31 setPictureInPictureContainerViewController:v15];
    [v15 setInteractionsEnabled:0];
    [v15 acquireInterfaceOrientationLock];
    blockCopy = v37;
    v37[2](v37, v31);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __106__SBPIPController_restoreContentViewController_appSceneEntity_morphAnimatorConfigurationBlock_completion___block_invoke_2;
    v38[3] = &unk_2783AE5A0;
    v39 = v15;
    v32 = v31;
    v40 = v32;
    v41 = completionCopy;
    v33 = [v22 addCompletionHandler:v38];
    v34 = SBLogPIP();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v45 = v32;
      _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEFAULT, "morphAnimatorController will executeTransitionRequest %p", buf, 0xCu);
    }

    v35 = +[SBMainWorkspace sharedInstance];
    [v35 executeTransitionRequest:v22];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

uint64_t __106__SBPIPController_restoreContentViewController_appSceneEntity_morphAnimatorConfigurationBlock_completion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) relinquishInterfaceOrientationLock];
  v2 = SBLogPIP();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = [v3 hasCompletedSourceAnimations];
    v5 = [*(a1 + 40) hasCompletedTargetAnimations];
    v9 = 138543874;
    v10 = v3;
    v11 = 1024;
    v12 = v4;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "morphAnimatorController %{public}@ hasCompletedSourceAnimations: %{BOOL}u hasCompletedTargetAnimations: %{BOOL}u", &v9, 0x18u);
  }

  v6 = (a1 + 40);
  if (![*(a1 + 40) hasCompletedSourceAnimations] || (objc_msgSend(*v6, "hasCompletedTargetAnimations") & 1) == 0)
  {
    v7 = SBLogPIP();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __106__SBPIPController_restoreContentViewController_appSceneEntity_morphAnimatorConfigurationBlock_completion___block_invoke_2_cold_1((a1 + 40), v7);
    }

    [*v6 cancel];
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)lockStateProvider:(id)provider didUpdateIsUILocked:(BOOL)locked
{
  if (locked)
  {
    [(SBPIPController *)self _didLockStateProviderLock:provider];
  }

  else
  {
    [(SBPIPController *)self _didLockStateProviderUnlock:provider];
  }
}

- (void)setPictureInPictureWindowsHidden:(BOOL)hidden forReason:(id)reason
{
  hiddenCopy = hidden;
  v18 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v7 = [(NSMutableSet *)self->_pictureInPictureWindowHiddenReasons containsObject:reasonCopy];
  if (hiddenCopy)
  {
    if (v7)
    {
      goto LABEL_15;
    }

    [(NSMutableSet *)self->_pictureInPictureWindowHiddenReasons addObject:reasonCopy];
    if ([(NSMutableSet *)self->_pictureInPictureWindowHiddenReasons count]!= 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    [(NSMutableSet *)self->_pictureInPictureWindowHiddenReasons removeObject:reasonCopy];
    if ([(NSMutableSet *)self->_pictureInPictureWindowHiddenReasons count])
    {
      goto LABEL_15;
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  _windowScenesDisplayingPIPContent = [(SBPIPController *)self _windowScenesDisplayingPIPContent];
  v9 = [_windowScenesDisplayingPIPContent countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(_windowScenesDisplayingPIPContent);
        }

        [(SBPIPController *)self _managePictureInPictureWindowVisibilityForWindowScene:*(*(&v13 + 1) + 8 * v12++) animated:1];
      }

      while (v10 != v12);
      v10 = [_windowScenesDisplayingPIPContent countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

LABEL_15:
}

- (id)_acquireStashAssertionForWindowScene:(id)scene withReason:(int64_t)reason identifier:(id)identifier customAllowedEnvironmentModes:(id)modes
{
  v31 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  identifierCopy = identifier;
  modesCopy = modes;
  if ((*(self + 281) & 8) != 0 && ([(SBPIPControllerAdapter *)self->_adapter preventStashAssertionsForPIPController:self]& 1) != 0)
  {
    v13 = 0;
  }

  else
  {
    windowSceneToStashAssertionsMap = self->_windowSceneToStashAssertionsMap;
    if (!windowSceneToStashAssertionsMap)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v16 = self->_windowSceneToStashAssertionsMap;
      self->_windowSceneToStashAssertionsMap = weakToStrongObjectsMapTable;

      windowSceneToStashAssertionsMap = self->_windowSceneToStashAssertionsMap;
    }

    v17 = [(NSMapTable *)windowSceneToStashAssertionsMap objectForKey:sceneCopy];
    if (!v17)
    {
      v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      [(NSMapTable *)self->_windowSceneToStashAssertionsMap setObject:v17 forKey:sceneCopy];
    }

    objc_initWeak(&location, self);
    v18 = [SBPIPStashAssertion alloc];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __108__SBPIPController__acquireStashAssertionForWindowScene_withReason_identifier_customAllowedEnvironmentModes___block_invoke;
    v24[3] = &unk_2783BA4E0;
    objc_copyWeak(&v27, &location);
    v24[4] = self;
    v19 = v17;
    v25 = v19;
    v20 = sceneCopy;
    v26 = v20;
    v21 = [(SBPIPEnvironmentDependentOverrideAssertion *)v18 initWithReason:reason identifier:identifierCopy windowScene:v20 invalidationBlock:v24];
    v13 = v21;
    if (v21)
    {
      if (modesCopy)
      {
        [(SBPIPEnvironmentDependentOverrideAssertion *)v21 setAllowedEnvironmentModes:modesCopy];
      }

      [v19 addObject:v13];
      [(SBPIPController *)self _setContainersStashed:1 forWindowScene:v20];
      v22 = SBLogPIP();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v30 = v13;
        _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "[Assertions] Stash assertion was acquired: %{public}@. Stashing.", buf, 0xCu);
      }
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __108__SBPIPController__acquireStashAssertionForWindowScene_withReason_identifier_customAllowedEnvironmentModes___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    if (v5[18] == v3)
    {
      [v5 _cancelInterruptionDebouncingTimer];
    }

    [*(a1 + 40) removeObject:v3];
    v6 = SBLogPIP();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v3;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Assertions] Stash assertion was invalidated: %{public}@", &v10, 0xCu);
    }

    if (([WeakRetained _hasStashAssertionForWindowScene:*(a1 + 48)] & 1) == 0)
    {
      v7 = SBLogPIP();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Assertions] No more stash assertions in place.", &v10, 2u);
      }

      [WeakRetained _setContainersStashed:WeakRetained[168] forWindowScene:*(a1 + 48)];
      v8 = SBLogPIP();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (WeakRetained[168])
        {
          v9 = @"stashed";
        }

        else
        {
          v9 = @"normal";
        }

        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[Assertions] Setting stash to: %{public}@", &v10, 0xCu);
      }
    }
  }
}

- (void)_invalidateInterruptionAssertion:(id)assertion
{
  v22 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  v5 = SBLogPIP();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = assertionCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[Assertions] Interruption assertion was invalidated: %{public}@", buf, 0xCu);
  }

  v6 = [(NSHashTable *)self->_interruptionAssertions count];
  v7 = SBLogPIP();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Assertions] Stop interrupting PIP for expired assertion.", buf, 2u);
    }

    [(SBPIPController *)self endPIPInterruptionForAssertion:assertionCopy];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Assertions] No more interruption assertions in place.", buf, 2u);
    }

    if (self->_stashForInterruptionAssertion)
    {
      v9 = SBLogPIP();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[Assertions] Start PIP interruption debounce timer.", buf, 2u);
      }

      v10 = self->_stashForInterruptionAssertion;
      v11 = [(BSAbsoluteMachTimer *)[SBPIPInterruptionDebouncingTimer alloc] initWithIdentifier:@"SBPIPController.interruptionEndDebouncingTimer"];
      interruptionEndDebouncingTimer = self->_interruptionEndDebouncingTimer;
      self->_interruptionEndDebouncingTimer = v11;

      v13 = self->_interruptionEndDebouncingTimer;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __52__SBPIPController__invalidateInterruptionAssertion___block_invoke;
      v17[3] = &unk_2783C3198;
      v17[4] = self;
      v14 = assertionCopy;
      v18 = v14;
      v19 = v10;
      v15 = v10;
      [(BSAbsoluteMachTimer *)v13 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v17 queue:2.0 handler:0.0];
      [(SBPIPInterruptionDebouncingTimer *)self->_interruptionEndDebouncingTimer setDebouncedAssertion:v14];
    }

    else
    {
      [(SBPIPController *)self endPIPInterruptionForAssertion:assertionCopy];
      v16 = SBLogPIP();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "[Assertions] If necessary, stop interrupting PIP immediately, since we don't have an interruption stash assertion.", buf, 2u);
      }
    }
  }
}

void __52__SBPIPController__invalidateInterruptionAssertion___block_invoke(uint64_t a1)
{
  v2 = SBLogPIP();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[Assertions] PIP interruption debounce timer expired. Stop interrupting PIP for previously expired assertion.", buf, 2u);
  }

  [*(a1 + 32) endPIPInterruptionForAssertion:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 112) count];
  v4 = *(a1 + 32);
  if (!v3 && *(a1 + 48) == *(v4 + 144))
  {
    v5 = SBLogPIP();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[Assertions] Invalidate any stash-for-interruption assertion since no assertion is in place after interruption debouncing.", v10, 2u);
    }

    [*(a1 + 48) invalidate];
    v6 = *(a1 + 32);
    v7 = *(v6 + 144);
    *(v6 + 144) = 0;

    v4 = *(a1 + 32);
  }

  [*(v4 + 160) invalidate];
  v8 = *(a1 + 32);
  v9 = *(v8 + 160);
  *(v8 + 160) = 0;
}

- (void)_suspendPIPForInterruptionAssertion:(id)assertion
{
  v24 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  v5 = SBLogPIP();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = assertionCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[Assertions] Interrupting for assertion: %{public}@", buf, 0xCu);
  }

  if ((*(self + 280) & 4) != 0)
  {
    v6 = [(SBPIPControllerAdapter *)self->_adapter pipController:self willBeginPIPInterruptionForAssertion:assertionCopy]^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  if (!self->_stashForInterruptionAssertion && (v6 & 1) == 0)
  {
    v7 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_283372308, &unk_283372320, 0}];
    _windowScenesDisplayingPIPContent = [(SBPIPController *)self _windowScenesDisplayingPIPContent];
    allObjects = [_windowScenesDisplayingPIPContent allObjects];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__SBPIPController__suspendPIPForInterruptionAssertion___block_invoke;
    v19[3] = &unk_2783C31C0;
    v19[4] = self;
    v20 = @"SBPIPController";
    v10 = v7;
    v21 = v10;
    v11 = [allObjects bs_compactMap:v19];

    objc_initWeak(buf, self);
    v12 = [SBPIPStashAssertion alloc];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __55__SBPIPController__suspendPIPForInterruptionAssertion___block_invoke_2;
    v16[3] = &unk_2783C31E8;
    v13 = v11;
    v17 = v13;
    objc_copyWeak(&v18, buf);
    v14 = [(SBPIPBehaviorOverrideAssertion *)v12 initWithReason:3 identifier:@"SBPIPController" invalidationBlock:v16];
    stashForInterruptionAssertion = self->_stashForInterruptionAssertion;
    self->_stashForInterruptionAssertion = v14;

    [(SBPIPEnvironmentDependentOverrideAssertion *)self->_stashForInterruptionAssertion setInvalidatesEarly:1];
    objc_destroyWeak(&v18);

    objc_destroyWeak(buf);
  }

  [(SBPIPController *)self invalidateIdleTimerBehaviors];
  [(SBPIPController *)self _cancelInterruptionDebouncingTimer];
}

void __55__SBPIPController__suspendPIPForInterruptionAssertion___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v12 + 1) + 8 * v8++) invalidate];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = *(WeakRetained + 18);
    if (v11 == v3)
    {
      *(WeakRetained + 18) = 0;
    }
  }
}

- (id)_acquireInterruptionAssertionForReason:(int64_t)reason identifier:(id)identifier cameraSensorBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  if (!self->_interruptionAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    interruptionAssertions = self->_interruptionAssertions;
    self->_interruptionAssertions = weakObjectsHashTable;
  }

  objc_initWeak(&location, self);
  v12 = [SBPIPInterruptionAssertion alloc];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __98__SBPIPController__acquireInterruptionAssertionForReason_identifier_cameraSensorBundleIdentifier___block_invoke;
  v18 = &unk_2783C3210;
  objc_copyWeak(&v19, &location);
  v13 = [(SBPIPBehaviorOverrideAssertion *)v12 initWithReason:reason identifier:identifierCopy cameraSensorAttributionBundleIdentifier:bundleIdentifierCopy invalidationBlock:&v15];
  if (v13)
  {
    [(NSHashTable *)self->_interruptionAssertions addObject:v13, v15, v16, v17, v18];
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v13;
}

void __98__SBPIPController__acquireInterruptionAssertionForReason_identifier_cameraSensorBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[14] removeObject:v5];
    [v4 _invalidateInterruptionAssertion:v5];
  }
}

- (BOOL)isPictureInPictureWindowVisibleOnWindowScene:(id)scene
{
  v19 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  if (![(SBPIPController *)self _shouldHideWindowScene:sceneCopy])
  {
    if (sceneCopy)
    {
      v6 = [(SBPIPController *)self _leadingWindowForWindowScene:sceneCopy];
      v5 = v6 != 0;

      goto LABEL_15;
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    _windowScenesDisplayingPIPContent = [(SBPIPController *)self _windowScenesDisplayingPIPContent];
    v8 = [_windowScenesDisplayingPIPContent countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(_windowScenesDisplayingPIPContent);
          }

          v12 = [(SBPIPController *)self _leadingWindowForWindowScene:*(*(&v14 + 1) + 8 * i)];

          if (v12)
          {

            v5 = 1;
            goto LABEL_15;
          }
        }

        v9 = [_windowScenesDisplayingPIPContent countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  v5 = 0;
LABEL_15:

  return v5;
}

- (void)startPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:(int)background scenePersistenceIdentifier:(id)identifier animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  v8 = *&background;
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([(SBPIPController *)self shouldStartPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:v8 scenePersistenceIdentifier:identifierCopy])
  {
    v12 = +[SBApplicationController sharedInstanceIfExists];
    v13 = [v12 applicationWithPid:v8];
    bundleIdentifier = [v13 bundleIdentifier];

    objc_storeStrong(&self->_bundleIDForAppAnimatingPIPStartInBackground, bundleIdentifier);
    WeakRetained = objc_loadWeakRetained(&self->_windowSceneManager);
    v16 = [WeakRetained windowSceneForPersistentIdentifier:identifierCopy];
    pictureInPictureManager = [v16 pictureInPictureManager];

    [pictureInPictureManager setNeedsUpdateZStackParticipantPreferencesWithReason:@"background PIP starting"];
    [pictureInPictureManager _updateFloatingDockInsetsWithoutNotifyingControllers];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __148__SBPIPController_startPictureInPictureForApplicationWithProcessIdentifierEnteringBackground_scenePersistenceIdentifier_animated_completionHandler___block_invoke;
    v25 = &unk_2783C3238;
    selfCopy = self;
    v29 = handlerCopy;
    v18 = bundleIdentifier;
    v27 = v18;
    v19 = pictureInPictureManager;
    v28 = v19;
    v20 = MEMORY[0x223D6F7F0](&v22);
    v21 = v20;
    if ((*(self + 280) & 0x10) != 0)
    {
      [(SBPIPControllerAdapter *)self->_adapter pipController:self didStartPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:v8 scenePersistenceIdentifier:identifierCopy animated:animatedCopy completionHandler:v20, v22, v23, v24, v25, selfCopy, v27];
    }

    else
    {
      (*(v20 + 16))(v20, 1, 0);
    }
  }
}

uint64_t __148__SBPIPController_startPictureInPictureForApplicationWithProcessIdentifierEnteringBackground_scenePersistenceIdentifier_animated_completionHandler___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v5 = a3;
  [v4 invalidateIdleTimerBehaviors];
  (*(a1[7] + 16))();

  if (BSEqualStrings())
  {
    v6 = a1[4];
    v7 = *(v6 + 176);
    *(v6 + 176) = 0;
  }

  v8 = a1[6];

  return [v8 setNeedsUpdateZStackParticipantPreferencesWithReason:@"background PIP started"];
}

- (void)cancelPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:(int)background scenePersistenceIdentifier:(id)identifier
{
  if ((*(self + 280) & 0x20) != 0)
  {
    [(SBPIPControllerAdapter *)self->_adapter pipController:self didCancelPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:*&background scenePersistenceIdentifier:identifier];
  }
}

- (void)endPIPInterruptionForAssertion:(id)assertion
{
  v8 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  v5 = SBLogPIP();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = assertionCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "end interruption for %{public}@", &v6, 0xCu);
  }

  if ((*(self + 280) & 8) != 0)
  {
    [(SBPIPControllerAdapter *)self->_adapter pipController:self willEndPIPInterruptionForAssertion:assertionCopy];
  }

  [(SBPIPController *)self invalidateIdleTimerBehaviors];
}

- (void)updatePictureInPictureWindowLevelForWindowScene:(id)scene
{
  sceneCopy = scene;
  pictureInPictureManager = [sceneCopy pictureInPictureManager];
  v11 = [pictureInPictureManager _windowLevelOverrideAssertionsForContentType:0];

  if ([v11 count])
  {
    lastObject = [v11 lastObject];
    windowLevel = [lastObject windowLevel];
  }

  else
  {
    windowLevel = self->_windowLevel;
  }

  [(SBPIPController *)self _setWindowsLevel:sceneCopy forWindowsOnWindowScene:windowLevel];
  v8 = [(SBPIPController *)self _leadingWindowForWindowScene:sceneCopy];

  [v8 windowLevel];
  v10 = v9;

  if (v10 != windowLevel && (*(self + 281) & 2) != 0)
  {
    [(SBPIPControllerAdapter *)self->_adapter windowLevelDidChangeForPIPController:self];
  }
}

- (void)handleDestructionRequestForSceneHandles:(id)handles
{
  v18 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  keyEnumerator = [(NSMapTable *)self->_containerViewControllerToContextMap keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  v7 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        hostedAppSceneHandle = [v11 hostedAppSceneHandle];
        if ([handlesCopy containsObject:hostedAppSceneHandle])
        {
          [v11 handleDestructionRequestForSceneHandle:hostedAppSceneHandle];
        }
      }

      v8 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)updateZStackParticipantPreferencesIfNeeded:(id)needed windowScene:(id)scene
{
  v35 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  sceneCopy = scene;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__137;
  v32 = __Block_byref_object_dispose__137;
  v33 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __74__SBPIPController_updateZStackParticipantPreferencesIfNeeded_windowScene___block_invoke;
  v27[3] = &unk_2783C3260;
  v27[4] = &v28;
  v7 = MEMORY[0x223D6F7F0](v27);
  v8 = objc_opt_class();
  v9 = sceneCopy;
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

  v11 = v10;

  v12 = [(SBPIPController *)self containerViewControllersOnWindowScene:v11];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v34 count:16];
  if (v14)
  {
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        if ([v17 shouldSuppressAssociatedElementsInSystemAperture])
        {
          bundleIdentifier = [v17 bundleIdentifier];
          if (bundleIdentifier)
          {
            v19 = v7[2](v7);
            [v19 addObject:bundleIdentifier];
          }
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v23 objects:v34 count:16];
    }

    while (v14);
  }

  if (self->_bundleIDForAppRecentlyStoppingPIP)
  {
    v20 = v7[2](v7);
    [v20 addObject:self->_bundleIDForAppRecentlyStoppingPIP];
  }

  if (self->_bundleIDForAppAnimatingPIPStartInBackground)
  {
    v21 = v7[2](v7);
    [v21 addObject:self->_bundleIDForAppAnimatingPIPStartInBackground];
  }

  [v29[5] removeObject:@"com.apple.InCallService"];
  [neededCopy setAssociatedBundleIdentifiersToSuppressInSystemAperture:v29[5]];

  _Block_object_dispose(&v28, 8);
}

id __74__SBPIPController_updateZStackParticipantPreferencesIfNeeded_windowScene___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (!v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(*(a1 + 32) + 8) + 40);
  }

  return v2;
}

- (void)setEnhancedWindowingModeEnabled:(BOOL)enabled windowScene:(id)scene
{
  if ((*(self + 281) & 0x10) != 0)
  {
    [(SBPIPControllerAdapter *)self->_adapter pipController:self didUpdateEnhancedWindowingModeEnabled:enabled windowScene:scene];
  }
}

- (double)windowLevelForWindowScene:(id)scene
{
  v3 = [(SBPIPController *)self _leadingWindowForWindowScene:scene];
  [v3 windowLevel];
  v5 = v4;

  return v5;
}

- (BOOL)hasCameraInterruptionForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  allKeys = [(NSMutableDictionary *)self->_cameraInterruptionAssertions allKeys];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SBPIPController_hasCameraInterruptionForBundleIdentifier___block_invoke;
  v9[3] = &unk_2783C3288;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [allKeys bs_containsObjectPassingTest:v9];

  return v7;
}

uint64_t __60__SBPIPController_hasCameraInterruptionForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)hideContainersExcludingContainerForContentViewControllerAndTetheredOnes:(id)ones animated:(BOOL)animated
{
  animatedCopy = animated;
  onesCopy = ones;
  v7 = [(SBPIPController *)self containerViewControllerForContentViewController:onesCopy];
  v8 = [(SBPIPController *)self _contextForContainerViewController:v7];
  windowScene = [v8 windowScene];

  if (windowScene)
  {
    tetheringContainerViewController = [v7 tetheringContainerViewController];
    v11 = MEMORY[0x277D75D18];
    if (animatedCopy)
    {
      v12 = 0.1;
    }

    else
    {
      v12 = 0.0;
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __100__SBPIPController_hideContainersExcludingContainerForContentViewControllerAndTetheredOnes_animated___block_invoke;
    v14[3] = &unk_2783A9BD8;
    v14[4] = self;
    v15 = windowScene;
    v16 = onesCopy;
    v17 = tetheringContainerViewController;
    v13 = tetheringContainerViewController;
    [v11 animateWithDuration:v14 animations:v12];
  }
}

void __100__SBPIPController_hideContainersExcludingContainerForContentViewControllerAndTetheredOnes_animated___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) containerViewControllersOnWindowScene:{*(a1 + 40), 0}];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 contentViewController];
        v9 = *(a1 + 48);

        if (v8 != v9)
        {
          v10 = [v7 tetheringContainerViewController];
          if (!v10)
          {
            if (v7 == *(a1 + 56))
            {
              continue;
            }

            v10 = [v7 view];
            [v10 setAlpha:0.0];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)bringTetheredContentToFrontOnWindowScene:(id)scene
{
  sceneCopy = scene;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SBPIPController_bringTetheredContentToFrontOnWindowScene___block_invoke;
  v6[3] = &unk_2783C32B0;
  v6[4] = v7;
  [(SBPIPController *)self _enumerateContextsForWindowScene:sceneCopy usingBlock:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SBPIPController_bringTetheredContentToFrontOnWindowScene___block_invoke_2;
  v5[3] = &unk_2783C32B0;
  v5[4] = v7;
  [(SBPIPController *)self _enumerateContextsForWindowScene:sceneCopy usingBlock:v5];
  _Block_object_dispose(v7, 8);
}

void __60__SBPIPController_bringTetheredContentToFrontOnWindowScene___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 window];
  [v4 windowLevel];
  *(*(*(a1 + 32) + 8) + 24) = fmax(v3, *(*(*(a1 + 32) + 8) + 24));
}

void __60__SBPIPController_bringTetheredContentToFrontOnWindowScene___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 containerViewController];
  if ([v3 isActivelyTethered])
  {
    v4 = [v5 window];
    [v4 setWindowLevel:*(*(*(a1 + 32) + 8) + 24) + 0.01];
  }
}

- (void)showAllContentOnWindowScene:(id)scene animated:(BOOL)animated
{
  animatedCopy = animated;
  sceneCopy = scene;
  v7 = MEMORY[0x277D75D18];
  v10[1] = 3221225472;
  v10[0] = MEMORY[0x277D85DD0];
  v10[2] = __56__SBPIPController_showAllContentOnWindowScene_animated___block_invoke;
  v10[3] = &unk_2783A92D8;
  if (animatedCopy)
  {
    v8 = 0.33;
  }

  else
  {
    v8 = 0.0;
  }

  v10[4] = self;
  v11 = sceneCopy;
  v9 = sceneCopy;
  [v7 animateWithDuration:0 delay:v10 options:0 animations:v8 completion:0.0];
}

- (void)movePIPContentToWindowScene:(id)scene
{
  v18 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  connectedWindowScenes = [(SBPIPController *)self connectedWindowScenes];
  if ([connectedWindowScenes containsObject:sceneCopy])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    objectEnumerator = [(NSMapTable *)self->_containerViewControllerToContextMap objectEnumerator];
    v7 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(objectEnumerator);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          windowScene = [v11 windowScene];
          if (windowScene != sceneCopy)
          {
            [(SBPIPController *)self _moveContext:v11 toWindowScene:sceneCopy];
          }
        }

        v8 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (void)_startPictureInPictureTestActionForApplicationWithBundleIdentifier:(id)identifier
{
  if (*(self + 280) < 0)
  {
    [(SBPIPControllerAdapter *)self->_adapter pipController:self willStartPictureInPictureTestActionForApplicationWithBundleIdentifier:identifier];
  }
}

- (void)_restorePictureInPictureForTestForApplicationWithBundleIdentifier:(id)identifier
{
  if (*(self + 281))
  {
    [(SBPIPControllerAdapter *)self->_adapter pipController:self willRestorePictureInPictureForTestForApplicationWithBundleIdentifier:identifier];
  }
}

- (void)alertItemsController:(id)controller didActivateAlertItem:(id)item
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(SBPIPController *)self _windowScenesDisplayingPIPContent:controller];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SBPIPController *)self updatePictureInPictureWindowLevelForWindowScene:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)alertItemsController:(id)controller didDeactivateAlertItem:(id)item forReason:(int)reason
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(SBPIPController *)self _windowScenesDisplayingPIPContent:controller];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SBPIPController *)self updatePictureInPictureWindowLevelForWindowScene:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)assistantWillAppear:(id)appear windowScene:(id)scene
{
  sceneCopy = scene;
  v6 = objc_opt_class();
  v9 = sceneCopy;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [(SBPIPController *)self updatePictureInPictureWindowLevelForWindowScene:v8];
}

- (void)assistantDidDisappear:(id)disappear windowScene:(id)scene
{
  sceneCopy = scene;
  v6 = objc_opt_class();
  v9 = sceneCopy;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [(SBPIPController *)self updatePictureInPictureWindowLevelForWindowScene:v8];
}

- (id)_createNewWindowForContainerViewController:(id)controller onWindowScene:(id)scene
{
  v19 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  sceneCopy = scene;
  v8 = SBLogPIP();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = _SBFLoggingMethodProem();
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
  }

  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v10 = SBLogCommon();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v12 = _SBFLoggingMethodProem();
      NSLog(&cfstr_NeedsToBeInvok.isa, v12);
    }
  }

  v13 = [(SBPIPController *)self _contextForContainerViewController:controllerCopy creatingWithWindowSceneIfNeeded:sceneCopy];
  window = [v13 window];
  if (!window)
  {
    windowScene = [v13 windowScene];
    if (windowScene != sceneCopy)
    {
      [(SBPIPController *)self _moveContext:v13 toWindowScene:sceneCopy];
    }

    window = [[SBPictureInPictureWindow alloc] initWithWindowScene:windowScene];
    [(SBPictureInPictureWindow *)window _setRoleHint:@"SBTraitsParticipantRolePictureInPicture"];
    [(SBPictureInPictureWindow *)window setRootViewController:controllerCopy];
    [(SBPictureInPictureWindow *)window setOpaque:0];
    [v13 setWindow:window];
    [(SBPIPController *)self _edgeInsetsDidChangeOnWindowScene:windowScene];
    [(SBPIPController *)self updatePictureInPictureWindowLevelForWindowScene:windowScene];
    [(SBPIPController *)self _managePictureInPictureWindowVisibilityForWindowScene:windowScene animated:0];
    [(SBPictureInPictureWindow *)window setHidden:0];
  }

  return v13;
}

- (BOOL)_shouldHideWindowScene:(id)scene
{
  sceneCopy = scene;
  v5 = [(NSMutableSet *)self->_pictureInPictureWindowHiddenReasons count];
  if (v5 != 1)
  {
    goto LABEL_5;
  }

  anyObject = [(NSMutableSet *)self->_pictureInPictureWindowHiddenReasons anyObject];
  if (![anyObject isEqualToString:@"SBLockScreenPictureInPictureHiddenReason"])
  {

LABEL_5:
    isUILocked = v5 != 0;
    goto LABEL_6;
  }

  uiLockStateProvider = [sceneCopy uiLockStateProvider];
  isUILocked = [uiLockStateProvider isUILocked];

LABEL_6:
  return isUILocked;
}

- (void)_managePictureInPictureWindowVisibilityForWindowScene:(id)scene animated:(BOOL)animated
{
  animatedCopy = animated;
  sceneCopy = scene;
  if (![(NSMutableSet *)self->_pictureInPictureMorphAnimatorControllers count])
  {
    v7 = [(SBPIPController *)self _leadingWindowForWindowScene:sceneCopy];
    isHidden = [v7 isHidden];

    v9 = [(SBPIPController *)self _shouldHideWindowScene:sceneCopy];
    v10 = !v9;
    if (!v9)
    {
      [(SBPIPController *)self _setHidden:0 forWindowsOnWindowScene:sceneCopy];
      if (isHidden)
      {
        if ((*(self + 281) & 4) != 0)
        {
          [(SBPIPControllerAdapter *)self->_adapter windowVisibilityDidChangeForPIPController:self];
        }
      }
    }

    v11 = MEMORY[0x277D75D18];
    if (animatedCopy)
    {
      v12 = 0.2;
    }

    else
    {
      v12 = 0.0;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __82__SBPIPController__managePictureInPictureWindowVisibilityForWindowScene_animated___block_invoke;
    v16[3] = &unk_2783A97D8;
    v18 = v10;
    v16[4] = self;
    v17 = sceneCopy;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __82__SBPIPController__managePictureInPictureWindowVisibilityForWindowScene_animated___block_invoke_2;
    v13[3] = &unk_2783B1948;
    v13[4] = self;
    v14 = v17;
    v15 = isHidden;
    [v11 animateWithDuration:v16 animations:v13 completion:v12];
  }
}

uint64_t __82__SBPIPController__managePictureInPictureWindowVisibilityForWindowScene_animated___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 48))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) _setAlpha:*(a1 + 40) forWindowsOnWindowScene:v1];
}

uint64_t __82__SBPIPController__managePictureInPictureWindowVisibilityForWindowScene_animated___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _shouldHideWindowScene:*(a1 + 40)];
  if (result)
  {
    result = [*(a1 + 32) _setHidden:1 forWindowsOnWindowScene:*(a1 + 40)];
    if ((*(a1 + 48) & 1) == 0)
    {
      v3 = *(a1 + 32);
      if ((*(v3 + 281) & 4) != 0)
      {
        v4 = *(v3 + 272);

        return [v4 windowVisibilityDidChangeForPIPController:?];
      }
    }
  }

  return result;
}

- (void)_setAlpha:(double)alpha forWindowsOnWindowScene:(id)scene
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__SBPIPController__setAlpha_forWindowsOnWindowScene___block_invoke;
  v4[3] = &__block_descriptor_40_e33_v24__0__SBPIPContentContext_8_B16l;
  *&v4[4] = alpha;
  [(SBPIPController *)self _enumerateContextsForWindowScene:scene usingBlock:v4];
}

void __53__SBPIPController__setAlpha_forWindowsOnWindowScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 window];
  [v3 setAlpha:*(a1 + 32)];
}

- (void)_setHidden:(BOOL)hidden forWindowsOnWindowScene:(id)scene
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SBPIPController__setHidden_forWindowsOnWindowScene___block_invoke;
  v4[3] = &__block_descriptor_33_e33_v24__0__SBPIPContentContext_8_B16l;
  hiddenCopy = hidden;
  [(SBPIPController *)self _enumerateContextsForWindowScene:scene usingBlock:v4];
}

void __54__SBPIPController__setHidden_forWindowsOnWindowScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 window];
  [v3 setHidden:*(a1 + 32)];
}

- (void)_setWindowsLevel:(double)level forWindowsOnWindowScene:(id)scene
{
  sceneCopy = scene;
  objectEnumerator = [(NSMapTable *)self->_containerViewControllerToContextMap objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__SBPIPController__setWindowsLevel_forWindowsOnWindowScene___block_invoke;
  v19[3] = &unk_2783C3318;
  v9 = sceneCopy;
  v20 = v9;
  v10 = [allObjects bs_filter:v19];
  v11 = [v10 sortedArrayUsingSelector:sel_contentZOrderPriority];

  v12 = [v11 count];
  if (v12)
  {
    v13 = v12;
    for (i = 0; i != v13; ++i)
    {
      v15 = [v11 objectAtIndex:i];
      window = [v15 window];
      [window setWindowLevel:level + i * 0.01];

      containerViewController = [v15 containerViewController];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __60__SBPIPController__setWindowsLevel_forWindowsOnWindowScene___block_invoke_2;
      v18[3] = &__block_descriptor_40_e33_v16__0__SBSDisplayLayoutElement_8l;
      *&v18[4] = level;
      [containerViewController updateDisplayLayoutElementWithBuilder:v18];
    }
  }
}

BOOL __60__SBPIPController__setWindowsLevel_forWindowsOnWindowScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 windowScene];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (id)_leadingWindowForWindowScene:(id)scene
{
  sceneCopy = scene;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__137;
  v12 = __Block_byref_object_dispose__137;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SBPIPController__leadingWindowForWindowScene___block_invoke;
  v7[3] = &unk_2783C32B0;
  v7[4] = &v8;
  [(SBPIPController *)self _enumerateContextsForWindowScene:sceneCopy usingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __48__SBPIPController__leadingWindowForWindowScene___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 containerViewController];
  v6 = [v5 isActivelyTethered];

  if ((v6 & 1) == 0)
  {
    v7 = [v10 window];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a3 = 1;
  }
}

- (void)_setContainersStashed:(BOOL)stashed forWindowScene:(id)scene
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SBPIPController__setContainersStashed_forWindowScene___block_invoke;
  v4[3] = &__block_descriptor_33_e33_v24__0__SBPIPContentContext_8_B16l;
  stashedCopy = stashed;
  [(SBPIPController *)self _enumerateContextsForWindowScene:scene usingBlock:v4];
}

void __56__SBPIPController__setContainersStashed_forWindowScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 containerViewController];
  [v3 setStashed:*(a1 + 32)];
}

- (void)_lockStateDidChange:(id)change
{
  userInfo = [change userInfo];
  v4 = [userInfo objectForKey:@"SBAggregateLockStateKey"];
  if ([v4 intValue])
  {
  }

  else
  {
    v5 = +[SBWorkspace mainWorkspace];
    transientOverlayPresentationManager = [v5 transientOverlayPresentationManager];
    hasActivePresentation = [transientOverlayPresentationManager hasActivePresentation];

    if ((hasActivePresentation & 1) == 0)
    {

      [(SBPIPController *)self setPictureInPictureWindowsHidden:0 forReason:@"SBLockScreenPictureInPictureHiddenReason"];
    }
  }
}

- (BOOL)_isPointInsidePictureInPictureContent:(CGPoint)content onWindowScene:(id)scene
{
  y = content.y;
  x = content.x;
  sceneCopy = scene;
  v8 = [(SBPIPController *)self _leadingWindowForWindowScene:sceneCopy];
  if (v8)
  {
    coordinateSpace = [sceneCopy coordinateSpace];
    [coordinateSpace convertPoint:v8 toCoordinateSpace:{x, y}];
    v11 = v10;
    v13 = v12;

    v14 = [v8 hitTest:0 withEvent:{v11, v13}];
    v15 = v14 != 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)createAndRegisterPictureInPictureMorphAnimatorControllerWithTargetProcessIdentifier:(int)identifier uuid:(id)uuid scenePersistenceIdentifier:(id)persistenceIdentifier appLayout:(id)layout layoutRole:(int64_t)role appLayoutBoundingBox:(CGRect)box gestureInitiated:(BOOL)initiated direction:(int64_t)self0
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v18 = *&identifier;
  layoutCopy = layout;
  persistenceIdentifierCopy = persistenceIdentifier;
  uuidCopy = uuid;
  WeakRetained = objc_loadWeakRetained(&self->_windowSceneManager);
  v24 = [WeakRetained windowSceneForPersistentIdentifier:persistenceIdentifierCopy];

  LOBYTE(v27) = initiated;
  uuidCopy = [[SBPIPMorphAnimatorController alloc] initWithTargetProcessIdentifier:v18 scenePersistenceIdentifier:persistenceIdentifierCopy appLayout:layoutCopy layoutRole:role appLayoutBoundingBox:v24 windowScene:direction direction:x gestureInitiated:y delegate:width uuid:height, v27, self, uuidCopy];

  [(SBPIPController *)self _addPictureInPictureMorphAnimatorController:uuidCopy];

  return uuidCopy;
}

- (void)_addPictureInPictureMorphAnimatorController:(id)controller
{
  if (controller)
  {
    controllerCopy = controller;
    viewMorphAnimator = [controllerCopy viewMorphAnimator];
    windowScene = [viewMorphAnimator windowScene];

    [(SBPIPController *)self _setHidden:0 forWindowsOnWindowScene:windowScene];
    [(NSMutableSet *)self->_pictureInPictureMorphAnimatorControllers addObject:controllerCopy];
  }
}

- (id)pictureInPictureMorphAnimatorControllerForProcessIdentifier:(int)identifier scenePersistenceIdentifier:(id)persistenceIdentifier
{
  persistenceIdentifierCopy = persistenceIdentifier;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__137;
  v19 = __Block_byref_object_dispose__137;
  v20 = 0;
  allObjects = [(NSMutableSet *)self->_pictureInPictureMorphAnimatorControllers allObjects];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __106__SBPIPController_pictureInPictureMorphAnimatorControllerForProcessIdentifier_scenePersistenceIdentifier___block_invoke;
  v11[3] = &unk_2783C3360;
  identifierCopy = identifier;
  v8 = persistenceIdentifierCopy;
  v12 = v8;
  v13 = &v15;
  [allObjects enumerateObjectsUsingBlock:v11];

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __106__SBPIPController_pictureInPictureMorphAnimatorControllerForProcessIdentifier_scenePersistenceIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 targetProcessIdentifier] == *(a1 + 48))
  {
    v7 = [v9 scenePersistenceIdentifier];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    if (v8)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

- (void)_removePictureInPictureMorphAnimatorController:(id)controller
{
  if (controller)
  {
    pictureInPictureMorphAnimatorControllers = self->_pictureInPictureMorphAnimatorControllers;
    controllerCopy = controller;
    [(NSMutableSet *)pictureInPictureMorphAnimatorControllers removeObject:controllerCopy];
    viewMorphAnimator = [controllerCopy viewMorphAnimator];

    windowScene = [viewMorphAnimator windowScene];

    [(SBPIPController *)self _managePictureInPictureWindowVisibilityForWindowScene:windowScene animated:1];
  }
}

- (void)_edgeInsetsDidChangeOnWindowScene:(id)scene
{
  sceneCopy = scene;
  if (SBWorkspaceIsSystemBootComplete())
  {
    if (([(SBPIPControllerAdapter *)self->_adapter isStartingStoppingOrCancellingPictureInPictureForPIPController:self]& 1) == 0)
    {
      -[SBPIPController _updatePictureInPictureOverlayInsetsOnWindowScene:withCurrentLayoutState:toHomeScreen:toInterfaceOrientation:shouldUpdate:](self, "_updatePictureInPictureOverlayInsetsOnWindowScene:withCurrentLayoutState:toHomeScreen:toInterfaceOrientation:shouldUpdate:", sceneCopy, 1, 0, [SBApp activeInterfaceOrientation], 1);
      [(SBPIPController *)self _visualizeKeyboardFrameIfNeeded];
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = SBLogPIP();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPController *)v5 _edgeInsetsDidChangeOnWindowScene:v6];
  }
}

- (UIEdgeInsets)_edgeInsetsForSource:(int64_t)source onWindowScene:(id)scene exists:(BOOL *)exists
{
  pictureInPictureManager = [scene pictureInPictureManager];
  _sourceToEdgeInsets = [pictureInPictureManager _sourceToEdgeInsets];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:source];
  v10 = [_sourceToEdgeInsets objectForKeyedSubscript:v9];

  if (exists)
  {
    *exists = v10 != 0;
  }

  [v10 UIEdgeInsetsValue];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (UIEdgeInsets)_keyboardInsetsForWindowScene:(id)scene
{
  sceneCopy = scene;
  if ([sceneCopy isExternalDisplayWindowScene])
  {
    v6 = *MEMORY[0x277D768C8];
    v5 = *(MEMORY[0x277D768C8] + 8);
    v7 = *(MEMORY[0x277D768C8] + 16);
    v8 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    [MEMORY[0x277D75830] visiblePeripheralFrame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [MEMORY[0x277D75830] visibleInputViewFrame];
    v37.origin.x = v17;
    v37.origin.y = v18;
    v37.size.width = v19;
    v37.size.height = v20;
    v34.origin.x = v10;
    v34.origin.y = v12;
    v34.size.width = v14;
    v34.size.height = v16;
    v35 = CGRectUnion(v34, v37);
    x = v35.origin.x;
    y = v35.origin.y;
    width = v35.size.width;
    height = v35.size.height;
    v25 = [(SBPIPController *)self _leadingWindowForWindowScene:sceneCopy];
    screen = [v25 screen];
    coordinateSpace = [screen coordinateSpace];

    coordinateSpace2 = [v25 coordinateSpace];
    [coordinateSpace convertRect:coordinateSpace2 toCoordinateSpace:{x, y, width, height}];
    v7 = v29;

    v8 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
  }

  v30 = v6;
  v31 = v5;
  v32 = v7;
  v33 = v8;
  result.right = v33;
  result.bottom = v32;
  result.left = v31;
  result.top = v30;
  return result;
}

- (UIEdgeInsets)_updatePictureInPictureOverlayInsetsOnWindowScene:(id)scene withCurrentLayoutState:(BOOL)state toHomeScreen:(BOOL)screen toInterfaceOrientation:(int64_t)orientation shouldUpdate:(BOOL)update
{
  updateCopy = update;
  stateCopy = state;
  v111 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  [(SBPIPController *)self _keyboardInsetsForWindowScene:sceneCopy];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  pictureInPictureManager = [sceneCopy pictureInPictureManager];
  [pictureInPictureManager applyPictureInPictureInsets:5 forSource:{v11, v13, v15, v17}];

  objc_initWeak(&location, sceneCopy);
  objc_initWeak(&from, self);
  v19 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __141__SBPIPController__updatePictureInPictureOverlayInsetsOnWindowScene_withCurrentLayoutState_toHomeScreen_toInterfaceOrientation_shouldUpdate___block_invoke;
  block[3] = &unk_2783B45E8;
  objc_copyWeak(&v106, &location);
  objc_copyWeak(&v107, &from);
  dispatch_after(v19, MEMORY[0x277D85CD0], block);
  v20 = [(NSMapTable *)self->_windowSceneToWindowMarginsMap objectForKey:sceneCopy];
  [v20 UIEdgeInsetsValue];
  v88 = v21;
  v89 = v22;
  v85 = v23;
  v87 = v24;

  homeScreenController = [sceneCopy homeScreenController];
  v104 = 0;
  [(SBPIPController *)self _edgeInsetsForSource:1 onWindowScene:sceneCopy exists:&v104];
  v28 = *MEMORY[0x277D768C8];
  v27 = *(MEMORY[0x277D768C8] + 8);
  v30 = *(MEMORY[0x277D768C8] + 16);
  v29 = *(MEMORY[0x277D768C8] + 24);
  v91 = v29;
  v31 = v30;
  v32 = v27;
  v33 = *MEMORY[0x277D768C8];
  if (v104 == 1)
  {
    v34 = v26;
    homeScreenViewController = [homeScreenController homeScreenViewController];
    orientation = [homeScreenViewController orientation];
    v32 = 0.0;
    if ((orientation - 3) >= 2)
    {
      v31 = v34;
    }

    else
    {
      v31 = 0.0;
    }

    if ((orientation - 3) >= 2)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = v34;
    }

    v91 = v37;

    v33 = 0.0;
  }

  switcherController = [sceneCopy switcherController];
  v39 = switcherController;
  if (stateCopy)
  {
    if ([switcherController layoutContainsRole:1])
    {
      v103 = 0;
      [(SBPIPController *)self _edgeInsetsForSource:2 onWindowScene:sceneCopy exists:&v103];
      if (v103)
      {
        v41 = v40;
      }

      else
      {
        v41 = v30;
      }

      v102 = 0;
      [(SBPIPController *)self _edgeInsetsForSource:3 onWindowScene:sceneCopy exists:&v102];
      v43 = v42;
      v44 = [v39 layoutContainsRole:2];
      if (((v102 & v44) & (v41 < v43)) != 0)
      {
        v31 = v43;
      }

      else
      {
        v31 = v41;
      }

      v91 = v29;
      v32 = v27;
      v33 = v28;
    }
  }

  else if ([sceneCopy isMainDisplayWindowScene])
  {
    iconManager = [homeScreenController iconManager];
    if (([iconManager hasOpenFolderInLocation:*MEMORY[0x277D666D0]] & 1) == 0)
    {
      floatingDockController = [sceneCopy floatingDockController];
      [floatingDockController floatingDockHeight];
      if (v31 < v47)
      {
        v31 = v47;
      }
    }
  }

  v103 = 0;
  [(SBPIPController *)self _edgeInsetsForSource:4 onWindowScene:sceneCopy exists:&v103];
  v49 = v48;
  v50 = v103;
  v102 = 0;
  [(SBPIPController *)self _edgeInsetsForSource:5 onWindowScene:sceneCopy exists:&v102];
  if ((v50 & (v31 < v49)) != 0)
  {
    v52 = v49;
  }

  else
  {
    v52 = v31;
  }

  if ((v102 & (v52 < v51)) != 0)
  {
    v53 = v51;
  }

  else
  {
    v53 = v52;
  }

  v101 = 0;
  [(SBPIPController *)self _edgeInsetsForSource:6 onWindowScene:sceneCopy exists:&v101];
  if ((v101 & (v33 < v54)) != 0)
  {
    v55 = v54;
  }

  else
  {
    v55 = v33;
  }

  v100 = 0;
  [(SBPIPController *)self _edgeInsetsForSource:7 onWindowScene:sceneCopy exists:&v100];
  if ((v100 & (v53 < v56)) != 0)
  {
    v57 = v56;
  }

  else
  {
    v57 = v53;
  }

  v99 = 0;
  [(SBPIPController *)self _edgeInsetsForSource:8 onWindowScene:sceneCopy exists:&v99];
  if (v99 == 1)
  {
    v60 = v58;
    v61 = v59;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v62 = [(SBPIPController *)self containerViewControllersOnWindowScene:sceneCopy];
    v63 = [v62 countByEnumeratingWithState:&v95 objects:v110 count:16];
    if (v63)
    {
      v64 = *v96;
      v65 = 1.79769313e308;
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v96 != v64)
          {
            objc_enumerationMutation(v62);
          }

          maximumAvailableVerticalPadding = [*(*(&v95 + 1) + 8 * i) maximumAvailableVerticalPadding];
          v68 = maximumAvailableVerticalPadding;
          if (maximumAvailableVerticalPadding)
          {
            [maximumAvailableVerticalPadding doubleValue];
          }

          else
          {
            v69 = 1.79769313e308;
          }

          v70 = v69 - v60;
          if (v70 < v65)
          {
            v65 = v70;
          }
        }

        v63 = [v62 countByEnumeratingWithState:&v95 objects:v110 count:16];
      }

      while (v63);
    }

    else
    {
      v65 = 1.79769313e308;
    }

    if (v61 >= v65)
    {
      v71 = v65;
    }

    else
    {
      v71 = v61;
    }

    if (v55 < v60)
    {
      v55 = v60;
    }

    if (v57 < v71)
    {
      v57 = v71;
    }
  }

  v94 = 0;
  [(SBPIPController *)self _edgeInsetsForSource:9 onWindowScene:sceneCopy exists:&v94];
  if ((v94 & (v57 < v72)) != 0)
  {
    v73 = v72;
  }

  else
  {
    v73 = v57;
  }

  v93 = 0;
  [(SBPIPController *)self _edgeInsetsForSource:10 onWindowScene:sceneCopy exists:&v93];
  if (v93 == 1)
  {
    SBFEdgeInsetsRotateToInterfaceOrientation();
    UIEdgeInsetsMax();
    v91 = v74;
    v55 = v75;
    v32 = v76;
    v73 = v77;
  }

  if (updateCopy && (v89 != v32 || v88 != v55 || v87 != v91 || v86 != v73))
  {
    windowSceneToWindowMarginsMap = self->_windowSceneToWindowMarginsMap;
    *v92 = v55;
    *&v92[1] = v32;
    *&v92[2] = v73;
    *&v92[3] = v91;
    v79 = [MEMORY[0x277CCAE60] valueWithBytes:v92 objCType:"{UIEdgeInsets=dddd}"];
    [(NSMapTable *)windowSceneToWindowMarginsMap setObject:v79 forKey:sceneCopy];

    v80 = [(SBPIPController *)self _leadingWindowForWindowScene:sceneCopy];
    LOBYTE(windowSceneToWindowMarginsMap) = v80 == 0;

    if ((windowSceneToWindowMarginsMap & 1) == 0)
    {
      [(SBPIPController *)self _updateContainerViewControllersContentPaddingOnWindowScene:sceneCopy];
    }
  }

  objc_destroyWeak(&v107);
  objc_destroyWeak(&v106);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v81 = v55;
  v82 = v32;
  v83 = v73;
  v84 = v91;
  result.right = v84;
  result.bottom = v83;
  result.left = v82;
  result.top = v81;
  return result;
}

void __141__SBPIPController__updatePictureInPictureOverlayInsetsOnWindowScene_withCurrentLayoutState_toHomeScreen_toInterfaceOrientation_shouldUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    [v2 _edgeInsetsForSource:5 onWindowScene:WeakRetained exists:0];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 _keyboardInsetsForWindowScene:WeakRetained];
    v15 = v6 == v14 && v4 == v11;
    v16 = v15 && v10 == v13;
    if (!v16 || v8 != v12)
    {
      [v2 _edgeInsetsDidChangeOnWindowScene:WeakRetained];
    }
  }
}

- (void)_keyboardWillChangeFrame:(id)frame
{
  userInfo = [frame userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D76BF0]];
  bOOLValue = [v5 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    windowSceneManager = [(SBPIPController *)self windowSceneManager];
    embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
    [(SBPIPController *)self _edgeInsetsDidChangeOnWindowScene:embeddedDisplayWindowScene];
  }
}

- (void)_keyboardWillRotate:(id)rotate
{
  windowSceneManager = [(SBPIPController *)self windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
  [(SBPIPController *)self _edgeInsetsDidChangeOnWindowScene:embeddedDisplayWindowScene];
}

- (void)_keyboardWillShowOrHide:(id)hide
{
  userInfo = [hide userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D76BF0]];
  bOOLValue = [v5 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    windowSceneManager = [(SBPIPController *)self windowSceneManager];
    embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
    [(SBPIPController *)self _edgeInsetsDidChangeOnWindowScene:embeddedDisplayWindowScene];
  }
}

- (void)_updateContainerViewControllersContentPaddingOnWindowScene:(id)scene
{
  sceneCopy = scene;
  if (([(SBPIPControllerAdapter *)self->_adapter isStartingStoppingOrCancellingPictureInPictureForPIPController:self]& 1) == 0)
  {
    [(SBPIPController *)self _pictureInPictureWindowMarginsOnWindowScene:sceneCopy];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __78__SBPIPController__updateContainerViewControllersContentPaddingOnWindowScene___block_invoke;
    v9[3] = &__block_descriptor_64_e33_v24__0__SBPIPContentContext_8_B16l;
    v9[4] = v5;
    v9[5] = v6;
    v9[6] = v7;
    v9[7] = v8;
    [(SBPIPController *)self _enumerateContextsForWindowScene:sceneCopy usingBlock:v9];
  }
}

void __78__SBPIPController__updateContainerViewControllersContentPaddingOnWindowScene___block_invoke(double *a1, void *a2)
{
  v3 = [a2 containerViewController];
  [v3 setContentViewPadding:{a1[4], a1[5], a1[6], a1[7]}];
}

- (UIEdgeInsets)_pictureInPictureWindowMarginsOnWindowScene:(id)scene
{
  sceneCopy = scene;
  v5 = [(NSMapTable *)self->_windowSceneToInsetAssertionMap objectForKey:sceneCopy];
  context = [v5 context];
  v7 = [context count];

  if (v7)
  {
    [(SBPIPController *)self _edgeInsetsForSource:5 onWindowScene:sceneCopy exists:0];
    [(SBPIPController *)self _edgeInsetsForSource:10 onWindowScene:sceneCopy exists:0];
    UIEdgeInsetsMax();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v16 = [(NSMapTable *)self->_windowSceneToWindowMarginsMap objectForKey:sceneCopy];
    [v16 UIEdgeInsetsValue];
    v9 = v17;
    v11 = v18;
    v13 = v19;
    v15 = v20;
  }

  v21 = v9;
  v22 = v11;
  v23 = v13;
  v24 = v15;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (BOOL)_isContentViewAlignedLeftWithPosition:(unint64_t)position orientation:(int64_t)orientation
{
  if (position)
  {
    v4 = position == 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  v6 = position < 2;
  if (orientation != 1)
  {
    v6 = 0;
  }

  if (orientation != 3)
  {
    v5 = v6;
  }

  if (orientation == 4)
  {
    return position - 1 < 2;
  }

  else
  {
    return v5;
  }
}

- (BOOL)_isContentViewAlignedTopWithPosition:(unint64_t)position orientation:(int64_t)orientation
{
  v4 = (position & 0xFFFFFFFFFFFFFFFELL) == 2;
  if (position)
  {
    v5 = position == 3;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  if (orientation != 1)
  {
    v6 = 0;
  }

  if (orientation != 3)
  {
    v4 = v6;
  }

  if (orientation == 4)
  {
    return position < 2;
  }

  else
  {
    return v4;
  }
}

- (CGRect)homeScreenInitialPIPFrameForWindowScene:(id)scene withContentViewSize:(CGSize)size position:(unint64_t)position padding:(double)padding fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation shouldUpdate:(BOOL)update gestureInitiated:(BOOL)self0
{
  initiatedCopy = initiated;
  updateCopy = update;
  v95 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  pictureInPictureManager = [sceneCopy pictureInPictureManager];
  [pictureInPictureManager _updateFloatingDockInsetsWithoutNotifyingControllers];

  homeScreenController = [sceneCopy homeScreenController];
  homeScreenViewController = [homeScreenController homeScreenViewController];

  -[SBPIPController _updatePictureInPictureOverlayInsetsOnWindowScene:withCurrentLayoutState:toHomeScreen:toInterfaceOrientation:shouldUpdate:](self, "_updatePictureInPictureOverlayInsetsOnWindowScene:withCurrentLayoutState:toHomeScreen:toInterfaceOrientation:shouldUpdate:", sceneCopy, 0, 1, [homeScreenViewController interfaceOrientation], updateCopy);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  statusBarManager = [sceneCopy statusBarManager];
  [statusBarManager statusBarFrame];
  Height = CGRectGetHeight(v96);

  v31 = v26 + padding;
  v78 = v28 + padding;
  v79 = v24 + padding;
  v32 = fmax(v22 + padding, Height);
  if (BSFloatEqualToFloat())
  {
    orientationCopy = 1;
  }

  else
  {
    orientationCopy = orientation;
  }

  v34 = [(SBPIPController *)self _isContentViewAlignedLeftWithPosition:position orientation:orientationCopy];
  v35 = [(SBPIPController *)self _isContentViewAlignedTopWithPosition:position orientation:orientationCopy];
  screen = [sceneCopy screen];
  [screen bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v97.origin.x = v38;
  v97.origin.y = v40;
  v97.size.width = v42;
  v97.size.height = v44;
  Width = CGRectGetWidth(v97);
  v98.origin.x = v38;
  v98.origin.y = v40;
  v98.size.width = v42;
  v98.size.height = v44;
  v46 = CGRectGetHeight(v98);
  v47 = SBLogPIP();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    v99.top = v32;
    v99.right = v78;
    v99.left = v79;
    v99.bottom = v31;
    v77 = NSStringFromUIEdgeInsets(v99);
    v76 = SBFStringForBSInterfaceOrientation();
    v75 = SBFStringForBSInterfaceOrientation();
    v68 = SBFStringForBSInterfaceOrientation();
    v100.origin.x = v38;
    v100.origin.y = v40;
    v100.size.width = v42;
    v100.size.height = v44;
    NSStringFromCGRect(v100);
    *buf = 138544898;
    v82 = v77;
    v83 = 2114;
    v84 = v76;
    v85 = 2114;
    v86 = v75;
    v87 = 2114;
    v88 = v68;
    v89 = 1024;
    v90 = v34;
    v91 = 1024;
    v92 = v35;
    v94 = v93 = 2114;
    v69 = v94;
    _os_log_debug_impl(&dword_21ED4E000, v47, OS_LOG_TYPE_DEBUG, "-homeScreenInitialPIPFrameForWindowScene inputs: windowInsets[%{public}@] fromOrientation[%{public}@] toOrientation[%{public}@] orientation[%{public}@] isContentViewAlignedLeft[%{BOOL}u] isContentViewAlignedTop[%{BOOL}u] homeScreenbounds[%{public}@]", buf, 0x40u);
  }

  if (toOrientation == orientation)
  {
    v49 = size.width;
    v48 = size.height;
LABEL_8:
    if (v34)
    {
      v50 = v79;
    }

    else
    {
      v50 = Width - v49 - v78;
    }

    if (v35)
    {
      v51 = v32;
    }

    else
    {
      v51 = v46 - v48 - v31;
    }

    goto LABEL_46;
  }

  v49 = size.width;
  v48 = size.height;
  v52 = size.width * 0.5;
  v53 = size.height * 0.5;
  if (!initiatedCopy)
  {
    if (orientation == 3)
    {
      v64 = v52 - v53;
      v65 = Width - v52 - v53;
      v66 = v32 - v64;
      v67 = v46 - size.height - v64 - v31;
      if (v34)
      {
        v50 = v66;
      }

      else
      {
        v50 = v67;
      }

      if (v35)
      {
        v51 = v78 + v65 - (Width - size.width);
        goto LABEL_46;
      }

      v70 = v79;
    }

    else
    {
      if (orientation != 4)
      {
        goto LABEL_8;
      }

      v60 = v46 - v52 - v53;
      v61 = v53 - v52;
      v62 = v31 + v60 - (v46 - size.height);
      v63 = v60 - v32;
      if (v34)
      {
        v50 = v62;
      }

      else
      {
        v50 = v63;
      }

      if (v35)
      {
        v51 = v79 - v61;
        goto LABEL_46;
      }

      v65 = Width - size.width - v61;
      v70 = v78;
    }

    v51 = v65 - v70;
    goto LABEL_46;
  }

  if (orientation == 3)
  {
    v55 = v53 + v32;
    if (!v34)
    {
      v55 = v42 - v31 - v53;
    }

    v57 = v52 + v78;
    if (!v35)
    {
      v57 = v44 - v79 - v52;
    }
  }

  else
  {
    v54 = v42 - v78 - size.width;
    if (v34)
    {
      v54 = v79;
    }

    v55 = v52 + v54;
    v56 = v44 - v31 - size.height;
    if (v35)
    {
      v56 = v32;
    }

    v57 = v53 + v56;
    v58 = v53 + v31;
    if (!v34)
    {
      v58 = v42 - v32 - v53;
    }

    v59 = v52 + v79;
    if (!v35)
    {
      v59 = v44 - v78 - v52;
    }

    if (orientation == 4)
    {
      v57 = v59;
      v55 = v58;
    }
  }

  v50 = v55 - v52;
  v51 = v57 - v53;
LABEL_46:

  v71 = v50;
  v72 = v51;
  v73 = v49;
  v74 = v48;
  result.size.height = v74;
  result.size.width = v73;
  result.origin.y = v72;
  result.origin.x = v71;
  return result;
}

- (id)anyContentViewPresentedOnWindowScene:(id)scene
{
  sceneCopy = scene;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__137;
  v12 = __Block_byref_object_dispose__137;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SBPIPController_anyContentViewPresentedOnWindowScene___block_invoke;
  v7[3] = &unk_2783C32B0;
  v7[4] = &v8;
  [(SBPIPController *)self _enumerateContextsForWindowScene:sceneCopy usingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __56__SBPIPController_anyContentViewPresentedOnWindowScene___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 containerViewController];
  v6 = [v5 viewIfLoaded];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a3 = 1;
}

- (void)_minimumStashedPaddingDidChangeOnWindowScene:(id)scene
{
  sceneCopy = scene;
  pictureInPictureManager = [sceneCopy pictureInPictureManager];
  [pictureInPictureManager _minimumStashedPadding];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__SBPIPController__minimumStashedPaddingDidChangeOnWindowScene___block_invoke;
  v14[3] = &__block_descriptor_64_e33_v24__0__SBPIPContentContext_8_B16l;
  v14[4] = v7;
  v14[5] = v9;
  v14[6] = v11;
  v14[7] = v13;
  [(SBPIPController *)self _enumerateContextsForWindowScene:sceneCopy usingBlock:v14];
}

void __64__SBPIPController__minimumStashedPaddingDidChangeOnWindowScene___block_invoke(double *a1, void *a2)
{
  v3 = [a2 containerViewController];
  [v3 setStashedPadding:{a1[4], a1[5], a1[6], a1[7]}];
}

- (void)keyboardFocusController:(id)controller externalSceneDidAcquireFocus:(id)focus
{
  v5 = SBApp;
  focusCopy = focus;
  windowSceneManager = [v5 windowSceneManager];
  identifier = [focusCopy identifier];

  v13 = [windowSceneManager windowSceneForSceneIdentifier:identifier];

  v9 = v13;
  if (v13)
  {
    switcherController = [v13 switcherController];
    if (!switcherController)
    {
      v11 = SBLogCommon();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);

      if (v12)
      {
        NSLog(&cfstr_ExpectedASwitc.isa);
      }
    }

    self->_unlockedEnvironmentModeWhenKeyboardFocusChanged = [switcherController unlockedEnvironmentMode];

    v9 = v13;
  }
}

- (void)containerViewControllerDidBeginInteraction:(id)interaction
{
  interactionCopy = interaction;
  if (![(SBPIPController *)self contentType])
  {
    view = [interactionCopy view];
    [view setClipsToBounds:0];
    _sbWindowScene = [view _sbWindowScene];
    _fbsDisplayIdentity = [_sbWindowScene _fbsDisplayIdentity];
    isContinuityDisplay = [_fbsDisplayIdentity isContinuityDisplay];

    displayPortalManager = [SBApp displayPortalManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__SBPIPController_containerViewControllerDidBeginInteraction___block_invoke;
    v10[3] = &__block_descriptor_33_e23_B16__0__SBWindowScene_8l;
    v11 = isContinuityDisplay;
    [displayPortalManager createPortalsForSourceView:view usingTraitsRole:@"SBTraitsParticipantRolePictureInPicture" onWindowScenesPassingTest:v10];
  }
}

BOOL __62__SBPIPController_containerViewControllerDidBeginInteraction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _fbsDisplayIdentity];
  v4 = [v3 isContinuityDisplay];

  return *(a1 + 32) == v4;
}

- (void)containerViewControllerDidEndInteraction:(id)interaction targetWindowScene:(id)scene
{
  interactionCopy = interaction;
  sceneCopy = scene;
  if (![(SBPIPController *)self contentType])
  {
    view = [interactionCopy view];
    [view setClipsToBounds:1];
    displayPortalManager = [SBApp displayPortalManager];
    [displayPortalManager destroyPortalsForSourceView:view];

    v9 = [(NSMapTable *)self->_containerViewControllerToContextMap objectForKey:interactionCopy];
    windowScene = [v9 windowScene];
    if (windowScene != sceneCopy)
    {
      [(SBPIPController *)self _moveContext:v9 toWindowScene:sceneCopy];
    }

    if ([sceneCopy isMainDisplayWindowScene])
    {
      [(SBPIPController *)self _edgeInsetsDidChangeOnWindowScene:sceneCopy];
    }
  }
}

- (id)dataSourceForMorphAnimatorController:(id)controller
{
  if ((*(self + 280) & 0x40) != 0)
  {
    v5 = [(SBPIPControllerAdapter *)self->_adapter pipController:self morphAnimatorDataSourceForMorphAnimatorController:controller, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior
{
  if (self->_hasIdleTimerBehaviors)
  {
    +[SBIdleTimerBehavior disabledBehavior];
  }

  else
  {
    +[SBIdleTimerBehavior autoLockBehavior];
  }
  v3 = ;

  return v3;
}

- (SBWindowSceneManager)windowSceneManager
{
  WeakRetained = objc_loadWeakRetained(&self->_windowSceneManager);

  return WeakRetained;
}

- (void)addContainerViewController:(uint64_t)a3 dataSource:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBPIPController.m" lineNumber:796 description:{@"call to addContainerViewController: for a containerViewController whose contentViewController is already contained by some other controller. Passed containerViewController: %@ Preexisting containerViewController: %@", a3, a4}];
}

- (void)addContainerViewController:(uint64_t)a1 dataSource:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPIPController.m" lineNumber:826 description:@"Following -_createNewWindowForContainerViewController: we expect a non-nil context matching the provided window scene"];
}

- (void)restoreContentViewController:(uint64_t)a3 appSceneEntity:morphAnimatorConfigurationBlock:completion:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBPIPController.m" lineNumber:990 description:{@"An SBPIPMorphAnimatorController for pid %ui is already running, can't create new one.", a3}];
}

void __106__SBPIPController_restoreContentViewController_appSceneEntity_morphAnimatorConfigurationBlock_completion___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Canceling %{public}@ because it failed to complete animation", &v3, 0xCu);
}

- (void)_edgeInsetsDidChangeOnWindowScene:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[SBPIPController _edgeInsetsDidChangeOnWindowScene:]";
  v4 = 1024;
  v5 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "insets: %s ignoring update: %{BOOL}u", &v2, 0x12u);
}

@end