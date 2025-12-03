@interface SBMainDisplayPolicyAggregator
- (BOOL)_allowsCapabilityAssistantEnabledWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityAssistantWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityCommandTabWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityControlCenterEditingWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityControlCenterWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityCoverSheetSpotlightWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityCoverSheetWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityDismissCoverSheetWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityHomeScreenEditingWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityLiftToWakeWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityLockScreenBulletinWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityLockScreenCameraSupportedWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityLockScreenCameraSwipeWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityLockScreenCameraWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityLockScreenControlCenterWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityLockScreenNotificationCenterWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityLockScreenTodayViewWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityLoginWindowWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityLogoutWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityPosterSwitcherWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityQuickNoteWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityScreenshotWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilitySendMediaCommandWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilitySpotlightWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilitySuggestedApplicationWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilitySystemGestureWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityTodayViewWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityUnlockToPluginSpecifiedApplicationWithExplanation:(id *)explanation;
- (BOOL)_allowsCapabilityVoiceControlWithExplanation:(id *)explanation;
- (BOOL)_allowsNotificationOrControlCenterWithExplanation:(id *)explanation;
- (BOOL)_dictationInfoOnScreen;
- (BOOL)_hasFullySetUpUserWithExplanation:(id *)explanation;
- (BOOL)allowsCapability:(int64_t)capability explanation:(id *)explanation;
- (BOOL)allowsTransitionRequest:(id)request;
- (MCProfileConnection)_profileConnection;
- (SBAlertItemsController)_alertItemsController;
- (SBApplicationController)_applicationController;
- (SBAssistantController)_assistantController;
- (SBBannerManager)_bannerManager;
- (SBCommandTabController)_commandTabController;
- (SBConferenceManager)_conferenceManager;
- (SBLockScreenManager)_lockScreenManager;
- (SBLockStateAggregator)_lockStateAggregator;
- (SBMainDisplayPolicyAggregator)initWithDefaults:(id)defaults displayIdentity:(id)identity;
- (SBMainWorkspace)_mainWorkspace;
- (SBRemoteTransientOverlaySessionManager)_remoteTransientOverlaySessionManager;
- (SBSetupManager)_setupManager;
- (SBTelephonyManager)_telephonyManager;
- (SBWindowScene)_windowScene;
- (void)reloadDemoDefaults;
@end

@implementation SBMainDisplayPolicyAggregator

- (SBApplicationController)_applicationController
{
  override_applicationController = self->_override_applicationController;
  if (override_applicationController)
  {
    v3 = override_applicationController;
  }

  else
  {
    v3 = +[SBApplicationController sharedInstanceIfExists];
  }

  return v3;
}

- (SBSetupManager)_setupManager
{
  override_setupManager = self->_override_setupManager;
  if (override_setupManager)
  {
    v3 = override_setupManager;
  }

  else
  {
    v3 = +[SBSetupManager sharedInstance];
  }

  return v3;
}

- (MCProfileConnection)_profileConnection
{
  override_profileConnection = self->_override_profileConnection;
  if (override_profileConnection)
  {
    mEMORY[0x277D262A0] = override_profileConnection;
  }

  else
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  }

  return mEMORY[0x277D262A0];
}

- (SBLockScreenManager)_lockScreenManager
{
  override_lockScreenManager = self->_override_lockScreenManager;
  if (override_lockScreenManager)
  {
    v3 = override_lockScreenManager;
  }

  else
  {
    v3 = +[SBLockScreenManager sharedInstanceIfExists];
  }

  return v3;
}

- (SBCommandTabController)_commandTabController
{
  override_commandTabController = self->_override_commandTabController;
  if (override_commandTabController)
  {
    commandTabController = override_commandTabController;
  }

  else
  {
    _windowScene = [(SBMainDisplayPolicyAggregator *)self _windowScene];
    commandTabController = [_windowScene commandTabController];
  }

  return commandTabController;
}

- (SBWindowScene)_windowScene
{
  windowSceneManager = [SBApp windowSceneManager];
  v4 = [windowSceneManager windowSceneForDisplayIdentity:self->_displayIdentity];

  return v4;
}

- (BOOL)_dictationInfoOnScreen
{
  v2 = _dictationInfoOnScreen_token;
  if (_dictationInfoOnScreen_token == -1)
  {
    notify_register_check(*MEMORY[0x277D76B88], &_dictationInfoOnScreen_token);
    v2 = _dictationInfoOnScreen_token;
  }

  state64 = 0;
  notify_get_state(v2, &state64);
  return state64 & 1;
}

- (SBMainDisplayPolicyAggregator)initWithDefaults:(id)defaults displayIdentity:(id)identity
{
  defaultsCopy = defaults;
  identityCopy = identity;
  v47.receiver = self;
  v47.super_class = SBMainDisplayPolicyAggregator;
  v9 = [(SBMainDisplayPolicyAggregator *)&v47 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_defaults, defaults);
    objc_storeStrong(&v10->_displayIdentity, identity);
    demoDefaults = [(SBLocalDefaults *)v10->_defaults demoDefaults];
    v10->_storeDemoAppLockEnabled = [demoDefaults isStoreDemoApplicationLockEnabled];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"storeDemoApplicationLockEnabled"];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __66__SBMainDisplayPolicyAggregator_initWithDefaults_displayIdentity___block_invoke;
    v44[3] = &unk_2783A92D8;
    v13 = v10;
    v45 = v13;
    v46 = demoDefaults;
    v35 = demoDefaults;
    v14 = MEMORY[0x277D85CD0];
    v15 = [v35 observeDefault:v12 onQueue:MEMORY[0x277D85CD0] withBlock:v44];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v17 = *MEMORY[0x277D25CA0];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __66__SBMainDisplayPolicyAggregator_initWithDefaults_displayIdentity___block_invoke_2;
    v42[3] = &unk_2783AC180;
    v19 = v13;
    v43 = v19;
    v20 = [defaultCenter addObserverForName:v17 object:0 queue:mainQueue usingBlock:v42];

    v21 = +[SBDefaults externalDefaults];
    notesDefaults = [v21 notesDefaults];

    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"quickNotesDisabled"];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __66__SBMainDisplayPolicyAggregator_initWithDefaults_displayIdentity___block_invoke_3;
    v40[3] = &unk_2783A8C18;
    v24 = v19;
    v41 = v24;
    v25 = [notesDefaults observeDefault:v23 onQueue:v14 withBlock:v40];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v27 = *MEMORY[0x277D66078];
    mainQueue2 = [MEMORY[0x277CCABD8] mainQueue];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __66__SBMainDisplayPolicyAggregator_initWithDefaults_displayIdentity___block_invoke_4;
    v38[3] = &unk_2783AC180;
    v29 = v24;
    v39 = v29;
    v30 = [defaultCenter2 addObserverForName:v27 object:0 queue:mainQueue2 usingBlock:v38];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue3 = [MEMORY[0x277CCABD8] mainQueue];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __66__SBMainDisplayPolicyAggregator_initWithDefaults_displayIdentity___block_invoke_5;
    v36[3] = &unk_2783AC180;
    v37 = v29;
    v33 = [defaultCenter3 addObserverForName:@"SBInstalledApplicationsDidChangeNotification" object:0 queue:mainQueue3 usingBlock:v36];
  }

  return v10;
}

uint64_t __66__SBMainDisplayPolicyAggregator_initWithDefaults_displayIdentity___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) isStoreDemoApplicationLockEnabled];
  *(*(a1 + 32) + 128) = result;
  return result;
}

void __66__SBMainDisplayPolicyAggregator_initWithDefaults_displayIdentity___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"SBPolicyAggregatorCapabilitiesChangedNotification" object:*(a1 + 32)];
}

void __66__SBMainDisplayPolicyAggregator_initWithDefaults_displayIdentity___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"SBPolicyAggregatorCapabilitiesChangedNotification" object:*(a1 + 32)];
}

void __66__SBMainDisplayPolicyAggregator_initWithDefaults_displayIdentity___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"SBPolicyAggregatorCapabilitiesChangedNotification" object:*(a1 + 32)];
}

void __66__SBMainDisplayPolicyAggregator_initWithDefaults_displayIdentity___block_invoke_5(uint64_t a1, void *a2)
{
  v6 = [a2 userInfo];
  v3 = [v6 objectForKey:@"SBInstalledApplicationsAddedBundleIDs"];
  v4 = [v6 objectForKey:@"SBInstalledApplicationsRemovedBundleIDs"];
  if (([v3 containsObject:@"com.apple.mobilenotes"] & 1) != 0 || objc_msgSend(v4, "containsObject:", @"com.apple.mobilenotes"))
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"SBPolicyAggregatorCapabilitiesChangedNotification" object:*(a1 + 32)];
  }
}

- (BOOL)allowsCapability:(int64_t)capability explanation:(id *)explanation
{
  switch(capability)
  {
    case 1:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilitySuggestedApplicationWithExplanation:explanation];
      break;
    case 2:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLockScreenBulletinWithExplanation:explanation];
      break;
    case 3:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityUnlockToPluginSpecifiedApplicationWithExplanation:explanation];
      break;
    case 4:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityAssistantEnabledWithExplanation:explanation];
      break;
    case 5:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityAssistantWithExplanation:explanation];
      break;
    case 6:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilitySendMediaCommandWithExplanation:explanation];
      break;
    case 7:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilitySystemGestureWithExplanation:explanation];
      break;
    case 8:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityVoiceControlWithExplanation:explanation];
      break;
    case 9:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilitySpotlightWithExplanation:explanation];
      break;
    case 10:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLockScreenCameraSupportedWithExplanation:explanation];
      break;
    case 11:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLockScreenCameraWithExplanation:explanation];
      break;
    case 12:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLockScreenCameraSwipeWithExplanation:explanation];
      break;
    case 13:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityCoverSheetWithExplanation:explanation];
      break;
    case 14:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityDismissCoverSheetWithExplanation:explanation];
      break;
    case 15:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityControlCenterWithExplanation:explanation];
      break;
    case 16:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLogoutWithExplanation:explanation];
      break;
    case 17:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLoginWindowWithExplanation:explanation];
      break;
    case 18:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityHomeScreenEditingWithExplanation:explanation];
      break;
    case 19:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityScreenshotWithExplanation:explanation];
      break;
    case 20:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityCommandTabWithExplanation:explanation];
      break;
    case 21:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLockScreenControlCenterWithExplanation:explanation];
      break;
    case 22:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLockScreenNotificationCenterWithExplanation:explanation];
      break;
    case 23:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLockScreenTodayViewWithExplanation:explanation];
      break;
    case 24:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityTodayViewWithExplanation:explanation];
      break;
    case 25:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLiftToWakeWithExplanation:explanation];
      break;
    case 26:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityQuickNoteWithExplanation:explanation];
      break;
    case 27:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityCoverSheetSpotlightWithExplanation:explanation];
      break;
    case 28:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityPosterSwitcherWithExplanation:explanation];
      break;
    case 29:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityHardwareButtonBezelEffectsEdgeLight:explanation];
      break;
    case 30:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityControlCenterEditingWithExplanation:explanation];
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

- (BOOL)allowsTransitionRequest:(id)request
{
  requestCopy = request;
  transientOverlayContext = [requestCopy transientOverlayContext];
  if (!transientOverlayContext)
  {
    restartManager = [SBApp restartManager];
    isPendingExit = [restartManager isPendingExit];

    if (isPendingExit)
    {
      goto LABEL_15;
    }
  }

  userSessionController = [SBApp userSessionController];
  isLoginSession = [userSessionController isLoginSession];

  if (isLoginSession)
  {
    applicationContext = [requestCopy applicationContext];
    activatingEntity = [applicationContext activatingEntity];
    if ([activatingEntity isApplicationSceneEntity])
    {
      isBackground = [applicationContext isBackground];

      if (!isBackground)
      {
        info = 0;
        if (!transientOverlayContext)
        {
LABEL_11:
          if ([info isLaunchableDuringSetup])
          {
            goto LABEL_12;
          }

LABEL_15:
          v15 = 0;
          goto LABEL_16;
        }

LABEL_12:

        goto LABEL_13;
      }

      activatingEntity = [applicationContext activatingEntity];
      application = [activatingEntity application];
      info = [application info];
    }

    else
    {
      info = 0;
    }

    if (!transientOverlayContext)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

LABEL_13:
  v17.receiver = self;
  v17.super_class = SBMainDisplayPolicyAggregator;
  v15 = [(SBPolicyAggregator *)&v17 allowsTransitionRequest:requestCopy];
LABEL_16:

  return v15;
}

- (void)reloadDemoDefaults
{
  demoDefaults = [(SBLocalDefaults *)self->_defaults demoDefaults];
  self->_storeDemoAppLockEnabled = [demoDefaults isStoreDemoApplicationLockEnabled];
}

- (SBAlertItemsController)_alertItemsController
{
  override_alertItemsController = self->_override_alertItemsController;
  if (override_alertItemsController)
  {
    v3 = override_alertItemsController;
  }

  else
  {
    v3 = +[SBAlertItemsController sharedInstance];
  }

  return v3;
}

- (SBAssistantController)_assistantController
{
  override_assistantController = self->_override_assistantController;
  if (override_assistantController)
  {
    v3 = override_assistantController;
  }

  else
  {
    v3 = +[SBAssistantController sharedInstanceIfExists];
  }

  return v3;
}

- (SBConferenceManager)_conferenceManager
{
  override_conferenceManager = self->_override_conferenceManager;
  if (override_conferenceManager)
  {
    v3 = override_conferenceManager;
  }

  else
  {
    v3 = +[SBConferenceManager sharedInstance];
  }

  return v3;
}

- (SBRemoteTransientOverlaySessionManager)_remoteTransientOverlaySessionManager
{
  override_remoteTransientOverlaySessionManager = self->_override_remoteTransientOverlaySessionManager;
  if (override_remoteTransientOverlaySessionManager)
  {
    remoteTransientOverlaySessionManager = override_remoteTransientOverlaySessionManager;
  }

  else
  {
    remoteTransientOverlaySessionManager = [SBApp remoteTransientOverlaySessionManager];
  }

  return remoteTransientOverlaySessionManager;
}

- (SBLockStateAggregator)_lockStateAggregator
{
  override_lockStateAggregator = self->_override_lockStateAggregator;
  if (override_lockStateAggregator)
  {
    v3 = override_lockStateAggregator;
  }

  else
  {
    v3 = +[SBLockStateAggregator sharedInstance];
  }

  return v3;
}

- (SBTelephonyManager)_telephonyManager
{
  override_telephonyManager = self->_override_telephonyManager;
  if (override_telephonyManager)
  {
    v3 = override_telephonyManager;
  }

  else
  {
    v3 = [SBTelephonyManager sharedTelephonyManagerCreatingIfNecessary:0];
  }

  return v3;
}

- (SBMainWorkspace)_mainWorkspace
{
  override_mainWorkspace = self->_override_mainWorkspace;
  if (override_mainWorkspace)
  {
    v3 = override_mainWorkspace;
  }

  else
  {
    v3 = +[SBMainWorkspace sharedInstance];
  }

  return v3;
}

- (SBBannerManager)_bannerManager
{
  override_bannerManager = self->_override_bannerManager;
  if (override_bannerManager)
  {
    bannerManager = override_bannerManager;
  }

  else
  {
    bannerManager = [SBApp bannerManager];
  }

  return bannerManager;
}

- (BOOL)_hasFullySetUpUserWithExplanation:(id *)explanation
{
  _setupManager = [(SBMainDisplayPolicyAggregator *)self _setupManager];
  isInSetupMode = [_setupManager isInSetupMode];

  if (isInSetupMode)
  {
    v6 = @"In setup mode";
  }

  else
  {
    userSessionController = [SBApp userSessionController];
    isLoginSession = [userSessionController isLoginSession];

    if (!isLoginSession)
    {
      return 1;
    }

    v6 = @"In login session";
  }

  result = 0;
  if (explanation)
  {
    *explanation = v6;
  }

  return result;
}

- (BOOL)_allowsCapabilitySuggestedApplicationWithExplanation:(id *)explanation
{
  v12 = 0;
  v5 = [(SBMainDisplayPolicyAggregator *)self _hasFullySetUpUserWithExplanation:&v12];
  v6 = v12;
  if (v5)
  {
    _lockScreenManager = [(SBMainDisplayPolicyAggregator *)self _lockScreenManager];
    isInLostMode = [_lockScreenManager isInLostMode];

    if (!isInLostMode)
    {
      v9 = 1;
      goto LABEL_8;
    }

    v6 = @"Device is in lost mode";
  }

  v9 = 0;
  if (explanation && v6)
  {
    v10 = v6;
    v9 = 0;
    *explanation = v6;
  }

LABEL_8:

  return v9;
}

- (BOOL)_allowsCapabilityLockScreenBulletinWithExplanation:(id *)explanation
{
  v10 = 0;
  v4 = [(SBMainDisplayPolicyAggregator *)self _hasFullySetUpUserWithExplanation:&v10];
  v5 = v10;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v7 = SUSUIRequiresAlertPresentationAfterUpdate();
    v6 = v7;
    if (explanation && !v7 && v5)
    {
      v8 = v5;
      *explanation = v5;
    }
  }

  return v6;
}

- (BOOL)_allowsCapabilityUnlockToPluginSpecifiedApplicationWithExplanation:(id *)explanation
{
  v7 = 0;
  v4 = [(SBMainDisplayPolicyAggregator *)self _hasFullySetUpUserWithExplanation:&v7];
  v5 = v7;
  if (explanation && !v4 && v5)
  {
    v5 = v5;
    *explanation = v5;
  }

  return v4;
}

- (BOOL)_allowsCapabilityAssistantEnabledWithExplanation:(id *)explanation
{
  v5 = +[SBDefaults localDefaults];
  lockScreenDefaults = [v5 lockScreenDefaults];
  limitFeaturesForRemoteLock = [lockScreenDefaults limitFeaturesForRemoteLock];

  if (limitFeaturesForRemoteLock)
  {
    v8 = @"features limited for remote lock";
  }

  else
  {
    v15 = 0;
    v9 = [(SBMainDisplayPolicyAggregator *)self _hasFullySetUpUserWithExplanation:&v15];
    v8 = v15;
    if (v9)
    {
      _assistantController = [(SBMainDisplayPolicyAggregator *)self _assistantController];
      isEnabled = [_assistantController isEnabled];

      if (isEnabled)
      {
        v12 = 1;
        goto LABEL_10;
      }

      v8 = @"Assistant not supported or disabled";
    }
  }

  v12 = 0;
  if (explanation && v8)
  {
    v13 = v8;
    v12 = 0;
    *explanation = v8;
  }

LABEL_10:

  return v12;
}

- (BOOL)_allowsCapabilityAssistantWithExplanation:(id *)explanation
{
  v27 = 0;
  v5 = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityAssistantEnabledWithExplanation:&v27];
  v6 = v27;
  _lockScreenManager = [(SBMainDisplayPolicyAggregator *)self _lockScreenManager];
  v8 = _lockScreenManager;
  if (!v5)
  {
    v13 = 0;
    goto LABEL_17;
  }

  lockScreenEnvironment = [_lockScreenManager lockScreenEnvironment];
  callController = [lockScreenEnvironment callController];
  isMakingEmergencyCall = [callController isMakingEmergencyCall];

  if (isMakingEmergencyCall)
  {
    v12 = @"Making an emergency call";
LABEL_16:

    v13 = 0;
    v6 = v12;
    goto LABEL_17;
  }

  if (+[SBVoiceDisabledBundles voiceControlDisabledByCurrentlyRunningApp])
  {
    v12 = @"Voice control disabled by current application";
    goto LABEL_16;
  }

  _remoteTransientOverlaySessionManager = [(SBMainDisplayPolicyAggregator *)self _remoteTransientOverlaySessionManager];
  v15 = [_remoteTransientOverlaySessionManager hasSessionWithPendingButtonEvents:1 options:0];

  if (v15)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Has a remote transient overlay session handling lock button press."];
    goto LABEL_16;
  }

  _alertItemsController = [(SBMainDisplayPolicyAggregator *)self _alertItemsController];
  hasVisibleSuperModalAlert = [_alertItemsController hasVisibleSuperModalAlert];

  if (hasVisibleSuperModalAlert)
  {
    v12 = @"Super modal alert visible";
    goto LABEL_16;
  }

  if ([v8 isUILocked])
  {
    coverSheetViewController = [v8 coverSheetViewController];
    activeBehavior = [coverSheetViewController activeBehavior];
    v20 = [activeBehavior areRestrictedCapabilities:2];

    if (v20)
    {
      v12 = @"Lock screen has has disabled assistant";
      goto LABEL_16;
    }
  }

  _mainWorkspace = [(SBMainDisplayPolicyAggregator *)self _mainWorkspace];
  transientOverlayPresentationManager = [_mainWorkspace transientOverlayPresentationManager];
  shouldDisableSiri = [transientOverlayPresentationManager shouldDisableSiri];

  if (shouldDisableSiri)
  {
    v12 = @"Transient overlay has disabled assistant";
    goto LABEL_16;
  }

  v13 = 1;
LABEL_17:
  lockOutController = [SBApp lockOutController];
  if ([lockOutController isThermallyBlocked])
  {

    v13 = 0;
    v6 = @"Thermal trap has disabled assistant";
  }

  if ([lockOutController isLiquidDetectionCriticalUIBlocked])
  {

    v13 = 0;
    v6 = @"Liquid detection critical ui has disabled assistant";
  }

  if ([lockOutController isProximityReaderBlocked])
  {

    v13 = 0;
    v6 = @"Proximity reader has disabled assistant";
  }

  if (explanation && !v13 && v6)
  {
    v25 = v6;
    *explanation = v6;
  }

  return v13;
}

- (BOOL)_allowsCapabilitySendMediaCommandWithExplanation:(id *)explanation
{
  v7 = 0;
  v4 = [(SBMainDisplayPolicyAggregator *)self _hasFullySetUpUserWithExplanation:&v7];
  v5 = v7;
  if (explanation && !v4 && v5)
  {
    v5 = v5;
    *explanation = v5;
  }

  return v4;
}

- (BOOL)_allowsCapabilitySystemGestureWithExplanation:(id *)explanation
{
  v13 = 0;
  v5 = [(SBMainDisplayPolicyAggregator *)self _hasFullySetUpUserWithExplanation:&v13];
  v6 = v13;
  v7 = v6;
  if (v5)
  {
    if (!self->_storeDemoAppLockEnabled)
    {
LABEL_6:
      v10 = 1;
      goto LABEL_10;
    }

    v7 = @"We are in store demo app lock mode";
  }

  standardDefaults = [MEMORY[0x277CFC880] standardDefaults];
  shouldAlwaysBeEnabled = [standardDefaults shouldAlwaysBeEnabled];

  if (shouldAlwaysBeEnabled)
  {

    v7 = 0;
    goto LABEL_6;
  }

  v10 = 0;
  if (explanation && v7)
  {
    v11 = v7;
    v10 = 0;
    *explanation = v7;
  }

LABEL_10:

  return v10;
}

- (BOOL)_allowsCapabilityVoiceControlWithExplanation:(id *)explanation
{
  _lockScreenManager = [(SBMainDisplayPolicyAggregator *)self _lockScreenManager];
  v30 = 0;
  v6 = [(SBMainDisplayPolicyAggregator *)self _hasFullySetUpUserWithExplanation:&v30];
  v7 = v30;
  if (v6)
  {
    if (MGGetBoolAnswer())
    {
      _assistantController = [(SBMainDisplayPolicyAggregator *)self _assistantController];
      isEnabled = [_assistantController isEnabled];

      if (isEnabled)
      {
        _telephonyManager = v7;
        v7 = @"Siri is supported and enabled";
      }

      else
      {
        lockScreenDefaults = [(SBLocalDefaults *)self->_defaults lockScreenDefaults];
        limitFeaturesForRemoteLock = [lockScreenDefaults limitFeaturesForRemoteLock];

        if (limitFeaturesForRemoteLock)
        {
          _telephonyManager = v7;
          v7 = @"We are disabled for remote lock";
        }

        else if (+[SBVoiceDisabledBundles voiceControlDisabledByCurrentlyRunningApp])
        {
          _telephonyManager = v7;
          v7 = @"Disabled by the currently running app";
        }

        else
        {
          _telephonyManager = [(SBMainDisplayPolicyAggregator *)self _telephonyManager];
          if (([_telephonyManager inCall] & 1) != 0 || objc_msgSend(_telephonyManager, "incomingCallExists"))
          {
            v16 = MEMORY[0x277CCACA8];
            [_telephonyManager inCall];
            v17 = NSStringFromBOOL();
            [_telephonyManager incomingCallExists];
            v18 = NSStringFromBOOL();
            v19 = [v16 stringWithFormat:@"We are inCall: %@ incomingCall: %@", v17, v18];

            v7 = v19;
          }

          else
          {

            _conferenceManager = [(SBMainDisplayPolicyAggregator *)self _conferenceManager];
            inFaceTime = [_conferenceManager inFaceTime];

            if (inFaceTime)
            {
              _telephonyManager = v7;
              v7 = @"We are in a FaceTime call";
            }

            else
            {
              _alertItemsController = [(SBMainDisplayPolicyAggregator *)self _alertItemsController];
              hasVisibleSuperModalAlert = [_alertItemsController hasVisibleSuperModalAlert];

              if (hasVisibleSuperModalAlert)
              {
                _telephonyManager = v7;
                v7 = @"Super modal alert visible";
              }

              else if ([_lockScreenManager isUILocked] && (objc_msgSend(_lockScreenManager, "coverSheetViewController"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "activeBehavior"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "areRestrictedCapabilities:", 2), v25, v24, (v26 & 1) != 0))
              {
                _telephonyManager = v7;
                v7 = @"Lock screen has has disabled voice control";
              }

              else
              {
                _mainWorkspace = [(SBMainDisplayPolicyAggregator *)self _mainWorkspace];
                transientOverlayPresentationManager = [_mainWorkspace transientOverlayPresentationManager];
                shouldDisableSiri = [transientOverlayPresentationManager shouldDisableSiri];

                if (!shouldDisableSiri)
                {
                  v11 = 1;
                  goto LABEL_10;
                }

                _telephonyManager = v7;
                v7 = @"Transient overlay has disabled voice control";
              }
            }
          }
        }
      }
    }

    else
    {
      _telephonyManager = v7;
      v7 = @"MG says the device doesn't have the VC capability";
    }
  }

  v11 = 0;
  if (explanation && v7)
  {
    v12 = v7;
    v11 = 0;
    *explanation = v7;
  }

LABEL_10:

  return v11;
}

- (BOOL)_allowsCapabilitySpotlightWithExplanation:(id *)explanation
{
  _profileConnection = [(SBMainDisplayPolicyAggregator *)self _profileConnection];
  isSpotlightAllowed = [_profileConnection isSpotlightAllowed];

  if (isSpotlightAllowed)
  {
    v10 = 0;
    v7 = [(SBMainDisplayPolicyAggregator *)self _hasFullySetUpUserWithExplanation:&v10];
    v8 = v10;
    if (!explanation)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    v8 = @"ManagedConfiguration policy states: no spotlight";
    if (!explanation)
    {
      goto LABEL_8;
    }
  }

  if (!v7 && v8)
  {
    v8 = v8;
    *explanation = v8;
  }

LABEL_8:

  return v7;
}

- (BOOL)_allowsCapabilityLockScreenCameraSupportedWithExplanation:(id *)explanation
{
  hasCameraCapability = self->_hasCameraCapability;
  if (hasCameraCapability)
  {
    v6 = *MEMORY[0x277CBED28];
  }

  else
  {
    v7 = MGGetBoolAnswer();
    v6 = *MEMORY[0x277CBED28];
    hasCameraCapability = *MEMORY[0x277CBED10];
    if (v7)
    {
      hasCameraCapability = *MEMORY[0x277CBED28];
    }

    self->_hasCameraCapability = hasCameraCapability;
  }

  if (hasCameraCapability != v6)
  {
    v8 = 0;
    v9 = @"MG says the device doesn't have the camera capability";
    if (!explanation)
    {
      return v8;
    }

    goto LABEL_13;
  }

  _applicationController = [(SBMainDisplayPolicyAggregator *)self _applicationController];
  cameraApplication = [_applicationController cameraApplication];

  v8 = cameraApplication != 0;
  if (cameraApplication)
  {
    v9 = 0;
  }

  else
  {
    v9 = @"The device doesn't have Camera.app.";
  }

  if (explanation)
  {
LABEL_13:
    if (v9 && !v8)
    {
      *explanation = v9;
    }
  }

  return v8;
}

- (BOOL)_allowsCapabilityLockScreenCameraWithExplanation:(id *)explanation
{
  lockOutController = [SBApp lockOutController];
  v21 = 0;
  v5 = [(SBMainDisplayPolicyAggregator *)self _hasFullySetUpUserWithExplanation:&v21];
  v19 = v21;
  userSessionController = [SBApp userSessionController];
  sessionType = [userSessionController sessionType];

  v8 = [(SBMainDisplayPolicyAggregator *)self allowsCapability:10];
  isBlocked = [lockOutController isBlocked];
  _applicationController = [(SBMainDisplayPolicyAggregator *)self _applicationController];
  v11 = _applicationController;
  if (_applicationController)
  {
    restrictionController = [_applicationController restrictionController];
    v13 = [restrictionController isApplicationIdentifierRestricted:@"com.apple.camera"];
  }

  else
  {
    v13 = 0;
  }

  authenticationController = [SBApp authenticationController];
  hasAuthenticatedAtLeastOnceSinceBoot = [authenticationController hasAuthenticatedAtLeastOnceSinceBoot];

  v16 = v5 & ~(v13 | ~v8 | isBlocked);
  if (sessionType == 2)
  {
    v16 = 0;
  }

  v17 = v16 & hasAuthenticatedAtLeastOnceSinceBoot;
  if (explanation && (v16 & hasAuthenticatedAtLeastOnceSinceBoot & 1) == 0)
  {
    *explanation = [MEMORY[0x277CCACA8] stringWithFormat:@"lockScreenCameraSupported: %d, cameraRestricted: %d, currently blocked: %d (thermal blocked: %d), isUserFullySetUp: %d, userSetUpExplanation: %@, ephemeral multi-user: %d", -[SBMainDisplayPolicyAggregator allowsCapability:](self, "allowsCapability:", 10), v13, isBlocked, objc_msgSend(lockOutController, "isThermallyBlocked"), v5, v19, sessionType == 2];
  }

  return v17;
}

- (BOOL)_allowsCapabilityLockScreenCameraSwipeWithExplanation:(id *)explanation
{
  v4 = [(SBMainDisplayPolicyAggregator *)self allowsCapability:11];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SBLockScreenCameraSwipeEnabled", @"com.apple.springboard", &keyExistsAndHasValidFormat);
  v6 = 0;
  if (v4)
  {
    if (AppBooleanValue)
    {
      v7 = 1;
    }

    else
    {
      v7 = keyExistsAndHasValidFormat == 0;
    }

    v6 = v7;
  }

  if (explanation && !v6)
  {
    *explanation = [MEMORY[0x277CCACA8] stringWithFormat:@"lockScreenCamera: %d, swipeAllowed: %d", v4, AppBooleanValue != 0];
  }

  return v6;
}

- (BOOL)_allowsNotificationOrControlCenterWithExplanation:(id *)explanation
{
  v19 = 0;
  v5 = [(SBMainDisplayPolicyAggregator *)self _hasFullySetUpUserWithExplanation:&v19];
  v6 = v19;
  if (v5)
  {
    lockOutController = [SBApp lockOutController];
    isBlocked = [lockOutController isBlocked];

    if (isBlocked)
    {
      v9 = @"Device is blocked";
    }

    else
    {
      v10 = +[SBAlertItemsController sharedInstance];
      hasVisibleModalAlert = [v10 hasVisibleModalAlert];

      if (hasVisibleModalAlert)
      {
        v9 = @"A modal alert item is showing";
      }

      else
      {
        _lockScreenManager = [(SBMainDisplayPolicyAggregator *)self _lockScreenManager];
        isInLostMode = [_lockScreenManager isInLostMode];

        if (isInLostMode)
        {
          v9 = @"Device is in lost mode";
        }

        else
        {
          _commandTabController = [(SBMainDisplayPolicyAggregator *)self _commandTabController];
          isVisible = [_commandTabController isVisible];

          if (isVisible)
          {
            v9 = @"Command-Tab is visible";
          }

          else
          {
            if (![(SBMainDisplayPolicyAggregator *)self _dictationInfoOnScreen])
            {
              v16 = 1;
              goto LABEL_16;
            }

            v9 = @"The dictation presentation window is being displayed above CoverSheet";
          }
        }
      }
    }

    v6 = v9;
  }

  v16 = 0;
  if (explanation && v6)
  {
    v17 = v6;
    v16 = 0;
    *explanation = v6;
  }

LABEL_16:

  return v16;
}

- (BOOL)_allowsCapabilityCoverSheetWithExplanation:(id *)explanation
{
  windowSceneManager = [SBApp windowSceneManager];
  v6 = [windowSceneManager windowSceneForDisplayIdentity:self->_displayIdentity];

  v16 = 0;
  LODWORD(windowSceneManager) = [(SBMainDisplayPolicyAggregator *)self _allowsNotificationOrControlCenterWithExplanation:&v16];
  v7 = v16;
  if (windowSceneManager)
  {
    bannerManager = [SBApp bannerManager];
    v9 = [bannerManager isDisplayingBannerInWindowScene:v6];

    if (v9)
    {
      v10 = @"The banner manager is presenting a banner on the embedded display.";
    }

    else
    {
      homeScreenController = [v6 homeScreenController];
      areAnyIconViewContextMenusShowing = [homeScreenController areAnyIconViewContextMenusShowing];

      if (!areAnyIconViewContextMenusShowing)
      {
        v13 = 1;
        goto LABEL_11;
      }

      v10 = @"Icon force touch is peeking or showing.";
    }

    v7 = v10;
  }

  v13 = 0;
  if (explanation && v7)
  {
    v14 = v7;
    v13 = 0;
    *explanation = v7;
  }

LABEL_11:

  return v13;
}

- (BOOL)_allowsCapabilityDismissCoverSheetWithExplanation:(id *)explanation
{
  _lockScreenManager = [(SBMainDisplayPolicyAggregator *)self _lockScreenManager];
  isUILocked = [_lockScreenManager isUILocked];

  if (!isUILocked)
  {
    return 1;
  }

  _lockScreenManager2 = [(SBMainDisplayPolicyAggregator *)self _lockScreenManager];
  coverSheetViewController = [_lockScreenManager2 coverSheetViewController];
  activeBehavior = [coverSheetViewController activeBehavior];

  if ([activeBehavior areRestrictedCapabilities:4096])
  {
    v10 = @"Lock screen prevents cover sheet dismiss";
    goto LABEL_6;
  }

  if (([activeBehavior areRestrictedCapabilities:56] & 1) == 0)
  {

    return 1;
  }

  v10 = @"Lock screen prevents unlock";
LABEL_6:

  result = 0;
  if (explanation)
  {
    *explanation = v10;
  }

  return result;
}

- (BOOL)_allowsCapabilityControlCenterWithExplanation:(id *)explanation
{
  _profileConnection = [(SBMainDisplayPolicyAggregator *)self _profileConnection];
  isControlCenterAllowed = [_profileConnection isControlCenterAllowed];

  if (isControlCenterAllowed)
  {
    v17 = 0;
    v7 = [(SBMainDisplayPolicyAggregator *)self _allowsNotificationOrControlCenterWithExplanation:&v17];
    v8 = v17;
    if (v7)
    {
      notificationDispatcher = [SBApp notificationDispatcher];
      bannerDestination = [notificationDispatcher bannerDestination];
      isPresentingBannerInLongLook = [bannerDestination isPresentingBannerInLongLook];

      if (!isPresentingBannerInLongLook)
      {
LABEL_8:
        v14 = 1;
        goto LABEL_12;
      }

      v8 = @"Banner destination is presenting long look";
    }
  }

  else
  {
    v8 = @"ManagedConfiguration policy states: no control center";
  }

  standardDefaults = [MEMORY[0x277CFC880] standardDefaults];
  shouldAlwaysBeEnabled = [standardDefaults shouldAlwaysBeEnabled];

  if (shouldAlwaysBeEnabled)
  {

    v8 = 0;
    goto LABEL_8;
  }

  v14 = 0;
  if (explanation && v8)
  {
    v15 = v8;
    v14 = 0;
    *explanation = v8;
  }

LABEL_12:

  return v14;
}

- (BOOL)_allowsCapabilityLogoutWithExplanation:(id *)explanation
{
  _lockScreenManager = [(SBMainDisplayPolicyAggregator *)self _lockScreenManager];
  isInLostMode = [_lockScreenManager isInLostMode];

  userSessionController = [SBApp userSessionController];
  isLoginSession = [userSessionController isLoginSession];

  if (isLoginSession)
  {
    v9 = @"In login session";
  }

  else
  {
    userSessionController2 = [SBApp userSessionController];
    isMultiUserSupported = [userSessionController2 isMultiUserSupported];

    if (isMultiUserSupported)
    {
      _profileConnection = [(SBMainDisplayPolicyAggregator *)self _profileConnection];
      isInSingleAppMode = [_profileConnection isInSingleAppMode];

      if (isInLostMode & 1 | ((isInSingleAppMode & 1) == 0))
      {
        return 1;
      }

      v9 = @"Device is in Single App Mode";
    }

    else
    {
      v9 = @"Device not configured for multiuser";
    }
  }

  result = 0;
  if (explanation)
  {
    *explanation = v9;
  }

  return result;
}

- (BOOL)_allowsCapabilityLoginWindowWithExplanation:(id *)explanation
{
  userSessionController = [SBApp userSessionController];
  isMultiUserSupported = [userSessionController isMultiUserSupported];

  if (isMultiUserSupported)
  {
    userSessionController2 = [SBApp userSessionController];
    isLoginSession = [userSessionController2 isLoginSession];

    if (isLoginSession)
    {
      return 1;
    }

    v9 = @"Current session is not a login session";
  }

  else
  {
    v9 = @"Device not configured for multiuser";
  }

  result = 0;
  if (explanation)
  {
    *explanation = v9;
  }

  return result;
}

- (BOOL)_allowsCapabilityControlCenterEditingWithExplanation:(id *)explanation
{
  authenticationController = [SBApp authenticationController];
  hasAuthenticatedAtLeastOnceSinceBoot = [authenticationController hasAuthenticatedAtLeastOnceSinceBoot];

  if (hasAuthenticatedAtLeastOnceSinceBoot)
  {
    userSessionController = [SBApp userSessionController];
    sessionType = [userSessionController sessionType];

    if (sessionType == 2)
    {
      v8 = @"Not available to ephemeral user sessions";
    }

    else
    {
      if (![MEMORY[0x277D75128] isRunningInStoreDemoMode])
      {
        return 1;
      }

      v10 = +[SBDefaults externalDefaults];
      demoDefaults = [v10 demoDefaults];
      shouldLockIconsInStoreDemoMode = [demoDefaults shouldLockIconsInStoreDemoMode];

      if (!shouldLockIconsInStoreDemoMode)
      {
        return 1;
      }

      v8 = @"Device is in store demo mode";
    }
  }

  else
  {
    v8 = @"Haven't unlocked the device yet after a reboot.";
  }

  result = 0;
  if (explanation)
  {
    *explanation = v8;
  }

  return result;
}

- (BOOL)_allowsCapabilityHomeScreenEditingWithExplanation:(id *)explanation
{
  windowSceneManager = [SBApp windowSceneManager];
  v6 = [windowSceneManager windowSceneForDisplayIdentity:self->_displayIdentity];

  switcherController = [v6 switcherController];
  unlockedEnvironmentMode = [switcherController unlockedEnvironmentMode];
  _profileConnection = [(SBMainDisplayPolicyAggregator *)self _profileConnection];
  isHomeScreenEditingAllowed = [_profileConnection isHomeScreenEditingAllowed];

  if (isHomeScreenEditingAllowed)
  {
    userSessionController = [SBApp userSessionController];
    sessionType = [userSessionController sessionType];

    if (sessionType == 2)
    {
      v13 = @"Not available to ephemeral user sessions";
    }

    else
    {
      _profileConnection2 = [(SBMainDisplayPolicyAggregator *)self _profileConnection];
      restrictionEnforcedHomeScreenLayout = [_profileConnection2 restrictionEnforcedHomeScreenLayout];

      if (restrictionEnforcedHomeScreenLayout)
      {
        v13 = @"Device has enforced home screen layout";
      }

      else if ([MEMORY[0x277D75128] isRunningInStoreDemoMode] && (+[SBDefaults externalDefaults](SBDefaults, "externalDefaults"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "demoDefaults"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "shouldLockIconsInStoreDemoMode"), v19, v18, (v20 & 1) != 0))
      {
        v13 = @"Device is in store demo mode";
      }

      else if (unlockedEnvironmentMode == 3)
      {
        v13 = @"App is open";
      }

      else if (unlockedEnvironmentMode == 2)
      {
        v13 = @"App Switcher is open";
      }

      else
      {
        homeScreenController = [v6 homeScreenController];
        iconManager = [homeScreenController iconManager];
        isShowingPullDownSearchOrTransitioningToVisible = [iconManager isShowingPullDownSearchOrTransitioningToVisible];

        if (!isShowingPullDownSearchOrTransitioningToVisible)
        {
          v16 = 1;
          goto LABEL_9;
        }

        v13 = @"Spotlight is visible";
      }
    }
  }

  else
  {
    v13 = @"ManagedConfiguration policy states: no home screen editing";
  }

  v16 = 0;
  if (explanation)
  {
    *explanation = v13;
  }

LABEL_9:

  return v16;
}

- (BOOL)_allowsCapabilityScreenshotWithExplanation:(id *)explanation
{
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__SBMainDisplayPolicyAggregator__allowsCapabilityScreenshotWithExplanation___block_invoke;
  v16[3] = &__block_descriptor_40_e18_v16__0__NSString_8l;
  v16[4] = explanation;
  v4 = MEMORY[0x223D6F7F0](v16, a2);
  _profileConnection = [(SBMainDisplayPolicyAggregator *)self _profileConnection];
  v6 = [_profileConnection BOOLRestrictionForFeature:*MEMORY[0x277D26048]];

  if (v6 == 2)
  {
    v7 = @"ManagedConfiguration policy states: no screen shots allowed";
LABEL_10:
    (v4)[2](v4, v7);
    v14 = 0;
    goto LABEL_11;
  }

  userSessionController = [SBApp userSessionController];
  if ([userSessionController isLoginSession])
  {
    v9 = +[SBDefaults localDefaults];
    applicationDefaults = [v9 applicationDefaults];
    shouldAllowScreenshotsInLoginWindow = [applicationDefaults shouldAllowScreenshotsInLoginWindow];

    if (!shouldAllowScreenshotsInLoginWindow)
    {
      v7 = @"Snapshotting unavailable at the login window.";
      goto LABEL_10;
    }
  }

  else
  {
  }

  authenticationController = [SBApp authenticationController];
  hasAuthenticatedAtLeastOnceSinceBoot = [authenticationController hasAuthenticatedAtLeastOnceSinceBoot];

  if ((hasAuthenticatedAtLeastOnceSinceBoot & 1) == 0)
  {
    v7 = @"Haven't unlocked the device yet after a reboot.";
    goto LABEL_10;
  }

  v14 = 1;
LABEL_11:

  return v14;
}

void **__76__SBMainDisplayPolicyAggregator__allowsCapabilityScreenshotWithExplanation___block_invoke(void **result, id a2)
{
  if (result[4])
  {
    v3 = result;
    result = a2;
    *v3[4] = a2;
  }

  return result;
}

- (BOOL)_allowsCapabilityCommandTabWithExplanation:(id *)explanation
{
  _profileConnection = [(SBMainDisplayPolicyAggregator *)self _profileConnection];
  isCommandTabAllowed = [_profileConnection isCommandTabAllowed];

  if (isCommandTabAllowed)
  {
    modalAlertPresentationCoordinator = [SBApp modalAlertPresentationCoordinator];
    isShowingModalAlert = [modalAlertPresentationCoordinator isShowingModalAlert];

    if (isShowingModalAlert)
    {
      v9 = @"Can't use command-tab while a mini alert is visible.";
    }

    else
    {
      _lockStateAggregator = [(SBMainDisplayPolicyAggregator *)self _lockStateAggregator];
      hasAnyLockState = [_lockStateAggregator hasAnyLockState];

      if (hasAnyLockState)
      {
        v9 = @"Can't use command-tab while locked.";
      }

      else
      {
        _setupManager = [(SBMainDisplayPolicyAggregator *)self _setupManager];
        isInSetupMode = [_setupManager isInSetupMode];

        if (!isInSetupMode)
        {
          return 1;
        }

        v9 = @"Can't use command-tab while in buddy mode.";
      }
    }
  }

  else
  {
    v9 = @"ManagedConfiguration policy states: no command-tab allowed";
  }

  result = 0;
  if (explanation)
  {
    *explanation = v9;
  }

  return result;
}

- (BOOL)_allowsCapabilityLockScreenControlCenterWithExplanation:(id *)explanation
{
  _profileConnection = [(SBMainDisplayPolicyAggregator *)self _profileConnection];
  isControlCenterAllowed = [_profileConnection isControlCenterAllowed];

  if (isControlCenterAllowed)
  {
    authenticationController = [SBApp authenticationController];
    isAuthenticated = [authenticationController isAuthenticated];

    if ((isAuthenticated & 1) != 0 || (-[SBMainDisplayPolicyAggregator _profileConnection](self, "_profileConnection"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isLockScreenControlCenterAllowed], v9, v10))
    {
      authenticationController2 = [SBApp authenticationController];
      hasAuthenticatedAtLeastOnceSinceBoot = [authenticationController2 hasAuthenticatedAtLeastOnceSinceBoot];

      if (hasAuthenticatedAtLeastOnceSinceBoot)
      {
        return 1;
      }

      v14 = @"Haven't unlocked the device yet after a reboot.";
    }

    else
    {
      v14 = @"ManagedConfiguration policy states: no control center on the lock screen.";
    }
  }

  else
  {
    v14 = @"ManagedConfiguration policy states: no control center";
  }

  result = 0;
  if (explanation)
  {
    *explanation = v14;
  }

  return result;
}

- (BOOL)_allowsCapabilityLockScreenNotificationCenterWithExplanation:(id *)explanation
{
  authenticationController = [SBApp authenticationController];
  isAuthenticated = [authenticationController isAuthenticated];

  if ((isAuthenticated & 1) != 0 || (-[SBMainDisplayPolicyAggregator _profileConnection](self, "_profileConnection"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 effectiveBoolValueForSetting:*MEMORY[0x277D25F50]], v7, v8 != 2))
  {
    authenticationController2 = [SBApp authenticationController];
    hasAuthenticatedAtLeastOnceSinceBoot = [authenticationController2 hasAuthenticatedAtLeastOnceSinceBoot];

    if (hasAuthenticatedAtLeastOnceSinceBoot)
    {
      return 1;
    }

    v9 = @"Haven't unlocked the device yet after a reboot.";
  }

  else
  {
    v9 = @"ManagedConfiguration policy states: no notifications view on the lock screen.";
  }

  result = 0;
  if (explanation)
  {
    *explanation = v9;
  }

  return result;
}

- (BOOL)_allowsCapabilityLockScreenTodayViewWithExplanation:(id *)explanation
{
  v5 = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityTodayViewWithExplanation:?];
  if (v5)
  {
    authenticationController = [SBApp authenticationController];
    isAuthenticated = [authenticationController isAuthenticated];

    if ((isAuthenticated & 1) != 0 || (-[SBMainDisplayPolicyAggregator _profileConnection](self, "_profileConnection"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 effectiveBoolValueForSetting:*MEMORY[0x277D25F58]], v8, v9 != 2))
    {
      authenticationController2 = [SBApp authenticationController];
      hasAuthenticatedAtLeastOnceSinceBoot = [authenticationController2 hasAuthenticatedAtLeastOnceSinceBoot];

      if (hasAuthenticatedAtLeastOnceSinceBoot)
      {
        userSessionController = [SBApp userSessionController];
        sessionType = [userSessionController sessionType];

        if (sessionType != 2)
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        v10 = @"No today view on shared iPad.";
      }

      else
      {
        v10 = @"Haven't unlocked the device yet after a reboot.";
      }
    }

    else
    {
      v10 = @"ManagedConfiguration policy states: no today view on the lock screen.";
    }

    LOBYTE(v5) = 0;
    if (explanation)
    {
      *explanation = v10;
    }
  }

  return v5;
}

- (BOOL)_allowsCapabilityTodayViewWithExplanation:(id *)explanation
{
  _profileConnection = [(SBMainDisplayPolicyAggregator *)self _profileConnection];
  v5 = [_profileConnection effectiveBoolValueForSetting:*MEMORY[0x277D260A0]];

  if (v5 == 2 && explanation != 0)
  {
    *explanation = @"ManagedConfiguration policy states: no today view.";
  }

  return v5 != 2;
}

- (BOOL)_allowsCapabilityLiftToWakeWithExplanation:(id *)explanation
{
  _lockScreenManager = [(SBMainDisplayPolicyAggregator *)self _lockScreenManager];
  isInLostMode = [_lockScreenManager isInLostMode];

  if (explanation && isInLostMode)
  {
    *explanation = @"Device is in lost mode";
  }

  return isInLostMode ^ 1;
}

- (BOOL)_allowsCapabilityQuickNoteWithExplanation:(id *)explanation
{
  v4 = +[SBDefaults externalDefaults];
  notesDefaults = [v4 notesDefaults];
  quickNotesDisabled = [notesDefaults quickNotesDisabled];

  if (quickNotesDisabled)
  {
    v7 = 0;
    v8 = @"Disabled by Notes pref.";
    if (!explanation)
    {
      return v7;
    }

    goto LABEL_15;
  }

  if (!MGGetBoolAnswer())
  {
    v7 = 0;
    v8 = @"Device does not support pencil.";
    if (!explanation)
    {
      return v7;
    }

    goto LABEL_15;
  }

  authenticationController = [SBApp authenticationController];
  hasAuthenticatedAtLeastOnceSinceBoot = [authenticationController hasAuthenticatedAtLeastOnceSinceBoot];

  if (!hasAuthenticatedAtLeastOnceSinceBoot)
  {
    v7 = 0;
    v8 = @"Haven't unlocked the device yet after a reboot.";
    if (!explanation)
    {
      return v7;
    }

    goto LABEL_15;
  }

  v11 = +[SBApplicationController sharedInstance];
  notesApplication = [v11 notesApplication];

  if (notesApplication && ![notesApplication isUninstalled])
  {
    v8 = 0;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v8 = @"Notes app is uninstalled.";
  }

  if (explanation)
  {
LABEL_15:
    if (v8 && !v7)
    {
      *explanation = v8;
    }
  }

  return v7;
}

- (BOOL)_allowsCapabilityCoverSheetSpotlightWithExplanation:(id *)explanation
{
  v5 = _os_feature_enabled_impl();
  v6 = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilitySpotlightWithExplanation:explanation];
  v7 = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLockScreenTodayViewWithExplanation:explanation];
  if (explanation && (v5 & 1) == 0)
  {
    v8 = @"Feature not enabled.";
    if (v5)
    {
      v8 = 0;
    }

    *explanation = v8;
  }

  return v7 & v5 & v6;
}

- (BOOL)_allowsCapabilityPosterSwitcherWithExplanation:(id *)explanation
{
  if (CSAutobahnEnabledForPlatform())
  {
    if (!SBGuidedAccessIsActive())
    {
      return 1;
    }

    v4 = @"Guided access is active.";
  }

  else
  {
    v4 = @"Feature not enabled.";
  }

  result = 0;
  if (explanation)
  {
    *explanation = v4;
  }

  return result;
}

@end