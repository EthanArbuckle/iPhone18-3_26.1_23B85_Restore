@interface PSUICloudBackupCellularSwitchSpecifier
- (BOOL)shouldShowCloudBackupCarrier;
- (PSUICloudBackupCellularSwitchSpecifier)initWithAppleAccountStore:(id)a3 backupManagerWrapper:(id)a4;
- (id)cloudBackupGroupSpecifier;
- (id)usagePolicy;
- (void)setUsagePolicy:(id)a3;
@end

@implementation PSUICloudBackupCellularSwitchSpecifier

- (PSUICloudBackupCellularSwitchSpecifier)initWithAppleAccountStore:(id)a3 backupManagerWrapper:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CLOUD_BACKUP_CELLULAR" value:&stru_287733598 table:@"Cellular"];
  v11 = [MEMORY[0x277D4D860] sharedInstance];
  v14.receiver = self;
  v14.super_class = PSUICloudBackupCellularSwitchSpecifier;
  v12 = [(PSAppDataUsagePolicySwitchSpecifier *)&v14 initWithBundleID:@"com.apple.preferences.settings.cellular.per-app_usage.cache.cloudBackup" displayName:v10 statisticsCache:v11];

  if (v12)
  {
    objc_storeStrong(&v12->_accountStore, a3);
    objc_storeStrong(&v12->_backupManagerWrapper, a4);
  }

  return v12;
}

- (BOOL)shouldShowCloudBackupCarrier
{
  v13 = *MEMORY[0x277D85DE8];
  backupManagerWrapper = self->_backupManagerWrapper;
  v4 = [(PSUICloudBackupCellularSwitchSpecifier *)self appleAccount];
  v10 = 0;
  v5 = [(PSUIMBManagerWrapper *)backupManagerWrapper backupOnCellularSupportWithAccount:v4 error:&v10];
  v6 = v10;

  if (v6)
  {
    v7 = [(PSUICloudBackupCellularSwitchSpecifier *)self getLogger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_2658DE000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch BackupOnCellularSupport: %@", buf, 0xCu);
    }

    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = ((v5 >> 1) & 1);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)cloudBackupGroupSpecifier
{
  v2 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"BackupOnCellular"];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = SFLocalizableWAPIStringKeyForKey();
  v5 = [v3 localizedStringForKey:v4 value:&stru_287733598 table:@"Cellular"];
  [v2 setProperty:v5 forKey:*MEMORY[0x277D3FF88]];

  return v2;
}

- (id)usagePolicy
{
  v14 = *MEMORY[0x277D85DE8];
  backupManagerWrapper = self->_backupManagerWrapper;
  v11 = 0;
  v4 = [(PSUIMBManagerWrapper *)backupManagerWrapper isBackupOnCellularEnabledWithError:&v11];
  v5 = v11;
  v6 = [(PSUICloudBackupCellularSwitchSpecifier *)self getLogger];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_error_impl(&dword_2658DE000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch BackupOnCellularEnabled: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v13) = v4;
    _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "Cellular usage for BackupOnCellularEnabled: %d", buf, 8u);
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:v4];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)setUsagePolicy:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUICloudBackupCellularSwitchSpecifier *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Setting BackupOnCellularEnabled: %@", buf, 0xCu);
  }

  backupManagerWrapper = self->_backupManagerWrapper;
  v14 = 0;
  v7 = -[PSUIMBManagerWrapper setBackupOnCellularEnabled:error:](backupManagerWrapper, "setBackupOnCellularEnabled:error:", [v4 BOOLValue], &v14);
  v8 = v14;
  v9 = [(PSUICloudBackupCellularSwitchSpecifier *)self getLogger];
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEFAULT, "setBackupOnCellularEnabled succeeded: %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v8;
      _os_log_error_impl(&dword_2658DE000, v10, OS_LOG_TYPE_ERROR, "setBackupOnCellularEnabled failed: %@: %@", buf, 0x16u);
    }

    v11 = [(PSAppCellularUsageSpecifier *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v10 = [(PSAppCellularUsageSpecifier *)self delegate];
      [v10 didFailToSetPolicyForSpecifier:self];
    }

    else
    {
      v10 = [(PSUICloudBackupCellularSwitchSpecifier *)self getLogger];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2658DE000, v10, OS_LOG_TYPE_ERROR, "Delegate does not respond to didFailToSetPolicyForSpecifier:", buf, 2u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end