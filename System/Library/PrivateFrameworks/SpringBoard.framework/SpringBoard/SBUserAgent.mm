@interface SBUserAgent
- (BOOL)_launchFromSource:(int)source withURL:(id)l bundleID:(id)d allowUnlock:(BOOL)unlock animate:(BOOL)animate;
- (BOOL)_openApplication:(id)application withURL:(id)l fromSource:(int)source animated:(BOOL)animated options:(id)options;
- (BOOL)applicationInstalledForDisplayID:(id)d;
- (BOOL)canLaunchFromSource:(int)source withURL:(id)l bundleID:(id)d;
- (BOOL)deviceIsBlocked;
- (BOOL)deviceIsLocked;
- (BOOL)deviceIsPasscodeLocked;
- (BOOL)deviceIsPasscodeLockedRemotely;
- (BOOL)deviceIsTethered;
- (BOOL)isApplicationForegroundObscured:(id)obscured;
- (BOOL)isApplicationRestrictedOrHidden:(id)hidden;
- (BOOL)isIdleTimerDisabledForReason:(id)reason;
- (BOOL)isInternalInstall;
- (BOOL)isNamedRemoteAlertServiceActive:(id)active controllerClassName:(id)name;
- (BOOL)isScreenOn;
- (BOOL)launchApplicationFromSource:(int)source withDisplayID:(id)d options:(id)options;
- (BOOL)launchApplicationFromSource:(int)source withURL:(id)l options:(id)options;
- (BOOL)launchFromSource:(int)source withURL:(id)l bundleID:(id)d allowUnlock:(BOOL)unlock;
- (BOOL)lockScreenIsShowing;
- (BOOL)openURL:(id)l allowUnlock:(BOOL)unlock animated:(BOOL)animated;
- (BOOL)springBoardIsActive;
- (SBUserAgent)init;
- (__CFRunLoop)wifiRunLoopRef;
- (id)_safeValue:(id)value forKey:(id)key ofType:(Class)type;
- (id)acquireCaptureButtonSuppressionAssertionWithOptions:(unint64_t)options reason:(id)reason;
- (id)folderNameForDisplayID:(id)d;
- (id)foregroundApplicationDisplayID;
- (id)localizedDisplayNameForDisplayID:(id)d;
- (id)topSuspendedEventsOnlyDisplayID;
- (int)networkUsageTypeForAppWithDisplayID:(id)d;
- (int64_t)activeInterfaceOrientation;
- (void)_cleanupFromBannerLaunch;
- (void)activateModalBulletinAlert:(id)alert;
- (void)activateRemoteAlertService:(id)service options:(id)options;
- (void)activeInterfaceOrientation;
- (void)addActiveInterfaceOrientationObserver:(id)observer;
- (void)deviceIsBlocked;
- (void)deviceIsLocked;
- (void)deviceIsPasscodeLocked;
- (void)deviceIsPasscodeLockedRemotely;
- (void)deviceIsTethered;
- (void)disableLockScreenBundleNamed:(id)named deactivationContext:(id)context;
- (void)enableLockScreenBundleNamed:(id)named activationContext:(id)context;
- (void)foregroundApplicationDisplayID;
- (void)init;
- (void)isInternalInstall;
- (void)isScreenOn;
- (void)lockAndDimDevice;
- (void)lockAndDimDeviceDisconnectingCallIfNecessary:(BOOL)necessary;
- (void)lockAndDimDeviceDisconnectingCallIfNecessary:(BOOL)necessary andDimScreen:(BOOL)screen;
- (void)lockScreenIsShowing;
- (void)removeActiveInterfaceOrientationObserver:(id)observer;
- (void)setBadgeNumberOrString:(id)string forApplicationWithID:(id)d;
- (void)setIdleText:(id)text;
- (void)setIdleTimerDisabled:(BOOL)disabled forReason:(id)reason;
- (void)setMinimumBacklightLevel:(float)level animated:(BOOL)animated;
- (void)springBoardIsActive;
- (void)topSuspendedEventsOnlyDisplayID;
- (void)undimScreen;
- (void)updateInterfaceOrientationIfNecessary;
@end

@implementation SBUserAgent

- (BOOL)lockScreenIsShowing
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent lockScreenIsShowing];
  }

  return [(SBUserAgent *)self deviceIsLocked];
}

- (BOOL)deviceIsLocked
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent deviceIsLocked];
  }

  v2 = +[SBLockScreenManager sharedInstance];
  isUILocked = [v2 isUILocked];

  return isUILocked;
}

- (BOOL)deviceIsPasscodeLocked
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent deviceIsPasscodeLocked];
  }

  authenticationController = [SBApp authenticationController];
  isAuthenticatedCached = [authenticationController isAuthenticatedCached];

  return isAuthenticatedCached ^ 1;
}

- (BOOL)deviceIsBlocked
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent deviceIsBlocked];
  }

  lockOutController = [SBApp lockOutController];
  isBlocked = [lockOutController isBlocked];

  return isBlocked;
}

- (BOOL)isScreenOn
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent isScreenOn];
  }

  v2 = +[SBBacklightController sharedInstance];
  if ([v2 screenIsOn])
  {
    v3 = [v2 isPendingScreenUnblankAfterCACommit] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (SBUserAgent)init
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent init];
  }

  v4.receiver = self;
  v4.super_class = SBUserAgent;
  return [(SBUserAgent *)&v4 init];
}

- (void)updateInterfaceOrientationIfNecessary
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent updateInterfaceOrientationIfNecessary]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (int64_t)activeInterfaceOrientation
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent activeInterfaceOrientation];
  }

  v2 = SBApp;

  return [v2 activeInterfaceOrientation];
}

- (id)foregroundApplicationDisplayID
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent foregroundApplicationDisplayID];
  }

  v2 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
  layoutStatePrimaryElement = [v2 layoutStatePrimaryElement];
  workspaceEntity = [layoutStatePrimaryElement workspaceEntity];
  applicationSceneEntity = [workspaceEntity applicationSceneEntity];
  sceneHandle = [applicationSceneEntity sceneHandle];
  application = [sceneHandle application];
  bundleIdentifier = [application bundleIdentifier];

  return bundleIdentifier;
}

- (BOOL)isApplicationForegroundObscured:(id)obscured
{
  v22 = *MEMORY[0x277D85DE8];
  obscuredCopy = obscured;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent isApplicationForegroundObscured:];
  }

  SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        sceneIfExists = [v7 sceneIfExists];
        if (sceneIfExists)
        {
          v9 = sceneIfExists;
          settings = [sceneIfExists settings];
          if (![settings isOccluded])
          {
            goto LABEL_14;
          }

          settings2 = [v9 settings];
          if (([settings2 isForeground] & 1) == 0)
          {

LABEL_14:
            continue;
          }

          application = [v7 application];
          bundleIdentifier = [application bundleIdentifier];
          v14 = [bundleIdentifier isEqualToString:obscuredCopy];

          if (v14)
          {
            LOBYTE(v4) = 1;
            goto LABEL_17;
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

LABEL_17:

  return v4;
}

- (BOOL)applicationInstalledForDisplayID:(id)d
{
  v3 = MEMORY[0x277CCACC8];
  dCopy = d;
  if (([v3 isMainThread] & 1) == 0)
  {
    [SBUserAgent applicationInstalledForDisplayID:];
  }

  v5 = +[SBApplicationController sharedInstanceIfExists];
  v6 = [v5 applicationWithBundleIdentifier:dCopy];

  return v6 != 0;
}

- (BOOL)springBoardIsActive
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent springBoardIsActive];
  }

  v2 = +[SBMainWorkspace sharedInstance];
  isSpringBoardActive = [v2 isSpringBoardActive];

  return isSpringBoardActive;
}

- (BOOL)deviceIsPasscodeLockedRemotely
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent deviceIsPasscodeLockedRemotely];
  }

  deviceIsPasscodeLocked = [(SBUserAgent *)self deviceIsPasscodeLocked];
  if (deviceIsPasscodeLocked)
  {
    v4 = +[SBDefaults localDefaults];
    lockScreenDefaults = [v4 lockScreenDefaults];
    limitFeaturesForRemoteLock = [lockScreenDefaults limitFeaturesForRemoteLock];

    LOBYTE(deviceIsPasscodeLocked) = limitFeaturesForRemoteLock;
  }

  return deviceIsPasscodeLocked;
}

- (BOOL)deviceIsTethered
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent deviceIsTethered];
  }

  return BKSDisplayServicesDisplayIsTethered();
}

- (BOOL)openURL:(id)l allowUnlock:(BOOL)unlock animated:(BOOL)animated
{
  animatedCopy = animated;
  lCopy = l;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent openURL:allowUnlock:animated:];
  }

  v8 = [(SBUserAgent *)self _openApplication:0 withURL:lCopy fromSource:0 animated:animatedCopy options:0];

  return v8;
}

- (id)_safeValue:(id)value forKey:(id)key ofType:(Class)type
{
  if (value)
  {
    v5 = [value objectForKey:key];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_cleanupFromBannerLaunch
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent _cleanupFromBannerLaunch]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (BOOL)_openApplication:(id)application withURL:(id)l fromSource:(int)source animated:(BOOL)animated options:(id)options
{
  v9 = *&source;
  v61 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  lCopy = l;
  optionsCopy = options;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent _openApplication:withURL:fromSource:animated:options:];
  }

  if (v9 == 6)
  {
    v15 = ++_openApplication_withURL_fromSource_animated_options____carBannerOpenRequestCount;
    notificationDispatcher = [SBApp notificationDispatcher];
    carOpenServiceEndpoint = [notificationDispatcher carOpenServiceEndpoint];

    if (carOpenServiceEndpoint)
    {
      v18 = objc_alloc_init(MEMORY[0x277CC1F00]);
      [v18 setTargetConnectionEndpoint:carOpenServiceEndpoint];
      if (lCopy)
      {
        v19 = SBLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          v56 = v15;
          v57 = 2112;
          v58 = carOpenServiceEndpoint;
          v59 = 2112;
          v60 = lCopy;
          _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "sending CarBanner open url request (%u) to %@ : url=%@", buf, 0x1Cu);
        }

        defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke;
        v53[3] = &__block_descriptor_36_e34_v24__0__NSDictionary_8__NSError_16l;
        v54 = v15;
        [defaultWorkspace openURL:lCopy configuration:v18 completionHandler:v53];
LABEL_28:

        v32 = 1;
LABEL_41:

        goto LABEL_42;
      }

      v34 = SBLogCommon();
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
      if (applicationCopy)
      {
        if (v35)
        {
          *buf = 67109634;
          v56 = v15;
          v57 = 2112;
          v58 = carOpenServiceEndpoint;
          v59 = 2112;
          v60 = applicationCopy;
          _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEFAULT, "sending CarBanner open app request (%u) to %@ : app=%@", buf, 0x1Cu);
        }

        defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke_39;
        v51[3] = &__block_descriptor_36_e20_v20__0B8__NSError_12l;
        v52 = v15;
        [defaultWorkspace openApplicationWithBundleIdentifier:applicationCopy configuration:v18 completionHandler:v51];
        goto LABEL_28;
      }

      if (v35)
      {
        *buf = 67109378;
        v56 = v15;
        v57 = 2112;
        v58 = carOpenServiceEndpoint;
        _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEFAULT, "cannot send invalid CarBanner open request (%u) to %@", buf, 0x12u);
      }
    }

    else
    {
      v18 = SBLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v56 = v15;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "cannot send CarBanner open request (%u) to a nil endpoint", buf, 8u);
      }
    }

    v32 = 0;
    goto LABEL_41;
  }

  if (lCopy)
  {
    v21 = SBWorkspaceApplicationForURLWithError(lCopy, 0, 0);
    carOpenServiceEndpoint = v21;
    if (v21)
    {
      bundleIdentifier = [v21 bundleIdentifier];

      applicationCopy = bundleIdentifier;
      goto LABEL_16;
    }

LABEL_32:
    v36 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke_42;
    block[3] = &unk_2783A92D8;
    v49 = lCopy;
    applicationCopy = applicationCopy;
    v50 = applicationCopy;
    dispatch_async(v36, block);

    v32 = 0;
    v18 = v49;
    goto LABEL_41;
  }

  if (!applicationCopy)
  {
    carOpenServiceEndpoint = 0;
    goto LABEL_31;
  }

  v23 = +[SBApplicationController sharedInstance];
  carOpenServiceEndpoint = [v23 applicationWithBundleIdentifier:applicationCopy];

  if (!carOpenServiceEndpoint)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ([(SBUserAgent *)self canLaunchFromSource:v9 withURL:lCopy bundleID:applicationCopy])
  {
    v24 = +[SBLockScreenManager sharedInstance];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke_2;
    v41[3] = &unk_2783B73E0;
    v41[4] = self;
    v42 = optionsCopy;
    v18 = v24;
    v43 = v18;
    v46 = v9;
    v44 = lCopy;
    animatedCopy = animated;
    carOpenServiceEndpoint = carOpenServiceEndpoint;
    v45 = carOpenServiceEndpoint;
    v25 = MEMORY[0x223D6F7F0](v41);
    if (+[SBAssistantController isVisible]&& [(SBUserAgent *)self deviceIsPasscodeLocked])
    {
      v26 = v9 == 3;
      if (v9 == 3)
      {
        bannerManager = [SBApp bannerManager];
        v28 = [bannerManager acquireBannerSuppressionAssertionForReason:@"BannerOpenAppFromUserAgent"];
        bannerSuppressionAssertion = self->_bannerSuppressionAssertion;
        self->_bannerSuppressionAssertion = v28;

        v26 = 1;
      }

      v30 = +[SBAssistantController sharedInstance];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke_59;
      v38[3] = &unk_2783B7408;
      v40 = v26;
      v38[4] = self;
      v39 = v25;
      v31 = [v30 requestPasscodeUnlockWithCompletion:v38];
      v32 = v31;
      if (v9 == 3)
      {
        if (v31)
        {
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter addObserver:self selector:sel__cleanupFromBannerLaunch name:@"SBAssistantVisibilityDidChangeNotification" object:0];
        }

        else
        {
          [(SBUserAgent *)self _cleanupFromBannerLaunch];
        }
      }
    }

    else
    {
      v32 = v25[2](v25, 0);
    }

    goto LABEL_41;
  }

LABEL_31:
  if (lCopy | applicationCopy)
  {
    goto LABEL_32;
  }

  applicationCopy = 0;
  v32 = 0;
LABEL_42:

  return v32;
}

void __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9[0] = 67109890;
    v9[1] = v8;
    v10 = 1024;
    v11 = v5 != 0;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "CarBanner open url request (%u) finished: success=%{BOOL}i error=%@ result=%@", v9, 0x22u);
  }
}

void __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke_39(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8[0] = 67109634;
    v8[1] = v7;
    v9 = 1024;
    v10 = a2;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "CarBanner open app request (%u) finished: success=%{BOOL}i error=%@", v8, 0x18u);
  }
}

void __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke_42(uint64_t a1)
{
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v2 _LSFailedToOpenURL:*(a1 + 32) withBundle:*(a1 + 40)];
}

uint64_t __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke_2(uint64_t a1, void *a2)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _safeValue:*(a1 + 40) forKey:*MEMORY[0x277D67AD0] ofType:objc_opt_class()];
  v5 = [v4 BOOLValue];

  if ([*(a1 + 48) isUILocked])
  {
    v6 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) _safeValue:*(a1 + 40) forKey:*MEMORY[0x277D67AD8] ofType:objc_opt_class()];
    v6 = [v7 BOOLValue];
  }

  v8 = [*(a1 + 32) _safeValue:*(a1 + 40) forKey:@"SBUILaunchOptionKeyActivationSettings" ofType:objc_opt_class()];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(SBActivationSettings);
  }

  v11 = v10;

  v12 = *(a1 + 72);
  switch(v12)
  {
    case 3:
      v13 = 42;
      v14 = 6;
      break;
    case 7:
      v13 = 47;
      v14 = 2;
      break;
    case 5:
      v13 = 45;
      v14 = 5;
      break;
    default:
      v14 = 0;
      goto LABEL_15;
  }

  [(SBActivationSettings *)v11 setFlag:1 forActivationSetting:v13];
LABEL_15:
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke_3;
  v43[3] = &unk_2783B7390;
  v49 = v6;
  v15 = v11;
  v44 = v15;
  v16 = v3;
  v45 = v16;
  v17 = (a1 + 56);
  v18 = *(a1 + 56);
  v50 = *(a1 + 76);
  v46 = v18;
  v48 = v14;
  v47 = *(a1 + 64);
  v19 = MEMORY[0x223D6F7F0](v43);
  v20 = [SBApp lockOutController];
  if (v5 && [*(a1 + 48) isUILocked])
  {
    v30 = [*(a1 + 48) lockScreenEnvironment];
    v21 = [v30 backlightController];
    [v21 setInScreenOffMode:0];

    if (([v20 isBlocked] & 1) == 0)
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 0;
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = 0;
      v29 = [v30 customActionStore];
      v22 = objc_alloc_init(MEMORY[0x277D65EF8]);
      [v22 setIdentifier:@"SBUIUserAgent"];
      [v22 setRequiresUIUnlock:1];
      [v22 setCanBypassPinLock:0];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke_6;
      v31[3] = &unk_2783B73B8;
      v33 = &v39;
      v34 = &v35;
      v32 = v19;
      [v22 setAction:v31];
      [v29 setCustomLockScreenActionContext:v22];
      v23 = +[SBLockScreenManager sharedInstance];
      v51 = @"SBUIUnlockOptionsBypassPasscodeKey";
      v24 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v52[0] = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
      [v23 unlockUIFromSource:8 withOptions:v25];

      [v29 setCustomLockScreenActionContext:0];
      v26 = *(v40 + 24);
      if (v26 == 1)
      {
        LOBYTE(v23) = *(v36 + 24);
      }

      _Block_object_dispose(&v35, 8);
      _Block_object_dispose(&v39, 8);
      if (v26)
      {

        goto LABEL_29;
      }
    }
  }

  if (([v20 isLockedOut] & 1) != 0 || objc_msgSend(*(a1 + 48), "isUILocked"))
  {
    v27 = SBLogCommon();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke_2_cold_1(v17, v27);
    }

    LOBYTE(v23) = 0;
  }

  else
  {
    LOBYTE(v23) = v19[2](v19);
  }

LABEL_29:

  return v23 & 1;
}

uint64_t __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) setFlag:1 forActivationSetting:7];
  }

  if (*(a1 + 40))
  {
    [*(a1 + 32) applyActivationSettings:?];
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = SBApp;
    v4 = *(a1 + 73);
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CF0CD0] processHandle];
    v7 = 1;
    [v3 applicationOpenURL:v2 withApplication:0 animating:v4 activationSettings:v5 origin:v6 notifyLSOnFailure:1 withResult:0];
  }

  else
  {
    v8 = +[SBWorkspace mainWorkspace];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke_4;
    v11[3] = &unk_2783B7368;
    v9 = *(a1 + 56);
    v14 = *(a1 + 64);
    v12 = v9;
    v13 = *(a1 + 32);
    v7 = [v8 requestTransitionWithBuilder:v11];
  }

  return v7;
}

void __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 setSource:v3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke_5;
  v5[3] = &unk_2783A96A0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v4 modifyApplicationContext:v5];
}

void __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:*(a1 + 32)];
  [(SBWorkspaceEntity *)v4 applyActivationSettings:*(a1 + 40)];
  [v3 setEntity:v4 forLayoutRole:1];
}

uint64_t __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke_6(void *a1)
{
  *(*(a1[5] + 8) + 24) = 1;
  result = (*(a1[4] + 16))();
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke_59(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = +[SBAssistantController defaultActivationSettings];
    (*(v3 + 16))(v3, v4);
  }

  if (*(a1 + 48) == 1)
  {
    v5 = *(a1 + 32);

    [v5 _cleanupFromBannerLaunch];
  }
}

- (BOOL)canLaunchFromSource:(int)source withURL:(id)l bundleID:(id)d
{
  dCopy = d;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (l)
    {
LABEL_3:
      v7 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    [SBUserAgent canLaunchFromSource:withURL:bundleID:];
    if (l)
    {
      goto LABEL_3;
    }
  }

  v8 = +[SBApplicationController sharedInstance];
  v9 = +[SBApplicationPlaceholderController sharedInstance];
  if (dCopy)
  {
    v10 = [v8 applicationWithBundleIdentifier:dCopy];
    if (v10)
    {
      v11 = [v9 placeholderForDisplayID:dCopy];
      v7 = v11 == 0;
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

LABEL_12:
  return v7;
}

- (BOOL)launchApplicationFromSource:(int)source withDisplayID:(id)d options:(id)options
{
  v6 = *&source;
  dCopy = d;
  optionsCopy = options;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent launchApplicationFromSource:withDisplayID:options:];
  }

  v10 = [(SBUserAgent *)self _openApplication:dCopy withURL:0 fromSource:v6 animated:1 options:optionsCopy];

  return v10;
}

- (BOOL)launchApplicationFromSource:(int)source withURL:(id)l options:(id)options
{
  v6 = *&source;
  lCopy = l;
  optionsCopy = options;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent launchApplicationFromSource:withURL:options:];
  }

  v10 = [(SBUserAgent *)self _openApplication:0 withURL:lCopy fromSource:v6 animated:1 options:optionsCopy];

  return v10;
}

- (BOOL)launchFromSource:(int)source withURL:(id)l bundleID:(id)d allowUnlock:(BOOL)unlock
{
  unlockCopy = unlock;
  v8 = *&source;
  lCopy = l;
  dCopy = d;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent launchFromSource:withURL:bundleID:allowUnlock:];
  }

  v12 = [(SBUserAgent *)self _launchFromSource:v8 withURL:lCopy bundleID:dCopy allowUnlock:unlockCopy animate:1];

  return v12;
}

- (BOOL)_launchFromSource:(int)source withURL:(id)l bundleID:(id)d allowUnlock:(BOOL)unlock animate:(BOOL)animate
{
  animateCopy = animate;
  unlockCopy = unlock;
  v10 = *&source;
  lCopy = l;
  dCopy = d;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent _launchFromSource:withURL:bundleID:allowUnlock:animate:];
    if (unlockCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    dictionary = 0;
    goto LABEL_6;
  }

  if (!unlockCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [dictionary setObject:v15 forKey:*MEMORY[0x277D67AD0]];

LABEL_6:
  v16 = [(SBUserAgent *)self _openApplication:dCopy withURL:lCopy fromSource:v10 animated:animateCopy options:dictionary];

  return v16;
}

- (BOOL)isApplicationRestrictedOrHidden:(id)hidden
{
  hiddenCopy = hidden;
  if (hiddenCopy)
  {
    v4 = +[SBIconController sharedIconRepository];
    v5 = [v4 applicationIconForBundleIdentifier:hiddenCopy];
    if ([v4 isIconVisible:v5])
    {
      v6 = +[SBApplicationController sharedInstance];
      restrictionController = [v6 restrictionController];
      v8 = [restrictionController isApplicationIdentifierRestricted:hiddenCopy];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)undimScreen
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent undimScreen]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)lockAndDimDevice
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent lockAndDimDevice]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)lockAndDimDeviceDisconnectingCallIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent lockAndDimDeviceDisconnectingCallIfNecessary:];
  }

  [(SBUserAgent *)self lockAndDimDeviceDisconnectingCallIfNecessary:necessaryCopy andDimScreen:1];
}

- (void)lockAndDimDeviceDisconnectingCallIfNecessary:(BOOL)necessary andDimScreen:(BOOL)screen
{
  screenCopy = screen;
  v10[1] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent lockAndDimDeviceDisconnectingCallIfNecessary:andDimScreen:];
    if (screenCopy)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = +[SBLockScreenManager sharedInstance];
    v9 = @"SBUILockOptionsUseScreenOffModeKey";
    v6 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v10[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v5 lockUIFromSource:8 withOptions:v7];

    return;
  }

  if (!screenCopy)
  {
    goto LABEL_7;
  }

LABEL_3:
  screenSleepCoordinator = [SBApp screenSleepCoordinator];
  [screenSleepCoordinator sleepAndLockUIFromSource:8 completion:0];
}

- (void)setIdleTimerDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent setIdleTimerDisabled:forReason:];
  }

  idleTimerDisableAssertions = self->_idleTimerDisableAssertions;
  if (disabledCopy)
  {
    if (!idleTimerDisableAssertions)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8 = self->_idleTimerDisableAssertions;
      self->_idleTimerDisableAssertions = v7;
    }

    v9 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    v10 = [v9 acquireIdleTimerDisableAssertionForReason:reasonCopy];

    [(NSMutableDictionary *)self->_idleTimerDisableAssertions setObject:v10 forKey:reasonCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (idleTimerDisableAssertions)
  {
    v11 = [(NSMutableDictionary *)idleTimerDisableAssertions objectForKey:reasonCopy];
    v10 = v11;
    if (v11)
    {
      [v11 invalidate];
      [(NSMutableDictionary *)self->_idleTimerDisableAssertions removeObjectForKey:reasonCopy];
      if (![(NSMutableDictionary *)self->_idleTimerDisableAssertions count])
      {
        v12 = self->_idleTimerDisableAssertions;
        self->_idleTimerDisableAssertions = 0;
      }
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (BOOL)isIdleTimerDisabledForReason:(id)reason
{
  reasonCopy = reason;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent isIdleTimerDisabledForReason:];
  }

  v5 = [(NSMutableDictionary *)self->_idleTimerDisableAssertions objectForKey:reasonCopy];
  v6 = v5 != 0;

  return v6;
}

- (void)setBadgeNumberOrString:(id)string forApplicationWithID:(id)d
{
  v5 = MEMORY[0x277CCACC8];
  dCopy = d;
  stringCopy = string;
  if (([v5 isMainThread] & 1) == 0)
  {
    [SBUserAgent setBadgeNumberOrString:forApplicationWithID:];
  }

  v8 = +[SBApplicationController sharedInstance];
  v9 = [v8 applicationWithBundleIdentifier:dCopy];

  [v9 setBadgeValue:stringCopy];
}

- (void)setIdleText:(id)text
{
  v17 = *MEMORY[0x277D85DE8];
  textCopy = text;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent setIdleText:];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];

  v6 = [connectedWindowScenes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(connectedWindowScenes);
        }

        iconController = [*(*(&v12 + 1) + 8 * v9) iconController];
        iconManager = [iconController iconManager];
        [iconManager setIdleModeText:textCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [connectedWindowScenes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)folderNameForDisplayID:(id)d
{
  v3 = SBApp;
  dCopy = d;
  windowSceneManager = [v3 windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
  iconController = [embeddedDisplayWindowScene iconController];

  v8 = [iconController folderNameForDisplayID:dCopy];

  return v8;
}

- (int)networkUsageTypeForAppWithDisplayID:(id)d
{
  dCopy = d;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent networkUsageTypeForAppWithDisplayID:];
  }

  v4 = SBWorkspaceApplicationForIdentifier(dCopy);
  dataUsage = [v4 dataUsage];

  return dataUsage;
}

- (void)activateModalBulletinAlert:(id)alert
{
  v3 = MEMORY[0x277CCACC8];
  alertCopy = alert;
  if (([v3 isMainThread] & 1) == 0)
  {
    [SBUserAgent activateModalBulletinAlert:];
  }

  [alertCopy setAllowInCar:0];
  [MEMORY[0x277D67938] activateAlertItem:alertCopy];
}

- (void)addActiveInterfaceOrientationObserver:(id)observer
{
  observerCopy = observer;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent addActiveInterfaceOrientationObserver:];
  }

  [SBApp addActiveOrientationObserver:observerCopy];
}

- (void)removeActiveInterfaceOrientationObserver:(id)observer
{
  observerCopy = observer;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent removeActiveInterfaceOrientationObserver:];
  }

  [SBApp removeActiveOrientationObserver:observerCopy];
}

- (void)setMinimumBacklightLevel:(float)level animated:(BOOL)animated
{
  animatedCopy = animated;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent setMinimumBacklightLevel:animated:];
  }

  v6.n128_f32[0] = level;

  SBSetMinimumBrightnessLevel(animatedCopy, v6, v7);
}

- (void)activateRemoteAlertService:(id)service options:(id)options
{
  serviceCopy = service;
  optionsCopy = options;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent activateRemoteAlertService:options:];
  }

  v6 = [MEMORY[0x277D66BD8] definitionWithServiceName:serviceCopy legacyAlertOptions:optionsCopy];
  if (v6)
  {
    remoteTransientOverlaySessionManager = [SBApp remoteTransientOverlaySessionManager];
    v8 = [remoteTransientOverlaySessionManager sessionWithDefinition:v6 options:0];

    v9 = [MEMORY[0x277D66BD0] configurationContextWithLegacyAlertOptions:optionsCopy];
    [v8 prepareWithConfigurationContext:v9];
    v10 = objc_alloc_init(MEMORY[0x277D66BC0]);
    [v10 setLegacyAlertOptions:optionsCopy];
    reason = [v10 reason];

    if (!reason)
    {
      v12 = [optionsCopy bs_safeStringForKey:*MEMORY[0x277D671B0]];
      [v10 setReason:v12];
    }

    v13 = [optionsCopy bs_safeNumberForKey:*MEMORY[0x277D67198]];
    v14 = v13;
    if (v13)
    {
      [v10 setActivatingForSiri:{objc_msgSend(v13, "BOOLValue")}];
    }

    [v8 activateWithContext:v10];
  }
}

- (BOOL)isNamedRemoteAlertServiceActive:(id)active controllerClassName:(id)name
{
  activeCopy = active;
  nameCopy = name;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent isNamedRemoteAlertServiceActive:controllerClassName:];
  }

  v7 = 0;
  if (activeCopy && nameCopy)
  {
    v8 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:activeCopy viewControllerClassName:nameCopy];
    remoteTransientOverlaySessionManager = [SBApp remoteTransientOverlaySessionManager];
    v10 = [remoteTransientOverlaySessionManager existingSessionsWithDefinition:v8 options:0];
    v7 = [v10 count] != 0;
  }

  return v7;
}

- (id)localizedDisplayNameForDisplayID:(id)d
{
  dCopy = d;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent localizedDisplayNameForDisplayID:];
  }

  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:dCopy];
  displayName = [v5 displayName];

  if (!displayName)
  {
    v7 = +[SBApplicationPlaceholderController sharedInstance];
    v8 = [v7 placeholderForDisplayID:dCopy];
    displayName = [v8 applicationDisplayName];
  }

  return displayName;
}

- (void)enableLockScreenBundleNamed:(id)named activationContext:(id)context
{
  namedCopy = named;
  v5 = MEMORY[0x277CCACC8];
  contextCopy = context;
  if (([v5 isMainThread] & 1) == 0)
  {
    [SBUserAgent enableLockScreenBundleNamed:activationContext:];
  }

  v7 = [MEMORY[0x277D67958] contextWithName:namedCopy];
  [v7 setUserInfo:contextCopy];

  v8 = +[SBLockScreenManager sharedInstance];
  lockScreenEnvironment = [v8 lockScreenEnvironment];
  pluginPresenter = [lockScreenEnvironment pluginPresenter];
  [pluginPresenter enableLockScreenPluginWithContext:v7];
}

- (void)disableLockScreenBundleNamed:(id)named deactivationContext:(id)context
{
  namedCopy = named;
  v5 = MEMORY[0x277CCACC8];
  contextCopy = context;
  if (([v5 isMainThread] & 1) == 0)
  {
    [SBUserAgent disableLockScreenBundleNamed:deactivationContext:];
  }

  v7 = [MEMORY[0x277D67958] contextWithName:namedCopy];
  [v7 setUserInfo:contextCopy];

  v8 = +[SBLockScreenManager sharedInstance];
  lockScreenEnvironment = [v8 lockScreenEnvironment];
  pluginPresenter = [lockScreenEnvironment pluginPresenter];
  [pluginPresenter disableLockScreenPluginWithContext:v7];
}

- (__CFRunLoop)wifiRunLoopRef
{
  v2 = +[SBWiFiManager sharedInstance];
  wifiRunLoopRef = [v2 wifiRunLoopRef];

  return wifiRunLoopRef;
}

- (BOOL)isInternalInstall
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent isInternalInstall];
  }

  v2 = +[SBPlatformController sharedInstance];
  isInternalInstall = [v2 isInternalInstall];

  return isInternalInstall;
}

- (id)topSuspendedEventsOnlyDisplayID
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBUserAgent topSuspendedEventsOnlyDisplayID];
  }

  return 0;
}

- (id)acquireCaptureButtonSuppressionAssertionWithOptions:(unint64_t)options reason:(id)reason
{
  v5 = SBApp;
  reasonCopy = reason;
  captureButtonRestrictionCoordinator = [v5 captureButtonRestrictionCoordinator];
  v8 = [captureButtonRestrictionCoordinator inhibitCaptureButtonActionAssertionWithReason:reasonCopy options:options];

  return v8;
}

- (void)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent init]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)activeInterfaceOrientation
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent activeInterfaceOrientation]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)foregroundApplicationDisplayID
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent foregroundApplicationDisplayID]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)isApplicationForegroundObscured:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent isApplicationForegroundObscured:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)applicationInstalledForDisplayID:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent applicationInstalledForDisplayID:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)springBoardIsActive
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent springBoardIsActive]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)deviceIsLocked
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent deviceIsLocked]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)deviceIsPasscodeLocked
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent deviceIsPasscodeLocked]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)deviceIsPasscodeLockedRemotely
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent deviceIsPasscodeLockedRemotely]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)deviceIsBlocked
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent deviceIsBlocked]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)deviceIsTethered
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent deviceIsTethered]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)lockScreenIsShowing
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent lockScreenIsShowing]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)openURL:allowUnlock:animated:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent openURL:allowUnlock:animated:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_openApplication:withURL:fromSource:animated:options:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent _openApplication:withURL:fromSource:animated:options:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

void __68__SBUserAgent__openApplication_withURL_fromSource_animated_options___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 136315394;
  v4 = "[SBUserAgent _openApplication:withURL:fromSource:animated:options:]_block_invoke_2";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "%s: Can't open %@ when device is locked, passcode locked or blocked.", &v3, 0x16u);
}

- (void)canLaunchFromSource:withURL:bundleID:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent canLaunchFromSource:withURL:bundleID:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)launchApplicationFromSource:withDisplayID:options:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent launchApplicationFromSource:withDisplayID:options:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)launchApplicationFromSource:withURL:options:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent launchApplicationFromSource:withURL:options:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)launchFromSource:withURL:bundleID:allowUnlock:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent launchFromSource:withURL:bundleID:allowUnlock:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_launchFromSource:withURL:bundleID:allowUnlock:animate:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent _launchFromSource:withURL:bundleID:allowUnlock:animate:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)lockAndDimDeviceDisconnectingCallIfNecessary:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent lockAndDimDeviceDisconnectingCallIfNecessary:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)lockAndDimDeviceDisconnectingCallIfNecessary:andDimScreen:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent lockAndDimDeviceDisconnectingCallIfNecessary:andDimScreen:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)isScreenOn
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent isScreenOn]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)setIdleTimerDisabled:forReason:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent setIdleTimerDisabled:forReason:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)isIdleTimerDisabledForReason:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent isIdleTimerDisabledForReason:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)setBadgeNumberOrString:forApplicationWithID:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent setBadgeNumberOrString:forApplicationWithID:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)setIdleText:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent setIdleText:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)networkUsageTypeForAppWithDisplayID:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent networkUsageTypeForAppWithDisplayID:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)activateModalBulletinAlert:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent activateModalBulletinAlert:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)addActiveInterfaceOrientationObserver:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent addActiveInterfaceOrientationObserver:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)removeActiveInterfaceOrientationObserver:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent removeActiveInterfaceOrientationObserver:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)setMinimumBacklightLevel:animated:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent setMinimumBacklightLevel:animated:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)activateRemoteAlertService:options:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent activateRemoteAlertService:options:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)isNamedRemoteAlertServiceActive:controllerClassName:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent isNamedRemoteAlertServiceActive:controllerClassName:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)localizedDisplayNameForDisplayID:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent localizedDisplayNameForDisplayID:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)enableLockScreenBundleNamed:activationContext:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent enableLockScreenBundleNamed:activationContext:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)disableLockScreenBundleNamed:deactivationContext:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent disableLockScreenBundleNamed:deactivationContext:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)isInternalInstall
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent isInternalInstall]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)topSuspendedEventsOnlyDisplayID
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBUserAgent topSuspendedEventsOnlyDisplayID]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

@end