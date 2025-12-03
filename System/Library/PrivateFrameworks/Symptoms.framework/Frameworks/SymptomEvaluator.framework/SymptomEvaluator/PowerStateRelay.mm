@interface PowerStateRelay
+ (id)defaultRelay;
- (BOOL)batteryAtCriticalLevel;
- (BOOL)batteryAtWarnLevel;
- (BOOL)batteryExternalPowerIsConnected;
- (BOOL)batteryFullyCharged;
- (BOOL)batteryIsCharging;
- (PowerStateRelay)init;
- (double)batteryPercentage;
- (id)getBatteryProperties;
- (id)thermalPressureLevelToString:(int64_t)string;
- (int)batteryTemperature;
- (unsigned)batteryAbsoluteCapacity;
- (unsigned)batteryCurrentCapacity;
- (unsigned)batteryDesignCapacity;
- (unsigned)batteryMaximumCapacity;
- (unsigned)batteryTimeRemaining;
- (unsigned)batteryVoltage;
- (unsigned)screenBrightness;
- (void)dealloc;
- (void)disableIOKitBatteryLevelNotifications;
- (void)enableIOKitBatteryLevelNotifications;
- (void)getCurrentKeybagLockState;
- (void)handleBatteryNotification;
- (void)handlePowerStateChange:(id)change;
- (void)setBatteryAbsoluteCapacity:(unsigned int)capacity;
- (void)setBatteryAtCriticalLevel:(BOOL)level;
- (void)setBatteryAtWarnLevel:(BOOL)level;
- (void)setBatteryCurrentCapacity:(unsigned int)capacity;
- (void)setBatteryDesignCapacity:(unsigned int)capacity;
- (void)setBatteryExternalPowerIsConnected:(BOOL)connected;
- (void)setBatteryFullyCharged:(BOOL)charged;
- (void)setBatteryIsCharging:(BOOL)charging;
- (void)setBatteryMaximumCapacity:(unsigned int)capacity;
- (void)setBatteryPercentage:(double)percentage;
- (void)setBatteryTemperature:(int)temperature;
- (void)setBatteryTimeRemaining:(unsigned int)remaining;
- (void)setBatteryVoltage:(unsigned int)voltage;
- (void)setLowPowerModeEnabled:(BOOL)enabled;
- (void)setPluggedIn:(BOOL)in;
- (void)setScreenBrightness:(unsigned int)brightness;
- (void)setScreenNotDark:(BOOL)dark;
- (void)setScreenUnlocked:(BOOL)unlocked;
- (void)setThermalPressure:(int64_t)pressure;
- (void)updateBatteryValuesFromPowerSourceDictionary:(id)dictionary;
@end

@implementation PowerStateRelay

+ (id)defaultRelay
{
  v2 = sharedInstance_5;
  if (!sharedInstance_5)
  {
    if (defaultRelay_singleton != -1)
    {
      +[PowerStateRelay defaultRelay];
    }

    v2 = sharedInstance_5;
  }

  return v2;
}

- (void)handleBatteryNotification
{
  v3 = objc_autoreleasePoolPush();
  getBatteryProperties = [(PowerStateRelay *)self getBatteryProperties];
  if (getBatteryProperties)
  {
    [(PowerStateRelay *)self updateBatteryValuesFromPowerSourceDictionary:getBatteryProperties];
  }

  objc_autoreleasePoolPop(v3);
}

- (id)getBatteryProperties
{
  properties = 0;
  v2 = 0;
  if (!IORegistryEntryCreateCFProperties(self->_batteryService, &properties, *MEMORY[0x277CBECE8], 0))
  {
    v3 = properties;
    v2 = [(__CFDictionary *)properties copy];
  }

  return v2;
}

void __23__PowerStateRelay_init__block_invoke_8(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) getCurrentKeybagLockState];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v6[0] = 67109120;
    v6[1] = [v3 screenUnlocked];
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Power: screen-unlocked %d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)getCurrentKeybagLockState
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"ExtendedDeviceLockState";
  v9[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = MKBGetDeviceLockState();
  [(PowerStateRelay *)self setScreenUnlocked:(v4 < 8) & (0x89u >> v4)];
  v5 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "Power: keybag state:%d", v7, 8u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __23__PowerStateRelay_init__block_invoke_6(uint64_t a1, int token)
{
  v11 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(token, &state64);
  [*(a1 + 32) setScreenBrightness:state64];
  v3 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 screenBrightness];
    *buf = 67109120;
    v10 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Power: screen-brightness %u", buf, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __23__PowerStateRelay_init__block_invoke_4(uint64_t a1, int token)
{
  v11 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(token, &state64);
  [*(a1 + 32) setScreenNotDark:state64 != 1];
  v3 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 screenNotDark];
    *buf = 67109120;
    v10 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Power: screen-notdark %d", buf, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (double)batteryPercentage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  batteryPercentage = selfCopy->_batteryPercentage;
  objc_sync_exit(selfCopy);

  return batteryPercentage;
}

- (unsigned)batteryCurrentCapacity
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  batteryCurrentCapacity = selfCopy->_batteryCurrentCapacity;
  objc_sync_exit(selfCopy);

  return batteryCurrentCapacity;
}

- (unsigned)batteryMaximumCapacity
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  batteryMaximumCapacity = selfCopy->_batteryMaximumCapacity;
  objc_sync_exit(selfCopy);

  return batteryMaximumCapacity;
}

- (unsigned)batteryTimeRemaining
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  batteryTimeRemaining = selfCopy->_batteryTimeRemaining;
  objc_sync_exit(selfCopy);

  return batteryTimeRemaining;
}

- (BOOL)batteryExternalPowerIsConnected
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  batteryExternalPowerIsConnected = selfCopy->_batteryExternalPowerIsConnected;
  objc_sync_exit(selfCopy);

  return batteryExternalPowerIsConnected;
}

- (BOOL)batteryIsCharging
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  batteryIsCharging = selfCopy->_batteryIsCharging;
  objc_sync_exit(selfCopy);

  return batteryIsCharging;
}

- (BOOL)batteryFullyCharged
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  batteryFullyCharged = selfCopy->_batteryFullyCharged;
  objc_sync_exit(selfCopy);

  return batteryFullyCharged;
}

- (BOOL)batteryAtWarnLevel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  batteryAtWarnLevel = selfCopy->_batteryAtWarnLevel;
  objc_sync_exit(selfCopy);

  return batteryAtWarnLevel;
}

- (BOOL)batteryAtCriticalLevel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  batteryAtCriticalLevel = selfCopy->_batteryAtCriticalLevel;
  objc_sync_exit(selfCopy);

  return batteryAtCriticalLevel;
}

- (unsigned)screenBrightness
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  screenBrightness = selfCopy->_screenBrightness;
  objc_sync_exit(selfCopy);

  return screenBrightness;
}

- (unsigned)batteryDesignCapacity
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  batteryDesignCapacity = selfCopy->_batteryDesignCapacity;
  objc_sync_exit(selfCopy);

  return batteryDesignCapacity;
}

- (unsigned)batteryAbsoluteCapacity
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  batteryAbsoluteCapacity = selfCopy->_batteryAbsoluteCapacity;
  objc_sync_exit(selfCopy);

  return batteryAbsoluteCapacity;
}

- (unsigned)batteryVoltage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  batteryVoltage = selfCopy->_batteryVoltage;
  objc_sync_exit(selfCopy);

  return batteryVoltage;
}

- (int)batteryTemperature
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  batteryTemperature = selfCopy->_batteryTemperature;
  objc_sync_exit(selfCopy);

  return batteryTemperature;
}

- (PowerStateRelay)init
{
  v55 = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = PowerStateRelay;
  v2 = [(PowerStateRelay *)&v50 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.symptomsd.powerStateRelay", v3);
    powerStateQueue = v2->_powerStateQueue;
    v2->_powerStateQueue = v4;

    v6 = v2->_powerStateQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __23__PowerStateRelay_init__block_invoke;
    handler[3] = &unk_27898B048;
    v7 = v2;
    v49 = v7;
    notify_register_dispatch("com.apple.springboard.pluggedin", &v2->powerStateToken, v6, handler);
    state64 = 0;
    notify_get_state(v2->powerStateToken, &state64);
    [v7 setPluggedIn:state64 == 1];
    v8 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      pluggedIn = [v7 pluggedIn];
      *buf = 67109120;
      *&buf[4] = pluggedIn;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Power: plugged-in %d (baseline)", buf, 8u);
    }

    v11 = v2->_powerStateQueue;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __23__PowerStateRelay_init__block_invoke_4;
    v45[3] = &unk_27898B048;
    v12 = v7;
    v46 = v12;
    notify_register_dispatch("com.apple.springboard.hasBlankedScreen", v7 + 3, v11, v45);
    *buf = 0;
    notify_get_state(v7[3], buf);
    [v12 setScreenNotDark:*buf != 1];
    v13 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      screenNotDark = [v12 screenNotDark];
      *v53 = 67109120;
      *&v53[4] = screenNotDark;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "Power: screen-notdark %d (baseline)", v53, 8u);
    }

    v16 = v2->_powerStateQueue;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __23__PowerStateRelay_init__block_invoke_6;
    v43[3] = &unk_27898B048;
    v17 = v12;
    v44 = v17;
    notify_register_dispatch("UIBacklightLevelChangedNotification", v12 + 4, v16, v43);
    *v53 = 0;
    notify_get_state(v2->powerStateToken, v53);
    [v17 setScreenBrightness:*v53];
    v18 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      screenBrightness = [v17 screenBrightness];
      *v51 = 67109120;
      v52 = screenBrightness;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "Power: screen-brightness %u (baseline)", v51, 8u);
    }

    v21 = v2->_powerStateQueue;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __23__PowerStateRelay_init__block_invoke_8;
    v41[3] = &unk_27898B048;
    v22 = v17;
    v42 = v22;
    notify_register_dispatch("com.apple.mobile.keybagd.lock_status", v17 + 6, v21, v41);
    [v22 getCurrentKeybagLockState];
    v23 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      screenUnlocked = [v22 screenUnlocked];
      *v51 = 67109120;
      v52 = screenUnlocked;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "Power: screen-unlocked %d (baseline)", v51, 8u);
    }

    [v22 enableIOKitBatteryLevelNotifications];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v22 selector:sel_handlePowerStateChange_ name:*MEMORY[0x277CCA5E8] object:0];

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [v22 setLowPowerModeEnabled:{objc_msgSend(processInfo, "isLowPowerModeEnabled")}];

    v28 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v22[64];
      *v51 = 67109120;
      v52 = v29;
      _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEFAULT, "Power: low-power-mode %d (baseline)", v51, 8u);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __23__PowerStateRelay_init__block_invoke_12;
    aBlock[3] = &unk_27898E650;
    v30 = v22;
    v40 = v30;
    v31 = _Block_copy(aBlock);
    v32 = *MEMORY[0x277D85E48];
    v33 = v2->_powerStateQueue;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __23__PowerStateRelay_init__block_invoke_16;
    v37[3] = &unk_27898E678;
    v38 = v31;
    v34 = v31;
    notify_register_dispatch(v32, v30 + 5, v33, v37);
    v34[2](v34, v30[5], 1);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v2;
}

void __23__PowerStateRelay_init__block_invoke(uint64_t a1, int token)
{
  v11 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(token, &state64);
  [*(a1 + 32) setPluggedIn:state64 == 1];
  v3 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 pluggedIn];
    *buf = 67109120;
    v10 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Power: plugged-in %d", buf, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __23__PowerStateRelay_init__block_invoke_12(uint64_t a1, int token, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (state)
  {
    v6 = state;
    [*(a1 + 32) setThermalPressure:0];
    v7 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = "";
      if (a3)
      {
        v8 = " (baseline)";
      }

      *buf = 67109378;
      *v18 = v6;
      *&v18[4] = 2080;
      *&v18[6] = v8;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "notify_get_state() for kOSThermalNotificationPressureLevelName failed (%d) %s", buf, 0x12u);
    }
  }

  else
  {
    [*(a1 + 32) setThermalPressure:state64];
    v9 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 thermalPressureLevelToString:{objc_msgSend(v10, "thermalPressure")}];
      v13 = v12;
      v14 = "";
      if (a3)
      {
        v14 = " (baseline)";
      }

      *buf = 138412546;
      *v18 = v12;
      *&v18[8] = 2080;
      *&v18[10] = v14;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Power: thermal-pressure %@ %s", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)thermalPressureLevelToString:(int64_t)string
{
  if (string > 29)
  {
    switch(string)
    {
      case 30:
        string = @"Heavy";

        break;
      case 40:
        string = @"Trapping";

        break;
      case 50:
        string = @"Sleeping";

        break;
      default:
LABEL_20:
        string = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown ThermalPressure (%ld)", string];

        return string;
    }
  }

  else if (string)
  {
    if (string != 10)
    {
      if (string == 20)
      {
        string = @"Moderate";

        return string;
      }

      goto LABEL_20;
    }

    string = @"Light";
  }

  else
  {
    string = @"Nominal";
  }

  return string;
}

- (void)dealloc
{
  [(PowerStateRelay *)self disableIOKitBatteryLevelNotifications];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobile.keybagd.lock_status", 0);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = PowerStateRelay;
  [(PowerStateRelay *)&v5 dealloc];
}

- (void)setPluggedIn:(BOOL)in
{
  if (self->_pluggedIn != in)
  {
    [(PowerStateRelay *)self willChangeValueForKey:@"pluggedIn"];
    self->_pluggedIn = in;

    [(PowerStateRelay *)self didChangeValueForKey:@"pluggedIn"];
  }
}

- (void)setScreenNotDark:(BOOL)dark
{
  if (self->_screenNotDark != dark)
  {
    [(PowerStateRelay *)self willChangeValueForKey:@"screenNotDark"];
    self->_screenNotDark = dark;

    [(PowerStateRelay *)self didChangeValueForKey:@"screenNotDark"];
  }
}

- (void)setScreenUnlocked:(BOOL)unlocked
{
  if (self->_screenUnlocked != unlocked)
  {
    [(PowerStateRelay *)self willChangeValueForKey:@"screenUnlocked"];
    self->_screenUnlocked = unlocked;

    [(PowerStateRelay *)self didChangeValueForKey:@"screenUnlocked"];
  }
}

- (void)setThermalPressure:(int64_t)pressure
{
  if (self->_thermalPressure != pressure)
  {
    [(PowerStateRelay *)self willChangeValueForKey:@"thermalPressure"];
    self->_thermalPressure = pressure;

    [(PowerStateRelay *)self didChangeValueForKey:@"thermalPressure"];
  }
}

- (void)enableIOKitBatteryLevelNotifications
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CD28A0];
  v4 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(v3, v4);
  self->_batteryService = MatchingService;
  if (!MatchingService)
  {
    v14 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v15 = "Power: Failed to get matching IOPMPowerSource";
LABEL_10:
    v16 = v14;
    v17 = 2;
LABEL_17:
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    goto LABEL_19;
  }

  v6 = IONotificationPortCreate(v3);
  self->_batteryPort = v6;
  if (!v6)
  {
    v14 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v15 = "Power: Failed to create an IONotificationPort";
    goto LABEL_10;
  }

  IONotificationPortSetDispatchQueue(v6, self->_powerStateQueue);
  v7 = IOServiceAddInterestNotification(self->_batteryPort, self->_batteryService, "IOGeneralInterest", _batteryCallback, self, &self->_batteryNotification);
  v8 = analyticsLogHandle;
  if (v7)
  {
    v9 = v7;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 67109120;
    v23 = v9;
    v10 = "Power: Failure to add interest notification for battery level: %d";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 8;
  }

  else
  {
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v10 = "Power: Successfully registered for IOPMPowerSource interest notification";
    v11 = v8;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 2;
  }

  _os_log_impl(&dword_23255B000, v11, v12, v10, buf, v13);
LABEL_14:
  v18 = IOPSGetPercentRemaining();
  if (!v18)
  {
    [(PowerStateRelay *)self setBatteryPercentage:0];
    goto LABEL_19;
  }

  v19 = v18;
  v20 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v23 = v19;
    v15 = "Power: Failure from IOPSGetPercentRemaining: %d";
    v16 = v20;
    v17 = 8;
    goto LABEL_17;
  }

LABEL_19:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)disableIOKitBatteryLevelNotifications
{
  batteryNotification = self->_batteryNotification;
  if (batteryNotification)
  {
    IOObjectRelease(batteryNotification);
  }

  batteryPort = self->_batteryPort;
  if (batteryPort)
  {
    IONotificationPortDestroy(batteryPort);
  }

  batteryService = self->_batteryService;
  if (batteryService)
  {

    IOObjectRelease(batteryService);
  }
}

- (void)setBatteryPercentage:(double)percentage
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_batteryPercentage != percentage)
  {
    [(PowerStateRelay *)obj willChangeValueForKey:@"batteryPercentage"];
    obj->_batteryPercentage = percentage;
    [(PowerStateRelay *)obj didChangeValueForKey:@"batteryPercentage"];
  }

  objc_sync_exit(obj);
}

- (void)setScreenBrightness:(unsigned int)brightness
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_screenBrightness != brightness)
  {
    [(PowerStateRelay *)obj willChangeValueForKey:@"screenBrightness"];
    obj->_screenBrightness = brightness;
    [(PowerStateRelay *)obj didChangeValueForKey:@"screenBrightness"];
  }

  objc_sync_exit(obj);
}

- (void)setBatteryCurrentCapacity:(unsigned int)capacity
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_batteryCurrentCapacity != capacity)
  {
    [(PowerStateRelay *)obj willChangeValueForKey:@"batteryCurrentCapacity"];
    obj->_batteryCurrentCapacity = capacity;
    [(PowerStateRelay *)obj didChangeValueForKey:@"batteryCurrentCapacity"];
  }

  objc_sync_exit(obj);
}

- (void)setBatteryMaximumCapacity:(unsigned int)capacity
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_batteryMaximumCapacity != capacity)
  {
    [(PowerStateRelay *)obj willChangeValueForKey:@"batteryMaximumCapacity"];
    obj->_batteryMaximumCapacity = capacity;
    [(PowerStateRelay *)obj didChangeValueForKey:@"batteryMaximumCapacity"];
  }

  objc_sync_exit(obj);
}

- (void)setBatteryDesignCapacity:(unsigned int)capacity
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_batteryDesignCapacity != capacity)
  {
    [(PowerStateRelay *)obj willChangeValueForKey:@"batteryDesignCapacity"];
    obj->_batteryDesignCapacity = capacity;
    [(PowerStateRelay *)obj didChangeValueForKey:@"batteryDesignCapacity"];
  }

  objc_sync_exit(obj);
}

- (void)setBatteryAbsoluteCapacity:(unsigned int)capacity
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_batteryAbsoluteCapacity != capacity)
  {
    [(PowerStateRelay *)obj willChangeValueForKey:@"batteryAbsoluteCapacity"];
    obj->_batteryAbsoluteCapacity = capacity;
    [(PowerStateRelay *)obj didChangeValueForKey:@"batteryAbsoluteCapacity"];
  }

  objc_sync_exit(obj);
}

- (void)setBatteryVoltage:(unsigned int)voltage
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_batteryVoltage != voltage)
  {
    [(PowerStateRelay *)obj willChangeValueForKey:@"batteryVoltage"];
    obj->_batteryVoltage = voltage;
    [(PowerStateRelay *)obj didChangeValueForKey:@"batteryVoltage"];
  }

  objc_sync_exit(obj);
}

- (void)setBatteryTimeRemaining:(unsigned int)remaining
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_batteryTimeRemaining != remaining)
  {
    [(PowerStateRelay *)obj willChangeValueForKey:@"batteryTimeRemaining"];
    obj->_batteryTimeRemaining = remaining;
    [(PowerStateRelay *)obj didChangeValueForKey:@"batteryTimeRemaining"];
  }

  objc_sync_exit(obj);
}

- (void)setBatteryTemperature:(int)temperature
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_batteryTemperature != temperature)
  {
    [(PowerStateRelay *)obj willChangeValueForKey:@"batteryTemperature"];
    obj->_batteryTemperature = temperature;
    [(PowerStateRelay *)obj didChangeValueForKey:@"batteryTemperature"];
  }

  objc_sync_exit(obj);
}

- (void)setBatteryExternalPowerIsConnected:(BOOL)connected
{
  connectedCopy = connected;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_batteryExternalPowerIsConnected != connectedCopy)
  {
    [(PowerStateRelay *)obj willChangeValueForKey:@"batteryExternalPowerIsConnected"];
    obj->_batteryExternalPowerIsConnected = connectedCopy;
    [(PowerStateRelay *)obj didChangeValueForKey:@"batteryExternalPowerIsConnected"];
  }

  objc_sync_exit(obj);
}

- (void)setBatteryIsCharging:(BOOL)charging
{
  chargingCopy = charging;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_batteryIsCharging != chargingCopy)
  {
    [(PowerStateRelay *)obj willChangeValueForKey:@"batteryIsCharging"];
    obj->_batteryIsCharging = chargingCopy;
    [(PowerStateRelay *)obj didChangeValueForKey:@"batteryIsCharging"];
  }

  objc_sync_exit(obj);
}

- (void)setBatteryFullyCharged:(BOOL)charged
{
  chargedCopy = charged;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_batteryFullyCharged != chargedCopy)
  {
    [(PowerStateRelay *)obj willChangeValueForKey:@"batteryFullyCharged"];
    obj->_batteryFullyCharged = chargedCopy;
    [(PowerStateRelay *)obj didChangeValueForKey:@"batteryFullyCharged"];
  }

  objc_sync_exit(obj);
}

- (void)setBatteryAtWarnLevel:(BOOL)level
{
  levelCopy = level;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_batteryAtWarnLevel != levelCopy)
  {
    [(PowerStateRelay *)obj willChangeValueForKey:@"batteryAtWarnLevel"];
    obj->_batteryAtWarnLevel = levelCopy;
    [(PowerStateRelay *)obj didChangeValueForKey:@"batteryAtWarnLevel"];
  }

  objc_sync_exit(obj);
}

- (void)setBatteryAtCriticalLevel:(BOOL)level
{
  levelCopy = level;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_batteryAtCriticalLevel != levelCopy)
  {
    [(PowerStateRelay *)obj willChangeValueForKey:@"batteryAtCriticalLevel"];
    obj->_batteryAtCriticalLevel = levelCopy;
    [(PowerStateRelay *)obj didChangeValueForKey:@"batteryAtCriticalLevel"];
  }

  objc_sync_exit(obj);
}

- (void)updateBatteryValuesFromPowerSourceDictionary:(id)dictionary
{
  v98 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"CurrentCapacity"];
    v7 = [v5 objectForKeyedSubscript:@"MaxCapacity"];
    if (v7)
    {
      [v6 doubleValue];
      v9 = v8 * 100.0;
      [v7 doubleValue];
      [(PowerStateRelay *)self setBatteryPercentage:v9 / v10];
      -[PowerStateRelay setBatteryMaximumCapacity:](self, "setBatteryMaximumCapacity:", [v7 unsignedIntValue]);
    }

    if (v6)
    {
      -[PowerStateRelay setBatteryCurrentCapacity:](self, "setBatteryCurrentCapacity:", [v6 unsignedIntValue]);
    }

    v11 = [v5 objectForKeyedSubscript:@"DesignCapacity"];
    v12 = v11;
    if (v11)
    {
      -[PowerStateRelay setBatteryDesignCapacity:](self, "setBatteryDesignCapacity:", [v11 unsignedIntValue]);
    }

    v13 = [v5 objectForKeyedSubscript:@"AbsoluteCapacity"];
    v14 = v13;
    if (v13)
    {
      -[PowerStateRelay setBatteryAbsoluteCapacity:](self, "setBatteryAbsoluteCapacity:", [v13 unsignedIntValue]);
    }

    v15 = [v5 objectForKeyedSubscript:@"AppleRawMaxCapacity"];
    v16 = v15;
    if (v15)
    {
      -[PowerStateRelay setBatteryRawMaximumCapacity:](self, "setBatteryRawMaximumCapacity:", [v15 unsignedIntValue]);
    }

    v17 = [v5 objectForKeyedSubscript:@"AppleRawCurrentCapacity"];
    v18 = v17;
    if (v17)
    {
      -[PowerStateRelay setBatteryRawCurrentCapacity:](self, "setBatteryRawCurrentCapacity:", [v17 unsignedIntValue]);
    }

    v19 = [v5 objectForKeyedSubscript:@"PresentDOD"];
    v20 = v19;
    if (v19)
    {
      -[PowerStateRelay setBatteryDepthOfDischarge:](self, "setBatteryDepthOfDischarge:", [v19 unsignedIntValue]);
    }

    v61 = v12;
    v21 = [v5 objectForKeyedSubscript:@"Voltage"];
    v22 = v21;
    if (v21)
    {
      -[PowerStateRelay setBatteryVoltage:](self, "setBatteryVoltage:", [v21 unsignedIntValue]);
    }

    v63 = v6;
    v23 = [v5 objectForKeyedSubscript:{@"TimeRemaining", v22}];
    v24 = v23;
    if (v23)
    {
      -[PowerStateRelay setBatteryTimeRemaining:](self, "setBatteryTimeRemaining:", [v23 unsignedIntValue]);
    }

    v62 = v7;
    v25 = [v5 objectForKeyedSubscript:@"ExternalConnected"];
    v26 = v25;
    if (v25)
    {
      -[PowerStateRelay setBatteryExternalPowerIsConnected:](self, "setBatteryExternalPowerIsConnected:", [v25 BOOLValue]);
    }

    v60 = v14;
    v27 = [v5 objectForKeyedSubscript:@"IsCharging"];
    v28 = v27;
    if (v27)
    {
      -[PowerStateRelay setBatteryIsCharging:](self, "setBatteryIsCharging:", [v27 BOOLValue]);
    }

    v59 = v16;
    v29 = [v5 objectForKeyedSubscript:@"FullyCharged"];
    v30 = v29;
    if (v29)
    {
      -[PowerStateRelay setBatteryFullyCharged:](self, "setBatteryFullyCharged:", [v29 BOOLValue]);
    }

    v58 = v18;
    v31 = [v5 objectForKeyedSubscript:@"AtWarnLevel"];
    v32 = v31;
    if (v31)
    {
      -[PowerStateRelay setBatteryAtWarnLevel:](self, "setBatteryAtWarnLevel:", [v31 BOOLValue]);
    }

    v57 = v20;
    v33 = [v5 objectForKeyedSubscript:@"AtCriticalLevel"];
    v34 = v33;
    if (v33)
    {
      -[PowerStateRelay setBatteryAtCriticalLevel:](self, "setBatteryAtCriticalLevel:", [v33 BOOLValue]);
    }

    v35 = [v5 objectForKeyedSubscript:@"Temperature"];
    v36 = v35;
    if (v35)
    {
      -[PowerStateRelay setBatteryTemperature:](self, "setBatteryTemperature:", [v35 intValue]);
    }

    v37 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      batteryPercentage = self->_batteryPercentage;
      batteryExternalPowerIsConnected = self->_batteryExternalPowerIsConnected;
      batteryIsCharging = self->_batteryIsCharging;
      batteryAtWarnLevel = self->_batteryAtWarnLevel;
      batteryAtCriticalLevel = self->_batteryAtCriticalLevel;
      batteryMaximumCapacity = self->_batteryMaximumCapacity;
      batteryDesignCapacity = self->_batteryDesignCapacity;
      batteryFullyCharged = self->_batteryFullyCharged;
      batteryTimeRemaining = self->_batteryTimeRemaining;
      batteryTemperature = self->_batteryTemperature;
      screenBrightness = self->_screenBrightness;
      batteryCurrentCapacity = self->_batteryCurrentCapacity;
      batteryAbsoluteCapacity = self->_batteryAbsoluteCapacity;
      batteryRawCurrentCapacity = self->_batteryRawCurrentCapacity;
      batteryRawMaximumCapacity = self->_batteryRawMaximumCapacity;
      batteryVoltage = self->_batteryVoltage;
      batteryDepthOfDischarge = self->_batteryDepthOfDischarge;
      *buf = 134222080;
      v65 = batteryPercentage;
      v66 = 1024;
      v67 = batteryExternalPowerIsConnected;
      v68 = 1024;
      v69 = batteryIsCharging;
      v70 = 1024;
      v71 = batteryAtWarnLevel;
      v72 = 1024;
      v73 = batteryAtCriticalLevel;
      v74 = 1024;
      v75 = batteryAbsoluteCapacity;
      v76 = 1024;
      v77 = batteryVoltage;
      v78 = 1024;
      v79 = batteryCurrentCapacity;
      v80 = 1024;
      v81 = batteryMaximumCapacity;
      v82 = 1024;
      v83 = batteryDesignCapacity;
      v84 = 1024;
      v85 = batteryTimeRemaining;
      v86 = 1024;
      v87 = batteryFullyCharged;
      v88 = 1024;
      v89 = batteryTemperature;
      v90 = 1024;
      v91 = screenBrightness;
      v92 = 1024;
      v93 = batteryRawCurrentCapacity;
      v94 = 1024;
      v95 = batteryRawMaximumCapacity;
      v96 = 1024;
      v97 = batteryDepthOfDischarge;
      _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_DEFAULT, "Power: battery-percentage %.2f battery-power-connected %d battery-charging %d battery-warn %d battery-critical %d battery-absolute-capacity-mAh %u battery-voltage-mV %u battery-current-capacity-%% %u battery-maximum-capacity-%% %u battery-design-capacity-mAh %u battery-time-remaining %u battery-fully-charged %d battery-temperature %d screen-brightness %u battery-raw-current-capacity %u battery-raw-maximum-capacity %u presentDOD %u", buf, 0x6Cu);
    }
  }

  else
  {
    [(PowerStateRelay *)self setBatteryPercentage:100.0];
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (void)handlePowerStateChange:(id)change
{
  object = [change object];
  isLowPowerModeEnabled = [object isLowPowerModeEnabled];
  powerStateQueue = self->_powerStateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__PowerStateRelay_handlePowerStateChange___block_invoke;
  v7[3] = &unk_27898A3A0;
  v7[4] = self;
  v8 = isLowPowerModeEnabled;
  dispatch_async(powerStateQueue, v7);
}

void __42__PowerStateRelay_handlePowerStateChange___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setLowPowerModeEnabled:*(a1 + 40)];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v6[0] = 67109120;
    v6[1] = [v3 lowPowerModeEnabled];
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Power: low-power-mode %d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setLowPowerModeEnabled:(BOOL)enabled
{
  if (self->_lowPowerModeEnabled != enabled)
  {
    [(PowerStateRelay *)self willChangeValueForKey:@"lowPowerModeEnabled"];
    self->_lowPowerModeEnabled = enabled;

    [(PowerStateRelay *)self didChangeValueForKey:@"lowPowerModeEnabled"];
  }
}

uint64_t __31__PowerStateRelay_defaultRelay__block_invoke()
{
  v0 = objc_alloc_init(PowerStateRelay);
  v1 = sharedInstance_5;
  sharedInstance_5 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end