@interface SBMainWorkspace
+ (id)_sharedInstanceWithNilCheckPolicy:(int64_t)policy;
+ (id)debugDescription;
+ (id)start;
- (BOOL)_applicationProcessExited:(id)exited withContext:(id)context;
- (BOOL)_canAppWithBundleIdentifier:(id)identifier requestMovingContentToSceneOpenApplicationOptions:(id)options;
- (BOOL)_canExecuteTransitionRequest:(id)request forExecution:(BOOL)execution;
- (BOOL)_canImplicitlyUnlockAtLockScreenWhileAuthenticatedFromOrigin:(id)origin givenOrigin:(id)givenOrigin trustedRequest:(BOOL)request outReason:(id *)reason;
- (BOOL)_executeApplicationTransitionRequest:(id)request;
- (BOOL)_executeTransientOverlayTransitionRequest:(id)request;
- (BOOL)_executeTransitionRequest:(id)request options:(unint64_t)options validator:(id)validator;
- (BOOL)_handleSetupExited:(id)exited;
- (BOOL)_isLaunchingApplicationAfterSetupForRequestWithBundleIdentifier:(id)identifier options:(id)options origin:(id)origin;
- (BOOL)_preflightTransitionRequest:(id)request forExecution:(BOOL)execution;
- (BOOL)_removeApplicationEntitiesFromWorkspace:(id)workspace error:(id *)error;
- (BOOL)_setCurrentTransactionForRequest:(id)request fallbackProvider:(id)provider;
- (BOOL)dismissAllTransientOverlayPresentationsAnimated:(BOOL)animated;
- (BOOL)dismissTransientOverlayPresentationsAnimated:(BOOL)animated windowScene:(id)scene filter:(id)filter;
- (BOOL)dismissTransientOverlayViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)executeTransitionRequest:(id)request;
- (BOOL)executeTransitionRequest:(id)request withValidator:(id)validator;
- (BOOL)isApplicationRunningAsViewService:(id)service;
- (BOOL)isKeyboardVisibleForSpringBoardForTransientOverlayScenePresenter:(id)presenter;
- (BOOL)presentTransientOverlayViewController:(id)controller originatingProcess:(id)process animated:(BOOL)animated completion:(id)completion;
- (BOOL)requestTransitionWithBuilder:(id)builder;
- (BOOL)requestTransitionWithOptions:(unint64_t)options builder:(id)builder validator:(id)validator;
- (BOOL)requestTransitionWithOptions:(unint64_t)options displayConfiguration:(id)configuration builder:(id)builder;
- (BOOL)requestTransitionWithOptions:(unint64_t)options displayConfiguration:(id)configuration builder:(id)builder validator:(id)validator;
- (BOOL)transientOverlayScenePresenter:(id)presenter shouldResignFirstResponderForKeyWindow:(id)window;
- (NSString)debugDescription;
- (SBIdleTimerProviding)_activeIdleTimerProvider;
- (SBMainWorkspace)init;
- (SBMainWorkspace)initWithEventQueue:(id)queue;
- (id)_alertItemForPreventingLaunchOfApp:(id)app fromTrustState:(unint64_t)state;
- (id)_applicationForIdentifier:(id)identifier;
- (id)_generateIdleTimerBehaviorForReason:(id)reason;
- (id)_handlerForExtensionPoint:(id)point;
- (id)_parseShellArguments:(id)arguments;
- (id)_sceneComparatorForApplication:(id)application keyboardFocusScene:(id)scene;
- (id)_selectTransactionForAppActivationRequest:(id)request;
- (id)_selectTransactionForAppActivationUnderMainScreenLock:(id)lock withResult:(id)result;
- (id)_selectTransactionForAppActivationUnderMainScreenLockRequest:(id)request;
- (id)_selectTransactionForAppEntityRemoved:(id)removed;
- (id)_selectTransactionForAppRelaunch:(id)relaunch;
- (id)_selectTransactionForReturningToTheLockScreenAndForceToBuddy:(BOOL)buddy;
- (id)_selectTransactionForReturningToTheLockScreenWithRequest:(id)request;
- (id)_selectTransactionForTransientOverlayPresentationRequest:(id)request;
- (id)_targetWindowSceneForApplication:(id)application options:(id)options settings:(id)settings requireForeground:(BOOL)foreground targetDisplayConfiguration:(id *)configuration error:(id *)error;
- (id)_targetWindowSceneForApplication:(id)application preferringDisplay:(id)display requireForeground:(BOOL)foreground options:(id)options;
- (id)_transactionForTransitionRequest:(id)request;
- (id)_validateRequestToOpenApplication:(id)application options:(id)options origin:(id)origin error:(id *)error;
- (id)bannerLongLookPresentationObservationTokenForTransientOverlayScenePresenter:(id)presenter;
- (id)controlCenterPresentationObservationTokenForTransientOverlayScenePresenter:(id)presenter;
- (id)createRequestForApplicationActivation:(id)activation options:(unint64_t)options;
- (id)createRequestForApplicationActivation:(id)activation withDisplayConfiguration:(id)configuration options:(unint64_t)options;
- (id)createRequestWithOptions:(unint64_t)options displayConfiguration:(id)configuration;
- (id)currentStatusBarSettingsForTransientOverlayScenePresenter:(id)presenter;
- (id)idleTimerProvider:(id)provider didProposeBehavior:(id)behavior forReason:(id)reason;
- (id)inCallPresentationManager:(id)manager createPresentationSessionWithSceneHandle:(id)handle;
- (id)siriPresentationObservationTokenForTransientOverlayScenePresenter:(id)presenter;
- (id)systemServiceApplicationInfoProvider:(id)provider;
- (id)transientOverlayScenePresenter:(id)presenter acquireBannerLongLookWindowLevelAssertionWithReason:(id)reason windowLevel:(double)level;
- (id)transientOverlayScenePresenter:(id)presenter acquireControlCenterWindowLevelAssertionWithReason:(id)reason windowLevel:(double)level;
- (id)transientOverlayScenePresenter:(id)presenter acquireDisableAutoUnlockAssertionWithReason:(id)reason;
- (id)transientOverlayScenePresenter:(id)presenter acquireHideAppStatusBarAssertionWithReason:(id)reason animated:(BOOL)animated;
- (id)transientOverlayScenePresenter:(id)presenter acquireInteractiveScreenshotGestureDisabledAssertionWithReason:(id)reason;
- (id)transientOverlayScenePresenter:(id)presenter acquireProximitySensorEnabledAssertionWithReason:(id)reason;
- (id)transientOverlayScenePresenter:(id)presenter acquireSiriWindowLevelAssertionWithReason:(id)reason windowLevel:(double)level;
- (id)transientOverlayScenePresenter:(id)presenter acquireWallpaperAnimationSuspensionAssertionWithReason:(id)reason;
- (id)transientOverlayScenePresenter:(id)presenter newSceneDeactivationAssertionWithReason:(int64_t)reason;
- (int64_t)inCallPresentationManager:(id)manager interfaceOrientationForBannerPresentationInWindowScene:(id)scene;
- (int64_t)inCallPresentationManager:(id)manager interfaceOrientationForTransientOverlayPresentationInWindowScene:(id)scene;
- (unint64_t)_defaultSiriWorkspaceTransitionOptions;
- (unint64_t)_siriWorkspaceTransitionOptionsFromOpenApplicationOptions:(id)options;
- (unint64_t)defaultSupportedInterfaceOrientationsForTransientOverlayScenePresenter:(id)presenter;
- (void)_addRequestCompletionBlock:(id)block toTransaction:(id)transaction;
- (void)_addStateCaptureHandlers;
- (void)_attemptUnlockToApplication:(id)application showPasscode:(BOOL)passcode origin:(id)origin givenOrigin:(id)givenOrigin options:(id)options completion:(id)completion;
- (void)_broadcastCurrentTransaction;
- (void)_cleanupAppRepairRequest:(id)request;
- (void)_cleanupForRemovedAppEntity:(id)entity;
- (void)_defaultSiriWorkspaceTransitionOptions;
- (void)_destroyApplicationSceneEntity:(id)entity;
- (void)_determineSourceForTransitionRequest:(id)request;
- (void)_dismissPresentedControlCenterModule:(id)module;
- (void)_executeSuspendedTransactionForRequest:(id)request;
- (void)_finishInitialization;
- (void)_handleBuddyLaunchFinished;
- (void)_handleOpenApplicationRequest:(id)request options:(id)options activationSettings:(id)settings origin:(id)origin withResult:(id)result;
- (void)_handleTrustedOpenRequestForApplication:(id)application options:(id)options activationSettings:(id)settings origin:(id)origin withResult:(id)result;
- (void)_handleUntrustedOpenRequestForApplication:(id)application options:(id)options activationSettings:(id)settings origin:(id)origin withResult:(id)result;
- (void)_handleUserActionRequest:(id)request options:(id)options activationSettings:(id)settings origin:(id)origin withResult:(id)result;
- (void)_initializeAndObserveDefaults;
- (void)_noteDidWakeFromSleep;
- (void)_proposeIdleTimerBehaviorForReason:(id)reason;
- (void)_removeApplicationEntities:(id)entities withDestructionIntent:(id)intent completion:(id)completion;
- (void)_resume;
- (void)_suspend;
- (void)_updateActivationSettings:(id)settings forRequestWithOptions:(id)options clientProcess:(id)process application:(id)application;
- (void)applicationProcessDebuggingStateDidChange:(id)change;
- (void)applicationProcessDidExit:(id)exit withContext:(id)context;
- (void)applicationProcessDidLaunch:(id)launch;
- (void)applicationProcessWillLaunch:(id)launch;
- (void)backlightController:(id)controller didAnimateBacklightToFactor:(float)factor source:(int64_t)source;
- (void)controlCenterModuleTransientOverlayViewControllerNeedsDismissal:(id)dismissal;
- (void)dealloc;
- (void)dismissPowerDownTransientOverlayWithCompletion:(id)completion;
- (void)powerDownViewControllerDidDisappear:(id)disappear;
- (void)powerDownViewControllerRequestsPowerDown:(id)down;
- (void)presentModuleWithIdentifier:(id)identifier options:(id)options completion:(id)completion;
- (void)presentPowerDownTransientOverlay;
- (void)process:(id)process stateDidChangeFromState:(id)state toState:(id)toState;
- (void)processManager:(id)manager didAddProcess:(id)process;
- (void)registerHandler:(id)handler forExtensionPoint:(id)point;
- (void)setCurrentTransaction:(id)transaction;
- (void)setPipCoordinator:(id)coordinator;
- (void)systemService:(id)service canActivateApplication:(id)application withResult:(id)result;
- (void)systemService:(id)service handleActions:(id)actions origin:(id)origin withResult:(id)result;
- (void)systemService:(id)service handleOpenApplicationRequest:(id)request withCompletion:(id)completion;
- (void)systemService:(id)service isPasscodeLockedOrBlockedWithResult:(id)result;
- (void)systemService:(id)service prepareForShutdownWithOptions:(id)options origin:(id)origin;
- (void)systemServicePrepareForExit:(id)exit andRelaunch:(BOOL)relaunch;
- (void)systemSleepMonitor:(id)monitor prepareForSleepWithCompletion:(id)completion;
- (void)systemSleepMonitorDidWakeFromSleep:(id)sleep;
- (void)systemSleepMonitorSleepRequestAborted:(id)aborted;
- (void)systemSleepMonitorWillWakeFromSleep:(id)sleep;
- (void)transactionDidComplete:(id)complete;
- (void)transientOverlayScenePresenter:(id)presenter didDismissViewController:(id)controller wasTopmostPresentation:(BOOL)presentation;
- (void)transientOverlayScenePresenter:(id)presenter preferredWhitePointAdaptivityStyleDidChangeWithAnimationSettings:(id)settings;
- (void)transientOverlayScenePresenter:(id)presenter registerCoverSheetExternalBehaviorProvider:(id)provider;
- (void)transientOverlayScenePresenter:(id)presenter unregisterCoverSheetExternalBehaviorProvider:(id)provider;
- (void)transientOverlayScenePresenter:(id)presenter willPresentViewController:(id)controller;
- (void)transientOverlayScenePresenterRequestsAppIconForceTouchDismissal:(id)dismissal animated:(BOOL)animated;
- (void)transientOverlayScenePresenterRequestsControlCenterDismissal:(id)dismissal animated:(BOOL)animated;
- (void)transientOverlayScenePresenterRequestsSiriDismissal:(id)dismissal animated:(BOOL)animated;
- (void)watchdogFired:(id)fired;
@end

@implementation SBMainWorkspace

- (SBIdleTimerProviding)_activeIdleTimerProvider
{
  accidentalActivationMitigationSessionCoordinator = [SBApp accidentalActivationMitigationSessionCoordinator];
  v3 = +[SBLockScreenManager sharedInstanceIfExists];
  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];
  v6 = [connectedWindowScenes bs_firstObjectPassingTest:&__block_literal_global_307];
  v7 = [connectedWindowScenes bs_firstObjectPassingTest:&__block_literal_global_309];
  modalLibraryController = [v6 modalLibraryController];
  sceneManager = [v6 sceneManager];
  v9 = objc_opt_class();
  v10 = sceneManager;
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

  sceneManager2 = [v7 sceneManager];
  v14 = objc_opt_class();
  v15 = sceneManager2;
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

  hasIdleTimerBehaviors = [accidentalActivationMitigationSessionCoordinator hasIdleTimerBehaviors];
  v19 = accidentalActivationMitigationSessionCoordinator;
  if ((hasIdleTimerBehaviors & 1) == 0)
  {
    p_transientOverlayPresentationManager = &self->_transientOverlayPresentationManager;
    if ([(SBTransientOverlayPresentationManager *)self->_transientOverlayPresentationManager hasIdleTimerBehaviors])
    {
LABEL_13:
      v19 = *p_transientOverlayPresentationManager;
      goto LABEL_17;
    }

    isUILocked = [v3 isUILocked];
    v19 = v3;
    if ((isUILocked & 1) == 0)
    {
      v22 = +[SBCoverSheetPresentationManager sharedInstance];
      isVisible = [v22 isVisible];

      v19 = v3;
      if ((isVisible & 1) == 0)
      {
        hasIdleTimerBehaviors2 = [modalLibraryController hasIdleTimerBehaviors];
        v19 = modalLibraryController;
        if ((hasIdleTimerBehaviors2 & 1) == 0)
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
              hasIdleTimerBehaviors3 = [v12 hasIdleTimerBehaviors];
              v19 = v12;
              if ((hasIdleTimerBehaviors3 & 1) == 0)
              {
                hasIdleTimerBehaviors4 = [v17 hasIdleTimerBehaviors];
                v19 = v17;
                if ((hasIdleTimerBehaviors4 & 1) == 0)
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

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SBWorkspaceDidWakeFromSleepNotification" object:0 userInfo:0];
}

+ (id)start
{
  v3 = SBLogWorkspace();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "[SBWorkspace] start", v6, 2u);
  }

  v4 = [self _sharedInstanceWithNilCheckPolicy:2];
  [v4 _resume];

  return v4;
}

+ (id)_sharedInstanceWithNilCheckPolicy:(int64_t)policy
{
  if (policy == 1)
  {
    if (!_sharedInstanceWithNilCheckPolicy____sharedInstance)
    {
      +[SBMainWorkspace _sharedInstanceWithNilCheckPolicy:];
    }
  }

  else if (policy == 2 && !_sharedInstanceWithNilCheckPolicy____sharedInstance)
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
  mEMORY[0x277D0AB20] = [MEMORY[0x277D0AB20] sharedInstance];
  v29.receiver = self;
  v29.super_class = SBMainWorkspace;
  v4 = [(SBWorkspace *)&v29 initWithEventQueue:mEMORY[0x277D0AB20]];

  if (v4)
  {
    v5 = [[SBIdleTimerCoordinatorHelper alloc] initWithSourceProvider:v4];
    idleTimerCoordinatorHelper = v4->_idleTimerCoordinatorHelper;
    v4->_idleTimerCoordinatorHelper = v5;

    mEMORY[0x277CFC870] = [MEMORY[0x277CFC870] sharedInstance];
    [mEMORY[0x277CFC870] registerEndpoint:v4];

    v8 = [SBTransientOverlayPresentationManager alloc];
    windowSceneManager = [SBApp windowSceneManager];
    v10 = +[SBAlertItemsController sharedInstance];
    v11 = +[SBLockStateAggregator sharedInstance];
    v12 = +[SBReachabilityManager sharedInstance];
    v13 = [(SBTransientOverlayPresentationManager *)v8 initWithWindowSceneManager:windowSceneManager alertItemsController:v10 lockStateAggregator:v11 reachabilityManager:v12];
    transientOverlayPresentationManager = v4->_transientOverlayPresentationManager;
    v4->_transientOverlayPresentationManager = v13;

    v15 = v4->_transientOverlayPresentationManager;
    bannerManager = [SBApp bannerManager];
    [(SBTransientOverlayPresentationManager *)v15 setBannerManager:bannerManager];

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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__coversheetDidPresent name:@"SBCoverSheetDidPresentNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel__coversheetDidDismiss name:@"SBCoverSheetDidDismissNotification" object:0];
    [(SBMainWorkspace *)v4 _suspend];
    monitorUsingMainQueue = [MEMORY[0x277D6C0A0] monitorUsingMainQueue];
    [monitorUsingMainQueue addObserver:v4];

    [(SBMainWorkspace *)v4 _initializeAndObserveDefaults];
    [(SBMainWorkspace *)v4 _addStateCaptureHandlers];
  }

  return v4;
}

- (SBMainWorkspace)initWithEventQueue:(id)queue
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBWorkspace.m" lineNumber:1788 description:@"just don't call this"];

  return [(SBMainWorkspace *)self init];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  mEMORY[0x277D0AB08] = [MEMORY[0x277D0AB08] sharedInstance];
  [mEMORY[0x277D0AB08] setDelegate:0];

  mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
  [mEMORY[0x277D0AAC0] removeObserver:self];

  [(SBPowerDownViewController *)self->_powerDownViewController setDelegate:0];
  if (self->_powerDownLongPressDurationAssertion)
  {
    homeHardwareButton = [SBApp homeHardwareButton];
    [homeHardwareButton removeLongPressDurationAssertion:self->_powerDownLongPressDurationAssertion];
  }

  [(BSEventQueueLock *)self->_currentTransactionLock relinquish];
  [(SBWindowSceneStatusBarSettingsAssertion *)self->_statusBarAssertion invalidate];
  v7.receiver = self;
  v7.super_class = SBMainWorkspace;
  [(SBMainWorkspace *)&v7 dealloc];
}

+ (id)debugDescription
{
  sharedInstance = [self sharedInstance];
  v3 = [sharedInstance debugDescription];

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
  selfCopy = self;
  v4 = v3;
  [v4 appendBodySectionWithName:0 multilinePrefix:0 block:&v7];
  build = [v4 build];

  return build;
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

- (id)createRequestWithOptions:(unint64_t)options displayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((options & 0x60) == 0)
  {
    options |= [(SBMainWorkspace *)self _defaultSiriWorkspaceTransitionOptions];
  }

  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
  _fbsDisplayConfiguration = [embeddedDisplayWindowScene _fbsDisplayConfiguration];

  v10 = [SBMainWorkspaceTransitionRequest alloc];
  v11 = v10;
  if ((options & 8) != 0)
  {
    copyForSecureRendering = [_fbsDisplayConfiguration copyForSecureRendering];
    v13 = [(SBMainWorkspaceTransitionRequest *)v11 initWithDisplayConfiguration:copyForSecureRendering];
  }

  else
  {
    if (configurationCopy)
    {
      v12 = configurationCopy;
    }

    else
    {
      v12 = _fbsDisplayConfiguration;
    }

    v13 = [(SBMainWorkspaceTransitionRequest *)v10 initWithDisplayConfiguration:v12];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__SBMainWorkspace_createRequestWithOptions_displayConfiguration___block_invoke;
  v16[3] = &__block_descriptor_40_e54_v16__0__SBWorkspaceApplicationSceneTransitionContext_8l;
  v16[4] = options;
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
  isSystemAssistantExperiencePersistentSiriEnabled = [v2 isSystemAssistantExperiencePersistentSiriEnabled];

  v4 = SBLogWorkspace();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (isSystemAssistantExperiencePersistentSiriEnabled)
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

- (id)createRequestForApplicationActivation:(id)activation options:(unint64_t)options
{
  v6.receiver = self;
  v6.super_class = SBMainWorkspace;
  v4 = [(SBWorkspace *)&v6 createRequestForApplicationActivation:activation options:options];

  return v4;
}

- (id)createRequestForApplicationActivation:(id)activation withDisplayConfiguration:(id)configuration options:(unint64_t)options
{
  v7.receiver = self;
  v7.super_class = SBMainWorkspace;
  v5 = [(SBWorkspace *)&v7 createRequestForApplicationActivation:activation withDisplayConfiguration:configuration options:options];

  return v5;
}

- (BOOL)requestTransitionWithBuilder:(id)builder
{
  v4.receiver = self;
  v4.super_class = SBMainWorkspace;
  return [(SBWorkspace *)&v4 requestTransitionWithBuilder:builder];
}

- (BOOL)requestTransitionWithOptions:(unint64_t)options builder:(id)builder validator:(id)validator
{
  v6.receiver = self;
  v6.super_class = SBMainWorkspace;
  return [(SBWorkspace *)&v6 requestTransitionWithOptions:options builder:builder validator:validator];
}

- (BOOL)requestTransitionWithOptions:(unint64_t)options displayConfiguration:(id)configuration builder:(id)builder
{
  v6.receiver = self;
  v6.super_class = SBMainWorkspace;
  return [(SBWorkspace *)&v6 requestTransitionWithOptions:options displayConfiguration:configuration builder:builder];
}

- (BOOL)requestTransitionWithOptions:(unint64_t)options displayConfiguration:(id)configuration builder:(id)builder validator:(id)validator
{
  v7.receiver = self;
  v7.super_class = SBMainWorkspace;
  return [(SBWorkspace *)&v7 requestTransitionWithOptions:options displayConfiguration:configuration builder:builder validator:validator];
}

- (BOOL)executeTransitionRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = SBMainWorkspace;
  return [(SBWorkspace *)&v4 executeTransitionRequest:request];
}

- (BOOL)executeTransitionRequest:(id)request withValidator:(id)validator
{
  v5.receiver = self;
  v5.super_class = SBMainWorkspace;
  return [(SBWorkspace *)&v5 executeTransitionRequest:request withValidator:validator];
}

- (id)_transactionForTransitionRequest:(id)request
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (!self->_currentTransaction)
  {
    eventQueue = [(SBWorkspace *)self eventQueue];
    executingEvent = [eventQueue executingEvent];

    if (!executingEvent)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBWorkspace.m" lineNumber:1963 description:@"must be called from a transaction or on a workspace event"];
    }
  }

  transientOverlayContext = [requestCopy transientOverlayContext];
  if (transientOverlayContext)
  {
    [(SBMainWorkspace *)self _selectTransactionForTransientOverlayPresentationRequest:requestCopy];
  }

  else
  {
    [(SBMainWorkspace *)self _selectTransactionForAppActivationRequest:requestCopy];
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
      transitionRequest = [v10 transitionRequest];
      compactDescriptionBuilder = [transitionRequest compactDescriptionBuilder];
      build = [compactDescriptionBuilder build];
      v19 = 138543618;
      v20 = v14;
      v21 = 2114;
      v22 = build;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "Prepared %{public}@ for transition request:\n%{public}@", &v19, 0x16u);
    }
  }

  return v10;
}

- (BOOL)_canExecuteTransitionRequest:(id)request forExecution:(BOOL)execution
{
  executionCopy = execution;
  v62 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = SBLogWorkspace();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    succinctDescription = [requestCopy succinctDescription];
    *buf = 138412290;
    v61 = succinctDescription;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Can execute transition request: %@", buf, 0xCu);
  }

  if (![(SBMainWorkspace *)self _preflightTransitionRequest:requestCopy forExecution:executionCopy])
  {
    [requestCopy declineWithReason:@"Failed preflight"];
    v17 = 0;
    goto LABEL_48;
  }

  [(SBMainWorkspace *)self _determineSourceForTransitionRequest:requestCopy];
  v9 = +[SBSceneManagerCoordinator sharedInstance];
  displayIdentity = [requestCopy displayIdentity];
  v11 = [v9 sceneManagerForDisplayIdentity:displayIdentity];

  policyAggregator = [v11 policyAggregator];
  LOBYTE(displayIdentity) = [policyAggregator allowsTransitionRequest:requestCopy];

  if ((displayIdentity & 1) == 0)
  {
    [requestCopy declineWithReason:@"Vetoed by policy aggregator."];
    v17 = 0;
    goto LABEL_47;
  }

  v13 = +[SBSOSEventHandler sharedInstance];
  isSOSActive = [v13 isSOSActive];

  applicationContext = [requestCopy applicationContext];
  v54 = isSOSActive;
  if ([applicationContext requestedUnlockedEnvironmentMode] == 2)
  {
    if (isSOSActive)
    {
      applicationSceneEntities = [MEMORY[0x277CCACA8] stringWithFormat:@"Requesting app switcher while SOS is active"];
      [requestCopy declineWithReason:applicationSceneEntities];
LABEL_8:
      v17 = 0;
      goto LABEL_46;
    }

    windowSceneManager = [SBApp windowSceneManager];
    displayIdentity2 = [requestCopy displayIdentity];
    applicationSceneEntities = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity2];

    transientOverlayPresenter = [applicationSceneEntities transientOverlayPresenter];
    topmostPresentedViewController = [transientOverlayPresenter topmostPresentedViewController];

    if (topmostPresentedViewController)
    {
      switcherController = [applicationSceneEntities switcherController];
      v23 = [[SBWorkspaceTransientOverlay alloc] initWithViewController:topmostPresentedViewController];
      v24 = [switcherController appLayoutForWorkspaceTransientOverlay:v23];

      if (!v24)
      {
        v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requesting app switcher and presenting switcher ineligible view controller %@", topmostPresentedViewController];
        [requestCopy declineWithReason:v47];

        goto LABEL_8;
      }
    }

    isSOSActive = v54;
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
  applicationSceneEntities = [applicationContext applicationSceneEntities];
  v27 = [applicationSceneEntities countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (!v27)
  {
    v17 = 1;
    goto LABEL_46;
  }

  v28 = v27;
  v52 = v11;
  v53 = requestCopy;
  v51 = applicationContext;
  v29 = *v56;
  v30 = @"com.apple.PrintKit.Print-Center";
LABEL_19:
  v31 = 0;
  while (1)
  {
    if (*v56 != v29)
    {
      objc_enumerationMutation(applicationSceneEntities);
    }

    v32 = *(*(&v55 + 1) + 8 * v31);
    application = [v32 application];
    v34 = application;
    if (!application || [application isUninstalled])
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
      applicationContext = v51;
      [v51 sendActivationResultError:v44];

      requestCopy = v53;
      [v53 declineWithReason:v45];

      v17 = 0;
      v11 = v52;
      goto LABEL_46;
    }

    bundleIdentifier = [v34 bundleIdentifier];
    if (isSOSActive && ([_canExecuteTransitionRequest_forExecution__canAppearOverSOSApps containsObject:bundleIdentifier] & 1) == 0)
    {
      v38 = applicationSceneEntities;
      registeredServicesSnapshot = [MEMORY[0x277CCACA8] stringWithFormat:@"Requesting application %@ while SOS active", bundleIdentifier];
      v48 = v53;
      v49 = registeredServicesSnapshot;
      goto LABEL_44;
    }

    if (![bundleIdentifier isEqualToString:v30])
    {
      goto LABEL_30;
    }

    v36 = v28;
    v37 = v30;
    v38 = applicationSceneEntities;
    v39 = +[SBAppSwitcherServiceManager sharedInstance];
    registeredServicesSnapshot = [v39 registeredServicesSnapshot];

    serviceBundleIdentifiers = [(__CFString *)registeredServicesSnapshot serviceBundleIdentifiers];
    v42 = [serviceBundleIdentifiers containsObject:bundleIdentifier];

    if ((v42 & 1) == 0)
    {
      break;
    }

    applicationSceneEntities = v38;
    isSOSActive = v54;
    v30 = v37;
    v28 = v36;
LABEL_30:

    if (v28 == ++v31)
    {
      v28 = [applicationSceneEntities countByEnumeratingWithState:&v55 objects:v59 count:16];
      v17 = 1;
      if (v28)
      {
        goto LABEL_19;
      }

      applicationContext = v51;
      v11 = v52;
      goto LABEL_45;
    }
  }

  v49 = @"Service not registered";
  v48 = v53;
LABEL_44:
  [v48 declineWithReason:v49];

  v17 = 0;
  applicationContext = v51;
  v11 = v52;
  applicationSceneEntities = v38;
LABEL_45:
  requestCopy = v53;
LABEL_46:

LABEL_47:
LABEL_48:

  return v17;
}

- (id)idleTimerProvider:(id)provider didProposeBehavior:(id)behavior forReason:(id)reason
{
  providerCopy = provider;
  behaviorCopy = behavior;
  reasonCopy = reason;
  _activeIdleTimerProvider = [(SBMainWorkspace *)self _activeIdleTimerProvider];
  v12 = _activeIdleTimerProvider;
  if (_activeIdleTimerProvider == providerCopy)
  {
    v16 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper proposeIdleTimerBehavior:behaviorCopy fromProvider:providerCopy reason:reasonCopy];
  }

  else
  {
    if (_activeIdleTimerProvider != self->_activeIdleTimerProvider)
    {
      reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"SBWorkspaceActiveProviderChanged:%@", reasonCopy];
      v14 = [(SBMainWorkspace *)self _generateIdleTimerBehaviorForReason:reasonCopy];
      v15 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper proposeIdleTimerBehavior:v14 fromProvider:v12 reason:reasonCopy];
    }

    v16 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper updateProvider:providerCopy behavior:behaviorCopy reason:reasonCopy];
  }

  v17 = v16;
  [(SBMainWorkspace *)self _setActiveIdleTimerProvider:v12];

  return v17;
}

- (void)presentModuleWithIdentifier:(id)identifier options:(id)options completion:(id)completion
{
  identifierCopy = identifier;
  optionsCopy = options;
  completionCopy = completion;
  if (identifierCopy)
  {
    animatePresentation = [optionsCopy animatePresentation];
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__SBMainWorkspace_presentModuleWithIdentifier_options_completion___block_invoke;
    v16[3] = &unk_2783A9C48;
    objc_copyWeak(&v20, &location);
    v16[4] = self;
    v17 = identifierCopy;
    v18 = optionsCopy;
    v21 = animatePresentation;
    v19 = completionCopy;
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

- (void)_dismissPresentedControlCenterModule:(id)module
{
  moduleCopy = module;
  presentedControlCenterModuleTransientOverlayViewController = self->_presentedControlCenterModuleTransientOverlayViewController;
  if (presentedControlCenterModuleTransientOverlayViewController)
  {
    presentationOptions = [(SBControlCenterModuleTransientOverlayViewController *)presentedControlCenterModuleTransientOverlayViewController presentationOptions];
    animateDismissal = [presentationOptions animateDismissal];

    v8 = self->_presentedControlCenterModuleTransientOverlayViewController;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__SBMainWorkspace__dismissPresentedControlCenterModule___block_invoke;
    v9[3] = &unk_2783A9878;
    v9[4] = self;
    v10 = moduleCopy;
    [(SBMainWorkspace *)self dismissTransientOverlayViewController:v8 animated:animateDismissal completion:v9];
  }

  else if (moduleCopy)
  {
    (*(moduleCopy + 2))(moduleCopy, 1);
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

- (void)controlCenterModuleTransientOverlayViewControllerNeedsDismissal:(id)dismissal
{
  dismissalCopy = dismissal;
  presentationOptions = [dismissalCopy presentationOptions];
  if (presentationOptions)
  {
    presentationOptions2 = [dismissalCopy presentationOptions];
    animatePresentation = [presentationOptions2 animatePresentation];
  }

  else
  {
    animatePresentation = 1;
  }

  [(SBMainWorkspace *)self dismissTransientOverlayViewController:dismissalCopy animated:animatePresentation completion:0];
}

- (id)inCallPresentationManager:(id)manager createPresentationSessionWithSceneHandle:(id)handle
{
  handleCopy = handle;
  v6 = [SBInCallPresentationSession alloc];
  bannerManager = [SBApp bannerManager];
  v18 = +[SBLockScreenManager sharedInstance];
  v20 = +[SBSceneManagerCoordinator sharedInstance];
  sceneDeactivationManager = [v20 sceneDeactivationManager];
  v16 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v7 = +[SBBacklightController sharedInstance];
  keyboardFocusController = [(SBMainWorkspace *)self keyboardFocusController];
  v9 = SBApp;
  v10 = +[SBSetupManager sharedInstance];
  v11 = +[SBUIController sharedInstance];
  pipCoordinator = self->_pipCoordinator;
  lockOutController = [SBApp lockOutController];
  v15 = [(SBInCallPresentationSession *)v6 initWithSceneHandle:handleCopy workspace:self bannerManager:bannerManager lockScreenManager:v18 deactivationManager:sceneDeactivationManager mainSwitcherCoordinator:v16 backlightController:v7 keyboardFocusController:keyboardFocusController springBoard:v9 setupManager:v10 uiController:v11 pipCoordinator:pipCoordinator lockoutStateProvider:lockOutController];

  return v15;
}

- (int64_t)inCallPresentationManager:(id)manager interfaceOrientationForBannerPresentationInWindowScene:(id)scene
{
  sceneCopy = scene;
  if ([sceneCopy isMainDisplayWindowScene])
  {
    activeInterfaceOrientation = [SBApp activeInterfaceOrientation];
  }

  else
  {
    activeInterfaceOrientation = [sceneCopy interfaceOrientation];
  }

  v6 = activeInterfaceOrientation;

  return v6;
}

- (int64_t)inCallPresentationManager:(id)manager interfaceOrientationForTransientOverlayPresentationInWindowScene:(id)scene
{
  transientOverlayPresenter = [scene transientOverlayPresenter];
  v6 = [(SBMainWorkspace *)self defaultPreferredInterfaceOrientationForPresentationForTransientOverlayScenePresenter:transientOverlayPresenter];

  return v6;
}

- (void)_proposeIdleTimerBehaviorForReason:(id)reason
{
  reasonCopy = reason;
  _activeIdleTimerProvider = [(SBMainWorkspace *)self _activeIdleTimerProvider];
  [(SBMainWorkspace *)self _setActiveIdleTimerProvider:_activeIdleTimerProvider];
  v5 = [(SBMainWorkspace *)self _generateIdleTimerBehaviorForReason:reasonCopy];
  v6 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper proposeIdleTimerBehavior:v5 fromProvider:_activeIdleTimerProvider reason:reasonCopy];
}

- (id)_generateIdleTimerBehaviorForReason:(id)reason
{
  reasonCopy = reason;
  _activeIdleTimerProvider = [(SBMainWorkspace *)self _activeIdleTimerProvider];
  if (!_activeIdleTimerProvider)
  {
    [SBMainWorkspace _generateIdleTimerBehaviorForReason:];
  }

  v6 = [_activeIdleTimerProvider coordinatorRequestedIdleTimerBehavior:self];
  v7 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper updateProvider:_activeIdleTimerProvider behavior:v6 reason:reasonCopy];

  return v6;
}

- (void)presentPowerDownTransientOverlay
{
  v14[3] = *MEMORY[0x277D85DE8];
  if (!self->_powerDownViewController)
  {
    v3 = [SBPowerDownViewController alloc];
    windowSceneManager = [SBApp windowSceneManager];
    v5 = [(SBPowerDownViewController *)v3 initWithWindowSceneManager:windowSceneManager];
    powerDownViewController = self->_powerDownViewController;
    self->_powerDownViewController = v5;

    [(SBPowerDownViewController *)self->_powerDownViewController setDelegate:self];
    v7 = [[SBHomeHardwareButtonLongPressDurationAssertion alloc] initWithReason:@"SBPowerDownViewController" duration:5.0];
    powerDownLongPressDurationAssertion = self->_powerDownLongPressDurationAssertion;
    self->_powerDownLongPressDurationAssertion = v7;

    homeHardwareButton = [SBApp homeHardwareButton];
    [homeHardwareButton addLongPressDurationAssertion:self->_powerDownLongPressDurationAssertion];

    authenticationController = [SBApp authenticationController];
    LODWORD(windowSceneManager) = [authenticationController hasPasscodeSet];

    if (windowSceneManager)
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

- (void)dismissPowerDownTransientOverlayWithCompletion:(id)completion
{
  v15[3] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
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
    v13 = completionCopy;
    v5 = MEMORY[0x223D6F7F0](v12);
    authenticationController = [SBApp authenticationController];
    hasPasscodeSet = [authenticationController hasPasscodeSet];

    if (hasPasscodeSet)
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

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __66__SBMainWorkspace_dismissPowerDownTransientOverlayWithCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = +[SBLockScreenManager sharedInstance];
  [v1 setPasscodeVisible:1 animated:1];
}

- (void)powerDownViewControllerRequestsPowerDown:(id)down
{
  v4 = [[SBShutdownContext alloc] initWithReason:@"Powerdown UI"];
  [(SBShutdownContext *)v4 setFromUserPowerDown:1];
  restartManager = [SBApp restartManager];
  [restartManager shutdownWithContext:v4];
}

- (void)powerDownViewControllerDidDisappear:(id)disappear
{
  powerDownViewController = self->_powerDownViewController;
  self->_powerDownViewController = 0;

  homeHardwareButton = [SBApp homeHardwareButton];
  [homeHardwareButton removeLongPressDurationAssertion:self->_powerDownLongPressDurationAssertion];

  powerDownLongPressDurationAssertion = self->_powerDownLongPressDurationAssertion;
  self->_powerDownLongPressDurationAssertion = 0;
}

- (void)setCurrentTransaction:(id)transaction
{
  v43 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  if (self->_currentTransaction != transactionCopy)
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

    if (transactionCopy)
    {
      v38 = a2;
      objc_storeStrong(&self->_currentTransaction, transaction);
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
          v15 = [MEMORY[0x277CF0C00] descriptionForObject:transactionCopy];
          transitionRequest = [(SBWorkspaceTransaction *)transactionCopy transitionRequest];
          compactDescriptionBuilder = [transitionRequest compactDescriptionBuilder];
          [compactDescriptionBuilder build];
          v17 = v37 = v7;
          *buf = 138543618;
          v40 = v15;
          v41 = 2114;
          v42 = v17;
          _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Running %{public}@ for transition request:\n%{public}@", buf, 0x16u);

          v7 = v37;
        }
      }

      eventQueue = [(SBWorkspace *)self eventQueue];
      v19 = [eventQueue acquireLockForReason:@"CurrentTransaction"];
      v20 = self->_currentTransactionLock;
      self->_currentTransactionLock = v19;

      transitionRequest2 = [(SBWorkspaceTransaction *)self->_currentTransaction transitionRequest];
      v22 = SBMainWorkspaceMapInternalTransitionSourceToExternalTransitionSource([transitionRequest2 source]);
      v23 = v22;
      v24 = @"SBWorkspace";
      if (v22)
      {
        v24 = v22;
      }

      v25 = v24;

      windowScene = [(SBWorkspaceTransaction *)transactionCopy windowScene];
      if (!windowScene)
      {
        [SBMainWorkspace setCurrentTransaction:];
      }

      displayLayoutPublisher = [windowScene displayLayoutPublisher];
      if (!displayLayoutPublisher)
      {
        [(SBMainWorkspace *)v38 setCurrentTransaction:windowScene];
      }

      v28 = [displayLayoutPublisher transitionAssertionWithReason:v25];

      v29 = self->_displayLayoutTransitionAssertion;
      self->_displayLayoutTransitionAssertion = v28;

      [(SBWorkspaceTransaction *)transactionCopy begin];
      if (([(SBWorkspaceTransaction *)transactionCopy isComplete]& 1) == 0)
      {
        v30 = +[SBPlatformController sharedInstance];
        isInternalInstall = [v30 isInternalInstall];

        if (isInternalInstall)
        {
          v32 = objc_alloc(MEMORY[0x277CF0D18]);
          queue = [(SBTransaction *)transactionCopy queue];
          v34 = [v32 initWithProvider:transactionCopy queue:queue];
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
  soundDefaults = [v2 soundDefaults];
  __playSoundOnWake = [soundDefaults playSoundOnDeviceWake];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"playSoundOnDeviceWake"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__SBMainWorkspace__initializeAndObserveDefaults__block_invoke;
  v19[3] = &unk_2783A8C18;
  v20 = soundDefaults;
  v5 = soundDefaults;
  v6 = MEMORY[0x277D85CD0];
  v7 = [v5 observeDefault:v4 onQueue:MEMORY[0x277D85CD0] withBlock:v19];

  powerDefaults = [v2 powerDefaults];
  SBWorkspaceSetPreventIdleSleepForReason([powerDefaults disableIdleSleep], @"SBPowerDefaults");
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"disableIdleSleep"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__SBMainWorkspace__initializeAndObserveDefaults__block_invoke_2;
  v17[3] = &unk_2783A8C18;
  v10 = powerDefaults;
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

- (void)_executeSuspendedTransactionForRequest:(id)request
{
  requestCopy = request;
  if (!self->_activeSuspendedWorkspaceTransitions)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeSuspendedWorkspaceTransitions = self->_activeSuspendedWorkspaceTransitions;
    self->_activeSuspendedWorkspaceTransitions = v5;
  }

  v7 = [(SBMainWorkspaceTransaction *)[SBSuspendedWorkspaceTransaction alloc] initWithTransitionRequest:requestCopy];
  [(NSMutableSet *)self->_activeSuspendedWorkspaceTransitions addObject:v7];
  transactionConfigurator = [requestCopy transactionConfigurator];
  v9 = transactionConfigurator;
  if (transactionConfigurator)
  {
    (*(transactionConfigurator + 16))(transactionConfigurator, v7);
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SBMainWorkspace__executeSuspendedTransactionForRequest___block_invoke;
  v11[3] = &unk_2783A9CC0;
  v10 = requestCopy;
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

- (BOOL)_executeTransitionRequest:(id)request options:(unint64_t)options validator:(id)validator
{
  v67 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  validatorCopy = validator;
  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    succinctDescription = [requestCopy succinctDescription];
    *buf = 138543362;
    v64 = succinctDescription;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Executing request: %{public}@", buf, 0xCu);
  }

  v11 = [(SBMainWorkspace *)self _canExecuteTransitionRequest:requestCopy forExecution:1];
  v12 = v11;
  if (v11)
  {
    v52 = v11;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v14 = v13;
    v49 = mach_continuous_time();
    currentTransaction = [(SBMainWorkspace *)self currentTransaction];
    source = [requestCopy source];
    applicationContext = [requestCopy applicationContext];
    isBackground = [applicationContext isBackground];

    v19 = 0;
    v20 = 0;
    if ((isBackground & 1) == 0 && source != 14)
    {
      if ([currentTransaction shouldInterceptTransitionRequest:requestCopy])
      {
        v20 = 0;
        v19 = 1;
      }

      else
      {
        v20 = [currentTransaction canInterruptForTransitionRequest:requestCopy];
        v19 = 0;
      }
    }

    v21 = currentTransaction;
    displayIdentity = [requestCopy displayIdentity];
    windowSceneManager = [SBApp windowSceneManager];
    v51 = displayIdentity;
    v24 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

    applicationContext2 = [requestCopy applicationContext];
    requestedUnlockedEnvironmentMode = [applicationContext2 requestedUnlockedEnvironmentMode];

    v50 = v24;
    v48 = source;
    if (requestedUnlockedEnvironmentMode == 2)
    {
      homeScreenController = [v24 homeScreenController];
      iconManager = [homeScreenController iconManager];

      currentTransitionAnimator = [iconManager currentTransitionAnimator];
      v30 = currentTransitionAnimator;
      if (currentTransitionAnimator)
      {
        v31 = validatorCopy;
        childViewController = [currentTransitionAnimator childViewController];
        objc_opt_class();
        v33 = (objc_opt_isKindOfClass() & 1) != 0 && [v30 currentOperation] == 1;

        validatorCopy = v31;
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
    eventLabel = [requestCopy eventLabel];
    succinctDescription2 = eventLabel;
    if (!eventLabel)
    {
      succinctDescription2 = [requestCopy succinctDescription];
    }

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __63__SBMainWorkspace__executeTransitionRequest_options_validator___block_invoke;
    v54[3] = &unk_2783A9D38;
    v53 = validatorCopy;
    v58 = validatorCopy;
    v38 = requestCopy;
    v55 = v38;
    selfCopy = self;
    v59 = v14;
    v60 = v49;
    v61 = v19;
    v39 = v34;
    v57 = v39;
    v62 = v20;
    v40 = [v35 eventWithName:succinctDescription2 handler:v54];
    if (!eventLabel)
    {
    }

    applicationContext3 = [v38 applicationContext];
    isBackground2 = [applicationContext3 isBackground];

    if (((v19 | v20 | v33) & 1) == 0 && !isBackground2)
    {
      if (v48 != 14)
      {
        v43 = +[SBReachabilityManager sharedInstance];
        [v43 deactivateReachability];
      }

      eventQueue = [(SBWorkspace *)self eventQueue];
      [eventQueue executeOrAppendEvent:v40];
LABEL_31:

      validatorCopy = v53;
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

      eventQueue = [(SBWorkspace *)self eventQueue];
      [eventQueue executeOrPrependEvent:v40];
      goto LABEL_31;
    }

    if (isBackground2)
    {
      v45 = SBLogWorkspace();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        name = [v40 name];
        *buf = 138543362;
        v64 = name;
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
    validatorCopy = v53;
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

- (id)_alertItemForPreventingLaunchOfApp:(id)app fromTrustState:(unint64_t)state
{
  v33 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v6 = appCopy;
  v7 = 0;
  if (state <= 5)
  {
    if (state - 3 >= 3)
    {
      if (state != 2)
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

  if (state <= 8)
  {
    if (state == 6)
    {
      v8 = SBAppProfileNeedsValidationAlertItem;
    }

    else
    {
      if (state != 7)
      {
        goto LABEL_22;
      }

      info = [appCopy info];
      if ([info isUPPProvisioningProfileValidated])
      {

LABEL_19:
        v8 = SBAppProfileNotTrustedAlertItem;
        goto LABEL_20;
      }

      info2 = [v6 info];
      isFreeDeveloperProvisioningProfileValidated = [info2 isFreeDeveloperProvisioningProfileValidated];

      if (!isFreeDeveloperProvisioningProfileValidated)
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

  if (state != 9)
  {
    if (state != 10)
    {
      goto LABEL_22;
    }

    v10 = [[SBAppDeveloperModeRequiredAlertItem alloc] initWithApplication:appCopy];
    goto LABEL_21;
  }

  v11 = objc_alloc(MEMORY[0x277CC1E70]);
  bundleIdentifier = [v6 bundleIdentifier];
  v13 = [v11 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];

  if (v13)
  {
    v14 = [v13 updateAvailability] == 1;
  }

  else
  {
    v14 = 0;
  }

  info3 = [v6 info];
  isProvisioningProfileValidated = [info3 isProvisioningProfileValidated];

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isOnDeviceAppInstallationAllowed = [mEMORY[0x277D262A0] isOnDeviceAppInstallationAllowed];

  info4 = [v6 info];
  isLicensedToDevice = [info4 isLicensedToDevice];

  v24 = SBLogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v26[0] = 67109888;
    v26[1] = v14;
    v27 = 1024;
    v28 = isProvisioningProfileValidated ^ 1;
    v29 = 1024;
    v30 = isOnDeviceAppInstallationAllowed;
    v31 = 1024;
    v32 = isLicensedToDevice;
    _os_log_debug_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEBUG, "Signature error: hasUpdateAvailable: %d, isAppStoreApp: %d, isAppInstallationAllowed: %d, isAppLicensedToDevice: %d", v26, 0x1Au);
  }

  if (isProvisioningProfileValidated & 1 | ((isOnDeviceAppInstallationAllowed & 1) == 0) | isLicensedToDevice & 1 | !v14)
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

- (BOOL)_preflightTransitionRequest:(id)request forExecution:(BOOL)execution
{
  v78 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  applicationContext = [requestCopy applicationContext];
  v68 = 0;
  isBackground = [applicationContext isBackground];
  v50 = requestCopy;
  displayIdentity = [requestCopy displayIdentity];
  windowSceneManager = [SBApp windowSceneManager];
  v58 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  v10 = +[SBSceneManagerCoordinator sharedInstance];
  v49 = displayIdentity;
  v11 = [v10 sceneManagerForDisplayIdentity:displayIdentity];

  v48 = v11;
  externalForegroundApplicationSceneHandles = [v11 externalForegroundApplicationSceneHandles];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v53 = applicationContext;
  obj = [applicationContext applicationSceneEntities];
  v13 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
  if (!v13)
  {
    goto LABEL_45;
  }

  v14 = v13;
  v15 = *v65;
  v56 = !execution | isBackground;
  selfCopy = self;
  v55 = externalForegroundApplicationSceneHandles;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v65 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v64 + 1) + 8 * i);
      sceneHandle = [v17 sceneHandle];
      application = [sceneHandle application];
      info = [application info];
      v21 = [v17 objectForActivationSetting:5];
      if (v68)
      {
LABEL_41:
        bundleIdentifier = [application bundleIdentifier];
        v41 = [bundleIdentifier isEqualToString:@"com.apple.TVRemote"];

        if (v41)
        {
          v42 = objc_alloc_init(SBLegacyTVRemoteAppLaunchDeniedAlertItem);
          v43 = +[SBAlertItemsController sharedInstance];
          [v43 activateAlertItem:v42];
        }

        goto LABEL_43;
      }

      if (([externalForegroundApplicationSceneHandles containsObject:sceneHandle] & 1) == 0 && _SBWorkspaceCanLaunchApplication(v17, isBackground, v21, v58, &v68))
      {
        if ([info supports64Bit])
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

        v22 = [[SBApplication32BitDeprecationAlertItem alloc] initWithApplication:application];
LABEL_14:
        if (!v68)
        {
          unauthoritativeTrustState = [info unauthoritativeTrustState];
          if (unauthoritativeTrustState != 8)
          {
            v24 = unauthoritativeTrustState;
            v51 = SBLogCommon();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              [(SBMainWorkspace *)v75 _preflightTransitionRequest:v17 forExecution:&v76, v51];
            }

            v68 = 3;
            if (v56)
            {
              externalForegroundApplicationSceneHandles = v55;
              goto LABEL_24;
            }

            v25 = [(SBMainWorkspace *)selfCopy _alertItemForPreventingLaunchOfApp:application fromTrustState:v24];

            v22 = v25;
          }

          externalForegroundApplicationSceneHandles = v55;
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

      if ([info isArcadeApplication])
      {
        executableURL = [info executableURL];
        [executableURL fileSystemRepresentation];
        mm0Euuzhc();
        if (v27)
        {
          v28 = v27;
          v29 = SBLogCommon();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            [application bundleIdentifier];
            v30 = v52 = executableURL;
            isBackground2 = [v53 isBackground];
            *buf = 67109634;
            v70 = v28;
            v71 = 2114;
            v72 = v30;
            v73 = 1024;
            v74 = isBackground2;
            _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_INFO, "Received FairPlay error %d while trying to launch Arcade app %{public}@ isBackground: %d", buf, 0x18u);

            executableURL = v52;
          }

          v32 = (v28 + 42587) > 3 || v28 == -42586;
          externalForegroundApplicationSceneHandles = v55;
          if (!v32)
          {
            v68 = 3;
            v33 = objc_alloc(MEMORY[0x277CEC478]);
            bundleIdentifier2 = [info bundleIdentifier];
            v35 = [v33 initWithBundleID:bundleIdentifier2];

            [v35 setExitReason:16];
            [v35 setIsBackground:{objc_msgSend(v53, "isBackground")}];
            if (v35)
            {
              ocelotRepairRequests = selfCopy->_ocelotRepairRequests;
              if (!ocelotRepairRequests)
              {
                v37 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v38 = selfCopy->_ocelotRepairRequests;
                selfCopy->_ocelotRepairRequests = v37;

                ocelotRepairRequests = selfCopy->_ocelotRepairRequests;
              }

              [(NSMutableSet *)ocelotRepairRequests addObject:v35];
              defaultService = [MEMORY[0x277CEC480] defaultService];
              v60[0] = MEMORY[0x277D85DD0];
              v60[1] = 3221225472;
              v60[2] = __60__SBMainWorkspace__preflightTransitionRequest_forExecution___block_invoke_376;
              v60[3] = &unk_2783A9D60;
              v60[4] = selfCopy;
              v61 = v35;
              [defaultService repairAppWithOptions:v61 replyHandler:v60];
            }

            externalForegroundApplicationSceneHandles = v55;
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

- (void)_determineSourceForTransitionRequest:(id)request
{
  requestCopy = request;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  source = [requestCopy source];
  v4 = v9[3];
  if (!v4)
  {
    applicationContext = [requestCopy applicationContext];
    applicationSceneEntities = [applicationContext applicationSceneEntities];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__SBMainWorkspace__determineSourceForTransitionRequest___block_invoke;
    v7[3] = &unk_2783A9D88;
    v7[4] = &v8;
    [applicationSceneEntities enumerateObjectsUsingBlock:v7];

    v4 = v9[3];
  }

  [requestCopy setSource:v4];
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

- (BOOL)_executeTransientOverlayTransitionRequest:(id)request
{
  requestCopy = request;
  eventQueue = [(SBWorkspace *)self eventQueue];
  executingEvent = [eventQueue executingEvent];

  if (!executingEvent)
  {
    [SBMainWorkspace _executeTransientOverlayTransitionRequest:];
  }

  transientOverlayContext = [requestCopy transientOverlayContext];
  applicationContext = [requestCopy applicationContext];
  if ([transientOverlayContext shouldPreserveAppSwitcher])
  {
    windowSceneManager = [SBApp windowSceneManager];
    displayIdentity = [requestCopy displayIdentity];
    v11 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];
    switcherController = [v11 switcherController];

    if (!switcherController)
    {
      v13 = SBLogCommon();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

      if (v14)
      {
        NSLog(&cfstr_ExpectedASwitc.isa);
      }
    }

    if ([switcherController unlockedEnvironmentMode] == 2)
    {
      [applicationContext setRequestedUnlockedEnvironmentMode:2];
    }
  }

  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__SBMainWorkspace__executeTransientOverlayTransitionRequest___block_invoke;
  v17[3] = &unk_2783A9DB0;
  objc_copyWeak(&v18, &location);
  v15 = [(SBMainWorkspace *)self _setCurrentTransactionForRequest:requestCopy fallbackProvider:v17];
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

- (BOOL)_executeApplicationTransitionRequest:(id)request
{
  v35 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  applicationContext = [requestCopy applicationContext];
  windowSceneManager = [SBApp windowSceneManager];
  displayIdentity = [requestCopy displayIdentity];
  v24 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  isBackground = [applicationContext isBackground];
  animationDisabled = [applicationContext animationDisabled];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [applicationContext applicationSceneEntities];
  v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = animationDisabled ^ 1;
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
        if (isBackground & 1 | ((v8 & 1) == 0) || ([*(*(&v30 + 1) + 8 * i) BOOLForActivationSetting:4] & 1) != 0)
        {
          v12 = 0;
        }

        else
        {
          v12 = [v11 BOOLForActivationSetting:1] ^ 1;
        }

        [v11 setFlag:BSSettingFlagForBool() forActivationSetting:1];
        [v11 setFlag:BSSettingFlagForBool() forActivationSetting:3];
        if (isBackground)
        {
          [applicationContext setWaitsForSceneUpdates:0];
        }

        else
        {
          if ([v11 flagForActivationSetting:44] == 0x7FFFFFFFFFFFFFFFLL)
          {
            +[SBAssistantController isVisible];
            [v11 setFlag:BSSettingFlagForBool() forActivationSetting:44];
          }

          homeScreenController = [v24 homeScreenController];
          areAnyIconViewContextMenusShowing = [homeScreenController areAnyIconViewContextMenusShowing];

          if (areAnyIconViewContextMenusShowing)
          {
            [v11 setFlag:1 forActivationSetting:27];
          }

          v15 = +[SBControlCenterCoordinator sharedInstanceIfExists];
          isVisible = [v15 isVisible];

          if (isVisible)
          {
            [v11 setFlag:1 forActivationSetting:45];
          }

          if (SBSpotlightIsVisible())
          {
            [v11 setFlag:1 forActivationSetting:26];
          }

          notificationDispatcher = [SBApp notificationDispatcher];
          bannerDestination = [notificationDispatcher bannerDestination];
          isPresentingBannerInLongLook = [bannerDestination isPresentingBannerInLongLook];

          if (isPresentingBannerInLongLook)
          {
            [v11 setFlag:1 forActivationSetting:28];
          }
        }

        v8 &= v12;
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
    animationDisabled = v8 ^ 1u;
  }

  [applicationContext setAnimationDisabled:animationDisabled];
  if (isBackground)
  {
    [(SBMainWorkspace *)self _executeSuspendedTransactionForRequest:requestCopy];
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
    v20 = [(SBMainWorkspace *)self _setCurrentTransactionForRequest:requestCopy fallbackProvider:v27];
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

- (BOOL)_setCurrentTransactionForRequest:(id)request fallbackProvider:(id)provider
{
  requestCopy = request;
  providerCopy = provider;
  eventQueue = [(SBWorkspace *)self eventQueue];
  executingEvent = [eventQueue executingEvent];

  if (!executingEvent)
  {
    [SBMainWorkspace _setCurrentTransactionForRequest:fallbackProvider:];
  }

  transactionProvider = [requestCopy transactionProvider];
  v12 = transactionProvider;
  if (transactionProvider)
  {
    v13 = (*(transactionProvider + 16))(transactionProvider, requestCopy);
    [requestCopy setTransactionProvider:0];
    if (!providerCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
    if (!providerCopy)
    {
      goto LABEL_9;
    }
  }

  if (!v13)
  {
    v13 = providerCopy[2](providerCopy, requestCopy);
  }

LABEL_9:
  if (!v13)
  {
    [(SBMainWorkspace *)a2 _setCurrentTransactionForRequest:requestCopy fallbackProvider:?];
  }

  transitionRequest = [v13 transitionRequest];

  if (transitionRequest != requestCopy)
  {
    [SBMainWorkspace _setCurrentTransactionForRequest:fallbackProvider:];
  }

  transactionConfigurator = [requestCopy transactionConfigurator];
  v16 = transactionConfigurator;
  if (transactionConfigurator)
  {
    (*(transactionConfigurator + 16))(transactionConfigurator, v13);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__SBMainWorkspace__setCurrentTransactionForRequest_fallbackProvider___block_invoke;
  v19[3] = &unk_2783A9398;
  v20 = requestCopy;
  v17 = requestCopy;
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

- (void)_addRequestCompletionBlock:(id)block toTransaction:(id)transaction
{
  blockCopy = block;
  transactionCopy = transaction;
  v7 = transactionCopy;
  if (blockCopy)
  {
    completionBlock = [transactionCopy completionBlock];
    v9 = [completionBlock copy];

    v10 = [blockCopy copy];
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

- (id)_selectTransactionForTransientOverlayPresentationRequest:(id)request
{
  requestCopy = request;
  transientOverlayContext = [requestCopy transientOverlayContext];
  transitionType = [transientOverlayContext transitionType];
  v6 = off_2783A28B8;
  if (transitionType)
  {
    v6 = off_2783A28A0;
  }

  v7 = [objc_alloc(*v6) initWithTransitionRequest:requestCopy];

  return v7;
}

- (id)_selectTransactionForReturningToTheLockScreenAndForceToBuddy:(BOOL)buddy
{
  v5 = [(SBMainWorkspace *)self createRequestWithOptions:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__SBMainWorkspace__selectTransactionForReturningToTheLockScreenAndForceToBuddy___block_invoke;
  v8[3] = &unk_2783A9E00;
  buddyCopy = buddy;
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

- (id)_selectTransactionForReturningToTheLockScreenWithRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    [SBMainWorkspace _selectTransactionForReturningToTheLockScreenWithRequest:];
  }

  v4 = +[SBLockScreenManager sharedInstance];
  lockScreenEnvironment = [v4 lockScreenEnvironment];
  v6 = [[SBReturnToLockscreenWorkspaceTransaction alloc] initWithTransitionRequest:requestCopy toLockScreenEnvironment:lockScreenEnvironment];

  return v6;
}

- (id)_selectTransactionForAppActivationUnderMainScreenLock:(id)lock withResult:(id)result
{
  lockCopy = lock;
  resultCopy = result;
  v8 = [(SBMainWorkspace *)self createRequestWithOptions:0];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __84__SBMainWorkspace__selectTransactionForAppActivationUnderMainScreenLock_withResult___block_invoke;
  v16 = &unk_2783A9E28;
  v17 = lockCopy;
  v18 = resultCopy;
  v9 = resultCopy;
  v10 = lockCopy;
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

- (id)_selectTransactionForAppActivationUnderMainScreenLockRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    [SBMainWorkspace _selectTransactionForAppActivationUnderMainScreenLockRequest:];
  }

  v4 = [SBActivateAppUnderLockScreenWorkspaceTransaction alloc];
  v5 = +[SBLockScreenManager sharedInstance];
  lockScreenEnvironment = [v5 lockScreenEnvironment];
  v7 = [(SBActivateAppUnderLockScreenWorkspaceTransaction *)v4 initWithTransitionRequest:requestCopy lockScreenEnvironment:lockScreenEnvironment];

  transitionRequest = [(SBWorkspaceTransaction *)v7 transitionRequest];

  return v7;
}

- (id)_selectTransactionForAppRelaunch:(id)relaunch
{
  relaunchCopy = relaunch;
  windowSceneManager = [SBApp windowSceneManager];
  sceneHandle = [relaunchCopy sceneHandle];
  displayIdentity = [sceneHandle displayIdentity];
  v8 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  uiLockStateProvider = [v8 uiLockStateProvider];
  v10 = uiLockStateProvider;
  if (uiLockStateProvider)
  {
    v11 = uiLockStateProvider;
  }

  else
  {
    v11 = +[SBLockScreenManager sharedInstance];
  }

  v12 = v11;

  if ([v12 isUILocked] && (objc_msgSend(relaunchCopy, "BOOLForActivationSetting:", 3) & 1) == 0)
  {
    v14 = [(SBMainWorkspace *)self _selectTransactionForAppActivationUnderMainScreenLock:relaunchCopy withResult:0];
  }

  else
  {
    v13 = [(SBMainWorkspace *)self createRequestForApplicationActivation:relaunchCopy options:4];
    v14 = [(SBMainWorkspace *)self _selectTransactionForAppActivationRequest:v13];
  }

  return v14;
}

- (id)_selectTransactionForAppEntityRemoved:(id)removed
{
  removedCopy = removed;
  sceneHandle = [removedCopy sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];
  settings = [sceneIfExists settings];
  sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager windowSceneForDisplayIdentity:sb_displayIdentityForSceneManagers];
  if (!embeddedDisplayWindowScene)
  {
    embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
  }

  lockOutController = [SBApp lockOutController];
  authenticationStatusProvider = [embeddedDisplayWindowScene authenticationStatusProvider];
  v13 = authenticationStatusProvider;
  if (authenticationStatusProvider)
  {
    authenticationController = authenticationStatusProvider;
  }

  else
  {
    authenticationController = [SBApp authenticationController];
  }

  v15 = authenticationController;

  if (([lockOutController isBlocked] & 1) != 0 || (objc_msgSend(v15, "isAuthenticated") & 1) == 0)
  {
    v22 = [(SBMainWorkspace *)self _selectTransactionForReturningToTheLockScreenAndForceToBuddy:0];
  }

  else
  {
    v16 = objc_alloc_init(SBMainWorkspaceLayoutStateContingencyPlan);
    switcherController = [embeddedDisplayWindowScene switcherController];
    v18 = [MEMORY[0x277CBEB98] setWithObject:removedCopy];
    v25 = v16;
    v19 = [(SBMainWorkspaceLayoutStateContingencyPlan *)v16 transitionContextForLayoutContext:switcherController failedEntities:v18];

    if (v19)
    {
      [v19 setAnimationDisabled:1];
      _fbsDisplayConfiguration = [embeddedDisplayWindowScene _fbsDisplayConfiguration];
      v21 = [(SBMainWorkspace *)self createRequestWithOptions:0 displayConfiguration:_fbsDisplayConfiguration];

      [v21 setApplicationContext:v19];
      v22 = [(SBToAppsWorkspaceTransaction *)[SBAppExitedWorkspaceTransaction alloc] initWithTransitionRequest:v21];
      transitionRequest = [(SBWorkspaceTransaction *)v22 transitionRequest];
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (id)_selectTransactionForAppActivationRequest:(id)request
{
  requestCopy = request;
  applicationContext = [requestCopy applicationContext];
  resolvedActivatingWorkspaceEntity = [applicationContext resolvedActivatingWorkspaceEntity];
  applicationSceneEntity = [resolvedActivatingWorkspaceEntity applicationSceneEntity];

  if ([applicationSceneEntity BOOLForActivationSetting:60])
  {
    v8 = [(SBMainWorkspace *)self _selectTransactionForAppActivationUnderMainScreenLockRequest:requestCopy];
  }

  else
  {
    windowSceneManager = [SBApp windowSceneManager];
    displayIdentity = [requestCopy displayIdentity];
    v11 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

    transientOverlayPresenter = [v11 transientOverlayPresenter];
    if ([transientOverlayPresenter hasActivePresentation] && (objc_msgSend(requestCopy, "shouldPreventDismissalOfUnrelatedTransientOverlays") & 1) == 0)
    {
      applicationContext2 = [requestCopy applicationContext];
      v15 = applicationContext2;
      if (applicationContext2)
      {
        v16 = [applicationContext2 animationDisabled] ^ 1;
      }

      else
      {
        v16 = 0;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __61__SBMainWorkspace__selectTransactionForAppActivationRequest___block_invoke;
      v21 = &unk_2783A9E50;
      v22 = transientOverlayPresenter;
      v23 = v16;
      [requestCopy modifyTransientOverlayContext:&v18];
      v13 = [(SBMainWorkspace *)self _selectTransactionForTransientOverlayPresentationRequest:requestCopy, v18, v19, v20, v21];
    }

    else
    {
      v13 = [[SBAppToAppWorkspaceTransaction alloc] initWithTransitionRequest:requestCopy];
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
    eventQueue = [(SBWorkspace *)self eventQueue];
    v4 = [v3 initWithEventQueue:eventQueue reason:@"SBWorkspaceSuspended"];
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
      eventQueue = [(SBWorkspace *)self eventQueue];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __26__SBMainWorkspace__resume__block_invoke;
      v8[3] = &unk_2783A8C18;
      v8[4] = self;
      v7 = [MEMORY[0x277CF0C30] eventWithName:@"SBWorkspaceFinishInitialization" handler:v8];
      [eventQueue executeOrInsertEvent:v7 atPosition:0];
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
    mEMORY[0x277D0AB08] = [MEMORY[0x277D0AB08] sharedInstance];
    [mEMORY[0x277D0AB08] setDelegate:self];

    v4 = +[SBBacklightController sharedInstance];
    [v4 addObserver:self];

    v5 = +[SBApplicationController sharedInstanceIfExists];
    mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
    [mEMORY[0x277D0AAC0] addObserver:self];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    allProcesses = [mEMORY[0x277D0AAC0] allProcesses];
    v8 = [allProcesses countByEnumeratingWithState:&v37 objects:v41 count:16];
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
            objc_enumerationMutation(allProcesses);
          }

          v12 = *(*(&v37 + 1) + 8 * i);
          [(SBMainWorkspace *)self processManager:mEMORY[0x277D0AAC0] didAddProcess:v12];
          if ([v12 isApplicationProcess] && objc_msgSend(v12, "isRunning"))
          {
            bundleIdentifier = [v12 bundleIdentifier];
            v14 = [v5 applicationWithBundleIdentifier:bundleIdentifier];

            [v14 _processWillLaunch:v12];
          }
        }

        v9 = [allProcesses countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v9);
    }

    v15 = [SBInCallPresentationManager alloc];
    windowSceneManager = [SBApp windowSceneManager];
    v17 = +[SBApplicationController sharedInstance];
    bannerManager = [SBApp bannerManager];
    v19 = [(SBInCallPresentationManager *)v15 initWithWindowSceneManager:windowSceneManager applicationController:v17 bannerManager:bannerManager];
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
    mEMORY[0x277CF0788] = [MEMORY[0x277CF0788] sharedInstance];
    v31 = +[SBSystemGestureManager mainDisplayManager];
    keyboardFocusController = [(SBMainWorkspace *)self keyboardFocusController];
    v33 = [(SBKeyboardDismissalManager *)v29 initWithTouchDeliveryService:mEMORY[0x277CF0788] systemGestureManager:v31 keyboardArbiterManager:v28 focusController:keyboardFocusController];
    keyboardDismissalManager = self->_keyboardDismissalManager;
    self->_keyboardDismissalManager = v33;

    v35 = +[SBKeyboardFocusCoordinator sharedInstance];
    v36 = +[SBKeyboardFocusArbitrationReason workspaceDidFinishInitialization];
    [v35 requestArbitrationForSBWindowScene:0 forReason:v36];
  }
}

- (void)setPipCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (self->_pipCoordinator)
  {
    [SBMainWorkspace setPipCoordinator:];
  }

  objc_storeStrong(&self->_pipCoordinator, coordinator);
  if (+[SBPIPPegasusAdapter isSupported])
  {
    v5 = objc_alloc_init(SBPIPPegasusAdapter);
    v6 = [SBPIPController alloc];
    v7 = *MEMORY[0x277D772B0] + 5.0 + 25.0;
    v8 = +[SBPIPSettingsDomain rootSettings];
    interactionSettings = [v8 interactionSettings];
    v10 = [(SBPIPController *)v6 initWithIdleTimerCoordinator:self windowLevel:interactionSettings interactionSettings:v5 adapter:v7];

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

  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
  systemPointerInteractionManager = [embeddedDisplayWindowScene systemPointerInteractionManager];

  v25 = [SBSystemNotesManager alloc];
  pipCoordinator = self->_pipCoordinator;
  v15 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
  v27 = +[SBSceneManagerCoordinator sharedInstance];
  sceneDeactivationManager = [v27 sceneDeactivationManager];
  v17 = +[SBKeyboardSuppressionManager sharedInstance];
  keyboardDismissalManager = self->_keyboardDismissalManager;
  v19 = +[SBApplicationController sharedInstance];
  v20 = +[SBSystemGestureManager mainDisplayManager];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v22 = [(SBSystemNotesManager *)v25 initWithControllerCoordinator:pipCoordinator workspace:self sceneManager:v15 keyboardArbiterManager:v28 fbSceneManager:mEMORY[0x277D0AAD8] sceneDeactivationManager:sceneDeactivationManager keyboardSuppressionManager:v17 keyboardDismissalManager:keyboardDismissalManager applicationController:v19 systemGestureManager:v20 systemPointerInteractionManager:systemPointerInteractionManager idleTimerCoordinator:self managedProfileConnection:mEMORY[0x277D262A0]];
  systemNotesManager = self->_systemNotesManager;
  self->_systemNotesManager = v22;
}

- (id)_applicationForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[SBApplicationController sharedInstanceIfExists];
  v5 = [v4 applicationWithBundleIdentifier:identifierCopy];

  return v5;
}

- (void)_handleBuddyLaunchFinished
{
  v20[3] = *MEMORY[0x277D85DE8];
  restartManager = [SBApp restartManager];
  v3 = restartManager;
  if (restartManager)
  {
    startupTransition = [restartManager startupTransition];
    if (startupTransition)
    {
    }

    else
    {
      v5 = +[SBSetupManager sharedInstance];
      isInSetupModeForDeviceMigration = [v5 isInSetupModeForDeviceMigration];

      if ((isInSetupModeForDeviceMigration & 1) == 0)
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
        setupDefaults = [v12 setupDefaults];
        LODWORD(v9) = [setupDefaults inSetupModeForActivationChange];

        if (v9)
        {
          v14 = [SBBuddyLockScreenDismissOnlyAlertItem alloc];
          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          v16 = [mainBundle localizedStringForKey:@"ACTIVATION_REQUIRED" value:@"Activation Required" table:@"SpringBoard"];
          v17 = [(SBDismissOnlyAlertItem *)v14 initWithTitle:v16 body:0];

          v18 = +[SBAlertItemsController sharedInstance];
          [v18 activateAlertItem:v17];
        }
      }
    }
  }
}

- (BOOL)_handleSetupExited:(id)exited
{
  v3 = +[SBSetupManager sharedInstance];
  [v3 updateInSetupMode];
  v4 = +[SBSyncController sharedInstance];
  if (![v3 isInSetupMode] || (objc_msgSend(v3, "isInSetupModeForDeviceMigration") & 1) != 0 || (objc_msgSend(v4, "isRestoring") & 1) != 0 || objc_msgSend(v4, "isResetting"))
  {
    bannerManager = [SBApp bannerManager];
    [bannerManager setSuspended:0 forReason:@"com.apple.purplebuddy"];

    v6 = +[SBSetupManager sharedInstance];
    [v6 setDeferringDeviceOrientationUpdates:0];

    v7 = +[SBOrientationLockManager sharedInstance];
    [v7 restoreStateFromPrefs];

    v8 = +[SBDefaults localDefaults];
    setupDefaults = [v8 setupDefaults];
    [setupDefaults setInSetupModeForActivationChange:0];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBSetupBuddyCompletedNotification" object:0];

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)_applicationProcessExited:(id)exited withContext:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  exitedCopy = exited;
  v8 = +[SBApplicationController sharedInstanceIfExists];
  bundleIdentifier = [exitedCopy bundleIdentifier];

  v10 = [v8 applicationWithBundleIdentifier:bundleIdentifier];

  if (v10)
  {
    v11 = +[SBApplicationController sharedInstance];
    setupApplication = [v11 setupApplication];

    v13 = v10 == setupApplication && [(SBMainWorkspace *)self _handleSetupExited:setupApplication];
    exitReason = [contextCopy exitReason];
    terminationReason = [contextCopy terminationReason];
    if ((FBSApplicationTerminationReasonIsGraceful() & 1) == 0 && terminationReason != 7 && (exitReason & 0x11) == 0)
    {
      bundleIdentifier2 = [v10 bundleIdentifier];
      v17 = [bundleIdentifier2 isEqualToString:@"com.apple.siri"];

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
        bundleIdentifier3 = [v10 bundleIdentifier];
        *buf = 138543362;
        v24 = bundleIdentifier3;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, "%{public}@ should relaunch on exit", buf, 0xCu);
      }
    }

    [v10 _didExitWithContext:contextCopy];
    if ((exitReason & 0x10) != 0)
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

- (void)_destroyApplicationSceneEntity:(id)entity
{
  entityCopy = entity;
  uniqueIdentifier = [entityCopy uniqueIdentifier];
  if (uniqueIdentifier)
  {
    application = [entityCopy application];
    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    v8 = [SBApplicationSceneHandle lookupOrCreatePersistenceIDFromApplication:application sceneID:uniqueIdentifier];
    if (v8 && ([application processState], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isRunning"), v9, v10))
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

    v15 = [mEMORY[0x277D0AAD8] sceneWithIdentifier:uniqueIdentifier];
    if (v15)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __50__SBMainWorkspace__destroyApplicationSceneEntity___block_invoke;
      v27[3] = &unk_2783A9E78;
      v28 = v14;
      [v15 invalidate:{v27, mEMORY[0x277D0AAD8]}];
    }

    else if (v14)
    {
      mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
      bundleIdentifier = [application bundleIdentifier];
      v18 = [mEMORY[0x277D0AAC0] applicationProcessesForBundleIdentifier:bundleIdentifier];
      lastObject = [v18 lastObject];

      workspace = [lastObject workspace];
      [workspace sendActions:v14];
    }

    else
    {
      [(SBMainWorkspace *)self _cleanupForRemovedAppEntity:entityCopy, mEMORY[0x277D0AAD8]];
    }

    [application flushSnapshotsForSceneID:uniqueIdentifier];
    _dataStore = [application _dataStore];
    [_dataStore removeSceneStoreForIdentifier:uniqueIdentifier];

    bundleIdentifier2 = [application bundleIdentifier];
    info = [application info];
    restorationArchiveContainerURL = [info restorationArchiveContainerURL];
    path = [restorationArchiveContainerURL path];
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

- (void)_cleanupForRemovedAppEntity:(id)entity
{
  v43 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  uniqueIdentifier = [entityCopy uniqueIdentifier];
  if (uniqueIdentifier)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    windowSceneManager = [SBApp windowSceneManager];
    connectedWindowScenes = [windowSceneManager connectedWindowScenes];

    v30 = [connectedWindowScenes countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (!v30)
    {
LABEL_22:

      goto LABEL_23;
    }

    selfCopy = self;
    v26 = entityCopy;
    v27 = 0;
    v28 = connectedWindowScenes;
    v29 = *v38;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(connectedWindowScenes);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        layoutStateProvider = [v9 layoutStateProvider];
        layoutState = [layoutStateProvider layoutState];
        elements = [layoutState elements];

        v13 = [elements countByEnumeratingWithState:&v33 objects:v41 count:16];
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
                objc_enumerationMutation(elements);
              }

              workspaceEntity = [*(*(&v33 + 1) + 8 * j) workspaceEntity];
              applicationSceneEntity = [workspaceEntity applicationSceneEntity];
              uniqueIdentifier2 = [applicationSceneEntity uniqueIdentifier];
              v20 = [uniqueIdentifier2 isEqualToString:uniqueIdentifier];

              if (v20)
              {
                v27 = 1;
                goto LABEL_17;
              }
            }

            v14 = [elements countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }

LABEL_17:
          connectedWindowScenes = v28;
        }
      }

      v30 = [connectedWindowScenes countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v30);

    entityCopy = v26;
    if (v27)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"ApplicationEntity was removed = %@", uniqueIdentifier];
      v22 = MEMORY[0x277D0AB18];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __47__SBMainWorkspace__cleanupForRemovedAppEntity___block_invoke;
      v31[3] = &unk_2783A92D8;
      v31[4] = selfCopy;
      v32 = v26;
      v23 = [v22 eventWithName:v21 handler:v31];
      connectedWindowScenes = v21;
      eventQueue = [(SBWorkspace *)selfCopy eventQueue];
      [eventQueue executeOrPrependEvent:v23];

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

- (void)_removeApplicationEntities:(id)entities withDestructionIntent:(id)intent completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  intentCopy = intent;
  completionCopy = completion;
  shouldRemoveFromHistory = [intentCopy shouldRemoveFromHistory];
  v31 = entitiesCopy;
  v12 = [MEMORY[0x277CBEB58] setWithSet:entitiesCopy];
  v13 = [MEMORY[0x277CBEB58] set];
  v14 = [(SBPIPControllerCoordinator *)self->_pipCoordinator controllerForType:0];
  hostedAppSceneHandles = [v14 hostedAppSceneHandles];
  [v13 addObjectsFromArray:hostedAppSceneHandles];

  v16 = [(SBPIPControllerCoordinator *)self->_pipCoordinator controllerForType:1];
  hostedAppSceneHandles2 = [v16 hostedAppSceneHandles];
  [v13 addObjectsFromArray:hostedAppSceneHandles2];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __79__SBMainWorkspace__removeApplicationEntities_withDestructionIntent_completion___block_invoke;
  v33[3] = &unk_2783A9EA0;
  v30 = v13;
  v34 = v30;
  v18 = [v12 bs_filter:v33];
  [v12 minusSet:v18];
  v19 = 0;
  if (shouldRemoveFromHistory)
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
    allObjects = [v19 allObjects];
    [v24 handleApplicationSceneEntityDestructionIntent:intentCopy forEntities:allObjects];

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

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v22 & v21, v27);
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

- (BOOL)_removeApplicationEntitiesFromWorkspace:(id)workspace error:(id *)error
{
  v84 = *MEMORY[0x277D85DE8];
  workspaceCopy = workspace;
  mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
  v5 = [MEMORY[0x277CBEB58] set];
  v50 = [MEMORY[0x277CBEB58] set];
  v49 = [MEMORY[0x277CBEB58] set];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = workspaceCopy;
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
        uniqueIdentifier = [*(*(&v72 + 1) + 8 * v6) uniqueIdentifier];
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        windowSceneManager = [SBApp windowSceneManager];
        connectedWindowScenes = [windowSceneManager connectedWindowScenes];

        v56 = connectedWindowScenes;
        v59 = [connectedWindowScenes countByEnumeratingWithState:&v68 objects:v82 count:16];
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
              layoutStateProvider = [v11 layoutStateProvider];
              layoutState = [layoutStateProvider layoutState];
              elements = [layoutState elements];

              v15 = [elements countByEnumeratingWithState:&v64 objects:v81 count:16];
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
                      objc_enumerationMutation(elements);
                    }

                    workspaceEntity = [*(*(&v64 + 1) + 8 * j) workspaceEntity];
                    applicationSceneEntity = [workspaceEntity applicationSceneEntity];
                    uniqueIdentifier2 = [applicationSceneEntity uniqueIdentifier];
                    v22 = [uniqueIdentifier2 isEqualToString:uniqueIdentifier];

                    if (v22)
                    {
                      [v57 addObject:uniqueIdentifier];
                      goto LABEL_21;
                    }
                  }

                  v16 = [elements countByEnumeratingWithState:&v64 objects:v81 count:16];
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
        if (([v57 containsObject:uniqueIdentifier] & 1) == 0)
        {
          v23 = [mEMORY[0x277D0AAD8] sceneWithIdentifier:uniqueIdentifier];
          v24 = v50;
          if (v23)
          {
            [v23 invalidate:0];
            v24 = v49;
          }

          [v24 addObject:uniqueIdentifier];
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
  allObjects = [v49 allObjects];
  v26 = [allObjects countByEnumeratingWithState:&v60 objects:v80 count:16];
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
        objc_enumerationMutation(allObjects);
      }

      v30 = *(*(&v60 + 1) + 8 * v29);
      v31 = [mEMORY[0x277D0AAD8] sceneWithIdentifier:v30];

      if (v31)
      {
        break;
      }

      if (v27 == ++v29)
      {
        v27 = [allObjects countByEnumeratingWithState:&v60 objects:v80 count:16];
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

  string = [MEMORY[0x277CCAB68] string];
  if ([v5 count])
  {
    [string appendString:@"The following scenes where not destroyed since they are laid out as foreground and we were asked to not remove their sessions (destroySessions flag is false): "];
    v40 = [v5 description];
    [string appendString:v40];
  }

  if ([v50 count])
  {
    [string appendString:@"\n The following scenes couldn't be found: "];
    v41 = [v50 description];
    [string appendString:v41];
  }

  if ([string length])
  {
    v42 = SBLogCommon();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      SBWorkspaceDestroyApplicationSceneHandlesWithIntent_cold_1();
    }

    v43 = MEMORY[0x277CCA9B8];
    v44 = SBMainWorkspaceErrorDomain;
    v76 = *MEMORY[0x277CCA068];
    v77 = string;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v37 = [v43 errorWithDomain:v44 code:2 userInfo:v45];
  }

  else
  {
    v37 = 0;
  }

  v38 = 1;
LABEL_52:
  if (error)
  {
    v46 = v37;
    *error = v37;
  }

  return v38;
}

- (void)_cleanupAppRepairRequest:(id)request
{
  [(NSMutableSet *)self->_ocelotRepairRequests removeObject:request];
  if (![(NSMutableSet *)self->_ocelotRepairRequests count])
  {
    ocelotRepairRequests = self->_ocelotRepairRequests;
    self->_ocelotRepairRequests = 0;
  }
}

- (BOOL)_isLaunchingApplicationAfterSetupForRequestWithBundleIdentifier:(id)identifier options:(id)options origin:(id)origin
{
  v14[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  originCopy = origin;
  v9 = [options objectForKey:*MEMORY[0x277D670E8]];
  if (v9)
  {
    v10 = [originCopy hasEntitlement:@"com.apple.springboard.launchAppAfterSetup"];

    if (v10)
    {
      v14[0] = @"com.apple.AppStore";
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      v12 = v11;
      if (identifierCopy)
      {
        LOBYTE(v9) = [v11 containsObject:identifierCopy];
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

- (id)_sceneComparatorForApplication:(id)application keyboardFocusScene:(id)scene
{
  applicationCopy = application;
  sceneCopy = scene;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__SBMainWorkspace__sceneComparatorForApplication_keyboardFocusScene___block_invoke;
  v11[3] = &unk_2783A9F08;
  v12 = applicationCopy;
  v13 = sceneCopy;
  v7 = sceneCopy;
  v8 = applicationCopy;
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

- (id)_targetWindowSceneForApplication:(id)application options:(id)options settings:(id)settings requireForeground:(BOOL)foreground targetDisplayConfiguration:(id *)configuration error:(id *)error
{
  foregroundCopy = foreground;
  v59 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  optionsCopy = options;
  v16 = [settings objectForActivationSetting:51];
  if (![v16 isEqualToString:*MEMORY[0x277D66EF8]])
  {
    v21 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D670D0] ofType:objc_opt_class()];
    if (![v21 length])
    {
      goto LABEL_27;
    }

    if ((SBFIsChamoisExternalDisplayControllerAvailable() & 1) != 0 || +[SBContinuitySessionManager areContinuitySessionsAllowed])
    {
      selfCopy = self;
      v49 = foregroundCopy;
      errorCopy = error;
      configurationCopy = configuration;
      v52 = v21;
      v53 = applicationCopy;
      v22 = v21;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      windowSceneManager = [SBApp windowSceneManager];
      connectedWindowScenes = [windowSceneManager connectedWindowScenes];

      v25 = [connectedWindowScenes countByEnumeratingWithState:&v54 objects:v58 count:16];
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
            objc_enumerationMutation(connectedWindowScenes);
          }

          _fbsDisplayConfiguration = [*(*(&v54 + 1) + 8 * v28) _fbsDisplayConfiguration];
          deviceName = [_fbsDisplayConfiguration deviceName];
          v31 = [deviceName isEqualToString:v22];

          if (v31)
          {
            break;
          }

          if (v26 == ++v28)
          {
            v26 = [connectedWindowScenes countByEnumeratingWithState:&v54 objects:v58 count:16];
            if (v26)
            {
              goto LABEL_11;
            }

            goto LABEL_17;
          }
        }

        v32 = _fbsDisplayConfiguration;
        if (!_fbsDisplayConfiguration)
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
        windowSceneManager2 = [SBApp windowSceneManager];
        connectedWindowScenes2 = [windowSceneManager2 connectedWindowScenes];
        allObjects = [connectedWindowScenes2 allObjects];
        v38 = [allObjects bs_mapNoNulls:&__block_literal_global_1243];

        v39 = MEMORY[0x277CCACA8];
        v40 = [v38 componentsJoinedByString:@"\n"];
        v33 = [v39 stringWithFormat:@"Connected displays device names:\n\n%@\n\n", v40];
        v41 = v33;

        v34 = 0;
        _fbsDisplayConfiguration = 0;
      }

      applicationCopy = v53;

      identity2 = _fbsDisplayConfiguration;
      v43 = v33;
      v44 = v43;
      v21 = v52;
      if (v34)
      {

        configuration = configurationCopy;
        foregroundCopy = v49;
        self = selfCopy;
        if (identity2)
        {
          windowSceneManager3 = [SBApp windowSceneManager];
          identity = [identity2 identity];
          mainWindowScene = [windowSceneManager3 windowSceneForDisplayIdentity:identity];

          goto LABEL_28;
        }

LABEL_27:
        identity2 = [0 identity];
        mainWindowScene = [(SBMainWorkspace *)self _targetWindowSceneForApplication:applicationCopy preferringDisplay:identity2 requireForeground:foregroundCopy options:optionsCopy];
LABEL_28:

        if (configuration)
        {
          *configuration = [mainWindowScene _sbDisplayConfiguration];
        }

        goto LABEL_36;
      }

      if (errorCopy)
      {
        *errorCopy = FBSOpenApplicationErrorCreate();
      }
    }

    else if (error)
    {
      FBSOpenApplicationErrorCreate();
      *error = mainWindowScene = 0;
      goto LABEL_36;
    }

    mainWindowScene = 0;
LABEL_36:

    goto LABEL_37;
  }

  v17 = +[SBContinuitySessionManager sharedInstance];
  currentSession = [v17 currentSession];
  mainWindowScene = [currentSession mainWindowScene];

  if (mainWindowScene)
  {
    if (configuration)
    {
      *configuration = [mainWindowScene _sbDisplayConfiguration];
    }

    v20 = mainWindowScene;
  }

  else if (error)
  {
    *error = FBSOpenApplicationErrorCreate();
  }

LABEL_37:

  return mainWindowScene;
}

- (id)_targetWindowSceneForApplication:(id)application preferringDisplay:(id)display requireForeground:(BOOL)foreground options:(id)options
{
  foregroundCopy = foreground;
  v57 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  displayCopy = display;
  optionsCopy = options;
  if (!displayCopy)
  {
    v43 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v14 = +[SBMainSwitcherControllerCoordinator sharedInstanceIfExists];
    v15 = v14;
    if (v14)
    {
      v44 = foregroundCopy;
      selfCopy = self;
      v41 = v14;
      absoluteString = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D77838] ofType:objc_opt_class()];
      if (!absoluteString)
      {
        v16 = [optionsCopy bs_safeURLForKey:*MEMORY[0x277D0AC40]];
        absoluteString = [v16 absoluteString];
      }

      v42 = optionsCopy;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      windowSceneManager = [SBApp windowSceneManager];
      connectedWindowScenes = [windowSceneManager connectedWindowScenes];

      obj = connectedWindowScenes;
      v49 = [connectedWindowScenes countByEnumeratingWithState:&v52 objects:v56 count:16];
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
            sceneManager = [v20 sceneManager];
            _fbsDisplayIdentity = [v20 _fbsDisplayIdentity];
            v23 = [sceneManager sceneIdentityForApplication:applicationCopy targetContentIdentifier:absoluteString allowCanMatches:1 preferNewScene:0 allowSceneCreation:0 visibleIdentifiers:0 preferredDisplay:_fbsDisplayIdentity];

            if (v23)
            {
              v24 = [sceneManager existingSceneHandleForSceneIdentity:v23];
              contentState = [v24 contentState];
              sceneIfExists = [v24 sceneIfExists];
              settings = [sceneIfExists settings];
              sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];
              displayIdentity = [sceneManager displayIdentity];
              v30 = [sb_displayIdentityForSceneManagers isEqual:displayIdentity];

              if (v24)
              {
                if (v44)
                {
                  if (((contentState != 0) & v30) == 0)
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

      optionsCopy = v42;
      displayCopy = 0;
      self = selfCopy;
      v15 = v41;
    }

    externalSceneWithFocus = [(SBKeyboardFocusControlling *)self->_keyboardFocusCoordinator externalSceneWithFocus];
    v32 = [(SBMainWorkspace *)self _sceneComparatorForApplication:applicationCopy keyboardFocusScene:externalSceneWithFocus];
    firstObject = [v43 firstObject];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __96__SBMainWorkspace__targetWindowSceneForApplication_preferringDisplay_requireForeground_options___block_invoke;
    v50[3] = &unk_2783A9F30;
    v34 = v32;
    v51 = v34;
    v35 = [v43 bs_reduce:firstObject block:v50];

    windowSceneManager2 = [SBApp windowSceneManager];
    v37 = windowSceneManager2;
    if (v35)
    {
      displayIdentity2 = [v35 displayIdentity];
      activeDisplayWindowScene = [v37 windowSceneForDisplayIdentity:displayIdentity2];
    }

    else
    {
      activeDisplayWindowScene = [windowSceneManager2 activeDisplayWindowScene];
    }

    goto LABEL_26;
  }

  windowSceneManager3 = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager3 windowSceneForDisplayIdentity:displayCopy];

LABEL_26:

  return activeDisplayWindowScene;
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

- (void)processManager:(id)manager didAddProcess:(id)process
{
  processCopy = process;
  if ([processCopy isApplicationProcess] && (objc_msgSend(processCopy, "isCurrentProcess") & 1) == 0)
  {
    [processCopy addObserver:self];
  }
}

- (void)process:(id)process stateDidChangeFromState:(id)state toState:(id)toState
{
  processCopy = process;
  toStateCopy = toState;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SBMainWorkspace_process_stateDidChangeFromState_toState___block_invoke;
  block[3] = &unk_2783A8ED8;
  v12 = processCopy;
  selfCopy = self;
  v14 = toStateCopy;
  v9 = toStateCopy;
  v10 = processCopy;
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

- (void)applicationProcessWillLaunch:(id)launch
{
  launchCopy = launch;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SBMainWorkspace_applicationProcessWillLaunch___block_invoke;
  block[3] = &unk_2783A8C18;
  v6 = launchCopy;
  v4 = launchCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__SBMainWorkspace_applicationProcessWillLaunch___block_invoke(uint64_t a1)
{
  v2 = +[SBApplicationController sharedInstanceIfExists];
  v3 = [*(a1 + 32) bundleIdentifier];
  v4 = [v2 applicationWithBundleIdentifier:v3];

  [v4 _processWillLaunch:*(a1 + 32)];
}

- (void)applicationProcessDidLaunch:(id)launch
{
  launchCopy = launch;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__SBMainWorkspace_applicationProcessDidLaunch___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = launchCopy;
  selfCopy = self;
  v5 = launchCopy;
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

- (void)applicationProcessDidExit:(id)exit withContext:(id)context
{
  exitCopy = exit;
  contextCopy = context;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SBMainWorkspace_applicationProcessDidExit_withContext___block_invoke;
  block[3] = &unk_2783A8ED8;
  v11 = exitCopy;
  v12 = contextCopy;
  selfCopy = self;
  v8 = contextCopy;
  v9 = exitCopy;
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

- (void)applicationProcessDebuggingStateDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SBMainWorkspace_applicationProcessDebuggingStateDidChange___block_invoke;
  v6[3] = &unk_2783A92D8;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
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

- (id)systemServiceApplicationInfoProvider:(id)provider
{
  v3 = +[SBApplicationController sharedInstance];
  _appLibrary = [v3 _appLibrary];

  return _appLibrary;
}

- (void)systemService:(id)service canActivateApplication:(id)application withResult:(id)result
{
  applicationCopy = application;
  resultCopy = result;
  v7 = +[SBApplicationController sharedInstance];
  v8 = [v7 applicationWithBundleIdentifier:applicationCopy];

  if (!applicationCopy)
  {
    v11 = 2;
    if (!resultCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (!v8)
  {
    v11 = 4;
    if (!resultCopy)
    {
      goto LABEL_11;
    }

LABEL_10:
    resultCopy[2](resultCopy, v11);
    goto LABEL_11;
  }

  v9 = +[SBIconController sharedIconRepository];
  v10 = [v9 applicationIconForBundleIdentifier:applicationCopy];
  if (([SBApp isBundleIdentifierRestrictionDisabled:applicationCopy] & 1) != 0 || (objc_msgSend(v9, "isIconVisible:", v10) & 1) == 0)
  {
    v11 = 5;
  }

  else
  {
    v11 = 0;
  }

  if (resultCopy)
  {
    goto LABEL_10;
  }

LABEL_11:
}

- (void)systemService:(id)service handleOpenApplicationRequest:(id)request withCompletion:(id)completion
{
  v65 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  bundleIdentifier = [requestCopy bundleIdentifier];
  clientProcess = [requestCopy clientProcess];
  currentOpenApplicationInstance = [MEMORY[0x277D0AB08] currentOpenApplicationInstance];
  v12 = SBLogWorkspace();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  v56 = completionCopy;
  if (currentOpenApplicationInstance)
  {
    if (!v13)
    {
      goto LABEL_11;
    }

    isTrusted = [requestCopy isTrusted];
    v15 = @"untrusted";
    *buf = 138544130;
    if (isTrusted)
    {
      v15 = @"trusted";
    }

    v58 = v15;
    v59 = 2114;
    v60 = currentOpenApplicationInstance;
    v61 = 2114;
    v62 = bundleIdentifier;
    v63 = 2114;
    v64 = clientProcess;
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

    isTrusted2 = [requestCopy isTrusted];
    v20 = @"untrusted";
    *buf = 138543874;
    if (isTrusted2)
    {
      v20 = @"trusted";
    }

    v58 = v20;
    v59 = 2114;
    v60 = bundleIdentifier;
    v61 = 2114;
    v62 = clientProcess;
    v16 = "Received %{public}@ open application request for %{public}@ from %{public}@.";
    v17 = v12;
    v18 = 32;
  }

  _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
LABEL_11:

  isTrusted3 = [requestCopy isTrusted];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  options = [requestCopy options];
  dictionary2 = [options dictionary];

  if (dictionary2)
  {
    options2 = [requestCopy options];
    dictionary3 = [options2 dictionary];
    [dictionary addEntriesFromDictionary:dictionary3];
  }

  SBSConvertOpenApplicationSBSKeysToFBSKeysIfNecessary();
  v27 = [clientProcess hasEntitlement:@"com.apple.LaunchApp"];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (v27 && has_internal_diagnostics)
  {
    v29 = [dictionary bs_safeArrayForKey:*MEMORY[0x277D0AC10]];
    if (v29)
    {
      v30 = [(SBMainWorkspace *)self _parseShellArguments:v29];
      [dictionary addEntriesFromDictionary:v30];
      if (!bundleIdentifier)
      {
        v31 = [dictionary bs_safeArrayForKey:*MEMORY[0x277D670F0]];
        bundleIdentifier = [v31 firstObject];
      }
    }
  }

  v32 = +[SBApplicationController sharedInstanceIfExists];
  v33 = [v32 applicationWithBundleIdentifier:bundleIdentifier];

  if (v33)
  {
    info = [v33 info];
    shouldLaunchSuspendedAlways = [info shouldLaunchSuspendedAlways];

    if (shouldLaunchSuspendedAlways)
    {
      [dictionary setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0ABF0]];
      isTrusted3 = 1;
    }
  }

  if ([bundleIdentifier isEqualToString:{@"com.apple.DataActivation", currentOpenApplicationInstance}])
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0ABF0]];
    isTrusted3 = 1;
  }

  selfCopy = self;
  v37 = +[SBSetupManager sharedInstance];
  if ([v37 isInSetupMode])
  {
    v38 = [bundleIdentifier isEqualToString:@"com.apple.shortcuts"];

    v39 = *MEMORY[0x277D0ABF0];
    if (v38)
    {
      [dictionary setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0ABF0]];
      isTrusted3 = 1;
    }
  }

  else
  {

    v39 = *MEMORY[0x277D0ABF0];
  }

  v40 = [dictionary bs_safeNumberForKey:v39];
  bOOLValue = [v40 BOOLValue];

  v42 = [dictionary bs_safeNumberForKey:*MEMORY[0x277D66FE0]];
  if ([v42 BOOLValue])
  {
    v43 = [bundleIdentifier isEqualToString:@"com.apple.InCallService"];
  }

  else
  {
    v43 = 0;
  }

  if (bOOLValue && (v43 & 1) == 0)
  {
    [dictionary removeObjectForKey:*MEMORY[0x277D0AC70]];
    [dictionary removeObjectForKey:*MEMORY[0x277D0AC58]];
  }

  v44 = [dictionary bs_safeNumberForKey:*MEMORY[0x277D66E60]];
  bOOLValue2 = [v44 BOOLValue];

  if (bOOLValue2)
  {
    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    v47 = *MEMORY[0x277D0AC38];
    v48 = [dictionary bs_safeDictionaryForKey:*MEMORY[0x277D0AC38]];
    if (v48)
    {
      [dictionary4 addEntriesFromDictionary:v48];
    }

    [dictionary4 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D76680]];
    [dictionary setObject:dictionary4 forKey:v47];
  }

  bundleIdentifier2 = [clientProcess bundleIdentifier];
  v50 = [bundleIdentifier2 isEqualToString:@"com.apple.Spotlight"];

  if (v50)
  {
    [dictionary setObject:*MEMORY[0x277D67080] forKey:*MEMORY[0x277D0AC28]];
  }

  v51 = objc_alloc_init(SBActivationSettings);
  [(SBActivationSettings *)v51 setFlag:BSSettingFlagForBool() forActivationSetting:52];
  currentOpenApplicationInstance2 = [MEMORY[0x277D0AB08] currentOpenApplicationInstance];
  if (currentOpenApplicationInstance2)
  {
    [(SBActivationSettings *)v51 setObject:currentOpenApplicationInstance2 forActivationSetting:51];
  }

  handle = [clientProcess handle];
  if (isTrusted3)
  {
    v54 = v56;
    [(SBMainWorkspace *)selfCopy _handleTrustedOpenRequestForApplication:bundleIdentifier options:dictionary activationSettings:v51 origin:handle withResult:v56];
  }

  else
  {
    v54 = v56;
    [(SBMainWorkspace *)selfCopy _handleUntrustedOpenRequestForApplication:bundleIdentifier options:dictionary activationSettings:v51 origin:handle withResult:v56];
  }
}

- (id)_parseShellArguments:(id)arguments
{
  argumentsCopy = arguments;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([argumentsCopy count] != 1)
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
      v10 = [argumentsCopy objectAtIndex:{v6, v22}];
      lowercaseString = [v10 lowercaseString];

      v12 = v6 + 1;
      v13 = [argumentsCopy objectAtIndex:v6 + 1];
      if ([lowercaseString isEqualToString:v7])
      {
        v14 = dictionary;
        v15 = v13;
        v16 = v25;
      }

      else if ([lowercaseString isEqualToString:v8])
      {
        v14 = dictionary;
        v15 = v13;
        v16 = v9;
      }

      else
      {
        if ([lowercaseString isEqualToString:@"-launch"])
        {
          v17 = [v13 componentsSeparatedByString:{@", "}];
          [v17 bs_compactMap:&__block_literal_global_536];
          v18 = v7;
          v19 = v9;
          v21 = v20 = v8;

          [dictionary setObject:v21 forKeyedSubscript:v24];
          v8 = v20;
          v9 = v19;
          v7 = v18;
          goto LABEL_11;
        }

        if (![lowercaseString isEqualToString:@"-display"])
        {
          if ([lowercaseString isEqualToString:@"-classicmode"])
          {
            [dictionary setObject:v13 forKeyedSubscript:v22];
            v12 = v6 + 2;
          }

          goto LABEL_11;
        }

        v14 = dictionary;
        v15 = v13;
        v16 = v23;
      }

      [v14 setObject:v15 forKeyedSubscript:v16];
LABEL_11:

      v6 = v12 + 1;
    }

    while (v12 + 1 < ([argumentsCopy count] - 1));
  }

  return dictionary;
}

id __40__SBMainWorkspace__parseShellArguments___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA900];
  v3 = a2;
  v4 = [v2 whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

- (void)_updateActivationSettings:(id)settings forRequestWithOptions:(id)options clientProcess:(id)process application:(id)application
{
  settingsCopy = settings;
  optionsCopy = options;
  processCopy = process;
  applicationCopy = application;
  if (!settingsCopy)
  {
    [SBMainWorkspace _updateActivationSettings:a2 forRequestWithOptions:? clientProcess:? application:?];
  }

  v54 = applicationCopy;
  v55 = processCopy;
  [settingsCopy setFlag:1 forActivationSetting:50];
  v14 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D0ABF0] ofType:objc_opt_class()];
  bOOLValue = [v14 BOOLValue];

  v15 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D0AC28] ofType:objc_opt_class()];
  [*MEMORY[0x277D77FC8] isEqual:v15];
  [settingsCopy setFlag:BSSettingFlagIfYes() forActivationSetting:42];
  [*MEMORY[0x277D77FE8] isEqual:v15];
  [settingsCopy setFlag:BSSettingFlagIfYes() forActivationSetting:43];
  [*MEMORY[0x277CD9308] isEqual:v15];
  [settingsCopy setFlag:BSSettingFlagIfYes() forActivationSetting:54];
  [*MEMORY[0x277CE2190] isEqual:v15];
  [settingsCopy setFlag:BSSettingFlagIfYes() forActivationSetting:55];
  [*MEMORY[0x277D67080] isEqual:v15];
  [settingsCopy setFlag:BSSettingFlagIfYes() forActivationSetting:47];
  [*MEMORY[0x277D67078] isEqual:v15];
  [settingsCopy setFlag:BSSettingFlagIfYes() forActivationSetting:53];
  [*MEMORY[0x277D67088] isEqual:v15];
  [settingsCopy setFlag:BSSettingFlagIfYes() forActivationSetting:63];
  [*MEMORY[0x277D67060] isEqual:v15];
  [settingsCopy setFlag:BSSettingFlagIfYes() forActivationSetting:64];
  [*MEMORY[0x277D67068] isEqual:v15];
  [settingsCopy setFlag:BSSettingFlagIfYes() forActivationSetting:65];
  [*MEMORY[0x277D67070] isEqual:v15];
  [settingsCopy setFlag:BSSettingFlagIfYes() forActivationSetting:48];
  [*MEMORY[0x277CFC8B0] isEqual:v15];
  [settingsCopy setFlag:BSSettingFlagIfYes() forActivationSetting:45];
  v53 = v15;
  [*MEMORY[0x277CEBDF0] isEqual:v15];
  [settingsCopy setFlag:BSSettingFlagIfYes() forActivationSetting:59];
  v56 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D67138] ofType:objc_opt_class()];
  if (v56)
  {
    v16 = 0;
    v17 = 1;
    while (1)
    {
      v18 = v17;
      v19 = [(SBPIPControllerCoordinator *)self->_pipCoordinator controllerForType:v16];
      hostedAppSceneHandles = [v19 hostedAppSceneHandles];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __93__SBMainWorkspace__updateActivationSettings_forRequestWithOptions_clientProcess_application___block_invoke;
      v58[3] = &unk_2783A9FA0;
      v59 = v56;
      v21 = [hostedAppSceneHandles bs_containsObjectPassingTest:v58];

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

    [settingsCopy setFlag:1 forActivationSetting:57];
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
    [settingsCopy setObject:v22 forActivationSetting:58];
  }

LABEL_8:
  if ((bOOLValue & 1) == 0 && +[SBAssistantController isVisible])
  {
    v23 = +[SBAssistantController defaultActivationSettings];
    [settingsCopy applyActivationSettings:v23];
  }

  v24 = [optionsCopy bs_safeDictionaryForKey:*MEMORY[0x277D0AC38]];
  v25 = [v24 mutableCopy];

  v26 = +[SBApplicationController sharedInstanceIfExists];
  v27 = [v26 applicationWithPid:{objc_msgSend(v55, "pid")}];
  bundleIdentifier = [v27 bundleIdentifier];

  v29 = MEMORY[0x277D76690];
  if (!bundleIdentifier)
  {
    bundleIdentifier = [v25 bs_safeStringForKey:*MEMORY[0x277D76690]];
  }

  if ([settingsCopy BOOLForActivationSetting:52])
  {
    [settingsCopy setFlag:BSSettingFlagForBool() forActivationSetting:3];
    v30 = [optionsCopy bs_safeStringForKey:*MEMORY[0x277D0AC18]];
    [settingsCopy setObject:v30 forActivationSetting:17];

    v31 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D0ABF8] ofType:objc_opt_class()];
    [settingsCopy setObject:v31 forActivationSetting:21];

    v32 = [optionsCopy bs_safeDictionaryForKey:*MEMORY[0x277D0AC00]];
    [settingsCopy setObject:v32 forActivationSetting:22];

    v33 = *v29;
    v34 = [v25 objectForKey:*v29];

    if (v34)
    {
      v35 = [v25 bs_safeStringForKey:v33];

      bundleIdentifier = v35;
    }

    v36 = [optionsCopy bs_safeNumberForKey:*MEMORY[0x277D0AC20]];
    integerValue = [v36 integerValue];

    if (integerValue)
    {
      if (bOOLValue)
      {
        if (integerValue >= 5)
        {
          v38 = 2;
        }

        else
        {
          v38 = qword_21F8A54E0[integerValue - 1];
        }
      }

      else if (integerValue == 4)
      {
        v38 = 4;
      }

      else
      {
        v38 = 3;
      }

      v39 = [MEMORY[0x277CCABB0] numberWithInteger:v38];
      [settingsCopy setObject:v39 forActivationSetting:30];
    }

    v40 = [optionsCopy bs_safeStringForKey:*MEMORY[0x277D0AC48]];
    [settingsCopy setObject:v40 forActivationSetting:33];
  }

  v41 = [settingsCopy objectForActivationSetting:30];

  if (!v41)
  {
    bundleIdentifier2 = [v54 bundleIdentifier];
    v43 = [bundleIdentifier2 isEqualToString:@"com.apple.InCallService"];

    if (v43)
    {
      [settingsCopy setObject:&unk_28336FC80 forActivationSetting:30];
    }
  }

  [v25 removeObjectForKey:*v29];
  v44 = [optionsCopy bs_safeURLForKey:*MEMORY[0x277D0AC40]];
  [settingsCopy setObject:v44 forActivationSetting:5];

  [settingsCopy setObject:v25 forActivationSetting:16];
  v45 = [optionsCopy bs_safeDictionaryForKey:*MEMORY[0x277D0AC30]];
  [settingsCopy setObject:v45 forActivationSetting:15];

  v46 = [optionsCopy bs_safeNumberForKey:*MEMORY[0x277D67150]];
  [v46 BOOLValue];
  [settingsCopy setFlag:BSSettingFlagIfYes() forActivationSetting:8];

  [settingsCopy setObject:bundleIdentifier forActivationSetting:14];
  v47 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D0AC80] ofType:objc_opt_class()];

  if (v47)
  {
    [settingsCopy setObject:MEMORY[0x277CBEC38] forActivationSetting:31];
  }

  v48 = [optionsCopy objectForKey:*MEMORY[0x277D77828]];
  [settingsCopy setObject:v48 forActivationSetting:32];

  v49 = [optionsCopy objectForKey:*MEMORY[0x277D77840]];
  [settingsCopy setObject:v49 forActivationSetting:34];

  bundleIdentifier3 = [v54 bundleIdentifier];
  v51 = [(SBMainWorkspace *)self _canAppWithBundleIdentifier:bundleIdentifier3 requestMovingContentToSceneOpenApplicationOptions:optionsCopy];

  if (v51)
  {
    [settingsCopy setFlag:BSSettingFlagForBool() forActivationSetting:67];
    [settingsCopy setFlag:BSSettingFlagForBool() forActivationSetting:68];
    [settingsCopy setFlag:BSSettingFlagForBool() forActivationSetting:31];
  }
}

uint64_t __93__SBMainWorkspace__updateActivationSettings_forRequestWithOptions_clientProcess_application___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sceneIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)_canAppWithBundleIdentifier:(id)identifier requestMovingContentToSceneOpenApplicationOptions:(id)options
{
  v5 = *MEMORY[0x277D67128];
  optionsCopy = options;
  identifierCopy = identifier;
  v8 = [optionsCopy bs_safeNumberForKey:v5];
  bOOLValue = [v8 BOOLValue];

  v10 = [optionsCopy bs_safeStringForKey:*MEMORY[0x277D67120]];
  v11 = [v10 isEqualToString:*MEMORY[0x277D67090]];

  LOBYTE(v10) = [identifierCopy isEqualToString:@"com.apple.mobilemail"];
  v12 = [optionsCopy bs_safeNumberForKey:*MEMORY[0x277D0ABF0]];

  LOBYTE(optionsCopy) = [v12 BOOLValue];
  return bOOLValue & v10 & v11 & optionsCopy;
}

- (id)_validateRequestToOpenApplication:(id)application options:(id)options origin:(id)origin error:(id *)error
{
  applicationCopy = application;
  optionsCopy = options;
  originCopy = origin;
  if (!error)
  {
    [SBMainWorkspace _validateRequestToOpenApplication:options:origin:error:];
  }

  *error = 0;
  v64 = +[SBApplicationController sharedInstanceIfExists];
  v13 = [v64 applicationWithBundleIdentifier:applicationCopy];
  info = [v13 info];
  if (applicationCopy && !v13)
  {
    FBSOpenApplicationErrorCreate();
    *error = v15 = 0;
    goto LABEL_47;
  }

  v16 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D0ABF0] ofType:objc_opt_class()];
  bOOLValue = [v16 BOOLValue];

  v17 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D0ABE0] ofType:objc_opt_class()];
  v62 = v17;
  selfCopy = self;
  if (v17)
  {
    v18 = [v17 objectForKey:*MEMORY[0x277D0AB30]];
    v54 = v18 == 0;
  }

  else
  {
    v54 = 1;
  }

  v19 = [optionsCopy bs_safeURLForKey:*MEMORY[0x277D0AC40]];
  v20 = [optionsCopy objectForKey:*MEMORY[0x277D0AC08]];
  v21 = [v20 bs_safeObjectForKey:*MEMORY[0x277CF0560] ofType:objc_opt_class()];
  bOOLValue2 = [v21 BOOLValue];

  v60 = v20;
  v22 = [v20 bs_safeObjectForKey:*MEMORY[0x277CF0558] ofType:objc_opt_class()];
  bOOLValue3 = [v22 BOOLValue];

  v23 = +[SBSyncController sharedInstance];
  v24 = +[SBSetupManager sharedInstance];
  v61 = v19;
  v59 = v24;
  if ([v24 isInSetupMode])
  {
    updateInSetupMode = [v24 updateInSetupMode];
    v26 = [(SBMainWorkspace *)selfCopy _isLaunchingApplicationAfterSetupForRequestWithBundleIdentifier:applicationCopy options:optionsCopy origin:originCopy];
    if (updateInSetupMode)
    {
      v56 = optionsCopy;
      v27 = applicationCopy;
      v28 = v13;
      v29 = originCopy;
      v30 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    v26 = [(SBMainWorkspace *)selfCopy _isLaunchingApplicationAfterSetupForRequestWithBundleIdentifier:applicationCopy options:optionsCopy origin:originCopy];
  }

  if (!v26)
  {
    v56 = optionsCopy;
    v27 = applicationCopy;
    v28 = v13;
    v29 = originCopy;
    +[SBApplicationController sharedInstanceIfExists];
    errorCopy = error;
    v33 = v32 = info;
    [v33 setupApplication];
    v35 = v34 = v23;
    processState = [v35 processState];
    isForeground = [processState isForeground];

    v23 = v34;
    info = v32;
    error = errorCopy;
    v30 = 0;
    if (!isForeground)
    {
LABEL_17:
      originCopy = v29;
      v13 = v28;
      applicationCopy = v27;
      optionsCopy = v56;
      if (v30)
      {
LABEL_20:
        v40 = info;
        v41 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D66FE0] ofType:objc_opt_class()];
        bOOLValue4 = [v41 BOOLValue];

        if (bOOLValue4 && ([originCopy hasEntitlement:@"com.apple.springboard.inCallPresentation"] & 1) == 0 && (+[SBDefaults localDefaults](SBDefaults, "localDefaults"), v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "inCallPresentationDefaults"), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "skipPromptUnlockEntitlementCheck"), v44, v43, (v45 & 1) == 0) || (objc_msgSend(optionsCopy, "bs_safeObjectForKey:ofType:", *MEMORY[0x277D670D0], objc_opt_class()), v46 = objc_claimAutoreleasedReturnValue(), v46, (objc_msgSend(originCopy, "hasEntitlement:", @"com.apple.springboard.display-lookup") & 1) == 0) && (v48 = objc_msgSend(originCopy, "hasEntitlement:", @"com.apple.springboard.testautomation"), v46) && (v48 & 1) == 0)
        {
          FBSOpenApplicationErrorCreate();
          *error = v15 = 0;
          info = v40;
          goto LABEL_44;
        }

        info = v40;
        if (((bOOLValue2 | bOOLValue3) & 1) != 0 || [v13 isAnyTerminationAssertionInEffect])
        {
          v47 = v61;
          if ([v13 isAnyTerminationAssertionInEffect])
          {
            goto LABEL_45;
          }

          v49 = bOOLValue;
          if (v61)
          {
            v49 = 1;
          }

          if ((v49 & 1) != 0 || (bOOLValue2 & bOOLValue3) != 0)
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
          [info unauthoritativeTrustState];
LABEL_55:
          v15 = v13;
          goto LABEL_46;
        }

        if (![SBApp isBundleIdentifierRestrictionDisabled:applicationCopy] && (v54 || (objc_msgSend(info, "supportsFetchBackgroundMode") & 1) != 0 || (objc_msgSend(v13, "isSystemApplication") & 1) != 0))
        {
          unauthoritativeTrustState = [info unauthoritativeTrustState];
          if (unauthoritativeTrustState == 8)
          {
            goto LABEL_55;
          }

          if ((bOOLValue & 1) == 0)
          {
            v52 = [(SBMainWorkspace *)selfCopy _alertItemForPreventingLaunchOfApp:v13 fromTrustState:unauthoritativeTrustState];
            if (v52)
            {
              v53 = +[SBAlertItemsController sharedInstance];
              [v53 activateAlertItem:v52];
            }
          }
        }

LABEL_45:
        FBSOpenApplicationErrorCreate();
        *error = v15 = 0;
        goto LABEL_46;
      }

      goto LABEL_18;
    }

LABEL_15:
    if (info && ([info isLaunchableDuringSetup] & 1) == 0)
    {
      FBSOpenApplicationErrorCreate();
      *error = v15 = 0;
      originCopy = v29;
      v13 = v28;
      applicationCopy = v27;
      optionsCopy = v56;
      goto LABEL_44;
    }

    goto LABEL_17;
  }

LABEL_18:
  if (![v13 isSetup])
  {
    goto LABEL_20;
  }

  bundleIdentifier = [originCopy bundleIdentifier];
  v39 = [bundleIdentifier isEqualToString:@"com.apple.purplebuddy"];

  if (v39)
  {
    goto LABEL_20;
  }

  FBSOpenApplicationErrorCreate();
  *error = v15 = 0;
LABEL_44:
  v47 = v61;
LABEL_46:

LABEL_47:

  return v15;
}

- (void)_handleOpenApplicationRequest:(id)request options:(id)options activationSettings:(id)settings origin:(id)origin withResult:(id)result
{
  v443 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  settingsCopy = settings;
  originCopy = origin;
  resultCopy = result;
  BSDispatchQueueAssertMain();
  if (!settingsCopy)
  {
    [SBMainWorkspace _handleOpenApplicationRequest:a2 options:? activationSettings:? origin:? withResult:?];
  }

  v18 = +[SBApplicationController sharedInstanceIfExists];
  v429[0] = MEMORY[0x277D85DD0];
  v429[1] = 3221225472;
  v429[2] = __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke;
  v429[3] = &unk_2783A9FC8;
  v19 = resultCopy;
  v430 = v19;
  v20 = MEMORY[0x223D6F7F0](v429);
  v428 = 0;
  v21 = [(SBMainWorkspace *)self _validateRequestToOpenApplication:requestCopy options:optionsCopy origin:originCopy error:&v428];
  v22 = v428;
  v23 = v22;
  if (!requestCopy || v21)
  {
    v343 = v19;
    v344 = v22;
    v346 = v21;
    v427 = 0;
    v348 = objc_opt_new();
    v24 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D0ABF0] ofType:objc_opt_class()];
    bOOLValue = [v24 BOOLValue];

    v426 = 0;
    v25 = *MEMORY[0x277D67120];
    v26 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D67120] ofType:objc_opt_class()];
    v342 = optionsCopy;
    v340 = v26;
    if (v26 && (SBValidateLayoutRoleString(v26, &v427, &v426) & 1) == 0)
    {
      _fbsDisplayConfiguration = FBSOpenApplicationErrorCreate();
      v20[2](v20);
      v30 = 0;
      v32 = 0;
      v345 = 0;
      v349 = 0;
      v23 = v344;
      v21 = v346;
LABEL_279:

      optionsCopy = v342;
      goto LABEL_280;
    }

    v425[2] = 0;
    v425[1] = 0;
    selfCopy = self;
    v21 = v346;
    v329 = bOOLValue ^ 1;
    v27 = [SBMainWorkspace _targetWindowSceneForApplication:"_targetWindowSceneForApplication:options:settings:requireForeground:targetDisplayConfiguration:error:" options:v346 settings:optionsCopy requireForeground:settingsCopy targetDisplayConfiguration:? error:?];
    _fbsDisplayConfiguration = 0;
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
    v335 = [optionsCopy bs_safeStringForKey:*MEMORY[0x277D67148]];
    v333 = [optionsCopy bs_safeStringForKey:*MEMORY[0x277D67140]];
    v336 = [optionsCopy bs_safeArrayForKey:*MEMORY[0x277D670F0]];
    if ([originCopy hasEntitlement:@"com.apple.springboard.testautomation"])
    {
      LOBYTE(v31) = 0;
    }

    else
    {
      v31 = [originCopy hasEntitlement:@"com.apple.LaunchApp"] ^ 1;
    }

    v33 = 0;
    v347 = v18;
    v334 = v20;
    if (v335 | v333 && v336)
    {
      v349 = 0;
      if ((v31 & 1) == 0)
      {
        v315 = requestCopy;
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
            v325 = originCopy;
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

                  requestCopy = v315;
                  originCopy = v325;
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
            requestCopy = v315;
            originCopy = v325;
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
          requestCopy = v315;
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
    switcherController = [v27 switcherController];
    windowManagementContext = [switcherController windowManagementContext];
    baseStyle = [windowManagementContext baseStyle];

    if (SBLayoutRoleIsValid(v427) && v427 != 1 && !baseStyle)
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

    switcherController2 = [v339 switcherController];
    windowManagementContext2 = [switcherController2 windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext2 isChamoisOrFlexibleWindowing];

    v53 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D670E0] ofType:objc_opt_class()];
    bOOLValue2 = [v53 BOOLValue];

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

    v319 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D670B8] ofType:objc_opt_class()];
    if ([v319 count] >= 1)
    {
      v18 = v347;
      if (baseStyle)
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
        v322 = settingsCopy;
        v326 = originCopy;
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
                  settingsCopy = v322;
                  if ((SBValidateLayoutRoleString(v67, buf, &v411) & 1) == 0 || *buf == 1 && v349 && (isChamoisOrFlexibleWindowing & 1) == 0 || *buf == 2 && v345 && (isChamoisOrFlexibleWindowing & 1) == 0 || *buf == 3 && v337 && (isChamoisOrFlexibleWindowing & 1) == 0 || *buf == 4 && v56 && (isChamoisOrFlexibleWindowing & 1) == 0)
                  {
                    v85 = FBSOpenApplicationErrorCreate();
                    (v334[2])(v334, v85);

                    originCopy = v326;
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
                  v407 = selfCopy;
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
                      if (!isChamoisOrFlexibleWindowing)
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
                      if (!isChamoisOrFlexibleWindowing)
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
                    settingsCopy = v322;
                    originCopy = v326;
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
                settingsCopy = v322;
                originCopy = v326;
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

      v80 = isChamoisOrFlexibleWindowing ^ 1;
      if (v79)
      {
        v80 = 1;
      }

      v314 = v80;
    }

    switcherController3 = [v339 switcherController];
    v82 = [switcherController3 layoutContainsRole:1];

    if (v314 && (v82 & 1) == 0 && (isChamoisOrFlexibleWindowing & 1) == 0)
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
    if (((v329 | [settingsCopy BOOLForActivationSetting:52]) & 1) == 0)
    {
LABEL_140:
      v83 = FBSOpenApplicationErrorCreate();
      (v334[2])(v334, v83);
      goto LABEL_141;
    }

    v84 = [(SBMainWorkspace *)selfCopy _canAppWithBundleIdentifier:requestCopy requestMovingContentToSceneOpenApplicationOptions:optionsCopy];
    if (bOOLValue)
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

    v86 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D0ABE0] ofType:objc_opt_class()];
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
    v91 = [optionsCopy objectForKey:*MEMORY[0x277D0ABD0]];
    obja = [v90 setWithArray:v91];

    v308 = [optionsCopy bs_safeURLForKey:*MEMORY[0x277D0AC40]];
    v304 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D0AC38] ofType:objc_opt_class()];
    v92 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D0AC70] ofType:objc_opt_class()];
    bOOLValue3 = [v92 BOOLValue];

    v94 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D0AC58] ofType:objc_opt_class()];
    bOOLValue4 = [v94 BOOLValue];

    v95 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D66FE0] ofType:objc_opt_class()];
    v271 = bOOLValue3;
    if ([v95 BOOLValue])
    {
      bundleIdentifier = [v346 bundleIdentifier];
      v316 = [bundleIdentifier isEqualToString:@"com.apple.InCallService"];
    }

    else
    {
      v316 = 0;
    }

    v97 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D66E80] ofType:objc_opt_class()];
    bOOLValue5 = [v97 BOOLValue];

    v296 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D0AC28] ofType:objc_opt_class()];
    v98 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D0AC80] ofType:objc_opt_class()];
    bOOLValue6 = [v98 BOOLValue];

    v289 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D77830] ofType:objc_opt_class()];
    absoluteString = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D77838] ofType:objc_opt_class()];
    v99 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D67118] ofType:objc_opt_class()];
    bOOLValue7 = [v99 BOOLValue];

    v100 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D67108] ofType:objc_opt_class()];
    bOOLValue8 = [v100 BOOLValue];

    v101 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D67110] ofType:objc_opt_class()];
    LOBYTE(v100) = [v101 BOOLValue];

    v102 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D670C8] ofType:objc_opt_class()];
    [v102 BOOLValue];

    v103 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D67130] ofType:objc_opt_class()];
    bOOLValue9 = [v103 BOOLValue];

    v104 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D243B8] ofType:objc_opt_class()];
    bOOLValue10 = [v104 BOOLValue];

    if (v100)
    {
      alwaysDeliversOpenURLActionsUsingWorkspace = 1;
    }

    else
    {
      info = [v346 info];
      alwaysDeliversOpenURLActionsUsingWorkspace = [info alwaysDeliversOpenURLActionsUsingWorkspace];
    }

    v321 = v56;
    v265 = bOOLValue10;
    if (v308 && !absoluteString)
    {
      absoluteString = [v308 absoluteString];
    }

    v107 = [optionsCopy objectForKey:*MEMORY[0x277D0AC08]];
    v286 = [v107 bs_safeObjectForKey:*MEMORY[0x277CF0550] ofType:objc_opt_class()];
    v285 = [v107 bs_safeObjectForKey:*MEMORY[0x277CF0570] ofType:objc_opt_class()];
    v284 = [v107 bs_safeObjectForKey:*MEMORY[0x277CF0580] ofType:objc_opt_class()];
    v283 = [v107 bs_safeObjectForKey:*MEMORY[0x277CF0578] ofType:objc_opt_class()];
    v108 = [v107 bs_safeObjectForKey:*MEMORY[0x277CF0560] ofType:objc_opt_class()];
    bOOLValue11 = [v108 BOOLValue];

    v110 = [v107 bs_safeObjectForKey:*MEMORY[0x277CF0558] ofType:objc_opt_class()];
    bOOLValue12 = [v110 BOOLValue];

    v111 = [v107 bs_safeObjectForKey:*MEMORY[0x277CF0568] ofType:objc_opt_class()];
    [v111 BOOLValue];

    v112 = [v107 bs_safeObjectForKey:*MEMORY[0x277CF0588] ofType:objc_opt_class()];
    bOOLValue13 = [v112 BOOLValue];

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
      info2 = [v346 info];
      if (info2)
      {
        v116 = info2;
        info3 = [v346 info];
        isLaunchableDuringSetup = [info3 isLaunchableDuringSetup];

        if ((isLaunchableDuringSetup & 1) == 0)
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

    v327 = originCopy;
    v119 = settingsCopy;
    if ((bOOLValue11 | bOOLValue12))
    {
      v120 = 0;
    }

    else
    {
      v120 = [v346 isAnyTerminationAssertionInEffect] ^ 1;
    }

    v255 = v120;
    v121 = v120 & v329 | v316;
    v122 = [optionsCopy bs_safeObjectForKey:@"__SBWorkspaceOpenOptionUnlockResult" ofType:objc_opt_class()];
    bOOLValue14 = [v122 BOOLValue];

    uiLockStateProvider = [v339 uiLockStateProvider];
    v124 = uiLockStateProvider;
    if (uiLockStateProvider)
    {
      v125 = uiLockStateProvider;
    }

    else
    {
      v125 = +[SBLockScreenManager sharedInstance];
    }

    v23 = v344;
    v56 = v321;

    v330 = v125;
    if ((v121 & 1) == 0 || bOOLValue14 & 1 | (([v125 isUILocked] & 1) == 0))
    {
      if (bOOLValue5)
      {
        homeScreenController = [v339 homeScreenController];
        iconManager = [homeScreenController iconManager];

        iconModel = [iconManager iconModel];
        v129 = [iconModel applicationIconForBundleIdentifier:requestCopy];

        if (v129)
        {
          [iconManager scrollToIconListContainingIcon:v129 animate:0];
        }

        v23 = v344;
      }

      if ((bOOLValue & 1) == 0)
      {
        v130 = +[SBIdleTimerGlobalCoordinator sharedInstance];
        [v130 resetIdleTimerForReason:@"OpenApplication"];
      }

      v131 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D0ABD8] ofType:objc_opt_class()];
      v132 = [optionsCopy bs_safeStringForKey:*MEMORY[0x277D67100]];
      v133 = v132;
      if (v131)
      {
        integerValue = [v131 integerValue];
        settingsCopy = v119;
LABEL_182:
        originCopy = v327;
        goto LABEL_183;
      }

      settingsCopy = v119;
      if (!v132)
      {
        integerValue = -1;
        goto LABEL_182;
      }

      v397[0] = 0;
      v317 = [[SBApplicationClassicModeLaunchArgumentParser alloc] initWithApplication:v346];
      integerValue = [(SBApplicationClassicModeLaunchArgumentParser *)v317 classicModeForLaunchArgument:v133 error:v397];
      v140 = v397[0];
      originCopy = v327;
      if (v140)
      {
        (v334[2])(v334, v140);
      }

      else
      {
        processState = [v346 processState];
        isRunning = [processState isRunning];

        if (!isRunning || integerValue == [v346 _classicMode])
        {

          v23 = v344;
          v56 = v321;
LABEL_183:

          if (_SBApplicationClassicModeIsClassic(integerValue) && v345)
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

          v278 = integerValue;
          v274 = v136;
          v272 = [optionsCopy objectForKey:@"SBWorkspaceOpenApplicationResolvedWebClipSceneEntityKey"];
          v145 = v346;
          v146 = 0x27839E000uLL;
          if (!v346)
          {
            goto LABEL_212;
          }

          info4 = [v346 info];
          if ((-[NSObject isAppClip](info4, "isAppClip") & 1) == 0 && ![v346 isWebApplication])
          {
LABEL_211:

            v145 = v346;
            goto LABEL_212;
          }

          v145 = v346;
          if (v272)
          {
LABEL_212:
            v149 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D77820] ofType:objc_opt_class()];
            bOOLValue15 = [v149 BOOLValue];

            info5 = [v145 info];
            hasViewServicesEntitlement = [info5 hasViewServicesEntitlement];

            if (!hasViewServicesEntitlement || !bOOLValue15)
            {
              v157 = v267;
              _classicMode = v278;
              goto LABEL_225;
            }

            bundleIdentifier2 = [originCopy bundleIdentifier];
            sharedInstanceIfExists = [*(v146 + 3112) sharedInstanceIfExists];
            v155 = [sharedInstanceIfExists applicationWithBundleIdentifier:bundleIdentifier2];

            if (v155)
            {
              v156 = bundleIdentifier2;
            }

            else
            {
              v156 = +[SBApplicationSupportServiceRequestContext hostingApplicationBundleIDForPid:](SBApplicationSupportServiceRequestContext, "hostingApplicationBundleIDForPid:", [originCopy pid]);

              sharedInstanceIfExists2 = [*(v146 + 3112) sharedInstanceIfExists];
              v155 = [sharedInstanceIfExists2 applicationWithBundleIdentifier:v156];

              if (!v155)
              {
                v157 = v267;
                _classicMode = v278;
                goto LABEL_224;
              }
            }

            _classicMode = [v155 _classicMode];

            v157 = v267;
LABEL_224:

LABEL_225:
            v279 = _classicMode;
            v254 = v299 & [v346 _canLaunchInClassicMode:_classicMode];
            if (v346)
            {
              info6 = [v346 info];
              hasHiddenTag = [info6 hasHiddenTag];

              _classicMode2 = [v346 _classicMode];
              if (hasHiddenTag)
              {
                v165 = _classicMode2;
                processState2 = [v346 processState];
                isRunning2 = [processState2 isRunning];
                v168 = v165 == _classicMode ? 0 : isRunning2;
                v169 = settingsCopy;
                v170 = requestCopy;
                v171 = v168 & v254;

                v79 = v171 == 1;
                requestCopy = v170;
                settingsCopy = v169;
                if (v79)
                {
                  SBWorkspaceTerminateApplication(v346, 5, 0, @"exit for classic mode relaunch", 0);
                }
              }
            }

            if (bOOLValue13)
            {
              SBWorkspaceTerminateApplication(v346, 5, 0, @"terminate for debugging launch request", 0);
            }

            if (v157)
            {
              v172 = [SBBackgroundFetchExternalRequest alloc];
              info7 = [v346 info];
              v174 = [(SBBackgroundFetchExternalRequest *)v172 initForAppInfo:info7];

              v268 = v174;
              action = [v174 action];
              [obja addObject:action];
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
            if (requestCopy || ![v294 length])
            {
              v179 = 0;
            }

            else if ([v292 length])
            {
              v187 = [(SBMainWorkspace *)selfCopy _handlerForExtensionPoint:v292];
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
              v253 = isChamoisOrFlexibleWindowing;
              v318 = requestCopy;
              if ([(SBInCallPresentationManager *)selfCopy->_inCallPresentationManager canHandleOpenApplicationRequestForApplication:v178])
              {
                [v178 processState];
                v181 = v180 = v178;
                v182 = [v181 pid];

                mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstanceIfExists];
                v184 = [mEMORY[0x277D0AAC0] processForPID:v182];

                workspace = [v184 workspace];
                v186 = v180;
                originCopy = v327;
                [(SBInCallPresentationManager *)selfCopy->_inCallPresentationManager handleOpenApplicationRequest:v186 clientWorkspace:workspace actions:obja origin:v327 options:optionsCopy withResult:v334];

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
                v324 = settingsCopy;
                sceneManager = [v339 sceneManager];
                if (!_fbsDisplayConfiguration)
                {
                  _fbsDisplayConfiguration = [v339 _fbsDisplayConfiguration];
                }

                displayIdentity = [sceneManager displayIdentity];
                v193 = [optionsCopy objectForKey:@"SBWorkspaceOpenApplicationResolvedWebClipSceneEntityKey"];
                info8 = [v346 info];
                v256 = v193;
                if (([info8 isAppClip] & 1) != 0 || objc_msgSend(v346, "isWebApplication"))
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

                if (((alwaysDeliversOpenURLActionsUsingWorkspace | bOOLValue6) & 1) != 0 && ([v346 info], v212 = objc_claimAutoreleasedReturnValue(), v213 = objc_msgSend(v212, "supportsMultiwindow"), v212, v213))
                {
                  v195 = [SBDeviceApplicationSceneEntity newEntityWithApplication:v346 sceneHandleProvider:sceneManager displayIdentity:displayIdentity];
                }

                else
                {
                  if (v289)
                  {
                    v214 = [SBDeviceApplicationSceneEntity entityWithApplication:v346 scenePersistenceIdentifier:v289 sceneHandleProvider:sceneManager displayIdentity:displayIdentity];
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

                    [(SBMainWorkspace *)selfCopy _updateActivationSettings:v324 forRequestWithOptions:v342 clientProcess:v327 application:v346];
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

                    if (bOOLValue12)
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
                    v263 = sceneManager;
                    v379 = v263;
                    v261 = displayIdentity;
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
                      supportedLayoutRoles = [v214 supportedLayoutRoles];
                      v230 = [supportedLayoutRoles containsRole:v427];

                      if ((v230 & 1) == 0)
                      {
                        uniqueIdentifier = [v214 uniqueIdentifier];
                        applicationContext = SBLayoutRoleDescription(v427);
                        v222 = uniqueIdentifier;
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
                          application = [v240 application];
                          _dataStore = [application _dataStore];

                          v270 = v240;
                          uniqueIdentifier2 = [v240 uniqueIdentifier];
                          v244 = [_dataStore sceneStoreForIdentifier:uniqueIdentifier2 creatingIfNecessary:0];
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

                                if ((bOOLValue14 & 1) == 0)
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

                                v239 = -[SBMainWorkspace _isLaunchingApplicationAfterSetupForRequestWithBundleIdentifier:options:origin:](selfCopy, "_isLaunchingApplicationAfterSetupForRequestWithBundleIdentifier:options:origin:", v318, v342, v327) || [v296 isEqualToString:*MEMORY[0x277CEA5F8]];
                                if (bOOLValue)
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

                                if (bOOLValue7)
                                {
                                  v246 |= 4uLL;
                                }

                                if (alwaysDeliversOpenURLActionsUsingWorkspace)
                                {
                                  v248 = v246 | 0x10;
                                }

                                else
                                {
                                  v248 = v246;
                                }

                                v249 = [(SBMainWorkspace *)selfCopy createRequestForApplicationActivation:v214 withDisplayConfiguration:_fbsDisplayConfiguration options:v248 | [(SBMainWorkspace *)selfCopy _siriWorkspaceTransitionOptionsFromOpenApplicationOptions:v342]];
                                [v249 setOriginatingProcess:v327];
                                uniqueIdentifier3 = [v214 uniqueIdentifier];
                                [v327 pid];
                                v251 = BSProcessDescriptionForPID();
                                [v249 setEventLabelWithFormat:@"OpenApplication(%@)ForRequester(%@)", uniqueIdentifier3, v251];

                                [v249 setShouldPreventDismissalOfUnrelatedTransientOverlays:bOOLValue9];
                                applicationContext = [v249 applicationContext];
                                v367[0] = MEMORY[0x277D85DD0];
                                v367[1] = 3221225472;
                                v367[2] = __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_2_689;
                                v367[3] = &unk_2783AA0B8;
                                v369 = v260;
                                v368 = v268;
                                [applicationContext setResultBlock:v367];
                                v364[0] = MEMORY[0x277D85DD0];
                                v364[1] = 3221225472;
                                v364[2] = __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_3;
                                v364[3] = &__block_descriptor_34_e54_v16__0__SBWorkspaceApplicationSceneTransitionContext_8l;
                                v365 = v239;
                                v366 = bOOLValue8;
                                [v249 modifyApplicationContext:v364];
                                [(SBMainWorkspace *)selfCopy _determineSourceForTransitionRequest:v249];
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
                                v363 = bOOLValue2;
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
                                [(SBMainWorkspace *)selfCopy executeTransitionRequest:v249 withValidator:v350];

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

                          requestCopy = v318;
                          settingsCopy = v324;
                          originCopy = v327;
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

                  v195 = [SBDeviceApplicationSceneEntity defaultEntityWithApplication:v346 targetContentIdentifier:absoluteString sceneHandleProvider:sceneManager displayIdentity:displayIdentity];
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
              _mainScene = [SBApp _mainScene];
              [_mainScene sendActions:obja];

              (v334[2])(v334, 0);
            }

            else if (!v179)
            {
              __SBWorkspaceActivateSpringBoardWithResult(0, 0, 0, 0, 0, v334, 0);
            }

            originCopy = v327;
            goto LABEL_268;
          }

          v323 = settingsCopy;
          v148 = requestCopy;
          if (v290)
          {
            info4 = SBLogCommon();
            if (os_log_type_enabled(info4, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21ED4E000, info4, OS_LOG_TYPE_DEFAULT, "Trying to launch an app clip, but this looks like a launch from Xcode. Falling back to default application launch path", buf, 2u);
            }

            originCopy = v327;
            v56 = v321;
            goto LABEL_211;
          }

          webClipService = [SBApp webClipService];
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
                v206 = [webClipService targetApplicationBundleIdentifierForWebClip:v205];
                if (v206 && BSEqualStrings())
                {
                  [v199 addObject:v205];
                }
              }

              v202 = [v200 countByEnumeratingWithState:&v393 objects:v438 count:16];
            }

            while (v202);
          }

          v207 = [SBWebClipService bestWebClipForTargetContentIdentifier:absoluteString fromWebClips:v199];
          if (v207)
          {
            lastObject = v207;
            v209 = SBLogCommon();
            if (!os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_308;
            }

            pageURL = [lastObject pageURL];
            *buf = 138543874;
            *&buf[4] = v148;
            v434 = 2114;
            v435 = absoluteString;
            v436 = 2114;
            v437 = pageURL;
            v211 = "Best web clip found for app clip '%{public}@' with targetContentIdentifier '%{public}@': '%{public}@'.";
          }

          else
          {
            lastObject = [v199 lastObject];
            v209 = SBLogCommon();
            if (!os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_308;
            }

            pageURL = [lastObject pageURL];
            *buf = 138543874;
            *&buf[4] = v148;
            v434 = 2114;
            v435 = absoluteString;
            v436 = 2114;
            v437 = pageURL;
            v211 = "Couldn't find a web clip for '%{public}@' with targetContentIdentifier '%{public}@'. Picking: '%{public}@'.";
          }

          _os_log_impl(&dword_21ED4E000, v209, OS_LOG_TYPE_DEFAULT, v211, buf, 0x20u);

LABEL_308:
          identifier = [lastObject identifier];
          if (identifier)
          {
            v385[0] = MEMORY[0x277D85DD0];
            v385[1] = 3221225472;
            v385[2] = __94__SBMainWorkspace__handleOpenApplicationRequest_options_activationSettings_origin_withResult___block_invoke_662;
            v385[3] = &unk_2783AA040;
            v386 = v342;
            v387 = selfCopy;
            v388 = v148;
            v389 = v323;
            v390 = v327;
            v392 = v334;
            v391 = identifier;
            [webClipService prepareToLaunchWebClipWithIdentifier:v391 handler:v385];

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

          requestCopy = v148;
          settingsCopy = v323;
          originCopy = v327;
          v145 = v346;
          v56 = v321;
          optionsCopy = v342;
          v146 = 0x27839E000;
          if (identifier)
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

        bundleIdentifier3 = [v346 bundleIdentifier];
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

    settingsCopy = v119;
    originCopy = v327;
    if (((v271 | bOOLValue4) & 1) == 0)
    {
      v404 = 0;
      v141 = [(SBMainWorkspace *)selfCopy _canImplicitlyUnlockAtLockScreenWhileAuthenticatedFromOrigin:v327 givenOrigin:v296 trustedRequest:1 outReason:&v404];
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
    v398 = optionsCopy;
    v399 = selfCopy;
    v400 = requestCopy;
    v401 = settingsCopy;
    v402 = v327;
    v403 = v334;
    v139 = v296;
    v21 = v346;
    [SBMainWorkspace _attemptUnlockToApplication:selfCopy showPasscode:"_attemptUnlockToApplication:showPasscode:origin:givenOrigin:options:completion:" origin:? givenOrigin:? options:? completion:?];

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

- (unint64_t)_siriWorkspaceTransitionOptionsFromOpenApplicationOptions:(id)options
{
  v3 = *MEMORY[0x277D670D8];
  optionsCopy = options;
  v5 = [optionsCopy bs_safeObjectForKey:v3 ofType:objc_opt_class()];

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

- (BOOL)isApplicationRunningAsViewService:(id)service
{
  v23 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  processState = [serviceCopy processState];
  if ([processState isRunning] && (objc_msgSend(serviceCopy, "info"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasViewServicesEntitlement"), v5, v6))
  {
    v7 = MEMORY[0x277D46F48];
    v8 = [MEMORY[0x277D46F50] identifierWithPid:{objc_msgSend(processState, "pid")}];
    v9 = [v7 handleForIdentifier:v8 error:0];

    if (v9)
    {
      descriptor = [MEMORY[0x277D46FB0] descriptor];
      [descriptor setValues:24];
      v11 = [v9 currentStateMatchingDescriptor:descriptor];
      v12 = v11;
      if (v11)
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        assertions = [v11 assertions];
        v14 = [assertions countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v14)
        {
          v15 = *v19;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v19 != v15)
              {
                objc_enumerationMutation(assertions);
              }

              if ([*(*(&v18 + 1) + 8 * i) reason] == 9)
              {
                LOBYTE(v14) = 1;
                goto LABEL_17;
              }
            }

            v14 = [assertions countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)_handleTrustedOpenRequestForApplication:(id)application options:(id)options activationSettings:(id)settings origin:(id)origin withResult:(id)result
{
  applicationCopy = application;
  optionsCopy = options;
  settingsCopy = settings;
  originCopy = origin;
  resultCopy = result;
  if (!resultCopy)
  {
    [SBMainWorkspace _handleTrustedOpenRequestForApplication:a2 options:? activationSettings:? origin:? withResult:?];
  }

  if (!settingsCopy)
  {
    [SBMainWorkspace _handleTrustedOpenRequestForApplication:a2 options:? activationSettings:? origin:? withResult:?];
  }

  v18 = resultCopy;
  if (([settingsCopy BOOLForActivationSetting:52] & 1) == 0)
  {
    [SBMainWorkspace _handleTrustedOpenRequestForApplication:options:activationSettings:origin:withResult:];
  }

  if ([optionsCopy bs_BOOLForKey:*MEMORY[0x277D0ABF0]])
  {
    [(SBMainWorkspace *)self _handleOpenApplicationRequest:applicationCopy options:optionsCopy activationSettings:settingsCopy origin:originCopy withResult:v18];
  }

  else
  {
    v19 = [optionsCopy bs_safeURLForKey:*MEMORY[0x277D0AC40]];
    v20 = SBWorkspaceOpenURLIsHandledBySpringBoard(v19);

    if (v20)
    {
      applicationCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"FBSystemService-SpringBoardURL: %@", applicationCopy];
      v22 = MEMORY[0x277D0AB18];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __104__SBMainWorkspace__handleTrustedOpenRequestForApplication_options_activationSettings_origin_withResult___block_invoke;
      v40[3] = &unk_2783AA150;
      v40[4] = self;
      v33 = &v41;
      v41 = applicationCopy;
      v32 = &v42;
      v42 = optionsCopy;
      v31 = &v43;
      v43 = settingsCopy;
      v23 = &v44;
      v44 = originCopy;
      v24 = &v45;
      v45 = v18;
      v25 = v40;
    }

    else
    {
      applicationCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"FBSystemService-TrustedRequest: %@", applicationCopy];
      v22 = MEMORY[0x277D0AB18];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __104__SBMainWorkspace__handleTrustedOpenRequestForApplication_options_activationSettings_origin_withResult___block_invoke_2;
      v34[3] = &unk_2783AA150;
      v34[4] = self;
      v33 = &v35;
      v35 = applicationCopy;
      v32 = &v36;
      v36 = optionsCopy;
      v31 = &v37;
      v37 = settingsCopy;
      v23 = &v38;
      v38 = originCopy;
      v24 = &v39;
      v39 = v18;
      v25 = v34;
    }

    v26 = v22;
    selfCopy = self;
    v28 = applicationCopy;
    v29 = [v26 eventWithName:applicationCopy handler:v25];

    eventQueue = [(SBWorkspace *)selfCopy eventQueue];
    [eventQueue executeOrAppendEvent:v29];
  }
}

- (void)_handleUntrustedOpenRequestForApplication:(id)application options:(id)options activationSettings:(id)settings origin:(id)origin withResult:(id)result
{
  applicationCopy = application;
  optionsCopy = options;
  settingsCopy = settings;
  originCopy = origin;
  resultCopy = result;
  if (!resultCopy)
  {
    [SBMainWorkspace _handleUntrustedOpenRequestForApplication:a2 options:? activationSettings:? origin:? withResult:?];
  }

  v18 = resultCopy;
  if (!settingsCopy)
  {
    [SBMainWorkspace _handleUntrustedOpenRequestForApplication:a2 options:? activationSettings:? origin:? withResult:?];
  }

  applicationCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"FBSystemService-UntrustedRequest: %@", applicationCopy];
  eventQueue = [(SBWorkspace *)self eventQueue];
  v21 = MEMORY[0x277D0AB18];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __106__SBMainWorkspace__handleUntrustedOpenRequestForApplication_options_activationSettings_origin_withResult___block_invoke;
  v28[3] = &unk_2783AA150;
  v28[4] = self;
  v29 = applicationCopy;
  v30 = optionsCopy;
  v31 = settingsCopy;
  v32 = originCopy;
  v33 = v18;
  v22 = v18;
  v23 = originCopy;
  v24 = settingsCopy;
  v25 = optionsCopy;
  v26 = applicationCopy;
  v27 = [v21 eventWithName:applicationCopy handler:v28];
  [eventQueue executeOrAppendEvent:v27];
}

- (void)_handleUserActionRequest:(id)request options:(id)options activationSettings:(id)settings origin:(id)origin withResult:(id)result
{
  v160 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  settingsCopy = settings;
  originCopy = origin;
  resultCopy = result;
  BSDispatchQueueAssertMain();
  if (!resultCopy)
  {
    [SBMainWorkspace _handleUserActionRequest:a2 options:? activationSettings:? origin:? withResult:?];
  }

  if (!settingsCopy)
  {
    [SBMainWorkspace _handleUserActionRequest:a2 options:? activationSettings:? origin:? withResult:?];
  }

  v128 = resultCopy;
  v17 = [optionsCopy bs_safeURLForKey:*MEMORY[0x277D0AC40]];
  v18 = +[SBApplicationController sharedInstance];
  v19 = [settingsCopy BOOLForActivationSetting:52];
  scheme = [v17 scheme];
  v123 = [scheme isEqualToString:@"test"];

  v132 = v18;
  dataActivationApplication = [v18 dataActivationApplication];
  bundleIdentifier = [dataActivationApplication bundleIdentifier];
  v133 = [requestCopy isEqualToIgnoringCase:bundleIdentifier];

  v23 = [optionsCopy bs_safeObjectForKey:@"__SBWorkspaceOpenOptionUnlockResult" ofType:objc_opt_class()];
  bOOLValue = [v23 BOOLValue];

  v24 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D0AC28] ofType:objc_opt_class()];
  v153 = 0u;
  v154 = 0u;
  auditToken = [originCopy auditToken];
  v26 = auditToken;
  if (auditToken)
  {
    [auditToken realToken];
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
    v28 = bOOLValue | v133;
  }

  v127 = v27;
  if (v27)
  {
    if ((v28 & 1) == 0)
    {
      v29 = v27;
      if ((SBWorkspaceHasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication(v27) & 1) == 0 && !-[SBMainWorkspace isApplicationRunningAsViewService:](self, "isApplicationRunningAsViewService:", v29) && ([originCopy hasEntitlement:@"com.apple.springboard.openurlinbackground"] & 1) == 0)
      {
        bundleIdentifier2 = [v29 bundleIdentifier];
        v85 = FBSOpenApplicationErrorCreate();
        v57 = v128;
        (v128)[2](v128, v85);

        goto LABEL_84;
      }
    }
  }

  mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
  v131 = originCopy;
  v31 = [mEMORY[0x277D0AAC0] processForPID:{objc_msgSend(originCopy, "pid")}];

  v134 = v31;
  isExtensionProcess = [v31 isExtensionProcess];
  v33 = isExtensionProcess & (v19 | bOOLValue);
  v129 = requestCopy;
  v126 = v17;
  if (!isExtensionProcess || (v33 & 1) != 0)
  {
    goto LABEL_36;
  }

  v34 = v134;
  extensionInfo = [v34 extensionInfo];
  typeIdentifier = [extensionInfo typeIdentifier];
  sb_type = [extensionInfo sb_type];
  v38 = sb_type;
  v119 = typeIdentifier;
  if (sb_type)
  {
    v39 = NSStringFromSBExtensionType(sb_type);
  }

  else
  {
    v39 = typeIdentifier;
  }

  v121 = v39;
  originCopy = v131;
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
    extensionIdentifier = [extensionInfo extensionIdentifier];
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

        identityOfCurrentProcess = 0;
        v51 = 1;
        extensionIdentifier2 = extensionIdentifier;
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
        extensionIdentifier2 = extensionIdentifier;
LABEL_111:

        identityOfCurrentProcess = 0;
        goto LABEL_112;
      }
    }

    v114 = extensionInfo;
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
      extensionInfo = v114;
      goto LABEL_94;
    }

    v91 = v90;
    descriptor = [MEMORY[0x277D46FB0] descriptor];
    [descriptor setValues:1];
    v113 = v91;
    log = *MEMORY[0x277D0AC90];
    v155 = *MEMORY[0x277D0AC90];
    v93 = [MEMORY[0x277CBEA60] arrayWithObjects:&v155 count:1];
    [descriptor setEndowmentNamespaces:v93];

    v112 = descriptor;
    v94 = [v113 currentStateMatchingDescriptor:descriptor];
    v111 = v94;
    if (v94)
    {
      endowmentNamespaces = v94;
      taskState = [v94 taskState];
      v97 = taskState;
      if (taskState == 4 || taskState == 2)
      {
        endowmentNamespaces = [endowmentNamespaces endowmentNamespaces];
        v108 = [endowmentNamespaces containsObject:log];
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

        extensionInfo = v114;
        goto LABEL_32;
      }

      v24 = v118;
      if (!v104)
      {
        extensionInfo = v114;
        extensionIdentifier2 = extensionIdentifier;
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
        extensionInfo = v114;
        extensionIdentifier2 = extensionIdentifier;
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

  v41 = extensionInfo;
  v116 = v24;
  identityOfCurrentProcess = [MEMORY[0x277D46F60] identityOfCurrentProcess];
  identity = [v34 identity];
  hostIdentity = [identity hostIdentity];
  v45 = [identityOfCurrentProcess isEqual:hostIdentity];

  if (v45)
  {
    extensionInfo = v41;
    extensionIdentifier2 = [v41 extensionIdentifier];
    notificationDispatcher = [SBApp notificationDispatcher];
    v48 = [notificationDispatcher isNotificationContentExtensionVisible:extensionIdentifier2];

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
      requestCopy = v129;
      v17 = v126;
LABEL_36:
      if (!v17)
      {
        originCopy = v131;
        v57 = v128;
        [(SBMainWorkspace *)self _handleOpenApplicationRequest:requestCopy options:optionsCopy activationSettings:settingsCopy origin:v131 withResult:v128];
LABEL_83:

        goto LABEL_84;
      }

      v55 = settingsCopy;
      v56 = v24;
      if (v133)
      {
        [v132 dataActivationApplication];
      }

      else
      {
        [v132 applicationWithBundleIdentifier:requestCopy];
      }
      v58 = ;
      v59 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D0ABF0] ofType:objc_opt_class()];
      bOOLValue2 = [v59 BOOLValue];

      v151 = 0;
      v61 = [(SBMainWorkspace *)self _targetWindowSceneForApplication:v58 options:optionsCopy settings:v55 requireForeground:bOOLValue2 ^ 1u targetDisplayConfiguration:0 error:&v151];
      v62 = v151;
      v63 = v62;
      if (!v61 && v62)
      {
        v57 = v128;
        (v128)[2](v128, v62);
        originCopy = v131;
        v24 = v56;
        settingsCopy = v55;
LABEL_81:

LABEL_82:
        requestCopy = v129;
        v17 = v126;
        goto LABEL_83;
      }

      v122 = v62;
      uiLockStateProvider = [v61 uiLockStateProvider];
      v65 = uiLockStateProvider;
      v24 = v56;
      v115 = v55;
      if (uiLockStateProvider)
      {
        v66 = uiLockStateProvider;
      }

      else
      {
        v66 = +[SBLockScreenManager sharedInstance];
      }

      v125 = v66;
      v68 = v58;

      authenticationStatusProvider = [v61 authenticationStatusProvider];
      v70 = authenticationStatusProvider;
      if (authenticationStatusProvider)
      {
        authenticationController = authenticationStatusProvider;
      }

      else
      {
        authenticationController = [SBApp authenticationController];
      }

      v72 = authenticationController;

      isUILocked = [v125 isUILocked];
      v120 = v72;
      if (v123 & 1 | ((isUILocked & 1) == 0) | ([v72 isAuthenticatedCached] | bOOLValue) & 1)
      {
        v58 = v68;
        if (!v129 || v68)
        {
          originCopy = v131;
          v74 = v120;
          settingsCopy = v115;
          if (v58)
          {
            [(SBMainWorkspace *)self _updateActivationSettings:v115 forRequestWithOptions:optionsCopy clientProcess:v131 application:v58];
            if ((bOOLValue & 1) == 0)
            {
              [v125 isUILocked];
            }

            [v115 setFlag:BSSettingFlagIfYes() forActivationSetting:29];
          }
        }

        else
        {
          originCopy = v131;
          v74 = v120;
          settingsCopy = v115;
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
          v139 = originCopy;
          v140 = v58;
          v141 = settingsCopy;
          v57 = v128;
          v142 = v128;
          [v87 requestTransitionWithBuilder:v138];
        }

        else
        {
          v57 = v128;
          [SBApp applicationOpenURL:v126 withApplication:v58 animating:1 activationSettings:settingsCopy origin:originCopy notifyLSOnFailure:0 withResult:v128];
        }

        goto LABEL_79;
      }

      v76 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D0AC70] ofType:objc_opt_class()];
      bOOLValue3 = [v76 BOOLValue];

      v77 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D0AC58] ofType:objc_opt_class()];
      bOOLValue4 = [v77 BOOLValue];

      v79 = v131;
      v58 = v68;
      settingsCopy = v55;
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

          if (((bOOLValue3 | bOOLValue4) & 1) == 0)
          {
            v98 = FBSOpenApplicationErrorCreate();
            v57 = v128;
            (v128)[2](v128, v98);

            originCopy = v131;
            v24 = v117;
            goto LABEL_62;
          }

          v79 = v131;
          v24 = v117;
          if (!v33)
          {
            FBSOpenApplicationErrorCreate();
            v86 = originCopy = v131;
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
      v144 = optionsCopy;
      selfCopy = self;
      v146 = v129;
      v147 = v55;
      v148 = v79;
      v57 = v128;
      v149 = v128;
      settingsCopy = v55;
      [(SBMainWorkspace *)self _attemptUnlockToApplication:v58 showPasscode:bOOLValue4 & 1 origin:v148 givenOrigin:v24 options:v144 completion:v143];

      originCopy = v131;
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
  requestCopy = v129;
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

- (BOOL)_canImplicitlyUnlockAtLockScreenWhileAuthenticatedFromOrigin:(id)origin givenOrigin:(id)givenOrigin trustedRequest:(BOOL)request outReason:(id *)reason
{
  requestCopy = request;
  originCopy = origin;
  givenOriginCopy = givenOrigin;
  authenticationController = [SBApp authenticationController];
  isAuthenticated = [authenticationController isAuthenticated];

  if (isAuthenticated)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __117__SBMainWorkspace__canImplicitlyUnlockAtLockScreenWhileAuthenticatedFromOrigin_givenOrigin_trustedRequest_outReason___block_invoke;
    v29[3] = &__block_descriptor_40_e18_v16__0__NSString_8l;
    v29[4] = reason;
    v13 = MEMORY[0x223D6F7F0](v29);
    mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
    v15 = [mEMORY[0x277D0AAC0] processForPID:{objc_msgSend(originCopy, "pid")}];

    if ([v15 isApplicationProcess])
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    applicationInfo = [v16 applicationInfo];
    hasViewServicesEntitlement = [applicationInfo hasViewServicesEntitlement];

    LODWORD(applicationInfo) = getpid();
    v19 = [originCopy pid];
    v20 = [givenOriginCopy isEqualToString:*MEMORY[0x277D67080]];
    v21 = applicationInfo == v19 || requestCopy;
    v22 = v21 | v20 | hasViewServicesEntitlement;
    if (SBSpotlightIsVisible())
    {
      v23 = +[SBLockScreenManager sharedInstance];
      isUILocked = [v23 isUILocked];
    }

    else
    {
      isUILocked = 0;
    }

    v26 = +[SBBacklightController sharedInstance];
    screenIsOn = [v26 screenIsOn];

    v25 = screenIsOn & isUILocked & v22;
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

- (void)_attemptUnlockToApplication:(id)application showPasscode:(BOOL)passcode origin:(id)origin givenOrigin:(id)givenOrigin options:(id)options completion:(id)completion
{
  passcodeCopy = passcode;
  applicationCopy = application;
  originCopy = origin;
  givenOriginCopy = givenOrigin;
  optionsCopy = options;
  v15 = SBApp;
  completionCopy = completion;
  authenticationController = [v15 authenticationController];
  LOBYTE(v15) = [authenticationController hasAuthenticatedAtLeastOnceSinceBoot];

  v62 = originCopy;
  if (v15)
  {
    CanLaunchWhilePasscodeLocked = SBWorkspaceApplicationCanLaunchWhilePasscodeLocked(applicationCopy);
    CanResumeWhilePasscodeLocked = SBWorkspaceApplicationCanResumeWhilePasscodeLocked(applicationCopy);
    CanLaunchWhilePasscodeLockedIfSecureLaunchRequested = SBWorkspaceApplicationCanLaunchWhilePasscodeLockedIfSecureLaunchRequested(applicationCopy);
  }

  else
  {
    CanResumeWhilePasscodeLocked = SBWorkspaceApplicationCanResumeWhilePasscodeLocked(applicationCopy);
    CanLaunchWhilePasscodeLockedIfSecureLaunchRequested = 0;
    CanLaunchWhilePasscodeLocked = 0;
  }

  v60 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D670F8] ofType:objc_opt_class()];
  v53 = [v60 isEqualToString:*MEMORY[0x277D67058]];
  v18 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D243B8] ofType:objc_opt_class()];
  bOOLValue = [v18 BOOLValue];

  v20 = +[SBCoverSheetPresentationManager sharedInstance];
  secureAppViewController = [v20 secureAppViewController];
  applicationSceneHandle = [secureAppViewController applicationSceneHandle];
  application = [applicationSceneHandle application];

  v24 = [givenOriginCopy isEqualToString:*MEMORY[0x277CFC8B0]];
  v52 = *MEMORY[0x277CD9308];
  v57 = [givenOriginCopy isEqualToString:?];
  v25 = [givenOriginCopy isEqualToString:*MEMORY[0x277CEA5F8]];
  v56 = givenOriginCopy;
  v26 = [givenOriginCopy isEqualToString:*MEMORY[0x277D67060]];
  v27 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D66FE0] ofType:objc_opt_class()];
  v28 = bOOLValue;
  if ([v27 BOOLValue])
  {
    bundleIdentifier = [applicationCopy bundleIdentifier];
    v63 = [bundleIdentifier isEqualToString:@"com.apple.InCallService"];
  }

  else
  {
    v63 = 0;
  }

  v30 = CanLaunchWhilePasscodeLocked | CanResumeWhilePasscodeLocked;
  v59 = application;
  if ((CanLaunchWhilePasscodeLocked | CanResumeWhilePasscodeLocked))
  {
    v31 = v25;
    if (v24 & 1 | (([application isEqual:applicationCopy] & 1) == 0))
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

  v33 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277D243B0] ofType:objc_opt_class()];
  bOOLValue2 = [v33 BOOLValue];

  v35 = bOOLValue2 & CanLaunchWhilePasscodeLocked;
  if (v24)
  {
    bundleIdentifier2 = [applicationCopy bundleIdentifier];
    v37 = [bundleIdentifier2 isEqualToString:@"com.apple.camera"] & (v28 ^ 1);
  }

  else
  {
    LOBYTE(v37) = 0;
  }

  if (passcodeCopy)
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
  bundleIdentifier3 = [applicationCopy bundleIdentifier];
  v45 = [v43 stringWithFormat:@"SBWorkspaceRequest: Open %@", bundleIdentifier3];
  [(SBLockScreenUnlockRequest *)v42 setName:v45];

  [(SBLockScreenUnlockRequest *)v42 setProcess:v41];
  if ((v63 & 1) == 0)
  {
    [(SBLockScreenUnlockRequest *)v42 setDestinationApplication:applicationCopy];
  }

  [(SBLockScreenUnlockRequest *)v42 setWantsBiometricPresentation:1];
  if (v57)
  {
    [(SBLockScreenUnlockRequest *)v42 setForceAlertAuthenticationUI:1];
  }

  v46 = *MEMORY[0x277D670C0];
  v47 = [optionsCopy objectForKey:*MEMORY[0x277D670C0]];

  if (v47)
  {
    v48 = [optionsCopy objectForKeyedSubscript:v46];
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
  [v51 unlockWithRequest:v42 completion:completionCopy];
}

- (void)systemService:(id)service isPasscodeLockedOrBlockedWithResult:(id)result
{
  if (result)
  {
    v5 = SBApp;
    resultCopy = result;
    lockOutController = [v5 lockOutController];
    (*(result + 2))(resultCopy, [lockOutController isLockedOut]);
  }
}

- (void)systemService:(id)service handleActions:(id)actions origin:(id)origin withResult:(id)result
{
  actionsCopy = actions;
  originCopy = origin;
  resultCopy = result;
  eventQueue = [(SBWorkspace *)self eventQueue];
  v13 = MEMORY[0x277D0AB18];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__SBMainWorkspace_systemService_handleActions_origin_withResult___block_invoke;
  v18[3] = &unk_2783AA1E8;
  v19 = actionsCopy;
  v20 = originCopy;
  v21 = resultCopy;
  v14 = resultCopy;
  v15 = originCopy;
  v16 = actionsCopy;
  v17 = [v13 eventWithName:@"FBSystemService-HandleActions" handler:v18];
  [eventQueue executeOrAppendEvent:v17];
}

void __65__SBMainWorkspace_systemService_handleActions_origin_withResult___block_invoke(void *a1)
{
  v2 = +[SBActionHandler sharedInstance];
  [v2 handleActions:a1[4] origin:a1[5] withResult:a1[6]];
}

- (void)systemServicePrepareForExit:(id)exit andRelaunch:(BOOL)relaunch
{
  restartManager = [SBApp restartManager];
  [restartManager _exitIsImminent];
}

- (void)systemService:(id)service prepareForShutdownWithOptions:(id)options origin:(id)origin
{
  v5 = MEMORY[0x277CBEBD0];
  optionsCopy = options;
  standardUserDefaults = [v5 standardUserDefaults];
  date = [MEMORY[0x277CBEAA8] date];
  [standardUserDefaults setObject:date forKey:@"SBLastKnownShutdownDate"];

  LODWORD(standardUserDefaults) = [optionsCopy isUserInitiated];
  if (standardUserDefaults)
  {
    v9 = dispatch_semaphore_create(0);
    restartManager = [SBApp restartManager];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__SBMainWorkspace_systemService_prepareForShutdownWithOptions_origin___block_invoke;
    v14[3] = &unk_2783A8C18;
    v15 = v9;
    v11 = v9;
    [restartManager _playShutdownSound:v14];

    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    restartManager2 = [SBApp restartManager];
    [restartManager2 _exitIsImminent];
  }

  else
  {
    restartManager3 = [SBApp restartManager];
    [restartManager3 _exitIsImminent];
  }
}

- (void)backlightController:(id)controller didAnimateBacklightToFactor:(float)factor source:(int64_t)source
{
  v7 = [SBKeyboardFocusCoordinator sharedInstance:controller];
  v5 = +[SBKeyboardFocusArbitrationReason backlightControllerDidAnimate];
  v6 = [v5 annotatedWithSourceName:@"SBWorkspace"];
  [v7 requestArbitrationForSBWindowScene:0 forReason:v6];
}

- (void)watchdogFired:(id)fired
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

- (void)transactionDidComplete:(id)complete
{
  v17 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  if (self->_currentTransaction != completeCopy)
  {
    [(SBMainWorkspace *)&self->_currentTransaction transactionDidComplete:a2, self, completeCopy];
  }

  isFailed = [(SBWorkspaceTransaction *)completeCopy isFailed];
  v7 = SBLogTransactionVerbose();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  if (isFailed)
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
        _descriptionProem = [(SBWorkspaceTransaction *)completeCopy _descriptionProem];
        *buf = 138543362;
        v16 = _descriptionProem;
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
        _descriptionProem2 = [(SBWorkspaceTransaction *)completeCopy _descriptionProem];
        *buf = 138543362;
        v16 = _descriptionProem2;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Root transaction complete: %{public}@", buf, 0xCu);
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(SBWorkspaceTransaction *)completeCopy clearsCompletionAsynchronously])
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

- (id)currentStatusBarSettingsForTransientOverlayScenePresenter:(id)presenter
{
  presenterCopy = presenter;
  v5 = objc_alloc_init(SBMutableStatusBarSettings);
  windowScene = [presenterCopy windowScene];

  statusBarManager = [windowScene statusBarManager];

  v8 = MEMORY[0x277CCABB0];
  assertionManager = [statusBarManager assertionManager];
  isFrontmostStatusBarHidden = [assertionManager isFrontmostStatusBarHidden];
  if (isFrontmostStatusBarHidden)
  {
    v11 = 0.0;
  }

  else
  {
    v3 = +[SBBacklightController sharedInstance];
    screenIsOn = [v3 screenIsOn];
    v11 = 0.0;
    if (screenIsOn)
    {
      v11 = 1.0;
    }
  }

  v13 = [v8 numberWithDouble:v11];
  [(SBMutableStatusBarSettings *)v5 setAlpha:v13];

  if ((isFrontmostStatusBarHidden & 1) == 0)
  {
  }

  frontmostStatusBarStyleRequest = [statusBarManager frontmostStatusBarStyleRequest];
  v15 = [MEMORY[0x277D760A8] sharedInstanceForStyle:{objc_msgSend(frontmostStatusBarStyleRequest, "legibilityStyle")}];
  [(SBMutableStatusBarSettings *)v5 setLegibilitySettings:v15];

  -[SBMutableStatusBarSettings setStyle:](v5, "setStyle:", [frontmostStatusBarStyleRequest style]);

  return v5;
}

- (id)transientOverlayScenePresenter:(id)presenter acquireHideAppStatusBarAssertionWithReason:(id)reason animated:(BOOL)animated
{
  animatedCopy = animated;
  reasonCopy = reason;
  windowScene = [presenter windowScene];
  switcherController = [windowScene switcherController];
  v10 = [switcherController requestInAppStatusBarHiddenAssertionForReason:reasonCopy animated:animatedCopy];

  return v10;
}

- (BOOL)isKeyboardVisibleForSpringBoardForTransientOverlayScenePresenter:(id)presenter
{
  windowScene = [presenter windowScene];
  medusaHostedKeyboardWindowController = [windowScene medusaHostedKeyboardWindowController];
  isKeyboardVisibleForSpringBoard = [medusaHostedKeyboardWindowController isKeyboardVisibleForSpringBoard];

  return isKeyboardVisibleForSpringBoard;
}

- (unint64_t)defaultSupportedInterfaceOrientationsForTransientOverlayScenePresenter:(id)presenter
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
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

- (void)transientOverlayScenePresenterRequestsAppIconForceTouchDismissal:(id)dismissal animated:(BOOL)animated
{
  windowScene = [dismissal windowScene];
  homeScreenController = [windowScene homeScreenController];
  [homeScreenController dismissAppIconForceTouchControllers:0];
}

- (id)transientOverlayScenePresenter:(id)presenter acquireDisableAutoUnlockAssertionWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = +[SBLockScreenManager sharedInstanceIfExists];
  biometricAuthenticationCoordinator = [v5 biometricAuthenticationCoordinator];
  v7 = [biometricAuthenticationCoordinator acquireDisableAutoUnlockAssertionForReason:reasonCopy];

  return v7;
}

- (id)transientOverlayScenePresenter:(id)presenter acquireProximitySensorEnabledAssertionWithReason:(id)reason
{
  reasonCopy = reason;
  proximitySensorManager = [SBApp proximitySensorManager];
  [proximitySensorManager client:reasonCopy wantsProximityDetectionEnabled:1];

  v6 = objc_alloc(MEMORY[0x277CF0CE8]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__SBMainWorkspace_transientOverlayScenePresenter_acquireProximitySensorEnabledAssertionWithReason___block_invoke;
  v10[3] = &unk_2783A8A98;
  v11 = reasonCopy;
  v7 = reasonCopy;
  v8 = [v6 initWithIdentifier:@"transientOverlayScenePresenterProximitySensorEnabledAssertion" forReason:v7 invalidationBlock:v10];

  return v8;
}

void __99__SBMainWorkspace_transientOverlayScenePresenter_acquireProximitySensorEnabledAssertionWithReason___block_invoke(uint64_t a1)
{
  v2 = [SBApp proximitySensorManager];
  [v2 client:*(a1 + 32) wantsProximityDetectionEnabled:0];
}

- (id)transientOverlayScenePresenter:(id)presenter acquireInteractiveScreenshotGestureDisabledAssertionWithReason:(id)reason
{
  v4 = SBApp;
  reasonCopy = reason;
  interactiveScreenshotGestureManager = [v4 interactiveScreenshotGestureManager];
  v7 = [interactiveScreenshotGestureManager acquireDisableGestureAssertionWithReason:reasonCopy];

  return v7;
}

- (id)bannerLongLookPresentationObservationTokenForTransientOverlayScenePresenter:(id)presenter
{
  presenterCopy = presenter;
  v4 = [SBNotificationLongLookBannerPresentationObservationToken alloc];
  notificationDispatcher = [SBApp notificationDispatcher];
  bannerDestination = [notificationDispatcher bannerDestination];
  windowScene = [presenterCopy windowScene];

  v8 = [(SBNotificationLongLookBannerPresentationObservationToken *)v4 initWithNotificationBannerDestination:bannerDestination scene:windowScene];

  return v8;
}

- (id)transientOverlayScenePresenter:(id)presenter acquireBannerLongLookWindowLevelAssertionWithReason:(id)reason windowLevel:(double)level
{
  v7 = SBApp;
  reasonCopy = reason;
  presenterCopy = presenter;
  bannerManager = [v7 bannerManager];
  windowScene = [presenterCopy windowScene];

  v12 = [bannerManager acquireWindowLevelAssertionWithPriority:0 windowLevel:windowScene windowScene:reasonCopy reason:level];

  return v12;
}

- (id)controlCenterPresentationObservationTokenForTransientOverlayScenePresenter:(id)presenter
{
  windowScene = [presenter windowScene];
  v4 = [SBControlCenterPresentationObservationToken alloc];
  controlCenterController = [windowScene controlCenterController];
  v6 = [(SBControlCenterPresentationObservationToken *)v4 initWithControlCenterController:controlCenterController scene:windowScene];

  return v6;
}

- (id)transientOverlayScenePresenter:(id)presenter acquireControlCenterWindowLevelAssertionWithReason:(id)reason windowLevel:(double)level
{
  reasonCopy = reason;
  windowScene = [presenter windowScene];
  controlCenterController = [windowScene controlCenterController];
  v10 = [controlCenterController acquireWindowLevelAssertionWithPriority:0 windowLevel:windowScene windowScene:reasonCopy reason:level];

  return v10;
}

- (void)transientOverlayScenePresenterRequestsControlCenterDismissal:(id)dismissal animated:(BOOL)animated
{
  animatedCopy = animated;
  windowScene = [dismissal windowScene];
  controlCenterController = [windowScene controlCenterController];
  [controlCenterController dismissAnimated:animatedCopy];
}

- (id)siriPresentationObservationTokenForTransientOverlayScenePresenter:(id)presenter
{
  presenterCopy = presenter;
  v4 = [SBAssistantPresentationObservationToken alloc];
  v5 = +[SBAssistantController sharedInstance];
  windowScene = [presenterCopy windowScene];

  v7 = [(SBAssistantPresentationObservationToken *)v4 initWithAssistantController:v5 scene:windowScene];

  return v7;
}

- (id)transientOverlayScenePresenter:(id)presenter acquireWallpaperAnimationSuspensionAssertionWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = +[SBWallpaperController sharedInstance];
  v6 = [v5 suspendWallpaperAnimationForReason:reasonCopy];

  return v6;
}

- (id)transientOverlayScenePresenter:(id)presenter acquireSiriWindowLevelAssertionWithReason:(id)reason windowLevel:(double)level
{
  reasonCopy = reason;
  presenterCopy = presenter;
  v9 = +[SBAssistantController sharedInstance];
  windowScene = [presenterCopy windowScene];

  v11 = [v9 acquireWindowLevelAssertionWithPriority:0 windowLevel:windowScene windowScene:reasonCopy reason:level];

  return v11;
}

- (void)transientOverlayScenePresenterRequestsSiriDismissal:(id)dismissal animated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = +[SBAssistantController sharedInstance];
  [v5 dismissAssistantViewInEverySceneIfNecessaryWithAnimation:animatedCopy];
}

- (id)transientOverlayScenePresenter:(id)presenter newSceneDeactivationAssertionWithReason:(int64_t)reason
{
  v5 = +[SBSceneManagerCoordinator sharedInstance];
  sceneDeactivationManager = [v5 sceneDeactivationManager];
  v7 = [sceneDeactivationManager newAssertionWithReason:reason];

  return v7;
}

- (void)transientOverlayScenePresenter:(id)presenter didDismissViewController:(id)controller wasTopmostPresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  windowScene = [presenter windowScene];
  pictureInPictureManager = [windowScene pictureInPictureManager];
  [pictureInPictureManager updatePictureInPictureWindowLevels];

  v7 = windowScene;
  if (presentationCopy)
  {
    switcherController = [windowScene switcherController];
    layoutStatePrimaryElement = [switcherController layoutStatePrimaryElement];
    workspaceEntity = [layoutStatePrimaryElement workspaceEntity];
    applicationSceneEntity = [workspaceEntity applicationSceneEntity];
    sceneHandle = [applicationSceneEntity sceneHandle];

    v13 = +[SBLockScreenManager sharedInstance];
    lockScreenEnvironment = [v13 lockScreenEnvironment];
    backlightController = [lockScreenEnvironment backlightController];
    isInScreenOffMode = [backlightController isInScreenOffMode];

    if (windowScene)
    {
      v17 = [windowScene isMainDisplayWindowScene] ^ 1;
    }

    else
    {
      v17 = 0;
    }

    if (!((sceneHandle != 0) | isInScreenOffMode & 1) && (v17 & 1) == 0)
    {
      v18 = +[SBIdleTimerGlobalCoordinator sharedInstance];
      [v18 resetIdleTimerForReason:@"TransientOverlayDismissed"];
    }

    v19 = +[SBMainStatusBarStateProvider sharedInstance];
    [v19 updateTimeEnabledImmediately:1];

    v7 = windowScene;
  }
}

- (void)transientOverlayScenePresenter:(id)presenter preferredWhitePointAdaptivityStyleDidChangeWithAnimationSettings:(id)settings
{
  settingsCopy = settings;
  v5 = +[SBSceneLayoutWhitePointAdaptationController sharedInstance];
  [v5 updateWhitePointAdaptationStrengthWithAnimationSettings:settingsCopy];
}

- (void)transientOverlayScenePresenter:(id)presenter registerCoverSheetExternalBehaviorProvider:(id)provider
{
  providerCopy = provider;
  v6 = +[SBLockScreenManager sharedInstance];
  coverSheetViewController = [v6 coverSheetViewController];
  [coverSheetViewController registerExternalBehaviorProvider:providerCopy];
}

- (void)transientOverlayScenePresenter:(id)presenter unregisterCoverSheetExternalBehaviorProvider:(id)provider
{
  providerCopy = provider;
  v6 = +[SBLockScreenManager sharedInstance];
  coverSheetViewController = [v6 coverSheetViewController];
  [coverSheetViewController unregisterExternalBehaviorProvider:providerCopy];
}

- (void)transientOverlayScenePresenter:(id)presenter willPresentViewController:(id)controller
{
  v20[1] = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  controllerCopy = controller;
  windowScene = [presenterCopy windowScene];
  if (!windowScene)
  {
    [SBMainWorkspace transientOverlayScenePresenter:a2 willPresentViewController:self];
  }

  v10 = windowScene;
  v11 = +[SBKeyboardFocusCoordinator sharedInstance];
  _sbWindowScene = [controllerCopy _sbWindowScene];
  v13 = +[SBKeyboardFocusArbitrationReason willPresentTransientOverlayScene];
  [v11 requestArbitrationForSBWindowScene:_sbWindowScene forReason:v13];

  [SBApp frontDisplayDidChange:controllerCopy];
  pictureInPictureManager = [v10 pictureInPictureManager];
  [pictureInPictureManager updatePictureInPictureWindowLevels];

  v15 = +[SBMainStatusBarStateProvider sharedInstance];
  [v15 updateTimeEnabled];

  homeScreenController = [v10 homeScreenController];
  [homeScreenController noteTransientOverlayPresented];

  if (([v10 isContinuityDisplayWindowScene] & 1) == 0)
  {
    lockScreenManager = [v10 lockScreenManager];
    v19 = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
    v20[0] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [lockScreenManager unlockUIFromSource:9 withOptions:v18];
  }
}

- (BOOL)transientOverlayScenePresenter:(id)presenter shouldResignFirstResponderForKeyWindow:(id)window
{
  windowCopy = window;
  windowScene = [windowCopy windowScene];
  v6 = objc_opt_class();
  v7 = windowScene;
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
  coverSheetWindow = [v10 coverSheetWindow];
  v12 = coverSheetWindow;
  if (coverSheetWindow != windowCopy)
  {

    goto LABEL_10;
  }

  isVisible = [v10 isVisible];

  if ((isVisible & 1) == 0)
  {
LABEL_10:
    v15 = +[SBAssistantController sharedInstance];
    window = [v15 window];
    v17 = window;
    if (window == windowCopy)
    {
      isVisible2 = [v15 isVisible];

      if (isVisible2)
      {
        v14 = 1;
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
    }

    controlCenterController = [v9 controlCenterController];
    _controlCenterWindow = [controlCenterController _controlCenterWindow];
    v21 = _controlCenterWindow;
    if (_controlCenterWindow == windowCopy)
    {
      isVisible3 = [controlCenterController isVisible];

      if (isVisible3)
      {
        v14 = 1;
LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
    }

    notificationDispatcher = [SBApp notificationDispatcher];
    bannerDestination = [notificationDispatcher bannerDestination];

    bannerManager = [SBApp bannerManager];
    v26 = [bannerManager bannerWindowInWindowScene:v9];
    v27 = v26;
    if (v26 == windowCopy)
    {
      isPresentingBannerInLongLook = [bannerDestination isPresentingBannerInLongLook];

      if (isPresentingBannerInLongLook)
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

- (void)registerHandler:(id)handler forExtensionPoint:(id)point
{
  handlerCopy = handler;
  pointCopy = point;
  if (handlerCopy && [pointCopy length])
  {
    extensionHandlersByType = self->_extensionHandlersByType;
    if (!extensionHandlersByType)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = self->_extensionHandlersByType;
      self->_extensionHandlersByType = v8;

      extensionHandlersByType = self->_extensionHandlersByType;
    }

    v10 = [(NSMutableDictionary *)extensionHandlersByType objectForKey:pointCopy];

    if (!v10 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(NSMutableDictionary *)self->_extensionHandlersByType setObject:handlerCopy forKey:pointCopy];
    }
  }
}

- (id)_handlerForExtensionPoint:(id)point
{
  pointCopy = point;
  if ([pointCopy length])
  {
    v5 = [(NSMutableDictionary *)self->_extensionHandlersByType objectForKey:pointCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)systemSleepMonitor:(id)monitor prepareForSleepWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Got kIOMessageSystemWillSleep", v6, 2u);
  }

  _SBWorkspaceUpdateBatteryUsageTime(0);
  __SBWIsSleeping = 1;
  _SBWorkspaceNoteSleepOrWake(0);
  completionCopy[2](completionCopy);
}

- (void)systemSleepMonitorSleepRequestAborted:(id)aborted
{
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Got kIOMessageSystemWillNotSleep", v5, 2u);
  }

  [(SBMainWorkspace *)self _noteDidWakeFromSleep];
}

- (void)systemSleepMonitorWillWakeFromSleep:(id)sleep
{
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Got kIOMessageSystemWillPowerOn", v4, 2u);
  }
}

- (void)systemSleepMonitorDidWakeFromSleep:(id)sleep
{
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Got kIOMessageSystemHasPoweredOn", v5, 2u);
  }

  [(SBMainWorkspace *)self _noteDidWakeFromSleep];
}

- (BOOL)dismissTransientOverlayPresentationsAnimated:(BOOL)animated windowScene:(id)scene filter:(id)filter
{
  sceneCopy = scene;
  filterCopy = filter;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__SBMainWorkspace_dismissTransientOverlayPresentationsAnimated_windowScene_filter___block_invoke;
  v18[3] = &__block_descriptor_33_e42_v16__0__SBMainWorkspaceTransitionRequest_8l;
  animatedCopy = animated;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__SBMainWorkspace_dismissTransientOverlayPresentationsAnimated_windowScene_filter___block_invoke_3;
  v13[3] = &unk_2783AA250;
  selfCopy = self;
  v16 = filterCopy;
  v14 = sceneCopy;
  animatedCopy2 = animated;
  v10 = sceneCopy;
  v11 = filterCopy;
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

- (BOOL)dismissAllTransientOverlayPresentationsAnimated:(BOOL)animated
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__SBMainWorkspace_dismissAllTransientOverlayPresentationsAnimated___block_invoke;
  v4[3] = &__block_descriptor_33_e42_v16__0__SBMainWorkspaceTransitionRequest_8l;
  animatedCopy = animated;
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

- (BOOL)dismissTransientOverlayViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v10 = [[SBWorkspaceTransientOverlay alloc] initWithViewController:controllerCopy];
  _fbsDisplayConfiguration = [controllerCopy _fbsDisplayConfiguration];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__SBMainWorkspace_dismissTransientOverlayViewController_animated_completion___block_invoke;
  v16[3] = &unk_2783AA2E0;
  v17 = controllerCopy;
  v18 = v10;
  animatedCopy = animated;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = v10;
  v14 = controllerCopy;
  LOBYTE(self) = [(SBMainWorkspace *)self requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v16 validator:&__block_literal_global_807];

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

- (BOOL)presentTransientOverlayViewController:(id)controller originatingProcess:(id)process animated:(BOOL)animated completion:(id)completion
{
  controllerCopy = controller;
  processCopy = process;
  completionCopy = completion;
  v13 = [[SBWorkspaceTransientOverlay alloc] initWithViewController:controllerCopy];
  if ([controllerCopy prefersContinuityDisplayPresentation] && +[SBContinuitySessionManager areContinuitySessionsAllowed](SBContinuitySessionManager, "areContinuitySessionsAllowed"))
  {
    v14 = +[SBContinuitySessionManager sharedInstance];
    currentSession = [v14 currentSession];

    if ([currentSession state] == 11)
    {
      mainWindowScene = [currentSession mainWindowScene];
      _fbsDisplayConfiguration = [mainWindowScene _fbsDisplayConfiguration];

      if (_fbsDisplayConfiguration)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  if (![controllerCopy prefersEmbeddedDisplayPresentation] || (-[SBMainWorkspace mainWindowScene](self, "mainWindowScene"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "_fbsDisplayConfiguration"), _fbsDisplayConfiguration = objc_claimAutoreleasedReturnValue(), v18, !_fbsDisplayConfiguration))
  {
    _fbsDisplayConfiguration = [(SBTransientOverlayPresentationManager *)self->_transientOverlayPresentationManager defaultDisplayConfigurationForTransientOverlayPresentation];
  }

LABEL_10:
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __96__SBMainWorkspace_presentTransientOverlayViewController_originatingProcess_animated_completion___block_invoke;
  v25[3] = &unk_2783AA330;
  v26 = controllerCopy;
  v27 = v13;
  animatedCopy = animated;
  v28 = processCopy;
  v29 = completionCopy;
  v19 = completionCopy;
  v20 = processCopy;
  v21 = v13;
  v22 = controllerCopy;
  v23 = [(SBMainWorkspace *)self requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v25 validator:&__block_literal_global_814];

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