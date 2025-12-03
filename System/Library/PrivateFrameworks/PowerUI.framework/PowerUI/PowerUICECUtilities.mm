@interface PowerUICECUtilities
+ (BOOL)deviceWasRestartedWithDefaults:(id)defaults;
+ (BOOL)isDemoCECSupported;
+ (BOOL)isDemoCecFlagEnabledForStore;
+ (BOOL)isDemoDevice;
+ (BOOL)isPluggedIntoEligiblePowerSourceWithContext:(id)context;
+ (BOOL)resetStateOnUnplug;
+ (id)fetchEstimatedCountryCode;
+ (id)log;
+ (void)fetchEstimatedCountryCode;
+ (void)isDemoDevice;
+ (void)resetStateOnUnplug;
@end

@implementation PowerUICECUtilities

+ (id)log
{
  v2 = log_log_1;
  if (!log_log_1)
  {
    v3 = os_log_create("com.apple.powerui.cecutilities", "");
    v4 = log_log_1;
    log_log_1 = v3;

    v2 = log_log_1;
  }

  return v2;
}

+ (id)fetchEstimatedCountryCode
{
  v2 = os_log_create("com.apple.powerui.cec", "");
  currentEstimates = [MEMORY[0x277D443A8] currentEstimates];
  if ([currentEstimates count])
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      +[PowerUICECUtilities fetchEstimatedCountryCode];
    }

    v4 = [currentEstimates objectAtIndexedSubscript:0];
    countryCode = [v4 countryCode];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      +[PowerUICECUtilities fetchEstimatedCountryCode];
    }

LABEL_12:
    v7 = countryCode;

    lastKnownEstimates = currentEstimates;
    goto LABEL_13;
  }

  lastKnownEstimates = [MEMORY[0x277D443A8] lastKnownEstimates];

  if ([lastKnownEstimates count])
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      +[PowerUICECUtilities fetchEstimatedCountryCode];
    }

    v4 = [lastKnownEstimates objectAtIndexedSubscript:0];
    countryCode = [v4 countryCode];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      +[PowerUICECUtilities fetchEstimatedCountryCode];
    }

    currentEstimates = lastKnownEstimates;
    goto LABEL_12;
  }

  v7 = 0;
LABEL_13:

  return v7;
}

+ (BOOL)isDemoDevice
{
  if (+[PowerUISmartChargeUtilities isInternalBuild])
  {
    v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.powerui.cec"];
    v3 = [v2 objectForKey:@"testIsDemoDevice"];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_opt_class() log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        +[(PowerUICECUtilities *)v4];
      }

      bOOLValue = [v4 BOOLValue];
      return bOOLValue;
    }
  }

  mEMORY[0x277D29510] = [MEMORY[0x277D29510] sharedInstance];
  v15 = 0;
  v8 = [mEMORY[0x277D29510] isSecureDemoModeEnabled:&v15];
  v9 = v15;

  if (v9)
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[PowerUICECUtilities isDemoDevice];
    }
  }

  else
  {
    mEMORY[0x277D29510]2 = [MEMORY[0x277D29510] sharedInstance];
    v14 = 0;
    v12 = [mEMORY[0x277D29510]2 isDeviceEnrolledWithDeKOTA:&v14];
    v9 = v14;

    if (!v9)
    {
      return v8 & v12;
    }

    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[PowerUICECUtilities isDemoDevice];
    }
  }

  return 0;
}

+ (BOOL)isDemoCecFlagEnabledForStore
{
  mEMORY[0x277D29520] = [MEMORY[0x277D29520] sharedInstance];
  isCleanEnergyChargingEnabled = [mEMORY[0x277D29520] isCleanEnergyChargingEnabled];

  return isCleanEnergyChargingEnabled;
}

+ (BOOL)isDemoCECSupported
{
  v2 = +[PowerUICECUtilities isDemoDevice];
  v3 = +[PowerUISmartChargeUtilities isiPhone];
  return v2 & (v3 | +[PowerUISmartChargeUtilities isiPad]);
}

+ (BOOL)isPluggedIntoEligiblePowerSourceWithContext:(id)context
{
  if (![PowerUISmartChargeUtilities isPluggedInWithContext:context])
  {
    return 0;
  }

  if (+[PowerUISmartChargeUtilities isInternalBuild])
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.powerui.cec"];
    v4 = [v3 objectForKey:@"testPowerSource"];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_opt_class() log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [PowerUICECUtilities isPluggedIntoEligiblePowerSourceWithContext:v5];
      }

      bOOLValue = [v5 BOOLValue];
      goto LABEL_23;
    }
  }

  v8 = *MEMORY[0x277CD2898];
  v9 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(v8, v9);
  if (MatchingService)
  {
    properties = 0;
    if (IORegistryEntryCreateCFProperties(MatchingService, &properties, *MEMORY[0x277CBECE8], 0))
    {
      v3 = [objc_opt_class() log];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        +[PowerUICECUtilities isPluggedIntoEligiblePowerSourceWithContext:];
      }

      bOOLValue = 1;
      goto LABEL_24;
    }

    v3 = properties;
    v12 = [(__CFDictionary *)properties objectForKeyedSubscript:@"FedDetails"];
    v5 = v12;
    if (v12 && ([v12 objectAtIndexedSubscript:0], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKeyedSubscript:", @"FedExternalConnected"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "BOOLValue"), v14, v13, (v15 & 1) == 0))
    {
      v16 = [objc_opt_class() log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "Device powering from another device", v18, 2u);
      }

      bOOLValue = 0;
    }

    else
    {
      bOOLValue = 1;
    }

LABEL_23:

LABEL_24:
    return bOOLValue;
  }

  v11 = [objc_opt_class() log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    +[PowerUICECUtilities isPluggedIntoEligiblePowerSourceWithContext:];
  }

  return 1;
}

+ (BOOL)deviceWasRestartedWithDefaults:(id)defaults
{
  v3 = [defaults stringForKey:@"bootUUIDOnLastInit"];
  v4 = +[PowerUISmartChargeUtilities getCurrentBootSessionUUID];
  v5 = [v4 isEqualToString:v3];

  return v5 ^ 1;
}

+ (BOOL)resetStateOnUnplug
{
  if (!+[PowerUISmartChargeUtilities isInternalBuild])
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.powerui.cec"];
  v3 = [v2 objectForKey:@"testResetState"];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[(PowerUICECUtilities *)v4];
  }

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

+ (void)fetchEstimatedCountryCode
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_21B766000, v0, v1, "Last known estimated countries = %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)isDemoDevice
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)isPluggedIntoEligiblePowerSourceWithContext:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 BOOLValue];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_5(&dword_21B766000, v1, v2, "TestMode: Power source value set to %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)isPluggedIntoEligiblePowerSourceWithContext:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)resetStateOnUnplug
{
  v9 = *MEMORY[0x277D85DE8];
  [self BOOLValue];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_5(&dword_21B766000, v1, v2, "TestMode: Allow reset state on unplug set to %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end