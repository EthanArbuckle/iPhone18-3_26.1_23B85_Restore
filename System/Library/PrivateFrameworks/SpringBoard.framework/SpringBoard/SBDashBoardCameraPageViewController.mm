@interface SBDashBoardCameraPageViewController
- (BOOL)_passesHasVisibleWindowTest;
- (BOOL)_shouldCancelInteractiveDismissGesture;
- (BOOL)_shouldPrelaunchOnSwipe;
- (BOOL)_shouldPrewarmOnSwipe;
- (BOOL)canHostAnApp;
- (BOOL)dashBoardHostedAppViewController:(id)controller shouldTransitionToMode:(int64_t)mode;
- (BOOL)handleEvent:(id)event;
- (BOOL)homeGestureInteraction:(id)interaction shouldBeginGestureRecognizerOfType:(int64_t)type;
- (BOOL)isHostingAnApp;
- (CGPoint)_convertTranslationFromContainerOrientationToContentOrientation:(CGPoint)orientation;
- (NSSet)actionsToDeliver;
- (SBDashBoardCameraPageViewControllerDelegate)cameraPageDelegate;
- (double)_prelaunchThreshold;
- (double)_prewarmThreshold;
- (id)_hostedContentModeDescription;
- (id)_prewarmingCameraBundleIdentifier;
- (id)_traitsArbiter;
- (id)customScreenEdgePanGestureRecognizerForHomeGestureInteraction:(id)interaction;
- (id)hostedAppSceneHandle;
- (id)hostedAppSceneHandles;
- (id)requestedDismissalSettings;
- (int64_t)_sbAnimationUpdateModeForCoverSheetTransitionMode:(int64_t)mode;
- (unint64_t)homeGestureInteraction:(id)interaction systemGestureTypeForType:(int64_t)type;
- (void)_acquireTraitsParticipantIfNeeded;
- (void)_addOrRemoveGestureForCurrentSettings;
- (void)_bailIfFaceTimeCallComesIn;
- (void)_coolCameraIfNecessary;
- (void)_createProperties;
- (void)_endPrewarmBackoffPeriod;
- (void)_ensureZStackParticipant;
- (void)_handlePrelaunchForTransitionToVisible:(BOOL)visible mode:(int64_t)mode;
- (void)_handlePrewarmForTransitionToVisible:(BOOL)visible mode:(int64_t)mode;
- (void)_invalidateCameraTraitsParticipant;
- (void)_invalidateZStackParticipantIfNeeded;
- (void)_makeApplicationStatic;
- (void)_noteUserLaunchEventTime;
- (void)_prepareForInteractiveGestureToCameraVisible:(BOOL)visible;
- (void)_prewarmCameraInteractively:(BOOL)interactively;
- (void)_relinquishHiddenAssertionForHomeGrabber:(id)grabber;
- (void)_requestHomeGestureOwnership;
- (void)_resetAfterInteractiveGestureToCameraVisible:(BOOL)visible;
- (void)_resetHostedEntityToDefault;
- (void)_setSceneGrabberHidden:(BOOL)hidden;
- (void)_takeHiddenAssertionForHomeGrabber:(id)grabber;
- (void)_transitionAppViewWithProgress:(double)progress transitionMode:(int64_t)mode;
- (void)_updateCameraScale:(double)scale dimmingAlpha:(double)alpha transitionMode:(int64_t)mode;
- (void)_updateCameraScale:(double)scale transitionMode:(int64_t)mode;
- (void)_updateDimmingAlpha:(double)alpha transitionMode:(int64_t)mode;
- (void)_updateForPropertyChangedForPresentation:(BOOL)presentation;
- (void)_updateZStackPolicyAssistants;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)didTransitionToVisible:(BOOL)visible;
- (void)handleAction:(id)action fromSender:(id)sender;
- (void)homeGestureInteractionChanged:(id)changed;
- (void)homeGestureInteractionEnded:(id)ended;
- (void)homeGrabberViewDidReceiveClick:(id)click;
- (void)hostableEntityPresenter:(id)presenter didBeginHosting:(id)hosting;
- (void)hostableEntityPresenter:(id)presenter didEndHosting:(id)hosting;
- (void)hostableEntityPresenter:(id)presenter didFailToActivate:(id)activate;
- (void)hostedAppWillRotateToInterfaceOrientation:(int64_t)orientation;
- (void)loadView;
- (void)noteDefaultHostableEntityMayHaveChanged;
- (void)sceneHandle:(id)handle didCreateScene:(id)scene;
- (void)sceneHandle:(id)handle didDestroyScene:(id)scene;
- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings;
- (void)setActionsToDeliver:(id)deliver;
- (void)setCameraPageDelegate:(id)delegate;
- (void)setHostedEntity:(id)entity;
- (void)setWantsHomeGestureOwnership:(BOOL)ownership;
- (void)updateTransitionToVisible:(BOOL)visible progress:(double)progress mode:(int64_t)mode;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillMoveToWindow:(id)window;
- (void)willTransitionToVisible:(BOOL)visible;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
@end

@implementation SBDashBoardCameraPageViewController

- (BOOL)isHostingAnApp
{
  appViewController = self->_appViewController;
  if (!appViewController)
  {
    appViewController = self->_hostedEntityViewController;
  }

  return [appViewController isHostingAnApp];
}

- (void)_updateZStackPolicyAssistants
{
  v22[1] = *MEMORY[0x277D85DE8];
  hostedEntityViewController = self->_hostedEntityViewController;
  if (hostedEntityViewController)
  {
    sceneHandleForTraitsParticipant = [(CSHostedEntityViewController *)hostedEntityViewController sceneHandleForTraitsParticipant];
    if (sceneHandleForTraitsParticipant)
    {
      v5 = objc_opt_class();
      v6 = sceneHandleForTraitsParticipant;
      if (v5)
      {
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
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

      homeGrabberView = v7;

      if (homeGrabberView)
      {
        homeGrabberViewForTraitsParticipant = [(CSHostedEntityViewController *)self->_hostedEntityViewController homeGrabberViewForTraitsParticipant];
        [(SBSystemApertureZStackPolicyAssistant *)self->_systemApertureZStackPolicyAssistant setForegroundExclusiveSceneHandle:homeGrabberView homeGrabberView:homeGrabberViewForTraitsParticipant];
      }

      v22[0] = v6;
      v16 = v22;
    }

    else
    {
      sceneForTraitsParticipant = [(CSHostedEntityViewController *)self->_hostedEntityViewController sceneForTraitsParticipant];
      homeGrabberView = sceneForTraitsParticipant;
      if (!sceneForTraitsParticipant)
      {
        v19 = 0;
        goto LABEL_27;
      }

      v21 = sceneForTraitsParticipant;
      v16 = &v21;
    }

    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  else
  {
    sceneHandleForTraitsParticipant = [(SBDashBoardHostedAppViewController *)self->_appViewController appView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      appViewController = self->_appViewController;
      v9 = sceneHandleForTraitsParticipant;
      applicationSceneHandle = [(SBDashBoardHostedAppViewController *)appViewController applicationSceneHandle];
      v11 = objc_opt_class();
      v12 = applicationSceneHandle;
      if (v11)
      {
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v17 = v13;

      homeGrabberView = [v9 homeGrabberView];
    }

    else
    {
      v17 = 0;
      homeGrabberView = 0;
    }

    [(SBSystemApertureZStackPolicyAssistant *)self->_systemApertureZStackPolicyAssistant setForegroundExclusiveSceneHandle:v17 homeGrabberView:homeGrabberView];
    if (v17)
    {
      v20 = v17;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    }

    else
    {
      v19 = 0;
    }
  }

LABEL_27:

  [(SBZStackForegroundSceneOrderedPolicyAssistant *)self->_audioCategoryZStackPolicyAssistant setForegroundScenes:v19];
  [(SBZStackForegroundSceneOrderedPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant setForegroundScenes:v19];
}

void __56__SBDashBoardCameraPageViewController__createProperties__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateForPropertyChangedForPresentation:0];
}

- (void)_bailIfFaceTimeCallComesIn
{
  v3 = +[SBConferenceManager sharedInstance];
  inFaceTime = [v3 inFaceTime];

  if (inFaceTime)
  {

    [(CSCoverSheetViewControllerBase *)self dismiss];
  }
}

- (void)_makeApplicationStatic
{
  [(SBDashBoardHostedAppViewController *)self->_appViewController setMode:1];
  hostedEntityViewController = self->_hostedEntityViewController;

  [(CSHostedEntityViewController *)hostedEntityViewController setHostableEntityContentMode:1];
}

void __56__SBDashBoardCameraPageViewController__createProperties__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateForPropertyChangedForPresentation:1];
}

- (void)_coolCameraIfNecessary
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (self->_hasWarmedCameraForThisPresentation)
  {
    if (!self->_cameraPrewarmSucceeded)
    {
      mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
      [mEMORY[0x277D65DD0] emitEvent:45];
    }

    _prewarmingCameraBundleIdentifier = [(SBDashBoardCameraPageViewController *)self _prewarmingCameraBundleIdentifier];
    v7 = *MEMORY[0x277CE5908];
    v8[0] = *MEMORY[0x277CE58F0];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    MEMORY[0x223D6A9B0](_prewarmingCameraBundleIdentifier, v5);
  }

  [(NSTimer *)self->_prewarmCancelTimer invalidate];
  prewarmCancelTimer = self->_prewarmCancelTimer;
  self->_prewarmCancelTimer = 0;

  [(SBDashBoardCameraPageViewController *)self _makeApplicationStatic];
  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
}

- (id)requestedDismissalSettings
{
  v2 = MEMORY[0x277CF0CF0];
  v3 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  v4 = [v2 settingsWithMass:v3 stiffness:1.0 damping:236.82201 epsilon:30.77804 timingFunction:0.01];
  v5 = [v4 mutableCopy];

  v8 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v5 setPreferredFrameRateRange:{*&v8.minimum, *&v8.maximum, *&v8.preferred}];
  [v5 setHighFrameRateReason:1114127];

  return v5;
}

- (NSSet)actionsToDeliver
{
  actionsToDeliver = [(SBDashBoardHostedAppViewController *)self->_appViewController actionsToDeliver];
  v4 = actionsToDeliver;
  if (actionsToDeliver)
  {
    actionsToDeliverToHostableEntity = actionsToDeliver;
  }

  else
  {
    actionsToDeliverToHostableEntity = [(CSHostedEntityViewController *)self->_hostedEntityViewController actionsToDeliverToHostableEntity];
  }

  v6 = actionsToDeliverToHostableEntity;

  return v6;
}

- (void)setActionsToDeliver:(id)deliver
{
  appViewController = self->_appViewController;
  deliverCopy = deliver;
  [(SBDashBoardHostedAppViewController *)appViewController setActionsToDeliver:deliverCopy];
  [(CSHostedEntityViewController *)self->_hostedEntityViewController setActionsToDeliverToHostableEntity:deliverCopy];
}

- (void)setHostedEntity:(id)entity
{
  entityCopy = entity;
  if (self->_hostedEntity != entityCopy)
  {
    v6 = entityCopy;
    objc_storeStrong(&self->_hostedEntity, entity);
    [(CSHostedEntityViewController *)self->_hostedEntityViewController setHostedEntity:self->_hostedEntity];
    entityCopy = v6;
  }
}

- (void)setCameraPageDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_cameraPageDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_cameraPageDelegate, obj);
    [(SBDashBoardCameraPageViewController *)self _resetHostedEntityToDefault];
    v5 = obj;
  }
}

- (void)noteDefaultHostableEntityMayHaveChanged
{
  if ([(CSCoverSheetViewControllerBase *)self isDisappeared])
  {

    [(SBDashBoardCameraPageViewController *)self _resetHostedEntityToDefault];
  }
}

- (void)loadView
{
  v59.receiver = self;
  v59.super_class = SBDashBoardCameraPageViewController;
  [(CSCoverSheetViewControllerBase *)&v59 loadView];
  self->_enforcesViewWindowRequirements = 1;
  self->_canWarmRealCamera = 1;
  view = [(CSPageViewController *)self view];
  [(SBDashBoardCameraPageViewController *)self _createProperties];
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  [view bounds];
  v5 = [v4 initWithFrame:?];
  maskView = self->_maskView;
  self->_maskView = v5;

  [(UIView *)self->_maskView setClipsToBounds:1];
  v7 = self->_maskView;
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(UIView *)v7 setBackgroundColor:blackColor];

  [(UIView *)self->_maskView setAutoresizingMask:18];
  [view addSubview:self->_maskView];
  if ([SBApp lockScreenCameraSupported])
  {
    v9 = [SBDeviceApplicationSceneEntity alloc];
    v10 = +[SBApplicationController sharedInstance];
    cameraApplication = [v10 cameraApplication];
    v12 = [(SBDeviceApplicationSceneEntity *)v9 initWithApplicationForMainDisplay:cameraApplication];

    v13 = [(SBDeviceApplicationScenePlaceholderContentContext *)[SBMutableDeviceApplicationScenePlaceholderContentContext alloc] initWithActivationSettings:v12];
    [(SBDeviceApplicationScenePlaceholderContentContext *)v13 setPrefersLiveXIB:1];
    if (LCSFeatureEnabled())
    {
      hostedEntityViewController = self->_hostedEntityViewController;
      if (!hostedEntityViewController)
      {
        v15 = objc_alloc_init(MEMORY[0x277D02C18]);
        v16 = self->_hostedEntityViewController;
        self->_hostedEntityViewController = v15;

        hostedEntityViewController = self->_hostedEntityViewController;
      }

      [(CSHostedEntityViewController *)hostedEntityViewController setEntityPresenterDelegate:self];
      v17 = self->_hostedEntityViewController;
      v18 = +[SBLockScreenManager sharedInstance];
      coverSheetViewController = [v18 coverSheetViewController];
      [(CSHostedEntityViewController *)v17 setCoverSheetViewController:coverSheetViewController];

      if (SBFEffectiveHomeButtonType() == 2)
      {
        v20 = objc_alloc_init(SBHomeGrabberView);
        [(SBHomeGrabberView *)v20 setAutoHides:1];
        [(CSHostedEntityViewController *)self->_hostedEntityViewController setHomeGrabberView:v20];
      }

      v21 = [[SBDashBoardApplicationHostableEntity alloc] initWithApplicationSceneEntity:v12];
      hostedEntity = self->_hostedEntity;
      self->_hostedEntity = v21;

      [(CSHostedEntityViewController *)self->_hostedEntityViewController setHostedEntity:self->_hostedEntity];
      [(CSHostedEntityViewController *)self->_hostedEntityViewController setPresenter:self];
    }

    else
    {
      v23 = [[SBDashBoardHostedAppViewController alloc] initWithApplicationSceneEntity:v12];
      appViewController = self->_appViewController;
      self->_appViewController = v23;

      [(SBDashBoardHostedAppViewController *)self->_appViewController setPlaceholderContentContext:v13];
      [(SBDashBoardHostedAppViewController *)self->_appViewController setDelegate:self];
      [(CSCoverSheetViewControllerBase *)self->_appViewController setPresenter:self];
      applicationSceneHandle = [(SBDashBoardHostedAppViewController *)self->_appViewController applicationSceneHandle];
      [applicationSceneHandle addObserver:self];
    }

    v26 = self->_appViewController;
    if (!v26)
    {
      v26 = self->_hostedEntityViewController;
    }

    v27 = v26;
    v28 = SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheetCamera");
    v29 = v27;
    if (v28)
    {
      v30 = [[SBTraitsOrientedContentViewController alloc] initWithNibName:0 bundle:0];
      orientedContentViewController = self->_orientedContentViewController;
      self->_orientedContentViewController = v30;

      view2 = [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController view];
      view3 = [(CSPageViewController *)self view];
      [view3 bounds];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      [view2 setFrame:{v35, v37, v39, v41}];
      [view2 setContentViewBoundsInReferenceSpace:{v35, v37, v39, v41}];
      [view2 setAutoresizingMask:18];
      v42 = self->_orientedContentViewController;
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __47__SBDashBoardCameraPageViewController_loadView__block_invoke;
      v56[3] = &unk_2783A9460;
      v57 = view2;
      v58 = v27;
      v43 = view2;
      [(SBTraitsOrientedContentViewController *)v42 bs_addChildViewController:v58 animated:0 transitionBlock:v56];

      v29 = self->_orientedContentViewController;
    }

    objc_storeStrong(&self->_appViewControllerContainerVC, v29);
    view4 = [(UIViewController *)self->_appViewControllerContainerVC view];
    [view4 _setContinuousCornerRadius:SBScreenDisplayCornerRadius()];

    appViewControllerContainerVC = self->_appViewControllerContainerVC;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __47__SBDashBoardCameraPageViewController_loadView__block_invoke_2;
    v55[3] = &unk_2783AA930;
    v55[4] = self;
    [(SBDashBoardCameraPageViewController *)self bs_addChildViewController:appViewControllerContainerVC animated:0 transitionBlock:v55];
  }

  v46 = objc_alloc(MEMORY[0x277D75D18]);
  [view bounds];
  v47 = [v46 initWithFrame:?];
  tintView = self->_tintView;
  self->_tintView = v47;

  v49 = self->_tintView;
  blackColor2 = [MEMORY[0x277D75348] blackColor];
  [(UIView *)v49 setBackgroundColor:blackColor2];

  [(UIView *)self->_tintView setAutoresizingMask:18];
  [(UIView *)self->_maskView addSubview:self->_tintView];
  rootSettings = [MEMORY[0x277D02C20] rootSettings];
  prototypeSettings = self->_prototypeSettings;
  self->_prototypeSettings = rootSettings;

  v53 = objc_alloc_init(MEMORY[0x277D65FF0]);
  lockScreenDefaults = self->_lockScreenDefaults;
  self->_lockScreenDefaults = v53;
}

void __47__SBDashBoardCameraPageViewController_loadView__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) view];
  [v1 setContentView:v2];
}

void __47__SBDashBoardCameraPageViewController_loadView__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1128);
  v3 = [*(v1 + 1184) view];
  [v2 addSubview:v3];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SBDashBoardCameraPageViewController;
  [(CSCoverSheetViewControllerBase *)&v5 viewWillAppear:appear];
  v4 = +[SBReachabilityManager sharedInstance];
  [v4 setReachabilityTemporarilyDisabled:1 forReason:@"SBDashBoardCameraPageReason"];

  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheetCamera"))
  {
    [(SBDashBoardCameraPageViewController *)self _acquireTraitsParticipantIfNeeded];
  }

  if ([(SBDashBoardHostedAppViewController *)self->_appViewController mode]!= 2)
  {
    [(SBDashBoardHostedAppViewController *)self->_appViewController setMode:1];
  }

  self->_hasPendingHostedEntityGoLiveRequest = 1;
  [(SBDashBoardCameraPageViewController *)self _handlePrewarmForTransitionToVisible:1 mode:0];
  [(SBDashBoardCameraPageViewController *)self _handlePrelaunchForTransitionToVisible:1 mode:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = SBDashBoardCameraPageViewController;
  [(CSCoverSheetViewControllerBase *)&v8 viewDidAppear:appear];
  accidentalActivationMitigationSessionCoordinator = [SBApp accidentalActivationMitigationSessionCoordinator];
  [accidentalActivationMitigationSessionCoordinator addObserver:self];

  [(SBDashBoardCameraPageViewController *)self _ensureZStackParticipant];
  [(SBDashBoardCameraPageViewController *)self _addOrRemoveGestureForCurrentSettings];
  [(SBDashBoardCameraPageViewController *)self _updateZStackPolicyAssistants];
  v5 = +[SBKeyboardFocusCoordinator sharedInstance];
  _sbWindowScene = [(UIViewController *)self _sbWindowScene];
  v7 = +[SBKeyboardFocusArbitrationReason quickCameraDidAppear];
  [v5 requestArbitrationForSBWindowScene:_sbWindowScene forReason:v7];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBDashBoardCameraPageViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillDisappear:disappear];
  [(SBDashBoardCameraPageViewController *)self setWantsHomeGestureOwnership:0];
  [(SBDashBoardCameraPageViewController *)self _addOrRemoveGestureForCurrentSettings];
  [(SBDashBoardCameraPageViewController *)self _invalidateZStackParticipantIfNeeded];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(CSHostedEntityViewController *)self->_hostedEntityViewController setHostableEntityContentMode:1];
  v7.receiver = self;
  v7.super_class = SBDashBoardCameraPageViewController;
  [(CSCoverSheetViewControllerBase *)&v7 viewDidDisappear:disappearCopy];
  accidentalActivationMitigationSessionCoordinator = [SBApp accidentalActivationMitigationSessionCoordinator];
  [accidentalActivationMitigationSessionCoordinator removeObserver:self];

  [(SBDashBoardCameraPageViewController *)self _resetHostedEntityToDefault];
  [(SBDashBoardCameraPageViewController *)self _invalidateCameraTraitsParticipant];
  v6 = +[SBReachabilityManager sharedInstance];
  [v6 setReachabilityTemporarilyDisabled:0 forReason:@"SBDashBoardCameraPageReason"];
}

- (void)viewWillMoveToWindow:(id)window
{
  if (!window)
  {
    [(SBDashBoardHostedAppViewController *)self->_appViewController setMode:1];
    hostedEntityViewController = self->_hostedEntityViewController;

    [(CSHostedEntityViewController *)hostedEntityViewController setHostableEntityContentMode:1];
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v17 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  v12.receiver = self;
  v12.super_class = SBDashBoardCameraPageViewController;
  [(SBDashBoardCameraPageViewController *)&v12 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (windowCopy)
  {
    v7 = SBLogDashBoard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      _hostedContentModeDescription = [(SBDashBoardCameraPageViewController *)self _hostedContentModeDescription];
      *buf = 138412546;
      v14 = windowCopy;
      v15 = 2112;
      v16 = _hostedContentModeDescription;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "View did move to window: %@, with mode: %@", buf, 0x16u);
    }
  }

  else
  {
    [(SBDashBoardHostedAppViewController *)self->_appViewController setMode:1];
    [(CSHostedEntityViewController *)self->_hostedEntityViewController setHostableEntityContentMode:1];
    orientedContentViewController = self->_orientedContentViewController;
    v10 = objc_opt_class();
    v7 = SBSafeCast(v10, 0);
    traitsParticipant = [v7 traitsParticipant];
    [(SBTraitsOrientedContentViewController *)orientedContentViewController setContainerParticipant:traitsParticipant];
  }
}

- (void)willTransitionToVisible:(BOOL)visible
{
  visibleCopy = visible;
  v6.receiver = self;
  v6.super_class = SBDashBoardCameraPageViewController;
  [(CSPageViewController *)&v6 willTransitionToVisible:?];
  view = [(UIViewController *)self->_appViewControllerContainerVC view];
  [view setClipsToBounds:1];

  if (visibleCopy)
  {
    self->_hasWarmedCameraForThisPresentation = 0;
    self->_cameraPrewarmSucceeded = 0;
    self->_cameraPresentLargestPercent = 0;
  }
}

- (void)updateTransitionToVisible:(BOOL)visible progress:(double)progress mode:(int64_t)mode
{
  visibleCopy = visible;
  v9.receiver = self;
  v9.super_class = SBDashBoardCameraPageViewController;
  [CSPageViewController updateTransitionToVisible:sel_updateTransitionToVisible_progress_mode_ progress:? mode:?];
  if (!visibleCopy)
  {
    progress = 1.0 - progress;
  }

  self->_presentationProgress = progress;
  [(SBDashBoardCameraPageViewController *)self _transitionAppViewWithProgress:mode transitionMode:progress];
  self->_cameraPresentLargestPercent = vcvtmd_s64_f64(progress * 100.0);
  [(SBDashBoardCameraPageViewController *)self _handlePrewarmForTransitionToVisible:visibleCopy mode:mode];
  [(SBDashBoardCameraPageViewController *)self _handlePrelaunchForTransitionToVisible:visibleCopy mode:mode];
  if (!visibleCopy)
  {
    if (BSFloatIsOne())
    {
      [(SBDashBoardCameraPageViewController *)self _makeApplicationStatic];
    }
  }
}

- (void)_handlePrewarmForTransitionToVisible:(BOOL)visible mode:(int64_t)mode
{
  visibleCopy = visible;
  _shouldPrewarmOnSwipe = [(SBDashBoardCameraPageViewController *)self _shouldPrewarmOnSwipe];
  [(SBDashBoardCameraPageViewController *)self _prewarmThreshold];
  if (visibleCopy && _shouldPrewarmOnSwipe && BSFloatGreaterThanOrEqualToFloat() && [(SBDashBoardCameraPageViewController *)self _passesHasVisibleWindowTest]&& !self->_hasWarmedCameraForThisPresentation)
  {
    v8 = SBLogDashBoard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Prewarming Camera for swipe.", v9, 2u);
    }

    [(SBDashBoardCameraPageViewController *)self _prewarmCameraInteractively:mode == 3];
    self->_hasWarmedCameraForThisPresentation = 1;
    self->_cameraPrewarmSucceeded = 0;
  }
}

- (void)_handlePrelaunchForTransitionToVisible:(BOOL)visible mode:(int64_t)mode
{
  visibleCopy = visible;
  v19 = *MEMORY[0x277D85DE8];
  v7 = [(CSHostedEntityViewController *)self->_hostedEntityViewController hostableEntityContentMode:visible];
  _shouldPrelaunchOnSwipe = [(SBDashBoardCameraPageViewController *)self _shouldPrelaunchOnSwipe];
  [(SBDashBoardCameraPageViewController *)self _prelaunchThreshold];
  if (visibleCopy && _shouldPrelaunchOnSwipe && BSFloatGreaterThanOrEqualToFloat())
  {
    if ([(SBDashBoardCameraPageViewController *)self _passesHasVisibleWindowTest])
    {
      if (self->_hostedEntityViewController)
      {
        if (!self->_hasPendingHostedEntityGoLiveRequest && v7 == 2)
        {
          return;
        }

        self->_hasPendingHostedEntityGoLiveRequest = 0;
        [(SBDashBoardCameraPageViewController *)self _noteUserLaunchEventTime];
        [(CSHostedEntityViewController *)self->_hostedEntityViewController setHostableEntityContentMode:2];
      }

      else
      {
        if ([(SBDashBoardHostedAppViewController *)self->_appViewController mode]== 2)
        {
          return;
        }

        [(SBDashBoardCameraPageViewController *)self _noteUserLaunchEventTime];
        [(SBDashBoardHostedAppViewController *)self->_appViewController setMode:2];
      }

      mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
      [mEMORY[0x277D65DD0] emitEvent:44];
    }

    else
    {
      v9 = +[SBPlatformController sharedInstance];
      isInternalInstall = [v9 isInternalInstall];

      if (isInternalInstall)
      {
        [(SBDashBoardCameraPageViewController *)self _handlePrelaunchForTransitionToVisible:a2 mode:?];
      }

      v11 = SBLogDashBoard();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        appViewController = self->_appViewController;
        if (!appViewController)
        {
          appViewController = self->_hostedEntityViewController;
        }

        v13 = NSStringFromSBAppViewControllerMode(2);
        *buf = 138412546;
        v16 = appViewController;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Preconditions for changing the mode of <%@> to <%@> not met. Ignoring.", buf, 0x16u);
      }
    }
  }
}

- (BOOL)_passesHasVisibleWindowTest
{
  if (self->_enforcesViewWindowRequirements)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    view = [(CSPageViewController *)self view];
    window = [view window];

    if (window)
    {
      v2 = [window isHidden] ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2;
}

- (void)didTransitionToVisible:(BOOL)visible
{
  visibleCopy = visible;
  v9.receiver = self;
  v9.super_class = SBDashBoardCameraPageViewController;
  [(CSPageViewController *)&v9 didTransitionToVisible:?];
  view = [(UIViewController *)self->_appViewControllerContainerVC view];
  [view setClipsToBounds:0];

  [(SBTraitsSceneParticipantDelegate *)self->_traitsParticipantDelegate setCanDetermineActiveOrientation:visibleCopy];
  [(TRAParticipant *)self->_traitsParticipant setNeedsUpdatePreferencesWithReason:@"did transition to visible"];
  v6 = 0.0;
  if (visibleCopy)
  {
    v6 = 1.0;
    v7 = 3;
  }

  else
  {
    v7 = 4;
  }

  [(SBDashBoardCameraPageViewController *)self _transitionAppViewWithProgress:v7 transitionMode:v6];
  [(SBDashBoardCameraPageViewController *)self _resetAfterInteractiveGestureToCameraVisible:visibleCopy];
  if (visibleCopy)
  {
    self->_cameraPrewarmSucceeded = 1;
    self->_cameraPresentLargestPercent = 100;
    [(NSTimer *)self->_prewarmCancelTimer invalidate];
    prewarmCancelTimer = self->_prewarmCancelTimer;
    self->_prewarmCancelTimer = 0;
  }

  else
  {
    [(SBDashBoardCameraPageViewController *)self _makeApplicationStatic];
  }
}

- (void)_transitionAppViewWithProgress:(double)progress transitionMode:(int64_t)mode
{
  view = [(UIViewController *)self->_appViewControllerContainerVC view];
  window = [view window];
  [window center];
  [window center];
  [window convertPoint:self->_maskView toView:?];
  [view setCenter:?];
  [window bounds];
  [view setBounds:?];
  if (!self->_interactiveDismissalInProgress)
  {
    BSIntervalMap();
    v9 = v8;
    BSIntervalMap();
    [(SBDashBoardCameraPageViewController *)self _updateCameraScale:mode dimmingAlpha:v9 transitionMode:1.0 - v10, 0, 1, 0x3FF0000000000000, 1, 0x3FD6666666666666, 1, 0x3FF0000000000000, 1];
  }
}

- (void)aggregateAppearance:(id)appearance
{
  v47.receiver = self;
  v47.super_class = SBDashBoardCameraPageViewController;
  appearanceCopy = appearance;
  [(CSPageViewController *)&v47 aggregateAppearance:appearanceCopy];
  v5 = objc_opt_new();
  v6 = [v5 priority:10];
  v7 = [v6 suppressHorizontalBounce:0];
  [appearanceCopy addComponent:v7];

  dateView = [MEMORY[0x277D02BC8] dateView];
  v9 = [dateView priority:10];
  v10 = [v9 hidden:1];
  [appearanceCopy addComponent:v10];

  wallpaper = [MEMORY[0x277D02BC8] wallpaper];
  v12 = [wallpaper priority:10];
  v13 = [v12 hidden:0];
  [appearanceCopy addComponent:v13];

  v14 = objc_opt_new();
  v15 = [v14 priority:10];
  appearanceIdentifier = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
  v17 = [v15 identifier:appearanceIdentifier];
  v18 = [v17 suppressTeachableMomentsAnimation:1];
  v19 = [v18 hidden:1];
  [appearanceCopy addComponent:v19];

  v20 = objc_opt_new();
  v21 = [v20 priority:10];
  v22 = [v21 optOutOfAlphaFadesForPageScroll:1];
  v23 = [v22 hidden:1];
  [appearanceCopy addComponent:v23];

  v24 = objc_opt_new();
  v25 = [v24 priority:10];
  v26 = [v25 shouldMatchMove:0];
  [appearanceCopy addComponent:v26];

  [(SBDashBoardCameraPageViewController *)self _setSceneGrabberHidden:[(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture]^ 1];
  v27 = objc_opt_new();
  v28 = [v27 priority:10];
  v29 = [v28 hidden:1];
  v30 = [v29 fakeStatusBar:BSSettingFlagForBool()];
  v31 = [v30 fakeStatusBarLevel:&unk_2833701F0];

  [appearanceCopy addComponent:v31];
  [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  CSComponentTransitionInputsMake();
  slideableContent = [MEMORY[0x277D02BC8] slideableContent];
  v33 = [slideableContent priority:10];
  v34 = [v33 transitionModifiers:8];
  memset(v46, 0, sizeof(v46));
  v35 = [v34 transitionInputs:v46];
  [appearanceCopy addComponent:v35];

  tinting = [MEMORY[0x277D02BC8] tinting];
  v37 = [tinting priority:10];

  [v37 setHidden:0];
  [appearanceCopy addComponent:v37];
  v38 = objc_opt_new();
  v39 = [v38 priority:10];
  appearanceIdentifier2 = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
  v41 = [v39 identifier:appearanceIdentifier2];

  v42 = [v41 showBackgroundWhileTransitioning:0];

  [v42 setHidden:0];
  [appearanceCopy addComponent:v42];
  v43 = objc_opt_new();
  v44 = [v43 priority:10];
  v45 = [v44 suppressVisibleChanges:0];
  [appearanceCopy addComponent:v45];

  [appearanceCopy unionAppearance:self->_appViewController];
  [appearanceCopy unionAppearance:self->_hostedEntityViewController];
}

- (void)aggregateBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v8.receiver = self;
  v8.super_class = SBDashBoardCameraPageViewController;
  [(CSPageViewController *)&v8 aggregateBehavior:behaviorCopy];
  [behaviorCopy addRestrictedCapabilities:4104];
  [behaviorCopy addRestrictedCapabilities:64];
  [behaviorCopy setScrollingStrategy:3];
  [behaviorCopy setIdleTimerDuration:14];
  [behaviorCopy setIdleWarnMode:2];
  [behaviorCopy setIdleTimerMode:1];
  [behaviorCopy unionBehavior:self->_appViewController];
  [behaviorCopy unionBehavior:self->_hostedEntityViewController];
  if ([behaviorCopy idleTimerDuration] == 16)
  {
    [behaviorCopy setIdleTimerDuration:17];
    [behaviorCopy setIdleWarnMode:2];
  }

  accidentalActivationMitigationSessionCoordinator = [SBApp accidentalActivationMitigationSessionCoordinator];
  currentSession = [accidentalActivationMitigationSessionCoordinator currentSession];
  state = [currentSession state];

  if (state == 1)
  {
    [behaviorCopy setNotificationBehavior:1];
  }
}

- (BOOL)handleEvent:(id)event
{
  v15[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v13.receiver = self;
  v13.super_class = SBDashBoardCameraPageViewController;
  if (-[CSPresentationViewController handleEvent:](&v13, sel_handleEvent_, eventCopy) && ([eventCopy isConsumable] & 1) != 0)
  {
    goto LABEL_14;
  }

  isConsumable = 0;
  v6 = __ROR8__([eventCopy type] - 5, 1);
  if (v6 <= 5)
  {
    if (!v6)
    {
      [(SBDashBoardCameraPageViewController *)self _bailIfFaceTimeCallComesIn];
      isConsumable = 0;
      goto LABEL_15;
    }

    if (v6 != 2)
    {
      goto LABEL_15;
    }

LABEL_10:
    [(SBDashBoardCameraPageViewController *)self _coolCameraIfNecessary];
    if ((self->_cameraPresentLargestPercent - 1) <= 0x62)
    {
      v14 = *MEMORY[0x277D674D0];
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:?];
      v15[0] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v9 = MEMORY[0x277D65DD0];
      v10 = v8;
      sharedInstance = [v9 sharedInstance];
      [sharedInstance emitEvent:46 withPayload:v10];
    }

    isConsumable = 0;
    self->_hasWarmedCameraForThisPresentation = 0;
    self->_cameraPrewarmSucceeded = 0;
    self->_cameraPresentLargestPercent = 0;
    goto LABEL_15;
  }

  switch(v6)
  {
    case 6:
      [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
      goto LABEL_14;
    case 10:
      goto LABEL_10;
    case 11:
      [(CSCoverSheetViewControllerBase *)self dismiss];
LABEL_14:
      isConsumable = [eventCopy isConsumable];
      break;
  }

LABEL_15:

  return isConsumable;
}

- (BOOL)dashBoardHostedAppViewController:(id)controller shouldTransitionToMode:(int64_t)mode
{
  controllerCopy = controller;
  v7 = mode != 2 || [(SBDashBoardCameraPageViewController *)self _appearState]!= 1 && ([(SBDashBoardCameraPageViewController *)self bs_isDisappearingOrDisappeared]& 1) == 0;

  return v7;
}

- (BOOL)canHostAnApp
{
  appViewController = self->_appViewController;
  if (!appViewController)
  {
    appViewController = self->_hostedEntityViewController;
  }

  return [appViewController canHostAnApp];
}

- (id)hostedAppSceneHandle
{
  appViewController = self->_appViewController;
  if (!appViewController)
  {
    appViewController = self->_hostedEntityViewController;
  }

  return [appViewController hostedAppSceneHandle];
}

- (id)hostedAppSceneHandles
{
  appViewController = self->_appViewController;
  if (!appViewController)
  {
    appViewController = self->_hostedEntityViewController;
  }

  return [appViewController hostedAppSceneHandles];
}

- (void)hostedAppWillRotateToInterfaceOrientation:(int64_t)orientation
{
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheetCamera") & 1) == 0)
  {
    appViewController = self->_appViewController;
    if (!appViewController)
    {
      appViewController = self->_hostedEntityViewController;
    }

    [appViewController hostedAppWillRotateToInterfaceOrientation:orientation];
  }
}

- (void)sceneHandle:(id)handle didCreateScene:(id)scene
{
  sceneCopy = scene;
  appViewController = self->_appViewController;
  handleCopy = handle;
  applicationSceneHandle = [(SBDashBoardHostedAppViewController *)appViewController applicationSceneHandle];

  if (sceneCopy && applicationSceneHandle == handleCopy)
  {
    if ([(SBDashBoardCameraPageViewController *)self bs_isAppearingOrAppeared])
    {
      [(SBDashBoardCameraPageViewController *)self _acquireTraitsParticipantIfNeeded];
    }

    view = [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController view];
    settings = [sceneCopy settings];
    [settings frame];
    [view setContentViewBoundsInReferenceSpace:?];

    [(SBDashBoardCameraPageViewController *)self _updateZStackPolicyAssistants];
  }
}

- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings
{
  handleCopy = handle;
  settingsDiff = [settings settingsDiff];
  applicationSceneHandle = [(SBDashBoardHostedAppViewController *)self->_appViewController applicationSceneHandle];

  if (applicationSceneHandle == handleCopy && settingsDiff != 0)
  {
    [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
  }
}

- (void)sceneHandle:(id)handle didDestroyScene:(id)scene
{
  handleCopy = handle;
  sceneCopy = scene;
  if (sceneCopy)
  {
    sceneIdentifier = [handleCopy sceneIdentifier];
    applicationSceneHandle = [(SBDashBoardHostedAppViewController *)self->_appViewController applicationSceneHandle];
    sceneIdentifier2 = [applicationSceneHandle sceneIdentifier];

    if (sceneIdentifier == sceneIdentifier2)
    {
      [(SBDashBoardCameraPageViewController *)self _invalidateCameraTraitsParticipant];
      [(SBDashBoardCameraPageViewController *)self _updateZStackPolicyAssistants];
    }
  }
}

- (void)hostableEntityPresenter:(id)presenter didBeginHosting:(id)hosting
{
  presenterCopy = presenter;
  hostedEntityViewController = self->_hostedEntityViewController;
  hostingCopy = hosting;
  hostedEntity = [(CSHostedEntityViewController *)hostedEntityViewController hostedEntity];

  if (hostingCopy && hostedEntity == hostingCopy)
  {
    if ([(SBDashBoardCameraPageViewController *)self bs_isAppearingOrAppeared])
    {
      [(SBDashBoardCameraPageViewController *)self _acquireTraitsParticipantIfNeeded];
    }

    sceneHandleForTraitsParticipant = [presenterCopy sceneHandleForTraitsParticipant];
    scene = [sceneHandleForTraitsParticipant scene];

    if (!scene)
    {
      scene = [presenterCopy sceneForTraitsParticipant];
    }

    view = [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController view];
    settings = [scene settings];
    [settings frame];
    [view setContentViewBoundsInReferenceSpace:?];

    [(SBDashBoardCameraPageViewController *)self _updateZStackPolicyAssistants];
  }
}

- (void)handleAction:(id)action fromSender:(id)sender
{
  actionCopy = action;
  senderCopy = sender;
  if (LCSFeatureEnabled() && [actionCopy type] == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(CSCoverSheetViewControllerBase *)self dismiss];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBDashBoardCameraPageViewController;
    [(CSPageViewController *)&v8 handleAction:actionCopy fromSender:senderCopy];
  }
}

- (void)hostableEntityPresenter:(id)presenter didEndHosting:(id)hosting
{
  presenterCopy = presenter;
  hostingCopy = hosting;
  if (hostingCopy)
  {
    hostedEntity = [(CSHostedEntityViewController *)self->_hostedEntityViewController hostedEntity];

    if (hostedEntity == hostingCopy)
    {
      [(SBDashBoardCameraPageViewController *)self _invalidateCameraTraitsParticipant];
      [(SBDashBoardCameraPageViewController *)self _updateZStackPolicyAssistants];
    }
  }
}

- (void)hostableEntityPresenter:(id)presenter didFailToActivate:(id)activate
{
  presenterCopy = presenter;
  activateCopy = activate;
  if (activateCopy)
  {
    hostedEntity = [(CSHostedEntityViewController *)self->_hostedEntityViewController hostedEntity];

    if (hostedEntity == activateCopy)
    {
      [(CSCoverSheetViewControllerBase *)self dismiss];
    }
  }
}

- (void)_acquireTraitsParticipantIfNeeded
{
  if (!self->_traitsParticipant)
  {
    view = [(CSPageViewController *)self view];
    window = [view window];

    if (window && SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheetCamera"))
    {
      _traitsArbiter = [(SBDashBoardCameraPageViewController *)self _traitsArbiter];
      hostedEntityViewController = self->_hostedEntityViewController;
      if (hostedEntityViewController)
      {
        sceneHandleForTraitsParticipant = [(CSHostedEntityViewController *)hostedEntityViewController sceneHandleForTraitsParticipant];
        if (sceneHandleForTraitsParticipant)
        {
          v8 = [[SBTraitsSceneParticipantDelegate alloc] initWithSceneHandle:sceneHandleForTraitsParticipant];
          traitsParticipantDelegate = self->_traitsParticipantDelegate;
          self->_traitsParticipantDelegate = v8;
        }

        else
        {
          traitsParticipantDelegate = [(CSHostedEntityViewController *)self->_hostedEntityViewController sceneForTraitsParticipant];
          if (traitsParticipantDelegate)
          {
            v14 = [[SBTraitsSceneParticipantDelegate alloc] initWithScene:traitsParticipantDelegate];
            v15 = self->_traitsParticipantDelegate;
            self->_traitsParticipantDelegate = v14;
          }
        }
      }

      else
      {
        v10 = [SBTraitsSceneParticipantDelegate alloc];
        applicationSceneHandle = [(SBDashBoardHostedAppViewController *)self->_appViewController applicationSceneHandle];
        v12 = [(SBTraitsSceneParticipantDelegate *)v10 initWithSceneHandle:applicationSceneHandle];
        v13 = self->_traitsParticipantDelegate;
        self->_traitsParticipantDelegate = v12;
      }

      if (self->_traitsParticipantDelegate)
      {
        v16 = [_traitsArbiter acquireParticipantWithRole:@"SBTraitsParticipantRoleCoverSheetCamera" delegate:?];
        traitsParticipant = self->_traitsParticipant;
        self->_traitsParticipant = v16;

        [(SBTraitsSceneParticipantDelegate *)self->_traitsParticipantDelegate setArbiter:_traitsArbiter];
        [(SBTraitsSceneParticipantDelegate *)self->_traitsParticipantDelegate setParticipant:self->_traitsParticipant];
        v18 = self->_traitsParticipantDelegate;
        v19 = MEMORY[0x277CCABB0];
        view2 = [(CSPageViewController *)self view];
        window2 = [view2 window];
        [window2 windowLevel];
        v22 = [v19 numberWithDouble:?];
        [(SBTraitsSceneParticipantDelegate *)v18 setPreferredSceneLevel:v22];

        [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController setContentParticipant:self->_traitsParticipant];
        objc_initWeak(&location, self);
        v23 = self->_traitsParticipantDelegate;
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __72__SBDashBoardCameraPageViewController__acquireTraitsParticipantIfNeeded__block_invoke;
        v27[3] = &unk_2783AD848;
        objc_copyWeak(&v28, &location);
        [(SBTraitsSceneParticipantDelegate *)v23 setActuateOrientationAlongsideBlock:v27];
        orientedContentViewController = self->_orientedContentViewController;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __72__SBDashBoardCameraPageViewController__acquireTraitsParticipantIfNeeded__block_invoke_2;
        v25[3] = &unk_2783AD870;
        objc_copyWeak(&v26, &location);
        [(SBTraitsOrientedContentViewController *)orientedContentViewController setActuateAlongsideBlock:v25];
        objc_destroyWeak(&v26);
        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __72__SBDashBoardCameraPageViewController__acquireTraitsParticipantIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[147] updateOrientationIfNeeded];
    WeakRetained = v2;
  }
}

void __72__SBDashBoardCameraPageViewController__acquireTraitsParticipantIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    [WeakRetained[144] setHostedAppReferenceSize:a2 withInterfaceOrientation:{a3, a4}];
    [v8[167] setHostedAppReferenceSize:a2 withInterfaceOrientation:{a3, a4}];
    WeakRetained = v8;
  }
}

- (void)_invalidateCameraTraitsParticipant
{
  [(TRAParticipant *)self->_traitsParticipant invalidate];
  [(SBTraitsSceneParticipantDelegate *)self->_traitsParticipantDelegate invalidate];
  traitsParticipantDelegate = self->_traitsParticipantDelegate;
  self->_traitsParticipantDelegate = 0;

  traitsParticipant = self->_traitsParticipant;
  self->_traitsParticipant = 0;
}

- (id)_traitsArbiter
{
  view = [(CSPageViewController *)self view];
  window = [view window];

  if (window)
  {
    _sbWindowScene = [window _sbWindowScene];
    traitsArbiter = [_sbWindowScene traitsArbiter];
  }

  else
  {
    _sbWindowScene = [MEMORY[0x277CCA890] currentHandler];
    [_sbWindowScene handleFailureInMethod:a2 object:self file:@"SBDashBoardCameraPageViewController.m" lineNumber:808 description:@"Unexpected nil window"];
    traitsArbiter = 0;
  }

  return traitsArbiter;
}

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (([(SBDashBoardCameraPageViewController *)self bs_isDisappearingOrDisappeared]& 1) == 0)
  {
    [preferencesCopy setActivationPolicyForParticipantsBelow:2];
    [preferencesCopy setSuppressSystemApertureForSystemChromeSuppression:-[SBSystemApertureZStackPolicyAssistant suppressSystemApertureForSystemChromeSuppression](self->_systemApertureZStackPolicyAssistant)];
    allCameraShutterButtonPIDs = [(SBCameraHardwareButton *)self->_systemApertureZStackPolicyAssistant allCameraShutterButtonPIDs];
    [preferencesCopy setAssociatedBundleIdentifiersToSuppressInSystemAperture:allCameraShutterButtonPIDs];

    foregroundCameraShutterButtonPIDs = [(SBCameraHardwareButton *)self->_systemApertureZStackPolicyAssistant foregroundCameraShutterButtonPIDs];
    [preferencesCopy setAssociatedSceneIdentifiersToSuppressInSystemAperture:foregroundCameraShutterButtonPIDs];

    audioCategoriesDisablingVolumeHUD = [(SBAudioCategoryZStackPolicyAssistant *)self->_audioCategoryZStackPolicyAssistant audioCategoriesDisablingVolumeHUD];
    [preferencesCopy setAudioCategoriesDisablingVolumeHUD:audioCategoriesDisablingVolumeHUD];

    physicalButtonSceneTargets = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant physicalButtonSceneTargets];
    [preferencesCopy setPhysicalButtonSceneTargets:physicalButtonSceneTargets];

    captureButtonFullFidelityEventRequestingScenes = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant captureButtonFullFidelityEventRequestingScenes];
    [preferencesCopy setCaptureButtonFullFidelityEventRequestingScenes:captureButtonFullFidelityEventRequestingScenes];

    foregroundCaptureSceneTargets = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant foregroundCaptureSceneTargets];
    [preferencesCopy setForegroundCaptureSceneTargets:foregroundCaptureSceneTargets];
    if ([foregroundCaptureSceneTargets count])
    {
      [preferencesCopy setAllowsKeyboardArbiterToDetermineFocusTarget:1];
      lastObject = [foregroundCaptureSceneTargets lastObject];
      scene = [lastObject scene];
      v13 = [SBKeyboardFocusTarget targetForFBScene:scene];
      [preferencesCopy setOverrideKeyboardFocusTarget:v13];
    }
  }
}

- (void)homeGrabberViewDidReceiveClick:(id)click
{
  if ([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture])
  {

    [(CSCoverSheetViewControllerBase *)self dismiss];
  }
}

- (void)setWantsHomeGestureOwnership:(BOOL)ownership
{
  if (self->_wantsHomeGestureOwnership != ownership)
  {
    self->_wantsHomeGestureOwnership = ownership;
    if (ownership)
    {
      [(SBDashBoardCameraPageViewController *)self _requestHomeGestureOwnership];
    }

    else
    {
      [(SBDashBoardCameraPageViewController *)self _invalidateZStackParticipantIfNeeded];
    }
  }
}

- (void)_requestHomeGestureOwnership
{
  [(SBDashBoardCameraPageViewController *)self _ensureZStackParticipant];
  [(SBDashBoardCameraPageViewController *)self _updateZStackPolicyAssistants];

  [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];
}

- (void)_ensureZStackParticipant
{
  zStackParticipant = [(SBDashBoardCameraPageViewController *)self zStackParticipant];

  if (!zStackParticipant)
  {
    view = [(CSPageViewController *)self view];
    window = [view window];

    _sbWindowScene = [window _sbWindowScene];
    zStackResolver = [_sbWindowScene zStackResolver];
    v8 = [zStackResolver acquireParticipantWithIdentifier:13 delegate:self];

    [(SBDashBoardCameraPageViewController *)self setZStackParticipant:v8];
  }

  audioCategoryZStackPolicyAssistant = [(SBDashBoardCameraPageViewController *)self audioCategoryZStackPolicyAssistant];

  if (!audioCategoryZStackPolicyAssistant)
  {
    v10 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)[SBAudioCategoryZStackPolicyAssistant alloc] initWithParticipant:self->_zStackParticipant];
    [(SBDashBoardCameraPageViewController *)self setAudioCategoryZStackPolicyAssistant:v10];
  }

  systemApertureZStackPolicyAssistant = [(SBDashBoardCameraPageViewController *)self systemApertureZStackPolicyAssistant];

  if (!systemApertureZStackPolicyAssistant)
  {
    v12 = [[SBSystemApertureZStackPolicyAssistant alloc] initWithParticipant:?];
    [(SBDashBoardCameraPageViewController *)self setSystemApertureZStackPolicyAssistant:v12];
  }

  physicalButtonZStackPolicyAssistant = [(SBDashBoardCameraPageViewController *)self physicalButtonZStackPolicyAssistant];

  if (!physicalButtonZStackPolicyAssistant)
  {
    v14 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)[SBPhysicalButtonZStackPolicyAssistant alloc] initWithParticipant:self->_zStackParticipant];
    [(SBDashBoardCameraPageViewController *)self setPhysicalButtonZStackPolicyAssistant:v14];
  }
}

- (void)_invalidateZStackParticipantIfNeeded
{
  zStackParticipant = [(SBDashBoardCameraPageViewController *)self zStackParticipant];

  if (zStackParticipant)
  {
    zStackParticipant2 = [(SBDashBoardCameraPageViewController *)self zStackParticipant];
    [zStackParticipant2 invalidate];

    [(SBDashBoardCameraPageViewController *)self setZStackParticipant:0];
    [(SBDashBoardCameraPageViewController *)self setSystemApertureZStackPolicyAssistant:0];
    [(SBDashBoardCameraPageViewController *)self setPhysicalButtonZStackPolicyAssistant:0];

    [(SBDashBoardCameraPageViewController *)self setAudioCategoryZStackPolicyAssistant:0];
  }
}

- (void)_setSceneGrabberHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  hostedEntityViewController = self->_hostedEntityViewController;
  if (hostedEntityViewController)
  {
    homeGrabberViewForTraitsParticipant = [(CSHostedEntityViewController *)hostedEntityViewController homeGrabberViewForTraitsParticipant];
    if (!homeGrabberViewForTraitsParticipant)
    {
      goto LABEL_13;
    }

    appView = homeGrabberViewForTraitsParticipant;
    [homeGrabberViewForTraitsParticipant setDelegate:self];
    [appView setPointerClickDelegate:self];
    if (hiddenCopy)
    {
      [(SBDashBoardCameraPageViewController *)self _takeHiddenAssertionForHomeGrabber:appView];
    }

    else
    {
      [(SBDashBoardCameraPageViewController *)self _relinquishHiddenAssertionForHomeGrabber:appView];
    }

    [(SBDashBoardCameraPageViewController *)self _updateZStackPolicyAssistants];
  }

  else
  {
    appView = [(SBDashBoardHostedAppViewController *)self->_appViewController appView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      homeGrabberView = [appView homeGrabberView];
      [homeGrabberView setDelegate:self];
      [homeGrabberView setPointerClickDelegate:self];
      if (hiddenCopy)
      {
        [(SBDashBoardCameraPageViewController *)self _takeHiddenAssertionForHomeGrabber:homeGrabberView];
      }

      else
      {
        [(SBDashBoardCameraPageViewController *)self _relinquishHiddenAssertionForHomeGrabber:homeGrabberView];
      }

      [(SBDashBoardCameraPageViewController *)self _updateZStackPolicyAssistants];
    }
  }

  homeGrabberViewForTraitsParticipant = appView;
LABEL_13:
}

- (void)_noteUserLaunchEventTime
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = mach_continuous_time();
  v8 = objc_alloc_init(SBActivationSettings);
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  [(SBActivationSettings *)v8 setObject:v6 forActivationSetting:18];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5];
  [(SBActivationSettings *)v8 setObject:v7 forActivationSetting:19];

  [(SBDashBoardHostedAppViewController *)self->_appViewController setSupplementalActivationSettings:v8];
}

- (void)_takeHiddenAssertionForHomeGrabber:(id)grabber
{
  v3 = MEMORY[0x277D65E80];
  grabberCopy = grabber;
  rootSettings = [v3 rootSettings];
  hideForHomeGestureOwnershipAnimationSettings = [rootSettings hideForHomeGestureOwnershipAnimationSettings];
  bSAnimationSettings = [hideForHomeGestureOwnershipAnimationSettings BSAnimationSettings];

  [grabberCopy setHidden:1 forReason:@"DashBoardCameraHomeOwnershipChanged" withAnimationSettings:bSAnimationSettings];
  [grabberCopy setHomeAffordanceInteractionEnabled:0];
}

- (void)_relinquishHiddenAssertionForHomeGrabber:(id)grabber
{
  v3 = MEMORY[0x277D65E80];
  grabberCopy = grabber;
  rootSettings = [v3 rootSettings];
  unhideForHomeGestureOwnershipAnimationSettings = [rootSettings unhideForHomeGestureOwnershipAnimationSettings];
  bSAnimationSettings = [unhideForHomeGestureOwnershipAnimationSettings BSAnimationSettings];

  [grabberCopy setHidden:0 forReason:@"DashBoardCameraHomeOwnershipChanged" withAnimationSettings:bSAnimationSettings];
  [grabberCopy setHomeAffordanceInteractionEnabled:1];
}

- (id)_prewarmingCameraBundleIdentifier
{
  v2 = @"com.apple.camera";
  if (_os_feature_enabled_impl())
  {

    v2 = @"com.apple.camera.lockscreen";
  }

  return v2;
}

- (void)_prewarmCameraInteractively:(BOOL)interactively
{
  v41 = *MEMORY[0x277D85DE8];
  if (!self->_prewarmDebounceTimer && self->_canWarmRealCamera)
  {
    interactivelyCopy = interactively;
    v5 = +[SBLockScreenManager sharedInstance];
    coverSheetViewController = [v5 coverSheetViewController];

    cameraPrewarmer = [coverSheetViewController cameraPrewarmer];
    currentActivePrewarmReasons = [cameraPrewarmer currentActivePrewarmReasons];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = currentActivePrewarmReasons;
    v10 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      v13 = *MEMORY[0x277CE58E8];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [*(*(&v34 + 1) + 8 * i) isEqualToString:v13];
        }

        v16 = v15;
        v11 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v11);

      if (v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v17 = MEMORY[0x277CE58F0];
    if (!interactivelyCopy)
    {
      v17 = MEMORY[0x277CE58D8];
    }

    v18 = MEMORY[0x277CCABB0];
    v33 = *v17;
    v19 = [v18 numberWithLongLong:mach_absolute_time()];
    v20 = [MEMORY[0x277CCABB0] numberWithLongLong:mach_continuous_time()];
    v21 = *MEMORY[0x277CE5910];
    v38[0] = *MEMORY[0x277CE5908];
    v38[1] = v21;
    v39[0] = v33;
    v39[1] = v19;
    v38[2] = *MEMORY[0x277CE5920];
    v39[2] = v20;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
    _prewarmingCameraBundleIdentifier = [(SBDashBoardCameraPageViewController *)self _prewarmingCameraBundleIdentifier];
    AVCapturePrewarmWithOptions();

    v24 = MEMORY[0x277CBEBB8];
    [(CSLockScreenSettings *)self->_prototypeSettings cameraPrewarmDebounceTimeInterval];
    v25 = [v24 timerWithTimeInterval:self target:sel__endPrewarmBackoffPeriod selector:0 userInfo:0 repeats:?];
    prewarmDebounceTimer = self->_prewarmDebounceTimer;
    self->_prewarmDebounceTimer = v25;

    v27 = MEMORY[0x277CBEBB8];
    [(CSLockScreenSettings *)self->_prototypeSettings cameraPrewarmAutoCancelTimeInterval];
    v28 = [v27 timerWithTimeInterval:self target:sel__coolCameraIfNecessary selector:0 userInfo:0 repeats:?];
    prewarmCancelTimer = self->_prewarmCancelTimer;
    self->_prewarmCancelTimer = v28;

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    v31 = *MEMORY[0x277CBE738];
    [currentRunLoop addTimer:self->_prewarmDebounceTimer forMode:*MEMORY[0x277CBE738]];

    currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop2 addTimer:self->_prewarmCancelTimer forMode:v31];

LABEL_16:
  }
}

- (void)_endPrewarmBackoffPeriod
{
  [(NSTimer *)self->_prewarmDebounceTimer invalidate];
  prewarmDebounceTimer = self->_prewarmDebounceTimer;
  self->_prewarmDebounceTimer = 0;
}

- (BOOL)_shouldPrewarmOnSwipe
{
  if ([(SBLockScreenDefaults *)self->_lockScreenDefaults useDefaultsValuesForCameraPrewarm])
  {
    lockScreenDefaults = self->_lockScreenDefaults;

    return [(SBLockScreenDefaults *)lockScreenDefaults prewarmCameraOnSwipe];
  }

  else
  {
    prototypeSettings = self->_prototypeSettings;

    return [(CSLockScreenSettings *)prototypeSettings prewarmsCameraHardwareOnSwipe];
  }
}

- (double)_prewarmThreshold
{
  if ([(SBLockScreenDefaults *)self->_lockScreenDefaults useDefaultsValuesForCameraPrewarm])
  {
    lockScreenDefaults = self->_lockScreenDefaults;

    [(SBLockScreenDefaults *)lockScreenDefaults cameraSwipePrewarmThreshold];
  }

  else
  {
    prototypeSettings = self->_prototypeSettings;

    [(CSLockScreenSettings *)prototypeSettings cameraPrewarmThresholdOnSwipe];
  }

  return result;
}

- (BOOL)_shouldPrelaunchOnSwipe
{
  if ([(SBLockScreenDefaults *)self->_lockScreenDefaults useDefaultsValuesForCameraPrewarm])
  {
    lockScreenDefaults = self->_lockScreenDefaults;

    return [(SBLockScreenDefaults *)lockScreenDefaults prelaunchCameraOnSwipe];
  }

  else
  {
    prototypeSettings = self->_prototypeSettings;

    return [(CSLockScreenSettings *)prototypeSettings prelaunchesCameraAppOnSwipe];
  }
}

- (double)_prelaunchThreshold
{
  if ([(SBLockScreenDefaults *)self->_lockScreenDefaults useDefaultsValuesForCameraPrewarm])
  {
    lockScreenDefaults = self->_lockScreenDefaults;

    [(SBLockScreenDefaults *)lockScreenDefaults cameraSwipePrelaunchThreshold];
  }

  else
  {
    prototypeSettings = self->_prototypeSettings;

    [(CSLockScreenSettings *)prototypeSettings cameraPrelaunchThresholdOnSwipe];
  }

  return result;
}

- (id)_hostedContentModeDescription
{
  if (self->_hostedEntityViewController)
  {
    [(CSHostedEntityViewController *)self->_hostedEntityViewController hostableEntityContentMode];
    NSStringFromCSHostableEntityContentMode();
  }

  else
  {
    NSStringFromSBAppViewControllerMode([(SBDashBoardHostedAppViewController *)self->_appViewController mode]);
  }
  v2 = ;

  return v2;
}

- (void)_resetHostedEntityToDefault
{
  if (self->_hostedEntityViewController)
  {
    cameraPageDelegate = [(SBDashBoardCameraPageViewController *)self cameraPageDelegate];
    v5 = [cameraPageDelegate defaultHostableEntityForActivationOfCamera:self];

    v4 = v5;
    if (v5)
    {
      [(SBDashBoardCameraPageViewController *)self setHostedEntity:v5];
      v4 = v5;
    }
  }
}

- (void)_addOrRemoveGestureForCurrentSettings
{
  _appearState = [(SBDashBoardCameraPageViewController *)self _appearState];
  if (_appearState && _appearState != 3 && SBHomeGestureEnabled())
  {
    if (!self->_homeGestureInteraction)
    {
      v4 = [SBHomeGestureInteraction alloc];
      _sbWindowScene = [(UIViewController *)self _sbWindowScene];
      systemGestureManager = [_sbWindowScene systemGestureManager];
      v7 = [(SBHomeGestureInteraction *)v4 initWithSystemGestureManager:systemGestureManager delegate:self];
      homeGestureInteraction = self->_homeGestureInteraction;
      self->_homeGestureInteraction = v7;

      [(SBDashBoardCameraPageViewController *)self setWantsHomeGestureOwnership:1];
    }
  }

  else
  {
    v9 = self->_homeGestureInteraction;
    if (v9)
    {
      [(SBHomeGestureInteraction *)v9 invalidate];
      v10 = self->_homeGestureInteraction;
      self->_homeGestureInteraction = 0;
    }
  }
}

- (unint64_t)homeGestureInteraction:(id)interaction systemGestureTypeForType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_21F8A5E80[type - 1];
  }
}

- (id)customScreenEdgePanGestureRecognizerForHomeGestureInteraction:(id)interaction
{
  v4 = [SBHomeGesturePanGestureRecognizer homeGesturePanGestureRecognizerWithTarget:0 action:0];
  [v4 setInterfaceDelegate:self];
  [v4 setEdges:15];
  [v4 setAllowedTouchTypes:&unk_28336DE60];

  return v4;
}

- (BOOL)homeGestureInteraction:(id)interaction shouldBeginGestureRecognizerOfType:(int64_t)type
{
  interactionCopy = interaction;
  if (([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture]& 1) != 0 || !self->_zStackParticipant)
  {
    v7 = 1;
    if (type != 1)
    {
      goto LABEL_20;
    }

    v8 = [interactionCopy gestureRecognizerForType:1];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    if (([v8 touchedEdges] & 4) != 0)
    {
      v28 = 1;
LABEL_19:
      _Block_object_dispose(&v25, 8);

      goto LABEL_20;
    }

    if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheetCamera"))
    {
      sbf_currentOrientation = [(TRAParticipant *)self->_traitsParticipant sbf_currentOrientation];
    }

    else
    {
      hostedEntityViewController = self->_hostedEntityViewController;
      if (!hostedEntityViewController)
      {
        appView = [(SBDashBoardHostedAppViewController *)self->_appViewController appView];
        orientation = [appView orientation];

LABEL_12:
        [v8 _touchInterfaceOrientation];
        v12 = _screenRegionGivenInterfaceOrientedRegion();
        v13 = (1 << orientation);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v21 = __97__SBDashBoardCameraPageViewController_homeGestureInteraction_shouldBeginGestureRecognizerOfType___block_invoke;
        v22 = &unk_2783AD898;
        v23 = &v25;
        v24 = v12;
        v14 = v20;
        v15 = 0;
        v29 = 0;
        v16 = vcnt_s8(v13);
        v16.i16[0] = vaddlv_u8(v16);
        v17 = v16.i32[0];
        do
        {
          if (((1 << v15) & *&v13) != 0)
          {
            v21(v14);
            if (v29)
            {
              break;
            }

            --v17;
          }

          if (v15 > 0x3E)
          {
            break;
          }

          ++v15;
        }

        while (v17 > 0);

        v7 = *(v26 + 24);
        goto LABEL_19;
      }

      sbf_currentOrientation = [(CSHostedEntityViewController *)hostedEntityViewController hostableEntityOrientation];
    }

    orientation = sbf_currentOrientation;
    goto LABEL_12;
  }

  v7 = 0;
LABEL_20:

  return v7 & 1;
}

uint64_t __97__SBDashBoardCameraPageViewController_homeGestureInteraction_shouldBeginGestureRecognizerOfType___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = _interfaceOrientedRegionGivenScreenRegion();
  if ((result & 4) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)homeGestureInteractionChanged:(id)changed
{
  changedCopy = changed;
  view = [(CSPageViewController *)self view];
  [changedCopy translationInView:view];
  v7 = v6;
  v9 = v8;

  [(SBDashBoardCameraPageViewController *)self _convertTranslationFromContainerOrientationToContentOrientation:v7, v9];
  BSUIConstrainValueToIntervalWithRubberBand();
  v11 = v10;
  BSIntervalMap();
  [(SBDashBoardCameraPageViewController *)self _updateCameraScale:v11 dimmingAlpha:1.0 - v12, 0, 1, 0x3FF0000000000000, 1, 0x3FD6666666666666, 1, 0x3FF0000000000000, 1];
}

- (void)homeGestureInteractionEnded:(id)ended
{
  if ([(SBDashBoardCameraPageViewController *)self _shouldCancelInteractiveDismissGesture])
  {
    [(SBDashBoardCameraPageViewController *)self _transitionAppViewWithProgress:2 transitionMode:1.0];
    v4 = 1.0;
    v5 = 0.0;
  }

  else
  {
    [(SBDashBoardCameraPageViewController *)self setWantsHomeGestureOwnership:0];
    [(CSCoverSheetViewControllerBase *)self dismiss];
    v4 = 0.5;
    v5 = 1.0;
  }

  [(SBDashBoardCameraPageViewController *)self _updateCameraScale:2 dimmingAlpha:v4 transitionMode:v5];
}

- (CGPoint)_convertTranslationFromContainerOrientationToContentOrientation:(CGPoint)orientation
{
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeTranslation(&v14, orientation.x, orientation.y);
  interfaceOrientation = [(SBDashBoardCameraPageViewController *)self interfaceOrientation];
  hostedEntityViewController = self->_hostedEntityViewController;
  if (hostedEntityViewController)
  {
    hostableEntityOrientation = [(CSHostedEntityViewController *)hostedEntityViewController hostableEntityOrientation];
  }

  else
  {
    appView = [(SBDashBoardHostedAppViewController *)self->_appViewController appView];
    hostableEntityOrientation = [appView orientation];
  }

  if (interfaceOrientation != hostableEntityOrientation)
  {
    memset(&v13, 0, sizeof(v13));
    SBFTransformFromOrientationToOrientation();
    memset(&v11, 0, sizeof(v11));
    CGAffineTransformInvert(&t2, &v11);
    v10 = v14;
    CGAffineTransformConcat(&v11, &v10, &t2);
    v10 = v13;
    CGAffineTransformConcat(&t2, &v10, &v11);
    v14 = t2;
  }

  tx = v14.tx;
  ty = v14.ty;
  result.y = ty;
  result.x = tx;
  return result;
}

- (void)_prepareForInteractiveGestureToCameraVisible:(BOOL)visible
{
  visibleCopy = visible;
  view = [(UIViewController *)self->_appViewControllerContainerVC view];
  [view setClipsToBounds:1];

  v6 = 0.5;
  if (visibleCopy)
  {
    v7 = 1.0;
  }

  else
  {
    v6 = 1.0;
    v7 = 0.0;
  }

  [(UIViewFloatAnimatableProperty *)self->_scaleProperty setValue:v6];
  [(UIViewFloatAnimatableProperty *)self->_alphaProperty setValue:v7];
  self->_interactiveDismissalInProgress = 1;
}

- (void)_resetAfterInteractiveGestureToCameraVisible:(BOOL)visible
{
  scaleProperty = self->_scaleProperty;
  v5 = 0.5;
  if (visible)
  {
    v5 = 1.0;
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [(UIViewFloatAnimatableProperty *)scaleProperty setValue:v5];
  [(UIViewFloatAnimatableProperty *)self->_alphaProperty setValue:v6];
  self->_interactiveDismissalInProgress = 0;
}

- (BOOL)_shouldCancelInteractiveDismissGesture
{
  [(UIViewFloatAnimatableProperty *)self->_scaleProperty presentationValue];
  v4 = v3;
  [(UIViewFloatAnimatableProperty *)self->_scaleProperty velocity];
  v6 = v4 + v5 / 1000.0 * 0.99 / 0.01;
  if (v6 <= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  return vabdd_f64(1.0, v7) < vabdd_f64(0.8, v6);
}

- (void)_createProperties
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75D38]);
  scaleProperty = self->_scaleProperty;
  self->_scaleProperty = v3;

  [(UIViewFloatAnimatableProperty *)self->_scaleProperty setValue:1.0];
  [(UIViewFloatAnimatableProperty *)self->_scaleProperty setVelocityUsableForVFD:1];
  initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  scaleSettings = self->_scaleSettings;
  self->_scaleSettings = initWithDefaultValues;

  [(SBFFluidBehaviorSettings *)self->_scaleSettings setBehaviorType:2];
  [(SBFFluidBehaviorSettings *)self->_scaleSettings setDampingRatio:1.0];
  [(SBFFluidBehaviorSettings *)self->_scaleSettings setResponse:0.5];
  v7 = self->_scaleSettings;
  v22 = CAFrameRateRangeMake(30.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)v7 setFrameRateRange:1114127 highFrameRateReason:*&v22.minimum, *&v22.maximum, *&v22.preferred];
  v8 = objc_alloc_init(MEMORY[0x277D75D38]);
  alphaProperty = self->_alphaProperty;
  self->_alphaProperty = v8;

  [(UIViewFloatAnimatableProperty *)self->_alphaProperty setValue:1.0];
  [(UIViewFloatAnimatableProperty *)self->_alphaProperty setVelocityUsableForVFD:1];
  initWithDefaultValues2 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  alphaSettings = self->_alphaSettings;
  self->_alphaSettings = initWithDefaultValues2;

  [(SBFFluidBehaviorSettings *)self->_alphaSettings setBehaviorType:1];
  [(SBFFluidBehaviorSettings *)self->_alphaSettings setDampingRatio:1.0];
  [(SBFFluidBehaviorSettings *)self->_alphaSettings setResponse:0.25];
  v12 = self->_alphaSettings;
  v23 = CAFrameRateRangeMake(30.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)v12 setFrameRateRange:1114127 highFrameRateReason:*&v23.minimum, *&v23.maximum, *&v23.preferred];
  objc_initWeak(&location, self);
  v13 = MEMORY[0x277D75D18];
  v14 = self->_alphaProperty;
  v21[0] = self->_scaleProperty;
  v21[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__SBDashBoardCameraPageViewController__createProperties__block_invoke;
  v18[3] = &unk_2783A8C68;
  objc_copyWeak(&v19, &location);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__SBDashBoardCameraPageViewController__createProperties__block_invoke_2;
  v16[3] = &unk_2783A8C68;
  objc_copyWeak(&v17, &location);
  [v13 _createTransformerWithInputAnimatableProperties:v15 modelValueSetter:v18 presentationValueSetter:v16];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)_updateForPropertyChangedForPresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  view = [(UIViewController *)self->_appViewControllerContainerVC view];
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    memset(&v25, 0, sizeof(v25));
    CGAffineTransformMakeScale(&v25, 1.0, 1.0);
    if (!presentationCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    scaleProperty = self->_scaleProperty;
    if (!presentationCopy)
    {
      [(UIViewFloatAnimatableProperty *)scaleProperty value];
      memset(&v25, 0, sizeof(v25));
      CGAffineTransformMakeScale(&v25, v14, v14);
LABEL_10:
      [(UIViewFloatAnimatableProperty *)self->_alphaProperty value];
      v16 = v15;
      *&v24.m11 = *&v25.a;
      *&v24.m13 = *&v25.c;
      *&v24.m21 = *&v25.tx;
      [view setTransform:&v24];
      [(UIView *)self->_tintView setAlpha:v16];
      goto LABEL_11;
    }

    [(UIViewFloatAnimatableProperty *)scaleProperty presentationValue];
    memset(&v25, 0, sizeof(v25));
    CGAffineTransformMakeScale(&v25, v7, v7);
  }

  [(UIViewFloatAnimatableProperty *)self->_alphaProperty presentationValue];
  v9 = v8;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    [(UIViewFloatAnimatableProperty *)self->_scaleProperty velocity];
  }

  memset(&v24, 0, sizeof(v24));
  m = v25;
  CATransform3DMakeAffineTransform(&v24, &m);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  memset(&m, 0, sizeof(m));
  SBVelocityMatrixForUniform2DScaling();
  v17 = v24;
  v10 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v17];
  *&v17.m31 = v20;
  *&v17.m33 = v21;
  *&v17.m41 = v22;
  *&v17.m43 = v23;
  *&v17.m11 = m;
  *&v17.m23 = v19;
  v11 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v17];
  [view _setPresentationValue:v10 velocity:v11 preferredFrameRateRangeMaximum:120 forKey:@"transform"];

  tintView = self->_tintView;
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  [(UIView *)tintView _setPresentationValue:v13 forKey:@"alpha"];

LABEL_11:
}

- (int64_t)_sbAnimationUpdateModeForCoverSheetTransitionMode:(int64_t)mode
{
  if ((mode - 1) > 3)
  {
    return 3;
  }

  else
  {
    return qword_21F8A5E98[mode - 1];
  }
}

- (void)_updateCameraScale:(double)scale transitionMode:(int64_t)mode
{
  v6 = [(SBDashBoardCameraPageViewController *)self _sbAnimationUpdateModeForCoverSheetTransitionMode:mode];
  scaleSettings = self->_scaleSettings;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__SBDashBoardCameraPageViewController__updateCameraScale_transitionMode___block_invoke;
  v8[3] = &unk_2783A8BC8;
  v8[4] = self;
  *&v8[5] = scale;
  [MEMORY[0x277D75D18] sb_animateWithSettings:scaleSettings mode:v6 animations:v8 completion:0];
}

- (void)_updateDimmingAlpha:(double)alpha transitionMode:(int64_t)mode
{
  v6 = [(SBDashBoardCameraPageViewController *)self _sbAnimationUpdateModeForCoverSheetTransitionMode:mode];
  alphaSettings = self->_alphaSettings;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__SBDashBoardCameraPageViewController__updateDimmingAlpha_transitionMode___block_invoke;
  v8[3] = &unk_2783A8BC8;
  v8[4] = self;
  *&v8[5] = alpha;
  [MEMORY[0x277D75D18] sb_animateWithSettings:alphaSettings mode:v6 animations:v8 completion:0];
}

- (void)_updateCameraScale:(double)scale dimmingAlpha:(double)alpha transitionMode:(int64_t)mode
{
  [(SBDashBoardCameraPageViewController *)self _updateCameraScale:scale transitionMode:?];

  [(SBDashBoardCameraPageViewController *)self _updateDimmingAlpha:mode transitionMode:alpha];
}

- (SBDashBoardCameraPageViewControllerDelegate)cameraPageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraPageDelegate);

  return WeakRetained;
}

- (void)_handlePrelaunchForTransitionToVisible:(uint64_t)a3 mode:.cold.1(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v6 = *(a1 + 1152);
  if (!v6)
  {
    v6 = *a2;
  }

  v7 = NSStringFromSBAppViewControllerMode(2);
  [v8 handleFailureInMethod:a3 object:a1 file:@"SBDashBoardCameraPageViewController.m" lineNumber:388 description:{@"Preconditions for changing the mode of <%@> to <%@> not met. Ignoring.", v6, v7}];
}

@end