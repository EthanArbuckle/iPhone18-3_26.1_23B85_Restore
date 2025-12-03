@interface PSUICloudBackupCellularSwitchSpecifier
- (BOOL)shouldShowCloudBackupCarrier;
- (PSUICloudBackupCellularSwitchSpecifier)initWithAppleAccountStore:(id)store backupManagerWrapper:(id)wrapper;
- (id)cloudBackupGroupSpecifier;
- (id)usagePolicy;
- (void)setUsagePolicy:(id)policy;
@end

@implementation PSUICloudBackupCellularSwitchSpecifier

- (PSUICloudBackupCellularSwitchSpecifier)initWithAppleAccountStore:(id)store backupManagerWrapper:(id)wrapper
{
  storeCopy = store;
  wrapperCopy = wrapper;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CLOUD_BACKUP_CELLULAR" value:&stru_287733598 table:@"Cellular"];
  mEMORY[0x277D4D860] = [MEMORY[0x277D4D860] sharedInstance];
  v14.receiver = self;
  v14.super_class = PSUICloudBackupCellularSwitchSpecifier;
  v12 = [(PSAppDataUsagePolicySwitchSpecifier *)&v14 initWithBundleID:@"com.apple.preferences.settings.cellular.per-app_usage.cache.cloudBackup" displayName:v10 statisticsCache:mEMORY[0x277D4D860]];

  if (v12)
  {
    objc_storeStrong(&v12->_accountStore, store);
    objc_storeStrong(&v12->_backupManagerWrapper, wrapper);
  }

  return v12;
}

- (BOOL)shouldShowCloudBackupCarrier
{
  v13 = *MEMORY[0x277D85DE8];
  backupManagerWrapper = self->_backupManagerWrapper;
  appleAccount = [(PSUICloudBackupCellularSwitchSpecifier *)self appleAccount];
  v10 = 0;
  v5 = [(PSUIMBManagerWrapper *)backupManagerWrapper backupOnCellularSupportWithAccount:appleAccount error:&v10];
  v6 = v10;

  if (v6)
  {
    getLogger = [(PSUICloudBackupCellularSwitchSpecifier *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Failed to fetch BackupOnCellularSupport: %@", buf, 0xCu);
    }

    LOBYTE(getLogger) = 0;
  }

  else
  {
    getLogger = ((v5 >> 1) & 1);
  }

  v8 = *MEMORY[0x277D85DE8];
  return getLogger;
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
  getLogger = [(PSUICloudBackupCellularSwitchSpecifier *)self getLogger];
  v7 = getLogger;
  if (v5)
  {
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_error_impl(&dword_2658DE000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch BackupOnCellularEnabled: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v13) = v4;
    _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "Cellular usage for BackupOnCellularEnabled: %d", buf, 8u);
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:v4];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)setUsagePolicy:(id)policy
{
  v19 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  getLogger = [(PSUICloudBackupCellularSwitchSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = policyCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Setting BackupOnCellularEnabled: %@", buf, 0xCu);
  }

  backupManagerWrapper = self->_backupManagerWrapper;
  v14 = 0;
  v7 = -[PSUIMBManagerWrapper setBackupOnCellularEnabled:error:](backupManagerWrapper, "setBackupOnCellularEnabled:error:", [policyCopy BOOLValue], &v14);
  v8 = v14;
  getLogger2 = [(PSUICloudBackupCellularSwitchSpecifier *)self getLogger];
  delegate2 = getLogger2;
  if (v7)
  {
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = policyCopy;
      _os_log_impl(&dword_2658DE000, delegate2, OS_LOG_TYPE_DEFAULT, "setBackupOnCellularEnabled succeeded: %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = policyCopy;
      v17 = 2112;
      v18 = v8;
      _os_log_error_impl(&dword_2658DE000, delegate2, OS_LOG_TYPE_ERROR, "setBackupOnCellularEnabled failed: %@: %@", buf, 0x16u);
    }

    delegate = [(PSAppCellularUsageSpecifier *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegate2 = [(PSAppCellularUsageSpecifier *)self delegate];
      [delegate2 didFailToSetPolicyForSpecifier:self];
    }

    else
    {
      delegate2 = [(PSUICloudBackupCellularSwitchSpecifier *)self getLogger];
      if (os_log_type_enabled(delegate2, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2658DE000, delegate2, OS_LOG_TYPE_ERROR, "Delegate does not respond to didFailToSetPolicyForSpecifier:", buf, 2u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end