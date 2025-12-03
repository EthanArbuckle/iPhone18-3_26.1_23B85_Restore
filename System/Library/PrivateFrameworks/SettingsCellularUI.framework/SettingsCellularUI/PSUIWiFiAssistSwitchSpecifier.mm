@interface PSUIWiFiAssistSwitchSpecifier
+ (BOOL)shouldShowWifiAssist:(id)assist;
+ (id)wifiAssistGroupSpecifier;
- (id)initDefault;
- (id)usagePolicy;
- (unint64_t)dataUsage;
- (void)dealloc;
- (void)setUsagePolicy:(id)policy;
@end

@implementation PSUIWiFiAssistSwitchSpecifier

- (id)initDefault
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = SFLocalizableWAPIStringKeyForKey();
  v5 = [v3 localizedStringForKey:v4 value:&stru_287733598 table:@"Cellular"];
  mEMORY[0x277D4D860] = [MEMORY[0x277D4D860] sharedInstance];
  v10.receiver = self;
  v10.super_class = PSUIWiFiAssistSwitchSpecifier;
  v7 = [(PSAppDataUsagePolicySwitchSpecifier *)&v10 initWithBundleID:@"com.apple.datausage.wifiassist" displayName:v5 statisticsCache:mEMORY[0x277D4D860]];

  if (v7)
  {
    [(PSAppDataUsagePolicySwitchSpecifier *)v7 setShouldShowUsage:1];
    v8 = *MEMORY[0x277CBECE8];
    v7->_serverConnection = _CTServerConnectionCreateOnTargetQueue();
  }

  return v7;
}

- (void)dealloc
{
  serverConnection = self->_serverConnection;
  if (serverConnection)
  {
    CFRelease(serverConnection);
  }

  v4.receiver = self;
  v4.super_class = PSUIWiFiAssistSwitchSpecifier;
  [(PSUIWiFiAssistSwitchSpecifier *)&v4 dealloc];
}

+ (BOOL)shouldShowWifiAssist:(id)assist
{
  assistCopy = assist;
  if (MGGetBoolAnswer())
  {
    shouldShowWifiAssistForActiveDataPlan = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2658DE000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RNF not supported", v6, 2u);
      shouldShowWifiAssistForActiveDataPlan = 0;
    }
  }

  else
  {
    shouldShowWifiAssistForActiveDataPlan = [assistCopy shouldShowWifiAssistForActiveDataPlan];
  }

  return shouldShowWifiAssistForActiveDataPlan;
}

+ (id)wifiAssistGroupSpecifier
{
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = SFLocalizableWAPIStringKeyForKey();
  v5 = [v3 localizedStringForKey:v4 value:&stru_287733598 table:@"Cellular"];
  [emptyGroupSpecifier setProperty:v5 forKey:*MEMORY[0x277D3FF88]];

  return emptyGroupSpecifier;
}

- (unint64_t)dataUsage
{
  billingPeriodSource = [(PSAppCellularUsageSpecifier *)self billingPeriodSource];
  mEMORY[0x277D4D860] = [MEMORY[0x277D4D860] sharedInstance];
  if (billingPeriodSource)
  {
    selectedPeriod = [billingPeriodSource selectedPeriod];
  }

  else
  {
    selectedPeriod = 0;
  }

  v5 = [mEMORY[0x277D4D860] wifiAssistUsageForPeriod:selectedPeriod];

  cellularHome = [v5 cellularHome];
  cellularRoaming = [v5 cellularRoaming];

  return cellularRoaming + cellularHome;
}

- (id)usagePolicy
{
  v20 = *MEMORY[0x277D85DE8];
  if (!self->_serverConnection)
  {
    getLogger = [(PSUIWiFiAssistSwitchSpecifier *)self getLogger];
    if (!os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v9 = "Failed to get CT connection";
    goto LABEL_12;
  }

  if ([(PSAppCellularUsageSpecifier *)self shouldShowUsage])
  {
    dataUsageString = [(PSAppCellularUsageSpecifier *)self dataUsageString];
    [(PSUIWiFiAssistSwitchSpecifier *)self setProperty:dataUsageString forKey:*MEMORY[0x277D40160]];
  }

  serverConnection = self->_serverConnection;
  v5 = _CTServerConnectionCopyReliableNetworkFallbackSettings();
  v6 = HIDWORD(v5);
  if (HIDWORD(v5))
  {
    v10 = v5;
    getLogger = [(PSUIWiFiAssistSwitchSpecifier *)self getLogger];
    if (!os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 67109376;
    v17 = v10;
    v18 = 1024;
    v19 = v6;
    v9 = "Failed to fetch RNF setting with error %i:%i";
    v11 = getLogger;
    v12 = 14;
    goto LABEL_13;
  }

  v7 = +[PSUICoreTelephonyDataCache sharedInstance];
  [v7 isCellularDataEnabled];

  getLogger = [(PSUIWiFiAssistSwitchSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v9 = "Missing RNF setting!";
LABEL_12:
    v11 = getLogger;
    v12 = 2;
LABEL_13:
    _os_log_error_impl(&dword_2658DE000, v11, OS_LOG_TYPE_ERROR, v9, buf, v12);
  }

LABEL_14:

  v13 = MEMORY[0x277CBEC28];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)setUsagePolicy:(id)policy
{
  *&v20[5] = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  getLogger = [(PSUIWiFiAssistSwitchSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [policyCopy BOOLValue];
    v7 = "NO";
    if (bOOLValue)
    {
      v7 = "YES";
    }

    v19 = 136315138;
    *v20 = v7;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Setting policy to %s", &v19, 0xCu);
  }

  if (self->_serverConnection)
  {
    [policyCopy BOOLValue];
    v8 = _CTServerConnectionSetReliableNetworkFallbackToCellular();
    v9 = HIDWORD(v8);
    if (!HIDWORD(v8))
    {
      goto LABEL_15;
    }

    v10 = v8;
    getLogger2 = [(PSUIWiFiAssistSwitchSpecifier *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      v19 = 67109376;
      v20[0] = v10;
      LOWORD(v20[1]) = 1024;
      *(&v20[1] + 2) = v9;
      v12 = "Failed to set RNF setting with error %i:%i";
      v13 = getLogger2;
      v14 = 14;
LABEL_17:
      _os_log_error_impl(&dword_2658DE000, v13, OS_LOG_TYPE_ERROR, v12, &v19, v14);
    }
  }

  else
  {
    getLogger2 = [(PSUIWiFiAssistSwitchSpecifier *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      v12 = "Failed to get CT connection";
      v13 = getLogger2;
      v14 = 2;
      goto LABEL_17;
    }
  }

  delegate = [(PSAppCellularUsageSpecifier *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    delegate2 = [(PSAppCellularUsageSpecifier *)self delegate];
    [delegate2 didFailToSetPolicyForSpecifier:self];
  }

  else
  {
    delegate2 = [(PSUIWiFiAssistSwitchSpecifier *)self getLogger];
    if (os_log_type_enabled(delegate2, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&dword_2658DE000, delegate2, OS_LOG_TYPE_ERROR, "Delegate does not respond to didFailToSetPolicyForSpecifier:", &v19, 2u);
    }
  }

LABEL_15:
  v18 = *MEMORY[0x277D85DE8];
}

@end