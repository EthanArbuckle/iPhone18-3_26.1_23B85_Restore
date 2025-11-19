@interface SBUIController
+ (CGAffineTransform)_transformAndFrame:(SEL)a3 forLaunchImageHostViewWithOrientation:(CGRect *)a4 statusBarHeight:(int64_t)a5 inJailRect:(double)a6;
+ (CGAffineTransform)_transformForStatusBarWithOrientation:(SEL)a3 scaleFactor:(int64_t)a4;
+ (CGRect)statusBarFrameForDeviceApplicationSceneHandle:(id)a3 displayConfiguration:(id)a4 interfaceOrientation:(int64_t)a5 statusBarStyleRequest:(id)a6 withinBounds:(CGRect)a7 inReferenceSpace:(BOOL)a8;
+ (CGRect)statusBarFrameForSnapshotFrame:(CGRect)a3 orientation:(int64_t)a4 statusBarStyleRequest:(id)a5 hidden:(BOOL)a6;
+ (CGRect)statusBarFrameForSnapshotFrame:(CGRect)a3 remainderFrame:(CGRect *)a4 orientation:(int64_t)a5 statusBarStyleRequest:(id)a6 hidden:(BOOL)a7;
+ (id)_effectiveStatusBarSettingsForSnapshot:(id)a3 sceneHandle:(id)a4;
+ (id)sharedInstance;
+ (id)zoomViewForDeviceApplicationSceneHandle:(id)a3 displayConfiguration:(id)a4 interfaceOrientation:(int64_t)a5 snapshot:(id)a6 snapshotSize:(CGSize)a7 statusBarDescriptor:(id)a8 decodeImage:(BOOL)a9 hasOrientationMismatchForClassicApp:(BOOL)a10 customContainerBounds:(CGRect)a11;
- (BOOL)_isAppropriateToReactToAccessoryEvent;
- (BOOL)_isConnectedToWirelessCharging;
- (BOOL)_powerSourceWantsToPlayChime;
- (BOOL)_shouldInitiateAnimationForAccessory:(id)a3;
- (BOOL)_shouldShowAnimationForAccessory:(id)a3;
- (BOOL)_treatsAccessoryAsSupported:(id)a3;
- (BOOL)dissmissAlertItemsAndSheetsIfPossible;
- (BOOL)handleHomeButtonDoublePressDown;
- (BOOL)handleHomeButtonSinglePressUpForWindowScene:(id)a3 withSourceType:(unint64_t)a4;
- (BOOL)hasVisibleAlertItemOrSheet:(BOOL *)a3;
- (BOOL)homeScreenAutorotatesEvenWhenIconIsDragging;
- (CGRect)visibleScreenCoordinatesForWindowedAccessory;
- (SBUIController)init;
- (SBWindowScene)windowScene;
- (id)_homeScreenViewController;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)workflowClientFromWebClip:(id)a3 appToLaunch:(id)a4;
- (int64_t)interfaceOrientationForWallpaperController:(id)a3;
- (int64_t)transitionSourceForIcon:(id)a3 iconLocation:(id)a4;
- (void)ACPowerChanged;
- (void)_accessoryEndpointAttached:(id)a3;
- (void)_accessoryEndpointDetached:(id)a3;
- (void)_activateApplicationFromAccessibility:(id)a3;
- (void)_activateWorkspaceEntity:(id)a3 fromIcon:(id)a4 location:(id)a5 validator:(id)a6;
- (void)_animationBlockingTimerFired;
- (void)_cancelDebounceWirelessChargingTimer;
- (void)_debounceWirelessChargingTimerFired;
- (void)_disableWirelessChargingChimeAndScreenWakeForDuration:(double)a3 withMotionAlarm:(BOOL)a4;
- (void)_dismissAccessory:(id)a3 playChime:(BOOL)a4;
- (void)_enumeratePowerSourcesWithBlock:(id)a3;
- (void)_playAccessoryChimeIfAppropriateForAccessory:(id)a3 attaching:(BOOL)a4 withDelay:(double)a5;
- (void)_removeSuppressedAccessory:(id)a3;
- (void)_resetWirelessChargingState;
- (void)_setAccessoryAttachmentAnimationBlockingTimerWithDuration:(double)a3;
- (void)_setConnectedToWindowedAccessory:(BOOL)a3;
- (void)_setDebounceWirelessChargingTimerWithDuration:(double)a3;
- (void)_storeSuppressedAccessory:(id)a3;
- (void)accessoryConnectionInfoProvider:(id)a3 accessoryEndpointAttached:(id)a4 transportType:(int)a5 protocol:(int)a6 properties:(id)a7 forConnection:(id)a8;
- (void)accessoryConnectionInfoProvider:(id)a3 accessoryEndpointDetached:(id)a4 forConnection:(id)a5;
- (void)accessoryConnectionInfoProvider:(id)a3 accessoryEndpointInfoPropertyChanged:(id)a4 properties:(id)a5 forConnection:(id)a6;
- (void)activateApplication:(id)a3 fromIcon:(id)a4 location:(id)a5 activationSettings:(id)a6 actions:(id)a7;
- (void)cancelVolumeEvent;
- (void)connectedDevicesDidChange:(id)a3;
- (void)dealloc;
- (void)didDetectDeviceMotion;
- (void)disableAnimationForNextIconRotation;
- (void)fetchFormattedChargeTimeEstimateWithCompletion:(id)a3;
- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4;
- (void)interactionProgress:(id)a3 didEnd:(BOOL)a4;
- (void)interactionProgressDidUpdate:(id)a3;
- (void)nudgeIconInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)playChargingChimeIfAppropriate;
- (void)possiblyWakeForPowerStatusChangeWithUnlockSource:(int)a3;
- (void)removeDetachedAccessory:(id)a3;
- (void)setAllowIconRotation:(BOOL)a3 forReason:(id)a4;
- (void)setChargingChimeEnabled:(BOOL)a3;
- (void)setHomeScreenAutorotatesEvenWhenIconIsDragging:(BOOL)a3;
- (void)setIsAccessoryAnimationAllowed:(BOOL)a3;
- (void)setIsConnectedToUnsupportedChargingAccessory:(BOOL)a3;
- (void)setLastAttachedAccessory:(id)a3;
- (void)setLastDetachedAccessory:(id)a3;
- (void)setLockScreenScale:(double)a3 withDuration:(double)a4 behaviorMode:(int64_t)a5 completion:(id)a6;
- (void)setPointerInteractionsEnabled:(BOOL)a3;
- (void)setWindowScene:(id)a3;
- (void)storeAttachedAccessory:(id)a3;
- (void)suppressChimeForConnectedPowerSources;
- (void)updateBatteryState:(id)a3;
- (void)windowedAccessoryDismissed;
- (void)windowedAccessoryPresented;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
@end

@implementation SBUIController

+ (id)sharedInstance
{
  if ([MEMORY[0x277D244C8] inUserSessionLoginUI])
  {
    v2 = 0;
  }

  else
  {
    v3 = __controllerInstance;
    if (!__controllerInstance)
    {
      kdebug_trace();
      v4 = [SBUIController alloc];
      v5 = __controllerInstance;
      __controllerInstance = v4;

      kdebug_trace();
      v3 = __controllerInstance;
    }

    v2 = v3;
  }

  return v2;
}

- (BOOL)handleHomeButtonDoublePressDown
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = SBLogButtonsHome();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(a2);
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "%{public}@ result: activating app switcher", &v9, 0xCu);
  }

  v6 = [(SBUIController *)self windowScene];
  v7 = [v6 switcherController];
  [v7 toggleMainSwitcherWithSource:20 animated:1];

  return 1;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (void)dealloc
{
  notify_cancel(self->_powerStateUpdateToken);
  notify_cancel(self->_firmwareUpdateStateToken);
  [(BSAbsoluteMachTimer *)self->_accessoryAttachmentAnimationBlockingTimer invalidate];
  v3.receiver = self;
  v3.super_class = SBUIController;
  [(SBUIController *)&v3 dealloc];
}

- (SBUIController)init
{
  v46.receiver = self;
  v46.super_class = SBUIController;
  v2 = [(SBUIController *)&v46 init];
  if (!v2)
  {
    return v2;
  }

  v2->_supportsDetailedBatteryCapacity = MGGetBoolAnswer();
  v3 = [SBApp windowSceneManager];
  v4 = [v3 connectedWindowScenes];
  v5 = [v4 bs_firstObjectPassingTest:&__block_literal_global_7];
  v6 = [MEMORY[0x277D75418] currentDevice];
  [v6 setBatteryMonitoringEnabled:1];

  v7 = objc_alloc_init(MEMORY[0x277CF0DB0]);
  batteryDeviceController = v2->_batteryDeviceController;
  v2->_batteryDeviceController = v7;

  [(BCBatteryDeviceController *)v2->_batteryDeviceController addBatteryDeviceObserver:v2 queue:MEMORY[0x277D85CD0]];
  if (CSFeatureEnabled())
  {
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v9 = [MEMORY[0x277D75418] currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 != 1)
    {
LABEL_7:
      v11 = objc_alloc(MEMORY[0x277CF0DD0]);
      v12 = [MEMORY[0x277CBEB98] setWithArray:&unk_28336DB30];
      v13 = [v11 initWithTargets:v12];
      batteryAnalysisClient = v2->_batteryAnalysisClient;
      v2->_batteryAnalysisClient = v13;

      SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
      batteryEstimateFetchQueue = v2->_batteryEstimateFetchQueue;
      v2->_batteryEstimateFetchQueue = SerialWithQoS;
    }
  }

LABEL_8:
  v2->_chargingChimeEnabled = 1;
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  powerSourceHasChimed = v2->_powerSourceHasChimed;
  v2->_powerSourceHasChimed = v17;

  v2->_powerStateUpdateToken = -1;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __22__SBUIController_init__block_invoke_147;
  handler[3] = &unk_2783A95E8;
  v19 = v2;
  v45 = v19;
  v20 = MEMORY[0x277D85CD0];
  notify_register_dispatch("com.apple.system.powersources.timeremaining", &v2->_powerStateUpdateToken, MEMORY[0x277D85CD0], handler);

  v19[65] = -1;
  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = __22__SBUIController_init__block_invoke_150;
  v42 = &unk_2783A95E8;
  v21 = v19;
  v43 = v21;
  notify_register_dispatch("com.apple.accessoryUpdater.uarp.firmareUpdateApplied", v19 + 65, v20, &v39);

  v22 = [SBModelessSyncController sharedInstance:v39];
  [v22 beginMonitoring];

  v23 = +[SBWallpaperController sharedInstance];
  [v23 setWindowScene:v5];
  [MEMORY[0x277D660F8] warmupIfNecessary];
  [MEMORY[0x277D660C8] warmupIfNecessary];
  v24 = [SBApp volumeControl];
  v25 = *(v21 + 21);
  *(v21 + 21) = v24;

  v26 = [SBApp HUDController];
  v27 = *(v21 + 20);
  *(v21 + 20) = v26;

  if (SBFEffectiveHomeButtonType() == 1)
  {
    v28 = objc_alloc_init(MEMORY[0x277D75540]);
    v29 = *(v21 + 8);
    *(v21 + 8) = v28;

    [*(v21 + 8) addProgressObserver:v21];
  }

  v30 = *(v21 + 39);
  *(v21 + 39) = 0;

  v31 = *(v21 + 40);
  *(v21 + 40) = 0;

  v32 = objc_opt_new();
  v33 = *(v21 + 35);
  *(v21 + 35) = v32;

  [*(v21 + 35) setDelegate:v21];
  v34 = [MEMORY[0x277D02C20] rootSettings];
  v35 = [v34 chargingSettings];

  [v35 accessoryAnimationBlockingDurationAfterBootInSeconds];
  [v21 _setAccessoryAttachmentAnimationBlockingTimerWithDuration:?];
  v36 = +[SBAccessoryConnectionInfoProvider sharedInstance];
  v37 = *(v21 + 33);
  *(v21 + 33) = v36;

  [*(v21 + 33) addObserver:v21];
  return v2;
}

_BYTE *__22__SBUIController_init__block_invoke_147(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _isConnectedToWirelessCharging];
  v3 = SBLogCharging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 288);
    LODWORD(v4) = (*(v4 + 96) >> 4) & 1;
    v7[0] = 67109632;
    v7[1] = v5;
    v8 = 1024;
    v9 = v4;
    v10 = 1024;
    v11 = v2;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "isChimeDisabled: %{BOOL}u, isOnAC: %{BOOL}u, isConnectedToWirelessCharging: %{BOOL}u", v7, 0x14u);
  }

  result = *(a1 + 32);
  if ((result[288] & 1) == 0)
  {
    return [result playChargingChimeIfAppropriate];
  }

  if (v2)
  {
    return [result _resetWirelessChargingState];
  }

  return result;
}

void __22__SBUIController_init__block_invoke_150(uint64_t a1)
{
  *&v10[5] = *MEMORY[0x277D85DE8];
  v2 = SBLogCharging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 97);
    v9 = 67109376;
    v10[0] = (v3 >> 3) & 1;
    LOWORD(v10[1]) = 1024;
    *(&v10[1] + 2) = (v3 >> 2) & 1;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "kUarpFirmwareUpdateAppliedNotification is received when _isConnectedToWirelessInternalChargingAccessory: %{BOOL}u, _isConnectedToWirelessInternalCharger: %{BOOL}u", &v9, 0xEu);
  }

  if ((*(*(a1 + 32) + 97) & 0xC) != 0)
  {
    v4 = [MEMORY[0x277D02C20] rootSettings];
    v5 = [v4 chargingSettings];

    [v5 wirelessChargingFirmwareUpdateDebounceDurationInSeconds];
    v7 = v6;
    v8 = SBLogCharging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      *v10 = v7;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Disabling chime and screen wake for %f seconds", &v9, 0xCu);
    }

    [*(a1 + 32) _disableWirelessChargingChimeAndScreenWakeForDuration:v7];
  }
}

- (void)setWindowScene:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_windowScene, obj);
    [(SBHomeScreenWindow *)self->_window setWindowScene:obj];
    [(SBWindow *)self->_homeScreenDimmingWindow setWindowScene:obj];
    v5 = +[SBWallpaperController sharedInstance];
    v6 = [(SBUIController *)self windowScene];
    [v5 setWindowScene:v6];

    v7 = [obj statusBarManager];
    v8 = [v7 layoutManager];

    [v8 setOrientationWindow:self->_window forStatusBarLayoutLayer:0];
  }
}

- (void)setLockScreenScale:(double)a3 withDuration:(double)a4 behaviorMode:(int64_t)a5 completion:(id)a6
{
  v9 = MEMORY[0x277D75D18];
  switcherSettings = self->_switcherSettings;
  v11 = a6;
  v12 = [(SBAppSwitcherSettings *)switcherSettings animationSettings];
  v13 = [v12 homeScreenScaleSettings];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__SBUIController_setLockScreenScale_withDuration_behaviorMode_completion___block_invoke;
  v14[3] = &__block_descriptor_48_e5_v8__0l;
  *&v14[4] = a3;
  *&v14[5] = a4;
  [v9 sb_animateWithSettings:v13 mode:a5 animations:v14 completion:v11];
}

void __74__SBUIController_setLockScreenScale_withDuration_behaviorMode_completion___block_invoke(uint64_t a1)
{
  v4 = +[SBLockScreenManager sharedInstance];
  v2 = [v4 lockScreenEnvironment];
  v3 = [v2 spotlightPresenter];
  [v3 updateScaleViewWithScale:*(a1 + 32) withDuration:*(a1 + 40)];
}

- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4
{
  if (a3)
  {
    a3->var6 = 0;
  }
}

- (int64_t)transitionSourceForIcon:(id)a3 iconLocation:(id)a4
{
  v5 = a4;
  if ([a3 isWidgetIcon])
  {
    v6 = 19;
  }

  else if (SBIconLocationGroupContainsLocation() & 1) != 0 || ([v5 isEqualToString:*MEMORY[0x277D66688]] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277D66698]))
  {
    v6 = 1;
  }

  else
  {
    v8 = *MEMORY[0x277D66680];
    if ([v5 isEqualToString:*MEMORY[0x277D66680]])
    {
      goto LABEL_9;
    }

    if ([v5 isEqualToString:*MEMORY[0x277D66670]])
    {
      v6 = 42;
      goto LABEL_7;
    }

    if ([v5 isEqualToString:*MEMORY[0x277D66668]])
    {
      v6 = 41;
      goto LABEL_7;
    }

    if ([v5 isEqualToString:*MEMORY[0x277D66650]])
    {
      v6 = 38;
      goto LABEL_7;
    }

    if ([v5 isEqualToString:*MEMORY[0x277D66660]])
    {
      v6 = 40;
      goto LABEL_7;
    }

    if ([v5 isEqualToString:v8])
    {
LABEL_9:
      v6 = 39;
    }

    else if ([v5 isEqualToString:*MEMORY[0x277D66690]])
    {
      v6 = 24;
    }

    else if ([v5 isEqualToString:@"SBIconLocationFloatingDockSuggestions"])
    {
      v6 = 25;
    }

    else if (SBIconLocationGroupContainsLocation())
    {
      v6 = 46;
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_7:

  return v6;
}

- (id)workflowClientFromWebClip:(id)a3 appToLaunch:(id)a4
{
  v5 = a3;
  v6 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v7 = getWFSpringBoardWebClipMetadataClass_softClass;
  v25 = getWFSpringBoardWebClipMetadataClass_softClass;
  if (!getWFSpringBoardWebClipMetadataClass_softClass)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __getWFSpringBoardWebClipMetadataClass_block_invoke;
    v20 = &unk_2783A9718;
    v21 = &v22;
    __getWFSpringBoardWebClipMetadataClass_block_invoke(&v17);
    v7 = v23[3];
  }

  v8 = v7;
  _Block_object_dispose(&v22, 8);
  v9 = [v7 alloc];
  v10 = [v5 shortcutIdentifier];
  v11 = [v5 applicationBundleIdentifier];
  v12 = [v9 initWithShortcutIdentifier:v10 applicationIdentifier:v11 appIsInstalled:v6 != 0];

  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v13 = getWFSpringBoardWorkflowRunnerClientClass_softClass;
  v25 = getWFSpringBoardWorkflowRunnerClientClass_softClass;
  if (!getWFSpringBoardWorkflowRunnerClientClass_softClass)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __getWFSpringBoardWorkflowRunnerClientClass_block_invoke;
    v20 = &unk_2783A9718;
    v21 = &v22;
    __getWFSpringBoardWorkflowRunnerClientClass_block_invoke(&v17);
    v13 = v23[3];
  }

  v14 = v13;
  _Block_object_dispose(&v22, 8);
  v15 = [[v13 alloc] initWithWebClipMetadata:v12];

  return v15;
}

- (void)activateApplication:(id)a3 fromIcon:(id)a4 location:(id)a5 activationSettings:(id)a6 actions:(id)a7
{
  v68 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = SBLogUIController();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v63 = v12;
    v64 = 2112;
    v65 = v13;
    v66 = 2114;
    v67 = v14;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Activate application %@ from icon %@ location %{public}@", buf, 0x20u);
  }

  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __83__SBUIController_activateApplication_fromIcon_location_activationSettings_actions___block_invoke;
  v59[3] = &unk_2783A9630;
  v18 = v16;
  v60 = v18;
  v19 = v15;
  v61 = v19;
  v20 = MEMORY[0x223D6F7F0](v59);
  if ([v13 isBookmarkIcon])
  {
    v21 = v13;
    v22 = [(SBRegionallyRestrictedAlertItem *)v21 webClip];
    if ([v22 eligibilityStatus] == 1)
    {
      v23 = [[SBWebClipEligibilityAlertItem alloc] initWithWebClip:v22];
      v24 = +[SBAlertItemsController sharedInstance];
      [v24 activateAlertItem:v23];

LABEL_6:
      goto LABEL_26;
    }

    v46 = v14;
    v48 = self;
    v26 = [(SBRegionallyRestrictedAlertItem *)v21 bookmark];
    if ([v26 isShortcutsWebClip])
    {
      v27 = [(SBRegionallyRestrictedAlertItem *)v21 bookmark];
      v28 = [v27 isSingleStepShortcutWebClip];

      if ((v28 & 1) == 0)
      {
        v23 = [(SBUIController *)v48 workflowClientFromWebClip:v22 appToLaunch:v12];
        [(SBWebClipEligibilityAlertItem *)v23 start];
        v14 = v46;
        goto LABEL_6;
      }
    }

    else
    {
    }

    v31 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
    v32 = [v31 layoutStateApplicationSceneHandles];
    v44 = [v22 identifier];
    v33 = [SBApp webClipService];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __83__SBUIController_activateApplication_fromIcon_location_activationSettings_actions___block_invoke_2;
    v50[3] = &unk_2783A9678;
    v58 = v20;
    v50[4] = v48;
    v51 = v21;
    v52 = v46;
    v53 = v32;
    v54 = v31;
    v55 = v51;
    v56 = v22;
    v57 = v12;
    v34 = v22;
    v35 = v31;
    v22 = v32;
    [v33 prepareToLaunchWebClipWithIdentifier:v44 handler:v50];

    v14 = v46;
    v21 = v44;
    goto LABEL_26;
  }

  v25 = [v12 info];
  if ([v25 browserEngineIsRegionallyRestricted])
  {

LABEL_13:
    v21 = [[SBRegionallyRestrictedAlertItem alloc] initWithApplication:v12];
    v22 = +[SBAlertItemsController sharedInstance];
    [v22 activateAlertItem:v21];
    goto LABEL_26;
  }

  v49 = self;
  v29 = [v12 info];
  v30 = [v29 embeddedBrowserEngineIsRegionallyRestricted];

  if (v30)
  {
    goto LABEL_13;
  }

  v36 = +[SBWorkspace mainWorkspace];
  v22 = [v36 inCallPresentationManager];

  if ([v18 count] || !objc_msgSend(v22, "hasOverrideAppSceneEntityForLaunchingApplication:", v12))
  {
    v47 = v14;
    v37 = [v19 objectForActivationSetting:69];
    v45 = [v37 sceneManager];
    v43 = [SBDeviceApplicationSceneEntity alloc];
    v38 = __sb__runningInSpringBoard();
    v39 = v38;
    if (v38)
    {
      v40 = SBFEffectiveDeviceClass() == 2;
    }

    else
    {
      v42 = [MEMORY[0x277D75418] currentDevice];
      v40 = [v42 userInterfaceIdiom] == 1;
    }

    v41 = [v37 _fbsDisplayIdentity];
    v21 = [(SBDeviceApplicationSceneEntity *)v43 initWithApplication:v12 generatingNewPrimarySceneIfRequired:v40 sceneHandleProvider:v45 displayIdentity:v41];

    if ((v39 & 1) == 0)
    {
    }

    v14 = v47;
  }

  else
  {
    v21 = [v22 overrideAppSceneEntityForLaunchingApplication:v12];
  }

  (v20)[2](v20, v21);
  [(SBUIController *)v49 _activateWorkspaceEntity:v21 fromIcon:v13 location:v14 validator:0];
LABEL_26:
}

void __83__SBUIController_activateApplication_fromIcon_location_activationSettings_actions___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 addActions:v3];
  [v4 applyActivationSettings:*(a1 + 40)];
}

void __83__SBUIController_activateApplication_fromIcon_location_activationSettings_actions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isApplicationSceneEntity] & 1) != 0 || objc_msgSend(v3, "isAppClipPlaceholderEntity"))
  {
    if ([v3 isApplicationSceneEntity])
    {
      (*(*(a1 + 96) + 16))();
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __83__SBUIController_activateApplication_fromIcon_location_activationSettings_actions___block_invoke_3;
    v13 = &unk_2783A94B0;
    v6 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    [v4 _activateWorkspaceEntity:v3 fromIcon:v5 location:v6 validator:&v10];
    v7 = [*(a1 + 72) bookmark];
    if ([v7 isShortcutsWebClip])
    {
      v8 = [*(a1 + 72) bookmark];
      v9 = [v8 isSingleStepShortcutWebClip];

      if (!v9)
      {
LABEL_9:

        goto LABEL_10;
      }

      v7 = [*(a1 + 32) workflowClientFromWebClip:*(a1 + 80) appToLaunch:*(a1 + 88)];
      [v7 showSingleStepCompletionWithCompletion:&__block_literal_global_169];
    }

    goto LABEL_9;
  }

LABEL_10:
}

uint64_t __83__SBUIController_activateApplication_fromIcon_location_activationSettings_actions___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 40) layoutStateApplicationSceneHandles];
  v2 = BSEqualSets();

  return v2;
}

- (void)_activateWorkspaceEntity:(id)a3 fromIcon:(id)a4 location:(id)a5 validator:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 deviceApplicationSceneEntity];
  v15 = [v14 activationSettings];

  v16 = [v15 objectForActivationSetting:69];
  v17 = [v16 _fbsDisplayConfiguration];
  v18 = [v15 BOOLForActivationSetting:73];
  v19 = +[SBWorkspace mainWorkspace];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __71__SBUIController__activateWorkspaceEntity_fromIcon_location_validator___block_invoke;
  v27[3] = &unk_2783A96C8;
  v27[4] = self;
  v28 = v11;
  v29 = v12;
  v30 = v10;
  v31 = v18;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __71__SBUIController__activateWorkspaceEntity_fromIcon_location_validator___block_invoke_3;
  v24[3] = &unk_2783A96F0;
  v25 = v30;
  v26 = v13;
  v20 = v30;
  v21 = v13;
  v22 = v12;
  v23 = v11;
  [v19 requestTransitionWithOptions:0 displayConfiguration:v17 builder:v27 validator:v24];
}

void __71__SBUIController__activateWorkspaceEntity_fromIcon_location_validator___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) transitionSourceForIcon:*(a1 + 40) iconLocation:*(a1 + 48)];
  if (v4 == 1)
  {
    [*(a1 + 56) setFlag:1 forActivationSetting:39];
  }

  [v3 setSource:v4];
  [v3 setEventLabel:@"SBUIApplicationIconLaunchEventLabel"];
  if (*(a1 + 64) == 1)
  {
    if ([*(a1 + 40) isLeafIcon])
    {
      v5 = *(a1 + 56);
      v6 = [*(a1 + 40) leafIdentifier];
      [v5 setObject:v6 forActivationSetting:46];
    }

    v7 = objc_alloc_init(SBWorkspaceApplicationSceneTransitionContext);
    v14[0] = *(a1 + 56);
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v9 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v10 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    [(SBWorkspaceApplicationSceneTransitionContext *)v7 setEntities:v8 startingAtLayoutRole:1 withPolicy:1 centerEntity:v9 floatingEntity:v10];

    [v3 setApplicationContext:v7];
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__SBUIController__activateWorkspaceEntity_fromIcon_location_validator___block_invoke_2;
    v11[3] = &unk_2783A96A0;
    v12 = *(a1 + 40);
    v13 = *(a1 + 56);
    [v3 modifyApplicationContext:v11];

    v7 = v12;
  }
}

void __71__SBUIController__activateWorkspaceEntity_fromIcon_location_validator___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) isLeafIcon])
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) leafIdentifier];
    [v3 setObject:v4 forActivationSetting:46];
  }

  [v5 setActivatingEntity:*(a1 + 40)];
}

uint64_t __71__SBUIController__activateWorkspaceEntity_fromIcon_location_validator___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4 && !(*(v4 + 16))())
  {
    v6 = 0;
  }

  else
  {
    v5 = [v3 applicationContext];
    [v5 _setRequestedFrontmostEntity:*(a1 + 32)];

    v6 = 1;
  }

  return v6;
}

- (BOOL)hasVisibleAlertItemOrSheet:(BOOL *)a3
{
  v4 = +[SBAlertItemsController sharedInstance];
  if ([v4 hasVisibleAlert])
  {
    v5 = 1;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = [SBApp modalAlertPresentationCoordinator];
  v5 = [v6 isShowingModalAlert];

  if (a3)
  {
LABEL_5:
    *a3 = [v4 canDeactivateAlertForMenuClickOrSystemGesture];
  }

LABEL_6:

  return v5;
}

- (BOOL)dissmissAlertItemsAndSheetsIfPossible
{
  v2 = +[SBAlertItemsController sharedInstance];
  v3 = [v2 deactivateAlertForMenuClickOrSystemGestureWithAnimation:1];

  return v3;
}

- (BOOL)handleHomeButtonSinglePressUpForWindowScene:(id)a3 withSourceType:(unint64_t)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (![v7 isExternalDisplayWindowScene])
  {
    v9 = [v7 homeScreenController];
    v10 = [v9 iconManager];
    v11 = [v7 switcherController];
    if ([v11 unlockedEnvironmentMode] == 3)
    {
      v12 = *MEMORY[0x277D66690];
      v13 = [v10 hasOpenFolderInLocation:*MEMORY[0x277D66690]];

      if (v13)
      {
        v14 = 1;
        [v10 popExpandedIconFromLocation:v12 interactionContext:0 animated:1 completionHandler:0];

        goto LABEL_59;
      }
    }

    else
    {
    }

    v8 = [SBApp menuButtonInterceptApp];
    v18 = [v8 processState];
    v19 = v18;
    if (v8 && [v18 isRunning] && (!objc_msgSend(SBApp, "menuButtonInterceptAppEnabledForever") || SBWorkspaceHasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication(v8)))
    {
      v20 = SBLogButtonsHome();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = NSStringFromSelector(a2);
        v22 = [v8 bundleIdentifier];
        *buf = 138543618;
        v56 = v21;
        v57 = 2114;
        v58 = v22;
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_INFO, "%{public}@ result: intercepting menu button event and forwarding to %{public}@", buf, 0x16u);
      }

      v23 = [v8 bundleIdentifier];
      SBSendFakeHomeButtonTapEventToApplication(v23, [v19 pid]);

      if (([SBApp menuButtonInterceptAppEnabledForever] & 1) == 0)
      {
        [SBApp setMenuButtonInterceptApp:0 forever:0];
      }

LABEL_26:

      goto LABEL_27;
    }

    v8 = +[SBSetupManager sharedInstance];
    v24 = +[SBApplicationController sharedInstance];
    v19 = [v24 setupApplication];

    v25 = [v8 isInSetupModeReadyToExit];
    if (a4 != 1 || (v25 & 1) == 0)
    {
      if (v19 && SBWorkspaceUnlockedEnvironmentLayoutStateHasMatchingApplication(v19))
      {
        v26 = SBLogButtonsHome();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = NSStringFromSelector(a2);
          *buf = 138543362;
          v56 = v27;
          _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_INFO, "%{public}@ result: ignoring because setup is active", buf, 0xCu);
        }

        goto LABEL_26;
      }

      if ([v8 isInSetupMode]&& [v8 updateInSetupMode])
      {
        v28 = [SBApp authenticationController];
        if ([v28 isAuthenticated])
        {
          v29 = +[SBWorkspace mainWorkspace];
          v30 = [v29 transientOverlayPresentationManager];
          v31 = [v30 hasActivePresentation];

          if ((v31 & 1) == 0)
          {
            v32 = SBLogButtonsHome();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = NSStringFromSelector(a2);
              *buf = 138543362;
              v56 = v33;
              _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_INFO, "%{public}@ result: activating setup", buf, 0xCu);
            }

            SBWorkspaceActivateApplication(v19);
            goto LABEL_26;
          }
        }

        else
        {
        }
      }
    }

    v34 = [SBApp remoteTransientOverlaySessionManager];
    v35 = [v34 hasSessionWithPendingButtonEvents:1 options:0];

    if (v35)
    {
      v36 = SBLogButtonsHome();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = NSStringFromSelector(a2);
        *buf = 138543362;
        v56 = v37;
        v38 = "%{public}@ result: ignoring because a session with a pending lock event exists";
LABEL_56:
        _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_INFO, v38, buf, 0xCu);
      }

LABEL_57:

      goto LABEL_58;
    }

    v39 = +[SBWorkspace mainWorkspace];
    v8 = [v39 transientOverlayPresentationManager];

    if ([v8 hasActivePresentation]&& [v8 handleHomeButtonPress])
    {
      v40 = SBLogButtonsHome();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = NSStringFromSelector(a2);
        *buf = 138543362;
        v56 = v41;
        _os_log_impl(&dword_21ED4E000, v40, OS_LOG_TYPE_INFO, "%{public}@ result: transient overlay handled it", buf, 0xCu);
      }

      goto LABEL_27;
    }

    v54 = 1;
    if ([(SBUIController *)self hasVisibleAlertItemOrSheet:&v54])
    {
      v42 = v54;
      v8 = SBLogButtonsHome();
      v43 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v42 != 1)
      {
        if (!v43)
        {
          goto LABEL_27;
        }

        v17 = NSStringFromSelector(a2);
        *buf = 138543362;
        v56 = v17;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "%{public}@ result: ignoring because an alert item or sheet is showing and can't be dismissed", buf, 0xCu);
        goto LABEL_9;
      }

      if (v43)
      {
        v44 = NSStringFromSelector(a2);
        *buf = 138543362;
        v56 = v44;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "%{public}@ result: ignoring because attempting to dismiss alert items or sheets", buf, 0xCu);
      }

      if ([(SBUIController *)self dissmissAlertItemsAndSheetsIfPossible])
      {
        goto LABEL_58;
      }
    }

    goto LABEL_50;
  }

  v8 = [v7 floatingDockController];
  if ([v8 isPresentingFolder])
  {
    [v8 dismissPresentedFolderAnimated:1 completion:0];
LABEL_27:

LABEL_58:
    v14 = 1;
    goto LABEL_59;
  }

  v15 = [v8 floatingDockViewController];
  v16 = [v15 isPresentingLibrary];

  if (v16)
  {
    v17 = [v8 floatingDockViewController];
    [v17 dismissLibraryAnimated:1 completion:0];
LABEL_9:

    goto LABEL_27;
  }

LABEL_50:
  v45 = [v7 _fbsDisplayConfiguration];
  v46 = SBWorkspaceSuspendDisplayWithSource(v45, 20);

  if (v46)
  {
    v36 = SBLogButtonsHome();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = NSStringFromSelector(a2);
      *buf = 138543362;
      v56 = v37;
      v38 = "%{public}@ result: suspending display";
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  if ([(SBHomeScreenWindow *)self->_window isRotating])
  {
    v36 = SBLogButtonsHome();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = NSStringFromSelector(a2);
      *buf = 138543362;
      v56 = v37;
      v38 = "%{public}@ result: ignoring because we're rotating";
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  v48 = [v7 homeScreenController];
  v49 = v48;
  if (v48 && ([v48 iconManager], v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "isScrolling"), v50, (v51 & 1) == 0))
  {
    [v49 handleHomeButtonTap];
    v52 = SBLogButtonsHome();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = NSStringFromSelector(a2);
      *buf = 138543362;
      v56 = v53;
      _os_log_impl(&dword_21ED4E000, v52, OS_LOG_TYPE_INFO, "%{public}@ result: home screen controller handled it", buf, 0xCu);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

LABEL_59:
  return v14;
}

- (void)cancelVolumeEvent
{
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self->_volumeControl selector:sel_increaseVolume object:0];
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = MEMORY[0x277D82BB8];
    volumeControl = self->_volumeControl;

    [v3 cancelPreviousPerformRequestsWithTarget:volumeControl selector:sel_decreaseVolume object:0];
  }
}

- (void)updateBatteryState:(id)a3
{
  v92 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(self + 96);
  v6 = *(self + 97);
  v7 = +[SBDefaults localDefaults];
  v8 = [v7 powerDefaults];
  __hideACPower = [v8 hideACPower];

  v9 = [v4 objectForKey:@"CurrentCapacity"];
  LODWORD(v7) = [v9 intValue];

  v10 = [v4 objectForKey:@"MaxCapacity"];
  v11 = [v10 intValue];

  v12 = fmax(fmin((v7 / v11), 1.0), 0.0);
  self->_batteryCapacity = v12;
  v13 = [v4 objectForKey:@"Voltage"];
  v71 = [v13 intValue];

  if (__hideACPower == 1)
  {
    *(self + 96) &= ~0x10u;
  }

  else
  {
    v14 = [v4 objectForKey:@"ExternalConnected"];
    if ([v14 BOOLValue])
    {
      v15 = 16;
    }

    else
    {
      v15 = 0;
    }

    *(self + 96) = *(self + 96) & 0xEF | v15;
  }

  v16 = [v4 objectForKey:@"FullyCharged"];
  if ([v16 BOOLValue])
  {
    v17 = 4;
  }

  else
  {
    v17 = 4 * (self->_batteryCapacity > 0.999);
  }

  *(self + 96) = *(self + 96) & 0xFB | v17;

  if ((__hideACPower & 1) != 0 || (*(self + 96) & 4) != 0)
  {
    *(self + 96) &= ~2u;
  }

  else
  {
    v18 = [v4 objectForKey:@"IsCharging"];
    if ([v18 BOOLValue])
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    *(self + 96) = *(self + 96) & 0xFD | v19;
  }

  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __37__SBUIController_updateBatteryState___block_invoke;
  v77[3] = &unk_2783A9718;
  v77[4] = &v78;
  if (updateBatteryState__onceToken != -1)
  {
    dispatch_once(&updateBatteryState__onceToken, v77);
  }

  v20 = [v4 objectForKey:@"ExternalConnected"];
  if ([v20 BOOLValue])
  {
    v21 = 0;
  }

  else
  {
    v22 = [v4 objectForKey:@"ExternalChargeCapable"];
    if ([v22 BOOLValue])
    {
      v21 = 0;
    }

    else
    {
      v23 = [v4 objectForKey:@"AdapterInfo"];
      v21 = [v23 intValue] == -536870201;
    }
  }

  if ((BKSDisplayServicesDisplayIsTethered() & 1) == 0)
  {
    [(SBUIController *)self setIsConnectedToUnsupportedChargingAccessory:v21];
  }

  if ((*(self + 96) & 0x10) != 0)
  {
    v25 = [v4 objectForKey:@"ExternalChargeCapable"];
    *(self + 97) = *(self + 97) & 0xFE | [v25 BOOLValue] ^ 1;

    v24 = *(self + 97);
  }

  else
  {
    v24 = *(self + 97) & 0xFE;
    *(self + 97) = v24;
  }

  if ((v24 ^ v6))
  {
    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    [v26 postNotificationName:@"SBUIBatteryNotChargingStatusChangedNotification" object:0 userInfo:0];
  }

  v27 = [v4 objectForKey:@"AdapterDetails"];
  v28 = [v27 objectForKey:@"FamilyCode"];
  v29 = [v28 intValue];
  v30 = *(self + 152);
  v31 = v30 & 0xFE;
  if (v29 == -536723453)
  {
    ++v31;
  }

  *(self + 152) = v31;
  if ((v29 == -536723453) != (v30 & 1))
  {
    v32 = [MEMORY[0x277CCAB98] defaultCenter];
    [v32 postNotificationName:@"SBUIQiPowerStatusChangedNotification" object:0 userInfo:0];
  }

  if (v29 == -536723448 || v29 == -536723450)
  {
    v34 = 4;
  }

  else
  {
    v34 = 0;
  }

  *(self + 97) = v34 | (8 * (v29 == -536723449)) | *(self + 97) & 0xF3;
  if (v29 == -536723449 || v29 == -536723448 || v29 == -536723450)
  {
    kdebug_trace();
  }

  if ((*(self + 97) & 4) != 0)
  {
    v35 = [v27 objectForKey:@"Source"];
  }

  else
  {
    v35 = 0;
  }

  connectedWirelessChargerId = self->_connectedWirelessChargerId;
  self->_connectedWirelessChargerId = v35;

  v37 = *(self + 96);
  v38 = (v37 >> 4) & 1;
  if (v38 != (v5 & 0x10) >> 4)
  {
    v39 = 0;
    if ((v5 & 0x10) != 0 && (v6 & 8) != 0)
    {
      v39 = (*(self + 97) >> 3) & 1;
    }

    SBWorkspaceLogUsage(v38);
    v40 = [(SBUIController *)self _isConnectedToWirelessCharging];
    v41 = +[SBBacklightController sharedInstance];
    v42 = [v41 screenIsOn];

    v43 = SBLogCharging();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = (*(self + 96) >> 4) & 1;
      v45 = (*(self + 97) >> 1) & 1;
      *buf = 67110144;
      v83 = v44;
      v84 = 1024;
      v85 = (v5 & 0x10) >> 4;
      v86 = 1024;
      v87 = v40;
      v88 = 1024;
      v89 = v45;
      v90 = 1024;
      v91 = v42;
      _os_log_impl(&dword_21ED4E000, v43, OS_LOG_TYPE_DEFAULT, "AC status changed (isOnAC: %{BOOL}u, wasOnAC: %{BOOL}u, isConnectedToWirelessCharging: %{BOOL}u, wasConnectedToWirelessCharging: %{BOOL}u, isScreenOn: %{BOOL}u) ䷼", buf, 0x20u);
    }

    v46 = *(self + 97);
    if (((v46 & 2) == 0 || v40) | v42 & 1)
    {
      if (((!v40 | ((v46 & 2) >> 1)) & 1) == 0)
      {
        v47 = SBLogCharging();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v47, OS_LOG_TYPE_DEFAULT, "Connected to wireless charging accessory", buf, 2u);
        }

        [(SBFMotionAlarmController *)self->_motionAlarmController unregisterMotionAlarm];
        [(SBUIController *)self _cancelDebounceWirelessChargingTimer];
      }
    }

    else
    {
      v48 = SBLogCharging();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v48, OS_LOG_TYPE_DEFAULT, "Wireless charging disconnection detected when screen was off", buf, 2u);
      }

      v49 = [MEMORY[0x277D02C20] rootSettings];
      v50 = [v49 chargingSettings];

      [v50 wirelessChargingDebounceDurationInSeconds];
      [(SBUIController *)self _disableWirelessChargingChimeAndScreenWakeForDuration:?];
    }

    if (v40)
    {
      v51 = 2;
    }

    else
    {
      v51 = 0;
    }

    *(self + 97) = *(self + 97) & 0xFD | v51;
    v52 = [MEMORY[0x277CCAB98] defaultCenter];
    [v52 postNotificationName:@"SBUIACStatusChangedNotification" object:0 userInfo:v4];

    if (v39)
    {
      [(SBUIController *)self _disableWirelessChargingChimeAndScreenWakeForDuration:0 withMotionAlarm:0.1];
    }

    [(SBUIController *)self ACPowerChanged];
    v37 = *(self + 96);
  }

  v53 = [v4 objectForKey:@"AtCriticalLevel"];
  v54 = self + 96;
  if ([v53 BOOLValue])
  {
    v55 = 8;
  }

  else
  {
    v55 = 0;
  }

  *v54 = *(self + 96) & 0xF7 | v55;

  v56 = (*v54 >> 3) & 1;
  if (v56 != ((v37 >> 3) & 1))
  {
    if (v56)
    {
      v58 = SBLogCharging();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        [(SBUIController *)v58 updateBatteryState:v59, v60, v61, v62, v63, v64, v65];
      }

      v66 = [(SBUIController *)self batteryCapacityAsPercentage];
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __37__SBUIController_updateBatteryState___block_invoke_230;
      v76[3] = &unk_2783A8C18;
      v76[4] = self;
      [SBBatteryLogger saveLowBatteryLogWithCapacity:v66 voltage:v71 completion:v76];
    }

    else
    {
      v57 = SBLogCharging();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v57, OS_LOG_TYPE_DEFAULT, "Battery is no longer at critical level", buf, 2u);
      }
    }
  }

  v67 = [v4 objectForKey:@"CapacityEstimated"];
  v68 = v67;
  if ((*(self + 96) & 8) == 0 && (!v67 || ([v67 BOOLValue] & 1) == 0))
  {
    [SBLowPowerAlertItem setBatteryLevel:[(SBUIController *)self batteryCapacityAsPercentage]];
  }

  v69 = [(SBUIController *)self batteryCapacityAsPercentage];
  if (updateBatteryState___prevIsFullyCharged != v69 > 89)
  {
    updateBatteryState___prevIsFullyCharged = v69 > 89;
    if (updateBatteryState__fullPowerToken != -1)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__SBUIController_updateBatteryState___block_invoke_238;
      block[3] = &__block_descriptor_33_e5_v8__0l;
      v75 = v69 > 89;
      dispatch_async(updateBatteryState__notificationQueue, block);
    }
  }

  if (v69 < 90)
  {
    if ((*(self + 96) & 0x12) != 0 && (v5 & 0x10) == 0 && (v5 & 2) == 0)
    {
      _SBWorkspaceStartUsageTimesIfNecessary();
      _SBWorkspaceSetHavePartiallyCharged(1);
      goto LABEL_97;
    }

LABEL_96:
    _SBWorkspaceStartUsageTimesIfNecessary();
    goto LABEL_97;
  }

  if ((*(self + 96) & 0x12) == 0)
  {
    if ((v5 & 0x12) != 0)
    {
      self->_batteryLoggingStartCapacity = [(SBUIController *)self batteryCapacityAsPercentage];
      _SBWorkspaceResetBatteryUsageTimes();
    }

    goto LABEL_96;
  }

  _SBWorkspaceResetBatteryUsageTimes();
LABEL_97:
  v70 = (*(self + 96) & 0x12) != 0;
  if (updateBatteryState___prevIsPluggedIn != v70 || *(v79 + 24) == 1)
  {
    kdebug_trace();
    updateBatteryState___prevIsPluggedIn = v70;
    if (updateBatteryState__pluggedInToken != -1)
    {
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __37__SBUIController_updateBatteryState___block_invoke_2_240;
      v72[3] = &__block_descriptor_33_e5_v8__0l;
      v73 = v70;
      dispatch_async(updateBatteryState__notificationQueue, v72);
    }
  }

  _Block_object_dispose(&v78, 8);
}

uint64_t __37__SBUIController_updateBatteryState___block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_create("com.apple.SpringBoard.batterynotificationqueue", 0);
  v3 = updateBatteryState__notificationQueue;
  updateBatteryState__notificationQueue = v2;

  notify_register_check("com.apple.springboard.fullycharged", &updateBatteryState__fullPowerToken);
  result = notify_register_check("com.apple.springboard.pluggedin", &updateBatteryState__pluggedInToken);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

void __37__SBUIController_updateBatteryState___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 96);
  if ((v1 & 8) != 0)
  {
    v2 = SBLogUIController();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    if ((v1 & 0x10) != 0)
    {
      if (v3)
      {
        __37__SBUIController_updateBatteryState___block_invoke_2_cold_1(v2, v4, v5, v6, v7, v8, v9, v10);
      }

      v11 = [SBApp restartManager];
      [v11 rebootForReason:@"BatteryAtCriticalLevel"];
    }

    else
    {
      if (v3)
      {
        __37__SBUIController_updateBatteryState___block_invoke_2_cold_2(v2, v4, v5, v6, v7, v8, v9, v10);
      }

      v11 = [SBApp restartManager];
      [v11 shutdownForReason:@"BatteryAtCriticalLevel"];
    }
  }
}

uint64_t __37__SBUIController_updateBatteryState___block_invoke_238(uint64_t a1)
{
  notify_set_state(updateBatteryState__fullPowerToken, *(a1 + 32));

  return notify_post("com.apple.springboard.fullycharged");
}

uint64_t __37__SBUIController_updateBatteryState___block_invoke_2_240(uint64_t a1)
{
  notify_set_state(updateBatteryState__pluggedInToken, *(a1 + 32));

  return notify_post("com.apple.springboard.pluggedin");
}

- (void)_disableWirelessChargingChimeAndScreenWakeForDuration:(double)a3 withMotionAlarm:(BOOL)a4
{
  *&self->_disableChimeForWirelessCharging = 257;
  if (a4)
  {
    [(SBFMotionAlarmController *)self->_motionAlarmController registerMotionAlarm];
  }

  [(SBUIController *)self _setDebounceWirelessChargingTimerWithDuration:a3];
}

- (void)setChargingChimeEnabled:(BOOL)a3
{
  if (self->_chargingChimeEnabled != a3)
  {
    self->_chargingChimeEnabled = a3;
    if (a3)
    {
      [(SBUIController *)self playChargingChimeIfAppropriate];
    }

    else
    {
      [(NSMutableDictionary *)self->_powerSourceHasChimed removeAllObjects];
    }
  }
}

- (void)_enumeratePowerSourcesWithBlock:(id)a3
{
  v12 = a3;
  v3 = IOPSCopyPowerSourcesByType();
  if (v3)
  {
    v4 = v3;
    v5 = IOPSCopyPowerSourcesList(v3);
    if (v5)
    {
      v6 = v5;
      Count = CFArrayGetCount(v5);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
          v11 = IOPSGetPowerSourceDescription(v4, ValueAtIndex);
          v12[2](v12, v11);
        }
      }

      CFRelease(v4);
    }

    else
    {
      v6 = v4;
    }

    CFRelease(v6);
  }
}

- (BOOL)_powerSourceWantsToPlayChime
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SBUIController__powerSourceWantsToPlayChime__block_invoke;
  v4[3] = &unk_2783A9760;
  v4[4] = self;
  v4[5] = &v5;
  [(SBUIController *)self _enumeratePowerSourcesWithBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __46__SBUIController__powerSourceWantsToPlayChime__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 objectForKeyedSubscript:@"Power Source ID"];
  if (v3)
  {
    v4 = [v9 objectForKeyedSubscript:@"Play Charging Chime"];
    v5 = [v4 BOOLValue];

    v6 = [*(*(a1 + 32) + 192) objectForKeyedSubscript:v3];
    v7 = [v6 BOOLValue];

    if (!v5 || (v7 & 1) != 0)
    {
      if (v5)
      {
        goto LABEL_8;
      }

      v8 = MEMORY[0x277CBEC28];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v8 = MEMORY[0x277CBEC38];
    }

    [*(*(a1 + 32) + 192) setObject:v8 forKeyedSubscript:v3];
  }

LABEL_8:
}

- (void)suppressChimeForConnectedPowerSources
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__SBUIController_suppressChimeForConnectedPowerSources__block_invoke;
  v2[3] = &unk_2783A9788;
  v2[4] = self;
  [(SBUIController *)self _enumeratePowerSourcesWithBlock:v2];
}

void __55__SBUIController_suppressChimeForConnectedPowerSources__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 objectForKeyedSubscript:@"Power Source ID"];
  v4 = [v3 objectForKeyedSubscript:@"Play Charging Chime"];

  v5 = [v4 BOOLValue];
  v6 = v7;
  if (v7 && v5)
  {
    [*(*(a1 + 32) + 192) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v7];
    v6 = v7;
  }
}

- (void)playChargingChimeIfAppropriate
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [SBApp restartManager];
  v4 = [v3 startupTransition];
  v5 = [v4 context];

  if (v3)
  {
    v6 = [v5 overlay];
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = [v5 isDark] ^ 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [(SBUIController *)self _powerSourceWantsToPlayChime];
  v9 = [(SBUIController *)self chargingChimeEnabled]& v7 & v8;
  v10 = SBLogCharging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109632;
    v15[1] = v9;
    v16 = 1024;
    v17 = [(SBUIController *)self chargingChimeEnabled];
    v18 = 1024;
    v19 = v8;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Should chime: %{BOOL}u, charging enabled: %{BOOL}u, _powerSourceWantsToPlayChime: %{BOOL}u", v15, 0x14u);
  }

  [(SBUIController *)self chargingChimeEnabled];
  kdebug_trace();
  if (v9)
  {
    v11 = [MEMORY[0x277D679C8] soundWithFeedbackEventType:1003];
    if ((*(self + 97) & 0xC) != 0)
    {
      v12 = SBLogAccessory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Play chime for internal charging accessory", v15, 2u);
      }

      v13 = [MEMORY[0x277D679C8] soundWithFeedbackEventType:1020];

      v11 = v13;
    }

    v14 = +[SBSoundController sharedInstance];
    [v14 playSoundWithDefaultEnvironment:v11];
  }
}

- (void)didDetectDeviceMotion
{
  v3 = SBLogCharging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Device motion detected", v4, 2u);
  }

  [(SBUIController *)self _resetWirelessChargingState];
}

- (BOOL)_isConnectedToWirelessCharging
{
  if ((*(self + 97) & 0xC) != 0)
  {
    return 1;
  }

  else
  {
    return *(self + 152) & 1;
  }
}

- (void)_setDebounceWirelessChargingTimerWithDuration:(double)a3
{
  v22 = *MEMORY[0x277D85DE8];
  debounceWirelessChargingTimer = self->_debounceWirelessChargingTimer;
  if (!debounceWirelessChargingTimer)
  {
    goto LABEL_7;
  }

  [(SWWakingTimer *)debounceWirelessChargingTimer timeRemaining];
  if (v6 < a3)
  {
    v7 = v6;
    v8 = SBLogCharging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v19 = v7;
      v20 = 2048;
      v21 = a3;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Overriding debounce wireless charging timer because current time remaining (%f seconds) is less than requested fire interval (%f seconds)", buf, 0x16u);
    }

    [(SWWakingTimer *)self->_debounceWirelessChargingTimer invalidate];
    v9 = self->_debounceWirelessChargingTimer;
    self->_debounceWirelessChargingTimer = 0;
  }

  if (!self->_debounceWirelessChargingTimer)
  {
LABEL_7:
    objc_initWeak(&location, self);
    v10 = [objc_alloc(MEMORY[0x277D6C0A8]) initWithIdentifier:@"SBUIController-DebounceWirelessCharging"];
    v11 = self->_debounceWirelessChargingTimer;
    self->_debounceWirelessChargingTimer = v10;

    v12 = self->_debounceWirelessChargingTimer;
    v13 = MEMORY[0x277D85CD0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__SBUIController__setDebounceWirelessChargingTimerWithDuration___block_invoke;
    v15[3] = &unk_2783A97B0;
    objc_copyWeak(&v16, &location);
    [(SWWakingTimer *)v12 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v15 queue:a3 handler:1.0];

    v14 = SBLogCharging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = a3;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Debounce wireless charging timer scheduled for %f seconds", buf, 0xCu);
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __64__SBUIController__setDebounceWirelessChargingTimerWithDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _debounceWirelessChargingTimerFired];
}

- (void)_debounceWirelessChargingTimerFired
{
  v3 = SBLogCharging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Debounce wireless charging timer fired", v4, 2u);
  }

  [(SBUIController *)self _resetWirelessChargingState];
}

- (void)_resetWirelessChargingState
{
  v3 = SBLogCharging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Resetting wireless charging state", v4, 2u);
  }

  *&self->_disableChimeForWirelessCharging = 0;
  if (![(SBUIController *)self _isConnectedToWirelessCharging])
  {
    [(NSMutableDictionary *)self->_powerSourceHasChimed removeAllObjects];
    [(SBUIController *)self possiblyWakeForPowerStatusChangeWithUnlockSource:21];
  }

  [(SBFMotionAlarmController *)self->_motionAlarmController unregisterMotionAlarm];
  [(SBUIController *)self _cancelDebounceWirelessChargingTimer];
}

- (void)_cancelDebounceWirelessChargingTimer
{
  if (self->_debounceWirelessChargingTimer)
  {
    v3 = SBLogCharging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Debounce wireless charging timer canceled", v5, 2u);
    }

    [(SWWakingTimer *)self->_debounceWirelessChargingTimer invalidate];
    debounceWirelessChargingTimer = self->_debounceWirelessChargingTimer;
    self->_debounceWirelessChargingTimer = 0;
  }
}

- (void)_playAccessoryChimeIfAppropriateForAccessory:(id)a3 attaching:(BOOL)a4 withDelay:(double)a5
{
  v8 = a3;
  v9 = dispatch_time(0, (a5 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__SBUIController__playAccessoryChimeIfAppropriateForAccessory_attaching_withDelay___block_invoke;
  block[3] = &unk_2783A97D8;
  block[4] = self;
  v12 = v8;
  v13 = a4;
  v10 = v8;
  dispatch_after(v9, MEMORY[0x277D85CD0], block);
}

void __83__SBUIController__playAccessoryChimeIfAppropriateForAccessory_attaching_withDelay___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _isAppropriateToReactToAccessoryEvent])
  {
    v2 = SBLogAccessory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Play chime for internal accessory", v6, 2u);
    }

    if (*(a1 + 48) & 1 | ([*(a1 + 40) type] != 8))
    {
      v3 = 1019;
    }

    else
    {
      v3 = 1021;
    }

    v4 = [MEMORY[0x277D679C8] soundWithFeedbackEventType:v3];
    v5 = +[SBSoundController sharedInstance];
    [v5 playSoundWithDefaultEnvironment:v4];
  }
}

- (BOOL)_isAppropriateToReactToAccessoryEvent
{
  v3 = [SBApp restartManager];
  v4 = [v3 startupTransition];
  v5 = [v4 context];

  if (v3)
  {
    v6 = [v5 overlay];
    if (v6)
    {
    }

    else if (([v5 isDark] & 1) == 0)
    {
      v7 = [(SBUIController *)self isAccessoryAnimationAllowed];
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (CGRect)visibleScreenCoordinatesForWindowedAccessory
{
  x = self->_visibleScreenCoordinatesForWindowedAccessory.origin.x;
  y = self->_visibleScreenCoordinatesForWindowedAccessory.origin.y;
  width = self->_visibleScreenCoordinatesForWindowedAccessory.size.width;
  height = self->_visibleScreenCoordinatesForWindowedAccessory.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setPointerInteractionsEnabled:(BOOL)a3
{
  if (self->_disallowsPointerInteraction != !a3)
  {
    v13[5] = v6;
    v13[6] = v5;
    v13[11] = v3;
    v13[12] = v4;
    self->_disallowsPointerInteraction = !a3;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__SBUIController_setPointerInteractionsEnabled___block_invoke;
    v13[3] = &unk_2783A9828;
    v13[4] = self;
    v7 = MEMORY[0x223D6F7F0](v13, a2);
    v8 = [SBApp windowSceneManager];
    v9 = [v8 connectedWindowScenes];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__SBUIController_setPointerInteractionsEnabled___block_invoke_3;
    v11[3] = &unk_2783A9850;
    v12 = v7;
    v10 = v7;
    [v9 bs_each:v11];
  }
}

uint64_t __48__SBUIController_setPointerInteractionsEnabled___block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __48__SBUIController_setPointerInteractionsEnabled___block_invoke_2;
    v2[3] = &unk_2783A9800;
    v2[4] = *(result + 32);
    return [a2 enumerateDisplayedIconViewsUsingBlock:v2];
  }

  return result;
}

void __48__SBUIController_setPointerInteractionsEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 location];
  v4 = SBIconLocationGroupContainsLocation();

  if ((v4 & 1) == 0)
  {
    [v5 setAllowsCursorInteraction:(*(*(a1 + 32) + 232) & 1) == 0];
  }
}

void __48__SBUIController_setPointerInteractionsEnabled___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 homeScreenController];
  v3 = [v4 iconManager];
  (*(v2 + 16))(v2, v3);
}

- (void)possiblyWakeForPowerStatusChangeWithUnlockSource:(int)a3
{
  v3 = *&a3;
  v19 = *MEMORY[0x277D85DE8];
  if (([SBApp caseIsEnabledAndLatched] & 1) == 0)
  {
    v4 = +[SBLockScreenManager sharedInstanceIfExists];
    if ([v4 isUILocked])
    {
      v5 = SBLogCharging();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = NSStringFromUnlockSource();
        *buf = 138412290;
        v18 = v6;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Unlock UI for source: %@", buf, 0xCu);
      }

      v15[0] = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
      v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v16[0] = v7;
      v15[1] = @"SBUIUnlockOptionsStartFadeInAnimation";
      v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v16[1] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
      [v4 unlockUIFromSource:v3 withOptions:v9];
    }

    else
    {
      v7 = +[SBIdleTimerGlobalCoordinator sharedInstanceIfExists];
      v10 = MEMORY[0x277CCACA8];
      v11 = NSStringFromUnlockSource();
      v12 = [v10 stringWithFormat:@"SBUIPossiblyWake:%@", v11];
      [v7 resetIdleTimerForReason:v12];
    }

    v13 = +[SBScreenLongevityController sharedInstanceIfExists];
    v14 = NSStringFromUnlockSource();
    [v13 resetTimerForReason:v14];
  }
}

- (void)ACPowerChanged
{
  if (!self->_disableScreenWakeForWirelessCharging)
  {
    [(SBUIController *)self possiblyWakeForPowerStatusChangeWithUnlockSource:21];
  }
}

- (void)connectedDevicesDidChange:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      if (([v9 isInternal] & 1) == 0)
      {
        if ([v9 isPowerSource])
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    if ([v9 percentCharge])
    {
      v11 = 1;
    }

    else
    {
      v11 = [v9 isCharging];
    }

    v10 = self + 96;
    if ((*(self + 96) & 0x20) == 0)
    {
      v12 = 1;
      kdebug_trace();
      v13 = 32;
      goto LABEL_20;
    }

    v12 = 0;
    v14 = 1;
LABEL_23:
    if (((v11 ^ ((*v10 & 0x40) == 0)) & 1) == 0)
    {
      kdebug_trace();
      v16 = (v11 & 1) != 0 ? 64 : 0;
      *v10 = *v10 & 0xBF | v16;
      if (((v14 | v12) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_29;
  }

LABEL_10:

  v10 = self + 96;
  if ((*(self + 96) & 0x20) != 0)
  {
    kdebug_trace();
    v11 = 0;
    v12 = 0;
    v13 = 0;
LABEL_20:
    *v10 = *v10 & 0xDF | v13;
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 postNotificationName:@"SBUIExternalChargeAccessoryConnectedStatusChangedNotification" object:0];

    if (v12)
    {
      [(SBUIController *)self possiblyWakeForPowerStatusChangeWithUnlockSource:22];
      v14 = 1;
      v12 = 1;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_23;
  }

  if ((*(self + 96) & 0x40) != 0)
  {
    kdebug_trace();
    *v10 &= ~0x40u;
LABEL_28:
    [(SBUIController *)self possiblyWakeForPowerStatusChangeWithUnlockSource:22, v17];
  }

LABEL_29:
}

- (void)setIsConnectedToUnsupportedChargingAccessory:(BOOL)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = *(self + 96);
  if ((((v3 >= 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v5 = 0x80;
    }

    else
    {
      v5 = 0;
    }

    *(self + 96) = v5 & 0x80 | v3 & 0x7F;
    IsSystemBootComplete = SBWorkspaceIsSystemBootComplete();
    v7 = *(self + 96);
    if (IsSystemBootComplete)
    {
      if (v7 < 0)
      {
        v8 = +[SBLockScreenManager sharedInstance];
        if ([v8 isUILocked])
        {
          v21 = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
          v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
          v22[0] = v9;
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
          [v8 unlockUIFromSource:21 withOptions:v10];
        }

        else
        {
          v13 = +[SBIdleTimerGlobalCoordinator sharedInstance];
          [v13 resetIdleTimerForReason:@"SBUIConnectToUnsupportedChargingAccessory"];

          v14 = [SBDismissOnlyAlertItem alloc];
          v15 = [MEMORY[0x277CCA8D8] mainBundle];
          v16 = [v15 localizedStringForKey:@"UNSUPPORTED_CHARGING_ACCESSORY" value:&stru_283094718 table:@"SpringBoard"];
          v17 = [(SBDismissOnlyAlertItem *)v14 initWithTitle:v16 body:0];
          unsupportedChargerAlert = self->_unsupportedChargerAlert;
          self->_unsupportedChargerAlert = v17;

          v19 = +[SBAlertItemsController sharedInstance];
          [v19 activateAlertItem:self->_unsupportedChargerAlert];
        }

        goto LABEL_14;
      }
    }

    else if (v7 < 0)
    {
LABEL_14:
      v20 = [MEMORY[0x277CCAB98] defaultCenter];
      [v20 postNotificationName:@"SBUIUnsupportedChargingAccessoryStatusChangedNotification" object:0];

      return;
    }

    if (self->_unsupportedChargerAlert)
    {
      v11 = +[SBAlertItemsController sharedInstance];
      [v11 deactivateAlertItem:self->_unsupportedChargerAlert];

      v12 = self->_unsupportedChargerAlert;
      self->_unsupportedChargerAlert = 0;
    }

    goto LABEL_14;
  }
}

- (void)fetchFormattedChargeTimeEstimateWithCompletion:(id)a3
{
  v4 = a3;
  if (!CSFeatureEnabled())
  {
    goto LABEL_6;
  }

  if ((__sb__runningInSpringBoard() & 1) == 0)
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (v7 != 1)
    {
      goto LABEL_4;
    }

LABEL_6:
    v4[2](v4, 0);
    goto LABEL_7;
  }

  if (SBFEffectiveDeviceClass() == 2)
  {
    goto LABEL_6;
  }

LABEL_4:
  batteryEstimateFetchQueue = self->_batteryEstimateFetchQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__SBUIController_fetchFormattedChargeTimeEstimateWithCompletion___block_invoke;
  v8[3] = &unk_2783A98A0;
  v8[4] = self;
  v9 = v4;
  dispatch_async(batteryEstimateFetchQueue, v8);

LABEL_7:
}

void __65__SBUIController_fetchFormattedChargeTimeEstimateWithCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 80);
  v12 = 0;
  v3 = [v2 estimateForTarget:0 withError:&v12];
  v4 = v12;
  v5 = SBLogCharging();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __65__SBUIController_fetchFormattedChargeTimeEstimateWithCompletion___block_invoke_cold_1(v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Fetched charge time estimate: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SBUIController_fetchFormattedChargeTimeEstimateWithCompletion___block_invoke_279;
  block[3] = &unk_2783A9878;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__SBUIController_fetchFormattedChargeTimeEstimateWithCompletion___block_invoke_279(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) formattedEstimate];
  (*(v1 + 16))(v1, v2);
}

- (void)interactionProgressDidUpdate:(id)a3
{
  if (self->_homeButtonForceProgress == a3)
  {
    [a3 percentComplete];
    self->_disableAppSwitchForcePressDueToHomeButtonForce = v4 > 0.001;
  }
}

- (void)interactionProgress:(id)a3 didEnd:(BOOL)a4
{
  if (self->_homeButtonForceProgress == a3)
  {
    self->_disableAppSwitchForcePressDueToHomeButtonForce = 0;
  }
}

- (void)_activateApplicationFromAccessibility:(id)a3
{
  v3 = a3;
  v4 = +[SBMainWorkspace sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SBUIController__activateApplicationFromAccessibility___block_invoke;
  v6[3] = &unk_2783A98F0;
  v7 = v3;
  v5 = v3;
  [v4 requestTransitionWithBuilder:v6];
}

void __56__SBUIController__activateApplicationFromAccessibility___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SBUIController__activateApplicationFromAccessibility___block_invoke_2;
  v4[3] = &unk_2783A98C8;
  v5 = *(a1 + 32);
  v3 = a2;
  [v3 modifyApplicationContext:v4];
  [v3 setSource:18];
}

void __56__SBUIController__activateApplicationFromAccessibility___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:*(a1 + 32)];
  [v3 setActivatingEntity:v4];
}

- (int64_t)interfaceOrientationForWallpaperController:(id)a3
{
  v3 = [(SBUIController *)self window];
  v4 = [v3 interfaceOrientation];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBUIController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBUIController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)storeAttachedAccessory:(id)a3
{
  v8 = a3;
  [(SBUIController *)self setLastAttachedAccessory:v8];
  v4 = [v8 endpointUUID];
  accessoriesAttachedByUUID = self->_accessoriesAttachedByUUID;
  if (!accessoriesAttachedByUUID)
  {
    v6 = objc_opt_new();
    v7 = self->_accessoriesAttachedByUUID;
    self->_accessoriesAttachedByUUID = v6;

    accessoriesAttachedByUUID = self->_accessoriesAttachedByUUID;
  }

  if (v4)
  {
    [(NSMutableDictionary *)accessoriesAttachedByUUID setObject:v8 forKeyedSubscript:v4];
    [(NSMutableDictionary *)self->_accessoriesSuppressedByUUID removeObjectForKey:v4];
    accessoriesAttachedByUUID = self->_accessoriesAttachedByUUID;
  }

  if ([(NSMutableDictionary *)accessoriesAttachedByUUID count])
  {
    *(self + 97) |= 0x10u;
  }
}

- (void)removeDetachedAccessory:(id)a3
{
  v4 = a3;
  [(SBUIController *)self setLastDetachedAccessory:v4];
  v5 = [v4 endpointUUID];

  if (v5)
  {
    [(NSMutableDictionary *)self->_accessoriesAttachedByUUID removeObjectForKey:v5];
  }

  if (![(NSMutableDictionary *)self->_accessoriesAttachedByUUID count])
  {
    *(self + 97) &= ~0x10u;
  }
}

- (void)_storeSuppressedAccessory:(id)a3
{
  v7 = a3;
  v4 = [v7 endpointUUID];
  if (!self->_accessoriesSuppressedByUUID)
  {
    v5 = objc_opt_new();
    accessoriesSuppressedByUUID = self->_accessoriesSuppressedByUUID;
    self->_accessoriesSuppressedByUUID = v5;
  }

  if (v4)
  {
    [(NSMutableDictionary *)self->_accessoriesSuppressedByUUID setObject:v7 forKeyedSubscript:v4];
  }
}

- (void)_removeSuppressedAccessory:(id)a3
{
  v4 = [a3 endpointUUID];
  if (v4)
  {
    v5 = v4;
    [(NSMutableDictionary *)self->_accessoriesAttachedByUUID removeObjectForKey:v4];
    v4 = v5;
  }
}

- (void)setLastAttachedAccessory:(id)a3
{
  v5 = a3;
  if (self->_lastAttachedAccessory != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_lastAttachedAccessory, a3);
    v5 = v6;
  }
}

- (void)setLastDetachedAccessory:(id)a3
{
  v5 = a3;
  if (self->_lastDetachedAccessory != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_lastDetachedAccessory, a3);
    v5 = v6;
  }
}

- (void)setIsAccessoryAnimationAllowed:(BOOL)a3
{
  if (self->_isAccessoryAnimationAllowed != a3)
  {
    self->_isAccessoryAnimationAllowed = a3;
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"SBUIAccessoryAnimationStatusChangedNotification" object:0 userInfo:0];
  }
}

- (void)windowedAccessoryDismissed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SBUIController_windowedAccessoryDismissed__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __44__SBUIController_windowedAccessoryDismissed__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(*(a1 + 32) + 328) allValues];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isWindowed])
        {
          v8 = SBLogAccessory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = [v7 description];
            *buf = 138412290;
            v15 = v9;
            _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Windowed accessory dismissed: %@", buf, 0xCu);
          }

          [*(a1 + 32) _dismissAccessory:v7 playChime:0];
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)windowedAccessoryPresented
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SBUIController_windowedAccessoryPresented__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __44__SBUIController_windowedAccessoryPresented__block_invoke(uint64_t a1)
{
  v3 = +[SBAccessoryController sharedInstance];
  v2 = [*(a1 + 32) windowScene];
  [v3 showWindowedAccessoryWindow:1 forWindowScene:v2];
}

- (void)_dismissAccessory:(id)a3 playChime:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    [(SBUIController *)self removeDetachedAccessory:v6];
  }

  if ([v6 isWindowed])
  {
    [(SBUIController *)self _setConnectedToWindowedAccessory:0];
    v7 = +[SBAccessoryController sharedInstance];
    v8 = [(SBUIController *)self windowScene];
    [v7 showWindowedAccessoryWindow:0 forWindowScene:v8];
  }

  if ([v6 shouldShowAnimation])
  {
    v9 = SBLogAccessory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 description];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "About to dismiss animation for accessory: %@ ", &v12, 0xCu);
    }

    if (v4)
    {
      [(SBUIController *)self _playAccessoryChimeIfAppropriateForAccessory:v6 attaching:0 withDelay:0.0];
    }

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:@"SBUIAccessoryDetachedNotification" object:0];
  }
}

- (BOOL)_shouldInitiateAnimationForAccessory:(id)a3
{
  v4 = a3;
  if ([(SBUIController *)self _shouldShowAnimationForAccessory:v4])
  {
    if ([v4 isWindowed])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = ![(SBUIController *)self _isConnectedToWirelessCharging];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_shouldShowAnimationForAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 shouldShowAnimation];
  v6 = [v4 type];

  if ([(SBUIController *)self _blocksAnimationForAccessoryType:v6])
  {
    v7 = SBLogAccessory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Wallet animation is not allowed because Clear Case is attached.", v9, 2u);
    }

    return 0;
  }

  return v5;
}

- (void)_setAccessoryAttachmentAnimationBlockingTimerWithDuration:(double)a3
{
  if (!self->_accessoryAttachmentAnimationBlockingTimer)
  {
    v5 = SBLogAccessory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Disable accessory animations", buf, 2u);
    }

    [(SBUIController *)self setIsAccessoryAnimationAllowed:0];
    objc_initWeak(buf, self);
    v6 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBUIController.accessoryAttachmentAnimationBlockingTimer"];
    accessoryAttachmentAnimationBlockingTimer = self->_accessoryAttachmentAnimationBlockingTimer;
    self->_accessoryAttachmentAnimationBlockingTimer = v6;

    v8 = self->_accessoryAttachmentAnimationBlockingTimer;
    v9 = MEMORY[0x277D85CD0];
    v10 = MEMORY[0x277D85CD0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__SBUIController__setAccessoryAttachmentAnimationBlockingTimerWithDuration___block_invoke;
    v11[3] = &unk_2783A9918;
    objc_copyWeak(&v12, buf);
    [(BSAbsoluteMachTimer *)v8 scheduleWithFireInterval:v9 leewayInterval:v11 queue:a3 handler:0.0];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

void __76__SBUIController__setAccessoryAttachmentAnimationBlockingTimerWithDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _animationBlockingTimerFired];
}

- (void)_animationBlockingTimerFired
{
  v3 = SBLogAccessory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Enable accessory animations", v5, 2u);
  }

  [(SBUIController *)self setIsAccessoryAnimationAllowed:1];
  [(BSAbsoluteMachTimer *)self->_accessoryAttachmentAnimationBlockingTimer invalidate];
  accessoryAttachmentAnimationBlockingTimer = self->_accessoryAttachmentAnimationBlockingTimer;
  self->_accessoryAttachmentAnimationBlockingTimer = 0;
}

- (void)accessoryConnectionInfoProvider:(id)a3 accessoryEndpointAttached:(id)a4 transportType:(int)a5 protocol:(int)a6 properties:(id)a7 forConnection:(id)a8
{
  v11 = a4;
  v12 = a7;
  v13 = v12;
  if (a5 == 13)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __124__SBUIController_accessoryConnectionInfoProvider_accessoryEndpointAttached_transportType_protocol_properties_forConnection___block_invoke;
    block[3] = &unk_2783A8ED8;
    v15 = v12;
    v16 = v11;
    v17 = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __124__SBUIController_accessoryConnectionInfoProvider_accessoryEndpointAttached_transportType_protocol_properties_forConnection___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D02C28]) initWithDictionary:*(a1 + 32) endpointUUID:*(a1 + 40)];
  if ([v2 isSupported])
  {
    [*(a1 + 48) _accessoryEndpointAttached:v2];
  }

  else
  {
    v3 = SBLogAccessory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2 description];
      v5 = *(a1 + 40);
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Suppressing unsupported accessory: %@, endpointUUID: %@", &v6, 0x16u);
    }

    if (([*(a1 + 48) _isAppropriateToReactToAccessoryEvent] & 1) == 0)
    {
      [*(a1 + 48) _storeSuppressedAccessory:v2];
    }
  }
}

- (void)_accessoryEndpointAttached:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 endpointUUID];
    [(SBUIController *)self storeAttachedAccessory:v5];
    v7 = SBLogAccessory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 description];
      *buf = 138412546;
      v25 = v8;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Accessory attached: %@, endpointUUID: %@", buf, 0x16u);
    }

    if ([(SBUIController *)self _shouldInitiateAnimationForAccessory:v5])
    {
      if ((*(self + 97) & 0x20) == 0 && [v5 isWindowed])
      {
        [v5 visibleScreenCoordinates];
        self->_visibleScreenCoordinatesForWindowedAccessory.origin.x = v9;
        self->_visibleScreenCoordinatesForWindowedAccessory.origin.y = v10;
        self->_visibleScreenCoordinatesForWindowedAccessory.size.width = v11;
        self->_visibleScreenCoordinatesForWindowedAccessory.size.height = v12;
        [(SBUIController *)self _setConnectedToWindowedAccessory:1];
      }

      v13 = +[SBWorkspace mainWorkspace];
      v14 = [v13 inCallPresentationManager];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __45__SBUIController__accessoryEndpointAttached___block_invoke;
      v21[3] = &unk_2783A9940;
      v21[4] = self;
      v22 = v6;
      v23 = v5;
      [v14 handleAccessoryAttachWithCompletion:v21];
    }

    if (-[SBUIController _updatesHomeScreenForAccessoryWithType:](self, "_updatesHomeScreenForAccessoryWithType:", [v5 type]))
    {
      v15 = [SBApp windowSceneManager];
      v16 = [v15 connectedWindowScenes];
      v17 = [v5 primaryColor];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __45__SBUIController__accessoryEndpointAttached___block_invoke_293;
      v19[3] = &unk_2783A9968;
      v20 = v17;
      v18 = v17;
      [v16 enumerateObjectsUsingBlock:v19];
    }
  }
}

void __45__SBUIController__accessoryEndpointAttached___block_invoke(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 32) + 320);
  if (v4)
  {
    v5 = [v4 endpointUUID];
    v6 = [v5 isEqualToString:*(a1 + 40)];

    if (v6)
    {
      v7 = SBLogAccessory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        *buf = 138412290;
        v24 = v8;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Accessory already detached: %@", buf, 0xCu);
      }

      goto LABEL_15;
    }
  }

  v9 = SBLogAccessory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 48) description];
    *buf = 138412290;
    v24 = v10;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "About to show animation for accessory: %@ ", buf, 0xCu);
  }

  v7 = +[SBLockScreenManager sharedInstance];
  if ([v7 isUILocked])
  {
    v21[0] = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
    v21[1] = @"SBUIUnlockOptionsStartFadeInAnimation";
    v22[0] = MEMORY[0x277CBEC38];
    v22[1] = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [v7 unlockUIFromSource:31 withOptions:v11];
LABEL_11:

    goto LABEL_12;
  }

  if ([*(a1 + 48) shouldLockScreenWhenAttached])
  {
    v20[0] = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{a2, @"SBUILockOptionsLockAutomaticallyKey", @"SBUILockOptionsPreserveTransientOverlaysKey"}];
    v19[2] = @"SBUILockOptionsUseScreenOffModeKey";
    v20[1] = v11;
    v20[2] = MEMORY[0x277CBEC28];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
    [v7 lockUIFromSource:24 withOptions:v12];

    goto LABEL_11;
  }

LABEL_12:
  v13 = [MEMORY[0x277D02C20] rootSettings];
  v14 = [v13 chargingSettings];

  [v14 omniAccessoryAnimationDelayInMilliseconds];
  v16 = v15 / 1000.0;
  if ([*(a1 + 48) shouldDelayAnimation])
  {
    [*(a1 + 48) attachAnimationDelay];
    v16 = v16 + v17;
  }

  [*(a1 + 32) _playAccessoryChimeIfAppropriateForAccessory:*(a1 + 48) attaching:1 withDelay:v16];
  [*(a1 + 32) storeAttachedAccessory:*(a1 + 48)];
  v18 = [MEMORY[0x277CCAB98] defaultCenter];
  [v18 postNotificationName:@"SBUIAccessoryAttachedNotification" object:0 userInfo:0];

LABEL_15:
}

void __45__SBUIController__accessoryEndpointAttached___block_invoke_293(uint64_t a1, void *a2)
{
  v3 = [a2 homeScreenController];
  [v3 caseAttachedStateDidUpdateWithColor:*(a1 + 32)];
}

- (void)accessoryConnectionInfoProvider:(id)a3 accessoryEndpointInfoPropertyChanged:(id)a4 properties:(id)a5 forConnection:(id)a6
{
  v9 = a4;
  v10 = a5;
  if ([(SBAccessoryConnectionInfoProvider *)self->_accessoryConnectionInfoProvider accessoryEndpointTransportType:v9 connection:a6]== 13)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __112__SBUIController_accessoryConnectionInfoProvider_accessoryEndpointInfoPropertyChanged_properties_forConnection___block_invoke;
    block[3] = &unk_2783A8ED8;
    block[4] = self;
    v12 = v9;
    v13 = v10;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __112__SBUIController_accessoryConnectionInfoProvider_accessoryEndpointInfoPropertyChanged_properties_forConnection___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 328) objectForKeyedSubscript:*(a1 + 40)];
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D02C28]) initWithDictionary:*(a1 + 48) endpointUUID:*(a1 + 40)];
    if ([*(a1 + 32) _treatsAccessoryAsSupported:?])
    {
      [*(a1 + 32) _accessoryEndpointAttached:v3];
    }

    v2 = v3;
  }
}

- (void)accessoryConnectionInfoProvider:(id)a3 accessoryEndpointDetached:(id)a4 forConnection:(id)a5
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__SBUIController_accessoryConnectionInfoProvider_accessoryEndpointDetached_forConnection___block_invoke;
  v8[3] = &unk_2783A92D8;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __90__SBUIController_accessoryConnectionInfoProvider_accessoryEndpointDetached_forConnection___block_invoke(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 328) objectForKeyedSubscript:*(a1 + 40)];
  v2 = [*(a1 + 32) _treatsAccessoryAsSupported:?];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _accessoryEndpointDetached:v4];
  }

  else
  {
    [v3 _removeSuppressedAccessory:v4];
  }
}

- (BOOL)_treatsAccessoryAsSupported:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 isSupported];
  v6 = [v4 endpointUUID];
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_accessoriesSuppressedByUUID objectForKey:v6];
    v8 = v7 == 0;

    if (v7 && ((v5 ^ 1) & 1) == 0)
    {
      v9 = SBLogAccessory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v4 description];
        v11 = [v4 endpointUUID];
        v13 = 138412546;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Suppressing late-arriving accessory: %@, endpointUUID: %@", &v13, 0x16u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v5 & v8;
}

- (void)_accessoryEndpointDetached:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 endpointUUID];
  v6 = SBLogAccessory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 description];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Accessory detached: %@, endpointUUID: %@", &v10, 0x16u);
  }

  if (v4)
  {
    -[SBUIController _dismissAccessory:playChime:](self, "_dismissAccessory:playChime:", v4, [v4 chimeOnDetach]);
    if (-[SBUIController _updatesHomeScreenForAccessoryWithType:](self, "_updatesHomeScreenForAccessoryWithType:", [v4 type]))
    {
      v8 = [SBApp windowSceneManager];
      v9 = [v8 connectedWindowScenes];
      [v9 enumerateObjectsUsingBlock:&__block_literal_global_296];
    }
  }
}

void __45__SBUIController__accessoryEndpointDetached___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 homeScreenController];
  [v2 caseAttachedStateDidUpdateWithColor:0];
}

- (void)_setConnectedToWindowedAccessory:(BOOL)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = *(self + 97);
  if (((((v3 & 0x20) == 0) ^ a3) & 1) == 0)
  {
    v4 = a3;
    if (a3)
    {
      v6 = 32;
    }

    else
    {
      v6 = 0;
    }

    *(self + 97) = v3 & 0xDF | v6;
    suspendProximityForAttachedWindowedAccessoryAssertion = self->_suspendProximityForAttachedWindowedAccessoryAssertion;
    if (a3)
    {
      if (!suspendProximityForAttachedWindowedAccessoryAssertion)
      {
        v8 = [SBApp HIDUISensorController];
        v9 = [v8 suspendProximityDetectionForSource:36 reason:@"Windowed Accessory Attached"];
        v10 = self->_suspendProximityForAttachedWindowedAccessoryAssertion;
        self->_suspendProximityForAttachedWindowedAccessoryAssertion = v9;
      }

      if (!self->_zStackParticipant)
      {
        v11 = [(SBUIController *)self windowScene];
        v12 = [v11 zStackResolver];
        v13 = [v12 acquireParticipantWithIdentifier:28 delegate:self];
        zStackParticipant = self->_zStackParticipant;
        self->_zStackParticipant = v13;
      }
    }

    else
    {
      if (suspendProximityForAttachedWindowedAccessoryAssertion)
      {
        [(BSInvalidatable *)suspendProximityForAttachedWindowedAccessoryAssertion invalidate];
        v15 = self->_suspendProximityForAttachedWindowedAccessoryAssertion;
        self->_suspendProximityForAttachedWindowedAccessoryAssertion = 0;
      }

      [(SBFZStackParticipant *)self->_zStackParticipant invalidate];
      v16 = self->_zStackParticipant;
      self->_zStackParticipant = 0;

      v17 = *(MEMORY[0x277CBF3A0] + 16);
      self->_visibleScreenCoordinatesForWindowedAccessory.origin = *MEMORY[0x277CBF3A0];
      self->_visibleScreenCoordinatesForWindowedAccessory.size = v17;
    }

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    v21 = @"SBUIWindowedAccessoryAttachedKey";
    v19 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    v22[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    [v18 postNotificationName:@"SBUIWindowedAccessoryDidAttachOrDetachNotification" object:self userInfo:v20];
  }
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v4 = a4;
  [v4 setActivationPolicyForParticipantsBelow:0];
  [v4 setHomeGestureConsumption:1];
}

+ (CGAffineTransform)_transformForStatusBarWithOrientation:(SEL)a3 scaleFactor:(int64_t)a4
{
  v7 = MEMORY[0x277CBF2C0];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v8;
  *&retstr->tx = *(v7 + 32);
  if ((a4 - 2) <= 2)
  {
    CGAffineTransformMakeRotation(retstr, dbl_21F8A7D40[a4 - 2]);
  }

  v9 = *&retstr->c;
  *&v14.a = *&retstr->a;
  *&v14.c = v9;
  *&v14.tx = *&retstr->tx;
  UIIntegralTransform();
  v10 = *&v15.c;
  *&retstr->a = *&v15.a;
  *&retstr->c = v10;
  *&retstr->tx = *&v15.tx;
  result = BSFloatEqualToFloat();
  if ((result & 1) == 0)
  {
    v12 = *&retstr->c;
    *&v14.a = *&retstr->a;
    *&v14.c = v12;
    *&v14.tx = *&retstr->tx;
    result = CGAffineTransformScale(&v15, &v14, a5, a5);
    v13 = *&v15.c;
    *&retstr->a = *&v15.a;
    *&retstr->c = v13;
    *&retstr->tx = *&v15.tx;
  }

  return result;
}

+ (CGAffineTransform)_transformAndFrame:(SEL)a3 forLaunchImageHostViewWithOrientation:(CGRect *)a4 statusBarHeight:(int64_t)a5 inJailRect:(double)a6
{
  height = a7.size.height;
  width = a7.size.width;
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  *&v16.a = *MEMORY[0x277CBF2C0];
  *&v16.c = v10;
  *&v16.tx = *(MEMORY[0x277CBF2C0] + 32);
  if (a5 > 2)
  {
    if (a5 == 3)
    {
      a4->origin.x = a7.origin.x;
      a4->origin.y = a7.origin.y + a6;
      a4->size.width = a7.size.height;
      a4->size.height = width - a6;
      CGAffineTransformMakeRotation(&v16, 1.57079633);
      v11 = (height - width - a6) * 0.5;
      v12 = v11 + a6;
      v14 = v16;
    }

    else
    {
      if (a5 != 4)
      {
        goto LABEL_11;
      }

      a4->origin.x = a7.origin.x;
      a4->origin.y = a7.origin.y + a6;
      a4->size.width = a7.size.height;
      a4->size.height = width - a6;
      CGAffineTransformMakeRotation(&v16, -1.57079633);
      v11 = (height - width - a6) * -0.5;
      v14 = v16;
      v12 = v11;
    }

    CGAffineTransformTranslate(&v15, &v14, v11, v12);
    v16 = v15;
    goto LABEL_11;
  }

  if (a5 == 1)
  {
    a4->origin.x = a7.origin.x;
    a4->origin.y = a7.origin.y + a6;
    a4->size.width = width;
    a4->size.height = a7.size.height - a6;
  }

  else if (a5 == 2)
  {
    a4->origin.x = a7.origin.x;
    a4->origin.y = a7.origin.y;
    a4->size.width = width;
    a4->size.height = a7.size.height - a6;
    CGAffineTransformMakeRotation(&v16, 3.14159265);
  }

LABEL_11:
  v15 = v16;
  return UIIntegralTransform();
}

+ (CGRect)statusBarFrameForSnapshotFrame:(CGRect)a3 orientation:(int64_t)a4 statusBarStyleRequest:(id)a5 hidden:(BOOL)a6
{
  [a1 statusBarFrameForSnapshotFrame:0 remainderFrame:a4 orientation:a5 statusBarStyleRequest:a6 hidden:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

+ (CGRect)statusBarFrameForSnapshotFrame:(CGRect)a3 remainderFrame:(CGRect *)a4 orientation:(int64_t)a5 statusBarStyleRequest:(id)a6 hidden:(BOOL)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a6;
  v15 = v14;
  v16 = 0.0;
  if (!a7)
  {
    [MEMORY[0x277D75A78] heightForStyle:objc_msgSend(v14 orientation:{"style"), a5}];
    v16 = v17;
  }

  v18 = *MEMORY[0x277CBF3A0];
  v19 = *(MEMORY[0x277CBF3A0] + 16);
  if (a5 == 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = 3;
  }

  if ((a5 - 1) >= 2)
  {
    v21 = 2 * (a5 != 4);
  }

  else
  {
    v21 = v20;
  }

  v27.origin = *MEMORY[0x277CBF3A0];
  v27.size = v19;
  slice.origin = v18;
  slice.size = v19;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  CGRectDivide(v29, &slice, &v27, v16, v21);
  if (a4)
  {
    size = v27.size;
    a4->origin = v27.origin;
    a4->size = size;
  }

  v23 = slice.origin.x;
  v24 = slice.origin.y;
  v25 = slice.size.width;
  v26 = slice.size.height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

+ (CGRect)statusBarFrameForDeviceApplicationSceneHandle:(id)a3 displayConfiguration:(id)a4 interfaceOrientation:(int64_t)a5 statusBarStyleRequest:(id)a6 withinBounds:(CGRect)a7 inReferenceSpace:(BOOL)a8
{
  v8 = a8;
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v17 = a4;
  v18 = a6;
  v19 = [a3 application];
  v20 = a5 - 3;
  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  v21 = CGRectGetHeight(v58);
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  v22 = CGRectGetWidth(v59);
  if ((a5 - 3) < 2)
  {
    v23 = v21;
  }

  else
  {
    v22 = height;
    v23 = width;
  }

  v24 = 0.0;
  if (v20 >= 2)
  {
    v25 = y;
  }

  else
  {
    v25 = 0.0;
  }

  if (v20 >= 2)
  {
    v24 = x;
  }

  if (v8)
  {
    v26 = height;
  }

  else
  {
    v26 = v22;
  }

  if (v8)
  {
    v27 = width;
  }

  else
  {
    v27 = v23;
  }

  if (v8)
  {
    v28 = y;
  }

  else
  {
    v28 = v25;
  }

  if (v8)
  {
    v29 = x;
  }

  else
  {
    v29 = v24;
  }

  v30 = [MEMORY[0x277D75418] currentDevice];
  v31 = [v30 userInterfaceIdiom];

  if ((v31 & 0xFFFFFFFFFFFFFFFBLL) == 1 && SBApplicationClassicModeRepresentsPad([v19 _classicMode]) && objc_msgSend(v19, "classicAppNonFullScreenWithHomeAffordance"))
  {
    v32 = [MEMORY[0x277D759A0] mainScreen];
    [v19 defaultLaunchingSizeForDisplayConfiguration:v17];
    SBClassicUtilitiesScaleFactorForPresentationWithHomeAffordance(v32, a5, [v19 includesStatusBarInClassicJailForInterfaceOrientation:a5], v27, v26, v33, v34, 1.0);
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      [MEMORY[0x277D75A78] heightForStyle:objc_msgSend(v18 orientation:{"style"), a5}];
      UIRectCenteredXInRect();
      v35 = v60.origin.x;
      if (CGRectGetMinX(v60) >= 16.0)
      {
        v36 = v35;
      }

      else
      {
        v61.origin.x = x;
        v61.origin.y = y;
        v61.size.width = width;
        v61.size.height = height;
        v36 = CGRectGetWidth(v61);
      }

      SBClassicUtilitiesStatusBarInsetsForPadOnRoundedPad(v32, [v19 _classicMode]);
      v53 = MEMORY[0x277D76620];
      [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
      [*v53 userInterfaceLayoutDirection];
      UIRectInset();
      v38 = v54;
      v40 = v55;
      v42 = v56;
      v44 = v57;
      if (v8)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v32 = 0;
  }

  [a1 statusBarFrameForSnapshotFrame:a5 orientation:v18 statusBarStyleRequest:0 hidden:{v29, v28, v27, v26}];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  if (!v8)
  {
LABEL_29:
    _UIWindowConvertRectFromOrientationToOrientation();
    v38 = v45;
    v40 = v46;
    v42 = v47;
    v44 = v48;
  }

LABEL_30:

  v49 = v38;
  v50 = v40;
  v51 = v42;
  v52 = v44;
  result.size.height = v52;
  result.size.width = v51;
  result.origin.y = v50;
  result.origin.x = v49;
  return result;
}

+ (id)zoomViewForDeviceApplicationSceneHandle:(id)a3 displayConfiguration:(id)a4 interfaceOrientation:(int64_t)a5 snapshot:(id)a6 snapshotSize:(CGSize)a7 statusBarDescriptor:(id)a8 decodeImage:(BOOL)a9 hasOrientationMismatchForClassicApp:(BOOL)a10 customContainerBounds:(CGRect)a11
{
  height = a11.size.height;
  width = a11.size.width;
  y = a11.origin.y;
  x = a11.origin.x;
  v20 = a7.height;
  v21 = a7.width;
  v103 = a10;
  v24 = a3;
  v25 = a4;
  v26 = a6;
  v27 = a8;
  if (v26)
  {
    [v26 referenceSize];
    if (v29 != v21 || v28 != v20)
    {
      [SBUIController(SBUIAnimationController) zoomViewForDeviceApplicationSceneHandle:a2 displayConfiguration:a1 interfaceOrientation:? snapshot:? snapshotSize:? statusBarDescriptor:? decodeImage:? hasOrientationMismatchForClassicApp:? customContainerBounds:?];
    }
  }

  v31 = [v24 application];
  v32 = [v31 isClassic];
  if (v32)
  {
    [v25 bounds];
  }

  else
  {
    BSRectWithSize();
  }

  v104 = v33;
  v105 = v34;
  v106 = v35;
  v107 = v36;
  v111.origin.x = *MEMORY[0x277CBF3A0];
  v111.origin.y = *(MEMORY[0x277CBF3A0] + 8);
  v37 = *(MEMORY[0x277CBF3A0] + 16);
  v38 = *(MEMORY[0x277CBF3A0] + 24);
  v110.origin.x = x;
  v110.origin.y = y;
  v110.size.width = width;
  v110.size.height = height;
  v92 = v111.origin.y;
  v93 = *MEMORY[0x277CBF3A0];
  v111.size.width = v37;
  v111.size.height = v38;
  v39 = CGRectEqualToRect(v110, v111);
  v40 = v39;
  if (!v39)
  {
    v106 = width;
    v107 = height;
    v104 = x;
    v105 = y;
  }

  if (v26)
  {
    v94 = a9;
    v96 = v25;
    v41 = !v39;
    v42 = [v26 interfaceOrientation];
    if (v40)
    {
      v43 = a5;
    }

    else
    {
      v43 = 0;
    }

    if ((a5 - 1) < 2 != (v42 - 1) < 2)
    {
      v44 = v42;
    }

    else
    {
      v44 = v43;
    }

    v102 = v44;
    v100 = [a1 _effectiveStatusBarSettingsForSnapshot:v26 sceneHandle:v24];
    v101 = [v24 statusBarEffectiveStyleRequestWithStyle:{_SBStatusBarStyleFromLegacyStyle(objc_msgSend(v100, "style"))}];
    BSRectWithSize();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    [v26 contentFrame];
    v54 = v53;
    v56 = v55;
    v98 = v58;
    v99 = v57;
    v95 = v27;
    if (v32 && ![v31 includesStatusBarInClassicJailForInterfaceOrientation:a5])
    {
      v59 = a5;
      v60 = 0;
      v97 = 1;
    }

    else
    {
      v59 = a5;
      v60 = [v100 isHidden];
      v97 = 0;
    }

    [a1 statusBarFrameForSnapshotFrame:v102 orientation:v101 statusBarStyleRequest:v60 hidden:{v46, v48, v50, v52}];
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v108 = SBUICUnitScaleFactor;
    v71 = [v26 name];
    v72 = [v71 isEqualToString:@"SBSuspendSnapshot"];

    if ((v72 | v41) == 1)
    {
      if (v32)
      {
        LOBYTE(v32) = 0;
        v73 = 0;
        v103 = v40 && a10;
        v54 = v104;
        v56 = v105;
        v98 = v107;
        v99 = v106;
        v66 = v92;
        v64 = v93;
        v68 = v37;
        v70 = v38;
      }

      else
      {
        v73 = 0;
      }

      v75 = v59;
    }

    else
    {
      if (v97)
      {
        v74 = v59;
      }

      else
      {
        v74 = v102;
      }

      v75 = v59;
      if (v32)
      {
        if ([v31 classicAppZoomedInOrRequiresHiDPI])
        {
          LOBYTE(v32) = [v31 classicAppZoomedIn];
        }

        else
        {
          LOBYTE(v32) = 0;
        }

        [v31 snapshotFrameForClassicInsideBounds:v74 forOrientation:&v108 scaleFactor:1 inReferenceSpace:{v104, v105, v106, v107}];
        SBUICScaledRectWithOffset();
        v77 = v76;
        v79 = v78;
        v98 = v81;
        v99 = v80;
        SBUICScaledRectWithOffset();
        v64 = v82;
        v66 = v83;
        v68 = v84;
        v70 = v85;
        if (SBFEffectiveHomeButtonType() == 2 && ![v31 classicAppNonFullScreenWithHomeAffordance])
        {
          v73 = 0;
        }

        else
        {
          v73 = [v31 classicAppPhoneAppRunningOnPad] ^ 1;
        }

        v54 = v77;
        v56 = v79;
      }

      else
      {
        v73 = 0;
      }
    }

    v86 = [v101 isDoubleHeight];
    v87 = [v31 info];
    v88 = [v87 preventsLaunchInterfaceSplitting];

    BYTE4(v91) = v103;
    BYTE3(v91) = v73;
    BYTE2(v91) = v94;
    BYTE1(v91) = v32;
    LOBYTE(v91) = v88;
    v61 = -[SBFullscreenZoomView initWithContainingBounds:contentFrame:statusBarFrame:snapshot:snapshotOrientation:interfaceOrientation:doubleHeightStatusBar:allowStatusBarToOverlap:useLargerCornerRadii:preventSplit:needsZoomFilter:asyncDecodeImage:forJail:hasOrientationMismatchForClassicApp:]([SBFullscreenZoomView alloc], "initWithContainingBounds:contentFrame:statusBarFrame:snapshot:snapshotOrientation:interfaceOrientation:doubleHeightStatusBar:allowStatusBarToOverlap:useLargerCornerRadii:preventSplit:needsZoomFilter:asyncDecodeImage:forJail:hasOrientationMismatchForClassicApp:", v26, v102, v75, v86, v97 ^ 1u, [v31 classicAppWithRoundedCorners], v104, v105, v106, v107, v54, v56, v99, v98, v64, *&v66, *&v68, *&v70, v91);
    v89 = [(SBFullscreenZoomView *)v61 layer];
    [v89 setAllowsGroupOpacity:0];

    v27 = v95;
    v25 = v96;
  }

  else
  {
    v61 = [[SBZoomView alloc] _initWithFrame:v104, v105, v106, v107];
    v62 = [MEMORY[0x277D75348] blackColor];
    [(SBFullscreenZoomView *)v61 setBackgroundColor:v62];
  }

  return v61;
}

+ (id)_effectiveStatusBarSettingsForSnapshot:(id)a3 sceneHandle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 statusBarSettings];
  if (v7 && ![v5 contentType])
  {
    v8 = v7;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D656C8]);
    [v8 setHidden:{objc_msgSend(v6, "defaultStatusBarHiddenForOrientation:", objc_msgSend(v5, "interfaceOrientation"))}];
    [v8 setStyle:{_SBStatusBarLegacyStyleFromStyle(objc_msgSend(v6, "defaultStatusBarStyle"))}];
  }

  return v8;
}

- (id)_homeScreenViewController
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 352));
    v2 = [WeakRetained homeScreenController];
    v3 = [v2 homeScreenViewController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)nudgeIconInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v6 = [(SBUIController *)self _homeScreenViewController];
  [v6 nudgeIconInterfaceOrientation:a3 duration:a4];
}

- (BOOL)homeScreenAutorotatesEvenWhenIconIsDragging
{
  v2 = [(SBUIController *)self _homeScreenViewController];
  v3 = [v2 homeScreenAutorotatesEvenWhenIconIsDragging];

  return v3;
}

- (void)setHomeScreenAutorotatesEvenWhenIconIsDragging:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBUIController *)self _homeScreenViewController];
  [v4 setHomeScreenAutorotatesEvenWhenIconIsDragging:v3];
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen"))
  {
    [v4 _setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (void)setAllowIconRotation:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBUIController *)self _homeScreenViewController];
  [v7 setAllowIconRotation:v4 forReason:v6];
}

- (void)disableAnimationForNextIconRotation
{
  v2 = [(SBUIController *)self _homeScreenViewController];
  [v2 disableAnimationForNextIconRotation];
}

void __65__SBUIController_fetchFormattedChargeTimeEstimateWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Error fetching charge time estimate: %@", &v2, 0xCu);
}

@end