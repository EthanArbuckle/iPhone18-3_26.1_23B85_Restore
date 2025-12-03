@interface PSUICloudDriveCellularSwitchSpecifier
- (BOOL)shouldShowCloudDrive;
- (PSUICloudDriveCellularSwitchSpecifier)initWithAppleAccountStore:(id)store;
- (id)cloudDriveGroupSpecifier;
- (id)usagePolicy;
- (void)setUsagePolicy:(id)policy;
@end

@implementation PSUICloudDriveCellularSwitchSpecifier

- (PSUICloudDriveCellularSwitchSpecifier)initWithAppleAccountStore:(id)store
{
  storeCopy = store;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CLOUD_DRIVE_CELLULAR" value:&stru_287733598 table:@"Cellular"];
  mEMORY[0x277D4D860] = [MEMORY[0x277D4D860] sharedInstance];
  v11.receiver = self;
  v11.super_class = PSUICloudDriveCellularSwitchSpecifier;
  v9 = [(PSAppDataUsagePolicySwitchSpecifier *)&v11 initWithBundleID:@"com.apple.preferences.settings.cellular.per-app_usage.cache.clouddrive" displayName:v7 statisticsCache:mEMORY[0x277D4D860]];

  if (v9)
  {
    objc_storeStrong(&v9->_accountStore, store);
  }

  return v9;
}

- (BOOL)shouldShowCloudDrive
{
  appleAccount = [(PSUICloudDriveCellularSwitchSpecifier *)self appleAccount];
  v3 = [appleAccount isEnabledForDataclass:*MEMORY[0x277CB91D8]];

  return v3;
}

- (id)cloudDriveGroupSpecifier
{
  v2 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CDSCellular"];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = SFLocalizableWAPIStringKeyForKey();
  v5 = [v3 localizedStringForKey:v4 value:&stru_287733598 table:@"Cellular"];
  [v2 setProperty:v5 forKey:*MEMORY[0x277D3FF88]];

  return v2;
}

- (id)usagePolicy
{
  v3 = MEMORY[0x277CCABB0];
  mEMORY[0x277D4D850] = [MEMORY[0x277D4D850] sharedInstance];
  v5 = [v3 numberWithInt:{objc_msgSend(mEMORY[0x277D4D850], "isGlobalDataModificationRestricted") ^ 1}];
  [(PSUICloudDriveCellularSwitchSpecifier *)self setProperty:v5 forKey:*MEMORY[0x277D3FF38]];

  appleAccount = [(PSUICloudDriveCellularSwitchSpecifier *)self appleAccount];
  if ([appleAccount aa_useCellularForDataclass:*MEMORY[0x277CB91D8]])
  {
    appleAccount2 = [(PSUICloudDriveCellularSwitchSpecifier *)self appleAccount];
    v8 = [appleAccount2 aa_useCellularForDataclass:*MEMORY[0x277CB9140]];
  }

  else
  {
    v8 = 0;
  }

  v9 = MEMORY[0x277CCABB0];

  return [v9 numberWithBool:v8];
}

- (void)setUsagePolicy:(id)policy
{
  v22 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  getLogger = [(PSUICloudDriveCellularSwitchSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[PSUICloudDriveCellularSwitchSpecifier setUsagePolicy:]";
    v20 = 2112;
    v21 = policyCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s setting: %@", buf, 0x16u);
  }

  appleAccount = [(PSUICloudDriveCellularSwitchSpecifier *)self appleAccount];
  bOOLValue = [policyCopy BOOLValue];
  [appleAccount aa_setUseCellular:bOOLValue forDataclass:*MEMORY[0x277CB91D8]];
  bOOLValue2 = [policyCopy BOOLValue];
  [appleAccount aa_setUseCellular:bOOLValue2 forDataclass:*MEMORY[0x277CB9140]];
  accountStore = self->_accountStore;
  v17 = 0;
  v10 = [(ACAccountStore *)accountStore saveVerifiedAccount:appleAccount error:&v17];
  v11 = v17;
  getLogger2 = [(PSUICloudDriveCellularSwitchSpecifier *)self getLogger];
  v13 = os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v13)
    {
      *buf = 136315394;
      v19 = "[PSUICloudDriveCellularSwitchSpecifier setUsagePolicy:]";
      v20 = 2112;
      v21 = policyCopy;
      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s set succeeded: %@", buf, 0x16u);
    }
  }

  else
  {
    if (v13)
    {
      *buf = 136315394;
      v19 = "[PSUICloudDriveCellularSwitchSpecifier setUsagePolicy:]";
      v20 = 2112;
      v21 = policyCopy;
      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s set failed: %@", buf, 0x16u);
    }

    [appleAccount reload];
    delegate = [(PSAppCellularUsageSpecifier *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      getLogger2 = [(PSAppCellularUsageSpecifier *)self delegate];
      [getLogger2 didFailToSetPolicyForSpecifier:self];
    }

    else
    {
      getLogger2 = [(PSUICloudDriveCellularSwitchSpecifier *)self getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_ERROR, "Delegate does not respond to didFailToSetPolicyForSpecifier:", buf, 2u);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end