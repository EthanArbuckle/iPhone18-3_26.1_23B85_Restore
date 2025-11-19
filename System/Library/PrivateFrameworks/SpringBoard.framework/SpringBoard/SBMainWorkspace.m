@interface SBMainWorkspace
+ (id)_sharedInstanceWithNilCheckPolicy:(int64_t)a3;
+ (id)debugDescription;
+ (id)start;
- (BOOL)_applicationProcessExited:(id)a3 withContext:(id)a4;
- (BOOL)_canAppWithBundleIdentifier:(id)a3 requestMovingContentToSceneOpenApplicationOptions:(id)a4;
- (BOOL)_canExecuteTransitionRequest:(id)a3 forExecution:(BOOL)a4;
- (BOOL)_canImplicitlyUnlockAtLockScreenWhileAuthenticatedFromOrigin:(id)a3 givenOrigin:(id)a4 trustedRequest:(BOOL)a5 outReason:(id *)a6;
- (BOOL)_executeApplicationTransitionRequest:(id)a3;
- (BOOL)_executeTransientOverlayTransitionRequest:(id)a3;
- (BOOL)_executeTransitionRequest:(id)a3 options:(unint64_t)a4 validator:(id)a5;
- (BOOL)_handleSetupExited:(id)a3;
- (BOOL)_isLaunchingApplicationAfterSetupForRequestWithBundleIdentifier:(id)a3 options:(id)a4 origin:(id)a5;
- (BOOL)_preflightTransitionRequest:(id)a3 forExecution:(BOOL)a4;
- (BOOL)_removeApplicationEntitiesFromWorkspace:(id)a3 error:(id *)a4;
- (BOOL)_setCurrentTransactionForRequest:(id)a3 fallbackProvider:(id)a4;
- (BOOL)dismissAllTransientOverlayPresentationsAnimated:(BOOL)a3;
- (BOOL)dismissTransientOverlayPresentationsAnimated:(BOOL)a3 windowScene:(id)a4 filter:(id)a5;
- (BOOL)dismissTransientOverlayViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)executeTransitionRequest:(id)a3;
- (BOOL)executeTransitionRequest:(id)a3 withValidator:(id)a4;
- (BOOL)isApplicationRunningAsViewService:(id)a3;
- (BOOL)isKeyboardVisibleForSpringBoardForTransientOverlayScenePresenter:(id)a3;
- (BOOL)presentTransientOverlayViewController:(id)a3 originatingProcess:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (BOOL)requestTransitionWithBuilder:(id)a3;
- (BOOL)requestTransitionWithOptions:(unint64_t)a3 builder:(id)a4 validator:(id)a5;
- (BOOL)requestTransitionWithOptions:(unint64_t)a3 displayConfiguration:(id)a4 builder:(id)a5;
- (BOOL)requestTransitionWithOptions:(unint64_t)a3 displayConfiguration:(id)a4 builder:(id)a5 validator:(id)a6;
- (BOOL)transientOverlayScenePresenter:(id)a3 shouldResignFirstResponderForKeyWindow:(id)a4;
- (NSString)debugDescription;
- (SBIdleTimerProviding)_activeIdleTimerProvider;
- (SBMainWorkspace)init;
- (SBMainWorkspace)initWithEventQueue:(id)a3;
- (id)_alertItemForPreventingLaunchOfApp:(id)a3 fromTrustState:(unint64_t)a4;
- (id)_applicationForIdentifier:(id)a3;
- (id)_generateIdleTimerBehaviorForReason:(id)a3;
- (id)_handlerForExtensionPoint:(id)a3;
- (id)_parseShellArguments:(id)a3;
- (id)_sceneComparatorForApplication:(id)a3 keyboardFocusScene:(id)a4;
- (id)_selectTransactionForAppActivationRequest:(id)a3;
- (id)_selectTransactionForAppActivationUnderMainScreenLock:(id)a3 withResult:(id)a4;
- (id)_selectTransactionForAppActivationUnderMainScreenLockRequest:(id)a3;
- (id)_selectTransactionForAppEntityRemoved:(id)a3;
- (id)_selectTransactionForAppRelaunch:(id)a3;
- (id)_selectTransactionForReturningToTheLockScreenAndForceToBuddy:(BOOL)a3;
- (id)_selectTransactionForReturningToTheLockScreenWithRequest:(id)a3;
- (id)_selectTransactionForTransientOverlayPresentationRequest:(id)a3;
- (id)_targetWindowSceneForApplication:(id)a3 options:(id)a4 settings:(id)a5 requireForeground:(BOOL)a6 targetDisplayConfiguration:(id *)a7 error:(id *)a8;
- (id)_targetWindowSceneForApplication:(id)a3 preferringDisplay:(id)a4 requireForeground:(BOOL)a5 options:(id)a6;
- (id)_transactionForTransitionRequest:(id)a3;
- (id)_validateRequestToOpenApplication:(id)a3 options:(id)a4 origin:(id)a5 error:(id *)a6;
- (id)bannerLongLookPresentationObservationTokenForTransientOverlayScenePresenter:(id)a3;
- (id)controlCenterPresentationObservationTokenForTransientOverlayScenePresenter:(id)a3;
- (id)createRequestForApplicationActivation:(id)a3 options:(unint64_t)a4;
- (id)createRequestForApplicationActivation:(id)a3 withDisplayConfiguration:(id)a4 options:(unint64_t)a5;
- (id)createRequestWithOptions:(unint64_t)a3 displayConfiguration:(id)a4;
- (id)currentStatusBarSettingsForTransientOverlayScenePresenter:(id)a3;
- (id)idleTimerProvider:(id)a3 didProposeBehavior:(id)a4 forReason:(id)a5;
- (id)inCallPresentationManager:(id)a3 createPresentationSessionWithSceneHandle:(id)a4;
- (id)siriPresentationObservationTokenForTransientOverlayScenePresenter:(id)a3;
- (id)systemServiceApplicationInfoProvider:(id)a3;
- (id)transientOverlayScenePresenter:(id)a3 acquireBannerLongLookWindowLevelAssertionWithReason:(id)a4 windowLevel:(double)a5;
- (id)transientOverlayScenePresenter:(id)a3 acquireControlCenterWindowLevelAssertionWithReason:(id)a4 windowLevel:(double)a5;
- (id)transientOverlayScenePresenter:(id)a3 acquireDisableAutoUnlockAssertionWithReason:(id)a4;
- (id)transientOverlayScenePresenter:(id)a3 acquireHideAppStatusBarAssertionWithReason:(id)a4 animated:(BOOL)a5;
- (id)transientOverlayScenePresenter:(id)a3 acquireInteractiveScreenshotGestureDisabledAssertionWithReason:(id)a4;
- (id)transientOverlayScenePresenter:(id)a3 acquireProximitySensorEnabledAssertionWithReason:(id)a4;
- (id)transientOverlayScenePresenter:(id)a3 acquireSiriWindowLevelAssertionWithReason:(id)a4 windowLevel:(double)a5;
- (id)transientOverlayScenePresenter:(id)a3 acquireWallpaperAnimationSuspensionAssertionWithReason:(id)a4;
- (id)transientOverlayScenePresenter:(id)a3 newSceneDeactivationAssertionWithReason:(int64_t)a4;
- (int64_t)inCallPresentationManager:(id)a3 interfaceOrientationForBannerPresentationInWindowScene:(id)a4;
- (int64_t)inCallPresentationManager:(id)a3 interfaceOrientationForTransientOverlayPresentationInWindowScene:(id)a4;
- (unint64_t)_defaultSiriWorkspaceTransitionOptions;
- (unint64_t)_siriWorkspaceTransitionOptionsFromOpenApplicationOptions:(id)a3;
- (unint64_t)defaultSupportedInterfaceOrientationsForTransientOverlayScenePresenter:(id)a3;
- (void)_addRequestCompletionBlock:(id)a3 toTransaction:(id)a4;
- (void)_addStateCaptureHandlers;
- (void)_attemptUnlockToApplication:(id)a3 showPasscode:(BOOL)a4 origin:(id)a5 givenOrigin:(id)a6 options:(id)a7 completion:(id)a8;
- (void)_broadcastCurrentTransaction;
- (void)_cleanupAppRepairRequest:(id)a3;
- (void)_cleanupForRemovedAppEntity:(id)a3;
- (void)_defaultSiriWorkspaceTransitionOptions;
- (void)_destroyApplicationSceneEntity:(id)a3;
- (void)_determineSourceForTransitionRequest:(id)a3;
- (void)_dismissPresentedControlCenterModule:(id)a3;
- (void)_executeSuspendedTransactionForRequest:(id)a3;
- (void)_finishInitialization;
- (void)_handleBuddyLaunchFinished;
- (void)_handleOpenApplicationRequest:(id)a3 options:(id)a4 activationSettings:(id)a5 origin:(id)a6 withResult:(id)a7;
- (void)_handleTrustedOpenRequestForApplication:(id)a3 options:(id)a4 activationSettings:(id)a5 origin:(id)a6 withResult:(id)a7;
- (void)_handleUntrustedOpenRequestForApplication:(id)a3 options:(id)a4 activationSettings:(id)a5 origin:(id)a6 withResult:(id)a7;
- (void)_handleUserActionRequest:(id)a3 options:(id)a4 activationSettings:(id)a5 origin:(id)a6 withResult:(id)a7;
- (void)_initializeAndObserveDefaults;
- (void)_noteDidWakeFromSleep;
- (void)_proposeIdleTimerBehaviorForReason:(id)a3;
- (void)_removeApplicationEntities:(id)a3 withDestructionIntent:(id)a4 completion:(id)a5;
- (void)_resume;
- (void)_suspend;
- (void)_updateActivationSettings:(id)a3 forRequestWithOptions:(id)a4 clientProcess:(id)a5 application:(id)a6;
- (void)applicationProcessDebuggingStateDidChange:(id)a3;
- (void)applicationProcessDidExit:(id)a3 withContext:(id)a4;
- (void)applicationProcessDidLaunch:(id)a3;
- (void)applicationProcessWillLaunch:(id)a3;
- (void)backlightController:(id)a3 didAnimateBacklightToFactor:(float)a4 source:(int64_t)a5;
- (void)controlCenterModuleTransientOverlayViewControllerNeedsDismissal:(id)a3;
- (void)dealloc;
- (void)dismissPowerDownTransientOverlayWithCompletion:(id)a3;
- (void)powerDownViewControllerDidDisappear:(id)a3;
- (void)powerDownViewControllerRequestsPowerDown:(id)a3;
- (void)presentModuleWithIdentifier:(id)a3 options:(id)a4 completion:(id)a5;
- (void)presentPowerDownTransientOverlay;
- (void)process:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5;
- (void)processManager:(id)a3 didAddProcess:(id)a4;
- (void)registerHandler:(id)a3 forExtensionPoint:(id)a4;
- (void)setCurrentTransaction:(id)a3;
- (void)setPipCoordinator:(id)a3;
- (void)systemService:(id)a3 canActivateApplication:(id)a4 withResult:(id)a5;
- (void)systemService:(id)a3 handleActions:(id)a4 origin:(id)a5 withResult:(id)a6;
- (void)systemService:(id)a3 handleOpenApplicationRequest:(id)a4 withCompletion:(id)a5;
- (void)systemService:(id)a3 isPasscodeLockedOrBlockedWithResult:(id)a4;
- (void)systemService:(id)a3 prepareForShutdownWithOptions:(id)a4 origin:(id)a5;
- (void)systemServicePrepareForExit:(id)a3 andRelaunch:(BOOL)a4;
- (void)systemSleepMonitor:(id)a3 prepareForSleepWithCompletion:(id)a4;
- (void)systemSleepMonitorDidWakeFromSleep:(id)a3;
- (void)systemSleepMonitorSleepRequestAborted:(id)a3;
- (void)systemSleepMonitorWillWakeFromSleep:(id)a3;
- (void)transactionDidComplete:(id)a3;
- (void)transientOverlayScenePresenter:(id)a3 didDismissViewController:(id)a4 wasTopmostPresentation:(BOOL)a5;
- (void)transientOverlayScenePresenter:(id)a3 preferredWhitePointAdaptivityStyleDidChangeWithAnimationSettings:(id)a4;
- (void)transientOverlayScenePresenter:(id)a3 registerCoverSheetExternalBehaviorProvider:(id)a4;
- (void)transientOverlayScenePresenter:(id)a3 unregisterCoverSheetExternalBehaviorProvider:(id)a4;
- (void)transientOverlayScenePresenter:(id)a3 willPresentViewController:(id)a4;
- (void)transientOverlayScenePresenterRequestsAppIconForceTouchDismissal:(id)a3 animated:(BOOL)a4;
- (void)transientOverlayScenePresenterRequestsControlCenterDismissal:(id)a3 animated:(BOOL)a4;
- (void)transientOverlayScenePresenterRequestsSiriDismissal:(id)a3 animated:(BOOL)a4;
- (void)watchdogFired:(id)a3;
@end

@implementation SBMainWorkspace

- (SBIdleTimerProviding)_activeIdleTimerProvider
{
  v2 = [SBApp accidentalActivationMitigationSessionCoordinator];
  v3 = +[SBLockScreenManager sharedInstanceIfExists];
  v4 = [SBApp windowSceneManager];
  v5 = [v4 connectedWindowScenes];
  v6 = [v5 bs_firstObjectPassingTest:&__block_literal_global_307];
  v7 = [v5 bs_firstObjectPassingTest:&__block_literal_global_309];
  v33 = [v6 modalLibraryController];
  v8 = [v6 sceneManager];
  v9 = objc_opt_class();
  v10 = v8;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v7 sceneManager];
  v14 = objc_opt_class();
  v15 = v13;
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = [v2 hasIdleTimerBehaviors];
  v19 = v2;
  if ((v18 & 1) == 0)
  {
    p_transientOverlayPresentationManager = &self->_transientOverlayPresentationManager;
    if ([(SBTransientOverlayPresentationManager *)self->_transientOverlayPresentationManager hasIdleTimerBehaviors])
    {
LABEL_13:
      v19 = *p_transientOverlayPresentationManager;
      goto LABEL_17;
    }

    v21 = [v3 isUILocked];
    v19 = v3;
    if ((v21 & 1) == 0)
    {
      v22 = +[SBCoverSheetPresentationManager sharedInstance];
      v23 = [v22 isVisible];

      v19 = v3;
      if ((v23 & 1) == 0)
      {
        v24 = [v33 hasIdleTimerBehaviors];
        v19 = v33;
        if ((v24 & 1) == 0)
        {
          p_transientOverlayPresentationManager = &self->_pipCoordinator;
          if ([(SBPIPControllerCoordinator *)self->_pipCoordinator hasIdleTimerBehaviors])
          {
            goto LABEL_13;
          }

          if (![v12 hasIdleTimerBehaviors] || (v28 = objc_msgSend(v12, "wantsDisableIdleTimer"), v19 = v12, (v28 & 1) == 0))
          {
            if (![v17 hasIdleTimerBehaviors] || (v29 = objc_msgSend(v17, "wantsDisableIdleTimer"), v19 = v17, (v29 & 1) == 0))
            {
              v30 = [v12 hasIdleTimerBehaviors];
              v19 = v12;
              if ((v30 & 1) == 0)
              {
                v31 = [v17 hasIdleTimerBehaviors];
                v19 = v17;
                if ((v31 & 1) == 0)
                {
                  p_transientOverlayPresentationManager = &SBApp;
                  goto LABEL_13;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_17:
  v25 = v19;
  v26 = v25;

  return v25;
}

- (void)_noteDidWakeFromSleep
{
  BSDispatchQueueAssertMain();
  __SBWIsSleeping = 0;
  if (__SBWGatherUsageTime == 1 && *&__SBWLastUsageTimeGMT != 0.0)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    __SBWLastUsageTimeGMT = v2;
  }

  _SBWorkspaceNoteSleepOrWake(1);
  v3 = _noteDidWakeFromSleep___WakeSound;
  if (__playSoundOnWake == 1)
  {
    if (!_noteDidWakeFromSleep___WakeSound)
    {
      v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/AppleInternal/Library/PreferenceBundles/Internal Settings.bundle/4_note_rising.aiff"];
      v5 = [objc_alloc(MEMORY[0x277CB83D8]) initWithContentsOfURL:v4 error:0];
      v6 = _noteDidWakeFromSleep___WakeSound;
      _noteDidWakeFromSleep___WakeSound = v5;

      v3 = _noteDidWakeFromSleep___WakeSound;
    }

    [v3 play];
  }

  else if (_noteDidWakeFromSleep___WakeSound)
  {
    _noteDidWakeFromSleep___WakeSound = 0;
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"SBWorkspaceDidWakeFromSleepNotification" object:0 userInfo:0];
}

+ (id)start
{
  v3 = SBLogWorkspace();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "[SBWorkspace] start", v6, 2u);
  }

  v4 = [a1 _sharedInstanceWithNilCheckPolicy:2];
  [v4 _resume];

  return v4;
}

+ (id)_sharedInstanceWithNilCheckPolicy:(int64_t)a3
{
  if (a3 == 1)
  {
    if (!_sharedInstanceWithNilCheckPolicy____sharedInstance)
    {
      +[SBMainWorkspace _sharedInstanceWithNilCheckPolicy:];
    }
  }

  else if (a3 == 2 && !_sharedInstanceWithNilCheckPolicy____sharedInstance)
  {
    kdebug_trace();
    v3 = objc_alloc_init(SBMainWorkspace);
    v4 = _sharedInstanceWithNilCheckPolicy____sharedInstance;
    _sharedInstanceWithNilCheckPolicy____sharedInstance = v3;

    kdebug_trace();
  }

  v5 = _sharedInstanceWithNilCheckPolicy____sharedInstance;

  return v5;
}

- (SBMainWorkspace)init
{
  v3 = [MEMORY[0x277D0AB20] sharedInstance];
  v29.receiver = self;
  v29.super_class = SBMainWorkspace;
  v4 = [(SBWorkspace *)&v29 initWithEventQueue:v3];

  if (v4)
  {
    v5 = [[SBIdleTimerCoordinatorHelper alloc] initWithSourceProvider:v4];
    idleTimerCoordinatorHelper = v4->_idleTimerCoordinatorHelper;
    v4->_idleTimerCoordinatorHelper = v5;

    v7 = [MEMORY[0x277CFC870] sharedInstance];
    [v7 registerEndpoint:v4];

    v8 = [SBTransientOverlayPresentationManager alloc];
    v9 = [SBApp windowSceneManager];
    v10 = +[SBAlertItemsController sharedInstance];
    v11 = +[SBLockStateAggregator sharedInstance];
    v12 = +[SBReachabilityManager sharedInstance];
    v13 = [(SBTransientOverlayPresentationManager *)v8 initWithWindowSceneManager:v9 alertItemsController:v10 lockStateAggregator:v11 reachabilityManager:v12];
    transientOverlayPresentationManager = v4->_transientOverlayPresentationManager;
    v4->_transientOverlayPresentationManager = v13;

    v15 = v4->_transientOverlayPresentationManager;
    v16 = [SBApp bannerManager];
    [(SBTransientOverlayPresentationManager *)v15 setBannerManager:v16];

    [(SBTransientOverlayPresentationManager *)v4->_transientOverlayPresentationManager setPresenterDelegate:v4];
    [(SBTransientOverlayPresentationManager *)v4->_transientOverlayPresentationManager setIdleTimerCoordinator:v4];
    v17 = +[SBInCallPresentationManager isSpecializedAPISupported];
    if (v17)
    {
      v18 = 0;
    }

    else
    {
      v18 = objc_alloc_init(SBInCallTransientOverlayManager);
    }

    objc_storeStrong(&v4->_inCallTransientOverlayManager, v18);
    if (!v17)
    {
    }

    v19 = +[SBKeyboardFocusCoordinator sharedInstance];
    keyboardFocusCoordinator = v4->_keyboardFocusCoordinator;
    v4->_keyboardFocusCoordinator = v19;

    v21 = [SBUniversalControlServer alloc];
    v22 = v4->_keyboardFocusCoordinator;
    v23 = +[SBKeyboardSuppressionManager sharedInstance];
    v24 = [(SBUniversalControlServer *)v21 initWithKeyboardFocusController:v22 keyboardSuppressionManager:v23];
    universalControlServer = v4->_universalControlServer;
    v4->_universalControlServer = v24;

    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    [v26 addObserver:v4 selector:sel__coversheetDidPresent name:@"SBCoverSheetDidPresentNotification" object:0];
    [v26 addObserver:v4 selector:sel__coversheetDidDismiss name:@"SBCoverSheetDidDismissNotification" object:0];
    [(SBMainWorkspace *)v4 _suspend];
    v27 = [MEMORY[0x277D6C0A0] monitorUsingMainQueue];
    [v27 addObserver:v4];

    [(SBMainWorkspace *)v4 _initializeAndObserveDefaults];
    [(SBMainWorkspace *)v4 _addStateCaptureHandlers];
  }

  return v4;
}

- (SBMainWorkspace)initWithEventQueue:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SBWorkspace.m" lineNumber:1788 description:@"just don't call this"];

  return [(SBMainWorkspace *)self init];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x277D0AB08] sharedInstance];
  [v4 setDelegate:0];

  v5 = [MEMORY[0x277D0AAC0] sharedInstance];
  [v5 removeObserver:self];

  [(SBPowerDownViewController *)self->_powerDownViewController setDelegate:0];
  if (self->_powerDownLongPressDurationAssertion)
  {
    v6 = [SBApp homeHardwareButton];
    [v6 removeLongPressDurationAssertion:self->_powerDownLongPressDurationAssertion];
  }

  [(BSEventQueueLock *)self->_currentTransactionLock relinquish];
  [(SBWindowSceneStatusBarSettingsAssertion *)self->_statusBarAssertion invalidate];
  v7.receiver = self;
  v7.super_class = SBMainWorkspace;
  [(SBMainWorkspace *)&v7 dealloc];
}

+ (id)debugDescription
{
  v2 = [a1 sharedInstance];
  v3 = [v2 debugDescription];

  return v3;
}

- (NSString)debugDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 setUseDebugDescription:1];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __35__SBMainWorkspace_debugDescription__block_invoke;
  v10 = &unk_2783A92D8;
  v11 = v3;
  v12 = self;
  v4 = v3;
  [v4 appendBodySectionWithName:0 multilinePrefix:0 block:&v7];
  v5 = [v4 build];

  return v5;
}

void __35__SBMainWorkspace_debugDescription__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D0AAD8] sharedInstance];
  v4 = [v2 appendObject:v3 withName:@"sceneManager"];

  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 200) withName:@"transientOverlayPresentationManager"];
  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"currentTransaction"];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) eventQueue];
  v9 = [v7 appendObject:v8 withName:@"eventQueue"];

  v10 = *(a1 + 32);
  v12 = +[SBDaemonHandler stateDescription];
  v11 = [v10 appendObject:v12 withName:@"daemonHandlers"];
}

- (void)_addStateCaptureHandlers
{
  v2 = MEMORY[0x277D85CD0];
  v3 = BSLogAddStateCaptureBlockForUserRequestsOnlyWithTitle();
  v4 = BSLogAddStateCaptureBlockForUserRequestsOnlyWithTitle();

  v5 = BSLogAddStateCaptureBlockForUserRequestsOnlyWithTitle();
  v6 = BSLogAddStateCaptureBlockForUserRequestsOnlyWithTitle();
}

__CFString *__43__SBMainWorkspace__addStateCaptureHandlers__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v3 = [v2 debugDescription];
    if (([SBApp _isRemoteStateDumpEnabled] & 1) != 0 || BSLogStateCaptureCheckPlistSizeIsPermitted())
    {
      v4 = v3;
    }

    else
    {
      v4 = [*(*(a1 + 32) + 48) description];
    }

    v5 = v4;
  }

  else
  {
    v5 = @"None";
  }

  return v5;
}

id __43__SBMainWorkspace__addStateCaptureHandlers__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) eventQueue];
  v2 = [v1 description];

  return v2;
}

- (id)createRequestWithOptions:(unint64_t)a3 displayConfiguration:(id)a4
{
  v6 = a4;
  if ((a3 & 0x60) == 0)
  {
    a3 |= [(SBMainWorkspace *)self _defaultSiriWorkspaceTransitionOptions];
  }

  v7 = [SBApp windowSceneManager];
  v8 = [v7 embeddedDisplayWindowScene];
  v9 = [v8 _fbsDisplayConfiguration];

  v10 = [SBMainWorkspaceTransitionRequest alloc];
  v11 = v10;
  if ((a3 & 8) != 0)
  {
    v14 = [v9 copyForSecureRendering];
    v13 = [(SBMainWorkspaceTransitionRequest *)v11 initWithDisplayConfiguration:v14];
  }

  else
  {
    if (v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = v9;
    }

    v13 = [(SBMainWorkspaceTransitionRequest *)v10 initWithDisplayConfiguration:v12];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__SBMainWorkspace_createRequestWithOptions_displayConfiguration___block_invoke;
  v16[3] = &__block_descriptor_40_e54_v16__0__SBWorkspaceApplicationSceneTransitionContext_8l;
  v16[4] = a3;
  [(SBWorkspaceTransitionRequest *)v13 modifyApplicationContext:v16];

  return v13;
}

void __65__SBMainWorkspace_createRequestWithOptions_displayConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if ((v4 & 2) != 0)
  {
    [v3 setBackground:1];
    v3 = v5;
    v4 = *(a1 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v5 setAnimationDisabled:1];
  v3 = v5;
  v4 = *(a1 + 32);
  if ((v4 & 0x10) != 0)
  {
LABEL_4:
    [v5 setSceneless:1];
    v3 = v5;
    v4 = *(a1 + 32);
  }

LABEL_5:
  if ((v4 & 0x60) != 0)
  {
    [v5 setRetainsSiri:(v4 >> 5) & 1];
    v3 = v5;
  }
}

- (unint64_t)_defaultSiriWorkspaceTransitionOptions
{
  v2 = +[SBAssistantController sharedInstance];
  v3 = [v2 isSystemAssistantExperiencePersistentSiriEnabled];

  v4 = SBLogWorkspace();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      [SBMainWorkspace _defaultSiriWorkspaceTransitionOptions];
    }

    v6 = 32;
  }

  else
  {
    if (v5)
    {
      [SBMainWorkspace _defaultSiriWorkspaceTransitionOptions];
    }

    v6 = 64;
  }

  return v6;
}

- (id)createRequestForApplicationActivation:(id)a3 options:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = SBMainWorkspace;
  v4 = [(SBWorkspace *)&v6 createRequestForApplicationActivation:a3 options:a4];

  return v4;
}

- (id)createRequestForApplicationActivation:(id)a3 withDisplayConfiguration:(id)a4 options:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = SBMainWorkspace;
  v5 = [(SBWorkspace *)&v7 createRequestForApplicationActivation:a3 withDisplayConfiguration:a4 options:a5];

  return v5;
}

- (BOOL)requestTransitionWithBuilder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBMainWorkspace;
  return [(SBWorkspace *)&v4 requestTransitionWithBuilder:a3];
}

- (BOOL)requestTransitionWithOptions:(unint64_t)a3 builder:(id)a4 validator:(id)a5
{
  v6.receiver = self;
  v6.super_class = SBMainWorkspace;
  return [(SBWorkspace *)&v6 requestTransitionWithOptions:a3 builder:a4 validator:a5];
}

- (BOOL)requestTransitionWithOptions:(unint64_t)a3 displayConfiguration:(id)a4 builder:(id)a5
{
  v6.receiver = self;
  v6.super_class = SBMainWorkspace;
  return [(SBWorkspace *)&v6 requestTransitionWithOptions:a3 displayConfiguration:a4 builder:a5];
}

- (BOOL)requestTransitionWithOptions:(unint64_t)a3 displayConfiguration:(id)a4 builder:(id)a5 validator:(id)a6
{
  v7.receiver = self;
  v7.super_class = SBMainWorkspace;
  return [(SBWorkspace *)&v7 requestTransitionWithOptions:a3 displayConfiguration:a4 builder:a5 validator:a6];
}

- (BOOL)executeTransitionRequest:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBMainWorkspace;
  return [(SBWorkspace *)&v4 executeTransitionRequest:a3];
}

- (BOOL)executeTransitionRequest:(id)a3 withValidator:(id)a4
{
  v5.receiver = self;
  v5.super_class = SBMainWorkspace;
  return [(SBWorkspace *)&v5 executeTransitionRequest:a3 withValidator:a4];
}

- (id)_transactionForTransitionRequest:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!self->_currentTransaction)
  {
    v6 = [(SBWorkspace *)self eventQueue];
    v7 = [v6 executingEvent];

    if (!v7)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"SBWorkspace.m" lineNumber:1963 description:@"must be called from a transaction or on a workspace event"];
    }
  }

  v9 = [v5 transientOverlayContext];
  if (v9)
  {
    [(SBMainWorkspace *)self _selectTransactionForTransientOverlayPresentationRequest:v5];
  }

  else
  {
    [(SBMainWorkspace *)self _selectTransactionForAppActivationRequest:v5];
  }
  v10 = ;
  v11 = SBLogTransactionVerbose();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);

  if (v12)
  {
    v13 = SBLogTransactionVerbose();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SBMainWorkspace _transactionForTransitionRequest:];
    }
  }

  else
  {
    v13 = SBLogTransaction();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [MEMORY[0x277CF0C00] descriptionForObject:v10];
      v15 = [v10 transitionRequest];
      v16 = [v15 compactDescriptionBuilder];
      v17 = [v16 build];
      v19 = 138543618;
      v20 = v14;
      v21 = 2114;
      v22 = v17;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "Prepared %{public}@ for transition request:\n%{public}@", &v19, 0x16u);
    }
  }

  return v10;
}

- (BOOL)_canExecuteTransitionRequest:(id)a3 forExecution:(BOOL)a4
{
  v4 = a4;
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = SBLogWorkspace();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 succinctDescription];
    *buf = 138412290;
    v61 = v8;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Can execute transition request: %@", buf, 0xCu);
  }

  if (![(SBMainWorkspace *)self _preflightTransitionRequest:v6 forExecution:v4])
  {
    [v6 declineWithReason:@"Failed preflight"];
    v17 = 0;
    goto LABEL_48;
  }

  [(SBMainWorkspace *)self _determineSourceForTransitionRequest:v6];
  v9 = +[SBSceneManagerCoordinator sharedInstance];
  v10 = [v6 displayIdentity];
  v11 = [v9 sceneManagerForDisplayIdentity:v10];

  v12 = [v11 policyAggregator];
  LOBYTE(v10) = [v12 allowsTransitionRequest:v6];

  if ((v10 & 1) == 0)
  {
    [v6 declineWithReason:@"Vetoed by policy aggregator."];
    v17 = 0;
    goto LABEL_47;
  }

  v13 = +[SBSOSEventHandler sharedInstance];
  v14 = [v13 isSOSActive];

  v15 = [v6 applicationContext];
  v54 = v14;
  if ([v15 requestedUnlockedEnvironmentMode] == 2)
  {
    if (v14)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requesting app switcher while SOS is active"];
      [v6 declineWithReason:v16];
LABEL_8:
      v17 = 0;
      goto LABEL_46;
    }

    v18 = [SBApp windowSceneManager];
    v19 = [v6 displayIdentity];
    v16 = [v18 windowSceneForDisplayIdentity:v19];

    v20 = [v16 transientOverlayPresenter];
    v21 = [v20 topmostPresentedViewController];

    if (v21)
    {
      v22 = [v16 switcherController];
      v23 = [[SBWorkspaceTransientOverlay alloc] initWithViewController:v21];
      v24 = [v22 appLayoutForWorkspaceTransientOverlay:v23];

      if (!v24)
      {
        v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requesting app switcher and presenting switcher ineligible view controller %@", v21];
        [v6 declineWithReason:v47];

        goto LABEL_8;
      }
    }

    v14 = v54;
  }

  if (!_canExecuteTransitionRequest_forExecution__canAppearOverSOSApps)
  {
    v25 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.siri", @"com.apple.InCallService", @"com.apple.SOSBuddy", @"com.apple.MobileSMS", @"com.apple.camera", @"com.apple.mobileslideshow", 0}];
    v26 = _canExecuteTransitionRequest_forExecution__canAppearOverSOSApps;
    _canExecuteTransitionRequest_forExecution__canAppearOverSOSApps = v25;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v16 = [v15 applicationSceneEntities];
  v27 = [v16 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (!v27)
  {
    v17 = 1;
    goto LABEL_46;
  }

  v28 = v27;
  v52 = v11;
  v53 = v6;
  v51 = v15;
  v29 = *v56;
  v30 = @"com.apple.PrintKit.Print-Center";
LABEL_19:
  v31 = 0;
  while (1)
  {
    if (*v56 != v29)
    {
      objc_enumerationMutation(v16);
    }

    v32 = *(*(&v55 + 1) + 8 * v31);
    v33 = [v32 application];
    v34 = v33;
    if (!v33 || [v33 isUninstalled])
    {
      v43 = SBLogCommon();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [SBMainWorkspace _canExecuteTransitionRequest:v32 forExecution:?];
      }

      v44 = FBSOpenApplicationErrorCreate();
      v45 = @"App is uninstalled";
      goto LABEL_40;
    }

    if ([v34 isAnyTerminationAssertionInEffect])
    {
      v46 = SBLogCommon();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [SBMainWorkspace _canExecuteTransitionRequest:v32 forExecution:?];
      }

      v45 = @"App has outstanding termination assertions";
      v44 = FBSOpenApplicationErrorCreate();
LABEL_40:
      v15 = v51;
      [v51 sendActivationResultError:v44];

      v6 = v53;
      [v53 declineWithReason:v45];

      v17 = 0;
      v11 = v52;
      goto LABEL_46;
    }

    v35 = [v34 bundleIdentifier];
    if (v14 && ([_canExecuteTransitionRequest_forExecution__canAppearOverSOSApps containsObject:v35] & 1) == 0)
    {
      v38 = v16;
      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requesting application %@ while SOS active", v35];
      v48 = v53;
      v49 = v40;
      goto LABEL_44;
    }

    if (![v35 isEqualToString:v30])
    {
      goto LABEL_30;
    }

    v36 = v28;
    v37 = v30;
    v38 = v16;
    v39 = +[SBAppSwitcherServiceManager sharedInstance];
    v40 = [v39 registeredServicesSnapshot];

    v41 = [(__CFString *)v40 serviceBundleIdentifiers];
    v42 = [v41 containsObject:v35];

    if ((v42 & 1) == 0)
    {
      break;
    }

    v16 = v38;
    v14 = v54;
    v30 = v37;
    v28 = v36;
LABEL_30:

    if (v28 == ++v31)
    {
      v28 = [v16 countByEnumeratingWithState:&v55 objects:v59 count:16];
      v17 = 1;
      if (v28)
      {
        goto LABEL_19;
      }

      v15 = v51;
      v11 = v52;
      goto LABEL_45;
    }
  }

  v49 = @"Service not registered";
  v48 = v53;
LABEL_44:
  [v48 declineWithReason:v49];

  v17 = 0;
  v15 = v51;
  v11 = v52;
  v16 = v38;
LABEL_45:
  v6 = v53;
LABEL_46:

LABEL_47:
LABEL_48:

  return v17;
}

- (id)idleTimerProvider:(id)a3 didProposeBehavior:(id)a4 forReason:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SBMainWorkspace *)self _activeIdleTimerProvider];
  v12 = v11;
  if (v11 == v8)
  {
    v16 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper proposeIdleTimerBehavior:v9 fromProvider:v8 reason:v10];
  }

  else
  {
    if (v11 != self->_activeIdleTimerProvider)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBWorkspaceActiveProviderChanged:%@", v10];
      v14 = [(SBMainWorkspace *)self _generateIdleTimerBehaviorForReason:v10];
      v15 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper proposeIdleTimerBehavior:v14 fromProvider:v12 reason:v13];
    }

    v16 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper updateProvider:v8 behavior:v9 reason:v10];
  }

  v17 = v16;
  [(SBMainWorkspace *)self _setActiveIdleTimerProvider:v12];

  return v17;
}

- (void)presentModuleWithIdentifier:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [v9 animatePresentation];
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__SBMainWorkspace_presentModuleWithIdentifier_options_completion___block_invoke;
    v16[3] = &unk_2783A9C48;
    objc_copyWeak(&v20, &location);
    v16[4] = self;
    v17 = v8;
    v18 = v9;
    v21 = v11;
    v19 = v10;
    v12 = MEMORY[0x223D6F7F0](v16);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__SBMainWorkspace_presentModuleWithIdentifier_options_completion___block_invoke_3;
    v14[3] = &unk_2783A9C70;
    v13 = v12;
    v15 = v13;
    [(SBMainWorkspace *)self _dismissPresentedControlCenterModule:v14];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SBMainWorkspace *)self _dismissPresentedControlCenterModule:0];
  }
}

void __66__SBMainWorkspace_presentModuleWithIdentifier_options_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = [[SBControlCenterModuleTransientOverlayViewController alloc] initWithWindowScene:*(*(a1 + 32) + 224) moduleIdentifier:*(a1 + 40) presentationOptions:*(a1 + 48)];
    [(SBControlCenterModuleTransientOverlayViewController *)v3 setDelegate:*(a1 + 32)];
    objc_storeStrong((*(a1 + 32) + 120), v3);
    v4 = *(a1 + 72);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__SBMainWorkspace_presentModuleWithIdentifier_options_completion___block_invoke_2;
    v7[3] = &unk_2783A9C20;
    v9 = *(a1 + 56);
    v7[4] = WeakRetained;
    v5 = v3;
    v8 = v5;
    if (([WeakRetained presentTransientOverlayViewController:v5 animated:v4 completion:v7] & 1) == 0)
    {
      v6 = *(a1 + 56);
      if (v6)
      {
        (*(v6 + 16))(v6, 0);
      }
    }
  }
}

void __66__SBMainWorkspace_presentModuleWithIdentifier_options_completion___block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
  }

  v3 = a1[5];
  v4 = (a1[4] + 120);

  objc_storeStrong(v4, v3);
}

- (void)_dismissPresentedControlCenterModule:(id)a3
{
  v4 = a3;
  presentedControlCenterModuleTransientOverlayViewController = self->_presentedControlCenterModuleTransientOverlayViewController;
  if (presentedControlCenterModuleTransientOverlayViewController)
  {
    v6 = [(SBControlCenterModuleTransientOverlayViewController *)presentedControlCenterModuleTransientOverlayViewController presentationOptions];
    v7 = [v6 animateDismissal];

    v8 = self->_presentedControlCenterModuleTransientOverlayViewController;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__SBMainWorkspace__dismissPresentedControlCenterModule___block_invoke;
    v9[3] = &unk_2783A9878;
    v9[4] = self;
    v10 = v4;
    [(SBMainWorkspace *)self dismissTransientOverlayViewController:v8 animated:v7 completion:v9];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 1);
  }
}

void __56__SBMainWorkspace__dismissPresentedControlCenterModule___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = 0;
}

- (void)controlCenterModuleTransientOverlayViewControllerNeedsDismissal:(id)a3
{
  v7 = a3;
  v4 = [v7 presentationOptions];
  if (v4)
  {
    v5 = [v7 presentationOptions];
    v6 = [v5 animatePresentation];
  }

  else
  {
    v6 = 1;
  }

  [(SBMainWorkspace *)self dismissTransientOverlayViewController:v7 animated:v6 completion:0];
}

- (id)inCallPresentationManager:(id)a3 createPresentationSessionWithSceneHandle:(id)a4
{
  v5 = a4;
  v6 = [SBInCallPresentationSession alloc];
  v19 = [SBApp bannerManager];
  v18 = +[SBLockScreenManager sharedInstance];
  v20 = +[SBSceneManagerCoordinator sharedInstance];
  v17 = [v20 sceneDeactivationManager];
  v16 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v7 = +[SBBacklightController sharedInstance];
  v8 = [(SBMainWorkspace *)self keyboardFocusController];
  v9 = SBApp;
  v10 = +[SBSetupManager sharedInstance];
  v11 = +[SBUIController sharedInstance];
  pipCoordinator = self->_pipCoordinator;
  v13 = [SBApp lockOutController];
  v15 = [(SBInCallPresentationSession *)v6 initWithSceneHandle:v5 workspace:self bannerManager:v19 lockScreenManager:v18 deactivationManager:v17 mainSwitcherCoordinator:v16 backlightController:v7 keyboardFocusController:v8 springBoard:v9 setupManager:v10 uiController:v11 pipCoordinator:pipCoordinator lockoutStateProvider:v13];

  return v15;
}

- (int64_t)inCallPresentationManager:(id)a3 interfaceOrientationForBannerPresentationInWindowScene:(id)a4
{
  v4 = a4;
  if ([v4 isMainDisplayWindowScene])
  {
    v5 = [SBApp activeInterfaceOrientation];
  }

  else
  {
    v5 = [v4 interfaceOrientation];
  }

  v6 = v5;

  return v6;
}

- (int64_t)inCallPresentationManager:(id)a3 interfaceOrientationForTransientOverlayPresentationInWindowScene:(id)a4
{
  v5 = [a4 transientOverlayPresenter];
  v6 = [(SBMainWorkspace *)self defaultPreferredInterfaceOrientationForPresentationForTransientOverlayScenePresenter:v5];

  return v6;
}

- (void)_proposeIdleTimerBehaviorForReason:(id)a3
{
  v7 = a3;
  v4 = [(SBMainWorkspace *)self _activeIdleTimerProvider];
  [(SBMainWorkspace *)self _setActiveIdleTimerProvider:v4];
  v5 = [(SBMainWorkspace *)self _generateIdleTimerBehaviorForReason:v7];
  v6 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper proposeIdleTimerBehavior:v5 fromProvider:v4 reason:v7];
}

- (id)_generateIdleTimerBehaviorForReason:(id)a3
{
  v4 = a3;
  v5 = [(SBMainWorkspace *)self _activeIdleTimerProvider];
  if (!v5)
  {
    [SBMainWorkspace _generateIdleTimerBehaviorForReason:];
  }

  v6 = [v5 coordinatorRequestedIdleTimerBehavior:self];
  v7 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper updateProvider:v5 behavior:v6 reason:v4];

  return v6;
}

- (void)presentPowerDownTransientOverlay
{
  v14[3] = *MEMORY[0x277D85DE8];
  if (!self->_powerDownViewController)
  {
    v3 = [SBPowerDownViewController alloc];
    v4 = [SBApp windowSceneManager];
    v5 = [(SBPowerDownViewController *)v3 initWithWindowSceneManager:v4];
    powerDownViewController = self->_powerDownViewController;
    self->_powerDownViewController = v5;

    [(SBPowerDownViewController *)self->_powerDownViewController setDelegate:self];
    v7 = [[SBHomeHardwareButtonLongPressDurationAssertion alloc] initWithReason:@"SBPowerDownViewController" duration:5.0];
    powerDownLongPressDurationAssertion = self->_powerDownLongPressDurationAssertion;
    self->_powerDownLongPressDurationAssertion = v7;

    v9 = [SBApp homeHardwareButton];
    [v9 addLongPressDurationAssertion:self->_powerDownLongPressDurationAssertion];

    v10 = [SBApp authenticationController];
    LODWORD(v4) = [v10 hasPasscodeSet];

    if (v4)
    {
      v13[0] = @"SBUILockOptionsForceBioLockoutKey";
      v13[1] = @"SBUILockOptionsForceLockKey";
      v14[0] = MEMORY[0x277CBEC38];
      v14[1] = MEMORY[0x277CBEC38];
      v13[2] = @"SBUILockOptionsUseScreenOffModeKey";
      v14[2] = MEMORY[0x277CBEC28];
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
      v12 = +[SBLockScreenManager sharedInstance];
      [v12 lockUIFromSource:23 withOptions:v11];
    }

    [(SBMainWorkspace *)self presentTransientOverlayViewController:self->_powerDownViewController animated:1 completion:0];
  }
}

- (void)dismissPowerDownTransientOverlayWithCompletion:(id)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBMainWorkspace dismissPowerDownTransientOverlayWithCompletion:];
  }

  if (self->_powerDownViewController)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__SBMainWorkspace_dismissPowerDownTransientOverlayWithCompletion___block_invoke;
    v12[3] = &unk_2783A9C98;
    v12[4] = self;
    v13 = v4;
    v5 = MEMORY[0x223D6F7F0](v12);
    v6 = [SBApp authenticationController];
    v7 = [v6 hasPasscodeSet];

    if (v7)
    {
      v14[0] = @"SBUILockOptionsForceBioLockoutKey";
      v14[1] = @"SBUILockOptionsForceLockKey";
      v15[0] = MEMORY[0x277CBEC38];
      v15[1] = MEMORY[0x277CBEC38];
      v14[2] = @"SBUILockOptionsUseScreenOffModeKey";
      v15[2] = MEMORY[0x277CBEC28];
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
      v9 = +[SBLockScreenManager sharedInstance];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __66__SBMainWorkspace_dismissPowerDownTransientOverlayWithCompletion___block_invoke_2;
      v10[3] = &unk_2783A9C70;
      v11 = v5;
      [v9 lockUIFromSource:23 withOptions:v8 completion:v10];
    }

    else
    {
      v5[2](v5, 1);
    }
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

void __66__SBMainWorkspace_dismissPowerDownTransientOverlayWithCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = +[SBLockScreenManager sharedInstance];
  [v1 setPasscodeVisible:1 animated:1];
}

- (void)powerDownViewControllerRequestsPowerDown:(id)a3
{
  v4 = [[SBShutdownContext alloc] initWithReason:@"Powerdown UI"];
  [(SBShutdownContext *)v4 setFromUserPowerDown:1];
  v3 = [SBApp restartManager];
  [v3 shutdownWithContext:v4];
}

- (void)powerDownViewControllerDidDisappear:(id)a3
{
  powerDownViewController = self->_powerDownViewController;
  self->_powerDownViewController = 0;

  v5 = [SBApp homeHardwareButton];
  [v5 removeLongPressDurationAssertion:self->_powerDownLongPressDurationAssertion];

  powerDownLongPressDurationAssertion = self->_powerDownLongPressDurationAssertion;
  self->_powerDownLongPressDurationAssertion = 0;
}

- (void)setCurrentTransaction:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_currentTransaction != v6)
  {
    v7 = self->_currentTransactionLock;
    currentTransactionLock = self->_currentTransactionLock;
    self->_currentTransactionLock = 0;

    [(BSWatchdog *)self->_transactionWatchdog invalidate];
    transactionWatchdog = self->_transactionWatchdog;
    self->_transactionWatchdog = 0;

    [(SBWorkspaceTransaction *)self->_currentTransaction removeObserver:self];
    currentTransaction = self->_currentTransaction;
    self->_currentTransaction = 0;

    [(BSInvalidatable *)self->_displayLayoutTransitionAssertion invalidate];
    displayLayoutTransitionAssertion = self->_displayLayoutTransitionAssertion;
    self->_displayLayoutTransitionAssertion = 0;

    if (v6)
    {
      v38 = a2;
      objc_storeStrong(&self->_currentTransaction, a3);
      [(SBWorkspaceTransaction *)self->_currentTransaction addObserver:self];
      v12 = SBLogTransactionVerbose();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

      if (v13)
      {
        v14 = SBLogTransactionVerbose();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [SBMainWorkspace setCurrentTransaction:];
        }
      }

      else
      {
        v14 = SBLogTransaction();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [MEMORY[0x277CF0C00] descriptionForObject:v6];
          v36 = [(SBWorkspaceTransaction *)v6 transitionRequest];
          v16 = [v36 compactDescriptionBuilder];
          [v16 build];
          v17 = v37 = v7;
          *buf = 138543618;
          v40 = v15;
          v41 = 2114;
          v42 = v17;
          _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Running %{public}@ for transition request:\n%{public}@", buf, 0x16u);

          v7 = v37;
        }
      }

      v18 = [(SBWorkspace *)self eventQueue];
      v19 = [v18 acquireLockForReason:@"CurrentTransaction"];
      v20 = self->_currentTransactionLock;
      self->_currentTransactionLock = v19;

      v21 = [(SBWorkspaceTransaction *)self->_currentTransaction transitionRequest];
      v22 = SBMainWorkspaceMapInternalTransitionSourceToExternalTransitionSource([v21 source]);
      v23 = v22;
      v24 = @"SBWorkspace";
      if (v22)
      {
        v24 = v22;
      }

      v25 = v24;

      v26 = [(SBWorkspaceTransaction *)v6 windowScene];
      if (!v26)
      {
        [SBMainWorkspace setCurrentTransaction:];
      }

      v27 = [v26 displayLayoutPublisher];
      if (!v27)
      {
        [(SBMainWorkspace *)v38 setCurrentTransaction:v26];
      }

      v28 = [v27 transitionAssertionWithReason:v25];

      v29 = self->_displayLayoutTransitionAssertion;
      self->_displayLayoutTransitionAssertion = v28;

      [(SBWorkspaceTransaction *)v6 begin];
      if (([(SBWorkspaceTransaction *)v6 isComplete]& 1) == 0)
      {
        v30 = +[SBPlatformController sharedInstance];
        v31 = [v30 isInternalInstall];

        if (v31)
        {
          v32 = objc_alloc(MEMORY[0x277CF0D18]);
          v33 = [(SBTransaction *)v6 queue];
          v34 = [v32 initWithProvider:v6 queue:v33];
          v35 = self->_transactionWatchdog;
          self->_transactionWatchdog = v34;

          [(BSWatchdog *)self->_transactionWatchdog setDelegate:self];
          [(BSWatchdog *)self->_transactionWatchdog start];
        }
      }
    }

    [(BSEventQueueLock *)v7 relinquish];
  }
}

- (void)_broadcastCurrentTransaction
{
  if ([SBApp _isRemoteStateDumpEnabled])
  {
    v3 = [(SBWorkspaceTransaction *)self->_currentTransaction debugDescription];
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SBMainWorkspace__broadcastCurrentTransaction__block_invoke;
    block[3] = &unk_2783A8C18;
    v7 = v3;
    v5 = v3;
    dispatch_async(v4, block);
  }
}

void __47__SBMainWorkspace__broadcastCurrentTransaction__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = SBApp;
  v2 = *(a1 + 32);
  v4 = @"SpringBoard - CurrentTransaction";
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v1 _broadcastStateCaptureToConnectedRemotePeers:v3];
}

- (void)_initializeAndObserveDefaults
{
  v2 = +[SBDefaults localDefaults];
  v3 = [v2 soundDefaults];
  __playSoundOnWake = [v3 playSoundOnDeviceWake];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"playSoundOnDeviceWake"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__SBMainWorkspace__initializeAndObserveDefaults__block_invoke;
  v19[3] = &unk_2783A8C18;
  v20 = v3;
  v5 = v3;
  v6 = MEMORY[0x277D85CD0];
  v7 = [v5 observeDefault:v4 onQueue:MEMORY[0x277D85CD0] withBlock:v19];

  v8 = [v2 powerDefaults];
  SBWorkspaceSetPreventIdleSleepForReason([v8 disableIdleSleep], @"SBPowerDefaults");
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"disableIdleSleep"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__SBMainWorkspace__initializeAndObserveDefaults__block_invoke_2;
  v17[3] = &unk_2783A8C18;
  v10 = v8;
  v18 = v10;
  v11 = [v10 observeDefault:v9 onQueue:v6 withBlock:v17];

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"trackPowerEvents"];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__SBMainWorkspace__initializeAndObserveDefaults__block_invoke_3;
  v15[3] = &unk_2783A8C18;
  v16 = v10;
  v13 = v10;
  v14 = [v13 observeDefault:v12 onQueue:v6 withBlock:v15];
}

uint64_t __48__SBMainWorkspace__initializeAndObserveDefaults__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) playSoundOnDeviceWake];
  __playSoundOnWake = result;
  return result;
}

void __48__SBMainWorkspace__initializeAndObserveDefaults__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) disableIdleSleep];

  SBWorkspaceSetPreventIdleSleepForReason(v1, @"SBPowerDefaults");
}

void __48__SBMainWorkspace__initializeAndObserveDefaults__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) trackPowerEvents];

  _SBWorkspaceTrackPowerEvents(v1);
}

- (void)_executeSuspendedTransactionForRequest:(id)a3
{
  v4 = a3;
  if (!self->_activeSuspendedWorkspaceTransitions)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeSuspendedWorkspaceTransitions = self->_activeSuspendedWorkspaceTransitions;
    self->_activeSuspendedWorkspaceTransitions = v5;
  }

  v7 = [(SBMainWorkspaceTransaction *)[SBSuspendedWorkspaceTransaction alloc] initWithTransitionRequest:v4];
  [(NSMutableSet *)self->_activeSuspendedWorkspaceTransitions addObject:v7];
  v8 = [v4 transactionConfigurator];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v7);
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SBMainWorkspace__executeSuspendedTransactionForRequest___block_invoke;
  v11[3] = &unk_2783A9CC0;
  v10 = v4;
  v12 = v10;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  [(SBMainWorkspace *)self _addRequestCompletionBlock:v11 toTransaction:v7];
  [(SBSuspendedWorkspaceTransaction *)v7 begin];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __58__SBMainWorkspace__executeSuspendedTransactionForRequest___block_invoke(id *a1, uint64_t a2)
{
  v4 = [a1[4] completionBlock];
  v8 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v6 = objc_loadWeakRetained(a1 + 6);
  v7 = v6;
  if (WeakRetained && v6)
  {
    [WeakRetained[11] removeObject:v6];
  }
}

- (BOOL)_executeTransitionRequest:(id)a3 options:(unint64_t)a4 validator:(id)a5
{
  v67 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 succinctDescription];
    *buf = 138543362;
    v64 = v10;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Executing request: %{public}@", buf, 0xCu);
  }

  v11 = [(SBMainWorkspace *)self _canExecuteTransitionRequest:v7 forExecution:1];
  v12 = v11;
  if (v11)
  {
    v52 = v11;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v14 = v13;
    v49 = mach_continuous_time();
    v15 = [(SBMainWorkspace *)self currentTransaction];
    v16 = [v7 source];
    v17 = [v7 applicationContext];
    v18 = [v17 isBackground];

    v19 = 0;
    v20 = 0;
    if ((v18 & 1) == 0 && v16 != 14)
    {
      if ([v15 shouldInterceptTransitionRequest:v7])
      {
        v20 = 0;
        v19 = 1;
      }

      else
      {
        v20 = [v15 canInterruptForTransitionRequest:v7];
        v19 = 0;
      }
    }

    v21 = v15;
    v22 = [v7 displayIdentity];
    v23 = [SBApp windowSceneManager];
    v51 = v22;
    v24 = [v23 windowSceneForDisplayIdentity:v22];

    v25 = [v7 applicationContext];
    v26 = [v25 requestedUnlockedEnvironmentMode];

    v50 = v24;
    v48 = v16;
    if (v26 == 2)
    {
      v27 = [v24 homeScreenController];
      v28 = [v27 iconManager];

      v29 = [v28 currentTransitionAnimator];
      v30 = v29;
      if (v29)
      {
        v31 = v8;
        v32 = [v29 childViewController];
        objc_opt_class();
        v33 = (objc_opt_isKindOfClass() & 1) != 0 && [v30 currentOperation] == 1;

        v8 = v31;
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

    v34 = v21;
    v35 = MEMORY[0x277D0AB18];
    v36 = [v7 eventLabel];
    v37 = v36;
    if (!v36)
    {
      v37 = [v7 succinctDescription];
    }

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __63__SBMainWorkspace__executeTransitionRequest_options_validator___block_invoke;
    v54[3] = &unk_2783A9D38;
    v53 = v8;
    v58 = v8;
    v38 = v7;
    v55 = v38;
    v56 = self;
    v59 = v14;
    v60 = v49;
    v61 = v19;
    v39 = v34;
    v57 = v39;
    v62 = v20;
    v40 = [v35 eventWithName:v37 handler:v54];
    if (!v36)
    {
    }

    v41 = [v38 applicationContext];
    v42 = [v41 isBackground];

    if (((v19 | v20 | v33) & 1) == 0 && !v42)
    {
      if (v48 != 14)
      {
        v43 = +[SBReachabilityManager sharedInstance];
        [v43 deactivateReachability];
      }

      v44 = [(SBWorkspace *)self eventQueue];
      [v44 executeOrAppendEvent:v40];
LABEL_31:

      v8 = v53;
      v12 = v52;
LABEL_41:

      goto LABEL_42;
    }

    if (v33)
    {
      if (v20)
      {
        [v39 interruptForTransitionRequest:v38];
      }

      v44 = [(SBWorkspace *)self eventQueue];
      [v44 executeOrPrependEvent:v40];
      goto LABEL_31;
    }

    if (v42)
    {
      v45 = SBLogWorkspace();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [v40 name];
        *buf = 138543362;
        v64 = v46;
        _os_log_impl(&dword_21ED4E000, v45, OS_LOG_TYPE_DEFAULT, "Executing suspended-activation immediately: %{public}@", buf, 0xCu);
      }

      v12 = v52;
    }

    else
    {
      v12 = v52;
      if (!v20)
      {
        goto LABEL_40;
      }

      v45 = SBLogWorkspace();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v64 = v39;
        v65 = 2114;
        v66 = v38;
        _os_log_impl(&dword_21ED4E000, v45, OS_LOG_TYPE_DEFAULT, "Interrupting transaction (%{public}p) for new request: %{public}@", buf, 0x16u);
      }
    }

LABEL_40:
    [v40 execute];
    v8 = v53;
    goto LABEL_41;
  }

LABEL_42:

  return v12;
}

void __63__SBMainWorkspace__executeTransitionRequest_options_validator___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (!v2)
  {
    goto LABEL_4;
  }

  if ((*(v2 + 16))(v2, *(a1 + 32)))
  {
    [*(a1 + 40) _determineSourceForTransitionRequest:*(a1 + 32)];
LABEL_4:
    v3 = +[SBSceneManagerCoordinator sharedInstance];
    v4 = [*(a1 + 32) displayIdentity];
    v32 = [v3 sceneManagerForDisplayIdentity:v4];

    v5 = [v32 policyAggregator];
    LOBYTE(v4) = [v5 allowsTransitionRequest:*(a1 + 32)];

    v6 = *(a1 + 32);
    if (v4)
    {
      v7 = [v6 transientOverlayContext];
      v31 = v7;
      if (v7)
      {
        [v7 transitionType];
      }

      kdebug_trace();
      v8 = [*(a1 + 32) applicationContext];
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = [v8 applicationSceneEntities];
      v9 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v9)
      {
        v34 = *v46;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v46 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v45 + 1) + 8 * i);
            v12 = [v11 application];
            v13 = +[SBApplicationTestingManager sharedInstance];
            [v13 markUserLaunchInitiationTime];

            v14 = +[SBTelephonyManager sharedTelephonyManager];
            v15 = [v12 info];
            v16 = [v15 domainsToPreheat];
            [v14 preHeatDataLinkForDomains:v16];

            objc_initWeak(&location, v8);
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __63__SBMainWorkspace__executeTransitionRequest_options_validator___block_invoke_2;
            v42[3] = &unk_2783A9CE8;
            objc_copyWeak(&v43, &location);
            v42[4] = v11;
            [v8 addFinalizeBlock:v42];
            v17 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
            [v11 setObject:v17 forActivationSetting:18];

            v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 72)];
            [v11 setObject:v18 forActivationSetting:19];

            v19 = [v12 info];
            LODWORD(v14) = [v19 isIdentifiedGame];

            if (v14)
            {
              v20 = dispatch_get_global_queue(25, 0);
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __63__SBMainWorkspace__executeTransitionRequest_options_validator___block_invoke_3;
              block[3] = &unk_2783A8C18;
              v41 = v12;
              dispatch_async(v20, block);
            }

            objc_destroyWeak(&v43);
            objc_destroyWeak(&location);
          }

          v9 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v9);
      }

      v21 = MEMORY[0x277D0AB18];
      v22 = [*(a1 + 32) eventLabel];
      v23 = v22;
      if (!v22)
      {
        v23 = [*(a1 + 32) succinctDescription];
      }

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __63__SBMainWorkspace__executeTransitionRequest_options_validator___block_invoke_4;
      v35[3] = &unk_2783A9D10;
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      v26 = *(a1 + 48);
      v36 = v24;
      v37 = v25;
      v39 = *(a1 + 80);
      v38 = v26;
      v27 = [v21 eventWithName:v23 handler:v35];
      if (!v22)
      {
      }

      if (*(a1 + 81) == 1)
      {
        v28 = [*(a1 + 40) eventQueue];
        v29 = [v28 acquireLockForReason:@"interrupting current transaction"];
        [*(a1 + 48) interruptForTransitionRequest:*(a1 + 32)];
        [v28 executeOrPrependEvent:v27];
        [v29 relinquish];
      }

      else
      {
        [v27 execute];
      }
    }

    else
    {
      [v6 declineWithReason:@"Vetoed by policy aggregator."];
    }

    return;
  }

  v30 = *(a1 + 32);

  [v30 declineWithReason:@"Vetoed by request validator."];
}

void __63__SBMainWorkspace__executeTransitionRequest_options_validator___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 sceneHandle];
      v5 = [v4 additionalActionsForActivatingSceneEntity:v3 withTransitionContext:v6];

      if ([v5 count])
      {
        [v3 addActions:v5];
      }
    }

    WeakRetained = v6;
  }
}

void __63__SBMainWorkspace__executeTransitionRequest_options_validator___block_invoke_3(uint64_t a1)
{
  v3 = [MEMORY[0x277D0C988] sharedInstance];
  v2 = [*(a1 + 32) bundleIdentifier];
  [v3 gameDidLaunch:v2];
}

uint64_t __63__SBMainWorkspace__executeTransitionRequest_options_validator___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) transientOverlayContext];

  if (v2)
  {
    result = [*(a1 + 40) _executeTransientOverlayTransitionRequest:*(a1 + 32)];
    if (result)
    {
      return result;
    }

LABEL_11:
    v6 = @"No transaction created";
    goto LABEL_12;
  }

  v4 = +[SBLockScreenManager sharedInstance];
  v5 = [v4 handleTransitionRequest:*(a1 + 32)];

  if (v5)
  {
    v6 = @"Lock screen handled request";
LABEL_12:
    v9 = *(a1 + 32);

    return [v9 declineWithReason:v6];
  }

  v7 = *(a1 + 32);
  if (*(a1 + 56) != 1)
  {
    result = [*(a1 + 40) _executeApplicationTransitionRequest:v7];
    if (result)
    {
      return result;
    }

    goto LABEL_11;
  }

  v8 = *(a1 + 48);

  return [v8 interceptTransitionRequest:v7];
}

- (id)_alertItemForPreventingLaunchOfApp:(id)a3 fromTrustState:(unint64_t)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (a4 <= 5)
  {
    if (a4 - 3 >= 3)
    {
      if (a4 != 2)
      {
        goto LABEL_22;
      }

      v8 = SBAppDeniedAlertItem;
    }

    else
    {
      v8 = SBAppProfileExpiredAlertItem;
    }

    goto LABEL_20;
  }

  if (a4 <= 8)
  {
    if (a4 == 6)
    {
      v8 = SBAppProfileNeedsValidationAlertItem;
    }

    else
    {
      if (a4 != 7)
      {
        goto LABEL_22;
      }

      v9 = [v5 info];
      if ([v9 isUPPProvisioningProfileValidated])
      {

LABEL_19:
        v8 = SBAppProfileNotTrustedAlertItem;
        goto LABEL_20;
      }

      v15 = [v6 info];
      v16 = [v15 isFreeDeveloperProvisioningProfileValidated];

      if (!v16)
      {
        goto LABEL_19;
      }

      v8 = SBAppFreeDevProfileNotTrustedAlertItem;
    }

LABEL_20:
    v10 = [[v8 alloc] initWithApp:v6];
LABEL_21:
    v7 = v10;
    goto LABEL_22;
  }

  if (a4 != 9)
  {
    if (a4 != 10)
    {
      goto LABEL_22;
    }

    v10 = [[SBAppDeveloperModeRequiredAlertItem alloc] initWithApplication:v5];
    goto LABEL_21;
  }

  v11 = objc_alloc(MEMORY[0x277CC1E70]);
  v12 = [v6 bundleIdentifier];
  v13 = [v11 initWithBundleIdentifier:v12 allowPlaceholder:0 error:0];

  if (v13)
  {
    v14 = [v13 updateAvailability] == 1;
  }

  else
  {
    v14 = 0;
  }

  v18 = [v6 info];
  v19 = [v18 isProvisioningProfileValidated];

  v20 = [MEMORY[0x277D262A0] sharedConnection];
  v21 = [v20 isOnDeviceAppInstallationAllowed];

  v22 = [v6 info];
  v23 = [v22 isLicensedToDevice];

  v24 = SBLogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v26[0] = 67109888;
    v26[1] = v14;
    v27 = 1024;
    v28 = v19 ^ 1;
    v29 = 1024;
    v30 = v21;
    v31 = 1024;
    v32 = v23;
    _os_log_debug_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEBUG, "Signature error: hasUpdateAvailable: %d, isAppStoreApp: %d, isAppInstallationAllowed: %d, isAppLicensedToDevice: %d", v26, 0x1Au);
  }

  if (v19 & 1 | ((v21 & 1) == 0) | v23 & 1 | !v14)
  {
    v25 = off_27839ED50;
  }

  else
  {
    v25 = off_27839ED48;
  }

  v7 = [objc_alloc(*v25) initWithApplication:v6];

LABEL_22:

  return v7;
}

- (BOOL)_preflightTransitionRequest:(id)a3 forExecution:(BOOL)a4
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 applicationContext];
  v68 = 0;
  v57 = [v7 isBackground];
  v50 = v6;
  v8 = [v6 displayIdentity];
  v9 = [SBApp windowSceneManager];
  v58 = [v9 windowSceneForDisplayIdentity:v8];

  v10 = +[SBSceneManagerCoordinator sharedInstance];
  v49 = v8;
  v11 = [v10 sceneManagerForDisplayIdentity:v8];

  v48 = v11;
  v12 = [v11 externalForegroundApplicationSceneHandles];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v53 = v7;
  obj = [v7 applicationSceneEntities];
  v13 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
  if (!v13)
  {
    goto LABEL_45;
  }

  v14 = v13;
  v15 = *v65;
  v56 = !a4 | v57;
  v54 = self;
  v55 = v12;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v65 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v64 + 1) + 8 * i);
      v18 = [v17 sceneHandle];
      v19 = [v18 application];
      v20 = [v19 info];
      v21 = [v17 objectForActivationSetting:5];
      if (v68)
      {
LABEL_41:
        v40 = [v19 bundleIdentifier];
        v41 = [v40 isEqualToString:@"com.apple.TVRemote"];

        if (v41)
        {
          v42 = objc_alloc_init(SBLegacyTVRemoteAppLaunchDeniedAlertItem);
          v43 = +[SBAlertItemsController sharedInstance];
          [v43 activateAlertItem:v42];
        }

        goto LABEL_43;
      }

      if (([v12 containsObject:v18] & 1) == 0 && _SBWorkspaceCanLaunchApplication(v17, v57, v21, v58, &v68))
      {
        if ([v20 supports64Bit])
        {
          v22 = 0;
          goto LABEL_14;
        }

        v68 = 1;
        if (v56)
        {
          v22 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v22 = [[SBApplication32BitDeprecationAlertItem alloc] initWithApplication:v19];
LABEL_14:
        if (!v68)
        {
          v23 = [v20 unauthoritativeTrustState];
          if (v23 != 8)
          {
            v24 = v23;
            v51 = SBLogCommon();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              [(SBMainWorkspace *)v75 _preflightTransitionRequest:v17 forExecution:&v76, v51];
            }

            v68 = 3;
            if (v56)
            {
              v12 = v55;
              goto LABEL_24;
            }

            v25 = [(SBMainWorkspace *)v54 _alertItemForPreventingLaunchOfApp:v19 fromTrustState:v24];

            v22 = v25;
          }

          v12 = v55;
        }

        if (!(v56 & 1 | (v22 == 0)))
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __60__SBMainWorkspace__preflightTransitionRequest_forExecution___block_invoke;
          block[3] = &unk_2783A8C18;
          v22 = v22;
          v63 = v22;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }

        goto LABEL_24;
      }

LABEL_25:
      if (v68)
      {
        goto LABEL_41;
      }

      if ([v20 isArcadeApplication])
      {
        v26 = [v20 executableURL];
        [v26 fileSystemRepresentation];
        mm0Euuzhc();
        if (v27)
        {
          v28 = v27;
          v29 = SBLogCommon();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            [v19 bundleIdentifier];
            v30 = v52 = v26;
            v31 = [v53 isBackground];
            *buf = 67109634;
            v70 = v28;
            v71 = 2114;
            v72 = v30;
            v73 = 1024;
            v74 = v31;
            _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_INFO, "Received FairPlay error %d while trying to launch Arcade app %{public}@ isBackground: %d", buf, 0x18u);

            v26 = v52;
          }

          v32 = (v28 + 42587) > 3 || v28 == -42586;
          v12 = v55;
          if (!v32)
          {
            v68 = 3;
            v33 = objc_alloc(MEMORY[0x277CEC478]);
            v34 = [v20 bundleIdentifier];
            v35 = [v33 initWithBundleID:v34];

            [v35 setExitReason:16];
            [v35 setIsBackground:{objc_msgSend(v53, "isBackground")}];
            if (v35)
            {
              ocelotRepairRequests = v54->_ocelotRepairRequests;
              if (!ocelotRepairRequests)
              {
                v37 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v38 = v54->_ocelotRepairRequests;
                v54->_ocelotRepairRequests = v37;

                ocelotRepairRequests = v54->_ocelotRepairRequests;
              }

              [(NSMutableSet *)ocelotRepairRequests addObject:v35];
              v39 = [MEMORY[0x277CEC480] defaultService];
              v60[0] = MEMORY[0x277D85DD0];
              v60[1] = 3221225472;
              v60[2] = __60__SBMainWorkspace__preflightTransitionRequest_forExecution___block_invoke_376;
              v60[3] = &unk_2783A9D60;
              v60[4] = v54;
              v61 = v35;
              [v39 repairAppWithOptions:v61 replyHandler:v60];
            }

            v12 = v55;
          }
        }
      }

      if (v68)
      {
        goto LABEL_41;
      }

LABEL_43:
    }

    v14 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
  }

  while (v14);
LABEL_45:

  if (v68)
  {
    v44 = FBSOpenApplicationErrorCreate();
    v45 = v53;
    [v53 sendActivationResultError:v44];

    v46 = v68 == 0;
  }

  else
  {
    v46 = 1;
    v45 = v53;
  }

  return v46;
}

void __60__SBMainWorkspace__preflightTransitionRequest_forExecution___block_invoke(uint64_t a1)
{
  v2 = +[SBAlertItemsController sharedInstance];
  [v2 activateAlertItem:*(a1 + 32)];
}

void __60__SBMainWorkspace__preflightTransitionRequest_forExecution___block_invoke_376(uint64_t a1)
{
  v1 = *(a1 + 40);
  BSDispatchMain();
}

- (void)_determineSourceForTransitionRequest:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = [v3 source];
  v4 = v9[3];
  if (!v4)
  {
    v5 = [v3 applicationContext];
    v6 = [v5 applicationSceneEntities];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__SBMainWorkspace__determineSourceForTransitionRequest___block_invoke;
    v7[3] = &unk_2783A9D88;
    v7[4] = &v8;
    [v6 enumerateObjectsUsingBlock:v7];

    v4 = v9[3];
  }

  [v3 setSource:v4];
  _Block_object_dispose(&v8, 8);
}

void __56__SBMainWorkspace__determineSourceForTransitionRequest___block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v8 = a2;
  if ([v8 BOOLForActivationSetting:40])
  {
    v5 = 7;
LABEL_23:
    v6 = v8;
LABEL_24:
    *(*(*(a1 + 32) + 8) + 24) = v5;
    goto LABEL_25;
  }

  if ([v8 BOOLForActivationSetting:41])
  {
    v5 = 10;
    goto LABEL_23;
  }

  if ([v8 BOOLForActivationSetting:47])
  {
    goto LABEL_6;
  }

  if ([v8 BOOLForActivationSetting:54])
  {
    v5 = 19;
    goto LABEL_23;
  }

  if ([v8 BOOLForActivationSetting:42])
  {
    v5 = 6;
    goto LABEL_23;
  }

  if ([v8 BOOLForActivationSetting:43])
  {
    v5 = 4;
    goto LABEL_23;
  }

  if ([v8 BOOLForActivationSetting:44])
  {
    v5 = 8;
    goto LABEL_23;
  }

  if ([v8 BOOLForActivationSetting:45])
  {
    v5 = 5;
    goto LABEL_23;
  }

  if ([v8 BOOLForActivationSetting:39])
  {
    v5 = 1;
    goto LABEL_23;
  }

  if ([v8 BOOLForActivationSetting:48])
  {
    v5 = 15;
    goto LABEL_23;
  }

  if ([v8 BOOLForActivationSetting:49])
  {
    v5 = 16;
    goto LABEL_23;
  }

  if ([v8 BOOLForActivationSetting:47])
  {
LABEL_6:
    v5 = 2;
    goto LABEL_23;
  }

  if ([v8 BOOLForActivationSetting:59])
  {
    v5 = 47;
    goto LABEL_23;
  }

  if ([v8 BOOLForActivationSetting:57])
  {
    v5 = 53;
    goto LABEL_23;
  }

  if ([v8 BOOLForActivationSetting:63])
  {
    v5 = 61;
    goto LABEL_23;
  }

  if ([v8 BOOLForActivationSetting:64])
  {
    v5 = 67;
    goto LABEL_23;
  }

  if ([v8 BOOLForActivationSetting:65])
  {
    v5 = 70;
    goto LABEL_23;
  }

  v7 = [v8 BOOLForActivationSetting:50];
  v6 = v8;
  if (v7)
  {
    v5 = 13;
    goto LABEL_24;
  }

LABEL_25:
  *a3 = *(*(*(a1 + 32) + 8) + 24) != 0;
}

- (BOOL)_executeTransientOverlayTransitionRequest:(id)a3
{
  v4 = a3;
  v5 = [(SBWorkspace *)self eventQueue];
  v6 = [v5 executingEvent];

  if (!v6)
  {
    [SBMainWorkspace _executeTransientOverlayTransitionRequest:];
  }

  v7 = [v4 transientOverlayContext];
  v8 = [v4 applicationContext];
  if ([v7 shouldPreserveAppSwitcher])
  {
    v9 = [SBApp windowSceneManager];
    v10 = [v4 displayIdentity];
    v11 = [v9 windowSceneForDisplayIdentity:v10];
    v12 = [v11 switcherController];

    if (!v12)
    {
      v13 = SBLogCommon();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

      if (v14)
      {
        NSLog(&cfstr_ExpectedASwitc.isa);
      }
    }

    if ([v12 unlockedEnvironmentMode] == 2)
    {
      [v8 setRequestedUnlockedEnvironmentMode:2];
    }
  }

  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__SBMainWorkspace__executeTransientOverlayTransitionRequest___block_invoke;
  v17[3] = &unk_2783A9DB0;
  objc_copyWeak(&v18, &location);
  v15 = [(SBMainWorkspace *)self _setCurrentTransactionForRequest:v4 fallbackProvider:v17];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v15;
}

id __61__SBMainWorkspace__executeTransientOverlayTransitionRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _selectTransactionForTransientOverlayPresentationRequest:v3];

  return v5;
}

- (BOOL)_executeApplicationTransitionRequest:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v25 = [v23 applicationContext];
  v3 = [SBApp windowSceneManager];
  v4 = [v23 displayIdentity];
  v24 = [v3 windowSceneForDisplayIdentity:v4];

  v5 = [v25 isBackground];
  v6 = [v25 animationDisabled];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v25 applicationSceneEntities];
  v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v6 ^ 1;
    v9 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        if (v5 & 1 | ((v8 & 1) == 0) || ([*(*(&v30 + 1) + 8 * i) BOOLForActivationSetting:4] & 1) != 0)
        {
          v12 = 0;
        }

        else
        {
          v12 = [v11 BOOLForActivationSetting:1] ^ 1;
        }

        [v11 setFlag:BSSettingFlagForBool() forActivationSetting:1];
        [v11 setFlag:BSSettingFlagForBool() forActivationSetting:3];
        if (v5)
        {
          [v25 setWaitsForSceneUpdates:0];
        }

        else
        {
          if ([v11 flagForActivationSetting:44] == 0x7FFFFFFFFFFFFFFFLL)
          {
            +[SBAssistantController isVisible];
            [v11 setFlag:BSSettingFlagForBool() forActivationSetting:44];
          }

          v13 = [v24 homeScreenController];
          v14 = [v13 areAnyIconViewContextMenusShowing];

          if (v14)
          {
            [v11 setFlag:1 forActivationSetting:27];
          }

          v15 = +[SBControlCenterCoordinator sharedInstanceIfExists];
          v16 = [v15 isVisible];

          if (v16)
          {
            [v11 setFlag:1 forActivationSetting:45];
          }

          if (SBSpotlightIsVisible())
          {
            [v11 setFlag:1 forActivationSetting:26];
          }

          v17 = [SBApp notificationDispatcher];
          v18 = [v17 bannerDestination];
          v19 = [v18 isPresentingBannerInLongLook];

          if (v19)
          {
            [v11 setFlag:1 forActivationSetting:28];
          }
        }

        v8 &= v12;
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
    v6 = v8 ^ 1u;
  }

  [v25 setAnimationDisabled:v6];
  if (v5)
  {
    [(SBMainWorkspace *)self _executeSuspendedTransactionForRequest:v23];
    v20 = 1;
  }

  else
  {
    objc_initWeak(&location, self);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __56__SBMainWorkspace__executeApplicationTransitionRequest___block_invoke;
    v27[3] = &unk_2783A9DB0;
    objc_copyWeak(&v28, &location);
    v20 = [(SBMainWorkspace *)self _setCurrentTransactionForRequest:v23 fallbackProvider:v27];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v20;
}

id __56__SBMainWorkspace__executeApplicationTransitionRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _selectTransactionForAppActivationRequest:v3];

  return v5;
}

- (BOOL)_setCurrentTransactionForRequest:(id)a3 fallbackProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(SBWorkspace *)self eventQueue];
  v10 = [v9 executingEvent];

  if (!v10)
  {
    [SBMainWorkspace _setCurrentTransactionForRequest:fallbackProvider:];
  }

  v11 = [v7 transactionProvider];
  v12 = v11;
  if (v11)
  {
    v13 = (*(v11 + 16))(v11, v7);
    [v7 setTransactionProvider:0];
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  if (!v13)
  {
    v13 = v8[2](v8, v7);
  }

LABEL_9:
  if (!v13)
  {
    [(SBMainWorkspace *)a2 _setCurrentTransactionForRequest:v7 fallbackProvider:?];
  }

  v14 = [v13 transitionRequest];

  if (v14 != v7)
  {
    [SBMainWorkspace _setCurrentTransactionForRequest:fallbackProvider:];
  }

  v15 = [v7 transactionConfigurator];
  v16 = v15;
  if (v15)
  {
    (*(v15 + 16))(v15, v13);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__SBMainWorkspace__setCurrentTransactionForRequest_fallbackProvider___block_invoke;
  v19[3] = &unk_2783A9398;
  v20 = v7;
  v17 = v7;
  [(SBMainWorkspace *)self _addRequestCompletionBlock:v19 toTransaction:v13];
  [(SBMainWorkspace *)self setCurrentTransaction:v13];

  return v13 != 0;
}

void __69__SBMainWorkspace__setCurrentTransactionForRequest_fallbackProvider___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) completionBlock];

  if (v4)
  {
    v5 = [*(a1 + 32) completionBlock];
    v5[2](v5, a2);
  }
}

- (void)_addRequestCompletionBlock:(id)a3 toTransaction:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = [v6 completionBlock];
    v9 = [v8 copy];

    v10 = [v5 copy];
    objc_initWeak(&location, v7);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__SBMainWorkspace__addRequestCompletionBlock_toTransaction___block_invoke;
    v13[3] = &unk_2783A9DD8;
    objc_copyWeak(&v16, &location);
    v11 = v9;
    v14 = v11;
    v12 = v10;
    v15 = v12;
    [v7 setCompletionBlock:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __60__SBMainWorkspace__addRequestCompletionBlock_toTransaction___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, a2);
    }

    (*(*(a1 + 40) + 16))();
    WeakRetained = v6;
  }
}

- (id)_selectTransactionForTransientOverlayPresentationRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 transientOverlayContext];
  v5 = [v4 transitionType];
  v6 = off_2783A28B8;
  if (v5)
  {
    v6 = off_2783A28A0;
  }

  v7 = [objc_alloc(*v6) initWithTransitionRequest:v3];

  return v7;
}

- (id)_selectTransactionForReturningToTheLockScreenAndForceToBuddy:(BOOL)a3
{
  v5 = [(SBMainWorkspace *)self createRequestWithOptions:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__SBMainWorkspace__selectTransactionForReturningToTheLockScreenAndForceToBuddy___block_invoke;
  v8[3] = &unk_2783A9E00;
  v9 = a3;
  v8[4] = self;
  [v5 modifyApplicationContext:v8];
  v6 = [(SBMainWorkspace *)self _selectTransactionForReturningToTheLockScreenWithRequest:v5];

  return v6;
}

void __80__SBMainWorkspace__selectTransactionForReturningToTheLockScreenAndForceToBuddy___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 setAnimationDisabled:1];
  v3 = +[SBSetupManager sharedInstance];
  if ([v3 isInSetupMode] && (objc_msgSend(v3, "updateInSetupMode") & 1) != 0 || *(a1 + 40) == 1)
  {
    v4 = [*(a1 + 32) _applicationForIdentifier:@"com.apple.purplebuddy"];
    v5 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:v4];
    [v6 setEntity:v5 forLayoutRole:1];
  }

  else
  {
    v4 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
    [v6 setActivatingEntity:v4];
  }
}

- (id)_selectTransactionForReturningToTheLockScreenWithRequest:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    [SBMainWorkspace _selectTransactionForReturningToTheLockScreenWithRequest:];
  }

  v4 = +[SBLockScreenManager sharedInstance];
  v5 = [v4 lockScreenEnvironment];
  v6 = [[SBReturnToLockscreenWorkspaceTransaction alloc] initWithTransitionRequest:v3 toLockScreenEnvironment:v5];

  return v6;
}

- (id)_selectTransactionForAppActivationUnderMainScreenLock:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBMainWorkspace *)self createRequestWithOptions:0];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __84__SBMainWorkspace__selectTransactionForAppActivationUnderMainScreenLock_withResult___block_invoke;
  v16 = &unk_2783A9E28;
  v17 = v6;
  v18 = v7;
  v9 = v7;
  v10 = v6;
  [v8 modifyApplicationContext:&v13];
  v11 = [(SBMainWorkspace *)self _selectTransactionForAppActivationUnderMainScreenLockRequest:v8, v13, v14, v15, v16];

  return v11;
}

void __84__SBMainWorkspace__selectTransactionForAppActivationUnderMainScreenLock_withResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    [a2 setActivatingEntity:v3];
  }

  else
  {
    v4 = a2;
    v5 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
    [v4 setActivatingEntity:v5];
  }

  [a2 setResultBlock:*(a1 + 40)];
}

- (id)_selectTransactionForAppActivationUnderMainScreenLockRequest:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    [SBMainWorkspace _selectTransactionForAppActivationUnderMainScreenLockRequest:];
  }

  v4 = [SBActivateAppUnderLockScreenWorkspaceTransaction alloc];
  v5 = +[SBLockScreenManager sharedInstance];
  v6 = [v5 lockScreenEnvironment];
  v7 = [(SBActivateAppUnderLockScreenWorkspaceTransaction *)v4 initWithTransitionRequest:v3 lockScreenEnvironment:v6];

  v8 = [(SBWorkspaceTransaction *)v7 transitionRequest];

  return v7;
}

- (id)_selectTransactionForAppRelaunch:(id)a3
{
  v4 = a3;
  v5 = [SBApp windowSceneManager];
  v6 = [v4 sceneHandle];
  v7 = [v6 displayIdentity];
  v8 = [v5 windowSceneForDisplayIdentity:v7];

  v9 = [v8 uiLockStateProvider];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = +[SBLockScreenManager sharedInstance];
  }

  v12 = v11;

  if ([v12 isUILocked] && (objc_msgSend(v4, "BOOLForActivationSetting:", 3) & 1) == 0)
  {
    v14 = [(SBMainWorkspace *)self _selectTransactionForAppActivationUnderMainScreenLock:v4 withResult:0];
  }

  else
  {
    v13 = [(SBMainWorkspace *)self createRequestForApplicationActivation:v4 options:4];
    v14 = [(SBMainWorkspace *)self _selectTransactionForAppActivationRequest:v13];
  }

  return v14;
}

- (id)_selectTransactionForAppEntityRemoved:(id)a3
{
  v4 = a3;
  v5 = [v4 sceneHandle];
  v6 = [v5 sceneIfExists];
  v7 = [v6 settings];
  v8 = [v7 sb_displayIdentityForSceneManagers];

  v9 = [SBApp windowSceneManager];
  v10 = [v9 windowSceneForDisplayIdentity:v8];
  if (!v10)
  {
    v10 = [v9 embeddedDisplayWindowScene];
  }

  v11 = [SBApp lockOutController];
  v12 = [v10 authenticationStatusProvider];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [SBApp authenticationController];
  }

  v15 = v14;

  if (([v11 isBlocked] & 1) != 0 || (objc_msgSend(v15, "isAuthenticated") & 1) == 0)
  {
    v22 = [(SBMainWorkspace *)self _selectTransactionForReturningToTheLockScreenAndForceToBuddy:0];
  }

  else
  {
    v16 = objc_alloc_init(SBMainWorkspaceLayoutStateContingencyPlan);
    v17 = [v10 switcherController];
    v18 = [MEMORY[0x277CBEB98] setWithObject:v4];
    v25 = v16;
    v19 = [(SBMainWorkspaceLayoutStateContingencyPlan *)v16 transitionContextForLayoutContext:v17 failedEntities:v18];

    if (v19)
    {
      [v19 setAnimationDisabled:1];
      v20 = [v10 _fbsDisplayConfiguration];
      v21 = [(SBMainWorkspace *)self createRequestWithOptions:0 displayConfiguration:v20];

      [v21 setApplicationContext:v19];
      v22 = [(SBToAppsWorkspaceTransaction *)[SBAppExitedWorkspaceTransaction alloc] initWithTransitionRequest:v21];
      v23 = [(SBWorkspaceTransaction *)v22 transitionRequest];
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (id)_selectTransactionForAppActivationRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 applicationContext];
  v6 = [v5 resolvedActivatingWorkspaceEntity];
  v7 = [v6 applicationSceneEntity];

  if ([v7 BOOLForActivationSetting:60])
  {
    v8 = [(SBMainWorkspace *)self _selectTransactionForAppActivationUnderMainScreenLockRequest:v4];
  }

  else
  {
    v9 = [SBApp windowSceneManager];
    v10 = [v4 displayIdentity];
    v11 = [v9 windowSceneForDisplayIdentity:v10];

    v12 = [v11 transientOverlayPresenter];
    if ([v12 hasActivePresentation] && (objc_msgSend(v4, "shouldPreventDismissalOfUnrelatedTransientOverlays") & 1) == 0)
    {
      v14 = [v4 applicationContext];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 animationDisabled] ^ 1;
      }

      else
      {
        v16 = 0;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __61__SBMainWorkspace__selectTransactionForAppActivationRequest___block_invoke;
      v21 = &unk_2783A9E50;
      v22 = v12;
      v23 = v16;
      [v4 modifyTransientOverlayContext:&v18];
      v13 = [(SBMainWorkspace *)self _selectTransactionForTransientOverlayPresentationRequest:v4, v18, v19, v20, v21];
    }

    else
    {
      v13 = [[SBAppToAppWorkspaceTransaction alloc] initWithTransitionRequest:v4];
    }

    v8 = v13;
  }

  return v8;
}

void __61__SBMainWorkspace__selectTransactionForAppActivationRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTransitionType:1];
  [v3 setScenePresenter:*(a1 + 32)];
  [v3 setAnimated:*(a1 + 40)];
}

- (void)_suspend
{
  if (!self->_suspensionLock)
  {
    v3 = objc_alloc(MEMORY[0x277CF0C38]);
    v6 = [(SBWorkspace *)self eventQueue];
    v4 = [v3 initWithEventQueue:v6 reason:@"SBWorkspaceSuspended"];
    suspensionLock = self->_suspensionLock;
    self->_suspensionLock = v4;
  }
}

- (void)_resume
{
  suspensionLock = self->_suspensionLock;
  if (suspensionLock)
  {
    v4 = suspensionLock;
    v5 = self->_suspensionLock;
    self->_suspensionLock = 0;

    if (!self->_initialized)
    {
      v6 = [(SBWorkspace *)self eventQueue];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __26__SBMainWorkspace__resume__block_invoke;
      v8[3] = &unk_2783A8C18;
      v8[4] = self;
      v7 = [MEMORY[0x277CF0C30] eventWithName:@"SBWorkspaceFinishInitialization" handler:v8];
      [v6 executeOrInsertEvent:v7 atPosition:0];
    }

    [(BSEventQueueLock *)v4 relinquish];
  }
}

- (void)_finishInitialization
{
  v42 = *MEMORY[0x277D85DE8];
  if (!self->_initialized)
  {
    self->_initialized = 1;
    v3 = [MEMORY[0x277D0AB08] sharedInstance];
    [v3 setDelegate:self];

    v4 = +[SBBacklightController sharedInstance];
    [v4 addObserver:self];

    v5 = +[SBApplicationController sharedInstanceIfExists];
    v6 = [MEMORY[0x277D0AAC0] sharedInstance];
    [v6 addObserver:self];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v7 = [v6 allProcesses];
    v8 = [v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v38;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v37 + 1) + 8 * i);
          [(SBMainWorkspace *)self processManager:v6 didAddProcess:v12];
          if ([v12 isApplicationProcess] && objc_msgSend(v12, "isRunning"))
          {
            v13 = [v12 bundleIdentifier];
            v14 = [v5 applicationWithBundleIdentifier:v13];

            [v14 _processWillLaunch:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v9);
    }

    v15 = [SBInCallPresentationManager alloc];
    v16 = [SBApp windowSceneManager];
    v17 = +[SBApplicationController sharedInstance];
    v18 = [SBApp bannerManager];
    v19 = [(SBInCallPresentationManager *)v15 initWithWindowSceneManager:v16 applicationController:v17 bannerManager:v18];
    inCallPresentationManager = self->_inCallPresentationManager;
    self->_inCallPresentationManager = v19;

    [(SBInCallPresentationManager *)self->_inCallPresentationManager setDelegate:self];
    v21 = objc_alloc_init(SBFocusModesHomeScreenSettingsManager);
    focusModesHomeScreenSnapshotManager = self->_focusModesHomeScreenSnapshotManager;
    self->_focusModesHomeScreenSnapshotManager = v21;

    v23 = objc_alloc_init(SBHomeScreenConfigurationManager);
    homeScreenConfigurationManager = self->_homeScreenConfigurationManager;
    self->_homeScreenConfigurationManager = v23;

    transientOverlayPresentationManager = self->_transientOverlayPresentationManager;
    v26 = +[SBCoverSheetPresentationManager sharedInstance];
    [(SBTransientOverlayPresentationManager *)transientOverlayPresentationManager setCoverSheetPresentationManager:v26];

    v27 = NSClassFromString(&cfstr_Uikeyboardarbi.isa);
    if (objc_opt_respondsToSelector())
    {
      v28 = [(objc_class *)v27 performSelector:sel_sharedArbiterManager];
    }

    else
    {
      v28 = 0;
    }

    v29 = [SBKeyboardDismissalManager alloc];
    v30 = [MEMORY[0x277CF0788] sharedInstance];
    v31 = +[SBSystemGestureManager mainDisplayManager];
    v32 = [(SBMainWorkspace *)self keyboardFocusController];
    v33 = [(SBKeyboardDismissalManager *)v29 initWithTouchDeliveryService:v30 systemGestureManager:v31 keyboardArbiterManager:v28 focusController:v32];
    keyboardDismissalManager = self->_keyboardDismissalManager;
    self->_keyboardDismissalManager = v33;

    v35 = +[SBKeyboardFocusCoordinator sharedInstance];
    v36 = +[SBKeyboardFocusArbitrationReason workspaceDidFinishInitialization];
    [v35 requestArbitrationForSBWindowScene:0 forReason:v36];
  }
}

- (void)setPipCoordinator:(id)a3
{
  v29 = a3;
  if (self->_pipCoordinator)
  {
    [SBMainWorkspace setPipCoordinator:];
  }

  objc_storeStrong(&self->_pipCoordinator, a3);
  if (+[SBPIPPegasusAdapter isSupported])
  {
    v5 = objc_alloc_init(SBPIPPegasusAdapter);
    v6 = [SBPIPController alloc];
    v7 = *MEMORY[0x277D772B0] + 5.0 + 25.0;
    v8 = +[SBPIPSettingsDomain rootSettings];
    v9 = [v8 interactionSettings];
    v10 = [(SBPIPController *)v6 initWithIdleTimerCoordinator:self windowLevel:v9 interactionSettings:v5 adapter:v7];

    [(SBPIPControllerCoordinator *)self->_pipCoordinator registerController:v10 forType:0];
  }

  v11 = NSClassFromString(&cfstr_Uikeyboardarbi.isa);
  if (objc_opt_respondsToSelector())
  {
    v28 = [(objc_class *)v11 performSelector:sel_sharedArbiterManager];
  }

  else
  {
    v28 = 0;
  }

  v12 = [SBApp windowSceneManager];
  v13 = [v12 embeddedDisplayWindowScene];
  v26 = [v13 systemPointerInteractionManager];

  v25 = [SBSystemNotesManager alloc];
  pipCoordinator = self->_pipCoordinator;
  v15 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v24 = [MEMORY[0x277D0AAD8] sharedInstance];
  v27 = +[SBSceneManagerCoordinator sharedInstance];
  v16 = [v27 sceneDeactivationManager];
  v17 = +[SBKeyboardSuppressionManager sharedInstance];
  keyboardDismissalManager = self->_keyboardDismissalManager;
  v19 = +[SBApplicationController sharedInstance];
  v20 = +[SBSystemGestureManager mainDisplayManager];
  v21 = [MEMORY[0x277D262A0] sharedConnection];
  v22 = [(SBSystemNotesManager *)v25 initWithControllerCoordinator:pipCoordinator workspace:self sceneManager:v15 keyboardArbiterManager:v28 fbSceneManager:v24 sceneDeactivationManager:v16 keyboardSuppressionManager:v17 keyboardDismissalManager:keyboardDismissalManager applicationController:v19 systemGestureManager:v20 systemPointerInteractionManager:v26 idleTimerCoordinator:self managedProfileConnection:v21];
  systemNotesManager = self->_systemNotesManager;
  self->_systemNotesManager = v22;
}

- (id)_applicationForIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[SBApplicationController sharedInstanceIfExists];
  v5 = [v4 applicationWithBundleIdentifier:v3];

  return v5;
}

- (void)_handleBuddyLaunchFinished
{
  v20[3] = *MEMORY[0x277D85DE8];
  v2 = [SBApp restartManager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 startupTransition];
    if (v4)
    {
    }

    else
    {
      v5 = +[SBSetupManager sharedInstance];
      v6 = [v5 isInSetupModeForDeviceMigration];

      if ((v6 & 1) == 0)
      {
        v7 = +[SBLockScreenManager sharedInstance];
        v19[0] = @"SBUILockOptionsUseScreenOffModeKey";
        v8 = [MEMORY[0x277CCABB0] numberWithBool:0];
        v20[0] = v8;
        v19[1] = @"SBUILockOptionsLockAutomaticallyKey";
        v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v20[1] = v9;
        v19[2] = @"SBUILockOptionsForceLockKey";
        v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v20[2] = v10;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
        [v7 lockUIFromSource:16 withOptions:v11];

        v12 = +[SBDefaults localDefaults];
        v13 = [v12 setupDefaults];
        LODWORD(v9) = [v13 inSetupModeForActivationChange];

        if (v9)
        {
          v14 = [SBBuddyLockScreenDismissOnlyAlertItem alloc];
          v15 = [MEMORY[0x277CCA8D8] mainBundle];
          v16 = [v15 localizedStringForKey:@"ACTIVATION_REQUIRED" value:@"Activation Required" table:@"SpringBoard"];
          v17 = [(SBDismissOnlyAlertItem *)v14 initWithTitle:v16 body:0];

          v18 = +[SBAlertItemsController sharedInstance];
          [v18 activateAlertItem:v17];
        }
      }
    }
  }
}

- (BOOL)_handleSetupExited:(id)a3
{
  v3 = +[SBSetupManager sharedInstance];
  [v3 updateInSetupMode];
  v4 = +[SBSyncController sharedInstance];
  if (![v3 isInSetupMode] || (objc_msgSend(v3, "isInSetupModeForDeviceMigration") & 1) != 0 || (objc_msgSend(v4, "isRestoring") & 1) != 0 || objc_msgSend(v4, "isResetting"))
  {
    v5 = [SBApp bannerManager];
    [v5 setSuspended:0 forReason:@"com.apple.purplebuddy"];

    v6 = +[SBSetupManager sharedInstance];
    [v6 setDeferringDeviceOrientationUpdates:0];

    v7 = +[SBOrientationLockManager sharedInstance];
    [v7 restoreStateFromPrefs];

    v8 = +[SBDefaults localDefaults];
    v9 = [v8 setupDefaults];
    [v9 setInSetupModeForActivationChange:0];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:@"SBSetupBuddyCompletedNotification" object:0];

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)_applicationProcessExited:(id)a3 withContext:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = +[SBApplicationController sharedInstanceIfExists];
  v9 = [v7 bundleIdentifier];

  v10 = [v8 applicationWithBundleIdentifier:v9];

  if (v10)
  {
    v11 = +[SBApplicationController sharedInstance];
    v12 = [v11 setupApplication];

    v13 = v10 == v12 && [(SBMainWorkspace *)self _handleSetupExited:v12];
    v14 = [v6 exitReason];
    v15 = [v6 terminationReason];
    if ((FBSApplicationTerminationReasonIsGraceful() & 1) == 0 && v15 != 7 && (v14 & 0x11) == 0)
    {
      v16 = [v10 bundleIdentifier];
      v17 = [v16 isEqualToString:@"com.apple.siri"];

      if ((v17 & 1) == 0)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __57__SBMainWorkspace__applicationProcessExited_withContext___block_invoke;
        block[3] = &unk_2783A8C18;
        v22 = v10;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }

    if (v13)
    {
      v18 = SBLogWorkspace();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [v10 bundleIdentifier];
        *buf = 138543362;
        v24 = v19;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, "%{public}@ should relaunch on exit", buf, 0xCu);
      }
    }

    [v10 _didExitWithContext:v6];
    if ((v14 & 0x10) != 0)
    {
      [*MEMORY[0x277D76620] didReceiveMemoryWarning];
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

void __57__SBMainWorkspace__applicationProcessExited_withContext___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEAC0];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = [v1 dictionaryWithObjectsAndKeys:{v2, *MEMORY[0x277D76738], 0}];

  [SBApp failedTest:0 withResults:v3];
}

- (void)_destroyApplicationSceneEntity:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueIdentifier];
  if (v5)
  {
    v6 = [v4 application];
    v7 = [MEMORY[0x277D0AAD8] sharedInstance];
    v8 = [SBApplicationSceneHandle lookupOrCreatePersistenceIDFromApplication:v6 sceneID:v5];
    if (v8 && ([v6 processState], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isRunning"), v9, v10))
    {
      v11 = objc_alloc(MEMORY[0x277D75400]);
      v12 = [MEMORY[0x277CBEB98] setWithObject:v8];
      v13 = [v11 initWithPersistedIdentifiers:v12 preferredAnimationType:1 callbackQueue:0 completion:0];

      v14 = [MEMORY[0x277CBEB98] setWithObject:v13];
    }

    else
    {
      v14 = 0;
    }

    v15 = [v7 sceneWithIdentifier:v5];
    if (v15)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __50__SBMainWorkspace__destroyApplicationSceneEntity___block_invoke;
      v27[3] = &unk_2783A9E78;
      v28 = v14;
      [v15 invalidate:{v27, v7}];
    }

    else if (v14)
    {
      v16 = [MEMORY[0x277D0AAC0] sharedInstance];
      v17 = [v6 bundleIdentifier];
      v18 = [v16 applicationProcessesForBundleIdentifier:v17];
      v19 = [v18 lastObject];

      v20 = [v19 workspace];
      [v20 sendActions:v14];
    }

    else
    {
      [(SBMainWorkspace *)self _cleanupForRemovedAppEntity:v4, v7];
    }

    [v6 flushSnapshotsForSceneID:v5];
    v21 = [v6 _dataStore];
    [v21 removeSceneStoreForIdentifier:v5];

    v22 = [v6 bundleIdentifier];
    v23 = [v6 info];
    v24 = [v23 restorationArchiveContainerURL];
    v25 = [v24 path];
    _deleteStateRestorationArchiveForApplication();
  }
}

uint64_t __50__SBMainWorkspace__destroyApplicationSceneEntity___block_invoke(uint64_t result, void *a2)
{
  if (*(result + 32))
  {
    return [a2 setActions:?];
  }

  return result;
}

- (void)_cleanupForRemovedAppEntity:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uniqueIdentifier];
  if (v5)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v6 = [SBApp windowSceneManager];
    v7 = [v6 connectedWindowScenes];

    v30 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (!v30)
    {
LABEL_22:

      goto LABEL_23;
    }

    v25 = self;
    v26 = v4;
    v27 = 0;
    v28 = v7;
    v29 = *v38;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(v7);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v10 = [v9 layoutStateProvider];
        v11 = [v10 layoutState];
        v12 = [v11 elements];

        v13 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v34;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v34 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v33 + 1) + 8 * j) workspaceEntity];
              v18 = [v17 applicationSceneEntity];
              v19 = [v18 uniqueIdentifier];
              v20 = [v19 isEqualToString:v5];

              if (v20)
              {
                v27 = 1;
                goto LABEL_17;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }

LABEL_17:
          v7 = v28;
        }
      }

      v30 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v30);

    v4 = v26;
    if (v27)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"ApplicationEntity was removed = %@", v5];
      v22 = MEMORY[0x277D0AB18];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __47__SBMainWorkspace__cleanupForRemovedAppEntity___block_invoke;
      v31[3] = &unk_2783A92D8;
      v31[4] = v25;
      v32 = v26;
      v23 = [v22 eventWithName:v21 handler:v31];
      v7 = v21;
      v24 = [(SBWorkspace *)v25 eventQueue];
      [v24 executeOrPrependEvent:v23];

      goto LABEL_22;
    }
  }

LABEL_23:
}

void __47__SBMainWorkspace__cleanupForRemovedAppEntity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _selectTransactionForAppEntityRemoved:*(a1 + 40)];
  [*(a1 + 32) setCurrentTransaction:v2];
}

- (void)_removeApplicationEntities:(id)a3 withDestructionIntent:(id)a4 completion:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 shouldRemoveFromHistory];
  v31 = v8;
  v12 = [MEMORY[0x277CBEB58] setWithSet:v8];
  v13 = [MEMORY[0x277CBEB58] set];
  v14 = [(SBPIPControllerCoordinator *)self->_pipCoordinator controllerForType:0];
  v15 = [v14 hostedAppSceneHandles];
  [v13 addObjectsFromArray:v15];

  v16 = [(SBPIPControllerCoordinator *)self->_pipCoordinator controllerForType:1];
  v17 = [v16 hostedAppSceneHandles];
  [v13 addObjectsFromArray:v17];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __79__SBMainWorkspace__removeApplicationEntities_withDestructionIntent_completion___block_invoke;
  v33[3] = &unk_2783A9EA0;
  v30 = v13;
  v34 = v30;
  v18 = [v12 bs_filter:v33];
  [v12 minusSet:v18];
  v19 = 0;
  if (v11)
  {
    v19 = [v12 bs_filter:&__block_literal_global_467];
    [v12 minusSet:v19];
  }

  v20 = v12;
  v21 = [v19 count] == 0;
  v22 = [v20 count] == 0;
  if ([v19 count])
  {
    v23 = SBLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v36 = v19;
      _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "asking switcher to remove the following entities: %{public}@", buf, 0xCu);
    }

    v24 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    v25 = [v19 allObjects];
    [v24 handleApplicationSceneEntityDestructionIntent:v9 forEntities:v25];

    v21 = 1;
  }

  if ([v20 count])
  {
    v26 = SBLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v36 = v20;
      _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "asking workspace to remove the following entities: %{public}@", buf, 0xCu);
    }

    v32 = 0;
    v22 = [(SBMainWorkspace *)self _removeApplicationEntitiesFromWorkspace:v20 error:&v32];
    v27 = v32;
  }

  else
  {
    v27 = 0;
  }

  if ([v18 count])
  {
    v28 = SBLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v36 = v18;
      _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "asking pip coordinator to remove the following entities: %{public}@", buf, 0xCu);
    }

    v29 = [v18 bs_map:&__block_literal_global_471];
    [(SBPIPControllerCoordinator *)self->_pipCoordinator handleDestructionRequestForSceneHandles:v29];
  }

  if (v10)
  {
    v10[2](v10, v22 & v21, v27);
  }
}

uint64_t __79__SBMainWorkspace__removeApplicationEntities_withDestructionIntent_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sceneHandle];
  v4 = [*(a1 + 32) containsObject:v3];

  return v4;
}

uint64_t __79__SBMainWorkspace__removeApplicationEntities_withDestructionIntent_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 sceneHandle];
  v3 = [v2 _definition];
  v4 = [v3 specification];
  v5 = [v4 uiSceneSessionRole];

  if ([v5 isEqual:*MEMORY[0x277D772C8]])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 isEqual:*MEMORY[0x277D76E60]];
  }

  return v6;
}

- (BOOL)_removeApplicationEntitiesFromWorkspace:(id)a3 error:(id *)a4
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v51 = [MEMORY[0x277D0AAD8] sharedInstance];
  v5 = [MEMORY[0x277CBEB58] set];
  v50 = [MEMORY[0x277CBEB58] set];
  v49 = [MEMORY[0x277CBEB58] set];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v4;
  v54 = [obj countByEnumeratingWithState:&v72 objects:v83 count:16];
  if (v54)
  {
    v53 = *v73;
    v57 = v5;
    do
    {
      v6 = 0;
      do
      {
        if (*v73 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v55 = v6;
        v7 = [*(*(&v72 + 1) + 8 * v6) uniqueIdentifier];
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v8 = [SBApp windowSceneManager];
        v9 = [v8 connectedWindowScenes];

        v56 = v9;
        v59 = [v9 countByEnumeratingWithState:&v68 objects:v82 count:16];
        if (v59)
        {
          v58 = *v69;
          do
          {
            for (i = 0; i != v59; ++i)
            {
              if (*v69 != v58)
              {
                objc_enumerationMutation(v56);
              }

              v11 = *(*(&v68 + 1) + 8 * i);
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              v12 = [v11 layoutStateProvider];
              v13 = [v12 layoutState];
              v14 = [v13 elements];

              v15 = [v14 countByEnumeratingWithState:&v64 objects:v81 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v65;
                while (2)
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v65 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = [*(*(&v64 + 1) + 8 * j) workspaceEntity];
                    v20 = [v19 applicationSceneEntity];
                    v21 = [v20 uniqueIdentifier];
                    v22 = [v21 isEqualToString:v7];

                    if (v22)
                    {
                      [v57 addObject:v7];
                      goto LABEL_21;
                    }
                  }

                  v16 = [v14 countByEnumeratingWithState:&v64 objects:v81 count:16];
                  if (v16)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_21:
            }

            v59 = [v56 countByEnumeratingWithState:&v68 objects:v82 count:16];
          }

          while (v59);
        }

        v5 = v57;
        if (([v57 containsObject:v7] & 1) == 0)
        {
          v23 = [v51 sceneWithIdentifier:v7];
          v24 = v50;
          if (v23)
          {
            [v23 invalidate:0];
            v24 = v49;
          }

          [v24 addObject:v7];
        }

        v6 = v55 + 1;
      }

      while (v55 + 1 != v54);
      v54 = [obj countByEnumeratingWithState:&v72 objects:v83 count:16];
    }

    while (v54);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v25 = [v49 allObjects];
  v26 = [v25 countByEnumeratingWithState:&v60 objects:v80 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v61;
LABEL_31:
    v29 = 0;
    while (1)
    {
      if (*v61 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v30 = *(*(&v60 + 1) + 8 * v29);
      v31 = [v51 sceneWithIdentifier:v30];

      if (v31)
      {
        break;
      }

      if (v27 == ++v29)
      {
        v27 = [v25 countByEnumeratingWithState:&v60 objects:v80 count:16];
        if (v27)
        {
          goto LABEL_31;
        }

        goto LABEL_37;
      }
    }

    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"The scene with identifier — %@ — was not destroyed synchronously by FBSceneManager as we relied upon", v30];
    v33 = SBLogCommon();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      SBWorkspaceDestroyApplicationSceneHandlesWithIntent_cold_1();
    }

    v34 = MEMORY[0x277CCA9B8];
    v35 = SBMainWorkspaceErrorDomain;
    v78 = *MEMORY[0x277CCA068];
    v79 = v32;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v37 = [v34 errorWithDomain:v35 code:2 userInfo:v36];

    if (v37)
    {
      v38 = 0;
      goto LABEL_52;
    }
  }

  else
  {
LABEL_37:
  }

  v39 = [MEMORY[0x277CCAB68] string];
  if ([v5 count])
  {
    [v39 appendString:@"The following scenes where not destroyed since they are laid out as foreground and we were asked to not remove their sessions (destroySessions flag is false): "];
    v40 = [v5 description];
    [v39 appendString:v40];
  }

  if ([v50 count])
  {
    [v39 appendString:@"\n The following scenes couldn't be found: "];
    v41 = [v50 description];
    [v39 appendString:v41];
  }

  if ([v39 length])
  {
    v42 = SBLogCommon();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      SBWorkspaceDestroyApplicationSceneHandlesWithIntent_cold_1();
    }

    v43 = MEMORY[0x277CCA9B8];
    v44 = SBMainWorkspaceErrorDomain;
    v76 = *MEMORY[0x277CCA068];
    v77 = v39;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v37 = [v43 errorWithDomain:v44 code:2 userInfo:v45];
  }

  else
  {
    v37 = 0;
  }

  v38 = 1;
LABEL_52:
  if (a4)
  {
    v46 = v37;
    *a4 = v37;
  }

  return v38;
}

- (void)_cleanupAppRepairRequest:(id)a3
{
  [(NSMutableSet *)self->_ocelotRepairRequests removeObject:a3];
  if (![(NSMutableSet *)self->_ocelotRepairRequests count])
  {
    ocelotRepairRequests = self->_ocelotRepairRequests;
    self->_ocelotRepairRequests = 0;
  }
}

- (BOOL)_isLaunchingApplicationAfterSetupForRequestWithBundleIdentifier:(id)a3 options:(id)a4 origin:(id)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [a4 objectForKey:*MEMORY[0x277D670E8]];
  if (v9)
  {
    v10 = [v8 hasEntitlement:@"com.apple.springboard.launchAppAfterSetup"];

    if (v10)
    {
      v14[0] = @"com.apple.AppStore";
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      v12 = v11;
      if (v7)
      {
        LOBYTE(v9) = [v11 containsObject:v7];
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (id)_sceneComparatorForApplication:(id)a3 keyboardFocusScene:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__SBMainWorkspace__sceneComparatorForApplication_keyboardFocusScene___block_invoke;
  v11[3] = &unk_2783A9F08;
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = MEMORY[0x223D6F7F0](v11);

  return v9;
}

uint64_t __69__SBMainWorkspace__sceneComparatorForApplication_keyboardFocusScene___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 application];
  v8 = [v7 isEqual:*(a1 + 32)];

  if ([v5 isEqual:v6] && (v8 & 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v10 = [v6 application];
    v11 = [v10 isEqual:*(a1 + 32)];

    if ((v8 & v11) == 1)
    {
      v12 = [v5 contentState];
      v13 = [v6 contentState];
      if (v12 && v13)
      {
        v14 = *(a1 + 40);
        if (v14)
        {
          v15 = [v14 settings];
          v16 = [v15 displayIdentity];

          v17 = [v5 displayIdentity];
          v18 = [v17 isEqual:v16];
          v19 = [v6 displayIdentity];
          v20 = [v19 isEqual:v16];
          if (v18 && v20)
          {
            v21 = *(a1 + 40);
            v22 = [v6 sceneIfExists];
            LOBYTE(v21) = [v21 isEqual:v22];

            if (v21)
            {
              v9 = -1;
            }

            else
            {
              v24 = *(a1 + 40);
              v25 = [v5 sceneIfExists];
              LODWORD(v9) = [v24 isEqual:v25];

              v9 = v9;
            }
          }

          else if (v20)
          {
            v9 = -1;
          }

          else
          {
            v9 = v18;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        if (v12)
        {
          v9 = 1;
        }

        else
        {
          v9 = -1;
        }

        if (!(v12 | v13))
        {
          v23 = [v5 sceneIfExists];
          if (v23)
          {
            v9 = 1;
          }

          else
          {
            v9 = -1;
          }
        }
      }
    }

    else if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v11 << 63 >> 63;
    }
  }

  return v9;
}

- (id)_targetWindowSceneForApplication:(id)a3 options:(id)a4 settings:(id)a5 requireForeground:(BOOL)a6 targetDisplayConfiguration:(id *)a7 error:(id *)a8
{
  v10 = a6;
  v59 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = [a5 objectForActivationSetting:51];
  if (![v16 isEqualToString:*MEMORY[0x277D66EF8]])
  {
    v21 = [v15 bs_safeObjectForKey:*MEMORY[0x277D670D0] ofType:objc_opt_class()];
    if (![v21 length])
    {
      goto LABEL_27;
    }

    if ((SBFIsChamoisExternalDisplayControllerAvailable() & 1) != 0 || +[SBContinuitySessionManager areContinuitySessionsAllowed])
    {
      v48 = self;
      v49 = v10;
      v50 = a8;
      v51 = a7;
      v52 = v21;
      v53 = v14;
      v22 = v21;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v23 = [SBApp windowSceneManager];
      v24 = [v23 connectedWindowScenes];

      v25 = [v24 countByEnumeratingWithState:&v54 objects:v58 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v55;
LABEL_11:
        v28 = 0;
        while (1)
        {
          if (*v55 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v54 + 1) + 8 * v28) _fbsDisplayConfiguration];
          v30 = [v29 deviceName];
          v31 = [v30 isEqualToString:v22];

          if (v31)
          {
            break;
          }

          if (v26 == ++v28)
          {
            v26 = [v24 countByEnumeratingWithState:&v54 objects:v58 count:16];
            if (v26)
            {
              goto LABEL_11;
            }

            goto LABEL_17;
          }
        }

        v32 = v29;
        if (!v29)
        {
          goto LABEL_23;
        }

        v33 = 0;
        v34 = 1;
      }

      else
      {
LABEL_17:

LABEL_23:
        v35 = [SBApp windowSceneManager];
        v36 = [v35 connectedWindowScenes];
        v37 = [v36 allObjects];
        v38 = [v37 bs_mapNoNulls:&__block_literal_global_1243];

        v39 = MEMORY[0x277CCACA8];
        v40 = [v38 componentsJoinedByString:@"\n"];
        v33 = [v39 stringWithFormat:@"Connected displays device names:\n\n%@\n\n", v40];
        v41 = v33;

        v34 = 0;
        v29 = 0;
      }

      v14 = v53;

      v42 = v29;
      v43 = v33;
      v44 = v43;
      v21 = v52;
      if (v34)
      {

        a7 = v51;
        v10 = v49;
        self = v48;
        if (v42)
        {
          v45 = [SBApp windowSceneManager];
          v46 = [v42 identity];
          v19 = [v45 windowSceneForDisplayIdentity:v46];

          goto LABEL_28;
        }

LABEL_27:
        v42 = [0 identity];
        v19 = [(SBMainWorkspace *)self _targetWindowSceneForApplication:v14 preferringDisplay:v42 requireForeground:v10 options:v15];
LABEL_28:

        if (a7)
        {
          *a7 = [v19 _sbDisplayConfiguration];
        }

        goto LABEL_36;
      }

      if (v50)
      {
        *v50 = FBSOpenApplicationErrorCreate();
      }
    }

    else if (a8)
    {
      FBSOpenApplicationErrorCreate();
      *a8 = v19 = 0;
      goto LABEL_36;
    }

    v19 = 0;
LABEL_36:

    goto LABEL_37;
  }

  v17 = +[SBContinuitySessionManager sharedInstance];
  v18 = [v17 currentSession];
  v19 = [v18 mainWindowScene];

  if (v19)
  {
    if (a7)
    {
      *a7 = [v19 _sbDisplayConfiguration];
    }

    v20 = v19;
  }

  else if (a8)
  {
    *a8 = FBSOpenApplicationErrorCreate();
  }

LABEL_37:

  return v19;
}

- (id)_targetWindowSceneForApplication:(id)a3 preferringDisplay:(id)a4 requireForeground:(BOOL)a5 options:(id)a6
{
  v7 = a5;
  v57 = *MEMORY[0x277D85DE8];
  v48 = a3;
  v10 = a4;
  v11 = a6;
  if (!v10)
  {
    v43 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v14 = +[SBMainSwitcherControllerCoordinator sharedInstanceIfExists];
    v15 = v14;
    if (v14)
    {
      v44 = v7;
      v40 = self;
      v41 = v14;
      v47 = [v11 bs_safeObjectForKey:*MEMORY[0x277D77838] ofType:objc_opt_class()];
      if (!v47)
      {
        v16 = [v11 bs_safeURLForKey:*MEMORY[0x277D0AC40]];
        v47 = [v16 absoluteString];
      }

      v42 = v11;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v17 = [SBApp windowSceneManager];
      v18 = [v17 connectedWindowScenes];

      obj = v18;
      v49 = [v18 countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v49)
      {
        v46 = *v53;
        do
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v53 != v46)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v52 + 1) + 8 * i);
            v21 = [v20 sceneManager];
            v22 = [v20 _fbsDisplayIdentity];
            v23 = [v21 sceneIdentityForApplication:v48 targetContentIdentifier:v47 allowCanMatches:1 preferNewScene:0 allowSceneCreation:0 visibleIdentifiers:0 preferredDisplay:v22];

            if (v23)
            {
              v24 = [v21 existingSceneHandleForSceneIdentity:v23];
              v25 = [v24 contentState];
              v26 = [v24 sceneIfExists];
              v27 = [v26 settings];
              v28 = [v27 sb_displayIdentityForSceneManagers];
              v29 = [v21 displayIdentity];
              v30 = [v28 isEqual:v29];

              if (v24)
              {
                if (v44)
                {
                  if (((v25 != 0) & v30) == 0)
                  {
                    goto LABEL_18;
                  }

LABEL_17:
                  [v43 addObject:v24];
                }

                else if (v30)
                {
                  goto LABEL_17;
                }
              }

LABEL_18:
            }
          }

          v49 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
        }

        while (v49);
      }

      v11 = v42;
      v10 = 0;
      self = v40;
      v15 = v41;
    }

    v31 = [(SBKeyboardFocusControlling *)self->_keyboardFocusCoordinator externalSceneWithFocus];
    v32 = [(SBMainWorkspace *)self _sceneComparatorForApplication:v48 keyboardFocusScene:v31];
    v33 = [v43 firstObject];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __96__SBMainWorkspace__targetWindowSceneForApplication_preferringDisplay_requireForeground_options___block_invoke;
    v50[3] = &unk_2783A9F30;
    v34 = v32;
    v51 = v34;
    v35 = [v43 bs_reduce:v33 block:v50];

    v36 = [SBApp windowSceneManager];
    v37 = v36;
    if (v35)
    {
      v38 = [v35 displayIdentity];
      v13 = [v37 windowSceneForDisplayIdentity:v38];
    }

    else
    {
      v13 = [v36 activeDisplayWindowScene];
    }

    goto LABEL_26;
  }

  v12 = [SBApp windowSceneManager];
  v13 = [v12 windowSceneForDisplayIdentity:v10];

LABEL_26:

  return v13;
}

id __96__SBMainWorkspace__targetWindowSceneForApplication_preferringDisplay_requireForeground_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (*(*(a1 + 32) + 16))();
  v8 = v6;
  if (v7 == -1)
  {
    goto LABEL_4;
  }

  if (v7 == 1)
  {
    v8 = v5;
LABEL_4:
    v9 = v8;
    goto LABEL_6;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)processManager:(id)a3 didAddProcess:(id)a4
{
  v5 = a4;
  if ([v5 isApplicationProcess] && (objc_msgSend(v5, "isCurrentProcess") & 1) == 0)
  {
    [v5 addObserver:self];
  }
}

- (void)process:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5
{
  v7 = a3;
  v8 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SBMainWorkspace_process_stateDidChangeFromState_toState___block_invoke;
  block[3] = &unk_2783A8ED8;
  v12 = v7;
  v13 = self;
  v14 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__SBMainWorkspace_process_stateDidChangeFromState_toState___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isApplicationProcess])
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) bundleIdentifier];
    v4 = [v2 _applicationForIdentifier:v3];

    [v4 _noteProcess:*(a1 + 32) didChangeToState:*(a1 + 48)];
  }
}

- (void)applicationProcessWillLaunch:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SBMainWorkspace_applicationProcessWillLaunch___block_invoke;
  block[3] = &unk_2783A8C18;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__SBMainWorkspace_applicationProcessWillLaunch___block_invoke(uint64_t a1)
{
  v2 = +[SBApplicationController sharedInstanceIfExists];
  v3 = [*(a1 + 32) bundleIdentifier];
  v4 = [v2 applicationWithBundleIdentifier:v3];

  [v4 _processWillLaunch:*(a1 + 32)];
}

- (void)applicationProcessDidLaunch:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__SBMainWorkspace_applicationProcessDidLaunch___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __47__SBMainWorkspace_applicationProcessDidLaunch___block_invoke(uint64_t a1)
{
  v2 = +[SBApplicationController sharedInstanceIfExists];
  v3 = [*(a1 + 32) bundleIdentifier];
  v7 = [v2 applicationWithBundleIdentifier:v3];

  [v7 _processDidLaunch:*(a1 + 32)];
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 setupApplication];

  v6 = v7;
  if (v7 == v5)
  {
    [*(a1 + 40) _handleBuddyLaunchFinished];
    v6 = v7;
  }
}

- (void)applicationProcessDidExit:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SBMainWorkspace_applicationProcessDidExit_withContext___block_invoke;
  block[3] = &unk_2783A8ED8;
  v11 = v6;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__SBMainWorkspace_applicationProcessDidExit_withContext___block_invoke(uint64_t a1)
{
  v108 = *MEMORY[0x277D85DE8];
  v2 = [SBApp restartManager];
  v3 = [v2 isPendingExit];

  if (!v3)
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v6 = [SBApp windowSceneManager];
    v7 = [v6 connectedWindowScenes];

    obj = v7;
    v80 = [v7 countByEnumeratingWithState:&v98 objects:v107 count:16];
    if (v80)
    {
      v81 = 0;
      v79 = *v99;
      do
      {
        for (i = 0; i != v80; ++i)
        {
          if (*v99 != v79)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v98 + 1) + 8 * i);
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v10 = [v9 layoutStateProvider];
          v11 = [v10 layoutState];
          v12 = [v11 elements];

          v13 = [v12 countByEnumeratingWithState:&v94 objects:v106 count:16];
          if (v13)
          {
            v14 = v13;
            v82 = i;
            v15 = *v95;
            while (2)
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v95 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [*(*(&v94 + 1) + 8 * j) workspaceEntity];
                v18 = [v17 applicationSceneEntity];

                v19 = [v18 sceneHandle];
                v20 = [v19 sceneIfExists];
                v21 = [v20 clientProcess];
                v22 = a1;
                v23 = *(a1 + 32);

                if (v21 == v23)
                {

                  v81 = v18;
                  a1 = v22;
                  goto LABEL_19;
                }

                a1 = v22;
              }

              v14 = [v12 countByEnumeratingWithState:&v94 objects:v106 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }

LABEL_19:
            i = v82;
          }
        }

        v80 = [obj countByEnumeratingWithState:&v98 objects:v107 count:16];
      }

      while (v80);
    }

    else
    {
      v81 = 0;
    }

    v24 = SBLogWorkspace();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      *buf = 138543618;
      v103 = v25;
      v104 = 2114;
      v105 = v26;
      _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Process exited: %{public}@ -> %{public}@", buf, 0x16u);
    }

    v27 = +[SBApplicationController sharedInstanceIfExists];
    v28 = [*(a1 + 32) bundleIdentifier];
    v29 = [v27 applicationWithBundleIdentifier:v28];

    if (!v29)
    {
      if (v81)
      {
        v33 = MEMORY[0x277CCACA8];
        v34 = [v81 application];
        v35 = [v34 bundleIdentifier];
        v36 = [v33 stringWithFormat:@"ApplicationExited = %@", v35];

        v37 = MEMORY[0x277D0AB18];
        v83[0] = MEMORY[0x277D85DD0];
        v83[1] = 3221225472;
        v83[2] = __57__SBMainWorkspace_applicationProcessDidExit_withContext___block_invoke_507;
        v83[3] = &unk_2783A92D8;
        v83[4] = *(a1 + 48);
        v84 = v81;
        v38 = [v37 eventWithName:v36 handler:v83];
        v39 = [*(a1 + 48) eventQueue];
        [v39 executeOrPrependEvent:v38];
      }

      else
      {
        v36 = SBLogCommon();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          __57__SBMainWorkspace_applicationProcessDidExit_withContext___block_invoke_cold_1((a1 + 32));
        }
      }

      goto LABEL_75;
    }

    if ([*(a1 + 48) _applicationProcessExited:*(a1 + 32) withContext:*(a1 + 40)])
    {
      if (![v29 isAnyTerminationAssertionHeld])
      {
        v32 = a1;
        v40 = 1;
LABEL_37:
        v36 = [MEMORY[0x277CBEB18] array];
        v41 = [MEMORY[0x277CBEB18] array];
        v42 = +[SBLockScreenManager sharedInstance];
        if ([v42 isUILocked])
        {

          v43 = v32;
        }

        else
        {
          v44 = [SBApp lockOutController];
          v45 = [v44 isLockedOut];

          v43 = v32;
          if (v45)
          {
            if (v40)
            {
              v46 = [v29 bundleIdentifier];
              v47 = [v46 isEqualToString:@"com.apple.purplebuddy"];
            }

            else
            {
              v47 = 0;
            }

            if ((v47 & 1) != 0 || v81)
            {
              v63 = SBLogCommon();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                LODWORD(v103) = v47;
                _os_log_impl(&dword_21ED4E000, v63, OS_LOG_TYPE_DEFAULT, "Application exit detected and we need to return to the lock-screen: forceSetup: %d", buf, 8u);
              }

              v64 = MEMORY[0x277CCACA8];
              v65 = [v29 bundleIdentifier];
              v58 = [v64 stringWithFormat:@"ReturnToLockscreenFromApplicationExited = %@", v65];

              v92[0] = MEMORY[0x277D85DD0];
              v92[1] = 3221225472;
              v92[2] = __57__SBMainWorkspace_applicationProcessDidExit_withContext___block_invoke_500;
              v92[3] = &unk_2783A9F58;
              v92[4] = *(v32 + 48);
              v93 = v47;
              v66 = [MEMORY[0x277D0AB18] eventWithName:v58 handler:v92];
              [v36 addObject:v66];

              v40 = 1;
              goto LABEL_58;
            }

            v40 = 1;
LABEL_59:
            v67 = +[SBApplicationController sharedInstance];
            v68 = [v67 setupApplication];

            v69 = +[SBSetupManager sharedInstance];
            v70 = v69;
            if (v29 != v68 && [v69 isInSetupMode] && ((v40 | objc_msgSend(v70, "updateInSetupMode") ^ 1) & 1) == 0 && v81)
            {
              v71 = SBLogCommon();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_21ED4E000, v71, OS_LOG_TYPE_DEFAULT, "Activating Setup on a process exit because we're in setup mode.", buf, 2u);
              }

              SBWorkspaceActivateApplicationWithActionsAndResult(v68, 0, 0);
            }

            v72 = [v36 count];
            v73 = [v41 count];
            if (v72 | v73)
            {
              v75 = v73;
              if (v72)
              {
                v76 = +[SBReachabilityManager sharedInstance];
                [v76 deactivateReachability];

                v77 = [*(v43 + 48) eventQueue];
                [v77 executeOrPrependEvents:v36];
              }

              if (!v75)
              {
                goto LABEL_74;
              }

              v74 = [*(v43 + 48) eventQueue];
              [v74 executeOrInsertEvents:v41 atPosition:1];
            }

            else
            {
              v74 = SBLogWorkspace();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_21ED4E000, v74, OS_LOG_TYPE_INFO, "No transaction needed for exiting app.", buf, 2u);
              }
            }

LABEL_74:
LABEL_75:

            v4 = v81;
            goto LABEL_76;
          }
        }

        if (v81)
        {
          v48 = v40;
        }

        else
        {
          v48 = 1;
        }

        if ((v48 & 1) == 0)
        {
          v49 = MEMORY[0x277CCACA8];
          v50 = [v29 bundleIdentifier];
          v51 = [v49 stringWithFormat:@"ApplicationExited = %@", v50];

          v52 = MEMORY[0x277D0AB18];
          v88[0] = MEMORY[0x277D85DD0];
          v88[1] = 3221225472;
          v88[2] = __57__SBMainWorkspace_applicationProcessDidExit_withContext___block_invoke_2;
          v88[3] = &unk_2783A8ED8;
          v53 = v29;
          v54 = *(v43 + 48);
          v89 = v53;
          v90 = v54;
          v91 = v81;
          v55 = [v52 eventWithName:v51 handler:v88];
          [v36 addObject:v55];
        }

        if (v40)
        {
          v56 = MEMORY[0x277CCACA8];
          v57 = [v29 bundleIdentifier];
          v58 = [v56 stringWithFormat:@"RelaunchAfterApplicationExited = %@", v57];

          v59 = MEMORY[0x277D0AB18];
          v85[0] = MEMORY[0x277D85DD0];
          v85[1] = 3221225472;
          v85[2] = __57__SBMainWorkspace_applicationProcessDidExit_withContext___block_invoke_3;
          v85[3] = &unk_2783A92D8;
          v60 = v29;
          v61 = *(v43 + 48);
          v86 = v60;
          v87 = v61;
          v62 = [v59 eventWithName:v58 handler:v85];
          [v36 addObject:v62];

          v40 = 0;
LABEL_58:

          goto LABEL_59;
        }

        goto LABEL_59;
      }

      v30 = SBLogWorkspace();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = *(a1 + 32);
        *buf = 138412290;
        v103 = v31;
        _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_INFO, "Not actually relaunching %@ because it has outstanding termination assertions", buf, 0xCu);
      }

      v32 = a1;
    }

    else
    {
      v32 = a1;
    }

    v40 = 0;
    goto LABEL_37;
  }

  v4 = SBLogWorkspace();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v103 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Ignoring application exit of %@ because we are pending exit.", buf, 0xCu);
  }

LABEL_76:
}

void __57__SBMainWorkspace_applicationProcessDidExit_withContext___block_invoke_500(uint64_t a1)
{
  v2 = [*(a1 + 32) _selectTransactionForReturningToTheLockScreenAndForceToBuddy:*(a1 + 40)];
  [*(a1 + 32) setCurrentTransaction:v2];
}

void __57__SBMainWorkspace_applicationProcessDidExit_withContext___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) processState];
  v3 = [v2 isRunning];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 40) _selectTransactionForAppEntityRemoved:*(a1 + 48)];
    [*(a1 + 40) setCurrentTransaction:v4];
  }
}

void __57__SBMainWorkspace_applicationProcessDidExit_withContext___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) processState];
  v3 = [v2 isRunning];

  if (v3)
  {
    v4 = SBLogWorkspace();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) bundleIdentifier];
      *buf = 138543362;
      v9 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Not creating an app relaunch transaction because %{public}@ is already running", buf, 0xCu);
    }
  }

  else
  {
    v7 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:*(a1 + 32)];
    v6 = [*(a1 + 40) _selectTransactionForAppRelaunch:?];
    [*(a1 + 40) setCurrentTransaction:v6];
  }
}

void __57__SBMainWorkspace_applicationProcessDidExit_withContext___block_invoke_507(uint64_t a1)
{
  v2 = [*(a1 + 32) _selectTransactionForAppEntityRemoved:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) setCurrentTransaction:v2];
    v2 = v3;
  }
}

- (void)applicationProcessDebuggingStateDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SBMainWorkspace_applicationProcessDebuggingStateDidChange___block_invoke;
  v6[3] = &unk_2783A92D8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __61__SBMainWorkspace_applicationProcessDebuggingStateDidChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleIdentifier];
  v7 = [v2 _applicationForIdentifier:v3];

  v4 = *(a1 + 40);
  v5 = [v4 state];
  [v7 _noteProcess:v4 didChangeToState:v5];

  v6 = +[SBIdleTimerGlobalCoordinator sharedInstance];
  [v6 resetIdleTimerForReason:@"DebuggingStateDidChange"];
}

- (id)systemServiceApplicationInfoProvider:(id)a3
{
  v3 = +[SBApplicationController sharedInstance];
  v4 = [v3 _appLibrary];

  return v4;
}

- (void)systemService:(id)a3 canActivateApplication:(id)a4 withResult:(id)a5
{
  v12 = a4;
  v6 = a5;
  v7 = +[SBApplicationController sharedInstance];
  v8 = [v7 applicationWithBundleIdentifier:v12];

  if (!v12)
  {
    v11 = 2;
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (!v8)
  {
    v11 = 4;
    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_10:
    v6[2](v6, v11);
    goto LABEL_11;
  }

  v9 = +[SBIconController sharedIconRepository];
  v10 = [v9 applicationIconForBundleIdentifier:v12];
  if (([SBApp isBundleIdentifierRestrictionDisabled:v12] & 1) != 0 || (objc_msgSend(v9, "isIconVisible:", v10) & 1) == 0)
  {
    v11 = 5;
  }

  else
  {
    v11 = 0;
  }

  if (v6)
  {
    goto LABEL_10;
  }

LABEL_11:
}

- (void)systemService:(id)a3 handleOpenApplicationRequest:(id)a4 withCompletion:(id)a5
{
  v65 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v7 bundleIdentifier];
  v10 = [v7 clientProcess];
  v11 = [MEMORY[0x277D0AB08] currentOpenApplicationInstance];
  v12 = SBLogWorkspace();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  v56 = v8;
  if (v11)
  {
    if (!v13)
    {
      goto LABEL_11;
    }

    v14 = [v7 isTrusted];
    v15 = @"untrusted";
    *buf = 138544130;
    if (v14)
    {
      v15 = @"trusted";
    }

    v58 = v15;
    v59 = 2114;
    v60 = v11;
    v61 = 2114;
    v62 = v9;
    v63 = 2114;
    v64 = v10;
    v16 = "Received %{public}@ open application request to %{public}@ for %{public}@ from %{public}@.";
    v17 = v12;
    v18 = 42;
  }

  else
  {
    if (!v13)
    {
      goto LABEL_11;
    }

    v19 = [v7 isTrusted];
    v20 = @"untrusted";
    *buf = 138543874;
    if (v19)
    {
      v20 = @"trusted";
    }

    v58 = v20;
    v59 = 2114;
    v60 = v9;
    v61 = 2114;
    v62 = v10;
    v16 = "Received %{public}@ open application request for %{public}@ from %{public}@.";
    v17 = v12;
    v18 = 32;
  }

  _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
LABEL_11:

  v21 = [v7 isTrusted];
  v22 = [MEMORY[0x277CBEB38] dictionary];
  v23 = [v7 options];
  v24 = [v23 dictionary];

  if (v24)
  {
    v25 = [v7 options];
    v26 = [v25 dictionary];
    [v22 addEntriesFromDictionary:v26];
  }

  SBSConvertOpenApplicationSBSKeysToFBSKeysIfNecessary();
  v27 = [v10 hasEntitlement:@"com.apple.LaunchApp"];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (v27 && has_internal_diagnostics)
  {
    v29 = [v22 bs_safeArrayForKey:*MEMORY[0x277D0AC10]];
    if (v29)
    {
      v30 = [(SBMainWorkspace *)self _parseShellArguments:v29];
      [v22 addEntriesFromDictionary:v30];
      if (!v9)
      {
        v31 = [v22 bs_safeArrayForKey:*MEMORY[0x277D670F0]];
        v9 = [v31 firstObject];
      }
    }
  }

  v32 = +[SBApplicationController sharedInstanceIfExists];
  v33 = [v32 applicationWithBundleIdentifier:v9];

  if (v33)
  {
    v34 = [v33 info];
    v35 = [v34 shouldLaunchSuspendedAlways];

    if (v35)
    {
      [v22 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0ABF0]];
      v21 = 1;
    }
  }

  if ([v9 isEqualToString:{@"com.apple.DataActivation", v11}])
  {
    [v22 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0ABF0]];
    v21 = 1;
  }

  v36 = self;
  v37 = +[SBSetupManager sharedInstance];
  if ([v37 isInSetupMode])
  {
    v38 = [v9 isEqualToString:@"com.apple.shortcuts"];

    v39 = *MEMORY[0x277D0ABF0];
    if (v38)
    {
      [v22 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0ABF0]];
      v21 = 1;
    }
  }

  else
  {

    v39 = *MEMORY[0x277D0ABF0];
  }

  v40 = [v22 bs_safeNumberForKey:v39];
  v41 = [v40 BOOLValue];

  v42 = [v22 bs_safeNumberForKey:*MEMORY[0x277D66FE0]];
  if ([v42 BOOLValue])
  {
    v43 = [v9 isEqualToString:@"com.apple.InCallService"];
  }

  else
  {
    v43 = 0;
  }

  if (v41 && (v43 & 1) == 0)
  {
    [v22 removeObjectForKey:*MEMORY[0x277D0AC70]];
    [v22 removeObjectForKey:*MEMORY[0x277D0AC58]];
  }

  v44 = [v22 bs_safeNumberForKey:*MEMORY[0x277D66E60]];
  v45 = [v44 BOOLValue];

  if (v45)
  {
    v46 = [MEMORY[0x277CBEB38] dictionary];
    v47 = *MEMORY[0x277D0AC38];
    v48 = [v22 bs_safeDictionaryForKey:*MEMORY[0x277D0AC38]];
    if (v48)
    {
      [v46 addEntriesFromDictionary:v48];
    }

    [v46 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D76680]];
    [v22 setObject:v46 forKey:v47];
  }

  v49 = [v10 bundleIdentifier];
  v50 = [v49 isEqualToString:@"com.apple.Spotlight"];

  if (v50)
  {
    [v22 setObject:*MEMORY[0x277D67080] forKey:*MEMORY[0x277D0AC28]];
  }

  v51 = objc_alloc_init(SBActivationSettings);
  [(SBActivationSettings *)v51 setFlag:BSSettingFlagForBool() forActivationSetting:52];
  v52 = [MEMORY[0x277D0AB08] currentOpenApplicationInstance];
  if (v52)
  {
    [(SBActivationSettings *)v51 setObject:v52 forActivationSetting:51];
  }

  v53 = [v10 handle];
  if (v21)
  {
    v54 = v56;
    [(SBMainWorkspace *)v36 _handleTrustedOpenRequestForApplication:v9 options:v22 activationSettings:v51 origin:v53 withResult:v56];
  }

  else
  {
    v54 = v56;
    [(SBMainWorkspace *)v36 _handleUntrustedOpenRequestForApplication:v9 options:v22 activationSettings:v51 origin:v53 withResult:v56];
  }
}

- (id)_parseShellArguments:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if ([v3 count] != 1)
  {
    v6 = 0;
    v22 = *MEMORY[0x277D67100];
    v23 = *MEMORY[0x277D670D0];
    v24 = *MEMORY[0x277D670F0];
    v7 = @"-grid";
    v8 = @"-arrangement";
    v9 = *MEMORY[0x277D67140];
    v25 = *MEMORY[0x277D67148];
    do
    {
      v10 = [v3 objectAtIndex:{v6, v22}];
      v11 = [v10 lowercaseString];

      v12 = v6 + 1;
      v13 = [v3 objectAtIndex:v6 + 1];
      if ([v11 isEqualToString:v7])
      {
        v14 = v4;
        v15 = v13;
        v16 = v25;
      }

      else if ([v11 isEqualToString:v8])
      {
        v14 = v4;
        v15 = v13;
        v16 = v9;
      }

      else
      {
        if ([v11 isEqualToString:@"-launch"])
        {
          v17 = [v13 componentsSeparatedByString:{@", "}];
          [v17 bs_compactMap:&__block_literal_global_536];
          v18 = v7;
          v19 = v9;
          v21 = v20 = v8;

          [v4 setObject:v21 forKeyedSubscript:v24];
          v8 = v20;
          v9 = v19;
          v7 = v18;
          goto LABEL_11;
        }

        if (![v11 isEqualToString:@"-display"])
        {
          if ([v11 isEqualToString:@"-classicmode"])
          {
            [v4 setObject:v13 forKeyedSubscript:v22];
            v12 = v6 + 2;
          }

          goto LABEL_11;
        }

        v14 = v4;
        v15 = v13;
        v16 = v23;
      }

      [v14 setObject:v15 forKeyedSubscript:v16];
LABEL_11:

      v6 = v12 + 1;
    }

    while (v12 + 1 < ([v3 count] - 1));
  }

  return v4;
}

id __40__SBMainWorkspace__parseShellArguments___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA900];
  v3 = a2;
  v4 = [v2 whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

- (void)_updateActivationSettings:(id)a3 forRequestWithOptions:(id)a4 clientProcess:(id)a5 application:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    [SBMainWorkspace _updateActivationSettings:a2 forRequestWithOptions:? clientProcess:? application:?];
  }

  v54 = v13;
  v55 = v12;
  [v10 setFlag:1 forActivationSetting:50];
  v14 = [v11 bs_safeObjectForKey:*MEMORY[0x277D0ABF0] ofType:objc_opt_class()];
  v52 = [v14 BOOLValue];

  v15 = [v11 bs_safeObjectForKey:*MEMORY[0x277D0AC28] ofType:objc_opt_class()];
  [*MEMORY[0x277D77FC8] isEqual:v15];
  [v10 setFlag:BSSettingFlagIfYes() forActivationSetting:42];
  [*MEMORY[0x277D77FE8] isEqual:v15];
  [v10 setFlag:BSSettingFlagIfYes() forActivationSetting:43];
  [*MEMORY[0x277CD9308] isEqual:v15];
  [v10 setFlag:BSSettingFlagIfYes() forActivationSetting:54];
  [*MEMORY[0x277CE2190] isEqual:v15];
  [v10 setFlag:BSSettingFlagIfYes() forActivationSetting:55];
  [*MEMORY[0x277D67080] isEqual:v15];
  [v10 setFlag:BSSettingFlagIfYes() forActivationSetting:47];
  [*MEMORY[0x277D67078] isEqual:v15];
  [v10 setFlag:BSSettingFlagIfYes() forActivationSetting:53];
  [*MEMORY[0x277D67088] isEqual:v15];
  [v10 setFlag:BSSettingFlagIfYes() forActivationSetting:63];
  [*MEMORY[0x277D67060] isEqual:v15];
  [v10 setFlag:BSSettingFlagIfYes() forActivationSetting:64];
  [*MEMORY[0x277D67068] isEqual:v15];
  [v10 setFlag:BSSettingFlagIfYes() forActivationSetting:65];
  [*MEMORY[0x277D67070] isEqual:v15];
  [v10 setFlag:BSSettingFlagIfYes() forActivationSetting:48];
  [*MEMORY[0x277CFC8B0] isEqual:v15];
  [v10 setFlag:BSSettingFlagIfYes() forActivationSetting:45];
  v53 = v15;
  [*MEMORY[0x277CEBDF0] isEqual:v15];
  [v10 setFlag:BSSettingFlagIfYes() forActivationSetting:59];
  v56 = [v11 bs_safeObjectForKey:*MEMORY[0x277D67138] ofType:objc_opt_class()];
  if (v56)
  {
    v16 = 0;
    v17 = 1;
    while (1)
    {
      v18 = v17;
      v19 = [(SBPIPControllerCoordinator *)self->_pipCoordinator controllerForType:v16];
      v20 = [v19 hostedAppSceneHandles];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __93__SBMainWorkspace__updateActivationSettings_forRequestWithOptions_clientProcess_application___block_invoke;
      v58[3] = &unk_2783A9FA0;
      v59 = v56;
      v21 = [v20 bs_containsObjectPassingTest:v58];

      if (v21)
      {
        break;
      }

      v17 = 0;
      v16 = 1;
      if ((v18 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    [v10 setFlag:1 forActivationSetting:57];
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
    [v10 setObject:v22 forActivationSetting:58];
  }

LABEL_8:
  if ((v52 & 1) == 0 && +[SBAssistantController isVisible])
  {
    v23 = +[SBAssistantController defaultActivationSettings];
    [v10 applyActivationSettings:v23];
  }

  v24 = [v11 bs_safeDictionaryForKey:*MEMORY[0x277D0AC38]];
  v25 = [v24 mutableCopy];

  v26 = +[SBApplicationController sharedInstanceIfExists];
  v27 = [v26 applicationWithPid:{objc_msgSend(v55, "pid")}];
  v28 = [v27 bundleIdentifier];

  v29 = MEMORY[0x277D76690];
  if (!v28)
  {
    v28 = [v25 bs_safeStringForKey:*MEMORY[0x277D76690]];
  }

  if ([v10 BOOLForActivationSetting:52])
  {
    [v10 setFlag:BSSettingFlagForBool() forActivationSetting:3];
    v30 = [v11 bs_safeStringForKey:*MEMORY[0x277D0AC18]];
    [v10 setObject:v30 forActivationSetting:17];

    v31 = [v11 bs_safeObjectForKey:*MEMORY[0x277D0ABF8] ofType:objc_opt_class()];
    [v10 setObject:v31 forActivationSetting:21];

    v32 = [v11 bs_safeDictionaryForKey:*MEMORY[0x277D0AC00]];
    [v10 setObject:v32 forActivationSetting:22];

    v33 = *v29;
    v34 = [v25 objectForKey:*v29];

    if (v34)
    {
      v35 = [v25 bs_safeStringForKey:v33];

      v28 = v35;
    }

    v36 = [v11 bs_safeNumberForKey:*MEMORY[0x277D0AC20]];
    v37 = [v36 integerValue];

    if (v37)
    {
      if (v52)
      {
        if (v37 >= 5)
        {
          v38 = 2;
        }

        else
        {
          v38 = qword_21F8A54E0[v37 - 1];
        }
      }

      else if (v37 == 4)
      {
        v38 = 4;
      }

      else
      {
        v38 = 3;
      }

      v39 = [MEMORY[0x277CCABB0] numberWithInteger:v38];
      [v10 setObject:v39 forActivationSetting:30];
    }

    v40 = [v11 bs_safeStringForKey:*MEMORY[0x277D0AC48]];
    [v10 setObject:v40 forActivationSetting:33];
  }

  v41 = [v10 objectForActivationSetting:30];

  if (!v41)
  {
    v42 = [v54 bundleIdentifier];
    v43 = [v42 isEqualToString:@"com.apple.InCallService"];

    if (v43)
    {
      [v10 setObject:&unk_28336FC80 forActivationSetting:30];
    }
  }

  [v25 removeObjectForKey:*v29];
  v44 = [v11 bs_safeURLForKey:*MEMORY[0x277D0AC40]];
  [v10 setObject:v44 forActivationSetting:5];

  [v10 setObject:v25 forActivationSetting:16];
  v45 = [v11 bs_safeDictionaryForKey:*MEMORY[0x277D0AC30]];
  [v10 setObject:v45 forActivationSetting:15];

  v46 = [v11 bs_safeNumberForKey:*MEMORY[0x277D67150]];
  [v46 BOOLValue];
  [v10 setFlag:BSSettingFlagIfYes() forActivationSetting:8];

  [v10 setObject:v28 forActivationSetting:14];
  v47 = [v11 bs_safeObjectForKey:*MEMORY[0x277D0AC80] ofType:objc_opt_class()];

  if (v47)
  {
    [v10 setObject:MEMORY[0x277CBEC38] forActivationSetting:31];
  }

  v48 = [v11 objectForKey:*MEMORY[0x277D77828]];
  [v10 setObject:v48 forActivationSetting:32];

  v49 = [v11 objectForKey:*MEMORY[0x277D77840]];
  [v10 setObject:v49 forActivationSetting:34];

  v50 = [v54 bundleIdentifier];
  v51 = [(SBMainWorkspace *)self _canAppWithBundleIdentifier:v50 requestMovingContentToSceneOpenApplicationOptions:v11];

  if (v51)
  {
    [v10 setFlag:BSSettingFlagForBool() forActivationSetting:67];
    [v10 setFlag:BSSettingFlagForBool() forActivationSetting:68];
    [v10 setFlag:BSSettingFlagForBool() forActivationSetting:31];
  }
}

uint64_t __93__SBMainWorkspace__updateActivationSettings_forRequestWithOptions_clientProcess_application___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sceneIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)_canAppWithBundleIdentifier:(id)a3 requestMovingContentToSceneOpenApplicationOptions:(id)a4
{
  v5 = *MEMORY[0x277D67128];
  v6 = a4;
  v7 = a3;
  v8 = [v6 bs_safeNumberForKey:v5];
  v9 = [v8 BOOLValue];

  v10 = [v6 bs_safeStringForKey:*MEMORY[0x277D67120]];
  v11 = [v10 isEqualToString:*MEMORY[0x277D67090]];

  LOBYTE(v10) = [v7 isEqualToString:@"com.apple.mobilemail"];
  v12 = [v6 bs_safeNumberForKey:*MEMORY[0x277D0ABF0]];

  LOBYTE(v6) = [v12 BOOLValue];
  return v9 & v10 & v11 & v6;
}

- (id)_validateRequestToOpenApplication:(id)a3 options:(id)a4 origin:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!a6)
  {
    [SBMainWorkspace _validateRequestToOpenApplication:options:origin:error:];
  }

  *a6 = 0;
  v64 = +[SBApplicationController sharedInstanceIfExists];
  v13 = [v64 applicationWithBundleIdentifier:v10];
  v14 = [v13 info];
  if (v10 && !v13)
  {
    FBSOpenApplicationErrorCreate();
    *a6 = v15 = 0;
    goto LABEL_47;
  }

  v16 = [v11 bs_safeObjectForKey:*MEMORY[0x277D0ABF0] ofType:objc_opt_class()];
  v55 = [v16 BOOLValue];

  v17 = [v11 bs_safeObjectForKey:*MEMORY[0x277D0ABE0] ofType:objc_opt_class()];
  v62 = v17;
  v63 = self;
  if (v17)
  {
    v18 = [v17 objectForKey:*MEMORY[0x277D0AB30]];
    v54 = v18 == 0;
  }

  else
  {
    v54 = 1;
  }

  v19 = [v11 bs_safeURLForKey:*MEMORY[0x277D0AC40]];
  v20 = [v11 objectForKey:*MEMORY[0x277D0AC08]];
  v21 = [v20 bs_safeObjectForKey:*MEMORY[0x277CF0560] ofType:objc_opt_class()];
  v58 = [v21 BOOLValue];

  v60 = v20;
  v22 = [v20 bs_safeObjectForKey:*MEMORY[0x277CF0558] ofType:objc_opt_class()];
  v57 = [v22 BOOLValue];

  v23 = +[SBSyncController sharedInstance];
  v24 = +[SBSetupManager sharedInstance];
  v61 = v19;
  v59 = v24;
  if ([v24 isInSetupMode])
  {
    v25 = [v24 updateInSetupMode];
    v26 = [(SBMainWorkspace *)v63 _isLaunchingApplicationAfterSetupForRequestWithBundleIdentifier:v10 options:v11 origin:v12];
    if (v25)
    {
      v56 = v11;
      v27 = v10;
      v28 = v13;
      v29 = v12;
      v30 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    v26 = [(SBMainWorkspace *)v63 _isLaunchingApplicationAfterSetupForRequestWithBundleIdentifier:v10 options:v11 origin:v12];
  }

  if (!v26)
  {
    v56 = v11;
    v27 = v10;
    v28 = v13;
    v29 = v12;
    +[SBApplicationController sharedInstanceIfExists];
    v31 = a6;
    v33 = v32 = v14;
    [v33 setupApplication];
    v35 = v34 = v23;
    v36 = [v35 processState];
    v37 = [v36 isForeground];

    v23 = v34;
    v14 = v32;
    a6 = v31;
    v30 = 0;
    if (!v37)
    {
LABEL_17:
      v12 = v29;
      v13 = v28;
      v10 = v27;
      v11 = v56;
      if (v30)
      {
LABEL_20:
        v40 = v14;
        v41 = [v11 bs_safeObjectForKey:*MEMORY[0x277D66FE0] ofType:objc_opt_class()];
        v42 = [v41 BOOLValue];

        if (v42 && ([v12 hasEntitlement:@"com.apple.springboard.inCallPresentation"] & 1) == 0 && (+[SBDefaults localDefaults](SBDefaults, "localDefaults"), v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "inCallPresentationDefaults"), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "skipPromptUnlockEntitlementCheck"), v44, v43, (v45 & 1) == 0) || (objc_msgSend(v11, "bs_safeObjectForKey:ofType:", *MEMORY[0x277D670D0], objc_opt_class()), v46 = objc_claimAutoreleasedReturnValue(), v46, (objc_msgSend(v12, "hasEntitlement:", @"com.apple.springboard.display-lookup") & 1) == 0) && (v48 = objc_msgSend(v12, "hasEntitlement:", @"com.apple.springboard.testautomation"), v46) && (v48 & 1) == 0)
        {
          FBSOpenApplicationErrorCreate();
          *a6 = v15 = 0;
          v14 = v40;
          goto LABEL_44;
        }

        v14 = v40;
        if (((v58 | v57) & 1) != 0 || [v13 isAnyTerminationAssertionInEffect])
        {
          v47 = v61;
          if ([v13 isAnyTerminationAssertionInEffect])
          {
            goto LABEL_45;
          }

          v49 = v55;
          if (v61)
          {
            v49 = 1;
          }

          if ((v49 & 1) != 0 || (v58 & v57) != 0)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v47 = v61;
          if (([v23 isRestoring] & 1) != 0 || objc_msgSend(v23, "isResetting") || (__SBWFinishedBoot & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        if (!v13)
        {
          [v14 unauthoritativeTrustState];
LABEL_55:
          v15 = v13;
          goto LABEL_46;
        }

        if (![SBApp isBundleIdentifierRestrictionDisabled:v10] && (v54 || (objc_msgSend(v14, "supportsFetchBackgroundMode") & 1) != 0 || (objc_msgSend(v13, "isSystemApplication") & 1) != 0))
        {
          v51 = [v14 unauthoritativeTrustState];
          if (v51 == 8)
          {
            goto LABEL_55;
          }

          if ((v55 & 1) == 0)
          {
            v52 = [(SBMainWorkspace *)v63 _alertItemForPreventingLaunchOfApp:v13 fromTrustState:v51];
            if (v52)
            {
              v53 = +[SBAlertItemsController sharedInstance];
              [v53 activateAlertItem:v52];
            }
          }
        }

LABEL_45:
        FBSOpenApplicationErrorCreate();
        *a6 = v15 = 0;
        goto LABEL_46;
      }

      goto LABEL_18;
    }

LABEL_15:
    if (v14 && ([v14 isLaunchableDuringSetup] & 1) == 0)
    {
      FBSOpenApplicationErrorCreate();
      *a6 = v15 = 0;
      v12 = v29;
      v13 = v28;
      v10 = v27;
      v11 = v56;
      goto LABEL_44;
    }

    goto LABEL_17;
  }

LABEL_18:
  if (![v13 isSetup])
  {
    goto LABEL_20;
  }

  v38 = [v12 bundleIdentifier];
  v39 = [v38 isEqualToString:@"com.apple.purplebuddy"];

  if (v39)
  {
    goto LABEL_20;
  }

  FBSOpenApplicationErrorCreate();
  *a6 = v15 = 0;
LABEL_44:
  v47 = v61;
LABEL_46:

LABEL_47:

  return v15;
}

- (void)_handleOpenApplicationRequest:(id)a3 options:(id)a4 activationSettings:(id)a5 origin:(id)a6 withResult:(id)a7
{
  v443 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  BSDispatchQueueAssertMain();
  if (!v15)
  {
    [SBMainWorkspace _handleOpenApplicationRequest:a2 options:? activationSettings:? origin:? withResult:?];
  }

  v18 = +[SBApplicationController sharedInstanceIfExists];
  v429[0] = MEMORY[0x277D85DD0];
  v429[1] = 3221225472;
  v429[2] = __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke;
  v429[3] = &unk_2783A9FC8;
  v19 = v17;
  v430 = v19;
  v20 = MEMORY[0x223D6F7F0](v429);
  v428 = 0;
  v21 = [(SBMainWorkspace *)self _validateRequestToOpenApplication:v13 options:v14 origin:v16 error:&v428];
  v22 = v428;
  v23 = v22;
  if (!v13 || v21)
  {
    v343 = v19;
    v344 = v22;
    v346 = v21;
    v427 = 0;
    v348 = objc_opt_new();
    v24 = [v14 bs_safeObjectForKey:*MEMORY[0x277D0ABF0] ofType:objc_opt_class()];
    v338 = [v24 BOOLValue];

    v426 = 0;
    v25 = *MEMORY[0x277D67120];
    v26 = [v14 bs_safeObjectForKey:*MEMORY[0x277D67120] ofType:objc_opt_class()];
    v342 = v14;
    v340 = v26;
    if (v26 && (SBValidateLayoutRoleString(v26, &v427, &v426) & 1) == 0)
    {
      v341 = FBSOpenApplicationErrorCreate();
      v20[2](v20);
      v30 = 0;
      v32 = 0;
      v345 = 0;
      v349 = 0;
      v23 = v344;
      v21 = v346;
LABEL_279:

      v14 = v342;
      goto LABEL_280;
    }

    v425[2] = 0;
    v425[1] = 0;
    v332 = self;
    v21 = v346;
    v329 = v338 ^ 1;
    v27 = [SBMainWorkspace _targetWindowSceneForApplication:"_targetWindowSceneForApplication:options:settings:requireForeground:targetDisplayConfiguration:error:" options:v346 settings:v14 requireForeground:v15 targetDisplayConfiguration:? error:?];
    v341 = 0;
    v28 = 0;
    v339 = v27;
    if (!v27 && v28)
    {
      v29 = v28;
      (v20[2])(v20, v28);
      v30 = 0;
      v337 = 0;
      v345 = 0;
      v349 = 0;
      v23 = v344;
LABEL_278:

      v32 = v337;
      goto LABEL_279;
    }

    v328 = v28;
    v335 = [v14 bs_safeStringForKey:*MEMORY[0x277D67148]];
    v333 = [v14 bs_safeStringForKey:*MEMORY[0x277D67140]];
    v336 = [v14 bs_safeArrayForKey:*MEMORY[0x277D670F0]];
    if ([v16 hasEntitlement:@"com.apple.springboard.testautomation"])
    {
      LOBYTE(v31) = 0;
    }

    else
    {
      v31 = [v16 hasEntitlement:@"com.apple.LaunchApp"] ^ 1;
    }

    v33 = 0;
    v347 = v18;
    v334 = v20;
    if (v335 | v333 && v336)
    {
      v349 = 0;
      if ((v31 & 1) == 0)
      {
        v315 = v13;
        v34 = [[SBWindowingLayoutFormatAdapter alloc] initWithWindowScene:v27];
        v331 = v34;
        if (v335)
        {
          v425[0] = 0;
          v35 = v425;
        }

        else
        {
          if (!v333)
          {
LABEL_24:
            v325 = v16;
            v422 = 0u;
            v423 = 0u;
            v420 = 0u;
            v421 = 0u;
            v37 = v336;
            v38 = [v37 countByEnumeratingWithState:&v420 objects:v442 count:16];
            if (!v38)
            {
              v349 = 0;
              goto LABEL_38;
            }

            v39 = v38;
            v349 = 0;
            v40 = *v421;
LABEL_26:
            v41 = 0;
            while (1)
            {
              if (*v421 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = [v18 applicationWithBundleIdentifier:*(*(&v420 + 1) + 8 * v41)];
              if (!v42)
              {
                break;
              }

              v43 = v42;
              if (v349)
              {
                [v348 addObject:v42];
              }

              else
              {
                v349 = v42;
                v427 = 1;
              }

              ++v41;
              v18 = v347;
              if (v39 == v41)
              {
                v39 = [v37 countByEnumeratingWithState:&v420 objects:v442 count:16];
                if (!v39)
                {
LABEL_38:

                  v13 = v315;
                  v16 = v325;
                  v33 = v331;
                  v20 = v334;
                  goto LABEL_39;
                }

                goto LABEL_26;
              }
            }

            v44 = FBSOpenApplicationErrorCreate();
            (v334[2])(v334, v44);

            v30 = 0;
            v337 = 0;
            v345 = 0;
            v13 = v315;
            v16 = v325;
            goto LABEL_43;
          }

          v424 = 0;
          v35 = &v424;
        }

        [SBWindowingLayoutFormatAdapter parse:v34 argumentType:"parse:argumentType:bundleIdentifiers:error:" bundleIdentifiers:? error:?];
        v36 = *v35;
        if (v36)
        {
          v37 = v36;
          (v334[2])(v334, v36);
          v30 = 0;
          v337 = 0;
          v345 = 0;
          v349 = 0;
          v13 = v315;
          v23 = v344;
LABEL_277:

          v29 = v328;
          v20 = v334;
          goto LABEL_278;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v349 = 0;
    }

LABEL_39:
    v331 = v33;
    v45 = [v27 switcherController];
    v46 = [v45 windowManagementContext];
    v47 = [v46 baseStyle];

    if (SBLayoutRoleIsValid(v427) && v427 != 1 && !v47)
    {
      v48 = FBSOpenApplicationErrorCreate();
      v49 = v20;
      v37 = v48;
      (v49[2])(v49, v48);
      v30 = 0;
      v337 = 0;
      v345 = 0;
LABEL_43:
      v18 = v347;
      v23 = v344;
      v21 = v346;
      goto LABEL_277;
    }

    v50 = [v339 switcherController];
    v51 = [v50 windowManagementContext];
    v52 = [v51 isChamoisOrFlexibleWindowing];

    v53 = [v14 bs_safeObjectForKey:*MEMORY[0x277D670E0] ofType:objc_opt_class()];
    v298 = [v53 BOOLValue];

    v54 = !SBLayoutRoleIsValid(v427);
    if (v427 == 1)
    {
      v54 = 1;
    }

    v299 = v54;
    if (v54)
    {
      v55 = v346;

      v56 = 0;
      v337 = 0;
      v345 = 0;
      v301 = 0;
      v302 = 0;
      v303 = 0;
      v349 = v55;
    }

    else if (v427 == 2)
    {
      v345 = v346;
      v56 = 0;
      v337 = 0;
      v302 = 0;
      v303 = v427;
      v301 = 0;
    }

    else
    {
      if (v427 == 3)
      {
        v337 = v346;
        v56 = 0;
        v345 = 0;
        v301 = 0;
        v302 = v427;
      }

      else
      {
        if (v427 == 4)
        {
          v56 = v346;
          v337 = 0;
          v345 = 0;
          v301 = v427;
        }

        else
        {
          v56 = 0;
          v337 = 0;
          v345 = 0;
          v301 = 0;
        }

        v302 = 0;
      }

      v303 = 0;
    }

    v319 = [v14 bs_safeObjectForKey:*MEMORY[0x277D670B8] ofType:objc_opt_class()];
    if ([v319 count] >= 1)
    {
      v18 = v347;
      if (v47)
      {
        v418 = 0u;
        v419 = 0u;
        v416 = 0u;
        v417 = 0u;
        v57 = v319;
        v58 = [v57 countByEnumeratingWithState:&v416 objects:v441 count:16];
        if (!v58)
        {
          goto LABEL_118;
        }

        v59 = *v417;
        v297 = v57;
        v322 = v15;
        v326 = v16;
        v291 = *v417;
        while (1)
        {
          v60 = 0;
          v293 = v58;
          do
          {
            if (*v417 != v59)
            {
              v61 = v60;
              objc_enumerationMutation(v57);
              v60 = v61;
            }

            v295 = v60;
            v312 = *(*(&v416 + 1) + 8 * v60);
            v62 = [v57 bs_safeArrayForKey:?];
            if (!v62)
            {
              v63 = [v57 bs_safeDictionaryForKey:v312];
              v64 = v63;
              if (v63)
              {
                v440 = v63;
                v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v440 count:1];
              }

              else
              {
                v62 = 0;
              }

              v57 = v297;
            }

            v414 = 0u;
            v415 = 0u;
            v412 = 0u;
            v413 = 0u;
            obj = v62;
            v307 = [obj countByEnumeratingWithState:&v412 objects:v439 count:16];
            if (v307)
            {
              v310 = *v413;
              do
              {
                v65 = 0;
                do
                {
                  if (*v413 != v310)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v66 = *(*(&v412 + 1) + 8 * v65);
                  v67 = [v66 bs_safeObjectForKey:v25 ofType:objc_opt_class()];
                  *buf = 0;
                  v411 = 0;
                  v15 = v322;
                  if ((SBValidateLayoutRoleString(v67, buf, &v411) & 1) == 0 || *buf == 1 && v349 && (v52 & 1) == 0 || *buf == 2 && v345 && (v52 & 1) == 0 || *buf == 3 && v337 && (v52 & 1) == 0 || *buf == 4 && v56 && (v52 & 1) == 0)
                  {
                    v85 = FBSOpenApplicationErrorCreate();
                    (v334[2])(v334, v85);

                    v16 = v326;
                    v18 = v347;
                    v23 = v344;
                    v21 = v346;
LABEL_143:

                    goto LABEL_275;
                  }

                  v320 = v56;
                  v405[0] = MEMORY[0x277D85DD0];
                  v405[1] = 3221225472;
                  v405[2] = __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_2;
                  v405[3] = &unk_2783A9FF0;
                  v406 = v347;
                  v410 = v334;
                  v407 = v332;
                  v408 = v66;
                  v409 = v326;
                  v68 = MEMORY[0x223D6F7F0](v405);
                  v69 = v68;
                  switch(*buf)
                  {
                    case 1:
                      v70 = (*(v68 + 16))(v68, v312);
                      if (!v70)
                      {
                        goto LABEL_103;
                      }

                      v71 = v70;
                      if (v349)
                      {
                        [v348 addObject:v70];
                      }

                      else
                      {
                        v349 = v70;
                      }

                      if (!v426)
                      {
                        goto LABEL_108;
                      }

                      goto LABEL_109;
                    case 2:
                      v72 = (*(v68 + 16))(v68, v312);
                      if (!v72)
                      {
                        goto LABEL_103;
                      }

                      v71 = v72;
                      if (v345)
                      {
                        [v348 addObject:v72];
                      }

                      else
                      {
                        v345 = v72;
                        v303 = *buf;
                      }

LABEL_108:
                      v426 = v411;
LABEL_109:

                      break;
                    case 3:
                      v73 = (*(v68 + 16))(v68, v312);
                      if (!v73)
                      {
                        goto LABEL_103;
                      }

                      v71 = v73;
                      if (!v52)
                      {
                        v71 = v73;

                        v302 = *buf;
                        v337 = v71;
                        goto LABEL_109;
                      }

LABEL_102:
                      [v348 addObject:v71];
                      goto LABEL_109;
                    case 4:
                      v74 = (*(v68 + 16))(v68, v312);
                      if (!v74)
                      {
LABEL_103:
                        v75 = 0;
                        goto LABEL_111;
                      }

                      v71 = v74;
                      if (!v52)
                      {
                        v71 = v74;

                        v301 = *buf;
                        v320 = v71;
                        goto LABEL_109;
                      }

                      goto LABEL_102;
                  }

                  v75 = 1;
LABEL_111:
                  v18 = v347;

                  if (!v75)
                  {
                    v15 = v322;
                    v16 = v326;
                    v23 = v344;
                    v21 = v346;
                    v56 = v320;
                    goto LABEL_143;
                  }

                  ++v65;
                  v56 = v320;
                }

                while (v307 != v65);
                v76 = [obj countByEnumeratingWithState:&v412 objects:v439 count:16];
                v15 = v322;
                v16 = v326;
                v57 = v297;
                v307 = v76;
              }

              while (v76);
            }

            v60 = v295 + 1;
            v59 = v291;
          }

          while (v295 + 1 != v293);
          v58 = [v57 countByEnumeratingWithState:&v416 objects:v441 count:16];
          if (!v58)
          {
LABEL_118:

            goto LABEL_119;
          }
        }
      }

      v83 = FBSOpenApplicationErrorCreate();
      (v334[2])(v334, v83);
      v23 = v344;
      goto LABEL_141;
    }

LABEL_119:
    v77 = [v348 count];
    v78 = v427;
    v314 = 0;
    v23 = v344;
    if (SBLayoutRoleIsValid(v427) && !v349)
    {
      if (v77)
      {
        v79 = 0;
      }

      else
      {
        v79 = v78 == 4;
      }

      v80 = v52 ^ 1;
      if (v79)
      {
        v80 = 1;
      }

      v314 = v80;
    }

    v81 = [v339 switcherController];
    v82 = [v81 layoutContainsRole:1];

    if (v314 && (v82 & 1) == 0 && (v52 & 1) == 0)
    {
      v83 = FBSOpenApplicationErrorCreate();
      (v334[2])(v334, v83);
      v18 = v347;
LABEL_141:
      v21 = v346;
LABEL_276:
      v30 = v56;

      v37 = v319;
      goto LABEL_277;
    }

    v311 = v82;
    v18 = v347;
    if (((v329 | [v15 BOOLForActivationSetting:52]) & 1) == 0)
    {
LABEL_140:
      v83 = FBSOpenApplicationErrorCreate();
      (v334[2])(v334, v83);
      goto LABEL_141;
    }

    v84 = [(SBMainWorkspace *)v332 _canAppWithBundleIdentifier:v13 requestMovingContentToSceneOpenApplicationOptions:v14];
    if (v338)
    {
      if (v345 || v337 || v56)
      {
        if (!v84)
        {
          goto LABEL_140;
        }
      }

      else if ([v348 count] != 0 && !v84)
      {
        goto LABEL_140;
      }
    }

    v86 = [v14 bs_safeObjectForKey:*MEMORY[0x277D0ABE0] ofType:objc_opt_class()];
    v297 = v86;
    if (v86)
    {
      if (v345 || v337 || v56 || (v87 = v86, [v348 count]))
      {
        v88 = FBSOpenApplicationErrorCreate();
        (v334[2])(v334, v88);
        v21 = v346;
        goto LABEL_274;
      }

      v89 = [v87 objectForKey:*MEMORY[0x277CF0548]];
      v267 = v89 != 0;
    }

    else
    {
      v267 = 0;
    }

    v90 = MEMORY[0x277CBEB58];
    v91 = [v14 objectForKey:*MEMORY[0x277D0ABD0]];
    obja = [v90 setWithArray:v91];

    v308 = [v14 bs_safeURLForKey:*MEMORY[0x277D0AC40]];
    v304 = [v14 bs_safeObjectForKey:*MEMORY[0x277D0AC38] ofType:objc_opt_class()];
    v92 = [v14 bs_safeObjectForKey:*MEMORY[0x277D0AC70] ofType:objc_opt_class()];
    v93 = [v92 BOOLValue];

    v94 = [v14 bs_safeObjectForKey:*MEMORY[0x277D0AC58] ofType:objc_opt_class()];
    v273 = [v94 BOOLValue];

    v95 = [v14 bs_safeObjectForKey:*MEMORY[0x277D66FE0] ofType:objc_opt_class()];
    v271 = v93;
    if ([v95 BOOLValue])
    {
      v96 = [v346 bundleIdentifier];
      v316 = [v96 isEqualToString:@"com.apple.InCallService"];
    }

    else
    {
      v316 = 0;
    }

    v97 = [v14 bs_safeObjectForKey:*MEMORY[0x277D66E80] ofType:objc_opt_class()];
    v277 = [v97 BOOLValue];

    v296 = [v14 bs_safeObjectForKey:*MEMORY[0x277D0AC28] ofType:objc_opt_class()];
    v98 = [v14 bs_safeObjectForKey:*MEMORY[0x277D0AC80] ofType:objc_opt_class()];
    v262 = [v98 BOOLValue];

    v289 = [v14 bs_safeObjectForKey:*MEMORY[0x277D77830] ofType:objc_opt_class()];
    v309 = [v14 bs_safeObjectForKey:*MEMORY[0x277D77838] ofType:objc_opt_class()];
    v99 = [v14 bs_safeObjectForKey:*MEMORY[0x277D67118] ofType:objc_opt_class()];
    v258 = [v99 BOOLValue];

    v100 = [v14 bs_safeObjectForKey:*MEMORY[0x277D67108] ofType:objc_opt_class()];
    v259 = [v100 BOOLValue];

    v101 = [v14 bs_safeObjectForKey:*MEMORY[0x277D67110] ofType:objc_opt_class()];
    LOBYTE(v100) = [v101 BOOLValue];

    v102 = [v14 bs_safeObjectForKey:*MEMORY[0x277D670C8] ofType:objc_opt_class()];
    [v102 BOOLValue];

    v103 = [v14 bs_safeObjectForKey:*MEMORY[0x277D67130] ofType:objc_opt_class()];
    v257 = [v103 BOOLValue];

    v104 = [v14 bs_safeObjectForKey:*MEMORY[0x277D243B8] ofType:objc_opt_class()];
    v105 = [v104 BOOLValue];

    if (v100)
    {
      v264 = 1;
    }

    else
    {
      v106 = [v346 info];
      v264 = [v106 alwaysDeliversOpenURLActionsUsingWorkspace];
    }

    v321 = v56;
    v265 = v105;
    if (v308 && !v309)
    {
      v309 = [v308 absoluteString];
    }

    v107 = [v14 objectForKey:*MEMORY[0x277D0AC08]];
    v286 = [v107 bs_safeObjectForKey:*MEMORY[0x277CF0550] ofType:objc_opt_class()];
    v285 = [v107 bs_safeObjectForKey:*MEMORY[0x277CF0570] ofType:objc_opt_class()];
    v284 = [v107 bs_safeObjectForKey:*MEMORY[0x277CF0580] ofType:objc_opt_class()];
    v283 = [v107 bs_safeObjectForKey:*MEMORY[0x277CF0578] ofType:objc_opt_class()];
    v108 = [v107 bs_safeObjectForKey:*MEMORY[0x277CF0560] ofType:objc_opt_class()];
    v109 = [v108 BOOLValue];

    v110 = [v107 bs_safeObjectForKey:*MEMORY[0x277CF0558] ofType:objc_opt_class()];
    v281 = [v110 BOOLValue];

    v111 = [v107 bs_safeObjectForKey:*MEMORY[0x277CF0568] ofType:objc_opt_class()];
    [v111 BOOLValue];

    v112 = [v107 bs_safeObjectForKey:*MEMORY[0x277CF0588] ofType:objc_opt_class()];
    v269 = [v112 BOOLValue];

    v113 = [v107 bs_safeObjectForKey:*MEMORY[0x277D0AB50] ofType:objc_opt_class()];
    [v113 BOOLValue];

    v294 = [v107 bs_safeObjectForKey:*MEMORY[0x277D0AB60] ofType:objc_opt_class()];
    v292 = [v107 bs_safeObjectForKey:*MEMORY[0x277D0AB68] ofType:objc_opt_class()];
    v288 = [v107 bs_safeObjectForKey:*MEMORY[0x277CFA1A0] ofType:objc_opt_class()];
    v290 = v107;
    v287 = [v107 bs_safeObjectForKey:*MEMORY[0x277CFA1B0] ofType:objc_opt_class()];
    v114 = +[SBSetupManager sharedInstance];
    LODWORD(v107) = [v114 isInSetupMode];

    if (v107)
    {
      v115 = [v346 info];
      if (v115)
      {
        v116 = v115;
        v117 = [v346 info];
        v118 = [v117 isLaunchableDuringSetup];

        if ((v118 & 1) == 0)
        {
          v330 = FBSOpenApplicationErrorCreate();
          (v334[2])();
          v18 = v347;
          v21 = v346;
          v23 = v344;
          goto LABEL_200;
        }
      }
    }

    v327 = v16;
    v119 = v15;
    if ((v109 | v281))
    {
      v120 = 0;
    }

    else
    {
      v120 = [v346 isAnyTerminationAssertionInEffect] ^ 1;
    }

    v255 = v120;
    v121 = v120 & v329 | v316;
    v122 = [v14 bs_safeObjectForKey:@"__SBWorkspaceOpenOptionUnlockResult" ofType:objc_opt_class()];
    v276 = [v122 BOOLValue];

    v123 = [v339 uiLockStateProvider];
    v124 = v123;
    if (v123)
    {
      v125 = v123;
    }

    else
    {
      v125 = +[SBLockScreenManager sharedInstance];
    }

    v23 = v344;
    v56 = v321;

    v330 = v125;
    if ((v121 & 1) == 0 || v276 & 1 | (([v125 isUILocked] & 1) == 0))
    {
      if (v277)
      {
        v126 = [v339 homeScreenController];
        v127 = [v126 iconManager];

        v128 = [v127 iconModel];
        v129 = [v128 applicationIconForBundleIdentifier:v13];

        if (v129)
        {
          [v127 scrollToIconListContainingIcon:v129 animate:0];
        }

        v23 = v344;
      }

      if ((v338 & 1) == 0)
      {
        v130 = +[SBIdleTimerGlobalCoordinator sharedInstance];
        [v130 resetIdleTimerForReason:@"OpenApplication"];
      }

      v131 = [v14 bs_safeObjectForKey:*MEMORY[0x277D0ABD8] ofType:objc_opt_class()];
      v132 = [v14 bs_safeStringForKey:*MEMORY[0x277D67100]];
      v133 = v132;
      if (v131)
      {
        v134 = [v131 integerValue];
        v15 = v119;
LABEL_182:
        v16 = v327;
        goto LABEL_183;
      }

      v15 = v119;
      if (!v132)
      {
        v134 = -1;
        goto LABEL_182;
      }

      v397[0] = 0;
      v317 = [[SBApplicationClassicModeLaunchArgumentParser alloc] initWithApplication:v346];
      v134 = [(SBApplicationClassicModeLaunchArgumentParser *)v317 classicModeForLaunchArgument:v133 error:v397];
      v140 = v397[0];
      v16 = v327;
      if (v140)
      {
        (v334[2])(v334, v140);
      }

      else
      {
        v159 = [v346 processState];
        v275 = [v159 isRunning];

        if (!v275 || v134 == [v346 _classicMode])
        {

          v23 = v344;
          v56 = v321;
LABEL_183:

          if (_SBApplicationClassicModeIsClassic(v134) && v345)
          {
            v135 = FBSOpenApplicationErrorCreate();
            (v334[2])(v334, v135);

            v18 = v347;
            v19 = v343;
            v21 = v346;
LABEL_201:
            v88 = obja;
            v139 = v296;
LABEL_273:

LABEL_274:
LABEL_275:
            v83 = v297;
            goto LABEL_276;
          }

          v136 = [v304 objectForKey:*MEMORY[0x277D766A0]];
          v137 = v136;
          if (v136 && v345)
          {
            v138 = FBSOpenApplicationErrorCreate();
            (v334[2])(v334, v138);
            v18 = v347;
            v19 = v343;
            v139 = v296;
LABEL_271:

            v21 = v346;
            goto LABEL_272;
          }

          v278 = v134;
          v274 = v136;
          v272 = [v14 objectForKey:@"SBWorkspaceOpenApplicationResolvedWebClipSceneEntityKey"];
          v145 = v346;
          v146 = 0x27839E000uLL;
          if (!v346)
          {
            goto LABEL_212;
          }

          v147 = [v346 info];
          if ((-[NSObject isAppClip](v147, "isAppClip") & 1) == 0 && ![v346 isWebApplication])
          {
LABEL_211:

            v145 = v346;
            goto LABEL_212;
          }

          v145 = v346;
          if (v272)
          {
LABEL_212:
            v149 = [v14 bs_safeObjectForKey:*MEMORY[0x277D77820] ofType:objc_opt_class()];
            v150 = [v149 BOOLValue];

            v151 = [v145 info];
            v152 = [v151 hasViewServicesEntitlement];

            if (!v152 || !v150)
            {
              v157 = v267;
              v158 = v278;
              goto LABEL_225;
            }

            v153 = [v16 bundleIdentifier];
            v154 = [*(v146 + 3112) sharedInstanceIfExists];
            v155 = [v154 applicationWithBundleIdentifier:v153];

            if (v155)
            {
              v156 = v153;
            }

            else
            {
              v156 = +[SBApplicationSupportServiceRequestContext hostingApplicationBundleIDForPid:](SBApplicationSupportServiceRequestContext, "hostingApplicationBundleIDForPid:", [v16 pid]);

              v161 = [*(v146 + 3112) sharedInstanceIfExists];
              v155 = [v161 applicationWithBundleIdentifier:v156];

              if (!v155)
              {
                v157 = v267;
                v158 = v278;
                goto LABEL_224;
              }
            }

            v158 = [v155 _classicMode];

            v157 = v267;
LABEL_224:

LABEL_225:
            v279 = v158;
            v254 = v299 & [v346 _canLaunchInClassicMode:v158];
            if (v346)
            {
              v162 = [v346 info];
              v163 = [v162 hasHiddenTag];

              v164 = [v346 _classicMode];
              if (v163)
              {
                v165 = v164;
                v166 = [v346 processState];
                v167 = [v166 isRunning];
                v168 = v165 == v158 ? 0 : v167;
                v169 = v15;
                v170 = v13;
                v171 = v168 & v254;

                v79 = v171 == 1;
                v13 = v170;
                v15 = v169;
                if (v79)
                {
                  SBWorkspaceTerminateApplication(v346, 5, 0, @"exit for classic mode relaunch", 0);
                }
              }
            }

            if (v269)
            {
              SBWorkspaceTerminateApplication(v346, 5, 0, @"terminate for debugging launch request", 0);
            }

            if (v157)
            {
              v172 = [SBBackgroundFetchExternalRequest alloc];
              v173 = [v346 info];
              v174 = [(SBBackgroundFetchExternalRequest *)v172 initForAppInfo:v173];

              v268 = v174;
              v175 = [v174 action];
              [obja addObject:v175];
            }

            else
            {
              v268 = 0;
            }

            v23 = v344;
            if (v274)
            {
              v176 = [objc_alloc(MEMORY[0x277D75588]) initWithSessionIdentifier:v274];
              [obja addObject:v176];
            }

            if (v308)
            {
              v177 = [objc_alloc(MEMORY[0x277D757D0]) initWithURL:v308];
              [obja addObject:v177];
            }

            v178 = v346;
            if (v13 || ![v294 length])
            {
              v179 = 0;
            }

            else if ([v292 length])
            {
              v187 = [(SBMainWorkspace *)v332 _handlerForExtensionPoint:v292];
              v179 = v187 != 0;
              if (v187)
              {
                v188 = objc_opt_new();
                [v188 bs_setSafeObject:v288 forKey:*MEMORY[0x277D67048]];
                [v188 bs_setSafeObject:v287 forKey:*MEMORY[0x277D67050]];
                if ([v188 count])
                {
                  v189 = v188;
                }

                else
                {
                  v189 = 0;
                }

                v382[0] = MEMORY[0x277D85DD0];
                v382[1] = 3221225472;
                v382[2] = __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_677;
                v382[3] = &unk_2783AA068;
                v383 = v294;
                v384 = v334;
                [v187 launchExtensionWithBundleID:v383 options:v189 completion:v382];
              }

              v178 = v346;
              v23 = v344;
              v56 = v321;
            }

            else
            {
              v179 = 0;
              v178 = v346;
            }

            if (v178)
            {
              v253 = v52;
              v318 = v13;
              if ([(SBInCallPresentationManager *)v332->_inCallPresentationManager canHandleOpenApplicationRequestForApplication:v178])
              {
                [v178 processState];
                v181 = v180 = v178;
                v182 = [v181 pid];

                v183 = [MEMORY[0x277D0AAC0] sharedInstanceIfExists];
                v184 = [v183 processForPID:v182];

                v185 = [v184 workspace];
                v186 = v180;
                v16 = v327;
                [(SBInCallPresentationManager *)v332->_inCallPresentationManager handleOpenApplicationRequest:v186 clientWorkspace:v185 actions:obja origin:v327 options:v14 withResult:v334];

LABEL_268:
                v18 = v347;
                v19 = v343;
LABEL_269:
                v139 = v296;
                v137 = v274;

LABEL_270:
                v138 = v272;
                goto LABEL_271;
              }

              if (v255)
              {
                v324 = v15;
                v191 = [v339 sceneManager];
                if (!v341)
                {
                  v341 = [v339 _fbsDisplayConfiguration];
                }

                v192 = [v191 displayIdentity];
                v193 = [v14 objectForKey:@"SBWorkspaceOpenApplicationResolvedWebClipSceneEntityKey"];
                v194 = [v346 info];
                v256 = v193;
                if (([v194 isAppClip] & 1) != 0 || objc_msgSend(v346, "isWebApplication"))
                {

                  if (v193)
                  {
                    v195 = v193;
                    goto LABEL_315;
                  }
                }

                else
                {
                }

                if (((v264 | v262) & 1) != 0 && ([v346 info], v212 = objc_claimAutoreleasedReturnValue(), v213 = objc_msgSend(v212, "supportsMultiwindow"), v212, v213))
                {
                  v195 = [SBDeviceApplicationSceneEntity newEntityWithApplication:v346 sceneHandleProvider:v191 displayIdentity:v192];
                }

                else
                {
                  if (v289)
                  {
                    v214 = [SBDeviceApplicationSceneEntity entityWithApplication:v346 scenePersistenceIdentifier:v289 sceneHandleProvider:v191 displayIdentity:v192];
                    v215 = SBLogCommon();
                    if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543618;
                      *&buf[4] = v289;
                      v434 = 2114;
                      v435 = v214;
                      _os_log_impl(&dword_21ED4E000, v215, OS_LOG_TYPE_DEFAULT, "did retrieve a workspace primary app scene entity for the received — %{public}@ — scene persistence identifier: %{public}@", buf, 0x16u);
                    }

LABEL_316:
                    if ([obja count])
                    {
                      [v214 addActions:obja];
                    }

                    [(SBMainWorkspace *)v332 _updateActivationSettings:v324 forRequestWithOptions:v342 clientProcess:v327 application:v346];
                    [v214 applyActivationSettings:v324];
                    if (+[SBCaptureHardwareButton deviceSupportsCaptureButton])
                    {
                      v218 = +[SBCaptureHardwareButton isCaptureFeatureEnabled];
                    }

                    else
                    {
                      v218 = 0;
                    }

                    if ((LCSFeatureEnabled() | v218) & v265)
                    {
                      [v214 setFlag:1 forActivationSetting:36];
                      [v214 setFlag:1 forActivationSetting:35];
                      v219 = +[SBCaptureApplicationCenter sharedInstance];
                      v220 = [v219 shouldInstallLaunchMonitoringForCaptureApplicationBundleIdentfier:v318];

                      if ((v220 & 1) == 0)
                      {
                        [v214 setFlag:1 forActivationSetting:38];
                      }
                    }

                    if (v254)
                    {
                      v221 = [MEMORY[0x277CCABB0] numberWithInteger:v279];
                      [v214 setObject:v221 forActivationSetting:20];
                    }

                    if (v281)
                    {
                      [v214 setObject:0 forActivationSetting:15];
                    }

                    else
                    {
                      [v214 setObject:v286 forProcessSetting:1];
                      [v214 setObject:v285 forProcessSetting:2];
                      [v214 setObject:v284 forProcessSetting:3];
                      [v214 setObject:v283 forProcessSetting:4];
                      [v214 setFlag:BSSettingFlagIfYes() forProcessSetting:6];
                      [v214 setFlag:BSSettingFlagIfYes() forProcessSetting:5];
                      [v214 setFlag:BSSettingFlagIfYes() forProcessSetting:7];
                      [v214 setFlag:BSSettingFlagIsYes() forProcessSetting:8];
                    }

                    v378[0] = MEMORY[0x277D85DD0];
                    v378[1] = 3221225472;
                    v378[2] = __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_681;
                    v378[3] = &unk_2783AA090;
                    v263 = v191;
                    v379 = v263;
                    v261 = v192;
                    v380 = v261;
                    v260 = v334;
                    v381 = v260;
                    v282 = MEMORY[0x223D6F7F0](v378);
                    v266 = objc_opt_new();
                    if (v299)
                    {
                      v300 = v214;
                    }

                    else
                    {
                      v229 = [v214 supportedLayoutRoles];
                      v230 = [v229 containsRole:v427];

                      if ((v230 & 1) == 0)
                      {
                        v231 = [v214 uniqueIdentifier];
                        v232 = SBLayoutRoleDescription(v427);
                        v222 = v231;
                        v233 = FBSOpenApplicationErrorCreate();
                        (v260[2])(v260, v233);
                        v300 = 0;
                        v313 = 0;
                        v280 = 0;
                        v270 = 0;
                        goto LABEL_393;
                      }

                      switch(v427)
                      {
                        case 2:
                          v313 = v214;
                          v300 = 0;
                          goto LABEL_332;
                        case 3:
                          v280 = v214;
                          v300 = 0;
                          v313 = 0;
                          goto LABEL_333;
                        case 4:
                          v240 = v214;
                          v241 = [v240 application];
                          v242 = [v241 _dataStore];

                          v270 = v240;
                          v243 = [v240 uniqueIdentifier];
                          v244 = [v242 sceneStoreForIdentifier:v243 creatingIfNecessary:0];
                          v245 = v244;
                          if (v244)
                          {
                            [v244 setObject:MEMORY[0x277CBEC38] forKey:@"originatedInCenterWindow"];
                          }

                          v300 = 0;
                          v313 = 0;
                          v280 = 0;
LABEL_334:
                          if (v349 && !v300)
                          {
                            v300 = (v282)[2](v282, v349, 1);
                          }

                          if (!v345 || v313 || ((v282)[2](v282, v345, v303), (v313 = objc_claimAutoreleasedReturnValue()) != 0))
                          {
                            if (!v337 || v280 || ((v282)[2](v282, v337, v302), (v280 = objc_claimAutoreleasedReturnValue()) != 0))
                            {
                              if (!v321 || v270 || ((v282)[2](v282, v321, v301), (v270 = objc_claimAutoreleasedReturnValue()) != 0))
                              {
                                v376 = 0u;
                                v377 = 0u;
                                v374 = 0u;
                                v375 = 0u;
                                v222 = v348;
                                v223 = [v222 countByEnumeratingWithState:&v374 objects:v432 count:16];
                                if (v223)
                                {
                                  v224 = v223;
                                  v225 = *v375;
LABEL_348:
                                  v226 = 0;
                                  while (1)
                                  {
                                    if (*v375 != v225)
                                    {
                                      objc_enumerationMutation(v222);
                                    }

                                    v227 = v282[2](v282, *(*(&v374 + 1) + 8 * v226), 2);
                                    if (!v227)
                                    {
                                      goto LABEL_394;
                                    }

                                    v228 = v227;
                                    [v266 addObject:v227];

                                    if (v224 == ++v226)
                                    {
                                      v224 = [v222 countByEnumeratingWithState:&v374 objects:v432 count:16];
                                      if (v224)
                                      {
                                        goto LABEL_348;
                                      }

                                      break;
                                    }
                                  }
                                }

                                if ((v276 & 1) == 0)
                                {
                                  [v330 isUILocked];
                                }

                                [v300 setFlag:BSSettingFlagIfYes() forActivationSetting:29];
                                [v313 setFlag:BSSettingFlagIfYes() forActivationSetting:29];
                                [v280 setFlag:BSSettingFlagIfYes() forActivationSetting:29];
                                [v270 setFlag:BSSettingFlagIfYes() forActivationSetting:29];
                                v372 = 0u;
                                v373 = 0u;
                                v370 = 0u;
                                v371 = 0u;
                                v234 = v266;
                                v235 = [v234 countByEnumeratingWithState:&v370 objects:v431 count:16];
                                if (v235)
                                {
                                  v236 = v235;
                                  v237 = *v371;
                                  do
                                  {
                                    for (i = 0; i != v236; ++i)
                                    {
                                      if (*v371 != v237)
                                      {
                                        objc_enumerationMutation(v234);
                                      }

                                      [*(*(&v370 + 1) + 8 * i) setFlag:BSSettingFlagIfYes() forActivationSetting:29];
                                    }

                                    v236 = [v234 countByEnumeratingWithState:&v370 objects:v431 count:16];
                                  }

                                  while (v236);
                                }

                                v239 = -[SBMainWorkspace _isLaunchingApplicationAfterSetupForRequestWithBundleIdentifier:options:origin:](v332, "_isLaunchingApplicationAfterSetupForRequestWithBundleIdentifier:options:origin:", v318, v342, v327) || [v296 isEqualToString:*MEMORY[0x277CEA5F8]];
                                if (v338)
                                {
                                  v246 = 2;
                                }

                                else
                                {
                                  v247 = [v300 BOOLForActivationSetting:3];
                                  v246 = 2;
                                  if (!v247)
                                  {
                                    v246 = 0;
                                  }
                                }

                                if (v258)
                                {
                                  v246 |= 4uLL;
                                }

                                if (v264)
                                {
                                  v248 = v246 | 0x10;
                                }

                                else
                                {
                                  v248 = v246;
                                }

                                v249 = [(SBMainWorkspace *)v332 createRequestForApplicationActivation:v214 withDisplayConfiguration:v341 options:v248 | [(SBMainWorkspace *)v332 _siriWorkspaceTransitionOptionsFromOpenApplicationOptions:v342]];
                                [v249 setOriginatingProcess:v327];
                                v250 = [v214 uniqueIdentifier];
                                [v327 pid];
                                v251 = BSProcessDescriptionForPID();
                                [v249 setEventLabelWithFormat:@"OpenApplication(%@)ForRequester(%@)", v250, v251];

                                [v249 setShouldPreventDismissalOfUnrelatedTransientOverlays:v257];
                                v232 = [v249 applicationContext];
                                v367[0] = MEMORY[0x277D85DD0];
                                v367[1] = 3221225472;
                                v367[2] = __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_2_689;
                                v367[3] = &unk_2783AA0B8;
                                v369 = v260;
                                v368 = v268;
                                [v232 setResultBlock:v367];
                                v364[0] = MEMORY[0x277D85DD0];
                                v364[1] = 3221225472;
                                v364[2] = __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_3;
                                v364[3] = &__block_descriptor_34_e54_v16__0__SBWorkspaceApplicationSceneTransitionContext_8l;
                                v365 = v239;
                                v366 = v259;
                                [v249 modifyApplicationContext:v364];
                                [(SBMainWorkspace *)v332 _determineSourceForTransitionRequest:v249];
                                v222 = v249;
                                if (![v249 source])
                                {
                                  [v249 setSource:13];
                                }

                                v350[0] = MEMORY[0x277D85DD0];
                                v350[1] = 3221225472;
                                v350[2] = __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_4;
                                v350[3] = &unk_2783AA128;
                                v360 = v314;
                                v361 = v311;
                                v362 = v253;
                                v363 = v298;
                                v358 = v427;
                                v351 = v339;
                                v300 = v300;
                                v352 = v300;
                                v313 = v313;
                                v353 = v313;
                                v280 = v280;
                                v354 = v280;
                                v270 = v270;
                                v355 = v270;
                                v356 = v234;
                                v357 = v331;
                                v359 = v426;
                                [(SBMainWorkspace *)v332 executeTransitionRequest:v249 withValidator:v350];

                                v233 = v369;
LABEL_393:

LABEL_394:
                                goto LABEL_395;
                              }

                              v270 = 0;
                            }

                            else
                            {
                              v280 = 0;
                            }
                          }

                          else
                          {
                            v313 = 0;
                          }

LABEL_395:

                          v13 = v318;
                          v15 = v324;
                          v16 = v327;
                          v18 = v347;
                          v19 = v343;
                          v23 = v344;
                          v56 = v321;
                          goto LABEL_269;
                      }

                      v300 = 0;
                    }

                    v313 = 0;
LABEL_332:
                    v280 = 0;
LABEL_333:
                    v270 = 0;
                    goto LABEL_334;
                  }

                  v195 = [SBDeviceApplicationSceneEntity defaultEntityWithApplication:v346 targetContentIdentifier:v309 sceneHandleProvider:v191 displayIdentity:v192];
                }

LABEL_315:
                v214 = v195;
                goto LABEL_316;
              }

              v196 = FBSOpenApplicationErrorCreate();
              (v334[2])(v334, v196);
            }

            else if ([obja count])
            {
              v190 = [SBApp _mainScene];
              [v190 sendActions:obja];

              (v334[2])(v334, 0);
            }

            else if (!v179)
            {
              __SBWorkspaceActivateSpringBoardWithResult(0, 0, 0, 0, 0, v334, 0);
            }

            v16 = v327;
            goto LABEL_268;
          }

          v323 = v15;
          v148 = v13;
          if (v290)
          {
            v147 = SBLogCommon();
            if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21ED4E000, v147, OS_LOG_TYPE_DEFAULT, "Trying to launch an app clip, but this looks like a launch from Xcode. Falling back to default application launch path", buf, 2u);
            }

            v16 = v327;
            v56 = v321;
            goto LABEL_211;
          }

          v198 = [SBApp webClipService];
          v199 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [MEMORY[0x277D75D70] clipsIncludingWebClips:1 includingAppClips:1];
          v393 = 0u;
          v394 = 0u;
          v395 = 0u;
          v200 = v396 = 0u;
          v201 = [v200 countByEnumeratingWithState:&v393 objects:v438 count:16];
          if (v201)
          {
            v202 = v201;
            v203 = *v394;
            do
            {
              for (j = 0; j != v202; ++j)
              {
                if (*v394 != v203)
                {
                  objc_enumerationMutation(v200);
                }

                v205 = *(*(&v393 + 1) + 8 * j);
                v206 = [v198 targetApplicationBundleIdentifierForWebClip:v205];
                if (v206 && BSEqualStrings())
                {
                  [v199 addObject:v205];
                }
              }

              v202 = [v200 countByEnumeratingWithState:&v393 objects:v438 count:16];
            }

            while (v202);
          }

          v207 = [SBWebClipService bestWebClipForTargetContentIdentifier:v309 fromWebClips:v199];
          if (v207)
          {
            v208 = v207;
            v209 = SBLogCommon();
            if (!os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_308;
            }

            v210 = [v208 pageURL];
            *buf = 138543874;
            *&buf[4] = v148;
            v434 = 2114;
            v435 = v309;
            v436 = 2114;
            v437 = v210;
            v211 = "Best web clip found for app clip '%{public}@' with targetContentIdentifier '%{public}@': '%{public}@'.";
          }

          else
          {
            v208 = [v199 lastObject];
            v209 = SBLogCommon();
            if (!os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_308;
            }

            v210 = [v208 pageURL];
            *buf = 138543874;
            *&buf[4] = v148;
            v434 = 2114;
            v435 = v309;
            v436 = 2114;
            v437 = v210;
            v211 = "Couldn't find a web clip for '%{public}@' with targetContentIdentifier '%{public}@'. Picking: '%{public}@'.";
          }

          _os_log_impl(&dword_21ED4E000, v209, OS_LOG_TYPE_DEFAULT, v211, buf, 0x20u);

LABEL_308:
          v216 = [v208 identifier];
          if (v216)
          {
            v385[0] = MEMORY[0x277D85DD0];
            v385[1] = 3221225472;
            v385[2] = __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_662;
            v385[3] = &unk_2783AA040;
            v386 = v342;
            v387 = v332;
            v388 = v148;
            v389 = v323;
            v390 = v327;
            v392 = v334;
            v391 = v216;
            [v198 prepareToLaunchWebClipWithIdentifier:v391 handler:v385];

            v217 = v386;
          }

          else
          {
            v217 = SBLogCommon();
            if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
            {
              [SBMainWorkspace _handleOpenApplicationRequest:options:activationSettings:origin:withResult:];
            }
          }

          v13 = v148;
          v15 = v323;
          v16 = v327;
          v145 = v346;
          v56 = v321;
          v14 = v342;
          v146 = 0x27839E000;
          if (v216)
          {
            v18 = v347;
            v19 = v343;
            v23 = v344;
            v139 = v296;
            v137 = v274;
            goto LABEL_270;
          }

          goto LABEL_212;
        }

        v252 = [v346 bundleIdentifier];
        v197 = FBSOpenApplicationErrorCreate();
        (v334[2])(v334, v197);

        v23 = v344;
      }

      v18 = v347;
      v19 = v343;
      v21 = v346;
LABEL_200:
      v56 = v321;
      goto LABEL_201;
    }

    v15 = v119;
    v16 = v327;
    if (((v271 | v273) & 1) == 0)
    {
      v404 = 0;
      v141 = [(SBMainWorkspace *)v332 _canImplicitlyUnlockAtLockScreenWhileAuthenticatedFromOrigin:v327 givenOrigin:v296 trustedRequest:1 outReason:&v404];
      v142 = v404;
      v143 = v142;
      if (!v141)
      {

        v160 = FBSOpenApplicationErrorCreate();
        (v334[2])(v334, v160);

        v18 = v347;
        v21 = v346;
        v139 = v296;
        goto LABEL_272;
      }

      v144 = SBLogWorkspace();
      if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v143;
        v434 = 2112;
        v435 = v327;
        _os_log_impl(&dword_21ED4E000, v144, OS_LOG_TYPE_DEFAULT, "Allowing openApplication unlock attempt because we're authenticated and %@: %@", buf, 0x16u);
      }
    }

    v397[1] = MEMORY[0x277D85DD0];
    v397[2] = 3221225472;
    v397[3] = __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_640;
    v397[4] = &unk_2783AA018;
    v398 = v14;
    v399 = v332;
    v400 = v13;
    v401 = v15;
    v402 = v327;
    v403 = v334;
    v139 = v296;
    v21 = v346;
    [SBMainWorkspace _attemptUnlockToApplication:v332 showPasscode:"_attemptUnlockToApplication:showPasscode:origin:givenOrigin:options:completion:" origin:? givenOrigin:? options:? completion:?];

    v18 = v347;
LABEL_272:
    v88 = obja;
    goto LABEL_273;
  }

  (v20[2])(v20, v22);
LABEL_280:
}

uint64_t __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 applicationWithBundleIdentifier:v4];
  if (v5)
  {
    v6 = v5;
    v7 = a1[5];
    v8 = a1[6];
    v9 = a1[7];
    v15 = 0;
    v10 = [v7 _validateRequestToOpenApplication:v4 options:v8 origin:v9 error:&v15];

    v11 = v15;
    if (!v10)
    {
      (*(a1[8] + 16))();
    }
  }

  else
  {
    v12 = a1[8];
    v13 = FBSOpenApplicationErrorCreate();

    (*(v12 + 16))(v12, v13);
    v10 = 0;
  }

  return v10;
}

void __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_640(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) mutableCopy];
    [v4 removeObjectForKey:*MEMORY[0x277D0AC70]];
    [v4 removeObjectForKey:*MEMORY[0x277D0AC58]];
    [v4 setObject:MEMORY[0x277CBEC38] forKey:@"__SBWorkspaceOpenOptionUnlockResult"];
    [*(a1 + 40) _handleOpenApplicationRequest:*(a1 + 48) options:v4 activationSettings:*(a1 + 56) origin:*(a1 + 64) withResult:*(a1 + 72)];
  }

  else
  {
    v3 = *(a1 + 72);
    v4 = FBSOpenApplicationErrorCreate();
    (*(v3 + 16))(v3);
  }
}

void __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_662(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isDeviceApplicationSceneEntity])
  {
    v3 = [*(a1 + 32) mutableCopy];
    [v3 setObject:v5 forKey:@"SBWorkspaceOpenApplicationResolvedWebClipSceneEntityKey"];
    [*(a1 + 40) _handleOpenApplicationRequest:*(a1 + 48) options:v3 activationSettings:*(a1 + 56) origin:*(a1 + 64) withResult:*(a1 + 80)];
  }

  else
  {
    v4 = *(a1 + 80);
    v3 = FBSOpenApplicationErrorCreate();
    (*(v4 + 16))(v4, v3);
  }
}

void __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_677(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SBLogWidgets();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v8;
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_debug_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEBUG, "launchExtensionWithBundleID: %@ completed with success=%d error: %@", &v9, 0x1Cu);
  }

  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v7);
}

id __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_681(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [SBDeviceApplicationSceneEntity newEntityWithApplication:a2 sceneHandleProvider:a1[4] displayIdentity:a1[5]];
  v6 = [v5 supportedLayoutRoles];
  v7 = [v6 containsRole:a3];

  if ((v7 & 1) == 0)
  {
    v8 = a1[6];
    v9 = [v5 uniqueIdentifier];
    v12 = SBLayoutRoleDescription(a3);
    v10 = FBSOpenApplicationErrorCreate();
    (*(v8 + 16))(v8, v10);
  }

  return v5;
}

uint64_t __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_2_689(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 execute];
}

void __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setPrefersCrossfadeTransition:v3];
  [v4 setPrefersCenterZoomTransition:*(a1 + 33)];
}

uint64_t __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 104) == 1)
  {
    v4 = *(a1 + 105);
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 106) == 1)
  {
    v5 = *(a1 + 107) | v4;
  }

  else
  {
    v5 = 0;
  }

  if (SBLayoutRoleIsValid(*(a1 + 88)) || (v5 & 1) != 0)
  {
    v6 = v5 & 1;
    v7 = [*(a1 + 32) switcherController];
    v8 = [v7 entityWithRole:2];
    v22 = [v7 entityWithRole:3];
    v9 = [v7 entityWithRole:4];
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v14 = *(a1 + 106);
    if ((*(a1 + 104) & 1) == 0)
    {
      if ((*(a1 + 106) & 1) != 0 || !v8 || v11 || (+[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity], v11 = objc_claimAutoreleasedReturnValue(), v14 = *(a1 + 106), (*(a1 + 104) & 1) == 0))
      {
        if ((v14 & 1) != 0 || !v22 || v12 || (+[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity], v12 = objc_claimAutoreleasedReturnValue(), v14 = *(a1 + 106), (*(a1 + 104) & 1) == 0))
        {
          if ((v14 & 1) == 0 && v9 && !v13)
          {
            v13 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
            v14 = *(a1 + 106);
          }
        }
      }
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_5;
    v23[3] = &unk_2783AA100;
    v31 = v14;
    v32 = v6;
    v24 = v10;
    v25 = v11;
    v26 = v12;
    v27 = v13;
    v28 = *(a1 + 72);
    v15 = *(a1 + 80);
    v33 = *(a1 + 104);
    v16 = *(a1 + 96);
    v29 = v15;
    v30 = v16;
    v17 = v13;
    v18 = v12;
    v19 = v11;
    v20 = v10;
    [v3 modifyApplicationContext:v23];
  }

  return 1;
}

void __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_5(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 88) == 1)
  {
    v5 = *(a1 + 89);
    v6 = objc_opt_new();
    [v6 bs_safeAddObject:*(a1 + 32)];
    [v6 bs_safeAddObject:*(a1 + 40)];
    [v6 bs_safeAddObject:*(a1 + 48)];
    [v6 bs_safeAddObject:*(a1 + 56)];
    [v6 addObjectsFromArray:*(a1 + 64)];
    [v4 setEntities:v6 withPolicy:v5 centerEntity:0 floatingEntity:0];
    v7 = *(a1 + 72);
    if (v7)
    {
      v18 = a1;
      v8 = [v7 layoutRoleToLayoutAttributes];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = [v4 entities];
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            if ([v14 isApplicationSceneEntity])
            {
              v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "layoutRole")}];
              v16 = [v8 objectForKey:v15];

              if (v16)
              {
                [v4 setRequestedLayoutAttributes:v16 forEntity:v14];
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }

      a1 = v18;
    }

    if ((*(a1 + 90) & 1) != 0 || *(a1 + 89) == 1)
    {
      v17 = *(a1 + 32);
      if (!v17)
      {
        v17 = *(a1 + 40);
        if (!v17)
        {
          v17 = *(a1 + 48);
          if (!v17)
          {
            v17 = *(a1 + 56);
          }
        }
      }

      [v4 _setRequestedFrontmostEntity:v17];
    }
  }

  else
  {
    [v3 setEntity:*(a1 + 32) forLayoutRole:1];
    [v4 setEntity:*(a1 + 40) forLayoutRole:2];
    [v4 setEntity:*(a1 + 48) forLayoutRole:3];
    [v4 setEntity:*(a1 + 56) forLayoutRole:4];
  }

  [v4 setRequestedSpaceConfiguration:*(a1 + 80)];
}

- (unint64_t)_siriWorkspaceTransitionOptionsFromOpenApplicationOptions:(id)a3
{
  v3 = *MEMORY[0x277D670D8];
  v4 = a3;
  v5 = [v4 bs_safeObjectForKey:v3 ofType:objc_opt_class()];

  if ([v5 BOOLValue])
  {
    v6 = 32;
  }

  else
  {
    v6 = 64;
  }

  return v6;
}

- (BOOL)isApplicationRunningAsViewService:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 processState];
  if ([v4 isRunning] && (objc_msgSend(v3, "info"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasViewServicesEntitlement"), v5, v6))
  {
    v7 = MEMORY[0x277D46F48];
    v8 = [MEMORY[0x277D46F50] identifierWithPid:{objc_msgSend(v4, "pid")}];
    v9 = [v7 handleForIdentifier:v8 error:0];

    if (v9)
    {
      v10 = [MEMORY[0x277D46FB0] descriptor];
      [v10 setValues:24];
      v11 = [v9 currentStateMatchingDescriptor:v10];
      v12 = v11;
      if (v11)
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v13 = [v11 assertions];
        v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v14)
        {
          v15 = *v19;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v19 != v15)
              {
                objc_enumerationMutation(v13);
              }

              if ([*(*(&v18 + 1) + 8 * i) reason] == 9)
              {
                LOBYTE(v14) = 1;
                goto LABEL_17;
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
      }

      else
      {
        LOBYTE(v14) = 0;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (void)_handleTrustedOpenRequestForApplication:(id)a3 options:(id)a4 activationSettings:(id)a5 origin:(id)a6 withResult:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v17)
  {
    [SBMainWorkspace _handleTrustedOpenRequestForApplication:a2 options:? activationSettings:? origin:? withResult:?];
  }

  if (!v15)
  {
    [SBMainWorkspace _handleTrustedOpenRequestForApplication:a2 options:? activationSettings:? origin:? withResult:?];
  }

  v18 = v17;
  if (([v15 BOOLForActivationSetting:52] & 1) == 0)
  {
    [SBMainWorkspace _handleTrustedOpenRequestForApplication:options:activationSettings:origin:withResult:];
  }

  if ([v14 bs_BOOLForKey:*MEMORY[0x277D0ABF0]])
  {
    [(SBMainWorkspace *)self _handleOpenApplicationRequest:v13 options:v14 activationSettings:v15 origin:v16 withResult:v18];
  }

  else
  {
    v19 = [v14 bs_safeURLForKey:*MEMORY[0x277D0AC40]];
    v20 = SBWorkspaceOpenURLIsHandledBySpringBoard(v19);

    if (v20)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"FBSystemService-SpringBoardURL: %@", v13];
      v22 = MEMORY[0x277D0AB18];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __104__SBMainWorkspace__handleTrustedOpenRequestForApplication_options_activationSettings_origin_withResult___block_invoke;
      v40[3] = &unk_2783AA150;
      v40[4] = self;
      v33 = &v41;
      v41 = v13;
      v32 = &v42;
      v42 = v14;
      v31 = &v43;
      v43 = v15;
      v23 = &v44;
      v44 = v16;
      v24 = &v45;
      v45 = v18;
      v25 = v40;
    }

    else
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"FBSystemService-TrustedRequest: %@", v13];
      v22 = MEMORY[0x277D0AB18];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __104__SBMainWorkspace__handleTrustedOpenRequestForApplication_options_activationSettings_origin_withResult___block_invoke_2;
      v34[3] = &unk_2783AA150;
      v34[4] = self;
      v33 = &v35;
      v35 = v13;
      v32 = &v36;
      v36 = v14;
      v31 = &v37;
      v37 = v15;
      v23 = &v38;
      v38 = v16;
      v24 = &v39;
      v39 = v18;
      v25 = v34;
    }

    v26 = v22;
    v27 = self;
    v28 = v21;
    v29 = [v26 eventWithName:v21 handler:v25];

    v30 = [(SBWorkspace *)v27 eventQueue];
    [v30 executeOrAppendEvent:v29];
  }
}

- (void)_handleUntrustedOpenRequestForApplication:(id)a3 options:(id)a4 activationSettings:(id)a5 origin:(id)a6 withResult:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v17)
  {
    [SBMainWorkspace _handleUntrustedOpenRequestForApplication:a2 options:? activationSettings:? origin:? withResult:?];
  }

  v18 = v17;
  if (!v15)
  {
    [SBMainWorkspace _handleUntrustedOpenRequestForApplication:a2 options:? activationSettings:? origin:? withResult:?];
  }

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"FBSystemService-UntrustedRequest: %@", v13];
  v20 = [(SBWorkspace *)self eventQueue];
  v21 = MEMORY[0x277D0AB18];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __106__SBMainWorkspace__handleUntrustedOpenRequestForApplication_options_activationSettings_origin_withResult___block_invoke;
  v28[3] = &unk_2783AA150;
  v28[4] = self;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v18;
  v22 = v18;
  v23 = v16;
  v24 = v15;
  v25 = v14;
  v26 = v13;
  v27 = [v21 eventWithName:v19 handler:v28];
  [v20 executeOrAppendEvent:v27];
}

- (void)_handleUserActionRequest:(id)a3 options:(id)a4 activationSettings:(id)a5 origin:(id)a6 withResult:(id)a7
{
  v160 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  BSDispatchQueueAssertMain();
  if (!v16)
  {
    [SBMainWorkspace _handleUserActionRequest:a2 options:? activationSettings:? origin:? withResult:?];
  }

  if (!v14)
  {
    [SBMainWorkspace _handleUserActionRequest:a2 options:? activationSettings:? origin:? withResult:?];
  }

  v128 = v16;
  v17 = [v13 bs_safeURLForKey:*MEMORY[0x277D0AC40]];
  v18 = +[SBApplicationController sharedInstance];
  v19 = [v14 BOOLForActivationSetting:52];
  v20 = [v17 scheme];
  v123 = [v20 isEqualToString:@"test"];

  v132 = v18;
  v21 = [v18 dataActivationApplication];
  v22 = [v21 bundleIdentifier];
  v133 = [v12 isEqualToIgnoringCase:v22];

  v23 = [v13 bs_safeObjectForKey:@"__SBWorkspaceOpenOptionUnlockResult" ofType:objc_opt_class()];
  v136 = [v23 BOOLValue];

  v24 = [v13 bs_safeObjectForKey:*MEMORY[0x277D0AC28] ofType:objc_opt_class()];
  v153 = 0u;
  v154 = 0u;
  v25 = [v15 auditToken];
  v26 = v25;
  if (v25)
  {
    [v25 realToken];
  }

  else
  {
    v153 = 0u;
    v154 = 0u;
  }

  v27 = SBRunningApplicationForAuditToken();
  v28 = v27 != 0;
  if (!((v27 == 0) | v19 & 1))
  {
    v28 = v136 | v133;
  }

  v127 = v27;
  if (v27)
  {
    if ((v28 & 1) == 0)
    {
      v29 = v27;
      if ((SBWorkspaceHasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication(v27) & 1) == 0 && !-[SBMainWorkspace isApplicationRunningAsViewService:](self, "isApplicationRunningAsViewService:", v29) && ([v15 hasEntitlement:@"com.apple.springboard.openurlinbackground"] & 1) == 0)
      {
        v107 = [v29 bundleIdentifier];
        v85 = FBSOpenApplicationErrorCreate();
        v57 = v128;
        (v128)[2](v128, v85);

        goto LABEL_84;
      }
    }
  }

  v30 = [MEMORY[0x277D0AAC0] sharedInstance];
  v131 = v15;
  v31 = [v30 processForPID:{objc_msgSend(v15, "pid")}];

  v134 = v31;
  v32 = [v31 isExtensionProcess];
  v33 = v32 & (v19 | v136);
  v129 = v12;
  v126 = v17;
  if (!v32 || (v33 & 1) != 0)
  {
    goto LABEL_36;
  }

  v34 = v134;
  v35 = [v34 extensionInfo];
  v36 = [v35 typeIdentifier];
  v37 = [v35 sb_type];
  v38 = v37;
  v119 = v36;
  if (v37)
  {
    v39 = NSStringFromSBExtensionType(v37);
  }

  else
  {
    v39 = v36;
  }

  v121 = v39;
  v15 = v131;
  v124 = FBSProcessPrettyDescription();
  v40 = SBLogCommon();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v157 = v124;
    v158 = 2114;
    v159 = v121;
    _os_log_impl(&dword_21ED4E000, v40, OS_LOG_TYPE_INFO, "Verifying request for <%{public}@> of extension type %{public}@...", buf, 0x16u);
  }

  if (v38 != 15)
  {
    v52 = [v35 extensionIdentifier];
    if (v38 <= 0xE)
    {
      if (((1 << v38) & 0x3EFE) != 0)
      {
        v53 = SBLogCommon();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v157 = v119;
          _os_log_impl(&dword_21ED4E000, v53, OS_LOG_TYPE_INFO, "Extension type <%{public}@> predates 10.0 -- ignoring visibility check and allowing the openURL request.", buf, 0xCu);
        }

LABEL_32:

        v42 = 0;
        v51 = 1;
        v46 = v52;
        goto LABEL_33;
      }

      if (v38 == 14)
      {
        v53 = SBLogCommon();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v157 = v124;
          _os_log_impl(&dword_21ED4E000, v53, OS_LOG_TYPE_INFO, "Extension <%{public}@> is not allowed to open URLs, period.", buf, 0xCu);
        }

LABEL_94:
        v46 = v52;
LABEL_111:

        v42 = 0;
        goto LABEL_112;
      }
    }

    v114 = v35;
    v118 = v24;
    v88 = MEMORY[0x277D46F48];
    v89 = [MEMORY[0x277D46F50] identifierWithPid:{objc_msgSend(v34, "pid")}];
    v152 = 0;
    v90 = [v88 handleForIdentifier:v89 error:&v152];
    v53 = v152;

    if (!v90)
    {
      v99 = SBLogCommon();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v157 = v124;
        v158 = 2114;
        v159 = v53;
        _os_log_impl(&dword_21ED4E000, v99, OS_LOG_TYPE_INFO, "Extension <%{public}@> is not considered foreground-running (no handle found): error=%{public}@", buf, 0x16u);
      }

      v24 = v118;
      v35 = v114;
      goto LABEL_94;
    }

    v91 = v90;
    v92 = [MEMORY[0x277D46FB0] descriptor];
    [v92 setValues:1];
    v113 = v91;
    log = *MEMORY[0x277D0AC90];
    v155 = *MEMORY[0x277D0AC90];
    v93 = [MEMORY[0x277CBEA60] arrayWithObjects:&v155 count:1];
    [v92 setEndowmentNamespaces:v93];

    v112 = v92;
    v94 = [v113 currentStateMatchingDescriptor:v92];
    v111 = v94;
    if (v94)
    {
      v95 = v94;
      v96 = [v94 taskState];
      v97 = v96;
      if (v96 == 4 || v96 == 2)
      {
        v95 = [v95 endowmentNamespaces];
        v108 = [v95 containsObject:log];
      }

      else
      {
        v108 = 0;
      }

      if (v97 == 4 || v97 == 2)
      {
      }

      loga = SBLogCommon();
      v104 = os_log_type_enabled(loga, OS_LOG_TYPE_INFO);
      if (v108)
      {
        v24 = v118;
        if (v104)
        {
          *buf = 138543362;
          v157 = v124;
          _os_log_impl(&dword_21ED4E000, loga, OS_LOG_TYPE_INFO, "Extension <%{public}@> is considered foreground-running.", buf, 0xCu);
        }

        v35 = v114;
        goto LABEL_32;
      }

      v24 = v118;
      if (!v104)
      {
        v35 = v114;
        v46 = v52;
        v105 = loga;
        goto LABEL_110;
      }

      *buf = 138543618;
      v157 = v124;
      v158 = 1024;
      LODWORD(v159) = v97;
      v101 = "Extension <%{public}@> is not considered foreground-running (taskState: %u).";
      v100 = loga;
      v102 = loga;
      v103 = 18;
    }

    else
    {
      v100 = SBLogCommon();
      v24 = v118;
      if (!os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
      {
LABEL_108:
        v105 = v100;
        v35 = v114;
        v46 = v52;
LABEL_110:

        goto LABEL_111;
      }

      *buf = 138543362;
      v157 = v124;
      v101 = "Extension <%{public}@> is not considered foreground-running (unknown state).";
      v102 = v100;
      v103 = 12;
    }

    _os_log_impl(&dword_21ED4E000, v102, OS_LOG_TYPE_INFO, v101, buf, v103);
    goto LABEL_108;
  }

  v41 = v35;
  v116 = v24;
  v42 = [MEMORY[0x277D46F60] identityOfCurrentProcess];
  v43 = [v34 identity];
  v44 = [v43 hostIdentity];
  v45 = [v42 isEqual:v44];

  if (v45)
  {
    v35 = v41;
    v46 = [v41 extensionIdentifier];
    v47 = [SBApp notificationDispatcher];
    v48 = [v47 isNotificationContentExtensionVisible:v46];

    v49 = SBLogCommon();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = @"NOT VISIBLE";
      if (v48)
      {
        v50 = @"VISIBLE";
      }

      *buf = 138543618;
      v157 = v124;
      v158 = 2114;
      v159 = v50;
      _os_log_impl(&dword_21ED4E000, v49, OS_LOG_TYPE_INFO, "NotificationUI extension <%{public}@> visibility is: %{public}@", buf, 0x16u);
    }

    if (v48)
    {
      v51 = 1;
      v24 = v116;
LABEL_33:
      v54 = SBLogCommon();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v157 = v124;
        v158 = 1024;
        LODWORD(v159) = v51;
        _os_log_impl(&dword_21ED4E000, v54, OS_LOG_TYPE_INFO, "Allowing openURL request from extension <%{public}@> because it is visible (%d) or entitled.", buf, 0x12u);
      }

      v33 = 1;
      v12 = v129;
      v17 = v126;
LABEL_36:
      if (!v17)
      {
        v15 = v131;
        v57 = v128;
        [(SBMainWorkspace *)self _handleOpenApplicationRequest:v12 options:v13 activationSettings:v14 origin:v131 withResult:v128];
LABEL_83:

        goto LABEL_84;
      }

      v55 = v14;
      v56 = v24;
      if (v133)
      {
        [v132 dataActivationApplication];
      }

      else
      {
        [v132 applicationWithBundleIdentifier:v12];
      }
      v58 = ;
      v59 = [v13 bs_safeObjectForKey:*MEMORY[0x277D0ABF0] ofType:objc_opt_class()];
      v60 = [v59 BOOLValue];

      v151 = 0;
      v61 = [(SBMainWorkspace *)self _targetWindowSceneForApplication:v58 options:v13 settings:v55 requireForeground:v60 ^ 1u targetDisplayConfiguration:0 error:&v151];
      v62 = v151;
      v63 = v62;
      if (!v61 && v62)
      {
        v57 = v128;
        (v128)[2](v128, v62);
        v15 = v131;
        v24 = v56;
        v14 = v55;
LABEL_81:

LABEL_82:
        v12 = v129;
        v17 = v126;
        goto LABEL_83;
      }

      v122 = v62;
      v64 = [v61 uiLockStateProvider];
      v65 = v64;
      v24 = v56;
      v115 = v55;
      if (v64)
      {
        v66 = v64;
      }

      else
      {
        v66 = +[SBLockScreenManager sharedInstance];
      }

      v125 = v66;
      v68 = v58;

      v69 = [v61 authenticationStatusProvider];
      v70 = v69;
      if (v69)
      {
        v71 = v69;
      }

      else
      {
        v71 = [SBApp authenticationController];
      }

      v72 = v71;

      v73 = [v125 isUILocked];
      v120 = v72;
      if (v123 & 1 | ((v73 & 1) == 0) | ([v72 isAuthenticatedCached] | v136) & 1)
      {
        v58 = v68;
        if (!v129 || v68)
        {
          v15 = v131;
          v74 = v120;
          v14 = v115;
          if (v58)
          {
            [(SBMainWorkspace *)self _updateActivationSettings:v115 forRequestWithOptions:v13 clientProcess:v131 application:v58];
            if ((v136 & 1) == 0)
            {
              [v125 isUILocked];
            }

            [v115 setFlag:BSSettingFlagIfYes() forActivationSetting:29];
          }
        }

        else
        {
          v15 = v131;
          v74 = v120;
          v14 = v115;
          if (([v129 isEqualToString:@"com.apple.springboard"] & 1) == 0)
          {
            v75 = FBSOpenApplicationErrorCreate();
            v57 = v128;
            (v128)[2](v128, v75);

LABEL_79:
            v63 = v122;
            goto LABEL_80;
          }
        }

        if (v133)
        {
          v87 = +[SBWorkspace mainWorkspace];
          v138[0] = MEMORY[0x277D85DD0];
          v138[1] = 3221225472;
          v138[2] = __89__SBMainWorkspace__handleUserActionRequest_options_activationSettings_origin_withResult___block_invoke_2;
          v138[3] = &unk_2783AA1A0;
          v139 = v15;
          v140 = v58;
          v141 = v14;
          v57 = v128;
          v142 = v128;
          [v87 requestTransitionWithBuilder:v138];
        }

        else
        {
          v57 = v128;
          [SBApp applicationOpenURL:v126 withApplication:v58 animating:1 activationSettings:v14 origin:v15 notifyLSOnFailure:0 withResult:v128];
        }

        goto LABEL_79;
      }

      v76 = [v13 bs_safeObjectForKey:*MEMORY[0x277D0AC70] ofType:objc_opt_class()];
      v137 = [v76 BOOLValue];

      v77 = [v13 bs_safeObjectForKey:*MEMORY[0x277D0AC58] ofType:objc_opt_class()];
      v78 = [v77 BOOLValue];

      v79 = v131;
      v58 = v68;
      v14 = v55;
      if (([v131 hasEntitlement:@"com.apple.springboard.openurlswhenlocked"] & 1) == 0)
      {
        v80 = [v55 BOOLForActivationSetting:52];
        v150 = 0;
        v117 = v24;
        v81 = [(SBMainWorkspace *)self _canImplicitlyUnlockAtLockScreenWhileAuthenticatedFromOrigin:v131 givenOrigin:v24 trustedRequest:v80 outReason:&v150];
        v82 = v150;
        v83 = v82;
        if (v81)
        {
          v84 = SBLogWorkspace();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v157 = v83;
            v158 = 2112;
            v159 = v131;
            _os_log_impl(&dword_21ED4E000, v84, OS_LOG_TYPE_DEFAULT, "Allowing openURL unlock attempt for un-entitled process because we're authenticated and %@: %@", buf, 0x16u);
          }

          v79 = v131;
          v24 = v117;
        }

        else
        {

          if (((v137 | v78) & 1) == 0)
          {
            v98 = FBSOpenApplicationErrorCreate();
            v57 = v128;
            (v128)[2](v128, v98);

            v15 = v131;
            v24 = v117;
            goto LABEL_62;
          }

          v79 = v131;
          v24 = v117;
          if (!v33)
          {
            FBSOpenApplicationErrorCreate();
            v86 = v15 = v131;
            v57 = v128;
            (v128)[2](v128, v86);

            goto LABEL_62;
          }
        }
      }

      v143[0] = MEMORY[0x277D85DD0];
      v143[1] = 3221225472;
      v143[2] = __89__SBMainWorkspace__handleUserActionRequest_options_activationSettings_origin_withResult___block_invoke;
      v143[3] = &unk_2783AA018;
      v144 = v13;
      v145 = self;
      v146 = v129;
      v147 = v55;
      v148 = v79;
      v57 = v128;
      v149 = v128;
      v14 = v55;
      [(SBMainWorkspace *)self _attemptUnlockToApplication:v58 showPasscode:v78 & 1 origin:v148 givenOrigin:v24 options:v144 completion:v143];

      v15 = v131;
LABEL_62:
      v74 = v120;
      v63 = v122;
LABEL_80:

      goto LABEL_81;
    }

    v24 = v116;
LABEL_112:
    if (([v131 hasEntitlement:@"com.apple.springboard.openurlinbackground"] & 1) == 0)
    {
      v106 = FBSOpenApplicationErrorCreate();
      v57 = v128;
      (v128)[2](v128, v106);

      v134 = v34;
      goto LABEL_82;
    }

    v51 = 0;
    goto LABEL_33;
  }

  v67 = FBSOpenApplicationErrorCreate();
  v57 = v128;
  (v128)[2](v128, v67);

  v135 = v34;
  v12 = v129;
  v17 = v126;
  v24 = v116;

LABEL_84:
}

void __89__SBMainWorkspace__handleUserActionRequest_options_activationSettings_origin_withResult___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) mutableCopy];
    [v4 removeObjectForKey:*MEMORY[0x277D0AC70]];
    [v4 removeObjectForKey:*MEMORY[0x277D0AC58]];
    [v4 setObject:MEMORY[0x277CBEC38] forKey:@"__SBWorkspaceOpenOptionUnlockResult"];
    [*(a1 + 40) _handleUserActionRequest:*(a1 + 48) options:v4 activationSettings:*(a1 + 56) origin:*(a1 + 64) withResult:*(a1 + 72)];
  }

  else
  {
    v3 = *(a1 + 72);
    v4 = FBSOpenApplicationErrorCreate();
    (*(v3 + 16))(v3);
  }
}

void __89__SBMainWorkspace__handleUserActionRequest_options_activationSettings_origin_withResult___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setOriginatingProcess:v3];
  [v4 setSource:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __89__SBMainWorkspace__handleUserActionRequest_options_activationSettings_origin_withResult___block_invoke_3;
  v5[3] = &unk_2783AA178;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v4 modifyApplicationContext:v5];
}

void __89__SBMainWorkspace__handleUserActionRequest_options_activationSettings_origin_withResult___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:a1[4]];
  [(SBWorkspaceEntity *)v4 applyActivationSettings:a1[5]];
  [(SBWorkspaceEntity *)v4 setObject:&unk_28336FC98 forActivationSetting:30];
  [v3 setResultBlock:a1[6]];
  [v3 setEntity:v4 forLayoutRole:1];
}

- (BOOL)_canImplicitlyUnlockAtLockScreenWhileAuthenticatedFromOrigin:(id)a3 givenOrigin:(id)a4 trustedRequest:(BOOL)a5 outReason:(id *)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a4;
  v11 = [SBApp authenticationController];
  v12 = [v11 isAuthenticated];

  if (v12)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __117__SBMainWorkspace__canImplicitlyUnlockAtLockScreenWhileAuthenticatedFromOrigin_givenOrigin_trustedRequest_outReason___block_invoke;
    v29[3] = &__block_descriptor_40_e18_v16__0__NSString_8l;
    v29[4] = a6;
    v13 = MEMORY[0x223D6F7F0](v29);
    v14 = [MEMORY[0x277D0AAC0] sharedInstance];
    v15 = [v14 processForPID:{objc_msgSend(v9, "pid")}];

    if ([v15 isApplicationProcess])
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = [v16 applicationInfo];
    v18 = [v17 hasViewServicesEntitlement];

    LODWORD(v17) = getpid();
    v19 = [v9 pid];
    v20 = [v10 isEqualToString:*MEMORY[0x277D67080]];
    v21 = v17 == v19 || v7;
    v22 = v21 | v20 | v18;
    if (SBSpotlightIsVisible())
    {
      v23 = +[SBLockScreenManager sharedInstance];
      v24 = [v23 isUILocked];
    }

    else
    {
      v24 = 0;
    }

    v26 = +[SBBacklightController sharedInstance];
    v27 = [v26 screenIsOn];

    v25 = v27 & v24 & v22;
    if (v25 == 1)
    {
      (v13)[2](v13, @"lock-screen Spotlight is visible");
    }
  }

  else
  {
    LOBYTE(v25) = 0;
  }

  return v25;
}

void **__117__SBMainWorkspace__canImplicitlyUnlockAtLockScreenWhileAuthenticatedFromOrigin_givenOrigin_trustedRequest_outReason___block_invoke(void **result, id a2)
{
  if (result[4])
  {
    v3 = result;
    result = a2;
    *v3[4] = a2;
  }

  return result;
}

- (void)_attemptUnlockToApplication:(id)a3 showPasscode:(BOOL)a4 origin:(id)a5 givenOrigin:(id)a6 options:(id)a7 completion:(id)a8
{
  v58 = a4;
  v64 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = SBApp;
  v61 = a8;
  v16 = [v15 authenticationController];
  LOBYTE(v15) = [v16 hasAuthenticatedAtLeastOnceSinceBoot];

  v62 = v12;
  if (v15)
  {
    CanLaunchWhilePasscodeLocked = SBWorkspaceApplicationCanLaunchWhilePasscodeLocked(v64);
    CanResumeWhilePasscodeLocked = SBWorkspaceApplicationCanResumeWhilePasscodeLocked(v64);
    CanLaunchWhilePasscodeLockedIfSecureLaunchRequested = SBWorkspaceApplicationCanLaunchWhilePasscodeLockedIfSecureLaunchRequested(v64);
  }

  else
  {
    CanResumeWhilePasscodeLocked = SBWorkspaceApplicationCanResumeWhilePasscodeLocked(v64);
    CanLaunchWhilePasscodeLockedIfSecureLaunchRequested = 0;
    CanLaunchWhilePasscodeLocked = 0;
  }

  v60 = [v14 bs_safeObjectForKey:*MEMORY[0x277D670F8] ofType:objc_opt_class()];
  v53 = [v60 isEqualToString:*MEMORY[0x277D67058]];
  v18 = [v14 bs_safeObjectForKey:*MEMORY[0x277D243B8] ofType:objc_opt_class()];
  v19 = [v18 BOOLValue];

  v20 = +[SBCoverSheetPresentationManager sharedInstance];
  v21 = [v20 secureAppViewController];
  v22 = [v21 applicationSceneHandle];
  v23 = [v22 application];

  v24 = [v13 isEqualToString:*MEMORY[0x277CFC8B0]];
  v52 = *MEMORY[0x277CD9308];
  v57 = [v13 isEqualToString:?];
  v25 = [v13 isEqualToString:*MEMORY[0x277CEA5F8]];
  v56 = v13;
  v26 = [v13 isEqualToString:*MEMORY[0x277D67060]];
  v27 = [v14 bs_safeObjectForKey:*MEMORY[0x277D66FE0] ofType:objc_opt_class()];
  v28 = v19;
  if ([v27 BOOLValue])
  {
    v29 = [v64 bundleIdentifier];
    v63 = [v29 isEqualToString:@"com.apple.InCallService"];
  }

  else
  {
    v63 = 0;
  }

  v30 = CanLaunchWhilePasscodeLocked | CanResumeWhilePasscodeLocked;
  v59 = v23;
  if ((CanLaunchWhilePasscodeLocked | CanResumeWhilePasscodeLocked))
  {
    v31 = v25;
    if (v24 & 1 | (([v23 isEqual:v64] & 1) == 0))
    {
      v32 = 0;
    }

    else
    {
      v32 = (v25 | v26) ^ 1;
    }
  }

  else
  {
    v31 = v25;
    v32 = 0;
  }

  v33 = [v14 bs_safeObjectForKey:*MEMORY[0x277D243B0] ofType:objc_opt_class()];
  v34 = [v33 BOOLValue];

  v35 = v34 & CanLaunchWhilePasscodeLocked;
  if (v24)
  {
    v36 = [v64 bundleIdentifier];
    v37 = [v36 isEqualToString:@"com.apple.camera"] & (v28 ^ 1);
  }

  else
  {
    LOBYTE(v37) = 0;
  }

  if (v58)
  {
    v38 = 3;
  }

  else
  {
    v38 = 1;
  }

  if (v32 & 1 | ((((v30 | v28) | (CanLaunchWhilePasscodeLockedIfSecureLaunchRequested & v53)) & 1) == 0) | ((v63 | v35) | v37) & 1)
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  v40 = [v62 pid];
  if (v40 == getpid())
  {
    v41 = 0;
  }

  else
  {
    v41 = v62;
  }

  v42 = objc_alloc_init(SBLockScreenUnlockRequest);
  [(SBLockScreenUnlockRequest *)v42 setSource:18];
  if (v24)
  {
    [(SBLockScreenUnlockRequest *)v42 setSource:26];
  }

  if (v31)
  {
    [(SBLockScreenUnlockRequest *)v42 setSource:13];
  }

  [(SBLockScreenUnlockRequest *)v42 setIntent:v39];
  v43 = MEMORY[0x277CCACA8];
  v44 = [v64 bundleIdentifier];
  v45 = [v43 stringWithFormat:@"SBWorkspaceRequest: Open %@", v44];
  [(SBLockScreenUnlockRequest *)v42 setName:v45];

  [(SBLockScreenUnlockRequest *)v42 setProcess:v41];
  if ((v63 & 1) == 0)
  {
    [(SBLockScreenUnlockRequest *)v42 setDestinationApplication:v64];
  }

  [(SBLockScreenUnlockRequest *)v42 setWantsBiometricPresentation:1];
  if (v57)
  {
    [(SBLockScreenUnlockRequest *)v42 setForceAlertAuthenticationUI:1];
  }

  v46 = *MEMORY[0x277D670C0];
  v47 = [v14 objectForKey:*MEMORY[0x277D670C0]];

  if (v47)
  {
    v48 = [v14 objectForKeyedSubscript:v46];
    -[SBLockScreenUnlockRequest setConfirmedNotInPocket:](v42, "setConfirmedNotInPocket:", [v48 BOOLValue]);
  }

  else
  {
    v49 = [v56 isEqualToString:v52];
    v50 = [v56 isEqualToString:*MEMORY[0x277D67080]];
    if ((v49 & 1) != 0 || v50)
    {
      [(SBLockScreenUnlockRequest *)v42 setConfirmedNotInPocket:1];
    }
  }

  v51 = +[SBLockScreenManager sharedInstance];
  [v51 unlockWithRequest:v42 completion:v61];
}

- (void)systemService:(id)a3 isPasscodeLockedOrBlockedWithResult:(id)a4
{
  if (a4)
  {
    v5 = SBApp;
    v6 = a4;
    v7 = [v5 lockOutController];
    (*(a4 + 2))(v6, [v7 isLockedOut]);
  }
}

- (void)systemService:(id)a3 handleActions:(id)a4 origin:(id)a5 withResult:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(SBWorkspace *)self eventQueue];
  v13 = MEMORY[0x277D0AB18];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__SBMainWorkspace_systemService_handleActions_origin_withResult___block_invoke;
  v18[3] = &unk_2783AA1E8;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = [v13 eventWithName:@"FBSystemService-HandleActions" handler:v18];
  [v12 executeOrAppendEvent:v17];
}

void __65__SBMainWorkspace_systemService_handleActions_origin_withResult___block_invoke(void *a1)
{
  v2 = +[SBActionHandler sharedInstance];
  [v2 handleActions:a1[4] origin:a1[5] withResult:a1[6]];
}

- (void)systemServicePrepareForExit:(id)a3 andRelaunch:(BOOL)a4
{
  v4 = [SBApp restartManager];
  [v4 _exitIsImminent];
}

- (void)systemService:(id)a3 prepareForShutdownWithOptions:(id)a4 origin:(id)a5
{
  v5 = MEMORY[0x277CBEBD0];
  v6 = a4;
  v7 = [v5 standardUserDefaults];
  v8 = [MEMORY[0x277CBEAA8] date];
  [v7 setObject:v8 forKey:@"SBLastKnownShutdownDate"];

  LODWORD(v7) = [v6 isUserInitiated];
  if (v7)
  {
    v9 = dispatch_semaphore_create(0);
    v10 = [SBApp restartManager];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__SBMainWorkspace_systemService_prepareForShutdownWithOptions_origin___block_invoke;
    v14[3] = &unk_2783A8C18;
    v15 = v9;
    v11 = v9;
    [v10 _playShutdownSound:v14];

    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    v12 = [SBApp restartManager];
    [v12 _exitIsImminent];
  }

  else
  {
    v13 = [SBApp restartManager];
    [v13 _exitIsImminent];
  }
}

- (void)backlightController:(id)a3 didAnimateBacklightToFactor:(float)a4 source:(int64_t)a5
{
  v7 = [SBKeyboardFocusCoordinator sharedInstance:a3];
  v5 = +[SBKeyboardFocusArbitrationReason backlightControllerDidAnimate];
  v6 = [v5 annotatedWithSourceName:@"SBWorkspace"];
  [v7 requestArbitrationForSBWindowScene:0 forReason:v6];
}

- (void)watchdogFired:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (BSIsBeingDebugged())
  {
    v4 = SBLogTransaction();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "Ignoring transaction watchdog while FrontBoard is being debugged.";
LABEL_7:
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, v5, buf, 2u);
    }
  }

  else if (([(SBWorkspaceTransaction *)self->_currentTransaction isComplete]& 1) != 0)
  {
    v4 = SBLogTransaction();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "Ignoring transaction watchdog because the transaction is complete.";
      goto LABEL_7;
    }
  }

  else
  {
    currentTransaction = self->_currentTransaction;
    v11 = 0;
    v7 = [(SBWorkspaceTransaction *)currentTransaction shouldWatchdog:&v11];
    v4 = v11;
    if (v7)
    {
      v8 = SBLogTransactionVerbose();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

      if (v9)
      {
        v10 = SBLogTransactionVerbose();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          [(SBMainWorkspace *)&self->_currentTransaction watchdogFired:v10];
        }
      }

      else
      {
        v10 = SBLogTransaction();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          [SBMainWorkspace watchdogFired:];
        }
      }
    }

    else
    {
      v10 = SBLogTransaction();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "Ignoring transaction watchdog for reason: %@", buf, 0xCu);
      }
    }
  }
}

- (void)transactionDidComplete:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_currentTransaction != v5)
  {
    [(SBMainWorkspace *)&self->_currentTransaction transactionDidComplete:a2, self, v5];
  }

  v6 = [(SBWorkspaceTransaction *)v5 isFailed];
  v7 = SBLogTransactionVerbose();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    if (v8)
    {
      v9 = SBLogTransactionVerbose();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [SBMainWorkspace transactionDidComplete:];
      }
    }

    else
    {
      v9 = SBLogTransaction();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(SBWorkspaceTransaction *)v5 _descriptionProem];
        *buf = 138543362;
        v16 = v11;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Root transaction failed: %{public}@. Attempting to force us back to SB...", buf, 0xCu);
      }
    }

    __SBWorkspaceActivateSpringBoardWithResult(0, 0, 0, 0, 1, 0, 0);
  }

  else
  {
    if (v8)
    {
      v10 = SBLogTransactionVerbose();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [SBMainWorkspace transactionDidComplete:];
      }
    }

    else
    {
      v10 = SBLogTransaction();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(SBWorkspaceTransaction *)v5 _descriptionProem];
        *buf = 138543362;
        v16 = v12;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Root transaction complete: %{public}@", buf, 0xCu);
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(SBWorkspaceTransaction *)v5 clearsCompletionAsynchronously])
  {
    v13 = SBLogTransaction();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "Running next transaction event synchronously.", buf, 2u);
    }

    [(SBMainWorkspace *)self setCurrentTransaction:0];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__SBMainWorkspace_transactionDidComplete___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (id)currentStatusBarSettingsForTransientOverlayScenePresenter:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SBMutableStatusBarSettings);
  v6 = [v4 windowScene];

  v7 = [v6 statusBarManager];

  v8 = MEMORY[0x277CCABB0];
  v9 = [v7 assertionManager];
  v10 = [v9 isFrontmostStatusBarHidden];
  if (v10)
  {
    v11 = 0.0;
  }

  else
  {
    v3 = +[SBBacklightController sharedInstance];
    v12 = [v3 screenIsOn];
    v11 = 0.0;
    if (v12)
    {
      v11 = 1.0;
    }
  }

  v13 = [v8 numberWithDouble:v11];
  [(SBMutableStatusBarSettings *)v5 setAlpha:v13];

  if ((v10 & 1) == 0)
  {
  }

  v14 = [v7 frontmostStatusBarStyleRequest];
  v15 = [MEMORY[0x277D760A8] sharedInstanceForStyle:{objc_msgSend(v14, "legibilityStyle")}];
  [(SBMutableStatusBarSettings *)v5 setLegibilitySettings:v15];

  -[SBMutableStatusBarSettings setStyle:](v5, "setStyle:", [v14 style]);

  return v5;
}

- (id)transientOverlayScenePresenter:(id)a3 acquireHideAppStatusBarAssertionWithReason:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [a3 windowScene];
  v9 = [v8 switcherController];
  v10 = [v9 requestInAppStatusBarHiddenAssertionForReason:v7 animated:v5];

  return v10;
}

- (BOOL)isKeyboardVisibleForSpringBoardForTransientOverlayScenePresenter:(id)a3
{
  v3 = [a3 windowScene];
  v4 = [v3 medusaHostedKeyboardWindowController];
  v5 = [v4 isKeyboardVisibleForSpringBoard];

  return v5;
}

- (unint64_t)defaultSupportedInterfaceOrientationsForTransientOverlayScenePresenter:(id)a3
{
  if (![SBApp homeScreenRotationStyle])
  {
    return 2;
  }

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      return 30;
    }

    else
    {
      return 26;
    }
  }

  else
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    if ([v4 userInterfaceIdiom] == 1)
    {
      v3 = 30;
    }

    else
    {
      v3 = 26;
    }
  }

  return v3;
}

- (void)transientOverlayScenePresenterRequestsAppIconForceTouchDismissal:(id)a3 animated:(BOOL)a4
{
  v5 = [a3 windowScene];
  v4 = [v5 homeScreenController];
  [v4 dismissAppIconForceTouchControllers:0];
}

- (id)transientOverlayScenePresenter:(id)a3 acquireDisableAutoUnlockAssertionWithReason:(id)a4
{
  v4 = a4;
  v5 = +[SBLockScreenManager sharedInstanceIfExists];
  v6 = [v5 biometricAuthenticationCoordinator];
  v7 = [v6 acquireDisableAutoUnlockAssertionForReason:v4];

  return v7;
}

- (id)transientOverlayScenePresenter:(id)a3 acquireProximitySensorEnabledAssertionWithReason:(id)a4
{
  v4 = a4;
  v5 = [SBApp proximitySensorManager];
  [v5 client:v4 wantsProximityDetectionEnabled:1];

  v6 = objc_alloc(MEMORY[0x277CF0CE8]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__SBMainWorkspace_transientOverlayScenePresenter_acquireProximitySensorEnabledAssertionWithReason___block_invoke;
  v10[3] = &unk_2783A8A98;
  v11 = v4;
  v7 = v4;
  v8 = [v6 initWithIdentifier:@"transientOverlayScenePresenterProximitySensorEnabledAssertion" forReason:v7 invalidationBlock:v10];

  return v8;
}

void __99__SBMainWorkspace_transientOverlayScenePresenter_acquireProximitySensorEnabledAssertionWithReason___block_invoke(uint64_t a1)
{
  v2 = [SBApp proximitySensorManager];
  [v2 client:*(a1 + 32) wantsProximityDetectionEnabled:0];
}

- (id)transientOverlayScenePresenter:(id)a3 acquireInteractiveScreenshotGestureDisabledAssertionWithReason:(id)a4
{
  v4 = SBApp;
  v5 = a4;
  v6 = [v4 interactiveScreenshotGestureManager];
  v7 = [v6 acquireDisableGestureAssertionWithReason:v5];

  return v7;
}

- (id)bannerLongLookPresentationObservationTokenForTransientOverlayScenePresenter:(id)a3
{
  v3 = a3;
  v4 = [SBNotificationLongLookBannerPresentationObservationToken alloc];
  v5 = [SBApp notificationDispatcher];
  v6 = [v5 bannerDestination];
  v7 = [v3 windowScene];

  v8 = [(SBNotificationLongLookBannerPresentationObservationToken *)v4 initWithNotificationBannerDestination:v6 scene:v7];

  return v8;
}

- (id)transientOverlayScenePresenter:(id)a3 acquireBannerLongLookWindowLevelAssertionWithReason:(id)a4 windowLevel:(double)a5
{
  v7 = SBApp;
  v8 = a4;
  v9 = a3;
  v10 = [v7 bannerManager];
  v11 = [v9 windowScene];

  v12 = [v10 acquireWindowLevelAssertionWithPriority:0 windowLevel:v11 windowScene:v8 reason:a5];

  return v12;
}

- (id)controlCenterPresentationObservationTokenForTransientOverlayScenePresenter:(id)a3
{
  v3 = [a3 windowScene];
  v4 = [SBControlCenterPresentationObservationToken alloc];
  v5 = [v3 controlCenterController];
  v6 = [(SBControlCenterPresentationObservationToken *)v4 initWithControlCenterController:v5 scene:v3];

  return v6;
}

- (id)transientOverlayScenePresenter:(id)a3 acquireControlCenterWindowLevelAssertionWithReason:(id)a4 windowLevel:(double)a5
{
  v7 = a4;
  v8 = [a3 windowScene];
  v9 = [v8 controlCenterController];
  v10 = [v9 acquireWindowLevelAssertionWithPriority:0 windowLevel:v8 windowScene:v7 reason:a5];

  return v10;
}

- (void)transientOverlayScenePresenterRequestsControlCenterDismissal:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 windowScene];
  v5 = [v6 controlCenterController];
  [v5 dismissAnimated:v4];
}

- (id)siriPresentationObservationTokenForTransientOverlayScenePresenter:(id)a3
{
  v3 = a3;
  v4 = [SBAssistantPresentationObservationToken alloc];
  v5 = +[SBAssistantController sharedInstance];
  v6 = [v3 windowScene];

  v7 = [(SBAssistantPresentationObservationToken *)v4 initWithAssistantController:v5 scene:v6];

  return v7;
}

- (id)transientOverlayScenePresenter:(id)a3 acquireWallpaperAnimationSuspensionAssertionWithReason:(id)a4
{
  v4 = a4;
  v5 = +[SBWallpaperController sharedInstance];
  v6 = [v5 suspendWallpaperAnimationForReason:v4];

  return v6;
}

- (id)transientOverlayScenePresenter:(id)a3 acquireSiriWindowLevelAssertionWithReason:(id)a4 windowLevel:(double)a5
{
  v7 = a4;
  v8 = a3;
  v9 = +[SBAssistantController sharedInstance];
  v10 = [v8 windowScene];

  v11 = [v9 acquireWindowLevelAssertionWithPriority:0 windowLevel:v10 windowScene:v7 reason:a5];

  return v11;
}

- (void)transientOverlayScenePresenterRequestsSiriDismissal:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = +[SBAssistantController sharedInstance];
  [v5 dismissAssistantViewInEverySceneIfNecessaryWithAnimation:v4];
}

- (id)transientOverlayScenePresenter:(id)a3 newSceneDeactivationAssertionWithReason:(int64_t)a4
{
  v5 = +[SBSceneManagerCoordinator sharedInstance];
  v6 = [v5 sceneDeactivationManager];
  v7 = [v6 newAssertionWithReason:a4];

  return v7;
}

- (void)transientOverlayScenePresenter:(id)a3 didDismissViewController:(id)a4 wasTopmostPresentation:(BOOL)a5
{
  v5 = a5;
  v20 = [a3 windowScene];
  v6 = [v20 pictureInPictureManager];
  [v6 updatePictureInPictureWindowLevels];

  v7 = v20;
  if (v5)
  {
    v8 = [v20 switcherController];
    v9 = [v8 layoutStatePrimaryElement];
    v10 = [v9 workspaceEntity];
    v11 = [v10 applicationSceneEntity];
    v12 = [v11 sceneHandle];

    v13 = +[SBLockScreenManager sharedInstance];
    v14 = [v13 lockScreenEnvironment];
    v15 = [v14 backlightController];
    v16 = [v15 isInScreenOffMode];

    if (v20)
    {
      v17 = [v20 isMainDisplayWindowScene] ^ 1;
    }

    else
    {
      v17 = 0;
    }

    if (!((v12 != 0) | v16 & 1) && (v17 & 1) == 0)
    {
      v18 = +[SBIdleTimerGlobalCoordinator sharedInstance];
      [v18 resetIdleTimerForReason:@"TransientOverlayDismissed"];
    }

    v19 = +[SBMainStatusBarStateProvider sharedInstance];
    [v19 updateTimeEnabledImmediately:1];

    v7 = v20;
  }
}

- (void)transientOverlayScenePresenter:(id)a3 preferredWhitePointAdaptivityStyleDidChangeWithAnimationSettings:(id)a4
{
  v4 = a4;
  v5 = +[SBSceneLayoutWhitePointAdaptationController sharedInstance];
  [v5 updateWhitePointAdaptationStrengthWithAnimationSettings:v4];
}

- (void)transientOverlayScenePresenter:(id)a3 registerCoverSheetExternalBehaviorProvider:(id)a4
{
  v4 = a4;
  v6 = +[SBLockScreenManager sharedInstance];
  v5 = [v6 coverSheetViewController];
  [v5 registerExternalBehaviorProvider:v4];
}

- (void)transientOverlayScenePresenter:(id)a3 unregisterCoverSheetExternalBehaviorProvider:(id)a4
{
  v4 = a4;
  v6 = +[SBLockScreenManager sharedInstance];
  v5 = [v6 coverSheetViewController];
  [v5 unregisterExternalBehaviorProvider:v4];
}

- (void)transientOverlayScenePresenter:(id)a3 willPresentViewController:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 windowScene];
  if (!v9)
  {
    [SBMainWorkspace transientOverlayScenePresenter:a2 willPresentViewController:self];
  }

  v10 = v9;
  v11 = +[SBKeyboardFocusCoordinator sharedInstance];
  v12 = [v8 _sbWindowScene];
  v13 = +[SBKeyboardFocusArbitrationReason willPresentTransientOverlayScene];
  [v11 requestArbitrationForSBWindowScene:v12 forReason:v13];

  [SBApp frontDisplayDidChange:v8];
  v14 = [v10 pictureInPictureManager];
  [v14 updatePictureInPictureWindowLevels];

  v15 = +[SBMainStatusBarStateProvider sharedInstance];
  [v15 updateTimeEnabled];

  v16 = [v10 homeScreenController];
  [v16 noteTransientOverlayPresented];

  if (([v10 isContinuityDisplayWindowScene] & 1) == 0)
  {
    v17 = [v10 lockScreenManager];
    v19 = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
    v20[0] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [v17 unlockUIFromSource:9 withOptions:v18];
  }
}

- (BOOL)transientOverlayScenePresenter:(id)a3 shouldResignFirstResponderForKeyWindow:(id)a4
{
  v4 = a4;
  v5 = [v4 windowScene];
  v6 = objc_opt_class();
  v7 = v5;
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

  v10 = +[SBCoverSheetPresentationManager sharedInstance];
  v11 = [v10 coverSheetWindow];
  v12 = v11;
  if (v11 != v4)
  {

    goto LABEL_10;
  }

  v13 = [v10 isVisible];

  if ((v13 & 1) == 0)
  {
LABEL_10:
    v15 = +[SBAssistantController sharedInstance];
    v16 = [v15 window];
    v17 = v16;
    if (v16 == v4)
    {
      v18 = [v15 isVisible];

      if (v18)
      {
        v14 = 1;
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
    }

    v19 = [v9 controlCenterController];
    v20 = [v19 _controlCenterWindow];
    v21 = v20;
    if (v20 == v4)
    {
      v22 = [v19 isVisible];

      if (v22)
      {
        v14 = 1;
LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
    }

    v23 = [SBApp notificationDispatcher];
    v24 = [v23 bannerDestination];

    v25 = [SBApp bannerManager];
    v26 = [v25 bannerWindowInWindowScene:v9];
    v27 = v26;
    if (v26 == v4)
    {
      v28 = [v24 isPresentingBannerInLongLook];

      if (v28)
      {
        v14 = 1;
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
    }

    v14 = 0;
    goto LABEL_23;
  }

  v14 = 1;
LABEL_26:

  return v14;
}

- (void)registerHandler:(id)a3 forExtensionPoint:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11 && [v6 length])
  {
    extensionHandlersByType = self->_extensionHandlersByType;
    if (!extensionHandlersByType)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = self->_extensionHandlersByType;
      self->_extensionHandlersByType = v8;

      extensionHandlersByType = self->_extensionHandlersByType;
    }

    v10 = [(NSMutableDictionary *)extensionHandlersByType objectForKey:v6];

    if (!v10 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(NSMutableDictionary *)self->_extensionHandlersByType setObject:v11 forKey:v6];
    }
  }
}

- (id)_handlerForExtensionPoint:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_extensionHandlersByType objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)systemSleepMonitor:(id)a3 prepareForSleepWithCompletion:(id)a4
{
  v4 = a4;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Got kIOMessageSystemWillSleep", v6, 2u);
  }

  _SBWorkspaceUpdateBatteryUsageTime(0);
  __SBWIsSleeping = 1;
  _SBWorkspaceNoteSleepOrWake(0);
  v4[2](v4);
}

- (void)systemSleepMonitorSleepRequestAborted:(id)a3
{
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Got kIOMessageSystemWillNotSleep", v5, 2u);
  }

  [(SBMainWorkspace *)self _noteDidWakeFromSleep];
}

- (void)systemSleepMonitorWillWakeFromSleep:(id)a3
{
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Got kIOMessageSystemWillPowerOn", v4, 2u);
  }
}

- (void)systemSleepMonitorDidWakeFromSleep:(id)a3
{
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Got kIOMessageSystemHasPoweredOn", v5, 2u);
  }

  [(SBMainWorkspace *)self _noteDidWakeFromSleep];
}

- (BOOL)dismissTransientOverlayPresentationsAnimated:(BOOL)a3 windowScene:(id)a4 filter:(id)a5
{
  v8 = a4;
  v9 = a5;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__SBMainWorkspace_dismissTransientOverlayPresentationsAnimated_windowScene_filter___block_invoke;
  v18[3] = &__block_descriptor_33_e42_v16__0__SBMainWorkspaceTransitionRequest_8l;
  v19 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__SBMainWorkspace_dismissTransientOverlayPresentationsAnimated_windowScene_filter___block_invoke_3;
  v13[3] = &unk_2783AA250;
  v15 = self;
  v16 = v9;
  v14 = v8;
  v17 = a3;
  v10 = v8;
  v11 = v9;
  LOBYTE(self) = [(SBMainWorkspace *)self requestTransitionWithOptions:0 builder:v18 validator:v13];

  return self;
}

void __83__SBMainWorkspace_dismissTransientOverlayPresentationsAnimated_windowScene_filter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEventLabelWithFormat:@"DismissAllFromLock"];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__SBMainWorkspace_dismissTransientOverlayPresentationsAnimated_windowScene_filter___block_invoke_2;
  v4[3] = &__block_descriptor_33_e54_v16__0__SBWorkspaceTransientOverlayTransitionContext_8l;
  v5 = *(a1 + 32);
  [v3 modifyTransientOverlayContext:v4];
}

void __83__SBMainWorkspace_dismissTransientOverlayPresentationsAnimated_windowScene_filter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTransitionType:1];
  [v3 setAnimated:*(a1 + 32)];
}

uint64_t __83__SBMainWorkspace_dismissTransientOverlayPresentationsAnimated_windowScene_filter___block_invoke_3(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 48))
  {
    return 1;
  }

  v2 = [*(a1 + 32) transientOverlayPresenter];
  v3 = [v2 presentedViewControllers];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        if ((*(*(a1 + 48) + 16))())
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v11 = [v4 count];
  if (v11 == [v5 count] && objc_msgSend(v4, "count"))
  {
    v12 = 1;
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = v4;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(a1 + 40) dismissTransientOverlayViewController:*(*(&v19 + 1) + 8 * v17++) animated:*(a1 + 56) completion:{0, v19}];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v15);
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)dismissAllTransientOverlayPresentationsAnimated:(BOOL)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__SBMainWorkspace_dismissAllTransientOverlayPresentationsAnimated___block_invoke;
  v4[3] = &__block_descriptor_33_e42_v16__0__SBMainWorkspaceTransitionRequest_8l;
  v5 = a3;
  return [(SBMainWorkspace *)self requestTransitionWithOptions:0 builder:v4 validator:&__block_literal_global_800];
}

void __67__SBMainWorkspace_dismissAllTransientOverlayPresentationsAnimated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEventLabelWithFormat:@"DismissAllFromLock"];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__SBMainWorkspace_dismissAllTransientOverlayPresentationsAnimated___block_invoke_2;
  v4[3] = &__block_descriptor_33_e54_v16__0__SBWorkspaceTransientOverlayTransitionContext_8l;
  v5 = *(a1 + 32);
  [v3 modifyTransientOverlayContext:v4];
}

void __67__SBMainWorkspace_dismissAllTransientOverlayPresentationsAnimated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTransitionType:1];
  [v3 setAnimated:*(a1 + 32)];
}

- (BOOL)dismissTransientOverlayViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [[SBWorkspaceTransientOverlay alloc] initWithViewController:v8];
  v11 = [v8 _fbsDisplayConfiguration];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__SBMainWorkspace_dismissTransientOverlayViewController_animated_completion___block_invoke;
  v16[3] = &unk_2783AA2E0;
  v17 = v8;
  v18 = v10;
  v20 = a4;
  v19 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  LOBYTE(self) = [(SBMainWorkspace *)self requestTransitionWithOptions:0 displayConfiguration:v11 builder:v16 validator:&__block_literal_global_807];

  return self;
}

void __77__SBMainWorkspace_dismissTransientOverlayViewController_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setEventLabelWithFormat:@"DismissTransientOverlay = %@", v5];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SBMainWorkspace_dismissTransientOverlayViewController_animated_completion___block_invoke_2;
  v9[3] = &unk_2783AA298;
  v10 = *(a1 + 40);
  v12 = *(a1 + 56);
  v11 = *(a1 + 32);
  [v3 modifyTransientOverlayContext:v9];
  [v3 modifyApplicationContext:&__block_literal_global_805];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__SBMainWorkspace_dismissTransientOverlayViewController_animated_completion___block_invoke_4;
  v7[3] = &unk_2783A9C70;
  v8 = *(a1 + 48);
  v6 = [v3 addCompletionHandler:v7];
}

void __77__SBMainWorkspace_dismissTransientOverlayViewController_animated_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTransitionType:1];
  [v3 setTransientOverlay:*(a1 + 32)];
  [v3 setAnimated:*(a1 + 48)];
  [v3 setShouldPreserveAppSwitcher:{objc_msgSend(*(a1 + 40), "preservesAppSwitcherDuringPresentationAndDismissal")}];
}

uint64_t __77__SBMainWorkspace_dismissTransientOverlayViewController_animated_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)presentTransientOverlayViewController:(id)a3 originatingProcess:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [[SBWorkspaceTransientOverlay alloc] initWithViewController:v10];
  if ([v10 prefersContinuityDisplayPresentation] && +[SBContinuitySessionManager areContinuitySessionsAllowed](SBContinuitySessionManager, "areContinuitySessionsAllowed"))
  {
    v14 = +[SBContinuitySessionManager sharedInstance];
    v15 = [v14 currentSession];

    if ([v15 state] == 11)
    {
      v16 = [v15 mainWindowScene];
      v17 = [v16 _fbsDisplayConfiguration];

      if (v17)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  if (![v10 prefersEmbeddedDisplayPresentation] || (-[SBMainWorkspace mainWindowScene](self, "mainWindowScene"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "_fbsDisplayConfiguration"), v17 = objc_claimAutoreleasedReturnValue(), v18, !v17))
  {
    v17 = [(SBTransientOverlayPresentationManager *)self->_transientOverlayPresentationManager defaultDisplayConfigurationForTransientOverlayPresentation];
  }

LABEL_10:
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __96__SBMainWorkspace_presentTransientOverlayViewController_originatingProcess_animated_completion___block_invoke;
  v25[3] = &unk_2783AA330;
  v26 = v10;
  v27 = v13;
  v30 = a5;
  v28 = v11;
  v29 = v12;
  v19 = v12;
  v20 = v11;
  v21 = v13;
  v22 = v10;
  v23 = [(SBMainWorkspace *)self requestTransitionWithOptions:0 displayConfiguration:v17 builder:v25 validator:&__block_literal_global_814];

  return v23;
}

void __96__SBMainWorkspace_presentTransientOverlayViewController_originatingProcess_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setEventLabelWithFormat:@"PresentTransientOverlay = %@", v5];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __96__SBMainWorkspace_presentTransientOverlayViewController_originatingProcess_animated_completion___block_invoke_2;
  v9[3] = &unk_2783AA308;
  v10 = *(a1 + 40);
  v13 = *(a1 + 64);
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  [v3 modifyTransientOverlayContext:v9];
  [v3 modifyApplicationContext:&__block_literal_global_812];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __96__SBMainWorkspace_presentTransientOverlayViewController_originatingProcess_animated_completion___block_invoke_4;
  v7[3] = &unk_2783A9C70;
  v8 = *(a1 + 56);
  v6 = [v3 addCompletionHandler:v7];
}

void __96__SBMainWorkspace_presentTransientOverlayViewController_originatingProcess_animated_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTransitionType:0];
  [v3 setTransientOverlay:*(a1 + 32)];
  [v3 setAnimated:*(a1 + 56)];
  [v3 setOriginatingProcess:*(a1 + 40)];
  [v3 setShouldPreserveAppSwitcher:{objc_msgSend(*(a1 + 48), "preservesAppSwitcherDuringPresentationAndDismissal")}];
  [v3 setShouldDismissSiriUponPresentation:{objc_msgSend(*(a1 + 48), "dismissesSiriForPresentation")}];
}

uint64_t __96__SBMainWorkspace_presentTransientOverlayViewController_originatingProcess_animated_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)_sharedInstanceWithNilCheckPolicy:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_defaultSiriWorkspaceTransitionOptions
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_transactionForTransitionRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CF0C00] descriptionForObject:v0];
  v2 = [v0 transitionRequest];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12(&dword_21ED4E000, v3, v4, "Prepared %{public}@ for transition request:\n%{public}@", v5, v6, v7, v8, v9);
}

- (void)_canExecuteTransitionRequest:(void *)a1 forExecution:.cold.1(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v2, v3, "Application scene '%{public}@' cannot be launched because it has outstanding termination assertions.", v4, v5, v6, v7, v8);
}

- (void)_canExecuteTransitionRequest:(void *)a1 forExecution:.cold.2(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v2, v3, "Application scene '%{public}@' cannot be launched because it has been uninstalled.", v4, v5, v6, v7, v8);
}

- (void)_generateIdleTimerBehaviorForReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)dismissPowerDownTransientOverlayWithCompletion:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBMainWorkspace dismissPowerDownTransientOverlayWithCompletion:]"];
  [v1 handleFailureInFunction:v0 file:@"SBWorkspace.m" lineNumber:2286 description:@"this call must be made on the main thread"];
}

- (void)setCurrentTransaction:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CF0C00] descriptionForObject:v0];
  v2 = [v0 transitionRequest];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12(&dword_21ED4E000, v3, v4, "Running %{public}@ for transition request:\n%{public}@", v5, v6, v7, v8, v9);
}

- (void)setCurrentTransaction:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v2 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)setCurrentTransaction:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBWorkspace.m" lineNumber:2372 description:{@"No publisher for window scene: %@; self: %@", a3, a2}];
}

- (void)_preflightTransitionRequest:(void *)a3 forExecution:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 uniqueIdentifier];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&dword_21ED4E000, a4, OS_LOG_TYPE_ERROR, "Attempted to launch an untrusted application scene %{public}@", a1, 0xCu);
}

- (void)_executeTransientOverlayTransitionRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_setCurrentTransactionForRequest:fallbackProvider:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_setCurrentTransactionForRequest:(uint64_t)a3 fallbackProvider:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBWorkspace.m" lineNumber:2940 description:{@"at this point we must have a transaction : request=%@", a3}];
}

- (void)_setCurrentTransactionForRequest:fallbackProvider:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_selectTransactionForReturningToTheLockScreenWithRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

- (void)_selectTransactionForAppActivationUnderMainScreenLockRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

- (void)setPipCoordinator:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __57__SBMainWorkspace_applicationProcessDidExit_withContext___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 bundleIdentifier];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v2, v3, "An application that SpringBoard is not tracking with bundle identifier %{public}@ just exited.", v4, v5, v6, v7, v8);
}

- (void)_updateActivationSettings:(char *)a1 forRequestWithOptions:clientProcess:application:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"settings != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_validateRequestToOpenApplication:options:origin:error:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"outError != nil" object:? file:? lineNumber:? description:?];
}

- (void)_handleOpenApplicationRequest:(char *)a1 options:activationSettings:origin:withResult:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"activationSettings != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_handleTrustedOpenRequestForApplication:options:activationSettings:origin:withResult:.cold.1()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[settings BOOLForActivationSetting:kSBAppActivationSettingFromTrustedSystemServiceRequest]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBMainWorkspace _handleTrustedOpenRequestForApplication:options:activationSettings:origin:withResult:]"];
    *buf = 138544130;
    v3 = v1;
    v4 = 2114;
    v5 = @"SBWorkspace.m";
    v6 = 1024;
    v7 = 5312;
    v8 = 2114;
    v9 = v0;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_handleTrustedOpenRequestForApplication:(char *)a1 options:activationSettings:origin:withResult:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"settings", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_handleTrustedOpenRequestForApplication:(char *)a1 options:activationSettings:origin:withResult:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"result", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_handleUntrustedOpenRequestForApplication:(void *)a1 options:(char *)a2 activationSettings:origin:withResult:.cold.1(void *a1, char *a2)
{
  v3 = [a1 stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_5_0();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"settings", v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_handleUntrustedOpenRequestForApplication:(char *)a1 options:activationSettings:origin:withResult:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"result", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_handleUserActionRequest:(char *)a1 options:activationSettings:origin:withResult:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"activationSettings", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_handleUserActionRequest:(char *)a1 options:activationSettings:origin:withResult:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"result", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)watchdogFired:(uint64_t *)a1 .cold.2(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_fault_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_FAULT, "Transaction watchdog fired: %{public}@", &v3, 0xCu);
}

- (void)transactionDidComplete:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBWorkspace.m" lineNumber:5806 description:{@"Not the same transaction: _currentTransaction = %p vs transaction = %p", *a1, a4}];
}

- (void)transactionDidComplete:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)transactionDidComplete:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)transientOverlayScenePresenter:(char *)a1 willPresentViewController:(uint64_t)a2 .cold.1(char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"transient overlay presenter has unknown windowScene"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_5_0();
    v6 = NSStringFromClass(v5);
    v7 = 138544642;
    v8 = a1;
    v9 = 2114;
    v10 = v6;
    v11 = 2048;
    v12 = a2;
    v13 = 2114;
    v14 = @"SBWorkspace.m";
    v15 = 1024;
    v16 = 5981;
    v17 = 2114;
    v18 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end