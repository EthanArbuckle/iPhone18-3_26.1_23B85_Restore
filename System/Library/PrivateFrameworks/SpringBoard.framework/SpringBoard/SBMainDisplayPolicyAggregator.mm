@interface SBMainDisplayPolicyAggregator
- (BOOL)_allowsCapabilityAssistantEnabledWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityAssistantWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityCommandTabWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityControlCenterEditingWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityControlCenterWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityCoverSheetSpotlightWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityCoverSheetWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityDismissCoverSheetWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityHomeScreenEditingWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityLiftToWakeWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityLockScreenBulletinWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityLockScreenCameraSupportedWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityLockScreenCameraSwipeWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityLockScreenCameraWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityLockScreenControlCenterWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityLockScreenNotificationCenterWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityLockScreenTodayViewWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityLoginWindowWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityLogoutWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityPosterSwitcherWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityQuickNoteWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityScreenshotWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilitySendMediaCommandWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilitySpotlightWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilitySuggestedApplicationWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilitySystemGestureWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityTodayViewWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityUnlockToPluginSpecifiedApplicationWithExplanation:(id *)a3;
- (BOOL)_allowsCapabilityVoiceControlWithExplanation:(id *)a3;
- (BOOL)_allowsNotificationOrControlCenterWithExplanation:(id *)a3;
- (BOOL)_dictationInfoOnScreen;
- (BOOL)_hasFullySetUpUserWithExplanation:(id *)a3;
- (BOOL)allowsCapability:(int64_t)a3 explanation:(id *)a4;
- (BOOL)allowsTransitionRequest:(id)a3;
- (MCProfileConnection)_profileConnection;
- (SBAlertItemsController)_alertItemsController;
- (SBApplicationController)_applicationController;
- (SBAssistantController)_assistantController;
- (SBBannerManager)_bannerManager;
- (SBCommandTabController)_commandTabController;
- (SBConferenceManager)_conferenceManager;
- (SBLockScreenManager)_lockScreenManager;
- (SBLockStateAggregator)_lockStateAggregator;
- (SBMainDisplayPolicyAggregator)initWithDefaults:(id)a3 displayIdentity:(id)a4;
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
    v3 = override_profileConnection;
  }

  else
  {
    v3 = [MEMORY[0x277D262A0] sharedConnection];
  }

  return v3;
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
    v3 = override_commandTabController;
  }

  else
  {
    v4 = [(SBMainDisplayPolicyAggregator *)self _windowScene];
    v3 = [v4 commandTabController];
  }

  return v3;
}

- (SBWindowScene)_windowScene
{
  v3 = [SBApp windowSceneManager];
  v4 = [v3 windowSceneForDisplayIdentity:self->_displayIdentity];

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

- (SBMainDisplayPolicyAggregator)initWithDefaults:(id)a3 displayIdentity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v47.receiver = self;
  v47.super_class = SBMainDisplayPolicyAggregator;
  v9 = [(SBMainDisplayPolicyAggregator *)&v47 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_defaults, a3);
    objc_storeStrong(&v10->_displayIdentity, a4);
    v11 = [(SBLocalDefaults *)v10->_defaults demoDefaults];
    v10->_storeDemoAppLockEnabled = [v11 isStoreDemoApplicationLockEnabled];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"storeDemoApplicationLockEnabled"];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __66__SBMainDisplayPolicyAggregator_initWithDefaults_displayIdentity___block_invoke;
    v44[3] = &unk_2783A92D8;
    v13 = v10;
    v45 = v13;
    v46 = v11;
    v35 = v11;
    v14 = MEMORY[0x277D85CD0];
    v15 = [v35 observeDefault:v12 onQueue:MEMORY[0x277D85CD0] withBlock:v44];

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    v17 = *MEMORY[0x277D25CA0];
    v18 = [MEMORY[0x277CCABD8] mainQueue];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __66__SBMainDisplayPolicyAggregator_initWithDefaults_displayIdentity___block_invoke_2;
    v42[3] = &unk_2783AC180;
    v19 = v13;
    v43 = v19;
    v20 = [v16 addObserverForName:v17 object:0 queue:v18 usingBlock:v42];

    v21 = +[SBDefaults externalDefaults];
    v22 = [v21 notesDefaults];

    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"quickNotesDisabled"];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __66__SBMainDisplayPolicyAggregator_initWithDefaults_displayIdentity___block_invoke_3;
    v40[3] = &unk_2783A8C18;
    v24 = v19;
    v41 = v24;
    v25 = [v22 observeDefault:v23 onQueue:v14 withBlock:v40];

    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    v27 = *MEMORY[0x277D66078];
    v28 = [MEMORY[0x277CCABD8] mainQueue];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __66__SBMainDisplayPolicyAggregator_initWithDefaults_displayIdentity___block_invoke_4;
    v38[3] = &unk_2783AC180;
    v29 = v24;
    v39 = v29;
    v30 = [v26 addObserverForName:v27 object:0 queue:v28 usingBlock:v38];

    v31 = [MEMORY[0x277CCAB98] defaultCenter];
    v32 = [MEMORY[0x277CCABD8] mainQueue];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __66__SBMainDisplayPolicyAggregator_initWithDefaults_displayIdentity___block_invoke_5;
    v36[3] = &unk_2783AC180;
    v37 = v29;
    v33 = [v31 addObserverForName:@"SBInstalledApplicationsDidChangeNotification" object:0 queue:v32 usingBlock:v36];
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

- (BOOL)allowsCapability:(int64_t)a3 explanation:(id *)a4
{
  switch(a3)
  {
    case 1:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilitySuggestedApplicationWithExplanation:a4];
      break;
    case 2:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLockScreenBulletinWithExplanation:a4];
      break;
    case 3:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityUnlockToPluginSpecifiedApplicationWithExplanation:a4];
      break;
    case 4:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityAssistantEnabledWithExplanation:a4];
      break;
    case 5:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityAssistantWithExplanation:a4];
      break;
    case 6:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilitySendMediaCommandWithExplanation:a4];
      break;
    case 7:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilitySystemGestureWithExplanation:a4];
      break;
    case 8:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityVoiceControlWithExplanation:a4];
      break;
    case 9:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilitySpotlightWithExplanation:a4];
      break;
    case 10:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLockScreenCameraSupportedWithExplanation:a4];
      break;
    case 11:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLockScreenCameraWithExplanation:a4];
      break;
    case 12:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLockScreenCameraSwipeWithExplanation:a4];
      break;
    case 13:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityCoverSheetWithExplanation:a4];
      break;
    case 14:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityDismissCoverSheetWithExplanation:a4];
      break;
    case 15:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityControlCenterWithExplanation:a4];
      break;
    case 16:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLogoutWithExplanation:a4];
      break;
    case 17:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLoginWindowWithExplanation:a4];
      break;
    case 18:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityHomeScreenEditingWithExplanation:a4];
      break;
    case 19:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityScreenshotWithExplanation:a4];
      break;
    case 20:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityCommandTabWithExplanation:a4];
      break;
    case 21:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLockScreenControlCenterWithExplanation:a4];
      break;
    case 22:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLockScreenNotificationCenterWithExplanation:a4];
      break;
    case 23:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLockScreenTodayViewWithExplanation:a4];
      break;
    case 24:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityTodayViewWithExplanation:a4];
      break;
    case 25:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLiftToWakeWithExplanation:a4];
      break;
    case 26:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityQuickNoteWithExplanation:a4];
      break;
    case 27:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityCoverSheetSpotlightWithExplanation:a4];
      break;
    case 28:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityPosterSwitcherWithExplanation:a4];
      break;
    case 29:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityHardwareButtonBezelEffectsEdgeLight:a4];
      break;
    case 30:
      result = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityControlCenterEditingWithExplanation:a4];
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

- (BOOL)allowsTransitionRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 transientOverlayContext];
  if (!v5)
  {
    v6 = [SBApp restartManager];
    v7 = [v6 isPendingExit];

    if (v7)
    {
      goto LABEL_15;
    }
  }

  v8 = [SBApp userSessionController];
  v9 = [v8 isLoginSession];

  if (v9)
  {
    v10 = [v4 applicationContext];
    v11 = [v10 activatingEntity];
    if ([v11 isApplicationSceneEntity])
    {
      v12 = [v10 isBackground];

      if (!v12)
      {
        v14 = 0;
        if (!v5)
        {
LABEL_11:
          if ([v14 isLaunchableDuringSetup])
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

      v11 = [v10 activatingEntity];
      v13 = [v11 application];
      v14 = [v13 info];
    }

    else
    {
      v14 = 0;
    }

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

LABEL_13:
  v17.receiver = self;
  v17.super_class = SBMainDisplayPolicyAggregator;
  v15 = [(SBPolicyAggregator *)&v17 allowsTransitionRequest:v4];
LABEL_16:

  return v15;
}

- (void)reloadDemoDefaults
{
  v3 = [(SBLocalDefaults *)self->_defaults demoDefaults];
  self->_storeDemoAppLockEnabled = [v3 isStoreDemoApplicationLockEnabled];
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
    v3 = override_remoteTransientOverlaySessionManager;
  }

  else
  {
    v3 = [SBApp remoteTransientOverlaySessionManager];
  }

  return v3;
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
    v3 = override_bannerManager;
  }

  else
  {
    v3 = [SBApp bannerManager];
  }

  return v3;
}

- (BOOL)_hasFullySetUpUserWithExplanation:(id *)a3
{
  v4 = [(SBMainDisplayPolicyAggregator *)self _setupManager];
  v5 = [v4 isInSetupMode];

  if (v5)
  {
    v6 = @"In setup mode";
  }

  else
  {
    v7 = [SBApp userSessionController];
    v8 = [v7 isLoginSession];

    if (!v8)
    {
      return 1;
    }

    v6 = @"In login session";
  }

  result = 0;
  if (a3)
  {
    *a3 = v6;
  }

  return result;
}

- (BOOL)_allowsCapabilitySuggestedApplicationWithExplanation:(id *)a3
{
  v12 = 0;
  v5 = [(SBMainDisplayPolicyAggregator *)self _hasFullySetUpUserWithExplanation:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = [(SBMainDisplayPolicyAggregator *)self _lockScreenManager];
    v8 = [v7 isInLostMode];

    if (!v8)
    {
      v9 = 1;
      goto LABEL_8;
    }

    v6 = @"Device is in lost mode";
  }

  v9 = 0;
  if (a3 && v6)
  {
    v10 = v6;
    v9 = 0;
    *a3 = v6;
  }

LABEL_8:

  return v9;
}

- (BOOL)_allowsCapabilityLockScreenBulletinWithExplanation:(id *)a3
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
    if (a3 && !v7 && v5)
    {
      v8 = v5;
      *a3 = v5;
    }
  }

  return v6;
}

- (BOOL)_allowsCapabilityUnlockToPluginSpecifiedApplicationWithExplanation:(id *)a3
{
  v7 = 0;
  v4 = [(SBMainDisplayPolicyAggregator *)self _hasFullySetUpUserWithExplanation:&v7];
  v5 = v7;
  if (a3 && !v4 && v5)
  {
    v5 = v5;
    *a3 = v5;
  }

  return v4;
}

- (BOOL)_allowsCapabilityAssistantEnabledWithExplanation:(id *)a3
{
  v5 = +[SBDefaults localDefaults];
  v6 = [v5 lockScreenDefaults];
  v7 = [v6 limitFeaturesForRemoteLock];

  if (v7)
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
      v10 = [(SBMainDisplayPolicyAggregator *)self _assistantController];
      v11 = [v10 isEnabled];

      if (v11)
      {
        v12 = 1;
        goto LABEL_10;
      }

      v8 = @"Assistant not supported or disabled";
    }
  }

  v12 = 0;
  if (a3 && v8)
  {
    v13 = v8;
    v12 = 0;
    *a3 = v8;
  }

LABEL_10:

  return v12;
}

- (BOOL)_allowsCapabilityAssistantWithExplanation:(id *)a3
{
  v27 = 0;
  v5 = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityAssistantEnabledWithExplanation:&v27];
  v6 = v27;
  v7 = [(SBMainDisplayPolicyAggregator *)self _lockScreenManager];
  v8 = v7;
  if (!v5)
  {
    v13 = 0;
    goto LABEL_17;
  }

  v9 = [v7 lockScreenEnvironment];
  v10 = [v9 callController];
  v11 = [v10 isMakingEmergencyCall];

  if (v11)
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

  v14 = [(SBMainDisplayPolicyAggregator *)self _remoteTransientOverlaySessionManager];
  v15 = [v14 hasSessionWithPendingButtonEvents:1 options:0];

  if (v15)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Has a remote transient overlay session handling lock button press."];
    goto LABEL_16;
  }

  v16 = [(SBMainDisplayPolicyAggregator *)self _alertItemsController];
  v17 = [v16 hasVisibleSuperModalAlert];

  if (v17)
  {
    v12 = @"Super modal alert visible";
    goto LABEL_16;
  }

  if ([v8 isUILocked])
  {
    v18 = [v8 coverSheetViewController];
    v19 = [v18 activeBehavior];
    v20 = [v19 areRestrictedCapabilities:2];

    if (v20)
    {
      v12 = @"Lock screen has has disabled assistant";
      goto LABEL_16;
    }
  }

  v21 = [(SBMainDisplayPolicyAggregator *)self _mainWorkspace];
  v22 = [v21 transientOverlayPresentationManager];
  v23 = [v22 shouldDisableSiri];

  if (v23)
  {
    v12 = @"Transient overlay has disabled assistant";
    goto LABEL_16;
  }

  v13 = 1;
LABEL_17:
  v24 = [SBApp lockOutController];
  if ([v24 isThermallyBlocked])
  {

    v13 = 0;
    v6 = @"Thermal trap has disabled assistant";
  }

  if ([v24 isLiquidDetectionCriticalUIBlocked])
  {

    v13 = 0;
    v6 = @"Liquid detection critical ui has disabled assistant";
  }

  if ([v24 isProximityReaderBlocked])
  {

    v13 = 0;
    v6 = @"Proximity reader has disabled assistant";
  }

  if (a3 && !v13 && v6)
  {
    v25 = v6;
    *a3 = v6;
  }

  return v13;
}

- (BOOL)_allowsCapabilitySendMediaCommandWithExplanation:(id *)a3
{
  v7 = 0;
  v4 = [(SBMainDisplayPolicyAggregator *)self _hasFullySetUpUserWithExplanation:&v7];
  v5 = v7;
  if (a3 && !v4 && v5)
  {
    v5 = v5;
    *a3 = v5;
  }

  return v4;
}

- (BOOL)_allowsCapabilitySystemGestureWithExplanation:(id *)a3
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

  v8 = [MEMORY[0x277CFC880] standardDefaults];
  v9 = [v8 shouldAlwaysBeEnabled];

  if (v9)
  {

    v7 = 0;
    goto LABEL_6;
  }

  v10 = 0;
  if (a3 && v7)
  {
    v11 = v7;
    v10 = 0;
    *a3 = v7;
  }

LABEL_10:

  return v10;
}

- (BOOL)_allowsCapabilityVoiceControlWithExplanation:(id *)a3
{
  v5 = [(SBMainDisplayPolicyAggregator *)self _lockScreenManager];
  v30 = 0;
  v6 = [(SBMainDisplayPolicyAggregator *)self _hasFullySetUpUserWithExplanation:&v30];
  v7 = v30;
  if (v6)
  {
    if (MGGetBoolAnswer())
    {
      v8 = [(SBMainDisplayPolicyAggregator *)self _assistantController];
      v9 = [v8 isEnabled];

      if (v9)
      {
        v10 = v7;
        v7 = @"Siri is supported and enabled";
      }

      else
      {
        v14 = [(SBLocalDefaults *)self->_defaults lockScreenDefaults];
        v15 = [v14 limitFeaturesForRemoteLock];

        if (v15)
        {
          v10 = v7;
          v7 = @"We are disabled for remote lock";
        }

        else if (+[SBVoiceDisabledBundles voiceControlDisabledByCurrentlyRunningApp])
        {
          v10 = v7;
          v7 = @"Disabled by the currently running app";
        }

        else
        {
          v10 = [(SBMainDisplayPolicyAggregator *)self _telephonyManager];
          if (([v10 inCall] & 1) != 0 || objc_msgSend(v10, "incomingCallExists"))
          {
            v16 = MEMORY[0x277CCACA8];
            [v10 inCall];
            v17 = NSStringFromBOOL();
            [v10 incomingCallExists];
            v18 = NSStringFromBOOL();
            v19 = [v16 stringWithFormat:@"We are inCall: %@ incomingCall: %@", v17, v18];

            v7 = v19;
          }

          else
          {

            v20 = [(SBMainDisplayPolicyAggregator *)self _conferenceManager];
            v21 = [v20 inFaceTime];

            if (v21)
            {
              v10 = v7;
              v7 = @"We are in a FaceTime call";
            }

            else
            {
              v22 = [(SBMainDisplayPolicyAggregator *)self _alertItemsController];
              v23 = [v22 hasVisibleSuperModalAlert];

              if (v23)
              {
                v10 = v7;
                v7 = @"Super modal alert visible";
              }

              else if ([v5 isUILocked] && (objc_msgSend(v5, "coverSheetViewController"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "activeBehavior"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "areRestrictedCapabilities:", 2), v25, v24, (v26 & 1) != 0))
              {
                v10 = v7;
                v7 = @"Lock screen has has disabled voice control";
              }

              else
              {
                v27 = [(SBMainDisplayPolicyAggregator *)self _mainWorkspace];
                v28 = [v27 transientOverlayPresentationManager];
                v29 = [v28 shouldDisableSiri];

                if (!v29)
                {
                  v11 = 1;
                  goto LABEL_10;
                }

                v10 = v7;
                v7 = @"Transient overlay has disabled voice control";
              }
            }
          }
        }
      }
    }

    else
    {
      v10 = v7;
      v7 = @"MG says the device doesn't have the VC capability";
    }
  }

  v11 = 0;
  if (a3 && v7)
  {
    v12 = v7;
    v11 = 0;
    *a3 = v7;
  }

LABEL_10:

  return v11;
}

- (BOOL)_allowsCapabilitySpotlightWithExplanation:(id *)a3
{
  v5 = [(SBMainDisplayPolicyAggregator *)self _profileConnection];
  v6 = [v5 isSpotlightAllowed];

  if (v6)
  {
    v10 = 0;
    v7 = [(SBMainDisplayPolicyAggregator *)self _hasFullySetUpUserWithExplanation:&v10];
    v8 = v10;
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    v8 = @"ManagedConfiguration policy states: no spotlight";
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  if (!v7 && v8)
  {
    v8 = v8;
    *a3 = v8;
  }

LABEL_8:

  return v7;
}

- (BOOL)_allowsCapabilityLockScreenCameraSupportedWithExplanation:(id *)a3
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
    if (!a3)
    {
      return v8;
    }

    goto LABEL_13;
  }

  v10 = [(SBMainDisplayPolicyAggregator *)self _applicationController];
  v11 = [v10 cameraApplication];

  v8 = v11 != 0;
  if (v11)
  {
    v9 = 0;
  }

  else
  {
    v9 = @"The device doesn't have Camera.app.";
  }

  if (a3)
  {
LABEL_13:
    if (v9 && !v8)
    {
      *a3 = v9;
    }
  }

  return v8;
}

- (BOOL)_allowsCapabilityLockScreenCameraWithExplanation:(id *)a3
{
  v4 = [SBApp lockOutController];
  v21 = 0;
  v5 = [(SBMainDisplayPolicyAggregator *)self _hasFullySetUpUserWithExplanation:&v21];
  v19 = v21;
  v6 = [SBApp userSessionController];
  v7 = [v6 sessionType];

  v8 = [(SBMainDisplayPolicyAggregator *)self allowsCapability:10];
  v9 = [v4 isBlocked];
  v10 = [(SBMainDisplayPolicyAggregator *)self _applicationController];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 restrictionController];
    v13 = [v12 isApplicationIdentifierRestricted:@"com.apple.camera"];
  }

  else
  {
    v13 = 0;
  }

  v14 = [SBApp authenticationController];
  v15 = [v14 hasAuthenticatedAtLeastOnceSinceBoot];

  v16 = v5 & ~(v13 | ~v8 | v9);
  if (v7 == 2)
  {
    v16 = 0;
  }

  v17 = v16 & v15;
  if (a3 && (v16 & v15 & 1) == 0)
  {
    *a3 = [MEMORY[0x277CCACA8] stringWithFormat:@"lockScreenCameraSupported: %d, cameraRestricted: %d, currently blocked: %d (thermal blocked: %d), isUserFullySetUp: %d, userSetUpExplanation: %@, ephemeral multi-user: %d", -[SBMainDisplayPolicyAggregator allowsCapability:](self, "allowsCapability:", 10), v13, v9, objc_msgSend(v4, "isThermallyBlocked"), v5, v19, v7 == 2];
  }

  return v17;
}

- (BOOL)_allowsCapabilityLockScreenCameraSwipeWithExplanation:(id *)a3
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

  if (a3 && !v6)
  {
    *a3 = [MEMORY[0x277CCACA8] stringWithFormat:@"lockScreenCamera: %d, swipeAllowed: %d", v4, AppBooleanValue != 0];
  }

  return v6;
}

- (BOOL)_allowsNotificationOrControlCenterWithExplanation:(id *)a3
{
  v19 = 0;
  v5 = [(SBMainDisplayPolicyAggregator *)self _hasFullySetUpUserWithExplanation:&v19];
  v6 = v19;
  if (v5)
  {
    v7 = [SBApp lockOutController];
    v8 = [v7 isBlocked];

    if (v8)
    {
      v9 = @"Device is blocked";
    }

    else
    {
      v10 = +[SBAlertItemsController sharedInstance];
      v11 = [v10 hasVisibleModalAlert];

      if (v11)
      {
        v9 = @"A modal alert item is showing";
      }

      else
      {
        v12 = [(SBMainDisplayPolicyAggregator *)self _lockScreenManager];
        v13 = [v12 isInLostMode];

        if (v13)
        {
          v9 = @"Device is in lost mode";
        }

        else
        {
          v14 = [(SBMainDisplayPolicyAggregator *)self _commandTabController];
          v15 = [v14 isVisible];

          if (v15)
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
  if (a3 && v6)
  {
    v17 = v6;
    v16 = 0;
    *a3 = v6;
  }

LABEL_16:

  return v16;
}

- (BOOL)_allowsCapabilityCoverSheetWithExplanation:(id *)a3
{
  v5 = [SBApp windowSceneManager];
  v6 = [v5 windowSceneForDisplayIdentity:self->_displayIdentity];

  v16 = 0;
  LODWORD(v5) = [(SBMainDisplayPolicyAggregator *)self _allowsNotificationOrControlCenterWithExplanation:&v16];
  v7 = v16;
  if (v5)
  {
    v8 = [SBApp bannerManager];
    v9 = [v8 isDisplayingBannerInWindowScene:v6];

    if (v9)
    {
      v10 = @"The banner manager is presenting a banner on the embedded display.";
    }

    else
    {
      v11 = [v6 homeScreenController];
      v12 = [v11 areAnyIconViewContextMenusShowing];

      if (!v12)
      {
        v13 = 1;
        goto LABEL_11;
      }

      v10 = @"Icon force touch is peeking or showing.";
    }

    v7 = v10;
  }

  v13 = 0;
  if (a3 && v7)
  {
    v14 = v7;
    v13 = 0;
    *a3 = v7;
  }

LABEL_11:

  return v13;
}

- (BOOL)_allowsCapabilityDismissCoverSheetWithExplanation:(id *)a3
{
  v5 = [(SBMainDisplayPolicyAggregator *)self _lockScreenManager];
  v6 = [v5 isUILocked];

  if (!v6)
  {
    return 1;
  }

  v7 = [(SBMainDisplayPolicyAggregator *)self _lockScreenManager];
  v8 = [v7 coverSheetViewController];
  v9 = [v8 activeBehavior];

  if ([v9 areRestrictedCapabilities:4096])
  {
    v10 = @"Lock screen prevents cover sheet dismiss";
    goto LABEL_6;
  }

  if (([v9 areRestrictedCapabilities:56] & 1) == 0)
  {

    return 1;
  }

  v10 = @"Lock screen prevents unlock";
LABEL_6:

  result = 0;
  if (a3)
  {
    *a3 = v10;
  }

  return result;
}

- (BOOL)_allowsCapabilityControlCenterWithExplanation:(id *)a3
{
  v5 = [(SBMainDisplayPolicyAggregator *)self _profileConnection];
  v6 = [v5 isControlCenterAllowed];

  if (v6)
  {
    v17 = 0;
    v7 = [(SBMainDisplayPolicyAggregator *)self _allowsNotificationOrControlCenterWithExplanation:&v17];
    v8 = v17;
    if (v7)
    {
      v9 = [SBApp notificationDispatcher];
      v10 = [v9 bannerDestination];
      v11 = [v10 isPresentingBannerInLongLook];

      if (!v11)
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

  v12 = [MEMORY[0x277CFC880] standardDefaults];
  v13 = [v12 shouldAlwaysBeEnabled];

  if (v13)
  {

    v8 = 0;
    goto LABEL_8;
  }

  v14 = 0;
  if (a3 && v8)
  {
    v15 = v8;
    v14 = 0;
    *a3 = v8;
  }

LABEL_12:

  return v14;
}

- (BOOL)_allowsCapabilityLogoutWithExplanation:(id *)a3
{
  v5 = [(SBMainDisplayPolicyAggregator *)self _lockScreenManager];
  v6 = [v5 isInLostMode];

  v7 = [SBApp userSessionController];
  v8 = [v7 isLoginSession];

  if (v8)
  {
    v9 = @"In login session";
  }

  else
  {
    v10 = [SBApp userSessionController];
    v11 = [v10 isMultiUserSupported];

    if (v11)
    {
      v12 = [(SBMainDisplayPolicyAggregator *)self _profileConnection];
      v13 = [v12 isInSingleAppMode];

      if (v6 & 1 | ((v13 & 1) == 0))
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
  if (a3)
  {
    *a3 = v9;
  }

  return result;
}

- (BOOL)_allowsCapabilityLoginWindowWithExplanation:(id *)a3
{
  v4 = [SBApp userSessionController];
  v5 = [v4 isMultiUserSupported];

  if (v5)
  {
    v6 = [SBApp userSessionController];
    v7 = [v6 isLoginSession];

    if (v7)
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
  if (a3)
  {
    *a3 = v9;
  }

  return result;
}

- (BOOL)_allowsCapabilityControlCenterEditingWithExplanation:(id *)a3
{
  v4 = [SBApp authenticationController];
  v5 = [v4 hasAuthenticatedAtLeastOnceSinceBoot];

  if (v5)
  {
    v6 = [SBApp userSessionController];
    v7 = [v6 sessionType];

    if (v7 == 2)
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
      v11 = [v10 demoDefaults];
      v12 = [v11 shouldLockIconsInStoreDemoMode];

      if (!v12)
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
  if (a3)
  {
    *a3 = v8;
  }

  return result;
}

- (BOOL)_allowsCapabilityHomeScreenEditingWithExplanation:(id *)a3
{
  v5 = [SBApp windowSceneManager];
  v6 = [v5 windowSceneForDisplayIdentity:self->_displayIdentity];

  v7 = [v6 switcherController];
  v8 = [v7 unlockedEnvironmentMode];
  v9 = [(SBMainDisplayPolicyAggregator *)self _profileConnection];
  v10 = [v9 isHomeScreenEditingAllowed];

  if (v10)
  {
    v11 = [SBApp userSessionController];
    v12 = [v11 sessionType];

    if (v12 == 2)
    {
      v13 = @"Not available to ephemeral user sessions";
    }

    else
    {
      v14 = [(SBMainDisplayPolicyAggregator *)self _profileConnection];
      v15 = [v14 restrictionEnforcedHomeScreenLayout];

      if (v15)
      {
        v13 = @"Device has enforced home screen layout";
      }

      else if ([MEMORY[0x277D75128] isRunningInStoreDemoMode] && (+[SBDefaults externalDefaults](SBDefaults, "externalDefaults"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "demoDefaults"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "shouldLockIconsInStoreDemoMode"), v19, v18, (v20 & 1) != 0))
      {
        v13 = @"Device is in store demo mode";
      }

      else if (v8 == 3)
      {
        v13 = @"App is open";
      }

      else if (v8 == 2)
      {
        v13 = @"App Switcher is open";
      }

      else
      {
        v21 = [v6 homeScreenController];
        v22 = [v21 iconManager];
        v23 = [v22 isShowingPullDownSearchOrTransitioningToVisible];

        if (!v23)
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
  if (a3)
  {
    *a3 = v13;
  }

LABEL_9:

  return v16;
}

- (BOOL)_allowsCapabilityScreenshotWithExplanation:(id *)a3
{
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__SBMainDisplayPolicyAggregator__allowsCapabilityScreenshotWithExplanation___block_invoke;
  v16[3] = &__block_descriptor_40_e18_v16__0__NSString_8l;
  v16[4] = a3;
  v4 = MEMORY[0x223D6F7F0](v16, a2);
  v5 = [(SBMainDisplayPolicyAggregator *)self _profileConnection];
  v6 = [v5 BOOLRestrictionForFeature:*MEMORY[0x277D26048]];

  if (v6 == 2)
  {
    v7 = @"ManagedConfiguration policy states: no screen shots allowed";
LABEL_10:
    (v4)[2](v4, v7);
    v14 = 0;
    goto LABEL_11;
  }

  v8 = [SBApp userSessionController];
  if ([v8 isLoginSession])
  {
    v9 = +[SBDefaults localDefaults];
    v10 = [v9 applicationDefaults];
    v11 = [v10 shouldAllowScreenshotsInLoginWindow];

    if (!v11)
    {
      v7 = @"Snapshotting unavailable at the login window.";
      goto LABEL_10;
    }
  }

  else
  {
  }

  v12 = [SBApp authenticationController];
  v13 = [v12 hasAuthenticatedAtLeastOnceSinceBoot];

  if ((v13 & 1) == 0)
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

- (BOOL)_allowsCapabilityCommandTabWithExplanation:(id *)a3
{
  v5 = [(SBMainDisplayPolicyAggregator *)self _profileConnection];
  v6 = [v5 isCommandTabAllowed];

  if (v6)
  {
    v7 = [SBApp modalAlertPresentationCoordinator];
    v8 = [v7 isShowingModalAlert];

    if (v8)
    {
      v9 = @"Can't use command-tab while a mini alert is visible.";
    }

    else
    {
      v11 = [(SBMainDisplayPolicyAggregator *)self _lockStateAggregator];
      v12 = [v11 hasAnyLockState];

      if (v12)
      {
        v9 = @"Can't use command-tab while locked.";
      }

      else
      {
        v13 = [(SBMainDisplayPolicyAggregator *)self _setupManager];
        v14 = [v13 isInSetupMode];

        if (!v14)
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
  if (a3)
  {
    *a3 = v9;
  }

  return result;
}

- (BOOL)_allowsCapabilityLockScreenControlCenterWithExplanation:(id *)a3
{
  v5 = [(SBMainDisplayPolicyAggregator *)self _profileConnection];
  v6 = [v5 isControlCenterAllowed];

  if (v6)
  {
    v7 = [SBApp authenticationController];
    v8 = [v7 isAuthenticated];

    if ((v8 & 1) != 0 || (-[SBMainDisplayPolicyAggregator _profileConnection](self, "_profileConnection"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isLockScreenControlCenterAllowed], v9, v10))
    {
      v11 = [SBApp authenticationController];
      v12 = [v11 hasAuthenticatedAtLeastOnceSinceBoot];

      if (v12)
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
  if (a3)
  {
    *a3 = v14;
  }

  return result;
}

- (BOOL)_allowsCapabilityLockScreenNotificationCenterWithExplanation:(id *)a3
{
  v5 = [SBApp authenticationController];
  v6 = [v5 isAuthenticated];

  if ((v6 & 1) != 0 || (-[SBMainDisplayPolicyAggregator _profileConnection](self, "_profileConnection"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 effectiveBoolValueForSetting:*MEMORY[0x277D25F50]], v7, v8 != 2))
  {
    v10 = [SBApp authenticationController];
    v11 = [v10 hasAuthenticatedAtLeastOnceSinceBoot];

    if (v11)
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
  if (a3)
  {
    *a3 = v9;
  }

  return result;
}

- (BOOL)_allowsCapabilityLockScreenTodayViewWithExplanation:(id *)a3
{
  v5 = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityTodayViewWithExplanation:?];
  if (v5)
  {
    v6 = [SBApp authenticationController];
    v7 = [v6 isAuthenticated];

    if ((v7 & 1) != 0 || (-[SBMainDisplayPolicyAggregator _profileConnection](self, "_profileConnection"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 effectiveBoolValueForSetting:*MEMORY[0x277D25F58]], v8, v9 != 2))
    {
      v11 = [SBApp authenticationController];
      v12 = [v11 hasAuthenticatedAtLeastOnceSinceBoot];

      if (v12)
      {
        v13 = [SBApp userSessionController];
        v14 = [v13 sessionType];

        if (v14 != 2)
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
    if (a3)
    {
      *a3 = v10;
    }
  }

  return v5;
}

- (BOOL)_allowsCapabilityTodayViewWithExplanation:(id *)a3
{
  v4 = [(SBMainDisplayPolicyAggregator *)self _profileConnection];
  v5 = [v4 effectiveBoolValueForSetting:*MEMORY[0x277D260A0]];

  if (v5 == 2 && a3 != 0)
  {
    *a3 = @"ManagedConfiguration policy states: no today view.";
  }

  return v5 != 2;
}

- (BOOL)_allowsCapabilityLiftToWakeWithExplanation:(id *)a3
{
  v4 = [(SBMainDisplayPolicyAggregator *)self _lockScreenManager];
  v5 = [v4 isInLostMode];

  if (a3 && v5)
  {
    *a3 = @"Device is in lost mode";
  }

  return v5 ^ 1;
}

- (BOOL)_allowsCapabilityQuickNoteWithExplanation:(id *)a3
{
  v4 = +[SBDefaults externalDefaults];
  v5 = [v4 notesDefaults];
  v6 = [v5 quickNotesDisabled];

  if (v6)
  {
    v7 = 0;
    v8 = @"Disabled by Notes pref.";
    if (!a3)
    {
      return v7;
    }

    goto LABEL_15;
  }

  if (!MGGetBoolAnswer())
  {
    v7 = 0;
    v8 = @"Device does not support pencil.";
    if (!a3)
    {
      return v7;
    }

    goto LABEL_15;
  }

  v9 = [SBApp authenticationController];
  v10 = [v9 hasAuthenticatedAtLeastOnceSinceBoot];

  if (!v10)
  {
    v7 = 0;
    v8 = @"Haven't unlocked the device yet after a reboot.";
    if (!a3)
    {
      return v7;
    }

    goto LABEL_15;
  }

  v11 = +[SBApplicationController sharedInstance];
  v12 = [v11 notesApplication];

  if (v12 && ![v12 isUninstalled])
  {
    v8 = 0;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v8 = @"Notes app is uninstalled.";
  }

  if (a3)
  {
LABEL_15:
    if (v8 && !v7)
    {
      *a3 = v8;
    }
  }

  return v7;
}

- (BOOL)_allowsCapabilityCoverSheetSpotlightWithExplanation:(id *)a3
{
  v5 = _os_feature_enabled_impl();
  v6 = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilitySpotlightWithExplanation:a3];
  v7 = [(SBMainDisplayPolicyAggregator *)self _allowsCapabilityLockScreenTodayViewWithExplanation:a3];
  if (a3 && (v5 & 1) == 0)
  {
    v8 = @"Feature not enabled.";
    if (v5)
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  return v7 & v5 & v6;
}

- (BOOL)_allowsCapabilityPosterSwitcherWithExplanation:(id *)a3
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
  if (a3)
  {
    *a3 = v4;
  }

  return result;
}

@end