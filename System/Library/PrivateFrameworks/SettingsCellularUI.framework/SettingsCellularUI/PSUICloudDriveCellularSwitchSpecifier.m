@interface PSUICloudDriveCellularSwitchSpecifier
- (BOOL)shouldShowCloudDrive;
- (PSUICloudDriveCellularSwitchSpecifier)initWithAppleAccountStore:(id)a3;
- (id)cloudDriveGroupSpecifier;
- (id)usagePolicy;
- (void)setUsagePolicy:(id)a3;
@end

@implementation PSUICloudDriveCellularSwitchSpecifier

- (PSUICloudDriveCellularSwitchSpecifier)initWithAppleAccountStore:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CLOUD_DRIVE_CELLULAR" value:&stru_287733598 table:@"Cellular"];
  v8 = [MEMORY[0x277D4D860] sharedInstance];
  v11.receiver = self;
  v11.super_class = PSUICloudDriveCellularSwitchSpecifier;
  v9 = [(PSAppDataUsagePolicySwitchSpecifier *)&v11 initWithBundleID:@"com.apple.preferences.settings.cellular.per-app_usage.cache.clouddrive" displayName:v7 statisticsCache:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_accountStore, a3);
  }

  return v9;
}

- (BOOL)shouldShowCloudDrive
{
  v2 = [(PSUICloudDriveCellularSwitchSpecifier *)self appleAccount];
  v3 = [v2 isEnabledForDataclass:*MEMORY[0x277CB91D8]];

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
  v4 = [MEMORY[0x277D4D850] sharedInstance];
  v5 = [v3 numberWithInt:{objc_msgSend(v4, "isGlobalDataModificationRestricted") ^ 1}];
  [(PSUICloudDriveCellularSwitchSpecifier *)self setProperty:v5 forKey:*MEMORY[0x277D3FF38]];

  v6 = [(PSUICloudDriveCellularSwitchSpecifier *)self appleAccount];
  if ([v6 aa_useCellularForDataclass:*MEMORY[0x277CB91D8]])
  {
    v7 = [(PSUICloudDriveCellularSwitchSpecifier *)self appleAccount];
    v8 = [v7 aa_useCellularForDataclass:*MEMORY[0x277CB9140]];
  }

  else
  {
    v8 = 0;
  }

  v9 = MEMORY[0x277CCABB0];

  return [v9 numberWithBool:v8];
}

- (void)setUsagePolicy:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUICloudDriveCellularSwitchSpecifier *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[PSUICloudDriveCellularSwitchSpecifier setUsagePolicy:]";
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s setting: %@", buf, 0x16u);
  }

  v6 = [(PSUICloudDriveCellularSwitchSpecifier *)self appleAccount];
  v7 = [v4 BOOLValue];
  [v6 aa_setUseCellular:v7 forDataclass:*MEMORY[0x277CB91D8]];
  v8 = [v4 BOOLValue];
  [v6 aa_setUseCellular:v8 forDataclass:*MEMORY[0x277CB9140]];
  accountStore = self->_accountStore;
  v17 = 0;
  v10 = [(ACAccountStore *)accountStore saveVerifiedAccount:v6 error:&v17];
  v11 = v17;
  v12 = [(PSUICloudDriveCellularSwitchSpecifier *)self getLogger];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v13)
    {
      *buf = 136315394;
      v19 = "[PSUICloudDriveCellularSwitchSpecifier setUsagePolicy:]";
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_2658DE000, v12, OS_LOG_TYPE_DEFAULT, "%s set succeeded: %@", buf, 0x16u);
    }
  }

  else
  {
    if (v13)
    {
      *buf = 136315394;
      v19 = "[PSUICloudDriveCellularSwitchSpecifier setUsagePolicy:]";
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_2658DE000, v12, OS_LOG_TYPE_DEFAULT, "%s set failed: %@", buf, 0x16u);
    }

    [v6 reload];
    v14 = [(PSAppCellularUsageSpecifier *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v12 = [(PSAppCellularUsageSpecifier *)self delegate];
      [v12 didFailToSetPolicyForSpecifier:self];
    }

    else
    {
      v12 = [(PSUICloudDriveCellularSwitchSpecifier *)self getLogger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2658DE000, v12, OS_LOG_TYPE_ERROR, "Delegate does not respond to didFailToSetPolicyForSpecifier:", buf, 2u);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end