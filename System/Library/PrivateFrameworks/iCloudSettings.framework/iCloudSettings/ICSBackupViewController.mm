@interface ICSBackupViewController
- (BOOL)isBackupEnabled;
- (BOOL)policyPreventsBackup;
- (BYBuddyDaemonCloudSyncClient)cloudSyncClient;
- (ICSBackupViewController)initWithAccount:(id)account;
- (id)_backgroundRestoreInfoText:(id)text;
- (id)_buildBackupSpecifiersWithTip:(id)tip;
- (id)_buildHeaderCardSpecifier;
- (id)cachedIsBackupEnabledNumber;
- (id)dateStringOfLatestBackup;
- (id)isBackupOverCellularEnabled;
- (id)manageStorageAction;
- (id)specifiers;
- (void)_backupEnabledSwitchCancelled:(id)cancelled;
- (void)_checkSupportForManualAndAutoBackupOnCellularWithCompletion:(id)completion;
- (void)_fetchiCloudHomeData;
- (void)_persistBackupEnablementState:(BOOL)state passcode:(id)passcode;
- (void)_postQuotaDidChangeNotification;
- (void)_setBackupEnabled:(BOOL)enabled passcode:(id)passcode;
- (void)_showAlertForExpensiveCellular;
- (void)beginBackup:(id)backup;
- (void)cancelBackup:(id)backup;
- (void)cancelRestore:(id)restore;
- (void)checkIfNetworkSupportsBackup;
- (void)checkIfThermalSupportsBackup;
- (void)dealloc;
- (void)didCancelEnteringPIN;
- (void)fetchIsBackupEnabled;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)manager:(id)manager didFailBackupWithError:(id)error;
- (void)manager:(id)manager didFailRestoreWithError:(id)error;
- (void)manager:(id)manager didSetBackupEnabled:(BOOL)enabled;
- (void)manager:(id)manager didUpdateProgress:(float)progress estimatedTimeRemaining:(unint64_t)remaining;
- (void)managerDidCancelRestore:(id)restore;
- (void)managerDidFinishBackup:(id)backup;
- (void)managerDidFinishRestore:(id)restore;
- (void)managerDidLoseConnectionToService:(id)service;
- (void)managerDidUpdateBackgroundRestoreProgress:(id)progress;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openBackupHelpPage:(id)page;
- (void)performTipAction:(id)action;
- (void)prepareAlertForBackupDisabledDomainAndShow:(BOOL)show;
- (void)proceedWithBackup;
- (void)reloadSpecifiers;
- (void)reloadSpecifiersForProvider:(id)provider oldSpecifiers:(id)specifiers animated:(BOOL)animated;
- (void)setBackupEnabled:(id)enabled specifier:(id)specifier;
- (void)setBackupOverCellularEnabled:(id)enabled;
- (void)setLastBackupDateString:(id)string;
- (void)showAlertForBackupDisabledItemsWithTitle:(id)title andMessage:(id)message;
- (void)showPopUpAlertForBackupDisabledApps;
- (void)startBackup;
- (void)startListeningForThermalChanges;
- (void)syncCompletedWithErrors:(id)errors;
- (void)syncProgress:(double)progress;
- (void)updateBackupFinishState;
- (void)updateBusyState;
- (void)updateLastBackupDateInvalidatePrevious:(BOOL)previous;
- (void)updateiCloudBackupAndSyncProgressWithAllowDecrease:(BOOL)decrease;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
- (void)willUnlock;
@end

@implementation ICSBackupViewController

- (ICSBackupViewController)initWithAccount:(id)account
{
  accountCopy = account;
  v20.receiver = self;
  v20.super_class = ICSBackupViewController;
  v6 = [(ICSBackupViewController *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    v8 = objc_alloc(MEMORY[0x277D28A40]);
    personaIdentifier = [(ACAccount *)v7->_account personaIdentifier];
    v10 = [v8 initWithDelegate:v7 eventQueue:0 personaIdentifier:personaIdentifier];
    backupManager = v7->_backupManager;
    v7->_backupManager = v10;

    v12 = dispatch_queue_create("com.apple.preferences.backup_state", 0);
    backup_state_queue = v7->_backup_state_queue;
    v7->_backup_state_queue = v12;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, appleAccountChangedCallback, *MEMORY[0x277CEC690], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v7->_thermalNotificationToken = -1;
    v7->_thermalSupportsBackup = 1;
    v7->_currentSyncState = 0;
    v7->_updateBackupState = 0;
    v7->_icloudSyncProgress = 0.0;
    v7->_icloudBackupProgress = 0.0;
    v7->_estimateTimeRemaining = 0;
    v7->_isFetchingDomainInfo = 0;
    v7->_needToShowPopupAlertForBackup = 0;
    [(ICSBackupViewController *)v7 _checkSupportForManualAndAutoBackupOnCellularWithCompletion:0];
    v15 = objc_opt_new();
    pathEvaluator = v7->_pathEvaluator;
    v7->_pathEvaluator = v15;

    [(NWPathEvaluator *)v7->_pathEvaluator addObserver:v7 forKeyPath:@"path" options:5 context:0];
    [(ICSBackupViewController *)v7 fetchIsBackupEnabled];
    if ([accountCopy aa_isAccountClass:*MEMORY[0x277CEC688]] && (objc_msgSend(accountCopy, "aa_isManagedAppleID") & 1) == 0)
    {
      [(ICSBackupViewController *)v7 _fetchiCloudHomeData];
    }

    v17 = [[_TtC14iCloudSettings22ICSAnalyticsController alloc] initWithAccount:accountCopy];
    analyticsController = v7->_analyticsController;
    v7->_analyticsController = v17;
  }

  return v7;
}

- (void)willUnlock
{
  [(ICSBackupViewController *)self updateBusyState];

  [(ICSBackupViewController *)self updateLastBackupDate];
}

- (void)dealloc
{
  [(ICSBackupViewController *)self dismissViewControllerAnimated:0 completion:0];
  [(NWPathEvaluator *)self->_pathEvaluator removeObserver:self forKeyPath:@"path" context:0];
  [(ICSBackupViewController *)self stopListeningForThermalChanges];
  [(MBManager *)self->_backupManager setDelegate:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CEC690], 0);
  v4.receiver = self;
  v4.super_class = ICSBackupViewController;
  [(ICSBackupViewController *)&v4 dealloc];
}

- (BYBuddyDaemonCloudSyncClient)cloudSyncClient
{
  cloudSyncClient = self->_cloudSyncClient;
  if (!cloudSyncClient)
  {
    v4 = objc_opt_new();
    v5 = self->_cloudSyncClient;
    self->_cloudSyncClient = v4;

    [(BYBuddyDaemonCloudSyncClient *)self->_cloudSyncClient setDelegate:self];
    cloudSyncClient = self->_cloudSyncClient;
  }

  return cloudSyncClient;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"path", object, change, context}])
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __74__ICSBackupViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v7[3] = &unk_27A666AD8;
    objc_copyWeak(&v8, &location);
    dispatch_async(MEMORY[0x277D85CD0], v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __74__ICSBackupViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained checkIfNetworkSupportsBackup];
}

- (void)checkIfNetworkSupportsBackup
{
  v23 = *MEMORY[0x277D85DE8];
  pathEvaluator = [(ICSBackupViewController *)self pathEvaluator];
  path = [pathEvaluator path];

  v5 = [path status] & 0xFFFFFFFFFFFFFFFDLL;
  interface = [path interface];
  type = [interface type];

  isExpensiveCellular = self->_isExpensiveCellular;
  self->_isExpensiveCellular = 0;

  if (v5 != 1)
  {
    goto LABEL_7;
  }

  v9 = 1;
  if (([path usesInterfaceType:1] & 1) == 0)
  {
    if ([path usesInterfaceType:3])
    {
      v9 = 1;
      goto LABEL_8;
    }

    if ([path usesInterfaceType:2])
    {
      v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(path, "isExpensive")}];
      v11 = self->_isExpensiveCellular;
      self->_isExpensiveCellular = v10;

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __55__ICSBackupViewController_checkIfNetworkSupportsBackup__block_invoke;
      v15[3] = &unk_27A666B00;
      v15[4] = self;
      v15[5] = type;
      v16 = 0;
      [(ICSBackupViewController *)self _checkSupportForManualAndAutoBackupOnCellularWithCompletion:v15];
      goto LABEL_11;
    }

LABEL_7:
    v9 = 0;
  }

LABEL_8:
  v12 = LogSubsystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_isExpensiveCellular;
    *buf = 134218498;
    v18 = type;
    v19 = 2112;
    v20 = v13;
    v21 = 1024;
    v22 = v9;
    _os_log_impl(&dword_275819000, v12, OS_LOG_TYPE_DEFAULT, "Network interfaceType: %ld. Expensive cellular: %@. Network supports backup: %d", buf, 0x1Cu);
  }

  [(ICSBackupViewController *)self setNetworkSupportsBackup:v9];
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __55__ICSBackupViewController_checkIfNetworkSupportsBackup__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = LogSubsystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 1488);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = 134218498;
    v9 = v4;
    v10 = 2112;
    v11 = v3;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Network interfaceType: %ld. Expensive cellular: %@. Network supports backup: %d", &v8, 0x1Cu);
  }

  result = [*(a1 + 32) setNetworkSupportsBackup:*(*(a1 + 32) + 1496)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_checkSupportForManualAndAutoBackupOnCellularWithCompletion:(id)completion
{
  completionCopy = completion;
  self->_isAutoBackupOnCellularAllowed = 0;
  self->_isManualBackupOnCellularAllowed = 0;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__ICSBackupViewController__checkSupportForManualAndAutoBackupOnCellularWithCompletion___block_invoke;
  v7[3] = &unk_27A666600;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __87__ICSBackupViewController__checkSupportForManualAndAutoBackupOnCellularWithCompletion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[183];
    v5 = v3[182];
    v15 = 0;
    v6 = [v4 backupOnCellularSupportWithAccount:v5 error:&v15];
    v7 = v15;
    if (v7)
    {
      v8 = LogSubsystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __87__ICSBackupViewController__checkSupportForManualAndAutoBackupOnCellularWithCompletion___block_invoke_cold_1();
      }
    }

    else
    {
      *(v3 + 1496) = v6 & 1;
      *(v3 + 1497) = (v6 & 2) != 0;
    }

    v9 = LogSubsystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v3 + 1496);
      v11 = *(v3 + 1497);
      *buf = 67109376;
      v17 = v10;
      v18 = 1024;
      v19 = v11;
      _os_log_impl(&dword_275819000, v9, OS_LOG_TYPE_DEFAULT, "ManualBackupOnCellularAllowed: %d. AutoBackupOnCellularAllowed: %d", buf, 0xEu);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __87__ICSBackupViewController__checkSupportForManualAndAutoBackupOnCellularWithCompletion___block_invoke_377;
    v13[3] = &unk_27A666238;
    v14 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v13);
  }

  else
  {
    v7 = LogSubsystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __87__ICSBackupViewController__checkSupportForManualAndAutoBackupOnCellularWithCompletion___block_invoke_cold_2(a1, v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __87__ICSBackupViewController__checkSupportForManualAndAutoBackupOnCellularWithCompletion___block_invoke_377(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)startListeningForThermalChanges
{
  objc_initWeak(&location, self);
  if (self->_thermalNotificationToken == -1)
  {
    v3 = *MEMORY[0x277D85E48];
    v4 = MEMORY[0x277D85CD0];
    v5 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __58__ICSBackupViewController_startListeningForThermalChanges__block_invoke;
    handler[3] = &unk_27A666B28;
    objc_copyWeak(&v7, &location);
    handler[4] = self;
    notify_register_dispatch(v3, &self->_thermalNotificationToken, v4, handler);

    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&location);
}

void __58__ICSBackupViewController_startListeningForThermalChanges__block_invoke(uint64_t a1, int token)
{
  v14 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = LogSubsystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = state64;
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "received thermal pressure notification: %llu", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(*(a1 + 32) + 1512);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__ICSBackupViewController_startListeningForThermalChanges__block_invoke_378;
    block[3] = &unk_27A666A68;
    v10 = state64;
    v9 = WeakRetained;
    dispatch_async(v6, block);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __58__ICSBackupViewController_startListeningForThermalChanges__block_invoke_378(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = LogSubsystem();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 >= 0x14)
  {
    if (v4)
    {
      *buf = 0;
      v5 = "Restore paused due to thermal pressure.";
      v6 = buf;
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    v8 = 0;
    v5 = "Restore resumed due to thermal pressure.";
    v6 = &v8;
LABEL_6:
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
  }

  return [*(a1 + 32) setThermalSupportsBackup:v2 < 0x14];
}

- (void)checkIfThermalSupportsBackup
{
  out_token = 0;
  v3 = 0;
  if (!notify_register_check(*MEMORY[0x277D85E48], &out_token))
  {
    if (!notify_get_state(out_token, &v3))
    {
      [(ICSBackupViewController *)self setThermalSupportsBackup:v3 < 0x14];
    }

    notify_cancel(out_token);
  }
}

- (id)_buildHeaderCardSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BACKUP_HEADER_TITLE" value:&stru_288487370 table:@"Localizable-Backup"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:-1 edit:0];

  traitCollection = [(ICSBackupViewController *)self traitCollection];
  LODWORD(v5) = [traitCollection pe_isSettingsFeatureDescriptionCellSupported];

  if (v5)
  {
    [v6 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    [v6 setObject:@"com.apple.graphic-icon.icloud-backup" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
    [v6 setIdentifier:@"BackupHeader"];
    policyPreventsBackup = [(ICSBackupViewController *)self policyPreventsBackup];
    v9 = LogSubsystem();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (policyPreventsBackup)
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&dword_275819000, v9, OS_LOG_TYPE_DEFAULT, "Backup is not allowed! Omitting backup subtitle since policy doesn't allow backup", buf, 2u);
      }

      v11 = @" ";
    }

    else
    {
      if (v10)
      {
        *v33 = 0;
        _os_log_impl(&dword_275819000, v9, OS_LOG_TYPE_DEFAULT, "Backup is allowed, setting backup info text", v33, 2u);
      }

      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"BACKUPS_INFO_TEXT"];
      v9 = [v23 localizedStringForKey:v24 value:&stru_288487370 table:@"Localizable-Backup"];

      v25 = MEMORY[0x277CCACA8];
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v27 = [v26 localizedStringForKey:@"BACKUPS_INFO_LEARN_MORE" value:&stru_288487370 table:@"Localizable-Backup"];
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"BACKUP_HELP_PAGE_URL" value:&stru_288487370 table:@"Localizable-Backup"];
      v30 = [v25 stringWithFormat:@"[%@](%@)", v27, v29];

      v11 = [MEMORY[0x277CCACA8] stringWithFormat:v9, v30];
    }

    [v6 setObject:v11 forKeyedSubscript:*MEMORY[0x277D40160]];
  }

  else
  {
    [v6 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    v12 = [ICSDefaultIconLoader graphicIconWithType:0 size:120.0, 120.0];
    [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FFC0]];

    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"BACKUP_HEADER_TITLE" value:&stru_288487370 table:@"Localizable-Backup"];
    [v6 setObject:v14 forKeyedSubscript:*MEMORY[0x277D40170]];

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"BACKUPS_INFO_LEARN_MORE" value:&stru_288487370 table:@"Localizable-Backup"];
    [v6 setObject:v16 forKeyedSubscript:ICQUILearnMoreTextKey];

    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"BACKUP_HELP_PAGE_URL" value:&stru_288487370 table:@"Localizable-Backup"];
    [v6 setObject:v18 forKeyedSubscript:ICQUILearnMoreLinkKey];

    if (![(ICSBackupViewController *)self policyPreventsBackup])
    {
      v19 = LogSubsystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&dword_275819000, v19, OS_LOG_TYPE_DEFAULT, "Backup is allowed, setting backup info text", v32, 2u);
      }

      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"BACKUPS_INFO_TEXT"];
      v22 = [v20 localizedStringForKey:v21 value:&stru_288487370 table:@"Localizable-Backup"];
      [v6 setObject:v22 forKeyedSubscript:*MEMORY[0x277D40160]];
    }

    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  }

  return v6;
}

- (void)reloadSpecifiers
{
  if (self->_finishedInitialLoad)
  {
    [(ICSBackupViewController *)self updateBusyState];

    [(ICSBackupViewController *)self updateLastBackupDate];
  }

  else
  {
    v3.receiver = self;
    v3.super_class = ICSBackupViewController;
    [(ICSBackupViewController *)&v3 reloadSpecifiers];
  }
}

- (id)specifiers
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.iCloudQuotaUI"];
    v6 = [(ICSBackupViewController *)self loadSpecifiersFromPlistName:@"Backup" target:self bundle:v5];

    v7 = [v6 specifierForID:@"BACKUP_ENABLED_SWITCH"];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"BACKUP_ENABLED_SWITCH"];
    v10 = [v8 localizedStringForKey:v9 value:&stru_288487370 table:@"Localizable-Backup"];
    [v7 setName:v10];

    v11 = *MEMORY[0x277D3FD80];
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
    v12 = [v6 specifierForID:@"BACKUP_SWITCH_GROUP"];
    if (!v12)
    {
      [ICSBackupViewController specifiers];
    }

    v13 = v12;
    [v12 setName:0];
    _buildHeaderCardSpecifier = [(ICSBackupViewController *)self _buildHeaderCardSpecifier];
    if ([v6 count] >= 2)
    {
      v15 = LogSubsystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v60 = 1;
        _os_log_impl(&dword_275819000, v15, OS_LOG_TYPE_DEFAULT, "Inserting header specifier for backup controller at index: %d", buf, 8u);
      }

      [v6 insertObject:_buildHeaderCardSpecifier atIndex:1];
    }

    if (!self->_backupOverCellularSpecifiers)
    {
      v16 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"BACKUP_OVER_CELLULAR_GROUP"];
      v52 = v13;
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      SFLocalizableWAPIStringKeyForKey();
      v54 = v7;
      v18 = v56 = v11;
      v19 = [v17 localizedStringForKey:v18 value:&stru_288487370 table:@"Localizable-Backup"];
      [v16 setObject:v19 forKeyedSubscript:*MEMORY[0x277D3FF88]];

      v20 = MEMORY[0x277D3FAD8];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"BACKUP_OVER_CELLULAR_ENABLED_SWITCH"];
      v23 = [v21 localizedStringForKey:v22 value:&stru_288487370 table:@"Localizable-Backup"];
      v24 = [v20 preferenceSpecifierNamed:v23 target:self set:sel_setBackupOverCellularEnabled_ get:sel_isBackupOverCellularEnabled detail:0 cell:6 edit:0];
      backupOverCellularSwitch = self->_backupOverCellularSwitch;
      self->_backupOverCellularSwitch = v24;

      v11 = v56;
      v13 = v52;

      v7 = v54;
      [(PSSpecifier *)self->_backupOverCellularSwitch setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
      [(PSSpecifier *)self->_backupOverCellularSwitch setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v56];
      [(PSSpecifier *)self->_backupOverCellularSwitch setObject:@"BACKUP_OVER_CELLULAR_ENABLED_SWITCH" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
      v26 = self->_backupOverCellularSwitch;
      v58[0] = v16;
      v58[1] = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
      backupOverCellularSpecifiers = self->_backupOverCellularSpecifiers;
      self->_backupOverCellularSpecifiers = v27;
    }

    if (!self->_backupNowSpecifiers)
    {
      v57 = v11;
      emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      v55 = *MEMORY[0x277D3FFB8];
      [emptyGroupSpecifier setProperty:@"BACKUP_NOW_GROUP" forKey:?];
      if (!self->_backupStatusView)
      {
        v30 = [[ICSBackupStatusView alloc] initWithSpecifier:emptyGroupSpecifier];
        backupStatusView = self->_backupStatusView;
        self->_backupStatusView = v30;
      }

      v32 = [objc_opt_class() description];
      [emptyGroupSpecifier setProperty:v32 forKey:*MEMORY[0x277D3FF48]];

      [emptyGroupSpecifier setProperty:self->_backupStatusView forKey:*MEMORY[0x277D3FF90]];
      if (!self->_backupNowButton)
      {
        v53 = MEMORY[0x277D3FAD8];
        v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v33 localizedStringForKey:@"BACKUP_NOW" value:&stru_288487370 table:@"Localizable-Backup"];
        v34 = v13;
        v36 = v35 = v7;
        v37 = [v53 preferenceSpecifierNamed:v36 target:self set:0 get:0 detail:0 cell:13 edit:0];
        backupNowButton = self->_backupNowButton;
        self->_backupNowButton = v37;

        v7 = v35;
        v13 = v34;

        v39 = self->_backupNowButton;
        v40 = [MEMORY[0x277CCABB0] numberWithBool:0];
        [(PSSpecifier *)v39 setProperty:v40 forKey:*MEMORY[0x277D3FF38]];

        [(PSSpecifier *)self->_backupNowButton setProperty:@"BACKUP_NOW_BUTTON" forKey:v55];
        [(PSSpecifier *)self->_backupNowButton setProperty:MEMORY[0x277CBEC38] forKey:v57];
        [(PSSpecifier *)self->_backupNowButton setButtonAction:sel_beginBackup_];
      }

      v41 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{emptyGroupSpecifier, self->_backupNowButton, 0}];
      backupNowSpecifiers = self->_backupNowSpecifiers;
      self->_backupNowSpecifiers = v41;
    }

    backupSpecifierProvider = self->_backupSpecifierProvider;
    if (!backupSpecifierProvider)
    {
      v44 = [objc_alloc(MEMORY[0x277D7F480]) initWithAccount:self->_account presenter:self];
      v45 = self->_backupSpecifierProvider;
      self->_backupSpecifierProvider = v44;

      backupSpecifierProvider = self->_backupSpecifierProvider;
    }

    specifiers = [(AAUISpecifierProvider *)backupSpecifierProvider specifiers];
    v47 = [specifiers count];

    if (v47)
    {
      specifiers2 = [(AAUISpecifierProvider *)self->_backupSpecifierProvider specifiers];
      [v6 addObjectsFromArray:specifiers2];
    }

    v49 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v6;

    self->_finishedInitialLoad = 1;
    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  v50 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)prepareAlertForBackupDisabledDomainAndShow:(BOOL)show
{
  self->_needToShowPopupAlertForBackup = show;
  if (!self->_isFetchingDomainInfo)
  {
    self->_isFetchingDomainInfo = 1;
    PSGBackupUtilsClass_0 = getPSGBackupUtilsClass_0();
    backupManager = self->_backupManager;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__ICSBackupViewController_prepareAlertForBackupDisabledDomainAndShow___block_invoke;
    v6[3] = &unk_27A666B50;
    v6[4] = self;
    [PSGBackupUtilsClass_0 fetchBackupDisabledAppsWithBackupManager:backupManager completion:v6];
  }
}

void __70__ICSBackupViewController_prepareAlertForBackupDisabledDomainAndShow___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(a1 + 32) + 1640), a2);
  *(*(a1 + 32) + 1593) = 0;
  v4 = *(a1 + 32);
  if (v4[1594] == 1)
  {
    [v4 showPopUpAlertForBackupDisabledApps];
    *(*(a1 + 32) + 1594) = 0;
  }
}

- (BOOL)policyPreventsBackup
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E30]] == 2;

  return v3;
}

- (void)fetchIsBackupEnabled
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = LogSubsystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[ICSBackupViewController fetchIsBackupEnabled]";
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  backup_state_queue = self->_backup_state_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ICSBackupViewController_fetchIsBackupEnabled__block_invoke;
  block[3] = &unk_27A666198;
  block[4] = self;
  dispatch_async(backup_state_queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

void __47__ICSBackupViewController_fetchIsBackupEnabled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isBackupEnabled];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__ICSBackupViewController_fetchIsBackupEnabled__block_invoke_2;
  v3[3] = &unk_27A666B78;
  v4 = v2;
  v3[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __47__ICSBackupViewController_fetchIsBackupEnabled__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = LogSubsystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6 = 136315394;
    v7 = "[ICSBackupViewController fetchIsBackupEnabled]_block_invoke_2";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "%s, Caching backup enabled: %d, reloading", &v6, 0x12u);
  }

  *(*(a1 + 32) + 1501) = *(a1 + 40);
  result = [*(a1 + 32) reloadSpecifiers];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isBackupEnabled
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  if ([(ICSBackupViewController *)self policyPreventsBackup])
  {
    v3 = LogSubsystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "Backup not enabled because policy prevents backup", &v8, 2u);
    }

    LOBYTE(isBackupEnabled) = 0;
  }

  else
  {
    isBackupEnabled = [(MBManager *)self->_backupManager isBackupEnabled];
    v3 = LogSubsystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      backupManager = self->_backupManager;
      v8 = 136315650;
      v9 = "[ICSBackupViewController isBackupEnabled]";
      v10 = 1024;
      v11 = isBackupEnabled;
      v12 = 2112;
      v13 = backupManager;
      _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "%s, returning: %d, backup manager: %@", &v8, 0x1Cu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return isBackupEnabled;
}

- (id)cachedIsBackupEnabledNumber
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = LogSubsystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    backupEnabled = self->_backupEnabled;
    v8 = 136315394;
    v9 = "[ICSBackupViewController cachedIsBackupEnabledNumber]";
    v10 = 1024;
    v11 = backupEnabled;
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "%s, enabled: %d", &v8, 0x12u);
  }

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_backupEnabled];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_setBackupEnabled:(BOOL)enabled passcode:(id)passcode
{
  enabledCopy = enabled;
  v30 = *MEMORY[0x277D85DE8];
  passcodeCopy = passcode;
  v7 = LogSubsystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "[ICSBackupViewController _setBackupEnabled:passcode:]";
    v28 = 1024;
    v29 = enabledCopy;
    _os_log_impl(&dword_275819000, v7, OS_LOG_TYPE_DEFAULT, "%s, enabled: %d", buf, 0x12u);
  }

  if (enabledCopy)
  {
    [(ICSBackupViewController *)self _persistBackupEnablementState:1 passcode:passcodeCopy];
  }

  else
  {
    v8 = MEMORY[0x277D75110];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"DISABLE_WARNING_MESSAGE"];
    v11 = [v9 localizedStringForKey:v10 value:&stru_288487370 table:@"Localizable-Backup"];
    v12 = [v8 alertControllerWithTitle:0 message:v11 preferredStyle:0];

    v13 = MEMORY[0x277D750F8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"DISABLE_CONFIRM" value:&stru_288487370 table:@"Localizable-Backup"];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __54__ICSBackupViewController__setBackupEnabled_passcode___block_invoke;
    v23[3] = &unk_27A666BA0;
    v23[4] = self;
    v25 = 0;
    v24 = passcodeCopy;
    v16 = [v13 actionWithTitle:v15 style:2 handler:v23];
    [v12 addAction:v16];

    v17 = MEMORY[0x277D750F8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"DISABLE_CANCEL" value:&stru_288487370 table:@"Localizable-Backup"];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __54__ICSBackupViewController__setBackupEnabled_passcode___block_invoke_467;
    v22[3] = &unk_27A666750;
    v22[4] = self;
    v20 = [v17 actionWithTitle:v19 style:1 handler:v22];
    [v12 addAction:v20];

    [(ICSBackupViewController *)self presentViewController:v12 animated:1 completion:&__block_literal_global_5];
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __54__ICSBackupViewController__setBackupEnabled_passcode___block_invoke(uint64_t a1)
{
  v2 = LogSubsystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Confirmed disable backup", v4, 2u);
  }

  return [*(a1 + 32) _persistBackupEnablementState:*(a1 + 48) passcode:*(a1 + 40)];
}

uint64_t __54__ICSBackupViewController__setBackupEnabled_passcode___block_invoke_467(uint64_t a1)
{
  v2 = LogSubsystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "User cancelled disable backup", v4, 2u);
  }

  [*(a1 + 32) reloadSpecifiers];
  return [*(*(a1 + 32) + 1584) sendBackupToggleEventWithActionType:2];
}

void __54__ICSBackupViewController__setBackupEnabled_passcode___block_invoke_468()
{
  v0 = LogSubsystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_275819000, v0, OS_LOG_TYPE_DEFAULT, "Presenting confirmation alert for Turn off iCloud Backup", v1, 2u);
  }
}

- (void)_persistBackupEnablementState:(BOOL)state passcode:(id)passcode
{
  stateCopy = state;
  v34 = *MEMORY[0x277D85DE8];
  passcodeCopy = passcode;
  v7 = LogSubsystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ICSBackupViewController _persistBackupEnablementState:passcode:]";
    *&buf[12] = 1024;
    *&buf[14] = stateCopy;
    _os_log_impl(&dword_275819000, v7, OS_LOG_TYPE_DEFAULT, "%s, enabled: %d", buf, 0x12u);
  }

  [(ICSBackupStatusView *)self->_backupStatusView setFooterText:0];
  [(ICSBackupStatusView *)self->_backupStatusView setBackupError:0];
  if (!stateCopy)
  {
    backupNowButton = self->_backupNowButton;
    v9 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v10 = *MEMORY[0x277D3FF38];
    [(PSSpecifier *)backupNowButton setProperty:v9 forKey:*MEMORY[0x277D3FF38]];

    [(ICSBackupViewController *)self reloadSpecifier:self->_backupNowButton];
    [(PSSpecifier *)self->_backupOverCellularSwitch setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v10];
    [(ICSBackupViewController *)self reloadSpecifier:self->_backupOverCellularSwitch];
  }

  v11 = LogSubsystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[ICSBackupViewController _persistBackupEnablementState:passcode:]";
    _os_log_impl(&dword_275819000, v11, OS_LOG_TYPE_DEFAULT, "%s disabling user interaction", buf, 0xCu);
  }

  view = [(ICSBackupViewController *)self view];
  window = [view window];
  [window setUserInteractionEnabled:0];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v31 = __Block_byref_object_copy__2;
  v32 = __Block_byref_object_dispose__2;
  v33 = objc_alloc_init(MEMORY[0x277D758E8]);
  [*(*&buf[8] + 40) setAutoresizingMask:45];
  [*(*&buf[8] + 40) setFontSize:16];
  v14 = *(*&buf[8] + 40);
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (stateCopy)
  {
    [v15 localizedStringForKey:@"TURNING_ON_BACKUP" value:&stru_288487370 table:@"Localizable-Backup"];
  }

  else
  {
    [v15 localizedStringForKey:@"TURNING_OFF_BACKUP" value:&stru_288487370 table:@"Localizable-Backup"];
  }
  v16 = ;
  [v14 setText:v16];

  v17 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke;
  block[3] = &unk_27A666BC8;
  block[4] = self;
  block[5] = buf;
  dispatch_after(v17, MEMORY[0x277D85CD0], block);
  backup_state_queue = self->_backup_state_queue;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_476;
  v24 = &unk_27A666C18;
  selfCopy = self;
  v28 = stateCopy;
  v19 = passcodeCopy;
  v26 = v19;
  v27 = buf;
  dispatch_async(backup_state_queue, &v21);
  [(ICSAnalyticsController *)self->_analyticsController sendBackupToggleEventWithActionType:1, v21, v22, v23, v24, selfCopy];

  _Block_object_dispose(buf, 8);
  v20 = *MEMORY[0x277D85DE8];
}

void __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = LogSubsystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
      _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "%s showing progress HUD", &v9, 0xCu);
    }

    v3 = [*(a1 + 32) table];
    v4 = [v3 superview];
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      do
      {
        v7 = v6;

        v6 = v5;
        v5 = [v6 superview];

        v3 = v7;
      }

      while (v5);
    }

    else
    {
      v6 = v3;
      v7 = v3;
    }

    [*(*(*(a1 + 40) + 8) + 40) showInView:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_476(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = LogSubsystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "%s Entering backup dispatch queue", &buf, 0xCu);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  [*(*(a1 + 32) + 1464) setBackupEnabled:*(a1 + 56)];
  v3 = LogSubsystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "%s setBackupEnabled complete", &buf, 0xCu);
  }

  if (*(a1 + 56) == 1)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 1464);
    v19 = 0;
    v6 = [v5 setupBackupWithPasscode:v4 error:&v19];
    v7 = v19;
    *(v21 + 24) = v6;
    if (v7)
    {
      v8 = LogSubsystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_476_cold_1();
      }
    }

    else
    {
      v8 = LogSubsystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
        _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "%s setupBackupWithPasscode returned without error", &buf, 0xCu);
      }
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2;
  v29 = __Block_byref_object_dispose__2;
  v30 = 0;
  if (*(v21 + 24) == 1)
  {
    v9 = LogSubsystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 136315138;
      v25 = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
      _os_log_impl(&dword_275819000, v9, OS_LOG_TYPE_DEFAULT, "%s starting account save", v24, 0xCu);
    }

    v10 = [MEMORY[0x277CB8F48] defaultStore];
    [*(*(a1 + 32) + 1456) setEnabled:*(a1 + 56) forDataclass:*MEMORY[0x277CB90C8]];
    v11 = *(*(a1 + 32) + 1456);
    v12 = *(&buf + 1);
    obj = *(*(&buf + 1) + 40);
    [v10 saveVerifiedAccount:v11 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    *(v21 + 24) = *(*(&buf + 1) + 40) == 0;
    v13 = LogSubsystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 136315138;
      v25 = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
      _os_log_impl(&dword_275819000, v13, OS_LOG_TYPE_DEFAULT, "%s account save complete", v24, 0xCu);
    }
  }

  v14 = LogSubsystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 136315138;
    v25 = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
    _os_log_impl(&dword_275819000, v14, OS_LOG_TYPE_DEFAULT, "%s persist state complete, updating UI", v24, 0xCu);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_478;
  v17[3] = &unk_27A666BF0;
  v15 = *(a1 + 48);
  v17[4] = *(a1 + 32);
  v17[5] = v15;
  v17[6] = &v20;
  v17[7] = &buf;
  dispatch_async(MEMORY[0x277D85CD0], v17);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v20, 8);
  v16 = *MEMORY[0x277D85DE8];
}

void __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_478(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = LogSubsystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v44 = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "%s Entering main queue, hiding progressHUD, enabling interaction", buf, 0xCu);
  }

  [*(*(*(a1 + 40) + 8) + 40) hide];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = [*(a1 + 32) view];
  v6 = [v5 window];
  [v6 setUserInteractionEnabled:1];

  LODWORD(v6) = *(*(*(a1 + 48) + 8) + 24);
  v7 = LogSubsystem();
  v8 = v7;
  if (v6 != 1)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_478_cold_1(a1, v8, v11, v12, v13, v14, v15, v16);
    }

    v17 = *(a1 + 32);
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"CANCEL" value:&stru_288487370 table:@"Localizable-Backup"];

    v20 = *(a1 + 32);
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"TRY_AGAIN" value:&stru_288487370 table:@"Localizable-Backup"];

    v23 = [*(*(*(a1 + 56) + 8) + 40) domain];
    if ([v23 isEqualToString:@"MBErrorDomain"])
    {
      if ([*(*(*(a1 + 56) + 8) + 40) code] == 300)
      {
      }

      else
      {
        v24 = [*(*(*(a1 + 56) + 8) + 40) code];

        if (v24 != 308)
        {
          v10 = @"ERROR_ENABLING_BACKUP_DETAILS";
          goto LABEL_20;
        }
      }

      v25 = objc_alloc_init(MEMORY[0x277CEC5D0]);
      v26 = [v25 airplaneMode];

      if (v26)
      {
        v10 = SFLocalizableWAPIStringKeyForKey();
      }

      else
      {
        v10 = @"ERROR_ENABLING_BACKUP_NETWORK";
      }

      v27 = *(a1 + 32);
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"OK" value:&stru_288487370 table:@"Localizable-Backup"];

      v23 = v22;
      v19 = v29;
      v22 = 0;
    }

    else
    {
      v10 = @"ERROR_ENABLING_BACKUP_DETAILS";
    }

LABEL_20:
    v30 = MEMORY[0x277D75110];
    v31 = *(a1 + 32);
    v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"ERROR_ENABLING_BACKUP" value:&stru_288487370 table:@"Localizable-Backup"];
    v34 = *(a1 + 32);
    v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v36 = [v35 localizedStringForKey:v10 value:&stru_288487370 table:@"Localizable-Backup"];
    v37 = [v30 alertControllerWithTitle:v33 message:v36 preferredStyle:1];

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_504;
    v42[3] = &unk_27A666750;
    v42[4] = *(a1 + 32);
    v38 = [MEMORY[0x277D750F8] actionWithTitle:v19 style:1 handler:v42];
    [v37 addAction:v38];

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_505;
    v41[3] = &unk_27A666750;
    v41[4] = *(a1 + 32);
    v39 = [MEMORY[0x277D750F8] actionWithTitle:v22 style:0 handler:v41];
    [v37 addAction:v39];

    [*(a1 + 32) presentViewController:v37 animated:1 completion:0];
    goto LABEL_21;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v44 = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
    _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "%s reloading specifiers...", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + *MEMORY[0x277D3FD08]));
  [WeakRetained reloadSpecifiers];

  [*(a1 + 32) checkIfNetworkSupportsBackup];
  v10 = LogSubsystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v44 = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
    _os_log_impl(&dword_275819000, v10, OS_LOG_TYPE_DEFAULT, "%s Completed with success!", buf, 0xCu);
  }

LABEL_21:

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_504(uint64_t a1)
{
  v2 = LogSubsystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Reload specifier with specifier ID 'BACKUP_ENABLED_SWITCH'", v4, 2u);
  }

  return [*(a1 + 32) reloadSpecifierID:@"BACKUP_ENABLED_SWITCH" animated:1];
}

void __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_505(uint64_t a1)
{
  v2 = LogSubsystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Enabling backup with specifier ID 'BACKUP_ENABLED_SWITCH'", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 specifierForID:@"BACKUP_ENABLED_SWITCH"];
  [v3 _enableBackupWithSpecifier:v4];
}

- (id)isBackupOverCellularEnabled
{
  v15 = *MEMORY[0x277D85DE8];
  backupManager = self->_backupManager;
  v10 = 0;
  v3 = [(MBManager *)backupManager isBackupOnCellularEnabledWithError:&v10];
  v4 = v10;
  if (v4)
  {
    v5 = LogSubsystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_275819000, v5, OS_LOG_TYPE_DEFAULT, "Failed to fetch BackupOnCellularEnabled: %@", buf, 0xCu);
    }
  }

  v6 = LogSubsystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[ICSBackupViewController isBackupOverCellularEnabled]";
    v13 = 1024;
    v14 = v3;
    _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "%s, enabled: %d", buf, 0x12u);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:v3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)setBackupOverCellularEnabled:(id)enabled
{
  v19 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  backupManager = self->_backupManager;
  v14 = 0;
  v6 = -[MBManager setBackupOnCellularEnabled:error:](backupManager, "setBackupOnCellularEnabled:error:", [enabledCopy BOOLValue], &v14);
  v7 = v14;
  v8 = LogSubsystem();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      *buf = 138412290;
      v16 = enabledCopy;
      v10 = "Successfully set BackupOnCellularEnabled: %@";
      v11 = v8;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_275819000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }
  }

  else if (v9)
  {
    *buf = 138412546;
    v16 = enabledCopy;
    v17 = 2112;
    v18 = v7;
    v10 = "Failed to set BackupOnCellularEnabled: %@: %@";
    v11 = v8;
    v12 = 22;
    goto LABEL_6;
  }

  [(ICSBackupViewController *)self checkIfNetworkSupportsBackup];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)didCancelEnteringPIN
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = LogSubsystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ICSBackupViewController didCancelEnteringPIN]";
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v4 = [(ICSBackupViewController *)self specifierForID:@"BACKUP_ENABLED_SWITCH"];
  [(ICSBackupViewController *)self reloadSpecifier:v4 animated:1];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_backupEnabledSwitchCancelled:(id)cancelled
{
  v9 = *MEMORY[0x277D85DE8];
  cancelledCopy = cancelled;
  v5 = LogSubsystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ICSBackupViewController _backupEnabledSwitchCancelled:]";
    _os_log_impl(&dword_275819000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  [(ICSBackupViewController *)self reloadSpecifier:cancelledCopy animated:1];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setBackupEnabled:(id)enabled specifier:(id)specifier
{
  v16 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  specifierCopy = specifier;
  v8 = LogSubsystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[ICSBackupViewController setBackupEnabled:specifier:]";
    v14 = 2112;
    v15 = enabledCopy;
    _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "%s, enabled: %@", &v12, 0x16u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [ICSBackupViewController setBackupEnabled:specifier:];
  }

  bOOLValue = [enabledCopy BOOLValue];
  if (self->_backupEnabled == bOOLValue)
  {
    v10 = LogSubsystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[ICSBackupViewController setBackupEnabled:specifier:]";
      v14 = 1024;
      LODWORD(v15) = bOOLValue;
      _os_log_impl(&dword_275819000, v10, OS_LOG_TYPE_DEFAULT, "%s, new enabled state is the same as current enabled state, bailing. %d", &v12, 0x12u);
    }
  }

  else
  {
    [(ICSAnalyticsController *)self->_analyticsController sendBackupToggleEventWithActionType:0];
    if (bOOLValue)
    {
      [(ICSBackupViewController *)self _enableBackupWithSpecifier:specifierCopy];
    }

    else
    {
      [(ICSBackupViewController *)self _disableBackupWithSpecifier:specifierCopy];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)openBackupHelpPage:(id)page
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BACKUP_HELP_PAGE_URL" value:&stru_288487370 table:@"Localizable-Backup"];
  v6 = [v3 URLWithString:v5];
  [mEMORY[0x277D75128] openURL:v6 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (void)updateiCloudBackupAndSyncProgressWithAllowDecrease:(BOOL)decrease
{
  if (self->_icloudBackupProgress >= 0.0199999996)
  {
    icloudBackupProgress = self->_icloudBackupProgress;
  }

  else
  {
    icloudBackupProgress = 0.0199999996;
  }

  if (decrease || ([(ICSBackupStatusView *)self->_backupStatusView progress], icloudBackupProgress >= v5))
  {
    backupStatusView = self->_backupStatusView;
    v7 = (60 * self->_estimateTimeRemaining);

    [(ICSBackupStatusView *)backupStatusView setBackupProgress:icloudBackupProgress timeIntervalRemaining:v7];
  }
}

- (void)setLastBackupDateString:(id)string
{
  v11 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[ICSBackupViewController setLastBackupDateString:]";
    v9 = 2112;
    v10 = stringCopy;
    _os_log_impl(&dword_275819000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v7, 0x16u);
  }

  [(ICSBackupStatusView *)self->_backupStatusView setLastBackupText:stringCopy];
  [(ICSBackupViewController *)self beginUpdates];
  [(ICSBackupViewController *)self endUpdates];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)dateStringOfLatestBackup
{
  isAutoBackupOnCellularAllowed = self->_isAutoBackupOnCellularAllowed;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = SFLocalizableWAPIStringKeyForKey();
  v6 = [v4 localizedStringForKey:v5 value:&stru_288487370 table:@"Localizable-Backup"];

  v7 = MEMORY[0x277CCA968];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [v7 dateFormatFromTemplate:@"j" options:0 locale:currentLocale];

  v10 = [v9 rangeOfString:@"H"];
  dateOfLastBackup = [(MBManager *)self->_backupManager dateOfLastBackup];
  if (dateOfLastBackup)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCA968]);
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v14 = [dateOfLastBackup ics_isTodayWithCalendar:currentCalendar];

    if (v14)
    {
      v15 = v10 == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      [v12 setTimeStyle:1];
      [v12 setDateStyle:0];
    }

    else
    {
      currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
      localeIdentifier = [currentLocale2 localeIdentifier];
      v18 = [localeIdentifier isEqualToString:@"en_US"];

      [v12 setDoesRelativeDateFormatting:1];
      if (v18)
      {
        [v12 setDateStyle:1];
        v19 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v19 setTimeStyle:1];
        v20 = MEMORY[0x277CCACA8];
        v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v22 = [v21 localizedStringForKey:@"LAST_BACKUP_DATE_AT_TIME" value:&stru_288487370 table:@"Localizable-Backup"];
        v23 = [v12 stringFromDate:dateOfLastBackup];
        v24 = [v19 stringFromDate:dateOfLastBackup];
        v25 = [v20 localizedStringWithFormat:v22, v23, v24];

        v6 = v23;
LABEL_11:

        v6 = v25;
        goto LABEL_12;
      }

      [v12 setDateStyle:3];
      [v12 setTimeStyle:1];
      [v12 setFormattingContext:1];
    }

    v26 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v19 localizedStringForKey:@"LAST_BACKUP_DATE_OR_TIME" value:&stru_288487370 table:@"Localizable-Backup"];
    v22 = [v12 stringFromDate:dateOfLastBackup];
    v25 = [v26 localizedStringWithFormat:v21, v22];
    goto LABEL_11;
  }

LABEL_12:

  return v6;
}

- (void)updateLastBackupDateInvalidatePrevious:(BOOL)previous
{
  if (previous)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__ICSBackupViewController_updateLastBackupDateInvalidatePrevious___block_invoke;
    block[3] = &unk_27A666198;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  backup_state_queue = self->_backup_state_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__ICSBackupViewController_updateLastBackupDateInvalidatePrevious___block_invoke_2;
  v5[3] = &unk_27A666198;
  v5[4] = self;
  dispatch_async(backup_state_queue, v5);
}

void __66__ICSBackupViewController_updateLastBackupDateInvalidatePrevious___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [v3 localizedStringForKey:@"DETERMINING_LAST_BACKUP" value:&stru_288487370 table:@"Localizable-Backup"];
  [v1 setLastBackupDateString:v2];
}

void __66__ICSBackupViewController_updateLastBackupDateInvalidatePrevious___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dateStringOfLatestBackup];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__ICSBackupViewController_updateLastBackupDateInvalidatePrevious___block_invoke_3;
  v4[3] = &unk_27A666410;
  v4[4] = *(a1 + 32);
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

- (id)_backgroundRestoreInfoText:(id)text
{
  v36 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v4 = textCopy;
  if (!textCopy)
  {
    v19 = 0;
    goto LABEL_41;
  }

  v5 = [MEMORY[0x277CCA8E8] stringFromByteCount:objc_msgSend(textCopy countStyle:{"bytesRemaining"), 1}];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  dataClassesRemaining = [v4 dataClassesRemaining];
  v8 = (dataClassesRemaining >> 5) & 1;
  if ((dataClassesRemaining & 0x20) != 0)
  {
    [v6 addObject:@"APPDATA"];
  }

  if ([v4 dataClassesRemaining])
  {
    [v6 addObject:@"PHOTOS"];
    v8 = 1;
  }

  if (([v4 dataClassesRemaining] & 0x10) != 0)
  {
    [v6 addObject:@"MESSAGES"];
    v8 = 1;
  }

  if (([v4 dataClassesRemaining] & 4) != 0)
  {
    [v6 addObject:@"RINGTONES"];
    v8 = 1;
  }

  if (([v4 dataClassesRemaining] & 8) != 0)
  {
    [v6 addObject:@"MEDIA"];
  }

  if (([v4 dataClassesRemaining] & 2) != 0)
  {
    [v6 addObject:@"BOOKS"];
  }

  if (([v4 dataClassesRemaining] & 0x40) != 0)
  {
    [v6 addObject:@"FILES"];
    v8 = 1;
  }

  if ([v6 count])
  {
    v30 = v5;
    v9 = [@"RESTORING" mutableCopy];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v9 appendFormat:@"_%@", *(*(&v31 + 1) + 8 * i)];
        }

        v12 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v12);
    }

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:v9 value:&stru_288487370 table:@"Localizable-Backup"];

    if (v8)
    {
      v5 = v30;
      if ([v4 bytesRemaining] > 0xF423F)
      {
        if (![v4 bytesRemaining])
        {
          v18 = 0;
LABEL_36:

          if (v16)
          {
            goto LABEL_37;
          }

LABEL_30:
          v19 = &stru_288487370;
          if (!v18)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }

        v25 = objc_alloc(MEMORY[0x277CCACA8]);
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v26 = [v17 localizedStringForKey:@"BYTES_REMAINING" value:&stru_288487370 table:@"Localizable-Backup"];
        v18 = [v25 initWithFormat:v26, v30];
      }

      else
      {
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"LESS_THAN_1MB_REMAINING" value:&stru_288487370 table:@"Localizable-Backup"];
      }
    }

    else
    {
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [v17 localizedStringForKey:@"RESTORING_PERIOD" value:&stru_288487370 table:@"Localizable-Backup"];
      v24 = [v16 stringByAppendingString:v23];

      v18 = 0;
      v16 = v24;
      v5 = v30;
    }

    goto LABEL_36;
  }

  if (![v4 bytesRemaining])
  {
    v16 = 0;
    v19 = &stru_288487370;
    goto LABEL_40;
  }

  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"RESTORE_IN_PROGRESS" value:&stru_288487370 table:@"Localizable-Backup"];
  v16 = [v20 initWithFormat:v22, v5];

  v18 = 0;
  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_37:
  v19 = [&stru_288487370 stringByAppendingString:v16];
  if (v18)
  {
LABEL_38:
    v27 = [(__CFString *)v19 stringByAppendingString:@" "];

    v19 = [v27 stringByAppendingString:v18];
  }

LABEL_40:

LABEL_41:
  v28 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)updateBusyState
{
  backupState = self->_backupState;
  objc_initWeak(&location, self);
  backup_state_queue = self->_backup_state_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__ICSBackupViewController_updateBusyState__block_invoke;
  v5[3] = &unk_27A666C68;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v7 = backupState;
  dispatch_async(backup_state_queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __42__ICSBackupViewController_updateBusyState__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isBackupEnabled];

  v4 = [*(*(a1 + 32) + 1464) backupState];
  v5 = [*(*(a1 + 32) + 1464) restoreState];
  v6 = [*(*(a1 + 32) + 1464) backgroundRestoreInfo];
  v7 = LogSubsystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    *buf = 136316162;
    v22 = "[ICSBackupViewController updateBusyState]_block_invoke";
    v23 = 1024;
    v24 = v3;
    v25 = 1024;
    v26 = v8;
    v27 = 1024;
    v28 = [v4 state];
    v29 = 1024;
    v30 = [v5 state];
    _os_log_impl(&dword_275819000, v7, OS_LOG_TYPE_DEFAULT, "%s, isBackupEnabled: %d, entryState: %d, backupState: %d, restoreState: %d", buf, 0x24u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__ICSBackupViewController_updateBusyState__block_invoke_606;
  v14[3] = &unk_27A666C40;
  objc_copyWeak(&v18, (a1 + 40));
  v9 = *(a1 + 32);
  v19 = *(a1 + 48);
  v14[4] = v9;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v20 = v3;
  v10 = v6;
  v11 = v5;
  v12 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v14);

  objc_destroyWeak(&v18);
  v13 = *MEMORY[0x277D85DE8];
}

void __42__ICSBackupViewController_updateBusyState__block_invoke_606(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(*(a1 + 32) + 1472) == *(a1 + 72))
    {
      [WeakRetained _updateToBackupState:*(a1 + 40) restoreState:*(a1 + 48) backgroundRestoreState:*(a1 + 56) backupEnabled:*(a1 + 76)];
    }

    else
    {
      v4 = LogSubsystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(a1 + 32) + 1472);
        v7[0] = 67109120;
        v7[1] = v5;
        _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Skipping update, current backup state: %d", v7, 8u);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)cancelRestore:(id)restore
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = LogSubsystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[ICSBackupViewController cancelRestore:]";
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "%s, presenting confirmation alert", buf, 0xCu);
  }

  self->_backupCancelled = 1;
  [(ICSBackupViewController *)self updateBusyState];
  v5 = MEMORY[0x277D75110];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"STOP_RESTORING_QUESTION"];
  v8 = [v6 localizedStringForKey:v7 value:&stru_288487370 table:@"Localizable-Backup"];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CANCEL_RESTORE_WARNING" value:&stru_288487370 table:@"Localizable-Backup"];
  v11 = [v5 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"DONT_STOP" value:&stru_288487370 table:@"Localizable-Backup"];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __41__ICSBackupViewController_cancelRestore___block_invoke;
  v22[3] = &unk_27A666750;
  v22[4] = self;
  v15 = [v12 actionWithTitle:v14 style:1 handler:v22];
  [v11 addAction:v15];

  v16 = MEMORY[0x277D750F8];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"STOP" value:&stru_288487370 table:@"Localizable-Backup"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __41__ICSBackupViewController_cancelRestore___block_invoke_2;
  v21[3] = &unk_27A666750;
  v21[4] = self;
  v19 = [v16 actionWithTitle:v18 style:0 handler:v21];
  [v11 addAction:v19];

  [(ICSBackupViewController *)self presentViewController:v11 animated:1 completion:0];
  v20 = *MEMORY[0x277D85DE8];
}

void __41__ICSBackupViewController_cancelRestore___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ICSBackupViewController_cancelRestore___block_invoke_3;
  block[3] = &unk_27A666198;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void __41__ICSBackupViewController_cancelRestore___block_invoke_3(uint64_t a1)
{
  v2 = LogSubsystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Cancel restore confirmed", buf, 2u);
  }

  [*(*(a1 + 32) + 1464) cancelRestore];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ICSBackupViewController_cancelRestore___block_invoke_619;
  block[3] = &unk_27A666198;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)cancelBackup:(id)backup
{
  v4 = LogSubsystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Cancel backup", buf, 2u);
  }

  self->_backupCancelled = 1;
  self->_currentSyncState = 0;
  self->_finishBackupExecuted = 1;
  self->_updateBackupState = 0;
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ICSBackupViewController_cancelBackup___block_invoke;
  block[3] = &unk_27A666198;
  block[4] = self;
  dispatch_async(v5, block);

  [(ICSBackupViewController *)self updateBusyState];
}

uint64_t __40__ICSBackupViewController_cancelBackup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncClient];
  [v2 cancelSync];

  v3 = *(*(a1 + 32) + 1464);

  return [v3 cancel];
}

- (void)startBackup
{
  self->_backupCancelled = 0;
  [(ICSBackupStatusView *)self->_backupStatusView setBackupError:0];
  self->_estimateTimeRemaining = -1;
  self->_icloudBackupProgress = 0.0;
  [(ICSBackupViewController *)self updateiCloudBackupAndSyncProgressWithAllowDecrease:1];
  self->_finishBackupExecuted = 0;
  self->_icloudSyncProgress = 0.0;
  [(ICSBackupStatusView *)self->_backupStatusView setSyncErrors:0];
  self->_currentSyncState = 1;
  [(ICSBackupViewController *)self _updateToBackupState:1 backupError:0 progress:-1 timeRemaining:0 restoreStateInfo:0 backgroundRestoreInfo:1 backupEnabled:0.0];
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ICSBackupViewController_startBackup__block_invoke;
  block[3] = &unk_27A666198;
  block[4] = self;
  dispatch_async(v3, block);

  v4 = LogSubsystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Starting iMessage periodic sync", buf, 2u);
  }

  mEMORY[0x277D18D50] = [MEMORY[0x277D18D50] sharedInstance];
  [mEMORY[0x277D18D50] startPeriodicSync];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v6 = getHKHealthStoreClass_softClass;
  v18 = getHKHealthStoreClass_softClass;
  if (!getHKHealthStoreClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __getHKHealthStoreClass_block_invoke;
    v13 = &unk_27A6664B0;
    v14 = &v15;
    __getHKHealthStoreClass_block_invoke(buf);
    v6 = v16[3];
  }

  v7 = v6;
  _Block_object_dispose(&v15, 8);
  v8 = objc_alloc_init(v6);
  [v8 forceCloudSyncWithOptions:0 completion:&__block_literal_global_627];
}

void __38__ICSBackupViewController_startBackup__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = LogSubsystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Start icloud sync", buf, 2u);
  }

  v3 = [*(a1 + 32) cloudSyncClient];
  [v3 startSync];

  v4 = LogSubsystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Begin backup", buf, 2u);
  }

  v5 = objc_opt_new();
  if (*(*(a1 + 32) + 1488))
  {
    [MEMORY[0x277D28A38] expensiveCellularAccess];
  }

  else
  {
    [MEMORY[0x277D28A38] inexpensiveCellularAccess];
  }
  v6 = ;
  [v5 setCellularAccess:v6];

  v7 = *(*(a1 + 32) + 1464);
  v16 = 0;
  v8 = [v7 startBackupWithOptions:v5 error:&v16];
  v9 = v16;
  if (v8)
  {
    v10 = LogSubsystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v10, OS_LOG_TYPE_DEFAULT, "Backup begin succeed", buf, 2u);
    }
  }

  else
  {
    v11 = [*(a1 + 32) cloudSyncClient];
    [v11 cancelSync];

    v12 = LogSubsystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&dword_275819000, v12, OS_LOG_TYPE_DEFAULT, "Error starting backup: %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__ICSBackupViewController_startBackup__block_invoke_622;
    block[3] = &unk_27A666410;
    block[4] = *(a1 + 32);
    v15 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __38__ICSBackupViewController_startBackup__block_invoke_622(uint64_t a1)
{
  [*(*(a1 + 32) + 1528) setBackupError:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 updateBusyState];
}

- (void)_showAlertForExpensiveCellular
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_275819000, v0, v1, "Failed to fetch the data subscription context: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)beginBackup:(id)backup
{
  v10 = *MEMORY[0x277D85DE8];
  backupCopy = backup;
  v5 = LogSubsystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ICSBackupViewController beginBackup:]";
    _os_log_impl(&dword_275819000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v6 = [backupCopy propertyForKey:*MEMORY[0x277D40148]];

  [v6 setCellEnabled:0];
  [(ICSBackupViewController *)self prepareAlertForBackupDisabledDomainAndShow:1];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateBackupFinishState
{
  if (!self->_finishBackupExecuted)
  {
    self->_finishBackupExecuted = 1;
    [(ICSBackupViewController *)self updateBusyState];
    if (self->_updateBackupState == 1)
    {
      [(ICSBackupViewController *)self updateLastBackupDateInvalidatePrevious:1];
    }

    else
    {
      [(ICSBackupViewController *)self updateLastBackupDate];
    }

    self->_updateBackupState = 0;
  }
}

- (void)syncCompletedWithErrors:(id)errors
{
  errorsCopy = errors;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__ICSBackupViewController_syncCompletedWithErrors___block_invoke;
  v6[3] = &unk_27A666410;
  v6[4] = self;
  v7 = errorsCopy;
  v5 = errorsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __51__ICSBackupViewController_syncCompletedWithErrors___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogSubsystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "iCloud sync complete get called", &v10, 2u);
  }

  if (*(*(a1 + 32) + 1596) == 1)
  {
    v3 = *(a1 + 40);
    if (v3 && [v3 count])
    {
      v4 = LogSubsystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Got some icloud sync errors: %@", &v10, 0xCu);
      }

      *(*(a1 + 32) + 1596) = 3;
      v6 = *(a1 + 40);
    }

    else
    {
      v7 = LogSubsystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_275819000, v7, OS_LOG_TYPE_DEFAULT, "iCloud sync complete with no error", &v10, 2u);
      }

      v6 = 0;
      *(*(a1 + 32) + 1596) = 2;
    }

    [*(*(a1 + 32) + 1528) setSyncErrors:v6];
    if (*(*(a1 + 32) + 1600))
    {
      v8 = LogSubsystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "We have already completed backup", &v10, 2u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)syncProgress:(double)progress
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__ICSBackupViewController_syncProgress___block_invoke;
  v3[3] = &unk_27A666A68;
  v3[4] = self;
  *&v3[5] = progress;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __40__ICSBackupViewController_syncProgress___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 1596) == 1)
  {
    v2 = LogSubsystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v5 = 134217984;
      v6 = v3;
      _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "iCloud sync reported progress: %f", &v5, 0xCu);
    }

    *(*(a1 + 32) + 1616) = *(a1 + 40);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)showPopUpAlertForBackupDisabledApps
{
  PSGBackupUtilsClass_0 = getPSGBackupUtilsClass_0();
  backupDisabledAppsInfo = self->_backupDisabledAppsInfo;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__ICSBackupViewController_showPopUpAlertForBackupDisabledApps__block_invoke;
  v5[3] = &unk_27A666CB0;
  v5[4] = self;
  [PSGBackupUtilsClass_0 configureAlertMessageOfType:0 AndTitleForBackUpDisabledApps:backupDisabledAppsInfo completion:v5];
}

uint64_t __62__ICSBackupViewController_showPopUpAlertForBackupDisabledApps__block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 showAlertForBackupDisabledItemsWithTitle:? andMessage:?];
  }

  else
  {
    return [v2 _showAlertForExpensiveCellular];
  }
}

- (void)showAlertForBackupDisabledItemsWithTitle:(id)title andMessage:(id)message
{
  titleCopy = title;
  messageCopy = message;
  view = [(ICSBackupViewController *)self view];
  window = [view window];

  if (window)
  {
    v10 = [(PSSpecifier *)self->_backupNowButton propertyForKey:*MEMORY[0x277D40148]];
    [v10 setCellEnabled:1];

    v11 = [MEMORY[0x277D75110] alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
    manageStorageAction = [(ICSBackupViewController *)self manageStorageAction];
    [v11 addAction:manageStorageAction];

    v13 = MEMORY[0x277D750F8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"CONTINUE" value:&stru_288487370 table:@"Localizable-Backup"];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __79__ICSBackupViewController_showAlertForBackupDisabledItemsWithTitle_andMessage___block_invoke;
    v17[3] = &unk_27A666750;
    v17[4] = self;
    v16 = [v13 actionWithTitle:v15 style:1 handler:v17];
    [v11 addAction:v16];

    [(ICSBackupViewController *)self presentViewController:v11 animated:1 completion:0];
  }
}

- (void)proceedWithBackup
{
  v3 = [(PSSpecifier *)self->_backupNowButton propertyForKey:*MEMORY[0x277D40148]];
  [v3 setCellEnabled:1];

  [(ICSBackupViewController *)self startBackup];
}

- (id)manageStorageAction
{
  v3 = MEMORY[0x277D750F8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ICLOUD_SETTINGS" value:&stru_288487370 table:@"Localizable-Backup"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__ICSBackupViewController_manageStorageAction__block_invoke;
  v8[3] = &unk_27A666750;
  v8[4] = self;
  v6 = [v3 actionWithTitle:v5 style:0 handler:v8];

  return v6;
}

void __46__ICSBackupViewController_manageStorageAction__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1544) propertyForKey:*MEMORY[0x277D40148]];
  [v1 setCellEnabled:1];

  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/STORAGE_AND_BACKUP/CURRENT_DEVICE_BACKUP"];
  [v3 openSensitiveURL:v2 withOptions:0];
}

- (void)managerDidFinishBackup:(id)backup
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = LogSubsystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_275819000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  [(ICSBackupStatusView *)self->_backupStatusView setBackupError:0];
  self->_finishBackupExecuted = 1;
  self->_updateBackupState = 0;
  [(ICSBackupViewController *)self updateBusyState];
  [(ICSBackupViewController *)self updateLastBackupDateInvalidatePrevious:1];
  currentSyncState = self->_currentSyncState;
  v7 = LogSubsystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (currentSyncState == 1)
  {
    if (v8)
    {
      LOWORD(v12) = 0;
      v9 = "Backup finished but iCloud sync not finished";
LABEL_8:
      _os_log_impl(&dword_275819000, v7, OS_LOG_TYPE_DEFAULT, v9, &v12, 2u);
    }
  }

  else if (v8)
  {
    LOWORD(v12) = 0;
    v9 = "Backup and iCloud sync both finished";
    goto LABEL_8;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D7F458] object:0];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager didFailRestoreWithError:(id)error
{
  errorCopy = error;
  v6 = LogSubsystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ICSBackupViewController manager:didFailRestoreWithError:];
  }

  [(ICSBackupViewController *)self updateBusyState];
  [(ICSBackupViewController *)self updateLastBackupDate];
}

- (void)managerDidFinishRestore:(id)restore
{
  v4 = LogSubsystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Restore finished", v5, 2u);
  }

  [(ICSBackupViewController *)self updateBusyState];
  [(ICSBackupViewController *)self updateLastBackupDate];
}

- (void)managerDidCancelRestore:(id)restore
{
  v4 = LogSubsystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Restore canceled", v5, 2u);
  }

  [(ICSBackupViewController *)self updateBusyState];
  [(ICSBackupViewController *)self updateLastBackupDate];
}

- (void)manager:(id)manager didFailBackupWithError:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = LogSubsystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = errorCopy;
    _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "Failed backup: %@", &v8, 0xCu);
  }

  self->_currentSyncState = 3;
  self->_finishBackupExecuted = 1;
  self->_updateBackupState = 0;
  [(ICSBackupStatusView *)self->_backupStatusView setBackupError:errorCopy];
  [(ICSBackupViewController *)self updateBusyState];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager didUpdateProgress:(float)progress estimatedTimeRemaining:(unint64_t)remaining
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = LogSubsystem();
  progressCopy = progress;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = progressCopy;
    _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "Backup progress: %f", &v11, 0xCu);
  }

  self->_icloudBackupProgress = progressCopy;
  self->_estimateTimeRemaining = remaining;
  [(ICSBackupViewController *)self updateiCloudBackupAndSyncProgressWithAllowDecrease:0];
  if ((self->_backupState - 1) >= 2)
  {
    [(ICSBackupViewController *)self updateBusyState];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)managerDidUpdateBackgroundRestoreProgress:(id)progress
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = LogSubsystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ICSBackupViewController managerDidUpdateBackgroundRestoreProgress:]";
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(ICSBackupViewController *)self updateBusyState];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager didSetBackupEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x277D85DE8];
  v6 = LogSubsystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[ICSBackupViewController manager:didSetBackupEnabled:]";
    v10 = 1024;
    v11 = enabledCopy;
    _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "%s, enabled: %d", &v8, 0x12u);
  }

  [(ICSBackupViewController *)self updateBusyState];
  [(ICSBackupViewController *)self updateLastBackupDate];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)managerDidLoseConnectionToService:(id)service
{
  if ((self->_backupState - 1) <= 1)
  {
    v15 = v3;
    v16 = v4;
    v6 = LogSubsystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "Lost connection to backup service", buf, 2u);
    }

    currentSyncState = self->_currentSyncState;
    v8 = LogSubsystem();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (currentSyncState == 1)
    {
      if (v9)
      {
        *v13 = 0;
        _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "We are still syncing with iCloud", v13, 2u);
      }

      if (!self->_updateBackupState)
      {
        v10 = LogSubsystem();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_275819000, v10, OS_LOG_TYPE_DEFAULT, "Backup not finished before losing connection", v12, 2u);
        }

        self->_updateBackupState = 2;
      }
    }

    else
    {
      if (v9)
      {
        *v11 = 0;
        _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "We have finished icloud sync", v11, 2u);
      }

      self->_updateBackupState = 0;
      self->_finishBackupExecuted = 1;
    }

    [(ICSBackupViewController *)self updateBusyState];
    [(ICSBackupViewController *)self updateLastBackupDate];
  }
}

- (void)reloadSpecifiersForProvider:(id)provider oldSpecifiers:(id)specifiers animated:(BOOL)animated
{
  v18 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  specifiersCopy = specifiers;
  v9 = LogSubsystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = providerCopy;
    _os_log_impl(&dword_275819000, v9, OS_LOG_TYPE_DEFAULT, "Reloading specifiers for provider %@", &v16, 0xCu);
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v10 = [specifiersCopy count];
  specifiers = [providerCopy specifiers];
  v12 = specifiers;
  if (v10)
  {
    v13 = [specifiers count];

    if (v13)
    {
      specifiers2 = [providerCopy specifiers];
      [(ICSBackupViewController *)self replaceContiguousSpecifiers:specifiersCopy withSpecifiers:specifiers2 animated:1];
    }

    else
    {
      [(ICSBackupViewController *)self removeContiguousSpecifiers:specifiersCopy animated:1];
    }

    [(ICSBackupViewController *)self updateBusyState];
  }

  else
  {
    [(ICSBackupViewController *)self addSpecifiersFromArray:specifiers];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_fetchiCloudHomeData
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = [[ICSHomeDataController alloc] initWithAccount:self->_account];
  v3 = v6[5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__ICSBackupViewController__fetchiCloudHomeData__block_invoke;
  v4[3] = &unk_27A666CD8;
  v4[4] = self;
  v4[5] = &v5;
  [v3 fetchiCloudHomeDataModelAllowingCache:1 completion:v4];
  _Block_object_dispose(&v5, 8);
}

void __47__ICSBackupViewController__fetchiCloudHomeData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = LogSubsystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __47__ICSBackupViewController__fetchiCloudHomeData__block_invoke_cold_1();
    }
  }

  else
  {
    v8 = [v5 backupViewInfo];
    v9 = [v8 tips];
    v10 = [v9 count];

    v7 = LogSubsystem();
    v11 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v11)
      {
        v12 = [v5 backupViewInfo];
        v13 = [v12 tips];
        v14 = [v13 firstObject];
        *buf = 138412290;
        v24 = v14;
        _os_log_impl(&dword_275819000, v7, OS_LOG_TYPE_DEFAULT, "Found an eligible tip for backup view: %@", buf, 0xCu);
      }

      v15 = [v5 backupViewInfo];
      v16 = [v15 tips];
      v17 = [v16 firstObject];

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __47__ICSBackupViewController__fetchiCloudHomeData__block_invoke_651;
      v21[3] = &unk_27A666410;
      v21[4] = *(a1 + 32);
      v22 = v17;
      v7 = v17;
      dispatch_async(MEMORY[0x277D85CD0], v21);
    }

    else if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v7, OS_LOG_TYPE_DEFAULT, "No eligible tip found for backup view.", buf, 2u);
    }
  }

  v18 = *(*(a1 + 40) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = 0;

  v20 = *MEMORY[0x277D85DE8];
}

void __47__ICSBackupViewController__fetchiCloudHomeData__block_invoke_651(uint64_t a1)
{
  v2 = [*(a1 + 32) _buildBackupSpecifiersWithTip:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1568);
  *(v3 + 1568) = v2;

  v8.receiver = *(a1 + 32);
  v8.super_class = ICSBackupViewController;
  objc_msgSendSuper2(&v8, sel_reloadSpecifiers);
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BACKUPS_NAV_TITLE" value:&stru_288487370 table:@"Localizable-Backup"];
  [*(a1 + 32) setTitle:v7];
}

- (id)_buildBackupSpecifiersWithTip:(id)tip
{
  v4 = MEMORY[0x277CBEB18];
  tipCopy = tip;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"UPGRADE_TO_ICLOUD_PLUS_TIP"];
  [v6 addObject:v7];
  v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_288487370 target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v8 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  title = [tipCopy title];
  [v8 setObject:title forKeyedSubscript:*MEMORY[0x277D40170]];

  subtitle = [tipCopy subtitle];
  [v8 setObject:subtitle forKeyedSubscript:*MEMORY[0x277D40160]];

  v11 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:3];
  v12 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.circle" withConfiguration:v11];
  [v8 setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FFC0]];
  actions = [tipCopy actions];
  firstObject = [actions firstObject];
  title2 = [firstObject title];
  [v8 setObject:title2 forKeyedSubscript:@"ICSActionButtonTitleKey"];

  actions2 = [tipCopy actions];

  firstObject2 = [actions2 firstObject];
  [v8 setObject:firstObject2 forKeyedSubscript:@"ICSActionKey"];

  [v8 setButtonAction:sel_performTipAction_];
  [v6 addObject:v8];
  v18 = [v6 copy];

  return v18;
}

- (void)performTipAction:(id)action
{
  v29[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = LogSubsystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_275819000, v5, OS_LOG_TYPE_DEFAULT, "Backup tip action button tapped.", &v24, 2u);
  }

  if (!self->_upgradeFlowManager)
  {
    v6 = [actionCopy objectForKeyedSubscript:@"ICSActionKey"];
    v7 = MEMORY[0x277CBEBC0];
    urlString = [v6 urlString];
    v9 = [v7 URLWithString:urlString];

    type = [v6 type];
    v11 = _ICQActionForString();

    if (v9)
    {
      if ([v6 isUpsellAction])
      {
        v12 = objc_alloc_init(MEMORY[0x277D7F388]);
        [v12 _updateRequestedServerUIURLWithURL:v9];
        v13 = [objc_alloc(MEMORY[0x277D7F4E0]) initWithOffer:v12];
        upgradeFlowManager = self->_upgradeFlowManager;
        self->_upgradeFlowManager = v13;

        [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setDelegate:self];
        v15 = objc_alloc(MEMORY[0x277D7F370]);
        type2 = [v6 type];
        v17 = [v15 initWithActionString:type2 url:v9];

        v18 = LogSubsystem();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138412290;
          v25 = v9;
          _os_log_impl(&dword_275819000, v18, OS_LOG_TYPE_DEFAULT, "Launching freshmint upgrade flow with url: %@", &v24, 0xCu);
        }

        [(ICQUpgradeFlowManager *)self->_upgradeFlowManager beginRemoteUpgradeFlowWithICQLink:v17 presenter:self];
LABEL_18:

        goto LABEL_19;
      }

      if (v11 == 6)
      {
        v19 = MEMORY[0x277D7F370];
        v28 = *MEMORY[0x277D7F280];
        v29[0] = v9;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
        v21 = [v19 performAction:6 parameters:v20 options:0];

        v12 = LogSubsystem();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v22 = @"NO";
          if (v21)
          {
            v22 = @"YES";
          }

          v24 = 138412546;
          v25 = v9;
          v26 = 2112;
          v27 = v22;
          _os_log_impl(&dword_275819000, v12, OS_LOG_TYPE_DEFAULT, "Successfully launched URL %@: %@", &v24, 0x16u);
        }

        goto LABEL_18;
      }
    }

    v12 = LogSubsystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICSBackupViewController performTipAction:];
    }

    goto LABEL_18;
  }

  v6 = LogSubsystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ICSBackupViewController performTipAction:v6];
  }

LABEL_19:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)upgradeFlowManagerDidCancel:(id)cancel
{
  v4 = LogSubsystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Upgrade flow cancelled.", v6, 2u);
  }

  [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setDelegate:0];
  upgradeFlowManager = self->_upgradeFlowManager;
  self->_upgradeFlowManager = 0;
}

- (void)upgradeFlowManagerDidComplete:(id)complete
{
  v4 = LogSubsystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Upgrade flow completed successfully.", buf, 2u);
  }

  [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setDelegate:0];
  upgradeFlowManager = self->_upgradeFlowManager;
  self->_upgradeFlowManager = 0;

  [(ICSBackupViewController *)self _postQuotaDidChangeNotification];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ICSBackupViewController_upgradeFlowManagerDidComplete___block_invoke;
  block[3] = &unk_27A666198;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__ICSBackupViewController_upgradeFlowManagerDidComplete___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 1568))
  {
    v2 = LogSubsystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Removing backup tip specifiers.", v5, 2u);
    }

    [*(a1 + 32) removeContiguousSpecifiers:*(*(a1 + 32) + 1568) animated:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 1568);
    *(v3 + 1568) = 0;
  }
}

- (void)_postQuotaDidChangeNotification
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = LogSubsystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ICSBackupViewController _postQuotaDidChangeNotification]";
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "%s refreshing quota storage info", &v5, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D7F2C0] object:0];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  backupSpecifierProvider = self->_backupSpecifierProvider;
  if (objc_opt_respondsToSelector())
  {
    [(AAUISpecifierProvider *)self->_backupSpecifierProvider handleURL:lCopy];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __87__ICSBackupViewController__checkSupportForManualAndAutoBackupOnCellularWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_275819000, v0, v1, "Failed to get backup on cellular support: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __87__ICSBackupViewController__checkSupportForManualAndAutoBackupOnCellularWithCompletion___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  _os_log_error_impl(&dword_275819000, a2, OS_LOG_TYPE_ERROR, "%@ got deallocated.", v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_476_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_275819000, v0, v1, "Error setting up backup with passcode: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_478_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*(*(a1 + 56) + 8) + 40));
  OUTLINED_FUNCTION_0_0(&dword_275819000, a2, a3, "Error starting iCloud Backup: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)manager:didFailRestoreWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_275819000, v0, v1, "Restore failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__ICSBackupViewController__fetchiCloudHomeData__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_275819000, v0, v1, "Failed to fetch iCloud home data model w/ error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)performTipAction:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_275819000, v0, v1, "No valid URL found for tip action: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end