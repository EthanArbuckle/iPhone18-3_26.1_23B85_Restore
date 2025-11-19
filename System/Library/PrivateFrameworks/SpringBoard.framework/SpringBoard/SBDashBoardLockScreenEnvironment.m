@interface SBDashBoardLockScreenEnvironment
- (BOOL)biometricUnlockBehavior:(id)a3 requestsFeedback:(id)a4;
- (BOOL)biometricUnlockBehavior:(id)a3 requestsUnlock:(id)a4 withFeedback:(id)a5;
- (BOOL)handleLockButtonPress;
- (SBBiometricUnlockBehaviorDelegate)biometricUnlockBehaviorDelegate;
- (SBControlCenterPresenting)controlCenterPresenter;
- (SBDashBoardLockScreenEnvironment)init;
- (SBDashBoardLockScreenEnvironment)initWithCoverSheetViewController:(id)a3;
- (id)defaultHostableEntityForActivationOfCamera:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_handleCoverSheetTranslationForPasscodeLockVisible:(BOOL)a3 blockingForOtherReasons:(BOOL)a4 ignoringPreflightRequirementsForPresentation:(BOOL)a5;
- (void)_setExpectsFaceContact:(BOOL)a3;
- (void)coverSheetViewController:(id)a3 didChangeActiveBehavior:(id)a4;
- (void)finishUIUnlockFromSource:(int)a3;
- (void)handleBiometricEvent:(unint64_t)a3;
- (void)prepareForUILock;
- (void)prepareForUIUnlock;
- (void)setAuthenticated:(BOOL)a3;
- (void)setInScreenOffMode:(BOOL)a3 forAutoUnlock:(BOOL)a4 fromUnlockSource:(int)a5 preservingCoverSheetPresentationState:(BOOL)a6;
- (void)setPasscodeLockVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setPasscodeLockVisible:(BOOL)a3 intent:(int)a4 ignoringPreflightRequirementsForPresentation:(BOOL)a5 animated:(BOOL)a6 completion:(id)a7;
@end

@implementation SBDashBoardLockScreenEnvironment

- (void)prepareForUIUnlock
{
  v3 = +[SBIdleTimerGlobalCoordinator sharedInstance];
  [v3 resetIdleTimerForReason:@"DB:PrepareForUIUnlock"];

  v4 = +[SBAlertItemsController sharedInstance];
  v5 = [v4 lockScreenModalAlertItemPresenter];
  v7 = [v5 lockScreenActionContext];

  if (v7)
  {
    v6 = objc_alloc_init(MEMORY[0x277D02C88]);
    [v6 setLockScreenActionContext:v7];
    [(SBLockScreenActionManager *)self->_lockScreenActionManager registerLockScreenActionProvider:v6 forSource:2];
  }

  [(CSCoverSheetViewController *)self->_coverSheetViewController prepareForUIUnlock];
}

- (SBDashBoardLockScreenEnvironment)init
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = [SBApp windowSceneManager];
  v4 = [v3 embeddedDisplayWindowScene];

  v5 = [[SBDefaultCoverSheetContext alloc] initWithWindowScene:v4];
  v6 = objc_alloc(MEMORY[0x277D02C30]);
  v7 = [SBApp authenticationController];
  v8 = [v6 initWithAuthenticationProvider:v7];

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

- (SBDashBoardLockScreenEnvironment)initWithCoverSheetViewController:(id)a3
{
  v5 = a3;
  v59.receiver = self;
  v59.super_class = SBDashBoardLockScreenEnvironment;
  v6 = [(SBDashBoardLockScreenEnvironment *)&v59 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_20;
  }

  objc_storeStrong(&v6->_coverSheetViewController, a3);
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
      v12 = [SBApp authenticationController];
      v13 = [SBDashBoardExtensionWhileLockedCapturePolicy policyWithAuthenticationStatusProvider:v12];
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
  v12 = v7->_captureLaunchPolicy;
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
  v30 = [(SBDashBoardPluginController *)v7->_pluginController lockScreenActionProvider];
  [(SBLockScreenActionManager *)v29 registerLockScreenActionProvider:v30 forSource:11];

  v31 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v32 = [v31 policyAggregator];

  v33 = [[SBDashBoardPolicyBasedBehaviorProvider alloc] initWithCoverSheetViewController:v7->_coverSheetViewController policyAggregator:v32];
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
    v46 = [MEMORY[0x277D75418] currentDevice];
    v47 = [v46 userInterfaceIdiom];

    if (v47 != 1)
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
  v50 = [SBApp backlightEnvironmentSessionProvider];
  [v50 registerBacklightSceneHostEnvironmentProvider:v7->_coverSheetViewController];
  v51 = objc_alloc_init(SBBacklightSignificantUserInteractionMonitor);
  [(SBBacklightSignificantUserInteractionMonitor *)v51 setCoverSheetViewController:v7->_coverSheetViewController];
  v52 = [SBApp blshService];
  v53 = [v52 platformProvider];
  v54 = objc_opt_class();
  v55 = v53;
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
  v2 = [(CSCoverSheetViewController *)self->_coverSheetViewController _sbWindowScene];
  v3 = [v2 controlCenterController];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(SBDashBoardLockScreenEnvironment *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_coverSheetViewController withName:@"coverSheetViewController"];
  v5 = [v3 appendObject:self->_orientationController withName:@"orientationController"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBDashBoardLockScreenEnvironment *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)defaultHostableEntityForActivationOfCamera:(id)a3
{
  v4 = [SBDeviceApplicationSceneEntity alloc];
  v5 = +[SBApplicationController sharedInstance];
  v6 = [v5 cameraApplication];
  v7 = [(SBDeviceApplicationSceneEntity *)v4 initWithApplicationForMainDisplay:v6];

  v8 = [(SBDashBoardCaptureLaunchPolicy *)self->_captureLaunchPolicy resolveCameraDestinationLaunchOf:v7 fromSource:SBDashBoardCaptureLaunchSourceCameraPage];
  v9 = v8;
  if (v8 && ([v8 placement], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", SBDashBoardCapturePlacementCameraPage), v10, (v11 & 1) == 0))
  {
    v13 = SBLogDashBoard();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SBDashBoardLockScreenEnvironment *)v9 defaultHostableEntityForActivationOfCamera:v13];
    }

    v12 = 0;
  }

  else
  {
    v12 = [v9 entity];
  }

  return v12;
}

- (void)handleBiometricEvent:(unint64_t)a3
{
  [(CSCoverSheetViewController *)self->_coverSheetViewController handleBiometricEvent:?];
  biometricUnlockController = self->_biometricUnlockController;

  [(SBDashBoardBiometricUnlockController *)biometricUnlockController handleBiometricEvent:a3];
}

- (BOOL)biometricUnlockBehavior:(id)a3 requestsFeedback:(id)a4
{
  v5 = a4;
  v6 = [(SBDashBoardLockScreenEnvironment *)self biometricUnlockBehaviorDelegate];
  LOBYTE(self) = [v6 biometricUnlockBehavior:self requestsFeedback:v5];

  return self;
}

- (BOOL)biometricUnlockBehavior:(id)a3 requestsUnlock:(id)a4 withFeedback:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277D67C98] sharedInstance];
  v10 = [v9 hasPoseidonSupport];

  v11 = +[SBCoverSheetPresentationManager sharedInstance];
  v12 = v11;
  if (v10)
  {
    v13 = [v11 hasBeenDismissedSinceKeybagLockAndAuthenticated];
  }

  else
  {
    v13 = [v11 hasBeenDismissedSinceKeybagLock];
  }

  v14 = v13;

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v16 = [(SBDashBoardLockScreenEnvironment *)self biometricUnlockBehaviorDelegate];
    v15 = [v16 biometricUnlockBehavior:self requestsUnlock:v7 withFeedback:v8];
  }

  return v15;
}

- (BOOL)handleLockButtonPress
{
  [(SBDashBoardBiometricUnlockController *)self->_biometricUnlockController noteLockButtonDown];
  coverSheetViewController = self->_coverSheetViewController;

  return [(CSCoverSheetViewController *)coverSheetViewController handleLockButtonPress];
}

- (void)coverSheetViewController:(id)a3 didChangeActiveBehavior:(id)a4
{
  v5 = [a4 proximityDetectionMode] == 2;

  [(SBDashBoardLockScreenEnvironment *)self _setExpectsFaceContact:v5];
}

- (void)setInScreenOffMode:(BOOL)a3 forAutoUnlock:(BOOL)a4 fromUnlockSource:(int)a5 preservingCoverSheetPresentationState:(BOOL)a6
{
  v6 = *&a5;
  v7 = a4;
  v8 = a3;
  v27 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v15 = [SBEventObserverRegistry sharedInstance:a3];
    [v15 setValue:0 forState:*MEMORY[0x277D66FA8]];

    v16 = +[SBEventObserverRegistry sharedInstance];
    [v16 postEventToInterestedObservers:*MEMORY[0x277D66F90]];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 postNotificationName:@"SBLockScreenUndimmedNotification" object:0];
    goto LABEL_5;
  }

  [MEMORY[0x277D75D18] _performWithAnimation:&__block_literal_global_398];
  v11 = +[SBEventObserverRegistry sharedInstance];
  [v11 setValue:1 forState:*MEMORY[0x277D66FA8]];

  v12 = +[SBEventObserverRegistry sharedInstance];
  [v12 postEventToInterestedObservers:*MEMORY[0x277D66F88]];

  if (!a6)
  {
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 postNotificationName:@"SBLockScreenDimmedNotification" object:0];

    v14 = +[SBCoverSheetPresentationManager sharedInstance];
    [v14 setCoverSheetPresented:1 animated:0 withCompletion:0];
LABEL_5:
  }

  [(CSCoverSheetViewController *)self->_coverSheetViewController setInScreenOffMode:v8 forAutoUnlock:v7 fromUnlockSource:v6];
  v17 = +[SBBacklightController sharedInstance];
  v18 = [v17 screenIsOn];
  v19 = v18 ^ 1;

  if ((v18 ^ 1) != v8 || v18 == [(CSCoverSheetViewController *)self->_coverSheetViewController isInScreenOffMode])
  {
    v20 = SBLogDashBoard();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v21 = [(CSCoverSheetViewController *)self->_coverSheetViewController isInScreenOffMode];
      v22[0] = 67109632;
      v22[1] = v19;
      v23 = 1024;
      v24 = v8;
      v25 = 1024;
      v26 = v21;
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
  v4 = [v3 screenIsOn];

  if (v4)
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

- (void)finishUIUnlockFromSource:(int)a3
{
  [(CSCoverSheetViewController *)self->_coverSheetViewController finishUIUnlockFromSource:*&a3];
  [(SBLockScreenActionManager *)self->_lockScreenActionManager runUnlockAction];
  lockScreenActionManager = self->_lockScreenActionManager;

  [(SBLockScreenActionManager *)lockScreenActionManager registerLockScreenActionProvider:0 forSource:2];
}

- (void)setAuthenticated:(BOOL)a3
{
  v3 = a3;
  [(SBDashBoardBiometricUnlockController *)self->_biometricUnlockController setAuthenticated:?];
  coverSheetViewController = self->_coverSheetViewController;

  [(CSCoverSheetViewController *)coverSheetViewController setAuthenticated:v3];
}

- (void)setPasscodeLockVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a3;
  [(CSCoverSheetViewController *)self->_coverSheetViewController setPasscodeLockVisible:a3 animated:a4 completion:a5];

  [(SBDashBoardLockScreenEnvironment *)self _handleCoverSheetTranslationForPasscodeLockVisible:v5 blockingForOtherReasons:0 ignoringPreflightRequirementsForPresentation:1];
}

- (void)setPasscodeLockVisible:(BOOL)a3 intent:(int)a4 ignoringPreflightRequirementsForPresentation:(BOOL)a5 animated:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v8 = a5;
  v9 = a3;
  v11 = a4 & 0xFFFFFFFD;
  v12 = a7;
  v13 = CSFeatureEnabled();
  coverSheetViewController = self->_coverSheetViewController;
  if (v13)
  {
    [(CSCoverSheetViewController *)coverSheetViewController setPasscodeLockVisible:v9 animated:v7 showBackground:v11 != 1 forceBiometricPresentation:1 completion:v12];
  }

  else
  {
    [(CSCoverSheetViewController *)coverSheetViewController setPasscodeLockVisible:v9 animated:v7 completion:v12];
  }

  [(SBDashBoardLockScreenEnvironment *)self _handleCoverSheetTranslationForPasscodeLockVisible:v9 blockingForOtherReasons:v11 != 1 ignoringPreflightRequirementsForPresentation:v8];
}

- (void)_handleCoverSheetTranslationForPasscodeLockVisible:(BOOL)a3 blockingForOtherReasons:(BOOL)a4 ignoringPreflightRequirementsForPresentation:(BOOL)a5
{
  if (a3 && !a4)
  {
    v5 = a5;
    if (CSFeatureEnabled())
    {
      self->_isHandlingUnlockAttempt = 1;
      v7 = +[SBCoverSheetPresentationManager sharedInstance];
      [v7 setCoverSheetTranslationToPresented:0 forcingTransition:0 ignoringPreflightRequirements:v5 animated:1];

      self->_isHandlingUnlockAttempt = 0;
    }
  }
}

- (void)_setExpectsFaceContact:(BOOL)a3
{
  if (self->_expectsFaceContact != a3)
  {
    self->_expectsFaceContact = a3;
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