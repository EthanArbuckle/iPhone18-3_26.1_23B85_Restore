@interface _HKBehavior(HKSPSleep)
- (BOOL)hksp_activePairedDeviceHasHomeButton;
- (BOOL)hksp_hasActivePairedDevice;
- (id)hksp_activePairedDeviceProductType;
- (uint64_t)_hksp_activePairedDeviceSupportsCapability:()HKSPSleep;
- (uint64_t)_hksp_supportsSleep_checkTinker:()HKSPSleep;
- (uint64_t)hksp_activePairedDeviceSupportsFocusMode;
- (uint64_t)hksp_activePairedDeviceSupportsSleep;
- (uint64_t)hksp_activePairedDeviceSupportsSleepLauncherComplication;
- (uint64_t)hksp_activePairedDeviceSupportsSleepStages;
- (uint64_t)hksp_demoMode;
- (uint64_t)hksp_device;
- (uint64_t)hksp_supportsLegacySleepAlarms;
- (uint64_t)hksp_supportsSleepWidget;
- (uint64_t)hksp_supportsWakeUpResults;
- (uint64_t)hksp_useDemoSleepData;
- (void)hksp_activePairedDeviceHasSleepAppInstalledWithCompletion:()HKSPSleep;
@end

@implementation _HKBehavior(HKSPSleep)

- (uint64_t)hksp_device
{
  if ([self isAppleWatch])
  {
    return 2;
  }

  if ([self isiPad])
  {
    return 4;
  }

  currentDeviceClass = [self currentDeviceClass];
  if ([currentDeviceClass isEqualToString:@"iPhone"])
  {
    v2 = 1;
  }

  else if ([currentDeviceClass isEqualToString:@"RealityDevice"])
  {
    v2 = 6;
  }

  else if ([currentDeviceClass isEqualToString:@"iPod"])
  {
    v2 = 3;
  }

  else if ([currentDeviceClass isEqualToString:@"Mac"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 1000;
  }

  return v2;
}

- (uint64_t)_hksp_supportsSleep_checkTinker:()HKSPSleep
{
  hksp_device = [self hksp_device];
  v6 = hksp_device;
  if (hksp_device <= 3)
  {
    result = 1;
    if (v6 == 1)
    {
      return result;
    }

    if (v6 != 2)
    {
      if (v6 == 3)
      {
        return result;
      }

      return 0;
    }

    if (!a3)
    {
      return result;
    }

    if ([self tinkerModeEnabled])
    {
      v9 = HKSPLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "sleep not available for tinker";
        v11 = buf;
        goto LABEL_19;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (hksp_device > 5)
    {
      return 0;
    }

    if (hksp_device == 4)
    {
      features = [self features];
      sleepOnIpad = [features sleepOnIpad];

      if ((sleepOnIpad & 1) == 0)
      {
        v9 = HKSPLogForCategory(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 0;
          v10 = "sleep not available for iPad";
          v11 = &v16;
          goto LABEL_19;
        }

LABEL_20:

        return 0;
      }
    }

    else
    {
      features2 = [self features];
      sleepOnMac = [features2 sleepOnMac];

      if ((sleepOnMac & 1) == 0)
      {
        v9 = HKSPLogForCategory(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 0;
          v10 = "sleep not available for Mac";
          v11 = &v15;
LABEL_19:
          _os_log_impl(&dword_269A84000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }
  }

  return 1;
}

- (uint64_t)hksp_supportsSleepWidget
{
  result = [self hksp_supportsHealthData];
  if (result)
  {
    hksp_device = [self hksp_device];
    if ((hksp_device - 1) >= 3)
    {
      if (hksp_device == 4)
      {
        features = [self features];
        sleepOnIpad = [features sleepOnIpad];

        return sleepOnIpad;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (uint64_t)hksp_supportsWakeUpResults
{
  result = [self hksp_supportsHealthData];
  if (result)
  {
    hksp_device = [self hksp_device];
    if (hksp_device == 1 || hksp_device == 3)
    {
      return 1;
    }

    else if (hksp_device == 2)
    {
      hksp_internalUserDefaults = [MEMORY[0x277CBEBD0] hksp_internalUserDefaults];
      hksp_watchResultsNotificationsEnabled = [hksp_internalUserDefaults hksp_watchResultsNotificationsEnabled];

      return hksp_watchResultsNotificationsEnabled;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)hksp_supportsLegacySleepAlarms
{
  result = [self hksp_supportsSleepAlarms];
  if (result)
  {
    return (([self hksp_device] - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  return result;
}

- (uint64_t)hksp_useDemoSleepData
{
  if ([self isRunningStoreDemoMode])
  {
    v1 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v2 = "running in demo mode";
      v3 = &v11;
LABEL_7:
      _os_log_impl(&dword_269A84000, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  hksp_internalUserDefaults = [MEMORY[0x277CBEBD0] hksp_internalUserDefaults];
  hksp_useDemoSleepData = [hksp_internalUserDefaults hksp_useDemoSleepData];

  v6 = HKSPLogForCategory(0);
  v1 = v6;
  if (hksp_useDemoSleepData)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v2 = "use demo data default set";
      v3 = buf;
      goto LABEL_7;
    }

LABEL_8:
    v7 = 1;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_269A84000, v1, OS_LOG_TYPE_INFO, "using live data", v9, 2u);
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (BOOL)hksp_hasActivePairedDevice
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];
  v2 = getActivePairedDevice != 0;

  return v2;
}

- (uint64_t)hksp_activePairedDeviceSupportsSleep
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C0F3C2C3-0CDE-4DF9-A95A-789AC9A0348B"];
  v3 = [self _hksp_activePairedDeviceSupportsCapability:v2];

  return v3;
}

- (uint64_t)hksp_activePairedDeviceSupportsSleepStages
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"A70EA46D-407A-4723-A8EF-CFF5DFB423B4"];
  v3 = [self _hksp_activePairedDeviceSupportsCapability:v2];

  return v3;
}

- (uint64_t)hksp_activePairedDeviceSupportsFocusMode
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"FFDA9C57-8508-4B50-B6D8-EEE862251FC0"];
  v3 = [self _hksp_activePairedDeviceSupportsCapability:v2];

  return v3;
}

- (uint64_t)hksp_activePairedDeviceSupportsSleepLauncherComplication
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"E49AA0D4-4AA5-47C3-9272-4644AF0E6FA9"];
  v3 = [self _hksp_activePairedDeviceSupportsCapability:v2];

  return v3;
}

- (uint64_t)_hksp_activePairedDeviceSupportsCapability:()HKSPSleep
{
  v3 = MEMORY[0x277D2BCF8];
  v4 = a3;
  sharedInstance = [v3 sharedInstance];
  getActivePairedDevice = [sharedInstance getActivePairedDevice];
  v7 = [getActivePairedDevice supportsCapability:v4];

  return v7;
}

- (BOOL)hksp_activePairedDeviceHasHomeButton
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];
  v2 = getActivePairedDevice;
  if (getActivePairedDevice)
  {
    v3 = [getActivePairedDevice valueForProperty:*MEMORY[0x277D2BB18]];
    integerValue = [v3 integerValue];

    v5 = integerValue != 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)hksp_activePairedDeviceProductType
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  v2 = [getActivePairedDevice valueForProperty:*MEMORY[0x277D2BBC0]];

  return v2;
}

- (void)hksp_activePairedDeviceHasSleepAppInstalledWithCompletion:()HKSPSleep
{
  v3 = a3;
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];
  if (getActivePairedDevice)
  {
    mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __84___HKBehavior_HKSPSleep__hksp_activePairedDeviceHasSleepAppInstalledWithCompletion___block_invoke;
    v8[3] = &unk_279C74AD8;
    v9 = v3;
    [mEMORY[0x277CEAF80] applicationIsInstalledOnPairedDevice:getActivePairedDevice withBundleID:@"com.apple.NanoSleep.watchkitapp" completion:v8];
  }

  else
  {
    v7 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "no active paired device", buf, 2u);
    }

    (*(v3 + 2))(v3, 0, 0);
  }
}

- (uint64_t)hksp_demoMode
{
  if ([self isRunningStoreDemoMode])
  {
    return 1;
  }

  return [self runningInStoreDemoModeF201];
}

@end