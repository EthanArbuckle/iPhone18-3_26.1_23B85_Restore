@interface STLimitUsageGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)coordinator rootViewController:(id)controller;
- (BOOL)showDemoModeAlertIfNeeded;
- (STLimitUsageGroupSpecifierProvider)init;
- (UIViewController)rootViewController;
- (id)_subtitleTextForDeviceBedtime:(id)bedtime;
- (id)alwaysAllowedDetailText;
- (id)appLimitsDetailText;
- (id)limitUsageSpecifers;
- (void)_hasWatchOSDevicesOnlyDidChange:(BOOL)change;
- (void)_isScreenTimeEnabledOrHasWatchOSDevicesOnlyDidChange;
- (void)_refreshBedtimeSpecifiersForBedtime:(id)bedtime;
- (void)alwaysAllowListController:(id)controller didFinishEditingAlwaysAllowList:(id)list;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)scheduleDowntimeRefreshAndReloadSpecifiersForBedtime:(id)bedtime;
- (void)scheduleDowntimeRefreshIfNeeded;
- (void)setCoordinator:(id)coordinator;
- (void)setUpAppAndWebsiteActivity:(id)activity;
- (void)setUpScreenDistance:(id)distance;
- (void)showAlwaysAllowedViewController:(id)controller;
- (void)showAppLimitsViewController:(id)controller;
- (void)showDeviceBedtimeViewController:(id)controller;
- (void)showScreenDistanceViewController:(id)controller;
@end

@implementation STLimitUsageGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)coordinator rootViewController:(id)controller
{
  controllerCopy = controller;
  v6 = [(STRootGroupSpecifierProvider *)STLimitUsageGroupSpecifierProvider providerWithCoordinator:coordinator];
  [v6 setRootViewController:controllerCopy];

  return v6;
}

- (STLimitUsageGroupSpecifierProvider)init
{
  v47.receiver = self;
  v47.super_class = STLimitUsageGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v47 init];
  if (v2)
  {
    v3 = +[STScreenTimeSettingsUIBundle bundle];
    v4 = MEMORY[0x277D3FAD8];
    v5 = [v3 localizedStringForKey:@"LimitUsageGroupSpecifierName" value:&stru_28766E5A8 table:0];
    v6 = [v4 groupSpecifierWithName:v5];
    [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v6];

    mutableSpecifiers = [(STGroupSpecifierProvider *)v2 mutableSpecifiers];
    v7 = [v3 localizedStringForKey:@"AppAndWebsiteActivitySpecifierName" value:&stru_28766E5A8 table:0];
    v37 = [v3 localizedStringForKey:@"AppAndWebsiteActivitySpecifierSubtitleText" value:&stru_28766E5A8 table:0];
    v38 = v7;
    v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:v2 set:0 get:0 detail:0 cell:2 edit:objc_opt_class()];
    [v8 setIdentifier:@"APP_AND_WEBSITE_ACTIVITY"];
    v41 = *MEMORY[0x277D40170];
    [v8 setObject:v7 forKeyedSubscript:?];
    v44 = *MEMORY[0x277D40160];
    [v8 setObject:v37 forKeyedSubscript:?];
    v40 = *MEMORY[0x277D3FFB8];
    v36 = v8;
    [v8 setObject:@"APP_AND_WEBSITE_ACTIVITY" forKeyedSubscript:?];
    v9 = objc_opt_class();
    v46 = *MEMORY[0x277D3FE58];
    [v8 setObject:v9 forKeyedSubscript:?];
    v45 = *MEMORY[0x277D40020];
    v10 = MEMORY[0x277CBEC38];
    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:?];
    v11 = *MEMORY[0x277D3FFD8];
    v43 = *MEMORY[0x277D3FFD8];
    [v8 setObject:@"com.apple.graphic-icon.analytics-and-improvements" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v33 = *MEMORY[0x277D400B8];
    [v8 setObject:v13 forKeyedSubscript:?];

    v14 = *MEMORY[0x277D401C0];
    [v8 setObject:&unk_28769CF80 forKeyedSubscript:*MEMORY[0x277D401C0]];
    [v8 setObject:v10 forKeyedSubscript:0x287675A28];
    [v8 setControllerLoadAction:sel_setUpAppAndWebsiteActivity_];
    [(STLimitUsageGroupSpecifierProvider *)v2 setAppAndWebsiteActivitySpecifier:v8];
    v15 = v3;
    v35 = [v3 localizedStringForKey:@"DeviceDowntimeSpecifierName" value:&stru_28766E5A8 table:0];
    v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v35 target:v2 set:0 get:0 detail:0 cell:2 edit:objc_opt_class()];
    [v16 setIdentifier:@"DOWNTIME"];
    [v16 setObject:v35 forKeyedSubscript:v41];
    v32 = v16;
    [v16 setObject:@"DOWNTIME" forKeyedSubscript:v40];
    [v16 setObject:objc_opt_class() forKeyedSubscript:v46];
    v17 = MEMORY[0x277CBEC38];
    [v16 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v45];
    [v16 setObject:@"com.apple.graphic-icon.downtime" forKeyedSubscript:v11];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [v16 setObject:v19 forKeyedSubscript:v33];

    [v16 setObject:&unk_28769CF80 forKeyedSubscript:v14];
    [v16 setObject:v17 forKeyedSubscript:0x287675A28];
    [v16 setControllerLoadAction:sel_showDeviceBedtimeViewController_];
    [(STLimitUsageGroupSpecifierProvider *)v2 setDeviceBedtimeSpecifier:v16];
    v20 = v15;
    v42 = v15;
    v34 = [v15 localizedStringForKey:@"AppLimitsSpecifierName" value:? table:?];
    v21 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v34 target:v2 set:0 get:0 detail:0 cell:2 edit:objc_opt_class()];
    [v21 setIdentifier:@"APP_LIMITS"];
    [v21 setObject:v34 forKeyedSubscript:v41];
    [v21 setObject:@"APP_LIMITS" forKeyedSubscript:v40];
    appLimitsDetailText = [(STLimitUsageGroupSpecifierProvider *)v2 appLimitsDetailText];
    [v21 setObject:appLimitsDetailText forKeyedSubscript:v44];

    [v21 setObject:objc_opt_class() forKeyedSubscript:v46];
    [v21 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v45];
    [v21 setObject:@"com.apple.graphic-icon.app-limits" forKeyedSubscript:v43];
    [v21 setControllerLoadAction:sel_showAppLimitsViewController_];
    [(STLimitUsageGroupSpecifierProvider *)v2 setAppLimitsSpecifier:v21];
    v23 = [v20 localizedStringForKey:@"AlwaysAllowedSpecifierName" value:&stru_28766E5A8 table:0];
    v24 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v23 target:v2 set:0 get:0 detail:0 cell:2 edit:0];
    [v24 setIdentifier:@"ALWAYS_ALLOWED"];
    [v24 setObject:v23 forKeyedSubscript:v41];
    [v24 setObject:@"ALWAYS_ALLOWED" forKeyedSubscript:v40];
    alwaysAllowedDetailText = [(STLimitUsageGroupSpecifierProvider *)v2 alwaysAllowedDetailText];
    [v24 setObject:alwaysAllowedDetailText forKeyedSubscript:v44];

    [v24 setObject:objc_opt_class() forKeyedSubscript:v46];
    v26 = MEMORY[0x277CBEC38];
    [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v45];
    [v24 setObject:@"com.apple.graphic-icon.always-allowed" forKeyedSubscript:v43];
    [v24 setControllerLoadAction:sel_showAlwaysAllowedViewController_];
    [(STLimitUsageGroupSpecifierProvider *)v2 setAlwaysAllowedSpecifier:v24];
    v27 = [v42 localizedStringForKey:@"ScreenDistanceSpecifierName" value:&stru_28766E5A8 table:0];
    v28 = [v42 localizedStringForKey:@"ScreenDistanceSpecifierSubtitleText" value:&stru_28766E5A8 table:0];
    v29 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v27 target:v2 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    [v29 setIdentifier:@"EYE_DISTANCE"];
    [v29 setObject:@"EYE_DISTANCE" forKeyedSubscript:v40];
    [v29 setObject:v27 forKeyedSubscript:v41];
    [v29 setObject:v28 forKeyedSubscript:v44];
    [v29 setObject:objc_opt_class() forKeyedSubscript:v46];
    [v29 setObject:v26 forKeyedSubscript:v45];
    [v29 setObject:@"com.apple.screen-time.screen-distance" forKeyedSubscript:v43];
    [v29 setControllerLoadAction:sel_setUpScreenDistance_];
    [(STLimitUsageGroupSpecifierProvider *)v2 setScreenDistanceSpecifier:v29];
    [(STLimitUsageGroupSpecifierProvider *)v2 scheduleDowntimeRefreshIfNeeded];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v5.receiver = self;
  v5.super_class = STLimitUsageGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v5 invalidate];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STLimitUsageGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"viewModel.isLocalOrRemotelyManagedUser" context:"STLimitUsageGroupSpecifierProviderObservationContext"];
  [coordinator removeObserver:self forKeyPath:@"viewModel.screenTimeEnabled" context:"STLimitUsageGroupSpecifierProviderObservationContext"];
  [coordinator removeObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.bedtime" context:"STLimitUsageGroupSpecifierProviderObservationContext"];
  [coordinator removeObserver:self forKeyPath:@"viewModel.hasWatchOSDevicesOnly"];
  v6.receiver = self;
  v6.super_class = STLimitUsageGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.isLocalOrRemotelyManagedUser" options:4 context:"STLimitUsageGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.bedtime" options:5 context:"STLimitUsageGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.screenTimeEnabled" options:4 context:"STLimitUsageGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.hasWatchOSDevicesOnly" options:5 context:"STLimitUsageGroupSpecifierProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == "STLimitUsageGroupSpecifierProviderObservationContext")
  {
    coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
    if ([pathCopy isEqualToString:@"timeAllowancesCoordinator.viewModel.bedtime"])
    {
      v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null = [MEMORY[0x277CBEB68] null];

      if (v13 == null)
      {

        v13 = 0;
      }

      [(STLimitUsageGroupSpecifierProvider *)self _deviceBedtimeDidChange:v13];
    }

    else
    {
      mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
      v16 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

      if ([pathCopy isEqualToString:@"viewModel.isLocalOrRemotelyManagedUser"])
      {
        coordinator2 = [(STRootGroupSpecifierProvider *)self coordinator];
        viewModel = [coordinator2 viewModel];
        v19 = [viewModel isLocalOrRemotelyManagedUser] ^ 1;
        if (v16 == 2)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        [(STGroupSpecifierProvider *)self setIsHidden:v20];
      }

      else if (([pathCopy isEqualToString:@"viewModel.screenTimeEnabled"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"viewModel.hasWatchOSDevicesOnly"))
      {
        [(STLimitUsageGroupSpecifierProvider *)self _isScreenTimeEnabledOrHasWatchOSDevicesOnlyDidChange];
      }
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = STLimitUsageGroupSpecifierProvider;
    [(STLimitUsageGroupSpecifierProvider *)&v21 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v8 = [viewModel isLocalOrRemotelyManagedUser] ^ 1;
  if (v6 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  [(STGroupSpecifierProvider *)self setIsHidden:v9];
}

- (void)_isScreenTimeEnabledOrHasWatchOSDevicesOnlyDidChange
{
  limitUsageSpecifers = [(STLimitUsageGroupSpecifierProvider *)self limitUsageSpecifers];
  mutableSpecifiers = [(STGroupSpecifierProvider *)self mutableSpecifiers];
  if (([limitUsageSpecifers isEqualToArray:mutableSpecifiers] & 1) == 0)
  {
    [mutableSpecifiers replaceObjectsInRange:0 withObjectsFromArray:{objc_msgSend(mutableSpecifiers, "count"), limitUsageSpecifers}];
  }
}

- (id)limitUsageSpecifers
{
  v21[3] = *MEMORY[0x277D85DE8];
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  isScreenTimeEnabled = [viewModel isScreenTimeEnabled];

  coordinator2 = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel2 = [coordinator2 viewModel];
  hasWatchOSDevicesOnly = [viewModel2 hasWatchOSDevicesOnly];

  v9 = MEMORY[0x277CBEB18];
  if (isScreenTimeEnabled)
  {
    deviceBedtimeSpecifier = [(STLimitUsageGroupSpecifierProvider *)self deviceBedtimeSpecifier];
    appAndWebsiteActivitySpecifier = deviceBedtimeSpecifier;
    if (hasWatchOSDevicesOnly)
    {
      v20[0] = deviceBedtimeSpecifier;
      alwaysAllowedSpecifier = [(STLimitUsageGroupSpecifierProvider *)self alwaysAllowedSpecifier];
      v20[1] = alwaysAllowedSpecifier;
      alwaysAllowedSpecifier2 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
      v14 = [v9 arrayWithArray:alwaysAllowedSpecifier2];
    }

    else
    {
      v21[0] = deviceBedtimeSpecifier;
      alwaysAllowedSpecifier = [(STLimitUsageGroupSpecifierProvider *)self appLimitsSpecifier];
      v21[1] = alwaysAllowedSpecifier;
      alwaysAllowedSpecifier2 = [(STLimitUsageGroupSpecifierProvider *)self alwaysAllowedSpecifier];
      v21[2] = alwaysAllowedSpecifier2;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
      v14 = [v9 arrayWithArray:v15];
    }
  }

  else
  {
    appAndWebsiteActivitySpecifier = [(STLimitUsageGroupSpecifierProvider *)self appAndWebsiteActivitySpecifier];
    v19 = appAndWebsiteActivitySpecifier;
    alwaysAllowedSpecifier = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v14 = [v9 arrayWithArray:alwaysAllowedSpecifier];
  }

  screenDistanceSpecifier = [(STLimitUsageGroupSpecifierProvider *)self screenDistanceSpecifier];

  if (screenDistanceSpecifier)
  {
    screenDistanceSpecifier2 = [(STLimitUsageGroupSpecifierProvider *)self screenDistanceSpecifier];
    [v14 addObject:screenDistanceSpecifier2];
  }

  return v14;
}

- (void)setUpAppAndWebsiteActivity:(id)activity
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  v5 = objc_opt_new();
  [(STLimitUsageGroupSpecifierProvider *)self setAppAndWebsiteActivityOnboardingController:v5];

  appAndWebsiteActivityOnboardingController = [(STLimitUsageGroupSpecifierProvider *)self appAndWebsiteActivityOnboardingController];
  rootViewController = [(STLimitUsageGroupSpecifierProvider *)self rootViewController];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__STLimitUsageGroupSpecifierProvider_setUpAppAndWebsiteActivity___block_invoke;
  v9[3] = &unk_279B7CC68;
  v10 = coordinator;
  v8 = coordinator;
  [appAndWebsiteActivityOnboardingController presentOverViewController:rootViewController completionBlock:v9];
}

uint64_t __65__STLimitUsageGroupSpecifierProvider_setUpAppAndWebsiteActivity___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) setScreenTimeEnabled:1 completionHandler:&__block_literal_global_0];
  }

  return result;
}

void __65__STLimitUsageGroupSpecifierProvider_setUpAppAndWebsiteActivity___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STUILog persistence];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __65__STLimitUsageGroupSpecifierProvider_setUpAppAndWebsiteActivity___block_invoke_2_cold_1(v2, v3);
    }
  }
}

- (void)scheduleDowntimeRefreshAndReloadSpecifiersForBedtime:(id)bedtime
{
  bedtimeCopy = bedtime;
  [(STLimitUsageGroupSpecifierProvider *)self scheduleDowntimeRefreshIfNeeded];
  [(STLimitUsageGroupSpecifierProvider *)self _refreshBedtimeSpecifiersForBedtime:bedtimeCopy];
}

- (void)scheduleDowntimeRefreshIfNeeded
{
  downtimeScheduleRefreshTimer = [(STLimitUsageGroupSpecifierProvider *)self downtimeScheduleRefreshTimer];

  if (downtimeScheduleRefreshTimer)
  {
    downtimeScheduleRefreshTimer2 = [(STLimitUsageGroupSpecifierProvider *)self downtimeScheduleRefreshTimer];
    [downtimeScheduleRefreshTimer2 invalidate];

    [(STLimitUsageGroupSpecifierProvider *)self setDowntimeScheduleRefreshTimer:0];
  }

  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
  [timeAllowancesCoordinator timeToNextExpectedStateChange];
  v8 = v7;

  if (v8 >= 0.0)
  {
    objc_initWeak(&location, self);
    v9 = MEMORY[0x277CBEBB8];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __69__STLimitUsageGroupSpecifierProvider_scheduleDowntimeRefreshIfNeeded__block_invoke;
    v14 = &unk_279B7CC90;
    objc_copyWeak(&v15, &location);
    v10 = [v9 scheduledTimerWithTimeInterval:0 repeats:&v11 block:v8];
    [(STLimitUsageGroupSpecifierProvider *)self setDowntimeScheduleRefreshTimer:v10, v11, v12, v13, v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __69__STLimitUsageGroupSpecifierProvider_scheduleDowntimeRefreshIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained coordinator];
  v4 = [v3 timeAllowancesCoordinator];
  v5 = [v4 viewModel];
  v7 = [v5 bedtime];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 scheduleDowntimeRefreshAndReloadSpecifiersForBedtime:v7];
}

- (void)_refreshBedtimeSpecifiersForBedtime:(id)bedtime
{
  bedtimeCopy = bedtime;
  deviceBedtimeSpecifier = [(STLimitUsageGroupSpecifierProvider *)self deviceBedtimeSpecifier];
  v15 = deviceBedtimeSpecifier;
  if (bedtimeCopy && (-[STRootGroupSpecifierProvider coordinator](self, "coordinator"), v6 = objc_claimAutoreleasedReturnValue(), [v6 viewModel], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isScreenTimeEnabled"), v7, v6, deviceBedtimeSpecifier = v15, (v8 & 1) != 0))
  {
    v9 = +[STScreenTimeSettingsUIBundle bundle];
    v10 = [v9 localizedStringForKey:@"DeviceDowntimeAlternateCustomScheduleDetailText" value:&stru_28766E5A8 table:0];

    [v15 setObject:v10 forKeyedSubscript:0x287678E68];
    [v15 setObject:&unk_28769CF98 forKeyedSubscript:0x287678E88];
  }

  else
  {
    [deviceBedtimeSpecifier removePropertyForKey:0x287678E68];
    [v15 removePropertyForKey:0x287678E88];
  }

  v11 = *MEMORY[0x277D40160];
  v12 = [v15 objectForKeyedSubscript:*MEMORY[0x277D40160]];
  v13 = [(STLimitUsageGroupSpecifierProvider *)self _subtitleTextForDeviceBedtime:bedtimeCopy];

  if (([v12 isEqualToString:v13] & 1) == 0)
  {
    [v15 setObject:v13 forKeyedSubscript:v11];
    [(STGroupSpecifierProvider *)self reloadSpecifier:v15 animated:0];
    v14 = [v15 propertyForKey:v11];
    if (([v14 isEqualToString:v13] & 1) == 0)
    {
      [(STGroupSpecifierProvider *)self reloadSpecifier:v15 animated:0];
    }
  }
}

- (id)_subtitleTextForDeviceBedtime:(id)bedtime
{
  bedtimeCopy = bedtime;
  v5 = +[STScreenTimeSettingsUIBundle bundle];
  if (!bedtimeCopy || (-[STRootGroupSpecifierProvider coordinator](self, "coordinator"), v6 = objc_claimAutoreleasedReturnValue(), [v6 viewModel], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isScreenTimeEnabled"), v7, v6, !v8))
  {
    v13 = @"DeviceDowntimeDetailText";
    goto LABEL_7;
  }

  deviceBedtimeEnabled = [bedtimeCopy deviceBedtimeEnabled];
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
  currentDowntimeState = [timeAllowancesCoordinator currentDowntimeState];

  if ((deviceBedtimeEnabled & 1) == 0)
  {
    if (currentDowntimeState == 4)
    {
      v13 = @"DeviceDowntimeStatusScheduleOffWithOverrideOn";
    }

    else
    {
      v13 = @"DeviceDowntimeDailyScheduleOff";
    }

    goto LABEL_7;
  }

  if (currentDowntimeState <= 4)
  {
    v13 = off_279B7CCD8[currentDowntimeState];
LABEL_7:
    v14 = [v5 localizedStringForKey:v13 value:&stru_28766E5A8 table:0];
    goto LABEL_8;
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (void)showDeviceBedtimeViewController:(id)controller
{
  controllerCopy = controller;
  if (![(STLimitUsageGroupSpecifierProvider *)self showDemoModeAlertIfNeeded])
  {
    v4 = objc_opt_new();
    coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
    timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
    viewModel = [timeAllowancesCoordinator viewModel];
    bedtime = [viewModel bedtime];
    [v4 setBedtime:bedtime];

    coordinator2 = [(STRootGroupSpecifierProvider *)self coordinator];
    viewModel2 = [coordinator2 viewModel];
    v11 = [viewModel2 me];
    [v4 setAffectedUser:v11];

    coordinator3 = [(STRootGroupSpecifierProvider *)self coordinator];
    [v4 setCanAskForMoreTime:{objc_msgSend(coordinator3, "isPasscodeEnabled")}];

    coordinator4 = [(STRootGroupSpecifierProvider *)self coordinator];
    [v4 setCoordinator:coordinator4];

    delegate = [(STGroupSpecifierProvider *)self delegate];
    [v4 setParentController:delegate];
    rootController = [delegate rootController];
    [v4 setRootController:rootController];

    [v4 setSpecifier:controllerCopy];
    [(STGroupSpecifierProvider *)self showController:v4 animated:1];
  }
}

- (id)appLimitsDetailText
{
  v2 = +[STScreenTimeSettingsUIBundle bundle];
  v3 = [v2 localizedStringForKey:@"AppLimitsDetailText" value:&stru_28766E5A8 table:0];

  return v3;
}

- (void)showAppLimitsViewController:(id)controller
{
  controllerCopy = controller;
  if (![(STLimitUsageGroupSpecifierProvider *)self showDemoModeAlertIfNeeded])
  {
    if (_os_feature_enabled_impl())
    {
      coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
      viewModel = [coordinator viewModel];
      v6 = [viewModel me];
      altDSID = [v6 altDSID];

      v8 = [[_TtC20ScreenTimeSettingsUI24STAppLimitViewController alloc] initWithAltDSID:altDSID];
      delegate = v8;
    }

    else
    {
      v8 = objc_opt_new();
      coordinator2 = [(STRootGroupSpecifierProvider *)self coordinator];
      [(STAppLimitViewController *)v8 setCoordinator:coordinator2];

      delegate = [(STGroupSpecifierProvider *)self delegate];
      [(STAppLimitViewController *)v8 setParentController:delegate];
      rootController = [delegate rootController];
      [(STAppLimitViewController *)v8 setRootController:rootController];

      [(STAppLimitViewController *)v8 setSpecifier:controllerCopy];
      altDSID = v8;
    }

    [(STGroupSpecifierProvider *)self showController:v8 animated:1];
  }
}

- (void)_hasWatchOSDevicesOnlyDidChange:(BOOL)change
{
  changeCopy = change;
  mutableSpecifiers = [(STGroupSpecifierProvider *)self mutableSpecifiers];
  appLimitsSpecifier = [(STLimitUsageGroupSpecifierProvider *)self appLimitsSpecifier];
  v6 = [mutableSpecifiers containsObject:appLimitsSpecifier];
  if (v6 && changeCopy)
  {
    [mutableSpecifiers removeObject:appLimitsSpecifier];
  }

  else if (((v6 | changeCopy) & 1) == 0)
  {
    deviceBedtimeSpecifier = [(STLimitUsageGroupSpecifierProvider *)self deviceBedtimeSpecifier];
    [mutableSpecifiers ps_insertObject:appLimitsSpecifier afterObject:deviceBedtimeSpecifier];
  }
}

- (id)alwaysAllowedDetailText
{
  v2 = +[STScreenTimeSettingsUIBundle bundle];
  v3 = [v2 localizedStringForKey:@"AlwaysAllowDetailText" value:&stru_28766E5A8 table:0];

  return v3;
}

- (void)showAlwaysAllowedViewController:(id)controller
{
  controllerCopy = controller;
  if (![(STLimitUsageGroupSpecifierProvider *)self showDemoModeAlertIfNeeded])
  {
    coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
    timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
    viewModel = [timeAllowancesCoordinator viewModel];

    v28 = viewModel;
    alwaysAllowList = [viewModel alwaysAllowList];
    if (!alwaysAllowList)
    {
      v9 = +[STUILog alwaysAllowed];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_264BA2000, v9, OS_LOG_TYPE_DEFAULT, "View model has no existing Always Allow list. Creating view controller with default Always Allow list.", buf, 2u);
      }

      alwaysAllowList = objc_opt_new();
    }

    v10 = objc_opt_new();
    [v10 setAlwaysAllowList:alwaysAllowList];
    v29 = coordinator;
    [v10 setCoordinator:coordinator];
    [v10 setDelegate:self];
    v11 = objc_opt_new();
    v12 = [MEMORY[0x277CF9650] systemUnblockableBundleIdentifiersForDeviceFamily:102];
    if (v12)
    {
      [v11 unionSet:v12];
    }

    else
    {
      v13 = objc_opt_new();
      [v11 unionSet:v13];
    }

    v14 = [MEMORY[0x277CF9650] systemBlockableBundleIdentifiersForDeviceFamily:102];
    if (v14)
    {
      [v11 unionSet:v14];
    }

    else
    {
      v15 = objc_opt_new();
      [v11 unionSet:v15];
    }

    v16 = [MEMORY[0x277CF9650] systemHiddenBundleIdentifiersForDeviceFamily:102];
    if (v16)
    {
      [v11 unionSet:v16];
    }

    else
    {
      v17 = objc_opt_new();
      [v11 unionSet:v17];
    }

    v18 = objc_alloc(MEMORY[0x277CBEB58]);
    allowedBundleIDs = [alwaysAllowList allowedBundleIDs];
    v20 = [v18 initWithArray:allowedBundleIDs];

    [v20 unionSet:v11];
    coordinator2 = [(STRootGroupSpecifierProvider *)self coordinator];
    viewModel2 = [coordinator2 viewModel];
    installedBundleIDs = [viewModel2 installedBundleIDs];

    [v10 setInstalledBundleIDs:installedBundleIDs];
    v24 = [installedBundleIDs mutableCopy];
    [v24 minusSet:v20];
    allObjects = [v24 allObjects];
    [v10 setChooseBundleIDs:allObjects];

    delegate = [(STGroupSpecifierProvider *)self delegate];
    [v10 setParentController:delegate];
    rootController = [delegate rootController];
    [v10 setRootController:rootController];

    [v10 setSpecifier:controllerCopy];
    [(STGroupSpecifierProvider *)self showController:v10 animated:1];
  }
}

- (void)alwaysAllowListController:(id)controller didFinishEditingAlwaysAllowList:(id)list
{
  listCopy = list;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __96__STLimitUsageGroupSpecifierProvider_alwaysAllowListController_didFinishEditingAlwaysAllowList___block_invoke;
  v8[3] = &unk_279B7CC18;
  v8[4] = self;
  [timeAllowancesCoordinator saveAlwaysAllowList:listCopy completionHandler:v8];
}

void __96__STLimitUsageGroupSpecifierProvider_alwaysAllowListController_didFinishEditingAlwaysAllowList___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) alwaysAllowedDetailText];
  v3 = [*(a1 + 32) alwaysAllowedSpecifier];
  [v3 setObject:v2 forKeyedSubscript:*MEMORY[0x277D40160]];

  v4 = *(a1 + 32);
  v5 = [v4 alwaysAllowedSpecifier];
  [v4 reloadSpecifier:v5 animated:1];
}

- (void)setUpScreenDistance:(id)distance
{
  v22 = *MEMORY[0x277D85DE8];
  distanceCopy = distance;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  eyeReliefCoordinator = [coordinator eyeReliefCoordinator];
  viewModel = [eyeReliefCoordinator viewModel];

  hasAcknowledgedIntroScreens = [viewModel hasAcknowledgedIntroScreens];
  v9 = +[STUILog eyeRelief];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    isEyeReliefEnabled = [viewModel isEyeReliefEnabled];
    v11 = @"no";
    if (isEyeReliefEnabled)
    {
      v12 = @"yes";
    }

    else
    {
      v12 = @"no";
    }

    if (hasAcknowledgedIntroScreens)
    {
      v11 = @"yes";
    }

    *buf = 138412546;
    v19 = v12;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_264BA2000, v9, OS_LOG_TYPE_DEFAULT, "isEyeReliefEnabled: %@, hasAcknowledgedIntroScreens: %@", buf, 0x16u);
  }

  if ((([viewModel isEyeReliefEnabled] | hasAcknowledgedIntroScreens) & 1) != 0 && (objc_msgSend(viewModel, "inDemoMode") & 1) == 0)
  {
    if ((hasAcknowledgedIntroScreens & 1) == 0)
    {
      [viewModel acknowledgeIntroScreens];
    }

    [(STLimitUsageGroupSpecifierProvider *)self showScreenDistanceViewController:distanceCopy];
  }

  else
  {
    v13 = [[STEyeReliefOnboardingController alloc] initWithCoordinator:coordinator];
    [(STLimitUsageGroupSpecifierProvider *)self setEyeReliefOnboardingController:v13];

    objc_initWeak(buf, self);
    eyeReliefOnboardingController = [(STLimitUsageGroupSpecifierProvider *)self eyeReliefOnboardingController];
    rootViewController = [(STLimitUsageGroupSpecifierProvider *)self rootViewController];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__STLimitUsageGroupSpecifierProvider_setUpScreenDistance___block_invoke;
    v16[3] = &unk_279B7CCB8;
    objc_copyWeak(&v17, buf);
    [eyeReliefOnboardingController presentOverViewController:rootViewController completionHandler:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __58__STLimitUsageGroupSpecifierProvider_setUpScreenDistance___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a2 == 1)
    {
      v14 = WeakRetained;
      v10 = [WeakRetained coordinator];
      v11 = [v10 eyeReliefCoordinator];
      [v11 persistEyeReliefState:0];

      v9 = [v14 coordinator];
      v12 = [v9 eyeReliefCoordinator];
      v13 = [v12 viewModel];
      [v13 acknowledgeIntroScreens];
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_7;
      }

      v14 = WeakRetained;
      v4 = [WeakRetained coordinator];
      v5 = [v4 eyeReliefCoordinator];
      [v5 persistEyeReliefState:1];

      v6 = [v14 coordinator];
      v7 = [v6 eyeReliefCoordinator];
      v8 = [v7 viewModel];
      [v8 acknowledgeIntroScreens];

      v9 = [v14 screenDistanceSpecifier];
      [v14 showScreenDistanceViewController:v9];
    }

    WeakRetained = v14;
  }

LABEL_7:
}

- (void)showScreenDistanceViewController:(id)controller
{
  controllerCopy = controller;
  if (![(STLimitUsageGroupSpecifierProvider *)self showDemoModeAlertIfNeeded])
  {
    v4 = objc_opt_new();
    coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
    [v4 setCoordinator:coordinator];

    delegate = [(STGroupSpecifierProvider *)self delegate];
    [v4 setParentController:delegate];
    rootController = [delegate rootController];
    [v4 setRootController:rootController];

    [v4 setSpecifier:controllerCopy];
    [(STGroupSpecifierProvider *)self showController:v4 animated:1];
  }
}

- (BOOL)showDemoModeAlertIfNeeded
{
  isRunningInStoreDemoMode = [MEMORY[0x277D75128] isRunningInStoreDemoMode];
  if (isRunningInStoreDemoMode)
  {
    [(STGroupSpecifierProvider *)self showStoreDemoAlert];
  }

  return isRunningInStoreDemoMode;
}

- (UIViewController)rootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootViewController);

  return WeakRetained;
}

void __65__STLimitUsageGroupSpecifierProvider_setUpAppAndWebsiteActivity___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_264BA2000, a2, OS_LOG_TYPE_FAULT, "failed to set screen time enabled: %{public}@", &v2, 0xCu);
}

@end