@interface SBLowPowerAlertItem
+ (BOOL)_shouldIgnoreChangeToBatteryLevel:(unsigned int)level;
+ (unsigned)_thresholdForLevel:(unsigned int)level;
+ (void)initialize;
+ (void)setBatteryLevel:(unsigned int)level;
- (BOOL)_isLowPowerModeEnabled;
- (BOOL)shouldShowInLockScreen;
- (SBLowPowerAlertItem)init;
- (SBLowPowerAlertItem)initWithLevel:(unsigned int)level;
- (id)_batteryPercentageString;
- (id)_createSystemApertureElement;
- (id)_enableLowPowerModeActionTitle;
- (id)_lowBatteryTitle;
- (void)_didDeactivateForDismissAction;
- (void)_enableLowPowerModeActionTriggered;
- (void)_setLowPowerMode:(BOOL)mode;
- (void)_toggleLowPowerMode;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
- (void)didDeactivateForReason:(int)reason;
@end

@implementation SBLowPowerAlertItem

- (SBLowPowerAlertItem)init
{
  v5.receiver = self;
  v5.super_class = SBLowPowerAlertItem;
  v2 = [(SBAlertItem *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SBAlertItem *)v2 setAllowInSetup:1];
    [(SBAlertItem *)v3 setAllowInCar:1];
    [(SBAlertItem *)v3 setAllowMessageInCar:0];
  }

  return v3;
}

- (SBLowPowerAlertItem)initWithLevel:(unsigned int)level
{
  v4 = [(SBLowPowerAlertItem *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_talkLevel = level;
    [(SBLowPowerAlertItem *)v4 setShowFindMyAlert:0];
  }

  return v5;
}

+ (void)initialize
{
  lowBatteryLevel = [MEMORY[0x277D75A78] lowBatteryLevel];
  __WarnLevelThresholds[0] = lowBatteryLevel / 2;
  *algn_28125077C = lowBatteryLevel;
}

+ (unsigned)_thresholdForLevel:(unsigned int)level
{
  result = 2;
  do
  {
    if (__WarnLevelThresholds[result - 1] < level)
    {
      break;
    }

    --result;
  }

  while (result);
  return result;
}

+ (BOOL)_shouldIgnoreChangeToBatteryLevel:(unsigned int)level
{
  v4 = +[SBUIController sharedInstance];
  isBatteryCharging = [v4 isBatteryCharging];
  v6 = __LastBatteryLevel;

  if (isBatteryCharging)
  {
    v7 = v6 > level;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v11 = __LastBatteryLevel - level >= 3;
  }

  else
  {
    mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
    hasGasGauge = [mEMORY[0x277CF0CA8] hasGasGauge];

    if (hasGasGauge)
    {
      return 0;
    }

    v12 = __LastBatteryLevel - level;
    if ((__LastBatteryLevel - level) < 0)
    {
      v12 = level - __LastBatteryLevel;
    }

    v11 = v12 >= 2;
  }

  return !v11;
}

+ (void)setBatteryLevel:(unsigned int)level
{
  v3 = *&level;
  if (([self _shouldIgnoreChangeToBatteryLevel:?] & 1) == 0)
  {
    v5 = [self _thresholdForLevel:v3];
    v6 = __LastWarnThreshold;
    v7 = +[SBAlertItemsController sharedInstance];
    if (v5 == v6)
    {
      v8 = [v7 alertItemsOfClass:objc_opt_class()];

      if (v8 && [v8 count])
      {
        allObjects = [v8 allObjects];
        firstObject = [allObjects firstObject];
        v11 = objc_opt_class();
        v12 = firstObject;
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

        v28 = v13;

        _existingSystemApertureElement = [v28 _existingSystemApertureElement];

        v30 = objc_opt_class();
        v31 = _existingSystemApertureElement;
        if (v30)
        {
          if (objc_opt_isKindOfClass())
          {
            v32 = v31;
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v32 = 0;
        }

        v33 = v32;

        [v33 setBatteryPercentage:v3 / 100.0];
      }

      goto LABEL_29;
    }

    [v7 deactivateAlertItemsOfClass:objc_opt_class()];

    v14 = +[SBDefaults localDefaults];
    powerDefaults = [v14 powerDefaults];
    hideLowPowerAlerts = [powerDefaults hideLowPowerAlerts];

    if (v5 <= 1 && v5 < __LastWarnThreshold)
    {
      if (__LastBatteryLevel == 100)
      {
        v17 = +[SBUIController sharedInstance];
        isBatteryCharging = [v17 isBatteryCharging];

        if ((isBatteryCharging | hideLowPowerAlerts))
        {
          goto LABEL_29;
        }

LABEL_15:
        v19 = [[SBLowPowerAlertItem alloc] initWithLevel:__WarnLevelThresholds[v5]];
        v20 = objc_alloc_init(MEMORY[0x277D49638]);
        [(SBLowPowerAlertItem *)v19 setBeaconManager:v20];
        v34 = MEMORY[0x277D85DD0];
        v35 = 3221225472;
        v36 = __39__SBLowPowerAlertItem_setBatteryLevel___block_invoke;
        v37 = &unk_2783AF318;
        v39 = v5 ^ 1;
        v21 = v19;
        v38 = v21;
        [v20 userHasAcknowledgeFindMyWithCompletion:&v34];
        v22 = [SBAlertItemsController sharedInstance:v34];
        [v22 activateAlertItem:v21];

        if (!v5)
        {
          v23 = +[SBTelephonyManager sharedTelephonyManager];
          inCall = [v23 inCall];

          if (inCall)
          {
            AudioServicesPlaySystemSoundWithCompletion(0x3EEu, 0);
          }
        }

        v25 = +[SBModelessSyncController sharedInstance];
        isSyncing = [v25 isSyncing];

        if (isSyncing)
        {
          v27 = +[SBModelessSyncController sharedInstance];
          [v27 gotLowBatteryWarning];
        }

        goto LABEL_29;
      }

      if ((hideLowPowerAlerts & 1) == 0)
      {
        goto LABEL_15;
      }
    }

LABEL_29:
    __LastBatteryLevel = v3;
    __LastWarnThreshold = v5;
  }
}

void __39__SBLowPowerAlertItem_setBatteryLevel___block_invoke(uint64_t a1, char a2)
{
  v2 = (a2 ^ 1) & *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__SBLowPowerAlertItem_setBatteryLevel___block_invoke_2;
  v3[3] = &unk_2783A9F58;
  v4 = *(a1 + 32);
  v5 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __39__SBLowPowerAlertItem_setBatteryLevel___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setBeaconManager:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setShowFindMyAlert:v3];
}

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v6 = [(SBAlertItem *)self alertController:configure];
  _lowBatteryTitle = [(SBLowPowerAlertItem *)self _lowBatteryTitle];
  [v6 setTitle:_lowBatteryTitle];

  _batteryPercentageString = [(SBLowPowerAlertItem *)self _batteryPercentageString];
  v9 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [mainBundle localizedStringForKey:@"LOW_BATT_MSG_LEVEL" value:&stru_283094718 table:@"SpringBoard"];
  v12 = [v9 stringWithFormat:v11, _batteryPercentageString];

  v13 = +[SBModelessSyncController sharedInstance];
  if ([v13 isSyncing])
  {
    if ([v13 isWirelessSyncing])
    {
      if ([v13 isAutoSyncing])
      {
        v14 = @"AUTO_%@_SYNC_LOW_POWER";
      }

      else
      {
        v14 = @"%@_SYNC_LOW_POWER";
      }
    }

    else
    {
      v14 = @"SYNC_LOW_POWER";
    }

    v15 = MGGetBoolAnswer();
    v16 = @"WIFI";
    if (v15)
    {
      v16 = @"WLAN";
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:v14, v16];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v19 = [mainBundle2 localizedStringForKey:v17 value:&stru_283094718 table:@"SpringBoard"];
    v20 = [v12 stringByAppendingFormat:@" %@", v19];

    v12 = v20;
  }

  [v6 setMessage:v12];
  if (!configure)
  {
    if ([(SBLowPowerAlertItem *)self _supportsLowPowerMode]&& ![(SBLowPowerAlertItem *)self _isLowPowerModeEnabled])
    {
      v22 = MEMORY[0x277D750F8];
      _enableLowPowerModeActionTitle = [(SBLowPowerAlertItem *)self _enableLowPowerModeActionTitle];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __59__SBLowPowerAlertItem_configure_requirePasscodeForActions___block_invoke;
      v30[3] = &unk_2783A8A40;
      v30[4] = self;
      v24 = [v22 actionWithTitle:_enableLowPowerModeActionTitle style:0 handler:v30];
      [v6 addAction:v24];

      v21 = 1;
    }

    else
    {
      v21 = 0;
    }

    [(SBLowPowerAlertItem *)self setHasEnableLowPowerModeAction:v21];
    v25 = MEMORY[0x277D750F8];
    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v27 = [mainBundle3 localizedStringForKey:@"CLOSE" value:&stru_283094718 table:@"SpringBoard"];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __59__SBLowPowerAlertItem_configure_requirePasscodeForActions___block_invoke_2;
    v29[3] = &unk_2783A8A40;
    v29[4] = self;
    v28 = [v25 actionWithTitle:v27 style:v21 handler:v29];
    [v6 addAction:v28];
  }
}

uint64_t __59__SBLowPowerAlertItem_configure_requirePasscodeForActions___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) deactivateForButton];
  v2 = *(a1 + 32);

  return [v2 _didDeactivateForDismissAction];
}

- (void)didDeactivateForReason:(int)reason
{
  v5.receiver = self;
  v5.super_class = SBLowPowerAlertItem;
  [(SBAlertItem *)&v5 didDeactivateForReason:?];
  if (reason != 3)
  {
    [(SBLowPowerAlertItem *)self _didDeactivateForDismissAction];
  }
}

- (id)_createSystemApertureElement
{
  _isLowPowerModeEnabled = [(SBLowPowerAlertItem *)self _isLowPowerModeEnabled];
  v4 = [(SBLowPowerAlertItem *)self _supportsLowPowerMode]& !_isLowPowerModeEnabled;
  if (v4 == 1)
  {
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __51__SBLowPowerAlertItem__createSystemApertureElement__block_invoke;
    v13 = &unk_2783A8C68;
    objc_copyWeak(&v14, &location);
    v5 = MEMORY[0x223D6F7F0](&v10);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = 0;
  }

  [(SBLowPowerAlertItem *)self setHasEnableLowPowerModeAction:v4, v10, v11, v12, v13];
  v6 = [SBPowerAlertElement alloc];
  LODWORD(v7) = self->_talkLevel;
  v8 = [(SBPowerAlertElement *)v6 initWithIdentifier:self style:1 batteryPercentage:_isLowPowerModeEnabled lowPowerModeEnabled:v5 action:v7 / 100.0];

  return v8;
}

void __51__SBLowPowerAlertItem__createSystemApertureElement__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleLowPowerMode];
}

- (void)_enableLowPowerModeActionTriggered
{
  [(SBLowPowerAlertItem *)self _enableLowPowerMode];
  [(SBAlertItem *)self deactivateForButton];
  if ([(SBLowPowerAlertItem *)self showFindMyAlert])
  {

    +[SBLowPowerFindMyAlertItem showFindMyAlert];
  }
}

- (void)_didDeactivateForDismissAction
{
  if ([(SBLowPowerAlertItem *)self showFindMyAlert])
  {

    +[SBLowPowerFindMyAlertItem showFindMyAlert];
  }
}

- (void)_toggleLowPowerMode
{
  v3 = [(SBLowPowerAlertItem *)self _isLowPowerModeEnabled]^ 1;

  [(SBLowPowerAlertItem *)self _setLowPowerMode:v3];
}

- (void)_setLowPowerMode:(BOOL)mode
{
  modeCopy = mode;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__17;
  v13 = __Block_byref_object_dispose__17;
  mEMORY[0x277D244D8] = [MEMORY[0x277D244D8] sharedInstance];
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Set low power mode", buf, 2u);
  }

  v5 = v10[5];
  v6 = *MEMORY[0x277D244F0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SBLowPowerAlertItem__setLowPowerMode___block_invoke;
  v7[3] = &unk_2783AF340;
  v7[4] = &v9;
  [v5 setPowerMode:modeCopy fromSource:v6 withCompletion:v7];
  _Block_object_dispose(&v9, 8);
}

void __40__SBLowPowerAlertItem__setLowPowerMode___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Switch to LPM complete. Success=%d error: %@", v9, 0x12u);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

- (BOOL)shouldShowInLockScreen
{
  notificationDispatcher = [SBApp notificationDispatcher];
  isCarDestinationActive = [notificationDispatcher isCarDestinationActive];

  return isCarDestinationActive;
}

- (id)_lowBatteryTitle
{
  notificationDispatcher = [SBApp notificationDispatcher];
  isCarDestinationActive = [notificationDispatcher isCarDestinationActive];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = mainBundle;
  if (isCarDestinationActive)
  {
    v6 = @"PHONE_LOW_BATT_TITLE";
  }

  else
  {
    v6 = @"LOW_BATT_TITLE";
  }

  v7 = [mainBundle localizedStringForKey:v6 value:&stru_283094718 table:@"SpringBoard"];

  return v7;
}

- (id)_batteryPercentageString
{
  v3 = SBApp;
  LODWORD(v2) = self->_talkLevel;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:v2 / 100.0];
  v5 = [v3 formattedPercentStringForNumber:v4];

  return v5;
}

- (BOOL)_isLowPowerModeEnabled
{
  mEMORY[0x277D244D8] = [MEMORY[0x277D244D8] sharedInstance];
  v3 = [mEMORY[0x277D244D8] getPowerMode] == 1;

  return v3;
}

- (id)_enableLowPowerModeActionTitle
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"ENABLE_LOW_POWER" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

@end