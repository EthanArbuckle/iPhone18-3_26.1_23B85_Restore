@interface AXVisualAlertManager
+ (void)initialize;
- (AXVisualAlertManager)init;
- (BOOL)_hasVideoConferenceCameraTorchManager;
- (BOOL)_isCameraInUse;
- (BOOL)_isRingerSwitchException:(unint64_t)exception;
- (BOOL)_shouldHandleVisualAlertsForVideoConferenceCallsInConferenceFramework;
- (BOOL)_supportsVisualAlertsForVideoConferenceCalls;
- (NSDictionary)_patterns;
- (NSString)description;
- (id)_normalizedStrobePatternForOriginalPattern:(id)pattern;
- (id)existingBulletinForBulletin:(id)bulletin;
- (void)_endVisualAlert;
- (void)_handleBeginVisualAlertForAlarmWithSound:(BOOL)sound;
- (void)_handleBeginVisualAlertForIncomingCall;
- (void)_handleBeginVisualAlertForIncomingVideoConferenceCall;
- (void)_handleDeviceWasLocked;
- (void)_handleDeviceWasUnlocked;
- (void)_handleEndVisualAlertForAlarm;
- (void)_handleEndVisualAlertForIncomingCall;
- (void)_handleEndVisualAlertForIncomingVideoConferenceCall;
- (void)_handleLockButtonPressed;
- (void)_handleQuietModeWasEnabled;
- (void)_handleRingerSwitchToggled;
- (void)_handleSecondaryVisualAlertManagerDidStart;
- (void)_handleTorchInControlCenterWasEnabled;
- (void)_handleVideoConferenceCallRinging;
- (void)_handleVisualAlertForExternalApplication;
- (void)_handleVisualAlertForIncomingMessage;
- (void)_handleVisualAlertForRegularNotification:(id)notification;
- (void)_handleVolumeChanged;
- (void)_insertCustomLogicForSystemWideServer;
- (void)_processNextVisualAlertComponent;
- (void)_setTorchDeviceOn:(BOOL)on withCompletion:(id)completion;
- (void)_setTorchDeviceOpen:(BOOL)open withCompletion:(id)completion;
- (void)_springBoardLockButtonPress:(id)press;
- (void)_springBoardLockStateChange:(id)change;
- (void)_springBoardVolumeChange:(id)change;
- (void)_startForAlertTypes:(unint64_t)types cameraTorchManager:(id)manager;
- (void)_stop;
- (void)addBulletin:(id)bulletin;
- (void)dealloc;
- (void)handleBulletinWithSectionID:(id)d;
- (void)startForAlertTypes:(unint64_t)types cameraTorchManager:(id)manager;
- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update;
@end

@implementation AXVisualAlertManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _VisualAlertManager = objc_opt_new();

    MEMORY[0x2821F96F8]();
  }
}

- (AXVisualAlertManager)init
{
  v11.receiver = self;
  v11.super_class = AXVisualAlertManager;
  v2 = [(AXVisualAlertManager *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CE6950]);
    v4 = MEMORY[0x277D85CD0];
    v5 = [v3 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
    timer = v2->_timer;
    v2->_timer = v5;

    [(AXDispatchTimer *)v2->_timer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v7 = [objc_alloc(MEMORY[0x277CE6950]) initWithTargetSerialQueue:v4];
    torchForceShutdownTimer = v2->_torchForceShutdownTimer;
    v2->_torchForceShutdownTimer = v7;

    IsSpringBoard = AXProcessIsSpringBoard();
    AXPrintLine();
    if (AXProcessIsSpringBoard())
    {
      [(AXVisualAlertManager *)v2 _insertCustomLogicForSystemWideServer];
    }
  }

  return v2;
}

- (void)dealloc
{
  [(AXVisualAlertManager *)self _stop];
  v3.receiver = self;
  v3.super_class = AXVisualAlertManager;
  [(AXVisualAlertManager *)&v3 dealloc];
}

- (void)addBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  bulletins = self->_bulletins;
  v8 = bulletinCopy;
  if (!bulletins)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_bulletins;
    self->_bulletins = v6;

    bulletinCopy = v8;
    bulletins = self->_bulletins;
  }

  [(NSMutableArray *)bulletins axSafelyAddObject:bulletinCopy];
}

- (id)existingBulletinForBulletin:(id)bulletin
{
  v20 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_bulletins;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        sectionIdentifier = [v9 sectionIdentifier];
        sectionIdentifier2 = [bulletinCopy sectionIdentifier];
        v12 = [sectionIdentifier isEqualToString:sectionIdentifier2];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_setTorchDeviceOpen:(BOOL)open withCompletion:(id)completion
{
  openCopy = open;
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_torchDeviceOpen == openCopy)
  {
    if (completionCopy)
    {
      v8 = dispatch_get_global_queue(0, 0);
      dispatch_async(v8, v7);
    }
  }

  else
  {
    self->_torchDeviceOpen = openCopy;
    if (openCopy)
    {
      mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

      if ((ignoreLogging & 1) == 0)
      {
        identifier = [MEMORY[0x277CE6998] identifier];
        v12 = AXLoggerForFacility();

        v13 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = AXColorizeFormatLog();
          v15 = _AXStringForArgs();
          if (os_log_type_enabled(v12, v13))
          {
            *buf = 138543362;
            v28 = v15;
            _os_log_impl(&dword_27102A000, v12, v13, "%{public}@", buf, 0xCu);
          }
        }
      }

      asyncManagerAdapter = self->_asyncManagerAdapter;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __59__AXVisualAlertManager__setTorchDeviceOpen_withCompletion___block_invoke;
      v25[3] = &unk_279E2C5D8;
      v26 = v7;
      [(AXCameraTorchManagerBackgroundAdapter *)asyncManagerAdapter openTorchDeviceWithCompletion:v25];
    }

    else
    {
      [(AXCameraTorchManagerBackgroundAdapter *)self->_asyncManagerAdapter closeTorchDeviceWithCompletion:completionCopy];
      mEMORY[0x277CE6998]2 = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging2 = [mEMORY[0x277CE6998]2 ignoreLogging];

      if ((ignoreLogging2 & 1) == 0)
      {
        identifier2 = [MEMORY[0x277CE6998] identifier];
        v20 = AXLoggerForFacility();

        v21 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = AXColorizeFormatLog();
          v23 = _AXStringForArgs();
          if (os_log_type_enabled(v20, v21))
          {
            *buf = 138543362;
            v28 = v23;
            _os_log_impl(&dword_27102A000, v20, v21, "%{public}@", buf, 0xCu);
          }
        }
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __59__AXVisualAlertManager__setTorchDeviceOpen_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_setTorchDeviceOn:(BOOL)on withCompletion:(id)completion
{
  onCopy = on;
  v33 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_torchDeviceOn == onCopy)
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v11 = AXLoggerForFacility();

      v12 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = AXColorizeFormatLog();
        v14 = _AXStringForArgs();
        if (os_log_type_enabled(v11, v12))
        {
          *buf = 138543362;
          v32 = v14;
          _os_log_impl(&dword_27102A000, v11, v12, "%{public}@", buf, 0xCu);
        }
      }
    }

    if (v7)
    {
      v15 = dispatch_get_global_queue(0, 0);
      dispatch_async(v15, v7);
    }
  }

  else
  {
    self->_torchDeviceOn = onCopy;
    if (onCopy)
    {
      mEMORY[0x277CE6998]2 = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging2 = [mEMORY[0x277CE6998]2 ignoreLogging];

      if ((ignoreLogging2 & 1) == 0)
      {
        identifier2 = [MEMORY[0x277CE6998] identifier];
        v19 = AXLoggerForFacility();

        v20 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = AXColorizeFormatLog();
          CFAbsoluteTimeGetCurrent();
          v22 = _AXStringForArgs();
          if (os_log_type_enabled(v19, v20))
          {
            *buf = 138543362;
            v32 = v22;
            _os_log_impl(&dword_27102A000, v19, v20, "%{public}@", buf, 0xCu);
          }
        }
      }

      asyncManagerAdapter = self->_asyncManagerAdapter;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __57__AXVisualAlertManager__setTorchDeviceOn_withCompletion___block_invoke;
      v29[3] = &unk_279E2C588;
      v29[4] = self;
      v30 = v7;
      [(AXCameraTorchManagerBackgroundAdapter *)asyncManagerAdapter turnTorchOnWithCompletion:v29];
      v24 = v30;
    }

    else
    {
      v25 = self->_asyncManagerAdapter;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __57__AXVisualAlertManager__setTorchDeviceOn_withCompletion___block_invoke_562;
      v27[3] = &unk_279E2C588;
      v27[4] = self;
      v28 = completionCopy;
      [(AXCameraTorchManagerBackgroundAdapter *)v25 turnTorchOffWithCompletion:v27];
      v24 = v28;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __57__AXVisualAlertManager__setTorchDeviceOn_withCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE6998] sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v5 = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = *(a1 + 32);
      CFAbsoluteTimeGetCurrent();
      v10 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v14 = v10;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, v4);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __57__AXVisualAlertManager__setTorchDeviceOn_withCompletion___block_invoke_562(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE6998] sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v5 = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = *(a1 + 32);
      CFAbsoluteTimeGetCurrent();
      v10 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v14 = v10;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, v4);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSDictionary)_patterns
{
  patterns = self->_patterns;
  if (!patterns)
  {
    v4 = objc_alloc(MEMORY[0x277CBEAC0]);
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 URLForResource:@"AXVisualAlertPatterns" withExtension:@"plist"];
    v7 = [v4 initWithContentsOfURL:v6];
    v8 = self->_patterns;
    self->_patterns = v7;

    patterns = self->_patterns;
  }

  return patterns;
}

- (NSString)description
{
  synchronousTorchManager = [(AXCameraTorchManagerBackgroundAdapter *)self->_asyncManagerAdapter synchronousTorchManager];
  v4 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = AXVisualAlertManager;
  v5 = [(AXVisualAlertManager *)&v10 description];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@ (camera torch manager: <%@: %p>)", v5, v7, synchronousTorchManager];

  return v8;
}

- (void)_springBoardLockButtonPress:(id)press
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"AXVisualAlertLockButtonPressedNotification" object:0];
}

- (void)_springBoardVolumeChange:(id)change
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"AXVisualAlertVolumeChangeNotification" object:0];
}

- (void)_springBoardLockStateChange:(id)change
{
  v18[1] = *MEMORY[0x277D85DE8];
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v5 = getkSBNotificationKeyDeviceLockStateSymbolLoc_ptr;
  v16 = getkSBNotificationKeyDeviceLockStateSymbolLoc_ptr;
  if (!getkSBNotificationKeyDeviceLockStateSymbolLoc_ptr)
  {
    v6 = SpringBoardUILibrary();
    v14[3] = dlsym(v6, "kSBNotificationKeyDeviceLockState");
    getkSBNotificationKeyDeviceLockStateSymbolLoc_ptr = v14[3];
    v5 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v5)
  {
    [AXVisualAlertManager _springBoardLockStateChange:];
  }

  v7 = [userInfo objectForKey:*v5];
  bOOLValue = [v7 BOOLValue];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v17 = @"AXVisualAlertLockStateKey";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
  v18[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [defaultCenter postNotificationName:@"AXVisualAlertLockStateChangeNotification" object:0 userInfo:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_startForAlertTypes:(unint64_t)types cameraTorchManager:(id)manager
{
  v96 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  [(AXVisualAlertManager *)self _stop];
  self->_alertTypes = types;
  asyncManagerAdapter = self->_asyncManagerAdapter;
  self->_asyncManagerAdapter = 0;

  if (managerCopy)
  {
    v78 = managerCopy;
    v8 = [[AXCameraTorchManagerBackgroundAdapter alloc] initWithCameraTorchManager:managerCopy];
    v9 = self->_asyncManagerAdapter;
    self->_asyncManagerAdapter = v8;

    v10 = objc_opt_new();
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke;
    v87[3] = &unk_279E2C628;
    v87[4] = self;
    v82 = MEMORY[0x2743BB9E0](v87);
    alertTypes = self->_alertTypes;
    if (alertTypes)
    {
      v12 = [AXTelephonyNotificationHandler alloc];
      v13 = [(VISAXNotificationHandler *)v12 initWithNotificationName:*MEMORY[0x277D6EFF0] target:self dispatcher:v82];
      [v10 addObject:v13];
      v14 = [AXTelephonyNotificationHandler alloc];
      v15 = [(VISAXNotificationHandler *)v14 initWithNotificationName:*MEMORY[0x277D6EFE8] target:self dispatcher:&__block_literal_global_600];

      [v10 addObject:v15];
      alertTypes = self->_alertTypes;
    }

    if ((alertTypes & 2) != 0)
    {
      v16 = [AXTelephonyNotificationHandler alloc];
      v17 = [(VISAXNotificationHandler *)v16 initWithNotificationName:*MEMORY[0x277D6F038] target:self dispatcher:v82];
      [v10 addObject:v17];
      v18 = [AXTelephonyNotificationHandler alloc];
      v19 = [(VISAXNotificationHandler *)v18 initWithNotificationName:*MEMORY[0x277D6EFE8] target:self dispatcher:&__block_literal_global_600];

      [v10 addObject:v19];
      alertTypes = self->_alertTypes;
    }

    if ((alertTypes & 3) != 0)
    {
      v20 = [AXTelephonyNotificationHandler alloc];
      v21 = [(VISAXNotificationHandler *)v20 initWithNotificationName:*MEMORY[0x277D6F0D8] target:self dispatcher:&__block_literal_global];
      [v10 addObject:v21];

      alertTypes = self->_alertTypes;
    }

    if ((alertTypes & 0x10) != 0)
    {
      v22 = [(VISAXNotificationHandler *)[AXDistributedNotificationHandler alloc] initWithNotificationName:@"AXVisualAlert" target:self handler:sel__handleVisualAlertForExternalApplication];
      [v10 addObject:v22];
    }

    if (AXProcessIsSpringBoard())
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v88 = 0;
      v89 = &v88;
      v90 = 0x2020000000;
      v24 = getSBLockButtonPressedNotificationSymbolLoc_ptr;
      v91 = getSBLockButtonPressedNotificationSymbolLoc_ptr;
      if (!getSBLockButtonPressedNotificationSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v93 = __getSBLockButtonPressedNotificationSymbolLoc_block_invoke;
        v94 = &unk_279E2C600;
        v95 = &v88;
        v25 = SpringBoardUILibrary();
        v26 = dlsym(v25, "SBLockButtonPressedNotification");
        *(v95[1] + 24) = v26;
        getSBLockButtonPressedNotificationSymbolLoc_ptr = *(v95[1] + 24);
        v24 = v89[3];
      }

      _Block_object_dispose(&v88, 8);
      if (!v24)
      {
        [AXVisualAlertManager _startForAlertTypes:cameraTorchManager:];
      }

      [defaultCenter addObserver:self selector:sel__springBoardLockButtonPress_ name:*v24 object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      v88 = 0;
      v89 = &v88;
      v90 = 0x2020000000;
      v28 = getSBVolumeButtonPressedNotificationSymbolLoc_ptr;
      v91 = getSBVolumeButtonPressedNotificationSymbolLoc_ptr;
      if (!getSBVolumeButtonPressedNotificationSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v93 = __getSBVolumeButtonPressedNotificationSymbolLoc_block_invoke;
        v94 = &unk_279E2C600;
        v95 = &v88;
        v29 = SpringBoardUILibrary();
        v30 = dlsym(v29, "SBVolumeButtonPressedNotification");
        *(v95[1] + 24) = v30;
        getSBVolumeButtonPressedNotificationSymbolLoc_ptr = *(v95[1] + 24);
        v28 = v89[3];
      }

      _Block_object_dispose(&v88, 8);
      if (!v28)
      {
        [AXVisualAlertManager _startForAlertTypes:cameraTorchManager:];
      }

      [defaultCenter2 addObserver:self selector:sel__springBoardVolumeChange_ name:*v28 object:0];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      v88 = 0;
      v89 = &v88;
      v90 = 0x2020000000;
      v32 = getSBDeviceLockStateChangedNotificationSymbolLoc_ptr;
      v91 = getSBDeviceLockStateChangedNotificationSymbolLoc_ptr;
      if (!getSBDeviceLockStateChangedNotificationSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v93 = __getSBDeviceLockStateChangedNotificationSymbolLoc_block_invoke;
        v94 = &unk_279E2C600;
        v95 = &v88;
        v33 = SpringBoardUILibrary();
        v34 = dlsym(v33, "SBDeviceLockStateChangedNotification");
        *(v95[1] + 24) = v34;
        getSBDeviceLockStateChangedNotificationSymbolLoc_ptr = *(v95[1] + 24);
        v32 = v89[3];
      }

      _Block_object_dispose(&v88, 8);
      if (!v32)
      {
        [AXVisualAlertManager _startForAlertTypes:cameraTorchManager:];
      }

      [defaultCenter3 addObserver:self selector:sel__springBoardLockStateChange_ name:*v32 object:0];
    }

    v81 = [[AXAutoForwardingLocalNotificationHandler alloc] initWithNotificationName:@"AXVisualAlertLockButtonPressedNotification" target:self handler:sel__handleLockButtonPressed];
    [v10 addObject:v81];
    v80 = [[AXAutoForwardingLocalNotificationHandler alloc] initWithNotificationName:@"AXVisualAlertVolumeChangeNotification" target:self handler:sel__handleVolumeChanged];
    [v10 addObject:v80];
    v35 = [AXAutoForwardingLocalNotificationHandler alloc];
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_4;
    v85[3] = &unk_279E2C690;
    v86 = &__block_literal_global_621;
    v36 = [(AXAutoForwardingLocalNotificationHandler *)v35 initWithNotificationName:@"AXVisualAlertLockStateChangeNotification" target:self dispatcher:v85 possibleHandlers:sel__handleDeviceWasLocked, sel__handleDeviceWasUnlocked, 0];
    deviceLockStateChangedNotificationHandler = self->_deviceLockStateChangedNotificationHandler;
    self->_deviceLockStateChangedNotificationHandler = v36;

    [v10 addObject:self->_deviceLockStateChangedNotificationHandler];
    v79 = [[AXAutoForwardingLocalNotificationHandler alloc] initWithNotificationName:@"AXVisualAlertManagerDoNotDisturbStatusChangedNotification" target:self dispatcher:&__block_literal_global_627 possibleHandlers:sel__handleQuietModeWasEnabled, sel__handleQuietModeWasDisabled, 0];
    [v10 addObject:v79];
    v38 = [[AXAutoForwardingLocalNotificationHandler alloc] initWithNotificationName:@"AXVisualAlertManagerControlCenterTorchWasEnabledNotification" target:self handler:sel__handleTorchInControlCenterWasEnabled];
    torchInControlCenterWasEnabledNotificationHandler = self->_torchInControlCenterWasEnabledNotificationHandler;
    self->_torchInControlCenterWasEnabledNotificationHandler = &v38->super.super;

    [v10 addObject:self->_torchInControlCenterWasEnabledNotificationHandler];
    v40 = [[AXAutoForwardingLocalNotificationHandler alloc] initWithNotificationName:@"AXVisualAlertManagerControlCenterTorchWasDisabledNotification" target:self handler:sel__handleTorchInControlCenterWasDisabled];
    [v10 addObject:v40];
    v41 = [AXAutoForwardingLocalNotificationHandler alloc];
    v42 = [(AXAutoForwardingLocalNotificationHandler *)v41 initWithNotificationName:*MEMORY[0x277CE5930] target:self handler:sel__handleCaptureSessionDidStartRunning];
    [v10 addObject:v42];
    v43 = [AXAutoForwardingLocalNotificationHandler alloc];
    v44 = [(AXAutoForwardingLocalNotificationHandler *)v43 initWithNotificationName:*MEMORY[0x277CE5938] target:self handler:sel__handleCaptureSessionDidStopRunning];
    [v10 addObject:v44];
    if ((AXProcessIsSpringBoard() & 1) != 0 || AXProcessIsClarityBoard())
    {
      v45 = [(VISAXNotificationHandler *)[AXDistributedNotificationHandler alloc] initWithNotificationName:@"AXVisualAlertManagerDidStartNotification" target:self handler:sel__handleSecondaryVisualAlertManagerDidStart];
      [v10 addObject:v45];
      v46 = [NSClassFromString(&cfstr_Sblockscreenma.isa) safeValueForKey:@"sharedInstanceIfExists"];
      v47 = [v46 safeBoolForKey:@"isUILocked"];

      if (v47)
      {
        v48 = sel__handleDeviceWasLocked;
      }

      else
      {
        v48 = sel__handleDeviceWasUnlocked;
      }

      [(VISAXNotificationHandler *)self->_deviceLockStateChangedNotificationHandler processHandler:v48];
      v49 = [MEMORY[0x277D05AB0] serviceForClientIdentifier:@"com.apple.accessibility.visual.alerts"];
      [(AXVisualAlertManager *)self setDisturbanceService:v49];

      disturbanceService = [(AXVisualAlertManager *)self disturbanceService];
      [disturbanceService addStateUpdateListener:self withCompletionHandler:&__block_literal_global_660];

      v51 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_664;
      block[3] = &unk_279E2C6D8;
      block[4] = self;
      dispatch_async(v51, block);
    }

    else
    {
      mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

      if ((ignoreLogging & 1) == 0)
      {
        identifier = [MEMORY[0x277CE6998] identifier];
        v55 = AXLoggerForFacility();

        v56 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = AXColorizeFormatLog();
          _hasVideoConferenceCameraTorchManager = [(AXVisualAlertManager *)self _hasVideoConferenceCameraTorchManager];
          v58 = _AXStringForArgs();
          if (os_log_type_enabled(v55, v56))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v58;
            _os_log_impl(&dword_27102A000, v55, v56, "%{public}@", &buf, 0xCu);
          }
        }
      }

      if ([(AXVisualAlertManager *)self _hasVideoConferenceCameraTorchManager])
      {
        v59 = [(VISAXNotificationHandler *)[AXDistributedNotificationHandler alloc] initWithNotificationName:@"AXVisualAlertManagerVideoConferenceCallRingingNotification" target:self handler:sel__handleVideoConferenceCallRinging];
        [v10 addObject:v59];
        v60 = [(VISAXNotificationHandler *)[AXDistributedNotificationHandler alloc] initWithNotificationName:@"AXVisualAlertManagerVideoConferenceCallHandledNotification" target:self handler:sel__handleEndVisualAlertForIncomingVideoConferenceCall];

        [v10 addObject:v60];
      }

      [AXDistributedNotificationHandler postDistributedNotificationWithName:@"AXVisualAlertManagerDidStartNotification"];
    }

    v61 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v10];
    notificationHandlers = self->_notificationHandlers;
    self->_notificationHandlers = v61;

    self->_isRingerSwitchSilent = BKSHIDServicesGetRingerState() == 0;
    mEMORY[0x277CE6998]2 = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging2 = [mEMORY[0x277CE6998]2 ignoreLogging];

    if ((ignoreLogging2 & 1) == 0)
    {
      identifier2 = [MEMORY[0x277CE6998] identifier];
      v66 = AXLoggerForFacility();

      v67 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = AXColorizeFormatLog();
        isRingerSwitchSilent = self->_isRingerSwitchSilent;
        v69 = _AXStringForArgs();
        if (os_log_type_enabled(v66, v67))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v69;
          _os_log_impl(&dword_27102A000, v66, v67, "%{public}@", &buf, 0xCu);
        }
      }
    }

    if (AXProcessIsSpringBoard())
    {
      defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
      v88 = 0;
      v89 = &v88;
      v90 = 0x2020000000;
      v71 = getSBRingerChangedNotificationSymbolLoc_ptr;
      v91 = getSBRingerChangedNotificationSymbolLoc_ptr;
      if (!getSBRingerChangedNotificationSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v93 = __getSBRingerChangedNotificationSymbolLoc_block_invoke;
        v94 = &unk_279E2C600;
        v95 = &v88;
        v72 = SpringBoardUILibrary();
        v73 = dlsym(v72, "SBRingerChangedNotification");
        *(v95[1] + 24) = v73;
        getSBRingerChangedNotificationSymbolLoc_ptr = *(v95[1] + 24);
        v71 = v89[3];
      }

      _Block_object_dispose(&v88, 8);
      if (!v71)
      {
        [AXVisualAlertManager _startForAlertTypes:cameraTorchManager:];
      }

      [defaultCenter4 addObserver:self selector:sel__handleRingerSwitchToggled name:*v71 object:0];
    }

    else
    {
      uTF8String = [@"com.apple.springboard.ringerstate" UTF8String];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_680;
      handler[3] = &unk_279E2C700;
      handler[4] = self;
      notify_register_dispatch(uTF8String, &self->_ringerStateNotifyToken, MEMORY[0x277D85CD0], handler);
    }

    managerCopy = v78;
  }

  v75 = *MEMORY[0x277D85DE8];
}

char *__63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = a3;
  v10 = [MEMORY[0x277D6EDF8] sharedInstance];
  v11 = [v10 callServicesClientCapabilities];
  [v11 setWantsToScreenCalls:1];

  v12 = [MEMORY[0x277D6EDF8] sharedInstance];
  v13 = [v12 callServicesClientCapabilities];
  [v13 save];

  if (!v9 || ([v9 isOutgoing] & 1) != 0)
  {
    goto LABEL_18;
  }

  v35 = [v9 isVideo];
  v34 = [v9 status];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = 0;
  AXPerformBlockSynchronouslyOnMainThread();
  [v37[5] removeObject:v9];
  v14 = [v37[5] count];
  v15 = [MEMORY[0x277CE6998] sharedInstance];
  v16 = [v15 ignoreLogging];

  if ((v16 & 1) == 0)
  {
    v17 = [MEMORY[0x277CE6998] identifier];
    v18 = AXLoggerForFacility();

    v19 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = AXColorizeFormatLog();
      v33 = v37[5];
      v21 = _AXStringForArgs();
      if (os_log_type_enabled(v18, v19))
      {
        *buf = 138543362;
        v43 = v21;
        _os_log_impl(&dword_27102A000, v18, v19, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (v14)
  {
    v22 = [MEMORY[0x277CE6998] sharedInstance];
    v23 = [v22 ignoreLogging];

    if ((v23 & 1) == 0)
    {
      v24 = [MEMORY[0x277CE6998] identifier];
      v25 = AXLoggerForFacility();

      v26 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = AXColorizeFormatLog();
        v28 = _AXStringForArgs();
        if (os_log_type_enabled(v25, v26))
        {
          *buf = 138543362;
          v43 = v28;
          _os_log_impl(&dword_27102A000, v25, v26, "%{public}@", buf, 0xCu);
        }
      }
    }

    goto LABEL_16;
  }

  if ((v34 - 3) < 2)
  {
    v32 = v35;
  }

  else
  {
    v32 = 0;
  }

  *(*(a1 + 32) + 105) = v32;
  if ((v34 - 3) < 2)
  {
    if (v35)
    {
      v29 = sel__handleBeginVisualAlertForIncomingVideoConferenceCall;
    }

    else
    {
      v29 = sel__handleBeginVisualAlertForIncomingCall;
    }
  }

  else
  {
    if (v34 != 1 && v34 != 6)
    {
LABEL_16:
      v29 = 0;
      goto LABEL_17;
    }

    if (v35)
    {
      v29 = sel__handleEndVisualAlertForIncomingVideoConferenceCall;
    }

    else
    {
      v29 = sel__handleEndVisualAlertForIncomingCall;
    }
  }

LABEL_17:
  _Block_object_dispose(&v36, 8);

  if (v14)
  {
LABEL_18:
    v29 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

void __63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_582(uint64_t a1)
{
  v6 = [MEMORY[0x277D6EDF8] sharedInstance];
  v2 = [v6 currentAudioAndVideoCalls];
  v3 = [v2 mutableCopy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

char *__63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_598(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ([v3 status] == 4 && objc_msgSend(v3, "shouldSuppressRingtone"))
  {
    if ([v3 isVideo])
    {
      v4 = sel__handleEndVisualAlertForIncomingVideoConferenceCall;
    }

    else
    {
      v4 = sel__handleEndVisualAlertForIncomingCall;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

char *__63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (([v3 isOutgoing] & 1) != 0 || !objc_msgSend(v3, "isConnecting"))
  {
    v4 = 0;
  }

  else if ([v3 isVideo])
  {
    v4 = sel__handleEndVisualAlertForIncomingVideoConferenceCall;
  }

  else
  {
    v4 = sel__handleEndVisualAlertForIncomingCall;
  }

  return v4;
}

char *__63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_3(uint64_t a1, int a2)
{
  v2 = &selRef__handleDeviceWasLocked;
  if (!a2)
  {
    v2 = &selRef__handleDeviceWasUnlocked;
  }

  return *v2;
}

uint64_t __63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [a4 objectForKey:@"AXVisualAlertLockStateKey"];
  [v5 BOOLValue];

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

char *__63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = [a4 objectForKeyedSubscript:@"active"];
  v5 = [v4 BOOLValue];
  v6 = &selRef__handleQuietModeWasEnabled;
  if (!v5)
  {
    v6 = &selRef__handleQuietModeWasDisabled;
  }

  v7 = *v6;

  return v7;
}

void __63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CE6998] sharedInstance];
    v5 = [v4 ignoreLogging];

    if ((v5 & 1) == 0)
    {
      v6 = [MEMORY[0x277CE6998] identifier];
      v7 = AXLoggerForFacility();

      v8 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = AXColorizeFormatLog();
        v10 = _AXStringForArgs();
        if (os_log_type_enabled(v7, v8))
        {
          *buf = 138543362;
          v13 = v10;
          _os_log_impl(&dword_27102A000, v7, v8, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_664(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) disturbanceService];
  v15 = 0;
  v3 = [v2 queryCurrentStateWithError:&v15];
  v4 = v15;
  v5 = [v3 isActive];

  if (v4)
  {
    v6 = [MEMORY[0x277CE6998] sharedInstance];
    v7 = [v6 ignoreLogging];

    if ((v7 & 1) == 0)
    {
      v8 = [MEMORY[0x277CE6998] identifier];
      v9 = AXLoggerForFacility();

      v10 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = AXColorizeFormatLog();
        v12 = _AXStringForArgs();
        if (os_log_type_enabled(v9, v10))
        {
          *buf = 138543362;
          v17 = v12;
          _os_log_impl(&dword_27102A000, v9, v10, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

  if (v5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_668;
    block[3] = &unk_279E2C6D8;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_stop
{
  v18 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v16 = 138543362;
        v17 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v16, 0xCu);
      }
    }
  }

  if (self->_asyncManagerAdapter)
  {
    if ((AXProcessIsSpringBoard() & 1) != 0 || AXProcessIsClarityBoard())
    {
      [(AXVisualAlertManager *)self setDisturbanceService:0];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter removeObserver:self];
    }

    else
    {
      notify_cancel([(AXVisualAlertManager *)self ringerStateNotifyToken]);
    }

    [(NSArray *)self->_notificationHandlers makeObjectsPerformSelector:sel_invalidate];
    notificationHandlers = self->_notificationHandlers;
    self->_notificationHandlers = 0;

    [(AXVisualAlertManager *)self _endVisualAlert];
    asyncManagerAdapter = self->_asyncManagerAdapter;
    self->_asyncManagerAdapter = 0;

    deviceLockStateChangedNotificationHandler = self->_deviceLockStateChangedNotificationHandler;
    self->_deviceLockStateChangedNotificationHandler = 0;

    torchInControlCenterWasEnabledNotificationHandler = self->_torchInControlCenterWasEnabledNotificationHandler;
    self->_torchInControlCenterWasEnabledNotificationHandler = 0;

    self->_isDeviceLocked = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)startForAlertTypes:(unint64_t)types cameraTorchManager:(id)manager
{
  v16 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v15 = v11;
        _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  v12 = managerCopy;
  AXPerformBlockOnMainThread();

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update
{
  v23 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v18 = updateCopy;
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v22 = v11;
        _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v19 = @"active";
  v13 = MEMORY[0x277CCABB0];
  state = [updateCopy state];
  v15 = [v13 numberWithBool:{objc_msgSend(state, "isActive")}];
  v20 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [defaultCenter postNotificationName:@"AXVisualAlertManagerDoNotDisturbStatusChangedNotification" object:0 userInfo:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isCameraInUse
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  nSClassFromString(&cfstr_Uiapplication.isa) = [NSClassFromString(&cfstr_Uiapplication.isa) sharedApplication];
  v3 = [nSClassFromString(&cfstr_Uiapplication.isa) safeValueForKey:@"_sensorActivityDataProvider"];
  v4 = [v3 safeSetForKey:@"activeCameraAndMicrophoneActivityAttributions"];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![*(*(&v12 + 1) + 8 * i) safeIntegerForKey:@"sensor"])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_isRingerSwitchException:(unint64_t)exception
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = exception == 32 && (self->_alertTypes & 0x20) != 0;
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v7 = AXLoggerForFacility();

    v8 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = AXColorizeFormatLog();
      v10 = _AXStringForArgs();
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 138543362;
        v14 = v10;
        _os_log_impl(&dword_27102A000, v7, v8, "%{public}@", buf, 0xCu);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

void __100__AXVisualAlertManager__beginVisualAlertForType_repeat_skipAutomaticStopOnUserInteraction_bundleId___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained _isTorchDeviceOpen])
  {
    v2 = objc_loadWeakRetained((a1 + 40));
    v3 = [v2 _isTorchDeviceOn];

    if (v3)
    {
      v4 = [MEMORY[0x277CE6998] sharedInstance];
      v5 = [v4 ignoreLogging];

      if ((v5 & 1) == 0)
      {
        v6 = [MEMORY[0x277CE6998] identifier];
        v7 = AXLoggerForFacility();

        v8 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = AXColorizeFormatLog();
          v14 = *(a1 + 32);
          v10 = _AXStringForArgs();
          if (os_log_type_enabled(v7, v8))
          {
            *buf = 138543362;
            v17 = v10;
            _os_log_impl(&dword_27102A000, v7, v8, "%{public}@", buf, 0xCu);
          }
        }
      }

      v11 = objc_loadWeakRetained((a1 + 40));
      [v11 _endVisualAlert];
    }

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v13 = *MEMORY[0x277D85DE8];
  }
}

- (void)_endVisualAlert
{
  v14 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v12 = 138543362;
        v13 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v12, 0xCu);
      }
    }
  }

  [(AXDispatchTimer *)self->_timer cancel];
  [(AXDispatchTimer *)self->_torchForceShutdownTimer cancel];
  [(AXVisualAlertManager *)self _setTorchDeviceOn:0 withCompletion:0];
  [(AXVisualAlertManager *)self _setTorchDeviceOpen:0 withCompletion:0];
  [(AXVisualAlertManager *)self _setActivePattern:0];
  [(AXVisualAlertManager *)self _setTypeToUseForVisualAlertAfterCaptureSessionStopsRunning:0];
  self->_shouldRepeatPattern = 0;
  self->_activePatternCursor = 0;
  self->_skipAutomaticStopOnUserInteraction = 0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"AXVisualAlertEventEnded" object:0 userInfo:0];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_processNextVisualAlertComponent
{
  v33 = *MEMORY[0x277D85DE8];
  _activePattern = [(AXVisualAlertManager *)self _activePattern];
  v4 = [_activePattern objectForKey:@"StrobePattern"];

  if (!v4)
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v12 = AXLoggerForFacility();

      v13 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = AXColorizeFormatLog();
        v15 = _AXStringForArgs();
        if (os_log_type_enabled(v12, v13))
        {
          *buf = 138543362;
          v32 = v15;
          _os_log_impl(&dword_27102A000, v12, v13, "%{public}@", buf, 0xCu);
        }
      }
    }

LABEL_11:
    [(AXVisualAlertManager *)self _endVisualAlert];
    goto LABEL_23;
  }

  activePatternCursor = self->_activePatternCursor;
  if (activePatternCursor >= [v4 count] - 1)
  {
    if (self->_shouldRepeatPattern)
    {
      self->_activePatternCursor = 0;
      [(AXVisualAlertManager *)self _processNextVisualAlertComponent];
      goto LABEL_23;
    }

    mEMORY[0x277CE6998]2 = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging2 = [mEMORY[0x277CE6998]2 ignoreLogging];

    if ((ignoreLogging2 & 1) == 0)
    {
      identifier2 = [MEMORY[0x277CE6998] identifier];
      v19 = AXLoggerForFacility();

      v20 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = AXColorizeFormatLog();
        v22 = _AXStringForArgs();
        if (os_log_type_enabled(v19, v20))
        {
          *buf = 138543362;
          v32 = v22;
          _os_log_impl(&dword_27102A000, v19, v20, "%{public}@", buf, 0xCu);
        }
      }
    }

    goto LABEL_11;
  }

  v6 = [v4 objectAtIndex:self->_activePatternCursor];
  v7 = [v4 objectAtIndex:self->_activePatternCursor + 1];
  self->_activePatternCursor += 2;
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  intValue = [v7 intValue];
  objc_initWeak(buf, self);
  v24 = intValue / 1000.0;
  v25 = self->_timer;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __56__AXVisualAlertManager__processNextVisualAlertComponent__block_invoke;
  v28[3] = &unk_279E2C7A0;
  v26 = v25;
  v29 = v26;
  v30[1] = *&v24;
  objc_copyWeak(v30, buf);
  [(AXVisualAlertManager *)self _setTorchDeviceOn:bOOLValue withCompletion:v28];
  objc_destroyWeak(v30);

  objc_destroyWeak(buf);
LABEL_23:

  v27 = *MEMORY[0x277D85DE8];
}

void __56__AXVisualAlertManager__processNextVisualAlertComponent__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__AXVisualAlertManager__processNextVisualAlertComponent__block_invoke_2;
  v3[3] = &unk_279E2C778;
  objc_copyWeak(&v4, (a1 + 40));
  [v1 afterDelay:v3 processBlock:v2];
  objc_destroyWeak(&v4);
}

void __56__AXVisualAlertManager__processNextVisualAlertComponent__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processNextVisualAlertComponent];
}

- (void)handleBulletinWithSectionID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy isEqualToString:@"com.apple.springboard.SBDismissOnlyAlertItem"])
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v8 = AXLoggerForFacility();

      v9 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = AXColorizeFormatLog();
        v11 = _AXStringForArgs();
        if (os_log_type_enabled(v8, v9))
        {
          v20 = 138543362;
          v21 = v11;
          _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", &v20, 0xCu);
        }
      }
    }
  }

  else if ([dCopy isEqualToString:@"com.apple.MobileSMS"])
  {
    [(AXVisualAlertManager *)self _handleVisualAlertForIncomingMessage];
  }

  else if ([dCopy isEqualToString:@"com.apple.mobiletimer"])
  {
    mEMORY[0x277CE6998]2 = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging2 = [mEMORY[0x277CE6998]2 ignoreLogging];

    if ((ignoreLogging2 & 1) == 0)
    {
      identifier2 = [MEMORY[0x277CE6998] identifier];
      v15 = AXLoggerForFacility();

      v16 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = AXColorizeFormatLog();
        v18 = _AXStringForArgs();
        if (os_log_type_enabled(v15, v16))
        {
          v20 = 138543362;
          v21 = v18;
          _os_log_impl(&dword_27102A000, v15, v16, "%{public}@", &v20, 0xCu);
        }
      }
    }

    [(AXVisualAlertManager *)self _handleBeginVisualAlertForAlarmWithSound:1];
  }

  else if (([dCopy isEqualToString:@"com.apple.mobilephone"] & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"com.apple.facetime") & 1) == 0)
  {
    [(AXVisualAlertManager *)self _handleVisualAlertForRegularNotification:dCopy];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleBeginVisualAlertForIncomingCall
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_alertTypes)
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v6 = AXLoggerForFacility();

      v7 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = AXColorizeFormatLog();
        v9 = _AXStringForArgs();
        if (os_log_type_enabled(v6, v7))
        {
          v11 = 138543362;
          v12 = v9;
          _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v11, 0xCu);
        }
      }
    }

    [(AXVisualAlertManager *)self _beginVisualAlertForType:1 repeat:1];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleEndVisualAlertForIncomingCall
{
  v13 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v11, 0xCu);
      }
    }
  }

  [(AXVisualAlertManager *)self _endVisualAlert];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleBeginVisualAlertForIncomingVideoConferenceCall
{
  v30 = *MEMORY[0x277D85DE8];
  if ((self->_alertTypes & 2) != 0)
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v6 = AXLoggerForFacility();

      v7 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = AXColorizeFormatLog();
        IsSpringBoard = AXProcessIsSpringBoard();
        _shouldHandleVisualAlertsForVideoConferenceCallsInConferenceFramework = [(AXVisualAlertManager *)self _shouldHandleVisualAlertsForVideoConferenceCallsInConferenceFramework];
        v9 = _AXStringForArgs();
        if (os_log_type_enabled(v6, v7))
        {
          *buf = 138543362;
          v29 = v9;
          _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", buf, 0xCu);
        }
      }
    }

    if (AXProcessIsSpringBoard() && [(AXVisualAlertManager *)self _shouldHandleVisualAlertsForVideoConferenceCallsInConferenceFramework])
    {
      mEMORY[0x277CE6998]2 = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging2 = [mEMORY[0x277CE6998]2 ignoreLogging];

      if ((ignoreLogging2 & 1) == 0)
      {
        identifier2 = [MEMORY[0x277CE6998] identifier];
        v13 = AXLoggerForFacility();

        v14 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = AXColorizeFormatLog();
          v16 = _AXStringForArgs();
          if (os_log_type_enabled(v13, v14))
          {
            *buf = 138543362;
            v29 = v16;
            _os_log_impl(&dword_27102A000, v13, v14, "%{public}@", buf, 0xCu);
          }
        }
      }

      [AXDistributedNotificationHandler postDistributedNotificationWithName:@"AXVisualAlertManagerVideoConferenceCallRingingNotification", IsSpringBoard, _shouldHandleVisualAlertsForVideoConferenceCallsInConferenceFramework];
      self->_videoConferenceCallRinging = 1;
    }

    else
    {
      mEMORY[0x277CE6998]3 = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging3 = [mEMORY[0x277CE6998]3 ignoreLogging];

      if ((ignoreLogging3 & 1) == 0)
      {
        identifier3 = [MEMORY[0x277CE6998] identifier];
        v20 = AXLoggerForFacility();

        v21 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = AXColorizeFormatLog();
          v23 = _AXStringForArgs();
          if (os_log_type_enabled(v20, v21))
          {
            *buf = 138543362;
            v29 = v23;
            _os_log_impl(&dword_27102A000, v20, v21, "%{public}@", buf, 0xCu);
          }
        }
      }

      alertTypes = self->_alertTypes;
      self->_alertTypes = alertTypes | 1;
      [(AXVisualAlertManager *)self _handleBeginVisualAlertForIncomingCall];
      self->_alertTypes = alertTypes;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_handleEndVisualAlertForIncomingVideoConferenceCall
{
  if (AXProcessIsSpringBoard() && [(AXVisualAlertManager *)self _shouldHandleVisualAlertsForVideoConferenceCallsInConferenceFramework])
  {
    [AXDistributedNotificationHandler postDistributedNotificationWithName:@"AXVisualAlertManagerVideoConferenceCallHandledNotification"];
    self->_videoConferenceCallRinging = 0;
  }

  else
  {

    [(AXVisualAlertManager *)self _handleEndVisualAlertForIncomingCall];
  }
}

- (void)_handleBeginVisualAlertForAlarmWithSound:(BOOL)sound
{
  v14 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v7 = AXLoggerForFacility();

    v8 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = AXColorizeFormatLog();
      v10 = _AXStringForArgs();
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 138543362;
        v13 = v10;
        _os_log_impl(&dword_27102A000, v7, v8, "%{public}@", buf, 0xCu);
      }
    }
  }

  if ((self->_alertTypes & 0x20) != 0)
  {
    [(AXVisualAlertManager *)self _beginVisualAlertForType:32 repeat:1 skipAutomaticStopOnUserInteraction:0 bundleId:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleEndVisualAlertForAlarm
{
  v23 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v7 = AXLoggerForFacility();

    v8 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = AXColorizeFormatLog();
      Name = sel_getName(a2);
      alertTypes = self->_alertTypes;
      v10 = _AXStringForArgs();
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 138543362;
        v22 = v10;
        _os_log_impl(&dword_27102A000, v7, v8, "%{public}@", buf, 0xCu);
      }
    }
  }

  if ((self->_alertTypes & 0x20) != 0)
  {
    mEMORY[0x277CE6998]2 = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging2 = [mEMORY[0x277CE6998]2 ignoreLogging];

    if ((ignoreLogging2 & 1) == 0)
    {
      identifier2 = [MEMORY[0x277CE6998] identifier];
      v14 = AXLoggerForFacility();

      v15 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = AXColorizeFormatLog();
        v17 = _AXStringForArgs();
        if (os_log_type_enabled(v14, v15))
        {
          *buf = 138543362;
          v22 = v17;
          _os_log_impl(&dword_27102A000, v14, v15, "%{public}@", buf, 0xCu);
        }
      }
    }

    [(AXVisualAlertManager *)self _endVisualAlert:Name];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleVisualAlertForRegularNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if ((self->_alertTypes & 8) != 0)
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v8 = AXLoggerForFacility();

      v9 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = AXColorizeFormatLog();
        v11 = _AXStringForArgs();
        if (os_log_type_enabled(v8, v9))
        {
          v13 = 138543362;
          v14 = v11;
          _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", &v13, 0xCu);
        }
      }
    }

    [(AXVisualAlertManager *)self _beginVisualAlertForType:8 repeat:0 skipAutomaticStopOnUserInteraction:0 bundleId:notificationCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleVisualAlertForExternalApplication
{
  alertTypes = self->_alertTypes;
  if ((alertTypes & 0x10) != 0)
  {
    self->_alertTypes = alertTypes | 8;
    [(AXVisualAlertManager *)self _handleVisualAlertForRegularNotification:0];
    self->_alertTypes = alertTypes;
  }
}

- (void)_handleVisualAlertForIncomingMessage
{
  v13 = *MEMORY[0x277D85DE8];
  if ((self->_alertTypes & 4) != 0)
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v6 = AXLoggerForFacility();

      v7 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = AXColorizeFormatLog();
        v9 = _AXStringForArgs();
        if (os_log_type_enabled(v6, v7))
        {
          v11 = 138543362;
          v12 = v9;
          _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v11, 0xCu);
        }
      }
    }

    [(AXVisualAlertManager *)self _beginVisualAlertForType:4 repeat:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleSecondaryVisualAlertManagerDidStart
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_isDeviceLocked)
  {
    [(VISAXNotificationHandler *)self->_deviceLockStateChangedNotificationHandler processHandler:sel__handleDeviceWasLocked];
  }

  if (self->_isTorchEnabledInControlCenter)
  {
    [(VISAXNotificationHandler *)self->_torchInControlCenterWasEnabledNotificationHandler processHandler:sel__handleTorchInControlCenterWasEnabled];
  }

  if (self->_videoConferenceCallRinging && self->_videoConferenceCallExists)
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v6 = AXLoggerForFacility();

      v7 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = AXColorizeFormatLog();
        v9 = _AXStringForArgs();
        if (os_log_type_enabled(v6, v7))
        {
          v11 = 138543362;
          v12 = v9;
          _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v11, 0xCu);
        }
      }
    }

    [(AXVisualAlertManager *)self _handleBeginVisualAlertForIncomingVideoConferenceCall];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleVideoConferenceCallRinging
{
  v13 = *MEMORY[0x277D85DE8];
  if ((self->_alertTypes & 2) != 0 && [(AXVisualAlertManager *)self _hasVideoConferenceCameraTorchManager])
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v6 = AXLoggerForFacility();

      v7 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = AXColorizeFormatLog();
        v9 = _AXStringForArgs();
        if (os_log_type_enabled(v6, v7))
        {
          v11 = 138543362;
          v12 = v9;
          _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v11, 0xCu);
        }
      }
    }

    [(AXVisualAlertManager *)self _handleBeginVisualAlertForIncomingVideoConferenceCall];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleLockButtonPressed
{
  v14 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      skipAutomaticStopOnUserInteraction = self->_skipAutomaticStopOnUserInteraction;
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v13 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (!self->_skipAutomaticStopOnUserInteraction)
  {
    [(AXVisualAlertManager *)self _endVisualAlert];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleVolumeChanged
{
  v13 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v11, 0xCu);
      }
    }
  }

  [(AXVisualAlertManager *)self _handleLockButtonPressed];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeviceWasLocked
{
  v14 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      isDeviceLocked = self->_isDeviceLocked;
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v13 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  self->_isDeviceLocked = 1;
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeviceWasUnlocked
{
  v14 = *MEMORY[0x277D85DE8];
  self->_isDeviceLocked = 0;
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      skipAutomaticStopOnUserInteraction = self->_skipAutomaticStopOnUserInteraction;
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v13 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (!self->_skipAutomaticStopOnUserInteraction)
  {
    [(AXVisualAlertManager *)self _endVisualAlert];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleRingerSwitchToggled
{
  v23 = *MEMORY[0x277D85DE8];
  self->_isRingerSwitchSilent = BKSHIDServicesGetRingerState() == 0;
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      isRingerSwitchSilent = self->_isRingerSwitchSilent;
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v22 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (self->_isRingerSwitchSilent)
  {
    mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
    shouldFlashForAlertInSilentMode = [mEMORY[0x277CE7E20] shouldFlashForAlertInSilentMode];

    if ((shouldFlashForAlertInSilentMode & 1) == 0)
    {
      mEMORY[0x277CE6998]2 = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging2 = [mEMORY[0x277CE6998]2 ignoreLogging];

      if ((ignoreLogging2 & 1) == 0)
      {
        identifier2 = [MEMORY[0x277CE6998] identifier];
        v15 = AXLoggerForFacility();

        v16 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = AXColorizeFormatLog();
          v18 = _AXStringForArgs();
          if (os_log_type_enabled(v15, v16))
          {
            *buf = 138543362;
            v22 = v18;
            _os_log_impl(&dword_27102A000, v15, v16, "%{public}@", buf, 0xCu);
          }
        }
      }

      [(AXVisualAlertManager *)self _endVisualAlert];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleQuietModeWasEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v11, 0xCu);
      }
    }
  }

  self->_isQuietModeEnabled = 1;
  [(AXVisualAlertManager *)self _endVisualAlert];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleTorchInControlCenterWasEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  self->_isTorchEnabledInControlCenter = 1;
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v11, 0xCu);
      }
    }
  }

  [(AXVisualAlertManager *)self _endVisualAlert];
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __59__AXVisualAlertManager__handleCaptureSessionDidStopRunning__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) _typeToUseForVisualAlertAfterCaptureSessionStopsRunning];
  if (result)
  {
    v3 = result;
    v4 = [MEMORY[0x277CE6998] sharedInstance];
    v5 = [v4 ignoreLogging];

    if ((v5 & 1) == 0)
    {
      v6 = [MEMORY[0x277CE6998] identifier];
      v7 = AXLoggerForFacility();

      v8 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = AXColorizeFormatLog();
        v10 = _AXStringForArgs();
        if (os_log_type_enabled(v7, v8))
        {
          v12 = 138543362;
          v13 = v10;
          _os_log_impl(&dword_27102A000, v7, v8, "%{public}@", &v12, 0xCu);
        }
      }
    }

    [*(a1 + 32) _beginVisualAlertForType:v3 repeat:1];
    result = [*(a1 + 32) _setTypeToUseForVisualAlertAfterCaptureSessionStopsRunning:0];
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_insertCustomLogicForSystemWideServer
{
  mEMORY[0x277CE69B0] = [MEMORY[0x277CE69B0] sharedInstance];
  [mEMORY[0x277CE69B0] performValidations:&__block_literal_global_838 withPreValidationHandler:&__block_literal_global_870 postValidationHandler:&__block_literal_global_879 safeCategoryInstallationHandler:&__block_literal_global_882];
}

uint64_t __61__AXVisualAlertManager__insertCustomLogicForSystemWideServer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"BBSound"];
  [v2 validateClass:@"BBBulletin" hasInstanceMethod:@"sectionID" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBLockScreenManager" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"isUILocked" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBPrototypeController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBPrototypeController" hasInstanceMethod:@"rootSettings" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceVariable:@"_sensorActivityDataProvider" withType:"SBSensorActivityDataProvider"];
  [v2 validateClass:@"SBSensorActivityDataProvider" hasInstanceMethod:@"activeCameraAndMicrophoneActivityAttributions" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSensorActivityAttribution" hasInstanceMethod:@"sensor" withFullSignature:{"q", 0}];

  return 1;
}

uint64_t __61__AXVisualAlertManager__insertCustomLogicForSystemWideServer__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AXVisualAlerts"];
  [v2 setOverrideProcessName:@"Visual Alerts"];
  [v2 setDebugBuild:0];

  return MEMORY[0x282138D58]();
}

void __61__AXVisualAlertManager__insertCustomLogicForSystemWideServer__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"AXVisualAlertSBNCSoundController" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXVisualAlertSBNCScreenController" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXVisualAlertSBScheduledAlarmObserver" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXVisualAlertSBUIFlashlightController" canInteractWithTargetClass:1];
}

- (id)_normalizedStrobePatternForOriginalPattern:(id)pattern
{
  patternCopy = pattern;
  v4 = [patternCopy objectForKey:@"StrobePattern"];

  v5 = patternCopy;
  if (!v4)
  {
    v6 = [patternCopy objectForKey:@"VibePattern"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [patternCopy objectForKey:@"OnDuration"];
      v8 = [patternCopy objectForKey:@"OffDuration"];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [v7 doubleValue];
        v10 = (v9 * 1000.0);
        [v8 doubleValue];
        v20 = (v11 * 1000.0);
        v12 = MEMORY[0x277CBEA60];
        v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:v10];
        v15 = [MEMORY[0x277CCABB0] numberWithBool:0];
        v16 = [MEMORY[0x277CCABB0] numberWithInt:v20];
        v17 = [v12 arrayWithObjects:{v13, v14, v15, v16, 0}];

        v6 = v13;
      }

      else
      {
        v17 = 0;
      }

      v6 = v17;
    }

    v5 = patternCopy;
    if (v6)
    {
      v18 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:patternCopy];
      [v18 setObject:v6 forKey:@"StrobePattern"];
      [v18 removeObjectForKey:@"VibePattern"];
      [v18 removeObjectForKey:@"OnDuration"];
      [v18 removeObjectForKey:@"OffDuration"];
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v18];
    }
  }

  return v5;
}

- (BOOL)_hasVideoConferenceCameraTorchManager
{
  asyncManagerAdapter = self->_asyncManagerAdapter;
  if (asyncManagerAdapter)
  {
    v3 = MEMORY[0x277CCA8D8];
    synchronousTorchManager = [(AXCameraTorchManagerBackgroundAdapter *)asyncManagerAdapter synchronousTorchManager];
    v5 = [v3 bundleForClass:objc_opt_class()];
    bundleIdentifier = [v5 bundleIdentifier];
    v7 = [bundleIdentifier isEqualToString:@"com.apple.AVConference"];

    LOBYTE(asyncManagerAdapter) = v7;
  }

  return asyncManagerAdapter;
}

- (BOOL)_supportsVisualAlertsForVideoConferenceCalls
{
  if (_supportsVisualAlertsForVideoConferenceCalls__AXVisualAlertManagerHasLegacySOCOnceToken != -1)
  {
    [AXVisualAlertManager _supportsVisualAlertsForVideoConferenceCalls];
  }

  return (_supportsVisualAlertsForVideoConferenceCalls__AXVisualAlertManagerHasLegacySOC & 1) == 0;
}

uint64_t __68__AXVisualAlertManager__supportsVisualAlertsForVideoConferenceCalls__block_invoke()
{
  v0 = *MEMORY[0x277CD2898];
  v1 = IOServiceMatching("AppleH3CamIn");
  result = IOServiceGetMatchingService(v0, v1);
  if (result)
  {
    _supportsVisualAlertsForVideoConferenceCalls__AXVisualAlertManagerHasLegacySOC = 1;

    return IOObjectRelease(result);
  }

  return result;
}

- (BOOL)_shouldHandleVisualAlertsForVideoConferenceCallsInConferenceFramework
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_isDeviceLocked || !self->_videoConferenceCallRinging)
  {
    v11 = *MEMORY[0x277D85DE8];

    return [(AXVisualAlertManager *)self _supportsVisualAlertsForVideoConferenceCalls];
  }

  else
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v5 = AXLoggerForFacility();

      v6 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = AXColorizeFormatLog();
        v8 = _AXStringForArgs();
        if (os_log_type_enabled(v5, v6))
        {
          v12 = 138543362;
          v13 = v8;
          _os_log_impl(&dword_27102A000, v5, v6, "%{public}@", &v12, 0xCu);
        }
      }
    }

    v9 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

- (void)_springBoardLockStateChange:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getkSBNotificationKeyDeviceLockState(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXVisualAlertManager.m" lineNumber:87 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_startForAlertTypes:cameraTorchManager:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSBRingerChangedNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXVisualAlertManager.m" lineNumber:84 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_startForAlertTypes:cameraTorchManager:.cold.2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSBDeviceLockStateChangedNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXVisualAlertManager.m" lineNumber:85 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_startForAlertTypes:cameraTorchManager:.cold.3()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSBVolumeButtonPressedNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXVisualAlertManager.m" lineNumber:83 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_startForAlertTypes:cameraTorchManager:.cold.4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSBLockButtonPressedNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXVisualAlertManager.m" lineNumber:86 description:{@"%s", dlerror()}];

  __break(1u);
}

@end