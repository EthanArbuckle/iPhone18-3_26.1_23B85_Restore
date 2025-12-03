@interface SBDashBoardLockScreenEnvironment
- (BOOL)biometricUnlockBehavior:(id)behavior requestsFeedback:(id)feedback;
- (BOOL)biometricUnlockBehavior:(id)behavior requestsUnlock:(id)unlock withFeedback:(id)feedback;
- (BOOL)handleLockButtonPress;
- (SBBiometricUnlockBehaviorDelegate)biometricUnlockBehaviorDelegate;
- (SBControlCenterPresenting)controlCenterPresenter;
- (SBDashBoardLockScreenEnvironment)init;
- (SBDashBoardLockScreenEnvironment)initWithCoverSheetViewController:(id)controller;
- (id)defaultHostableEntityForActivationOfCamera:(id)camera;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_handleCoverSheetTranslationForPasscodeLockVisible:(BOOL)visible blockingForOtherReasons:(BOOL)reasons ignoringPreflightRequirementsForPresentation:(BOOL)presentation;
- (void)_setExpectsFaceContact:(BOOL)contact;
- (void)coverSheetViewController:(id)controller didChangeActiveBehavior:(id)behavior;
- (void)finishUIUnlockFromSource:(int)source;
- (void)handleBiometricEvent:(unint64_t)event;
- (void)prepareForUILock;
- (void)prepareForUIUnlock;
- (void)setAuthenticated:(BOOL)authenticated;
- (void)setInScreenOffMode:(BOOL)mode forAutoUnlock:(BOOL)unlock fromUnlockSource:(int)source preservingCoverSheetPresentationState:(BOOL)state;
- (void)setPasscodeLockVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (void)setPasscodeLockVisible:(BOOL)visible intent:(int)intent ignoringPreflightRequirementsForPresentation:(BOOL)presentation animated:(BOOL)animated completion:(id)completion;
@end

@implementation SBDashBoardLockScreenEnvironment

- (void)prepareForUIUnlock
{
  v3 = +[SBIdleTimerGlobalCoordinator sharedInstance];
  [v3 resetIdleTimerForReason:@"DB:PrepareForUIUnlock"];

  v4 = +[SBAlertItemsController sharedInstance];
  lockScreenModalAlertItemPresenter = [v4 lockScreenModalAlertItemPresenter];
  lockScreenActionContext = [lockScreenModalAlertItemPresenter lockScreenActionContext];

  if (lockScreenActionContext)
  {
    v6 = objc_alloc_init(MEMORY[0x277D02C88]);
    [v6 setLockScreenActionContext:lockScreenActionContext];
    [(SBLockScreenActionManager *)self->_lockScreenActionManager registerLockScreenActionProvider:v6 forSource:2];
  }

  [(CSCoverSheetViewController *)self->_coverSheetViewController prepareForUIUnlock];
}

- (SBDashBoardLockScreenEnvironment)init
{
  v20[2] = *MEMORY[0x277D85DE8];
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

  v5 = [[SBDefaultCoverSheetContext alloc] initWithWindowScene:embeddedDisplayWindowScene];
  v6 = objc_alloc(MEMORY[0x277D02C30]);
  authenticationController = [SBApp authenticationController];
  v8 = [v6 initWithAuthenticationProvider:authenticationController];

  v9 = objc_alloc_init(SBDashBoardCameraPageViewController);
  [(SBDashBoardCameraPageViewController *)v9 setCameraPageDelegate:self];
  v10 = MEMORY[0x277CBEB18];
  v20[0] = v8;
  v20[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v12 = [v10 arrayWithArray:v11];

  cameraPageViewController = self->_cameraPageViewController;
  self->_cameraPageViewController = v9;
  v14 = v9;

  v15 = objc_alloc(MEMORY[0x277D02BE8]);
  v16 = [MEMORY[0x277CBEA60] arrayWithArray:v12];

  v17 = [v15 initWithPageViewControllers:v16 mainPageContentViewController:v8 context:v5];
  v18 = [(SBDashBoardLockScreenEnvironment *)self initWithCoverSheetViewController:v17];

  return v18;
}

- (SBDashBoardLockScreenEnvironment)initWithCoverSheetViewController:(id)controller
{
  controllerCopy = controller;
  v59.receiver = self;
  v59.super_class = SBDashBoardLockScreenEnvironment;
  v6 = [(SBDashBoardLockScreenEnvironment *)&v59 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_20;
  }

  objc_storeStrong(&v6->_coverSheetViewController, controller);
  [(CSCoverSheetViewController *)v7->_coverSheetViewController addCoverSheetObserver:v7];
  v8 = [[SBDashBoardAnalyticsEmitter alloc] initWithCoverSheetViewController:v7->_coverSheetViewController];
  analyticsEmitter = v7->_analyticsEmitter;
  v7->_analyticsEmitter = v8;

  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRolePipelineManager") & 1) == 0)
  {
    v10 = objc_alloc_init(SBDashBoardOrientationController);
    orientationController = v7->_orientationController;
    v7->_orientationController = v10;

    [(CSCoverSheetViewController *)v7->_coverSheetViewController setOrientationUpdateController:v7->_orientationController];
  }

  if (LCSFeatureEnabled())
  {
    if (_os_feature_enabled_impl())
    {
      authenticationController = [SBApp authenticationController];
      v13 = [SBDashBoardExtensionWhileLockedCapturePolicy policyWithAuthenticationStatusProvider:authenticationController];
      captureLaunchPolicy = v7->_captureLaunchPolicy;
      v7->_captureLaunchPolicy = v13;

      goto LABEL_9;
    }

    if (_os_feature_enabled_impl())
    {
      v15 = SBDashBoardExtensionAlwaysCapturePolicy;
    }

    else
    {
      v15 = SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy;
    }
  }

  else
  {
    v15 = SBDashBoardCameraOnlyLaunchPolicy;
  }

  v16 = objc_alloc_init(v15);
  authenticationController = v7->_captureLaunchPolicy;
  v7->_captureLaunchPolicy = v16;
LABEL_9:

  [(SBDashBoardCaptureLaunchPolicy *)v7->_captureLaunchPolicy addLaunchPolicyObserver:v7];
  v17 = objc_alloc_init(SBDashBoardApplicationLauncher);
  applicationLauncher = v7->_applicationLauncher;
  v7->_applicationLauncher = v17;

  [(SBDashBoardApplicationLauncher *)v7->_applicationLauncher setCoverSheetViewController:v7->_coverSheetViewController];
  v19 = v7->_applicationLauncher;
  v20 = +[SBSecureAppManager sharedInstance];
  [(SBDashBoardApplicationLauncher *)v19 setSecureAppManager:v20];

  [(SBDashBoardApplicationLauncher *)v7->_applicationLauncher setCaptureLaunchPolicy:v7->_captureLaunchPolicy];
  [(CSCoverSheetViewController *)v7->_coverSheetViewController setCameraPrewarmer:v7->_applicationLauncher];
  [(CSCoverSheetViewController *)v7->_coverSheetViewController setApplicationLauncher:v7->_applicationLauncher];
  v21 = objc_alloc_init(SBDashBoardWidgetURLHandler);
  widgetURLHandler = v7->_widgetURLHandler;
  v7->_widgetURLHandler = v21;

  [(CSCoverSheetViewController *)v7->_coverSheetViewController setWidgetURLHandler:v7->_widgetURLHandler];
  v23 = objc_alloc_init(SBLockScreenActionManager);
  lockScreenActionManager = v7->_lockScreenActionManager;
  v7->_lockScreenActionManager = v23;

  [(SBLockScreenActionManager *)v7->_lockScreenActionManager registerLockScreenActionProvider:v7->_coverSheetViewController forSource:1];
  v25 = [[SBDashBoardEmergencyDialerController alloc] initWithCoverSheetViewController:v7->_coverSheetViewController];
  emergencyDialerController = v7->_emergencyDialerController;
  v7->_emergencyDialerController = v25;

  [(CSCoverSheetViewController *)v7->_coverSheetViewController setEmergencyCaller:v7->_emergencyDialerController];
  v27 = [[SBDashBoardPluginController alloc] initWithCoverSheetViewController:v7->_coverSheetViewController];
  pluginController = v7->_pluginController;
  v7->_pluginController = v27;

  v29 = v7->_lockScreenActionManager;
  lockScreenActionProvider = [(SBDashBoardPluginController *)v7->_pluginController lockScreenActionProvider];
  [(SBLockScreenActionManager *)v29 registerLockScreenActionProvider:lockScreenActionProvider forSource:11];

  v31 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  policyAggregator = [v31 policyAggregator];

  v33 = [[SBDashBoardPolicyBasedBehaviorProvider alloc] initWithCoverSheetViewController:v7->_coverSheetViewController policyAggregator:policyAggregator];
  policyBasedBehaviorProvider = v7->_policyBasedBehaviorProvider;
  v7->_policyBasedBehaviorProvider = v33;

  v35 = [SBDashBoardSetupController alloc];
  coverSheetViewController = v7->_coverSheetViewController;
  v37 = +[SBSetupManager sharedInstance];
  v38 = [(SBDashBoardSetupController *)v35 initWithCoverSheetViewController:coverSheetViewController setupManager:v37];
  setupController = v7->_setupController;
  v7->_setupController = v38;

  v40 = [[SBDashBoardBiometricUnlockController alloc] initWithCoverSheetViewController:v7->_coverSheetViewController];
  biometricUnlockController = v7->_biometricUnlockController;
  v7->_biometricUnlockController = v40;

  [(SBDashBoardBiometricUnlockController *)v7->_biometricUnlockController setBiometricUnlockBehaviorDelegate:v7];
  v42 = [[SBDashBoardIdleTimerController alloc] initWithCoverSheetViewController:v7->_coverSheetViewController];
  idleTimerController = v7->_idleTimerController;
  v7->_idleTimerController = v42;

  [(CSCoverSheetViewController *)v7->_coverSheetViewController setIdleTimerController:v7->_idleTimerController];
  if (!__sb__runningInSpringBoard())
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      goto LABEL_11;
    }

LABEL_13:
    v48 = objc_alloc_init(MEMORY[0x277D66440]);
    searchGesture = v7->_searchGesture;
    v7->_searchGesture = v48;

    [(SBSearchGesture *)v7->_searchGesture setDelegate:v7->_coverSheetViewController];
    [(CSCoverSheetViewController *)v7->_coverSheetViewController setSearchGesture:v7->_searchGesture];
    goto LABEL_14;
  }

  if (SBFEffectiveDeviceClass() == 2)
  {
    goto LABEL_13;
  }

LABEL_11:
  v44 = [[SBCoverSheetSpotlightPresenter alloc] initWithDelegate:v7->_coverSheetViewController];
  coverSheetSpotlightPresenter = v7->_coverSheetSpotlightPresenter;
  v7->_coverSheetSpotlightPresenter = v44;

  [(CSCoverSheetViewController *)v7->_coverSheetViewController setCoverSheetSpotlightPresenter:v7->_coverSheetSpotlightPresenter];
LABEL_14:
  backlightEnvironmentSessionProvider = [SBApp backlightEnvironmentSessionProvider];
  [backlightEnvironmentSessionProvider registerBacklightSceneHostEnvironmentProvider:v7->_coverSheetViewController];
  v51 = objc_alloc_init(SBBacklightSignificantUserInteractionMonitor);
  [(SBBacklightSignificantUserInteractionMonitor *)v51 setCoverSheetViewController:v7->_coverSheetViewController];
  blshService = [SBApp blshService];
  platformProvider = [blshService platformProvider];
  v54 = objc_opt_class();
  v55 = platformProvider;
  if (v54)
  {
    if (objc_opt_isKindOfClass())
    {
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v56 = 0;
  }

  v57 = v56;

  [v57 setSignificantUserInteractionMonitor:v51];
LABEL_20:

  return v7;
}

- (SBControlCenterPresenting)controlCenterPresenter
{
  _sbWindowScene = [(CSCoverSheetViewController *)self->_coverSheetViewController _sbWindowScene];
  controlCenterController = [_sbWindowScene controlCenterController];

  return controlCenterController;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBDashBoardLockScreenEnvironment *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_coverSheetViewController withName:@"coverSheetViewController"];
  v5 = [v3 appendObject:self->_orientationController withName:@"orientationController"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBDashBoardLockScreenEnvironment *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)defaultHostableEntityForActivationOfCamera:(id)camera
{
  v4 = [SBDeviceApplicationSceneEntity alloc];
  v5 = +[SBApplicationController sharedInstance];
  cameraApplication = [v5 cameraApplication];
  v7 = [(SBDeviceApplicationSceneEntity *)v4 initWithApplicationForMainDisplay:cameraApplication];

  v8 = [(SBDashBoardCaptureLaunchPolicy *)self->_captureLaunchPolicy resolveCameraDestinationLaunchOf:v7 fromSource:SBDashBoardCaptureLaunchSourceCameraPage];
  v9 = v8;
  if (v8 && ([v8 placement], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", SBDashBoardCapturePlacementCameraPage), v10, (v11 & 1) == 0))
  {
    v13 = SBLogDashBoard();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SBDashBoardLockScreenEnvironment *)v9 defaultHostableEntityForActivationOfCamera:v13];
    }

    entity = 0;
  }

  else
  {
    entity = [v9 entity];
  }

  return entity;
}

- (void)handleBiometricEvent:(unint64_t)event
{
  [(CSCoverSheetViewController *)self->_coverSheetViewController handleBiometricEvent:?];
  biometricUnlockController = self->_biometricUnlockController;

  [(SBDashBoardBiometricUnlockController *)biometricUnlockController handleBiometricEvent:event];
}

- (BOOL)biometricUnlockBehavior:(id)behavior requestsFeedback:(id)feedback
{
  feedbackCopy = feedback;
  biometricUnlockBehaviorDelegate = [(SBDashBoardLockScreenEnvironment *)self biometricUnlockBehaviorDelegate];
  LOBYTE(self) = [biometricUnlockBehaviorDelegate biometricUnlockBehavior:self requestsFeedback:feedbackCopy];

  return self;
}

- (BOOL)biometricUnlockBehavior:(id)behavior requestsUnlock:(id)unlock withFeedback:(id)feedback
{
  unlockCopy = unlock;
  feedbackCopy = feedback;
  mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
  hasPoseidonSupport = [mEMORY[0x277D67C98] hasPoseidonSupport];

  v11 = +[SBCoverSheetPresentationManager sharedInstance];
  v12 = v11;
  if (hasPoseidonSupport)
  {
    hasBeenDismissedSinceKeybagLockAndAuthenticated = [v11 hasBeenDismissedSinceKeybagLockAndAuthenticated];
  }

  else
  {
    hasBeenDismissedSinceKeybagLockAndAuthenticated = [v11 hasBeenDismissedSinceKeybagLock];
  }

  v14 = hasBeenDismissedSinceKeybagLockAndAuthenticated;

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    biometricUnlockBehaviorDelegate = [(SBDashBoardLockScreenEnvironment *)self biometricUnlockBehaviorDelegate];
    v15 = [biometricUnlockBehaviorDelegate biometricUnlockBehavior:self requestsUnlock:unlockCopy withFeedback:feedbackCopy];
  }

  return v15;
}

- (BOOL)handleLockButtonPress
{
  [(SBDashBoardBiometricUnlockController *)self->_biometricUnlockController noteLockButtonDown];
  coverSheetViewController = self->_coverSheetViewController;

  return [(CSCoverSheetViewController *)coverSheetViewController handleLockButtonPress];
}

- (void)coverSheetViewController:(id)controller didChangeActiveBehavior:(id)behavior
{
  v5 = [behavior proximityDetectionMode] == 2;

  [(SBDashBoardLockScreenEnvironment *)self _setExpectsFaceContact:v5];
}

- (void)setInScreenOffMode:(BOOL)mode forAutoUnlock:(BOOL)unlock fromUnlockSource:(int)source preservingCoverSheetPresentationState:(BOOL)state
{
  v6 = *&source;
  unlockCopy = unlock;
  modeCopy = mode;
  v27 = *MEMORY[0x277D85DE8];
  if (!mode)
  {
    v15 = [SBEventObserverRegistry sharedInstance:mode];
    [v15 setValue:0 forState:*MEMORY[0x277D66FA8]];

    v16 = +[SBEventObserverRegistry sharedInstance];
    [v16 postEventToInterestedObservers:*MEMORY[0x277D66F90]];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBLockScreenUndimmedNotification" object:0];
    goto LABEL_5;
  }

  [MEMORY[0x277D75D18] _performWithAnimation:&__block_literal_global_398];
  v11 = +[SBEventObserverRegistry sharedInstance];
  [v11 setValue:1 forState:*MEMORY[0x277D66FA8]];

  v12 = +[SBEventObserverRegistry sharedInstance];
  [v12 postEventToInterestedObservers:*MEMORY[0x277D66F88]];

  if (!state)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 postNotificationName:@"SBLockScreenDimmedNotification" object:0];

    defaultCenter = +[SBCoverSheetPresentationManager sharedInstance];
    [defaultCenter setCoverSheetPresented:1 animated:0 withCompletion:0];
LABEL_5:
  }

  [(CSCoverSheetViewController *)self->_coverSheetViewController setInScreenOffMode:modeCopy forAutoUnlock:unlockCopy fromUnlockSource:v6];
  v17 = +[SBBacklightController sharedInstance];
  screenIsOn = [v17 screenIsOn];
  v19 = screenIsOn ^ 1;

  if ((screenIsOn ^ 1) != modeCopy || screenIsOn == [(CSCoverSheetViewController *)self->_coverSheetViewController isInScreenOffMode])
  {
    v20 = SBLogDashBoard();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      isInScreenOffMode = [(CSCoverSheetViewController *)self->_coverSheetViewController isInScreenOffMode];
      v22[0] = 67109632;
      v22[1] = v19;
      v23 = 1024;
      v24 = modeCopy;
      v25 = 1024;
      v26 = isInScreenOffMode;
      _os_log_fault_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_FAULT, "Discontinuity in screenOffMode. BacklightController screenOff: %{BOOL}u. LockScreenEnvironment screenOffMode: %{BOOL}u. CoverSheet screenOffMode: %{BOOL}u.", v22, 0x14u);
    }
  }
}

void __124__SBDashBoardLockScreenEnvironment_setInScreenOffMode_forAutoUnlock_fromUnlockSource_preservingCoverSheetPresentationState___block_invoke()
{
  v0 = [SBApp HUDController];
  [v0 dismissHUDs:1];
}

- (void)prepareForUILock
{
  v3 = +[SBBacklightController sharedInstance];
  screenIsOn = [v3 screenIsOn];

  if (screenIsOn)
  {
    v5 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    [v5 resetIdleTimerForReason:@"DB:PrepareForUILock"];

    [(SBDashBoardLockScreenEnvironment *)self setInScreenOffMode:0];
  }

  v6 = +[SBAlertItemsController sharedInstance];
  [v6 convertUnlockedAlertsToLockedAlerts];

  coverSheetViewController = self->_coverSheetViewController;

  [(CSCoverSheetViewController *)coverSheetViewController prepareForUILock];
}

- (void)finishUIUnlockFromSource:(int)source
{
  [(CSCoverSheetViewController *)self->_coverSheetViewController finishUIUnlockFromSource:*&source];
  [(SBLockScreenActionManager *)self->_lockScreenActionManager runUnlockAction];
  lockScreenActionManager = self->_lockScreenActionManager;

  [(SBLockScreenActionManager *)lockScreenActionManager registerLockScreenActionProvider:0 forSource:2];
}

- (void)setAuthenticated:(BOOL)authenticated
{
  authenticatedCopy = authenticated;
  [(SBDashBoardBiometricUnlockController *)self->_biometricUnlockController setAuthenticated:?];
  coverSheetViewController = self->_coverSheetViewController;

  [(CSCoverSheetViewController *)coverSheetViewController setAuthenticated:authenticatedCopy];
}

- (void)setPasscodeLockVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  visibleCopy = visible;
  [(CSCoverSheetViewController *)self->_coverSheetViewController setPasscodeLockVisible:visible animated:animated completion:completion];

  [(SBDashBoardLockScreenEnvironment *)self _handleCoverSheetTranslationForPasscodeLockVisible:visibleCopy blockingForOtherReasons:0 ignoringPreflightRequirementsForPresentation:1];
}

- (void)setPasscodeLockVisible:(BOOL)visible intent:(int)intent ignoringPreflightRequirementsForPresentation:(BOOL)presentation animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  presentationCopy = presentation;
  visibleCopy = visible;
  v11 = intent & 0xFFFFFFFD;
  completionCopy = completion;
  v13 = CSFeatureEnabled();
  coverSheetViewController = self->_coverSheetViewController;
  if (v13)
  {
    [(CSCoverSheetViewController *)coverSheetViewController setPasscodeLockVisible:visibleCopy animated:animatedCopy showBackground:v11 != 1 forceBiometricPresentation:1 completion:completionCopy];
  }

  else
  {
    [(CSCoverSheetViewController *)coverSheetViewController setPasscodeLockVisible:visibleCopy animated:animatedCopy completion:completionCopy];
  }

  [(SBDashBoardLockScreenEnvironment *)self _handleCoverSheetTranslationForPasscodeLockVisible:visibleCopy blockingForOtherReasons:v11 != 1 ignoringPreflightRequirementsForPresentation:presentationCopy];
}

- (void)_handleCoverSheetTranslationForPasscodeLockVisible:(BOOL)visible blockingForOtherReasons:(BOOL)reasons ignoringPreflightRequirementsForPresentation:(BOOL)presentation
{
  if (visible && !reasons)
  {
    presentationCopy = presentation;
    if (CSFeatureEnabled())
    {
      self->_isHandlingUnlockAttempt = 1;
      v7 = +[SBCoverSheetPresentationManager sharedInstance];
      [v7 setCoverSheetTranslationToPresented:0 forcingTransition:0 ignoringPreflightRequirements:presentationCopy animated:1];

      self->_isHandlingUnlockAttempt = 0;
    }
  }
}

- (void)_setExpectsFaceContact:(BOOL)contact
{
  if (self->_expectsFaceContact != contact)
  {
    self->_expectsFaceContact = contact;
    v4 = +[SBCoverSheetPresentationManager sharedInstance];
    [v4 _updateProximitySensorState];
  }
}

- (SBBiometricUnlockBehaviorDelegate)biometricUnlockBehaviorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_biometricUnlockBehaviorDelegate);

  return WeakRetained;
}

- (void)defaultHostableEntityForActivationOfCamera:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 placement];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Unexpectedly received non-camera-page placement %@ for camera page launch source", &v4, 0xCu);
}

@end