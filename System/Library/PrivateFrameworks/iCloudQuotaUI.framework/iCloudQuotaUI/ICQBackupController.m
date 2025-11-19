@interface ICQBackupController
- (BOOL)isBackupEnabled;
- (BOOL)policyPreventsBackup;
- (BYBuddyDaemonCloudSyncClient)cloudSyncClient;
- (ICQBackupController)init;
- (ICQBackupController)initWithAccount:(id)a3;
- (id)_backgroundRestoreInfoText:(id)a3;
- (id)_buildHeaderCardSpecifier;
- (id)cachedIsBackupEnabledNumber;
- (id)dateStringOfLatestBackup;
- (id)isBackupOverCellularEnabled;
- (id)manageStorageAction;
- (id)specifiers;
- (void)_backupEnabledSwitchCancelled:(id)a3;
- (void)_checkSupportForManualAndAutoBackupOnCellular;
- (void)_persistBackupEnablementState:(BOOL)a3 passcode:(id)a4;
- (void)_setBackupEnabled:(BOOL)a3 passcode:(id)a4;
- (void)_showAlertForExpensiveCellular;
- (void)_updateToBackupState:(id)a3 restoreState:(id)a4 backgroundRestoreState:(id)a5 backupEnabled:(BOOL)a6;
- (void)_updateToBackupState:(int)a3 backupError:(id)a4 progress:(float)a5 timeRemaining:(unint64_t)a6 restoreStateInfo:(id)a7 backgroundRestoreInfo:(id)a8 backupEnabled:(BOOL)a9;
- (void)beginBackup:(id)a3;
- (void)cancelBackup:(id)a3;
- (void)cancelRestore:(id)a3;
- (void)checkIfNetworkSupportsBackup;
- (void)checkIfThermalSupportsBackup;
- (void)dealloc;
- (void)didCancelEnteringPIN;
- (void)fetchIsBackupEnabled;
- (void)manager:(id)a3 didFailBackupWithError:(id)a4;
- (void)manager:(id)a3 didFailRestoreWithError:(id)a4;
- (void)manager:(id)a3 didSetBackupEnabled:(BOOL)a4;
- (void)manager:(id)a3 didUpdateProgress:(float)a4 estimatedTimeRemaining:(unint64_t)a5;
- (void)managerDidCancelRestore:(id)a3;
- (void)managerDidFinishBackup:(id)a3;
- (void)managerDidFinishRestore:(id)a3;
- (void)managerDidLoseConnectionToService:(id)a3;
- (void)managerDidUpdateBackgroundRestoreProgress:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)openBackupHelpPage:(id)a3;
- (void)prepareAlertForBackupDisabledDomainAndShow:(BOOL)a3;
- (void)proceedWithBackup;
- (void)reloadSpecifiers;
- (void)reloadSpecifiersForProvider:(id)a3 oldSpecifiers:(id)a4 animated:(BOOL)a5;
- (void)setBackupEnabled:(id)a3 specifier:(id)a4;
- (void)setBackupOverCellularEnabled:(id)a3;
- (void)setLastBackupDateString:(id)a3;
- (void)setNetworkSupportsBackup:(BOOL)a3;
- (void)showAlertForBackupDisabledItemsWithTitle:(id)a3 andMessage:(id)a4;
- (void)showPopUpAlertForBackupDisabledApps;
- (void)startBackup;
- (void)startListeningForThermalChanges;
- (void)syncCompletedWithErrors:(id)a3;
- (void)syncProgress:(double)a3;
- (void)updateBackupFinishState;
- (void)updateBusyState;
- (void)updateLastBackupDateInvalidatePrevious:(BOOL)a3;
- (void)updateiCloudBackupAndSyncProgressWithAllowDecrease:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willUnlock;
@end

@implementation ICQBackupController

- (ICQBackupController)init
{
  v3 = [MEMORY[0x277CB8F48] defaultStore];
  v4 = [v3 aa_primaryAppleAccount];
  v5 = [(ICQBackupController *)self initWithAccount:v4];

  return v5;
}

- (ICQBackupController)initWithAccount:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = ICQBackupController;
  v6 = [(ICQBackupController *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v8 = objc_alloc(MEMORY[0x277D28A40]);
    v9 = [(ACAccount *)v7->_account personaIdentifier];
    v10 = [v8 initWithDelegate:v7 eventQueue:0 personaIdentifier:v9];
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
    [(ICQBackupController *)v7 _checkSupportForManualAndAutoBackupOnCellular];
    v15 = objc_opt_new();
    pathEvaluator = v7->_pathEvaluator;
    v7->_pathEvaluator = v15;

    [(NWPathEvaluator *)v7->_pathEvaluator addObserver:v7 forKeyPath:@"path" options:5 context:0];
    [(ICQBackupController *)v7 fetchIsBackupEnabled];
  }

  return v7;
}

- (void)willUnlock
{
  [(ICQBackupController *)self updateBusyState];

  [(ICQBackupController *)self updateLastBackupDate];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = ICQBackupController;
  [(ICQBackupController *)&v7 viewWillAppear:a3];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BACKUPS_NAV_TITLE" value:&stru_28844FC60 table:@"Backup"];
  [(ICQBackupController *)self setTitle:v5];

  backupDisabledAppsInfo = self->_backupDisabledAppsInfo;
  self->_backupDisabledAppsInfo = 0;

  [(ICQBackupController *)self prepareAlertForBackupDisabledDomainAndShow:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = ICQBackupController;
  [(ICQBackupController *)&v7 viewDidAppear:a3];
  if (([(ICQBackupController *)self isMovingToParentViewController]& 1) == 0)
  {
    v4 = +[ICQQuotaRequestManager sharedManager];
    [v4 noteQuotaInfoChanged];
  }

  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ICQBackupController_viewDidAppear___block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(v5, block);

  [(ICQBackupController *)self checkIfNetworkSupportsBackup];
  [(ICQBackupController *)self startListeningForThermalChanges];
  [(ICQBackupController *)self checkIfThermalSupportsBackup];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ICQBackupController;
  [(ICQBackupController *)&v4 viewWillDisappear:a3];
  [(ICQBackupController *)self stopListeningForThermalChanges];
  self->_needToShowPopupAlertForBackup = 0;
}

- (void)dealloc
{
  [(ICQBackupController *)self dismissViewControllerAnimated:0 completion:0];
  [(NWPathEvaluator *)self->_pathEvaluator removeObserver:self forKeyPath:@"path" context:0];
  [(ICQBackupController *)self stopListeningForThermalChanges];
  [(MBManager *)self->_backupManager setDelegate:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CEC690], 0);
  v4.receiver = self;
  v4.super_class = ICQBackupController;
  [(ICQBackupController *)&v4 dealloc];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{@"path", a4, a5, a6}])
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__ICQBackupController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v7[3] = &unk_27A65B860;
    objc_copyWeak(&v8, &location);
    dispatch_async(MEMORY[0x277D85CD0], v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __70__ICQBackupController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained checkIfNetworkSupportsBackup];
}

- (void)setNetworkSupportsBackup:(BOOL)a3
{
  v3 = a3;
  networkSupportsBackup = self->_networkSupportsBackup;
  if (!networkSupportsBackup || [(NSNumber *)networkSupportsBackup BOOLValue]!= a3)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    v7 = self->_networkSupportsBackup;
    self->_networkSupportsBackup = v6;

    [(ICQBackupController *)self updateBusyState];

    [(ICQBackupController *)self updateLastBackupDate];
  }
}

- (void)checkIfNetworkSupportsBackup
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(ICQBackupController *)self pathEvaluator];
  v4 = [v3 path];

  v5 = [v4 status] & 0xFFFFFFFFFFFFFFFDLL;
  v6 = [v4 interface];
  v7 = [v6 type];

  isExpensiveCellular = self->_isExpensiveCellular;
  self->_isExpensiveCellular = 0;

  if (v5 != 1)
  {
    goto LABEL_7;
  }

  if ([v4 usesInterfaceType:1])
  {
    goto LABEL_8;
  }

  if ([v4 usesInterfaceType:3])
  {
    LOBYTE(v5) = 1;
    goto LABEL_8;
  }

  if ([v4 usesInterfaceType:2])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isExpensive")}];
    v10 = self->_isExpensiveCellular;
    self->_isExpensiveCellular = v9;

    [(ICQBackupController *)self _checkSupportForManualAndAutoBackupOnCellular];
    LOBYTE(v5) = self->_isManualBackupOnCellularAllowed;
  }

  else
  {
LABEL_7:
    LOBYTE(v5) = 0;
  }

LABEL_8:
  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_isExpensiveCellular;
    v13 = 134218498;
    v14 = v7;
    v15 = 2112;
    v16 = v12;
    v17 = 1024;
    v18 = v5 & 1;
    _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "Network interfaceType: %ld. Expensive cellular: %@. Network supports backup: %d", &v13, 0x1Cu);
  }

  [(ICQBackupController *)self setNetworkSupportsBackup:v5 & 1];
}

- (void)_checkSupportForManualAndAutoBackupOnCellular
{
  v16 = *MEMORY[0x277D85DE8];
  self->_isAutoBackupOnCellularAllowed = 0;
  self->_isManualBackupOnCellularAllowed = 0;
  backupManager = self->_backupManager;
  account = self->_account;
  v11 = 0;
  v5 = [(MBManager *)backupManager backupOnCellularSupportWithAccount:account error:&v11];
  v6 = v11;
  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICQBackupController _checkSupportForManualAndAutoBackupOnCellular];
    }
  }

  else
  {
    self->_isManualBackupOnCellularAllowed = v5 & 1;
    self->_isAutoBackupOnCellularAllowed = (v5 & 2) != 0;
  }

  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    isManualBackupOnCellularAllowed = self->_isManualBackupOnCellularAllowed;
    isAutoBackupOnCellularAllowed = self->_isAutoBackupOnCellularAllowed;
    *buf = 67109376;
    v13 = isManualBackupOnCellularAllowed;
    v14 = 1024;
    v15 = isAutoBackupOnCellularAllowed;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "ManualBackupOnCellularAllowed: %d. AutoBackupOnCellularAllowed: %d", buf, 0xEu);
  }
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
    handler[2] = __54__ICQBackupController_startListeningForThermalChanges__block_invoke;
    handler[3] = &unk_27A65B888;
    objc_copyWeak(&v7, &location);
    handler[4] = self;
    notify_register_dispatch(v3, &self->_thermalNotificationToken, v4, handler);

    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&location);
}

void __54__ICQBackupController_startListeningForThermalChanges__block_invoke(uint64_t a1, int token)
{
  v13 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = state64;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "received thermal pressure notification: %llu", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(*(a1 + 32) + 1560);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__ICQBackupController_startListeningForThermalChanges__block_invoke_508;
    block[3] = &unk_27A65B1C8;
    v9 = state64;
    v8 = WeakRetained;
    dispatch_async(v6, block);
  }
}

uint64_t __54__ICQBackupController_startListeningForThermalChanges__block_invoke_508(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = _ICQGetLogSystem();
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
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
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
      [(ICQBackupController *)self setThermalSupportsBackup:v3 < 0x14];
    }

    notify_cancel(out_token);
  }
}

- (id)_buildHeaderCardSpecifier
{
  v3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"BackupHeader" target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v3 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
  [v3 setObject:*MEMORY[0x277D3FD30] forKeyedSubscript:*MEMORY[0x277D3FFD8]];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BACKUP_HEADER_TITLE" value:&stru_28844FC60 table:@"Backup"];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277D40170]];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BACKUPS_INFO_LEARN_MORE" value:&stru_28844FC60 table:@"Backup"];
  [v3 setObject:v7 forKeyedSubscript:ICQUILearnMoreTextKey];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BACKUP_HELP_PAGE_URL" value:&stru_28844FC60 table:@"Backup"];
  [v3 setObject:v9 forKeyedSubscript:ICQUILearnMoreLinkKey];

  if (![(ICQBackupController *)self policyPreventsBackup])
  {
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Backup is allowed, setting backup info text", buf, 2u);
    }

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"BACKUPS_INFO_TEXT"];
    v13 = [v11 localizedStringForKey:v12 value:&stru_28844FC60 table:@"Backup"];
    [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x277D40160]];
  }

  return v3;
}

- (void)reloadSpecifiers
{
  if (self->_finishedInitialLoad)
  {
    [(ICQBackupController *)self updateBusyState];

    [(ICQBackupController *)self updateLastBackupDate];
  }

  else
  {
    v3.receiver = self;
    v3.super_class = ICQBackupController;
    [(ICQBackupController *)&v3 reloadSpecifiers];
  }
}

- (id)specifiers
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    if (MGGetBoolAnswer())
    {
      v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.iCloudQuotaUI"];
      v6 = [(ICQBackupController *)self loadSpecifiersFromPlistName:@"Backup" target:self bundle:v5];

      v7 = [v6 specifierForID:@"BACKUP_ENABLED_SWITCH"];
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"BACKUP_ENABLED_SWITCH"];
      v10 = [v8 localizedStringForKey:v9 value:&stru_28844FC60 table:@"Backup"];
      [v7 setName:v10];

      v11 = *MEMORY[0x277D3FD80];
      [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
      v12 = [v6 specifierForID:@"BACKUP_SWITCH_GROUP"];
      if (!v12)
      {
        [ICQBackupController specifiers];
      }

      v13 = v12;
      [v12 setName:0];
      v14 = [(ICQBackupController *)self _buildHeaderCardSpecifier];
      if ([v6 count] >= 2)
      {
        v15 = _ICQGetLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v59 = 1;
          _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "Inserting header specifier for backup controller at index: %d", buf, 8u);
        }

        [v6 insertObject:v14 atIndex:1];
      }

      if (!self->_backupOverCellularSpecifiers)
      {
        v16 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"BACKUP_OVER_CELLULAR_GROUP"];
        v51 = v13;
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        SFLocalizableWAPIStringKeyForKey();
        v53 = v7;
        v18 = v55 = v11;
        v19 = [v17 localizedStringForKey:v18 value:&stru_28844FC60 table:@"Backup"];
        [v16 setObject:v19 forKeyedSubscript:*MEMORY[0x277D3FF88]];

        v20 = MEMORY[0x277D3FAD8];
        v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v22 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"BACKUP_OVER_CELLULAR_ENABLED_SWITCH"];
        v23 = [v21 localizedStringForKey:v22 value:&stru_28844FC60 table:@"Backup"];
        v24 = [v20 preferenceSpecifierNamed:v23 target:self set:sel_setBackupOverCellularEnabled_ get:sel_isBackupOverCellularEnabled detail:0 cell:6 edit:0];
        backupOverCellularSwitch = self->_backupOverCellularSwitch;
        self->_backupOverCellularSwitch = v24;

        v11 = v55;
        v13 = v51;

        v7 = v53;
        [(PSSpecifier *)self->_backupOverCellularSwitch setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
        [(PSSpecifier *)self->_backupOverCellularSwitch setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v55];
        [(PSSpecifier *)self->_backupOverCellularSwitch setObject:@"BACKUP_OVER_CELLULAR_ENABLED_SWITCH" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
        v26 = self->_backupOverCellularSwitch;
        v57[0] = v16;
        v57[1] = v26;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
        backupOverCellularSpecifiers = self->_backupOverCellularSpecifiers;
        self->_backupOverCellularSpecifiers = v27;
      }

      if (!self->_backupNowSpecifiers)
      {
        v56 = v11;
        v29 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
        v54 = *MEMORY[0x277D3FFB8];
        [v29 setProperty:@"BACKUP_NOW_GROUP" forKey:?];
        if (!self->_backupStatusView)
        {
          v30 = [[ICQBackupStatusView alloc] initWithSpecifier:v29];
          backupStatusView = self->_backupStatusView;
          self->_backupStatusView = v30;
        }

        v32 = [objc_opt_class() description];
        [v29 setProperty:v32 forKey:*MEMORY[0x277D3FF48]];

        [v29 setProperty:self->_backupStatusView forKey:*MEMORY[0x277D3FF90]];
        if (!self->_backupNowButton)
        {
          v52 = MEMORY[0x277D3FAD8];
          v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          [v33 localizedStringForKey:@"BACKUP_NOW" value:&stru_28844FC60 table:@"Backup"];
          v34 = v13;
          v36 = v35 = v7;
          v37 = [v52 preferenceSpecifierNamed:v36 target:self set:0 get:0 detail:0 cell:13 edit:0];
          backupNowButton = self->_backupNowButton;
          self->_backupNowButton = v37;

          v7 = v35;
          v13 = v34;

          v39 = self->_backupNowButton;
          v40 = [MEMORY[0x277CCABB0] numberWithBool:0];
          [(PSSpecifier *)v39 setProperty:v40 forKey:*MEMORY[0x277D3FF38]];

          [(PSSpecifier *)self->_backupNowButton setProperty:@"BACKUP_NOW_BUTTON" forKey:v54];
          [(PSSpecifier *)self->_backupNowButton setProperty:MEMORY[0x277CBEC38] forKey:v56];
          [(PSSpecifier *)self->_backupNowButton setButtonAction:sel_beginBackup_];
        }

        v41 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v29, self->_backupNowButton, 0}];
        backupNowSpecifiers = self->_backupNowSpecifiers;
        self->_backupNowSpecifiers = v41;
      }

      backupSpecifierProvider = self->_backupSpecifierProvider;
      if (!backupSpecifierProvider)
      {
        v44 = [[ICQDeviceBackupSpecifierProvider alloc] initWithAccount:self->_account presenter:self];
        v45 = self->_backupSpecifierProvider;
        self->_backupSpecifierProvider = v44;

        backupSpecifierProvider = self->_backupSpecifierProvider;
      }

      v46 = [(AAUISpecifierProvider *)backupSpecifierProvider specifiers];
      v47 = [v46 count];

      if (v47)
      {
        v48 = [(AAUISpecifierProvider *)self->_backupSpecifierProvider specifiers];
        [v6 addObjectsFromArray:v48];
      }

      v49 = *(&self->super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.isa + v3) = v6;
    }

    self->_finishedInitialLoad = 1;
    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)prepareAlertForBackupDisabledDomainAndShow:(BOOL)a3
{
  self->_needToShowPopupAlertForBackup = a3;
  if (!self->_isFetchingDomainInfo)
  {
    self->_isFetchingDomainInfo = 1;
    PSGBackupUtilsClass_0 = getPSGBackupUtilsClass_0();
    backupManager = self->_backupManager;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__ICQBackupController_prepareAlertForBackupDisabledDomainAndShow___block_invoke;
    v6[3] = &unk_27A65B8B0;
    v6[4] = self;
    [PSGBackupUtilsClass_0 fetchBackupDisabledAppsWithBackupManager:backupManager completion:v6];
  }
}

void __66__ICQBackupController_prepareAlertForBackupDisabledDomainAndShow___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(a1 + 32) + 1624), a2);
  *(*(a1 + 32) + 1577) = 0;
  v4 = *(a1 + 32);
  if (v4[1578] == 1)
  {
    [v4 showPopUpAlertForBackupDisabledApps];
    *(*(a1 + 32) + 1578) = 0;
  }
}

- (BOOL)policyPreventsBackup
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D25E30]] == 2;

  return v3;
}

- (void)fetchIsBackupEnabled
{
  backup_state_queue = self->_backup_state_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ICQBackupController_fetchIsBackupEnabled__block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(backup_state_queue, block);
}

void __43__ICQBackupController_fetchIsBackupEnabled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isBackupEnabled];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__ICQBackupController_fetchIsBackupEnabled__block_invoke_2;
  v3[3] = &unk_27A65A930;
  v4 = v2;
  v3[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __43__ICQBackupController_fetchIsBackupEnabled__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[ICQBackupController fetchIsBackupEnabled]_block_invoke_2";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "%s, Caching backup enabled: %d, reloading", &v5, 0x12u);
  }

  *(*(a1 + 32) + 1468) = *(a1 + 40);
  return [*(a1 + 32) reloadSpecifiers];
}

- (BOOL)isBackupEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  if ([(ICQBackupController *)self policyPreventsBackup])
  {
    v3 = _ICQGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Backup not enabled because policy prevents backup", &v7, 2u);
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [(MBManager *)self->_backupManager isBackupEnabled];
    v3 = _ICQGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      backupManager = self->_backupManager;
      v7 = 136315650;
      v8 = "[ICQBackupController isBackupEnabled]";
      v9 = 1024;
      v10 = v4;
      v11 = 2112;
      v12 = backupManager;
      _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "%s, returning: %d, backup manager: %@", &v7, 0x1Cu);
    }
  }

  return v4;
}

- (id)cachedIsBackupEnabledNumber
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    backupEnabled = self->_backupEnabled;
    v7 = 136315394;
    v8 = "[ICQBackupController cachedIsBackupEnabledNumber]";
    v9 = 1024;
    v10 = backupEnabled;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "%s, enabled: %d", &v7, 0x12u);
  }

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_backupEnabled];

  return v5;
}

- (void)_setBackupEnabled:(BOOL)a3 passcode:(id)a4
{
  v4 = a3;
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "[ICQBackupController _setBackupEnabled:passcode:]";
    v27 = 1024;
    v28 = v4;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "%s, enabled: %d", buf, 0x12u);
  }

  if (v4)
  {
    [(ICQBackupController *)self _persistBackupEnablementState:1 passcode:v6];
  }

  else
  {
    v8 = MEMORY[0x277D75110];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"DISABLE_WARNING_MESSAGE"];
    v11 = [v9 localizedStringForKey:v10 value:&stru_28844FC60 table:@"Backup"];
    v12 = [v8 alertControllerWithTitle:0 message:v11 preferredStyle:0];

    v13 = MEMORY[0x277D750F8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"DISABLE_CONFIRM" value:&stru_28844FC60 table:@"Backup"];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __50__ICQBackupController__setBackupEnabled_passcode___block_invoke;
    v22[3] = &unk_27A65B8D8;
    v22[4] = self;
    v24 = 0;
    v23 = v6;
    v16 = [v13 actionWithTitle:v15 style:2 handler:v22];
    [v12 addAction:v16];

    v17 = MEMORY[0x277D750F8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"DISABLE_CANCEL" value:&stru_28844FC60 table:@"Backup"];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __50__ICQBackupController__setBackupEnabled_passcode___block_invoke_579;
    v21[3] = &unk_27A65B1A0;
    v21[4] = self;
    v20 = [v17 actionWithTitle:v19 style:1 handler:v21];
    [v12 addAction:v20];

    [(ICQBackupController *)self presentViewController:v12 animated:1 completion:&__block_literal_global_14];
  }
}

uint64_t __50__ICQBackupController__setBackupEnabled_passcode___block_invoke(uint64_t a1)
{
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "Confirmed disable backup", v4, 2u);
  }

  return [*(a1 + 32) _persistBackupEnablementState:*(a1 + 48) passcode:*(a1 + 40)];
}

uint64_t __50__ICQBackupController__setBackupEnabled_passcode___block_invoke_579(uint64_t a1)
{
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "User cancelled disable backup", v4, 2u);
  }

  return [*(a1 + 32) reloadSpecifiers];
}

void __50__ICQBackupController__setBackupEnabled_passcode___block_invoke_580()
{
  v0 = _ICQGetLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_275623000, v0, OS_LOG_TYPE_DEFAULT, "Presenting confirmation alert for Turn off iCloud Backup", v1, 2u);
  }
}

- (void)_persistBackupEnablementState:(BOOL)a3 passcode:(id)a4
{
  v4 = a3;
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ICQBackupController _persistBackupEnablementState:passcode:]";
    *&buf[12] = 1024;
    *&buf[14] = v4;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "%s, enabled: %d", buf, 0x12u);
  }

  [(ICQBackupStatusView *)self->_backupStatusView setFooterText:0];
  [(ICQBackupStatusView *)self->_backupStatusView setBackupError:0];
  if (!v4)
  {
    backupNowButton = self->_backupNowButton;
    v9 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v10 = *MEMORY[0x277D3FF38];
    [(PSSpecifier *)backupNowButton setProperty:v9 forKey:*MEMORY[0x277D3FF38]];

    [(ICQBackupController *)self reloadSpecifier:self->_backupNowButton];
    [(PSSpecifier *)self->_backupOverCellularSwitch setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v10];
    [(ICQBackupController *)self reloadSpecifier:self->_backupOverCellularSwitch];
  }

  v11 = [(ICQBackupController *)self view];
  v12 = [v11 window];
  [v12 setUserInteractionEnabled:0];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v27 = objc_alloc_init(MEMORY[0x277D758E8]);
  [*(*&buf[8] + 40) setAutoresizingMask:45];
  [*(*&buf[8] + 40) setFontSize:16];
  v13 = *(*&buf[8] + 40);
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v4)
  {
    [v14 localizedStringForKey:@"TURNING_ON_BACKUP" value:&stru_28844FC60 table:@"Backup"];
  }

  else
  {
    [v14 localizedStringForKey:@"TURNING_OFF_BACKUP" value:&stru_28844FC60 table:@"Backup"];
  }
  v15 = ;
  [v13 setText:v15];

  v16 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ICQBackupController__persistBackupEnablementState_passcode___block_invoke;
  block[3] = &unk_27A65B320;
  block[4] = self;
  block[5] = buf;
  dispatch_after(v16, MEMORY[0x277D85CD0], block);
  backup_state_queue = self->_backup_state_queue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__ICQBackupController__persistBackupEnablementState_passcode___block_invoke_2;
  v19[3] = &unk_27A65B928;
  v22 = v4;
  v19[4] = self;
  v20 = v6;
  v21 = buf;
  v18 = v6;
  dispatch_async(backup_state_queue, v19);

  _Block_object_dispose(buf, 8);
}

void __62__ICQBackupController__persistBackupEnablementState_passcode___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) table];
    v3 = [v2 superview];
    if (v3)
    {
      v4 = v3;
      v6 = v2;
      do
      {
        v5 = v6;

        v6 = v4;
        v4 = [v6 superview];

        v2 = v5;
      }

      while (v4);
    }

    else
    {
      v6 = v2;
      v5 = v2;
    }

    [*(*(*(a1 + 40) + 8) + 40) showInView:v5];
  }
}

void __62__ICQBackupController__persistBackupEnablementState_passcode___block_invoke_2(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  [*(*(a1 + 32) + 1456) setBackupEnabled:*(a1 + 56)];
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 1456);
    v19 = 0;
    v4 = [v3 setupBackupWithPasscode:v2 error:&v19];
    v5 = v19;
    *(v21 + 24) = v4;
    if (v5)
    {
      v6 = _ICQGetLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __62__ICQBackupController__persistBackupEnablementState_passcode___block_invoke_2_cold_1();
      }
    }
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4;
  v17 = __Block_byref_object_dispose__4;
  v18 = 0;
  if (*(v21 + 24) == 1)
  {
    v7 = [MEMORY[0x277CB8F48] defaultStore];
    [*(*(a1 + 32) + 1472) setEnabled:*(a1 + 56) forDataclass:*MEMORY[0x277CB90C8]];
    v8 = *(*(a1 + 32) + 1472);
    v9 = (v14 + 5);
    obj = v14[5];
    [v7 saveVerifiedAccount:v8 error:&obj];
    objc_storeStrong(v9, obj);
    *(v21 + 24) = v14[5] == 0;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__ICQBackupController__persistBackupEnablementState_passcode___block_invoke_588;
  v11[3] = &unk_27A65B900;
  v10 = *(a1 + 48);
  v11[4] = *(a1 + 32);
  v11[5] = v10;
  v11[6] = &v20;
  v11[7] = &v13;
  dispatch_async(MEMORY[0x277D85CD0], v11);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v20, 8);
}

void __62__ICQBackupController__persistBackupEnablementState_passcode___block_invoke_588(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) hide];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = [*(a1 + 32) view];
  v5 = [v4 window];
  [v5 setUserInteractionEnabled:1];

  if (*(*(*(a1 + 48) + 8) + 24) != 1)
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __62__ICQBackupController__persistBackupEnablementState_passcode___block_invoke_588_cold_1(a1, v8, v9, v10, v11, v12, v13, v14);
    }

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"CANCEL" value:&stru_28844FC60 table:@"Backup"];

    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"TRY_AGAIN" value:&stru_28844FC60 table:@"Backup"];

    v19 = [*(*(*(a1 + 56) + 8) + 40) domain];
    if ([v19 isEqualToString:@"MBErrorDomain"])
    {
      if ([*(*(*(a1 + 56) + 8) + 40) code] == 300)
      {
      }

      else
      {
        v22 = [*(*(*(a1 + 56) + 8) + 40) code];

        if (v22 != 308)
        {
          v35 = v18;
          v20 = v16;
          v21 = @"ERROR_ENABLING_BACKUP_DETAILS";
          goto LABEL_17;
        }
      }

      v23 = objc_alloc_init(MEMORY[0x277CEC5D0]);
      v24 = [v23 airplaneMode];

      if (v24)
      {
        v21 = SFLocalizableWAPIStringKeyForKey();
      }

      else
      {
        v21 = @"ERROR_ENABLING_BACKUP_NETWORK";
      }

      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"OK" value:&stru_28844FC60 table:@"Backup"];

      v19 = v18;
      v20 = v26;
      v35 = 0;
    }

    else
    {
      v35 = v18;
      v20 = v16;
      v21 = @"ERROR_ENABLING_BACKUP_DETAILS";
    }

LABEL_17:
    v27 = MEMORY[0x277D75110];
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"ERROR_ENABLING_BACKUP" value:&stru_28844FC60 table:@"Backup"];
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:v21 value:&stru_28844FC60 table:@"Backup"];
    v32 = [v27 alertControllerWithTitle:v29 message:v31 preferredStyle:1];

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __62__ICQBackupController__persistBackupEnablementState_passcode___block_invoke_611;
    v37[3] = &unk_27A65B1A0;
    v37[4] = *(a1 + 32);
    v33 = [MEMORY[0x277D750F8] actionWithTitle:v20 style:1 handler:v37];
    [v32 addAction:v33];

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __62__ICQBackupController__persistBackupEnablementState_passcode___block_invoke_612;
    v36[3] = &unk_27A65B1A0;
    v36[4] = *(a1 + 32);
    v34 = [MEMORY[0x277D750F8] actionWithTitle:v35 style:0 handler:v36];
    [v32 addAction:v34];

    [*(a1 + 32) presentViewController:v32 animated:1 completion:0];
    return;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + *MEMORY[0x277D3FD08]));
  [WeakRetained reloadSpecifiers];

  v7 = *(a1 + 32);

  [v7 checkIfNetworkSupportsBackup];
}

uint64_t __62__ICQBackupController__persistBackupEnablementState_passcode___block_invoke_611(uint64_t a1)
{
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "Reload specifier with specifier ID 'BACKUP_ENABLED_SWITCH'", v4, 2u);
  }

  return [*(a1 + 32) reloadSpecifierID:@"BACKUP_ENABLED_SWITCH" animated:1];
}

void __62__ICQBackupController__persistBackupEnablementState_passcode___block_invoke_612(uint64_t a1)
{
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "Enabling backup with specifier ID 'BACKUP_ENABLED_SWITCH'", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 specifierForID:@"BACKUP_ENABLED_SWITCH"];
  [v3 _enableBackupWithSpecifier:v4];
}

- (id)isBackupOverCellularEnabled
{
  v14 = *MEMORY[0x277D85DE8];
  backupManager = self->_backupManager;
  v9 = 0;
  v3 = [(MBManager *)backupManager isBackupOnCellularEnabledWithError:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Failed to fetch BackupOnCellularEnabled: %@", buf, 0xCu);
    }
  }

  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[ICQBackupController isBackupOverCellularEnabled]";
    v12 = 1024;
    v13 = v3;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "%s, enabled: %d", buf, 0x12u);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:v3];

  return v7;
}

- (void)setBackupOverCellularEnabled:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  backupManager = self->_backupManager;
  v13 = 0;
  v6 = -[MBManager setBackupOnCellularEnabled:error:](backupManager, "setBackupOnCellularEnabled:error:", [v4 BOOLValue], &v13);
  v7 = v13;
  v8 = _ICQGetLogSystem();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      *buf = 138412290;
      v15 = v4;
      v10 = "Successfully set BackupOnCellularEnabled: %@";
      v11 = v8;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }
  }

  else if (v9)
  {
    *buf = 138412546;
    v15 = v4;
    v16 = 2112;
    v17 = v7;
    v10 = "Failed to set BackupOnCellularEnabled: %@: %@";
    v11 = v8;
    v12 = 22;
    goto LABEL_6;
  }

  [(ICQBackupController *)self checkIfNetworkSupportsBackup];
}

- (void)didCancelEnteringPIN
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ICQBackupController didCancelEnteringPIN]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  v4 = [(ICQBackupController *)self specifierForID:@"BACKUP_ENABLED_SWITCH"];
  [(ICQBackupController *)self reloadSpecifier:v4 animated:1];
}

- (void)_backupEnabledSwitchCancelled:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ICQBackupController _backupEnabledSwitchCancelled:]";
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(ICQBackupController *)self reloadSpecifier:v4 animated:1];
}

- (void)setBackupEnabled:(id)a3 specifier:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[ICQBackupController setBackupEnabled:specifier:]";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "%s, enabled: %@", &v9, 0x16u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [ICQBackupController setBackupEnabled:specifier:];
  }

  if ([v6 BOOLValue])
  {
    [(ICQBackupController *)self _enableBackupWithSpecifier:v7];
  }

  else
  {
    [(ICQBackupController *)self _disableBackupWithSpecifier:v7];
  }
}

- (void)openBackupHelpPage:(id)a3
{
  v7 = [MEMORY[0x277D75128] sharedApplication];
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BACKUP_HELP_PAGE_URL" value:&stru_28844FC60 table:@"Backup"];
  v6 = [v3 URLWithString:v5];
  [v7 openURL:v6 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (void)updateiCloudBackupAndSyncProgressWithAllowDecrease:(BOOL)a3
{
  if (self->_icloudBackupProgress >= 0.0199999996)
  {
    icloudBackupProgress = self->_icloudBackupProgress;
  }

  else
  {
    icloudBackupProgress = 0.0199999996;
  }

  if (a3 || ([(ICQBackupStatusView *)self->_backupStatusView progress], icloudBackupProgress >= v5))
  {
    backupStatusView = self->_backupStatusView;
    v7 = (60 * self->_estimateTimeRemaining);

    [(ICQBackupStatusView *)backupStatusView setBackupProgress:icloudBackupProgress timeIntervalRemaining:v7];
  }
}

- (void)setLastBackupDateString:(id)a3
{
  [(ICQBackupStatusView *)self->_backupStatusView setLastBackupText:a3];
  [(ICQBackupController *)self beginUpdates];

  [(ICQBackupController *)self endUpdates];
}

- (id)dateStringOfLatestBackup
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = SFLocalizableWAPIStringKeyForKey();
  v5 = [v3 localizedStringForKey:v4 value:&stru_28844FC60 table:@"Backup"];

  v6 = MEMORY[0x277CCA968];
  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [v6 dateFormatFromTemplate:@"j" options:0 locale:v7];

  v9 = [v8 rangeOfString:@"H"];
  v10 = [(MBManager *)self->_backupManager dateOfLastBackup];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CCA968]);
    v12 = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = [v10 isTodayWithCalendar:v12];

    if (v13 && v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v11 setTimeStyle:1];
      [v11 setDateStyle:0];
    }

    else
    {
      v14 = [MEMORY[0x277CBEAF8] currentLocale];
      v15 = [v14 localeIdentifier];
      v16 = [v15 isEqualToString:@"en_US"];

      [v11 setDoesRelativeDateFormatting:1];
      if (v16)
      {
        [v11 setDateStyle:1];
        v17 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v17 setTimeStyle:1];
        v18 = MEMORY[0x277CCACA8];
        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = [v19 localizedStringForKey:@"LAST_BACKUP_DATE_AT_TIME" value:&stru_28844FC60 table:@"Backup"];
        v21 = [v11 stringFromDate:v10];
        v22 = [v17 stringFromDate:v10];
        v23 = [v18 localizedStringWithFormat:v20, v21, v22];

        v5 = v21;
LABEL_9:

        v5 = v23;
        goto LABEL_10;
      }

      [v11 setDateStyle:3];
      [v11 setTimeStyle:1];
      [v11 setFormattingContext:1];
    }

    v24 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v17 localizedStringForKey:@"LAST_BACKUP_DATE_OR_TIME" value:&stru_28844FC60 table:@"Backup"];
    v20 = [v11 stringFromDate:v10];
    v23 = [v24 localizedStringWithFormat:v19, v20];
    goto LABEL_9;
  }

LABEL_10:

  return v5;
}

- (void)updateLastBackupDateInvalidatePrevious:(BOOL)a3
{
  if (a3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__ICQBackupController_updateLastBackupDateInvalidatePrevious___block_invoke;
    block[3] = &unk_27A65A820;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  backup_state_queue = self->_backup_state_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__ICQBackupController_updateLastBackupDateInvalidatePrevious___block_invoke_2;
  v5[3] = &unk_27A65A820;
  v5[4] = self;
  dispatch_async(backup_state_queue, v5);
}

void __62__ICQBackupController_updateLastBackupDateInvalidatePrevious___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [v3 localizedStringForKey:@"DETERMINING_LAST_BACKUP" value:&stru_28844FC60 table:@"Backup"];
  [v1 setLastBackupDateString:v2];
}

void __62__ICQBackupController_updateLastBackupDateInvalidatePrevious___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dateStringOfLatestBackup];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__ICQBackupController_updateLastBackupDateInvalidatePrevious___block_invoke_3;
  v4[3] = &unk_27A65A708;
  v4[4] = *(a1 + 32);
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

- (id)_backgroundRestoreInfoText:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v19 = 0;
    goto LABEL_41;
  }

  v5 = [MEMORY[0x277CCA8E8] stringFromByteCount:objc_msgSend(v3 countStyle:{"bytesRemaining"), 1}];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [v4 dataClassesRemaining];
  v8 = (v7 >> 5) & 1;
  if ((v7 & 0x20) != 0)
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
    v9 = [@"RESTORING" mutableCopy];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v9 appendFormat:@"_%@", *(*(&v29 + 1) + 8 * i)];
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v12);
    }

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:v9 value:&stru_28844FC60 table:@"Backup"];

    if (v8)
    {
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
          v19 = &stru_28844FC60;
          if (!v18)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }

        v25 = objc_alloc(MEMORY[0x277CCACA8]);
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v26 = [v17 localizedStringForKey:@"BYTES_REMAINING" value:&stru_28844FC60 table:@"Backup"];
        v18 = [v25 initWithFormat:v26, v5];
      }

      else
      {
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"LESS_THAN_1MB_REMAINING" value:&stru_28844FC60 table:@"Backup"];
      }
    }

    else
    {
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [v17 localizedStringForKey:@"RESTORING_PERIOD" value:&stru_28844FC60 table:@"Backup"];
      v24 = [v16 stringByAppendingString:v23];

      v18 = 0;
      v16 = v24;
    }

    goto LABEL_36;
  }

  if (![v4 bytesRemaining])
  {
    v16 = 0;
    v19 = &stru_28844FC60;
    goto LABEL_40;
  }

  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"RESTORE_IN_PROGRESS" value:&stru_28844FC60 table:@"Backup"];
  v16 = [v20 initWithFormat:v22, v5];

  v18 = 0;
  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_37:
  v19 = [&stru_28844FC60 stringByAppendingString:v16];
  if (v18)
  {
LABEL_38:
    v27 = [(__CFString *)v19 stringByAppendingString:@" "];

    v19 = [v27 stringByAppendingString:v18];
  }

LABEL_40:

LABEL_41:

  return v19;
}

- (void)_updateToBackupState:(int)a3 backupError:(id)a4 progress:(float)a5 timeRemaining:(unint64_t)a6 restoreStateInfo:(id)a7 backgroundRestoreInfo:(id)a8 backupEnabled:(BOOL)a9
{
  v9 = a9;
  v86 = *MEMORY[0x277D85DE8];
  v16 = a4;
  v83 = a7;
  v82 = a8;
  v17 = [(ICQBackupStatusView *)self->_backupStatusView backupError];
  if (!v16 || v17)
  {
  }

  else if ([v16 code] != 202)
  {
    v18 = _ICQGetLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v85 = v16;
      _os_log_impl(&dword_275623000, v18, OS_LOG_TYPE_DEFAULT, "Setting error from backup state: %@", buf, 0xCu);
    }

    [(ICQBackupStatusView *)self->_backupStatusView setBackupError:v16];
  }

  self->_backupState = a3;
  self->_backupEnabled = v9;
  v19 = [(ICQBackupController *)self specifierForID:@"BACKUP_ENABLED_SWITCH"];
  v20 = MEMORY[0x277D3FF38];
  v79 = v16;
  v80 = v19;
  v78 = v9;
  if (a3 > 6)
  {
    v32 = _ICQGetLogSystem();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v85) = a3;
      _os_log_impl(&dword_275623000, v32, OS_LOG_TYPE_DEFAULT, "Got an unknown state from backup manager: %i", buf, 8u);
    }

    v33 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v85) = a3;
      _os_log_impl(&dword_275623000, v33, OS_LOG_TYPE_DEFAULT, "Got an unknown state from backup manager: %i", buf, 8u);
    }

    v77 = a3;

    v34 = *v20;
    v35 = [(PSSpecifier *)self->_backupNowButton propertyForKey:*v20];
    v26 = [v35 BOOLValue];

    v36 = [v80 propertyForKey:v34];
    v25 = [v36 BOOLValue];
  }

  else
  {
    if (((1 << a3) & 0x39) != 0)
    {
      v77 = a3;
LABEL_11:
      if (self->_backupNowButton)
      {
        v21 = _ICQGetLogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275623000, v21, OS_LOG_TYPE_DEFAULT, "Setting backup now button as backup now button", buf, 2u);
        }

        backupNowButton = self->_backupNowButton;
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v24 = [v23 localizedStringForKey:@"BACKUP_NOW" value:&stru_28844FC60 table:@"Backup"];
        [(PSSpecifier *)backupNowButton setName:v24];

        [(PSSpecifier *)self->_backupNowButton setButtonAction:sel_beginBackup_];
      }

      if ([(NSNumber *)self->_networkSupportsBackup BOOLValue])
      {
        v25 = 1;
        v26 = v9;
      }

      else
      {
        v31 = ICQUSLogForCategory(0);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275623000, v31, OS_LOG_TYPE_DEFAULT, "Network does not support backup - backup button disabled", buf, 2u);
        }

        v26 = 0;
        v25 = 1;
      }

      goto LABEL_33;
    }

    if (((1 << a3) & 6) == 0)
    {
      if (self->_backupCancelled)
      {
        [(ICQBackupStatusView *)self->_backupStatusView setBackupError:0];
        v77 = 0;
      }

      else
      {
        v77 = 6;
      }

      goto LABEL_11;
    }

    v77 = a3;
    if (self->_backupNowButton)
    {
      v27 = _ICQGetLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v27, OS_LOG_TYPE_DEFAULT, "Setting backup now button as cancel button", buf, 2u);
      }

      v28 = self->_backupNowButton;
      v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v30 = [v29 localizedStringForKey:@"CANCEL_BACKUP" value:&stru_28844FC60 table:@"Backup"];
      [(PSSpecifier *)v28 setName:v30];

      [(PSSpecifier *)self->_backupNowButton setButtonAction:sel_cancelBackup_];
    }

    self->_estimateTimeRemaining = a6;
    self->_icloudBackupProgress = a5;
    v25 = 1;
    [(ICQBackupController *)self updateiCloudBackupAndSyncProgressWithAllowDecrease:1];
    v26 = 1;
  }

LABEL_33:
  v81 = [v83 state];
  v37 = v81 - 1;
  if (v81 - 1 > 1)
  {
    if ([(NSNumber *)self->_networkSupportsBackup BOOLValue])
    {
      [(ICQBackupStatusView *)self->_backupStatusView setFooterText:0];
    }

    else
    {
      backupStatusView = self->_backupStatusView;
      v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v56 = SFLocalizableWAPIStringKeyForKey();
      v57 = [v55 localizedStringForKey:v56 value:&stru_28844FC60 table:@"Backup"];
      [(ICQBackupStatusView *)backupStatusView setFooterText:v57];
    }
  }

  else
  {
    backupCancelled = self->_backupCancelled;
    if (backupCancelled)
    {
      v39 = ICQUSLogForCategory(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v39, OS_LOG_TYPE_DEFAULT, "Backup cancelled - backup button disabled", buf, 2u);
      }
    }

    v40 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v85) = v81 == 1;
      _os_log_impl(&dword_275623000, v40, OS_LOG_TYPE_DEFAULT, "restoreState starting: %d", buf, 8u);
    }

    v41 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v85) = v81 == 2;
      _os_log_impl(&dword_275623000, v41, OS_LOG_TYPE_DEFAULT, "restoreState running: %d", buf, 8u);
    }

    v42 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v42, OS_LOG_TYPE_DEFAULT, "Disabling Backup Switch", buf, 2u);
    }

    if (self->_backupNowButton)
    {
      v43 = _ICQGetLogSystem();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v43, OS_LOG_TYPE_DEFAULT, "Setting backup now button as stop restoring button", buf, 2u);
      }

      v44 = self->_backupNowButton;
      v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v46 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"STOP_RESTORING"];
      v47 = [v45 localizedStringForKey:v46 value:&stru_28844FC60 table:@"Backup"];
      [(PSSpecifier *)v44 setName:v47];

      [(PSSpecifier *)self->_backupNowButton setButtonAction:sel_cancelRestore_];
    }

    if ([(NSNumber *)self->_networkSupportsBackup BOOLValue])
    {
      if (self->_thermalSupportsBackup)
      {
        v48 = @"DEVICE_IS_BEING_RESTORED";
      }

      else
      {
        v48 = @"DEVICE_RESTORE_PAUSED_THERMAL";
      }
    }

    else
    {
      v48 = SFLocalizableWAPIStringKeyForKey();
    }

    v26 = !backupCancelled;
    v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v50 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:v48];
    v51 = [v49 localizedStringForKey:v50 value:&stru_28844FC60 table:@"Backup"];

    v52 = [(ICQBackupController *)self _backgroundRestoreInfoText:v82];
    if (v52)
    {
      v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", v51, v52];

      v51 = v53;
    }

    [(ICQBackupStatusView *)self->_backupStatusView setFooterText:v51];

    v25 = 0;
  }

  v58 = [MEMORY[0x277D75128] isRunningInStoreDemoMode];
  v59 = [(ICQBackupController *)self policyPreventsBackup];
  v60 = v59;
  if ((v58 & 1) != 0 || v59)
  {
    v61 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v85) = v58;
      _os_log_impl(&dword_275623000, v61, OS_LOG_TYPE_DEFAULT, "Store Demo Mode Enabled: %d", buf, 8u);
    }

    v62 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v85) = v60;
      _os_log_impl(&dword_275623000, v62, OS_LOG_TYPE_DEFAULT, "Policy Prevents Backup: %d", buf, 8u);
    }

    v25 = 0;
    v26 = 0;
  }

  v63 = self->_backupNowButton;
  v64 = [MEMORY[0x277CCABB0] numberWithBool:v26];
  v65 = *MEMORY[0x277D3FF38];
  [(PSSpecifier *)v63 setProperty:v64 forKey:*MEMORY[0x277D3FF38]];

  v66 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v85) = v26;
    _os_log_impl(&dword_275623000, v66, OS_LOG_TYPE_DEFAULT, "Backup Button Enabled: %d", buf, 8u);
  }

  v67 = [MEMORY[0x277CCABB0] numberWithBool:v25];
  [(PSSpecifier *)self->_backupOverCellularSwitch setObject:v67 forKeyedSubscript:v65];

  v68 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v85) = v25;
    _os_log_impl(&dword_275623000, v68, OS_LOG_TYPE_DEFAULT, "BackupOverCellular Switch Enabled: %d", buf, 8u);
  }

  v69 = [MEMORY[0x277CCABB0] numberWithBool:v25];
  [v80 setProperty:v69 forKey:v65];

  v70 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v85) = v25;
    _os_log_impl(&dword_275623000, v70, OS_LOG_TYPE_DEFAULT, "Backup Switch Enabled: %d", buf, 8u);
  }

  [(ICQBackupController *)self beginUpdates];
  v71 = [(ICQBackupController *)self indexOfSpecifier:self->_backupNowButton];
  if (v37 < 2 || v78 || v71 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((v78 || v37 <= 1) && v71 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (self->_isAutoBackupOnCellularAllowed)
      {
        [(ICQBackupController *)self insertContiguousSpecifiers:self->_backupOverCellularSpecifiers afterSpecifier:v80 animated:1];
        backupNowSpecifiers = self->_backupNowSpecifiers;
        backupOverCellularSwitch = self->_backupOverCellularSwitch;
        v76 = self;
      }

      else
      {
        backupNowSpecifiers = self->_backupNowSpecifiers;
        v76 = self;
        backupOverCellularSwitch = v80;
      }

      [(ICQBackupController *)v76 insertContiguousSpecifiers:backupNowSpecifiers afterSpecifier:backupOverCellularSwitch animated:1];
      v72 = v79;
      v73 = v77;
      [(ICQBackupStatusView *)self->_backupStatusView setAlpha:1.0];
    }

    else
    {
      [(ICQBackupController *)self reloadSpecifier:self->_backupOverCellularSwitch animated:1];
      [(ICQBackupController *)self reloadSpecifier:self->_backupNowButton animated:1];
      v72 = v79;
      v73 = v77;
    }
  }

  else
  {
    [(ICQBackupController *)self removeContiguousSpecifiers:self->_backupNowSpecifiers animated:1];
    v72 = v79;
    v73 = v77;
    if (self->_isAutoBackupOnCellularAllowed)
    {
      [(ICQBackupController *)self removeContiguousSpecifiers:self->_backupOverCellularSpecifiers animated:1];
    }
  }

  [(ICQBackupController *)self reloadSpecifier:v80 animated:1];
  [(ICQBackupStatusView *)self->_backupStatusView updateViewsForBackupState:v73 restoreState:v81 enabled:v78];
  [(ICQBackupController *)self endUpdates];
}

- (void)_updateToBackupState:(id)a3 restoreState:(id)a4 backgroundRestoreState:(id)a5 backupEnabled:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v12 state];
  v18 = [v12 error];
  [v12 progress];
  v15 = v14;
  v16 = [v12 estimatedTimeRemaining];

  LODWORD(v17) = v15;
  [(ICQBackupController *)self _updateToBackupState:v13 backupError:v18 progress:v16 timeRemaining:v11 restoreStateInfo:v10 backgroundRestoreInfo:v6 backupEnabled:v17];
}

- (void)updateBusyState
{
  backupState = self->_backupState;
  objc_initWeak(&location, self);
  backup_state_queue = self->_backup_state_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__ICQBackupController_updateBusyState__block_invoke;
  v5[3] = &unk_27A65B978;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v7 = backupState;
  dispatch_async(backup_state_queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __38__ICQBackupController_updateBusyState__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isBackupEnabled];

  v4 = [*(*(a1 + 32) + 1456) backupState];
  v5 = [*(*(a1 + 32) + 1456) restoreState];
  v6 = [*(*(a1 + 32) + 1456) backgroundRestoreInfo];
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    *buf = 136316162;
    v21 = "[ICQBackupController updateBusyState]_block_invoke";
    v22 = 1024;
    v23 = v3;
    v24 = 1024;
    v25 = v8;
    v26 = 1024;
    v27 = [v4 state];
    v28 = 1024;
    v29 = [v5 state];
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "%s, isBackupEnabled: %d, entryState: %d, backupState: %d, restoreState: %d", buf, 0x24u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__ICQBackupController_updateBusyState__block_invoke_711;
  v13[3] = &unk_27A65B950;
  objc_copyWeak(&v17, (a1 + 40));
  v9 = *(a1 + 32);
  v18 = *(a1 + 48);
  v13[4] = v9;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v19 = v3;
  v10 = v6;
  v11 = v5;
  v12 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v13);

  objc_destroyWeak(&v17);
}

void __38__ICQBackupController_updateBusyState__block_invoke_711(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(*(a1 + 32) + 1464) == *(a1 + 72))
    {
      [WeakRetained _updateToBackupState:*(a1 + 40) restoreState:*(a1 + 48) backgroundRestoreState:*(a1 + 56) backupEnabled:*(a1 + 76)];
    }

    else
    {
      v4 = _ICQGetLogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(a1 + 32) + 1464);
        v6[0] = 67109120;
        v6[1] = v5;
        _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Skipping update, current backup state: %d", v6, 8u);
      }
    }
  }
}

- (void)cancelRestore:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[ICQBackupController cancelRestore:]";
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "%s, presenting confirmation alert", buf, 0xCu);
  }

  self->_backupCancelled = 1;
  [(ICQBackupController *)self updateBusyState];
  v5 = MEMORY[0x277D75110];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"STOP_RESTORING_QUESTION"];
  v8 = [v6 localizedStringForKey:v7 value:&stru_28844FC60 table:@"Backup"];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CANCEL_RESTORE_WARNING" value:&stru_28844FC60 table:@"Backup"];
  v11 = [v5 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"DONT_STOP" value:&stru_28844FC60 table:@"Backup"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __37__ICQBackupController_cancelRestore___block_invoke;
  v21[3] = &unk_27A65B1A0;
  v21[4] = self;
  v15 = [v12 actionWithTitle:v14 style:1 handler:v21];
  [v11 addAction:v15];

  v16 = MEMORY[0x277D750F8];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"STOP" value:&stru_28844FC60 table:@"Backup"];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __37__ICQBackupController_cancelRestore___block_invoke_2;
  v20[3] = &unk_27A65B1A0;
  v20[4] = self;
  v19 = [v16 actionWithTitle:v18 style:0 handler:v20];
  [v11 addAction:v19];

  [(ICQBackupController *)self presentViewController:v11 animated:1 completion:0];
}

void __37__ICQBackupController_cancelRestore___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ICQBackupController_cancelRestore___block_invoke_3;
  block[3] = &unk_27A65A820;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void __37__ICQBackupController_cancelRestore___block_invoke_3(uint64_t a1)
{
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "Cancel restore confirmed", buf, 2u);
  }

  [*(*(a1 + 32) + 1456) cancelRestore];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ICQBackupController_cancelRestore___block_invoke_724;
  block[3] = &unk_27A65A820;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)cancelBackup:(id)a3
{
  v4 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Cancel backup", buf, 2u);
  }

  self->_backupCancelled = 1;
  self->_currentSyncState = 0;
  self->_finishBackupExecuted = 1;
  self->_updateBackupState = 0;
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__ICQBackupController_cancelBackup___block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(v5, block);

  [(ICQBackupController *)self updateBusyState];
}

uint64_t __36__ICQBackupController_cancelBackup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncClient];
  [v2 cancelSync];

  v3 = *(*(a1 + 32) + 1456);

  return [v3 cancel];
}

- (void)startBackup
{
  self->_backupCancelled = 0;
  [(ICQBackupStatusView *)self->_backupStatusView setBackupError:0];
  self->_estimateTimeRemaining = -1;
  self->_icloudBackupProgress = 0.0;
  [(ICQBackupController *)self updateiCloudBackupAndSyncProgressWithAllowDecrease:1];
  self->_finishBackupExecuted = 0;
  self->_icloudSyncProgress = 0.0;
  [(ICQBackupStatusView *)self->_backupStatusView setSyncErrors:0];
  self->_currentSyncState = 1;
  [(ICQBackupController *)self _updateToBackupState:1 backupError:0 progress:-1 timeRemaining:0 restoreStateInfo:0 backgroundRestoreInfo:1 backupEnabled:0.0];
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ICQBackupController_startBackup__block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(v3, block);

  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Starting iMessage periodic sync", buf, 2u);
  }

  v5 = [MEMORY[0x277D18D50] sharedInstance];
  [v5 startPeriodicSync];

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
    v13 = &unk_27A65A9F8;
    v14 = &v15;
    __getHKHealthStoreClass_block_invoke(buf);
    v6 = v16[3];
  }

  v7 = v6;
  _Block_object_dispose(&v15, 8);
  v8 = objc_alloc_init(v6);
  [v8 forceCloudSyncWithOptions:0 completion:&__block_literal_global_732];
}

void __34__ICQBackupController_startBackup__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "Start icloud sync", buf, 2u);
  }

  v3 = [*(a1 + 32) cloudSyncClient];
  [v3 startSync];

  v4 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Begin backup", buf, 2u);
  }

  v5 = objc_opt_new();
  if (*(*(a1 + 32) + 1544))
  {
    [MEMORY[0x277D28A38] expensiveCellularAccess];
  }

  else
  {
    [MEMORY[0x277D28A38] inexpensiveCellularAccess];
  }
  v6 = ;
  [v5 setCellularAccess:v6];

  v7 = *(*(a1 + 32) + 1456);
  v15 = 0;
  v8 = [v7 startBackupWithOptions:v5 error:&v15];
  v9 = v15;
  if (v8)
  {
    v10 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Backup begin succeed", buf, 2u);
    }
  }

  else
  {
    v11 = [*(a1 + 32) cloudSyncClient];
    [v11 cancelSync];

    v12 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "Error starting backup: %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__ICQBackupController_startBackup__block_invoke_727;
    block[3] = &unk_27A65A708;
    block[4] = *(a1 + 32);
    v14 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __34__ICQBackupController_startBackup__block_invoke_727(uint64_t a1)
{
  [*(*(a1 + 32) + 1488) setBackupError:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 updateBusyState];
}

- (void)_showAlertForExpensiveCellular
{
  v3 = objc_opt_new();
  v27 = 0;
  v4 = [v3 getCurrentDataSubscriptionContextSync:&v27];
  v5 = v27;
  if (!v4)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICQBackupController _showAlertForExpensiveCellular];
    }

    v8 = v5;
    goto LABEL_9;
  }

  v6 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v4];
  v26 = v5;
  v7 = [v3 interfaceCostExpensive:v6 error:&v26];
  v8 = v26;

  if (v8)
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICQBackupController _showAlertForExpensiveCellular];
    }

LABEL_9:
    goto LABEL_10;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (![(NSNumber *)self->_isExpensiveCellular BOOLValue])
  {
LABEL_13:
    [(ICQBackupController *)self proceedWithBackup];
    goto LABEL_14;
  }

  v10 = MEMORY[0x277D75110];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"EXPENSIVE_CELLULAR_TILE" value:&stru_28844FC60 table:?];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"EXPENSIVE_CELLULAR_BODY" value:&stru_28844FC60 table:@"Backup"];
  v15 = [v10 alertControllerWithTitle:v12 message:v14 preferredStyle:1];

  v16 = MEMORY[0x277D750F8];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"CANCEL" value:&stru_28844FC60 table:@"Backup"];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __53__ICQBackupController__showAlertForExpensiveCellular__block_invoke;
  v25[3] = &unk_27A65B1A0;
  v25[4] = self;
  v19 = [v16 actionWithTitle:v18 style:1 handler:v25];
  [v15 addAction:v19];

  v20 = MEMORY[0x277D750F8];
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"USE_CELLULAR_DATA" value:&stru_28844FC60 table:@"Backup"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __53__ICQBackupController__showAlertForExpensiveCellular__block_invoke_2;
  v24[3] = &unk_27A65B1A0;
  v24[4] = self;
  v23 = [v20 actionWithTitle:v22 style:0 handler:v24];
  [v15 addAction:v23];

  [(ICQBackupController *)self presentViewController:v15 animated:1 completion:0];
LABEL_14:
}

- (void)beginBackup:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ICQBackupController beginBackup:]";
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v6 = [v4 propertyForKey:*MEMORY[0x277D40148]];

  [v6 setCellEnabled:0];
  [(ICQBackupController *)self prepareAlertForBackupDisabledDomainAndShow:1];
}

- (void)updateBackupFinishState
{
  if (!self->_finishBackupExecuted)
  {
    self->_finishBackupExecuted = 1;
    [(ICQBackupController *)self updateBusyState];
    if (self->_updateBackupState == 1)
    {
      [(ICQBackupController *)self updateLastBackupDateInvalidatePrevious:1];
    }

    else
    {
      [(ICQBackupController *)self updateLastBackupDate];
    }

    self->_updateBackupState = 0;
  }
}

- (void)syncCompletedWithErrors:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__ICQBackupController_syncCompletedWithErrors___block_invoke;
  v6[3] = &unk_27A65A708;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __47__ICQBackupController_syncCompletedWithErrors___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "iCloud sync complete get called", &v9, 2u);
  }

  if (*(*(a1 + 32) + 1580) == 1)
  {
    v3 = *(a1 + 40);
    if (v3 && [v3 count])
    {
      v4 = ICQUSLogForCategory(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Got some icloud sync errors: %@", &v9, 0xCu);
      }

      *(*(a1 + 32) + 1580) = 3;
      v6 = *(a1 + 40);
    }

    else
    {
      v7 = ICQUSLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "iCloud sync complete with no error", &v9, 2u);
      }

      v6 = 0;
      *(*(a1 + 32) + 1580) = 2;
    }

    [*(*(a1 + 32) + 1488) setSyncErrors:v6];
    if (*(*(a1 + 32) + 1584))
    {
      v8 = ICQUSLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "We have already completed backup", &v9, 2u);
      }
    }
  }
}

- (void)syncProgress:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__ICQBackupController_syncProgress___block_invoke;
  v3[3] = &unk_27A65B1C8;
  v3[4] = self;
  *&v3[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

double __36__ICQBackupController_syncProgress___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 1580) == 1)
  {
    v2 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v5 = 134217984;
      v6 = v3;
      _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "iCloud sync reported progress: %f", &v5, 0xCu);
    }

    result = *(a1 + 40);
    *(*(a1 + 32) + 1600) = result;
  }

  return result;
}

- (void)showPopUpAlertForBackupDisabledApps
{
  PSGBackupUtilsClass_0 = getPSGBackupUtilsClass_0();
  backupDisabledAppsInfo = self->_backupDisabledAppsInfo;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__ICQBackupController_showPopUpAlertForBackupDisabledApps__block_invoke;
  v5[3] = &unk_27A65B9A0;
  v5[4] = self;
  [PSGBackupUtilsClass_0 configureAlertMessageOfType:0 AndTitleForBackUpDisabledApps:backupDisabledAppsInfo completion:v5];
}

uint64_t __58__ICQBackupController_showPopUpAlertForBackupDisabledApps__block_invoke(uint64_t a1, int a2)
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

- (void)showAlertForBackupDisabledItemsWithTitle:(id)a3 andMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICQBackupController *)self view];
  v9 = [v8 window];

  if (v9)
  {
    v10 = [(PSSpecifier *)self->_backupNowButton propertyForKey:*MEMORY[0x277D40148]];
    [v10 setCellEnabled:1];

    v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v7 preferredStyle:1];
    v12 = [(ICQBackupController *)self manageStorageAction];
    [v11 addAction:v12];

    v13 = MEMORY[0x277D750F8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"CONTINUE" value:&stru_28844FC60 table:@"Backup"];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __75__ICQBackupController_showAlertForBackupDisabledItemsWithTitle_andMessage___block_invoke;
    v17[3] = &unk_27A65B1A0;
    v17[4] = self;
    v16 = [v13 actionWithTitle:v15 style:1 handler:v17];
    [v11 addAction:v16];

    [(ICQBackupController *)self presentViewController:v11 animated:1 completion:0];
  }
}

- (void)proceedWithBackup
{
  v3 = [(PSSpecifier *)self->_backupNowButton propertyForKey:*MEMORY[0x277D40148]];
  [v3 setCellEnabled:1];

  [(ICQBackupController *)self startBackup];
}

- (id)manageStorageAction
{
  v3 = MEMORY[0x277D750F8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ICLOUD_SETTINGS" value:&stru_28844FC60 table:@"Backup"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__ICQBackupController_manageStorageAction__block_invoke;
  v8[3] = &unk_27A65B1A0;
  v8[4] = self;
  v6 = [v3 actionWithTitle:v5 style:0 handler:v8];

  return v6;
}

void __42__ICQBackupController_manageStorageAction__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1504) propertyForKey:*MEMORY[0x277D40148]];
  [v1 setCellEnabled:1];

  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/STORAGE_AND_BACKUP/CURRENT_DEVICE_BACKUP"];
  [v3 openSensitiveURL:v2 withOptions:0];
}

- (void)managerDidFinishBackup:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  [(ICQBackupStatusView *)self->_backupStatusView setBackupError:0];
  self->_finishBackupExecuted = 1;
  self->_updateBackupState = 0;
  [(ICQBackupController *)self updateBusyState];
  [(ICQBackupController *)self updateLastBackupDateInvalidatePrevious:1];
  currentSyncState = self->_currentSyncState;
  v7 = ICQUSLogForCategory(0);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (currentSyncState == 1)
  {
    if (v8)
    {
      LOWORD(v11) = 0;
      v9 = "Backup finished but iCloud sync not finished";
LABEL_8:
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, v9, &v11, 2u);
    }
  }

  else if (v8)
  {
    LOWORD(v11) = 0;
    v9 = "Backup and iCloud sync both finished";
    goto LABEL_8;
  }

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 postNotificationName:@"BackupInfoDidChange" object:0];
}

- (void)manager:(id)a3 didFailRestoreWithError:(id)a4
{
  v5 = a4;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ICQBackupController manager:didFailRestoreWithError:];
  }

  [(ICQBackupController *)self updateBusyState];
  [(ICQBackupController *)self updateLastBackupDate];
}

- (void)managerDidFinishRestore:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Restore finished", v5, 2u);
  }

  [(ICQBackupController *)self updateBusyState];
  [(ICQBackupController *)self updateLastBackupDate];
}

- (void)managerDidCancelRestore:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Restore canceled", v5, 2u);
  }

  [(ICQBackupController *)self updateBusyState];
  [(ICQBackupController *)self updateLastBackupDate];
}

- (void)manager:(id)a3 didFailBackupWithError:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Failed backup: %@", &v7, 0xCu);
  }

  self->_currentSyncState = 3;
  self->_finishBackupExecuted = 1;
  self->_updateBackupState = 0;
  [(ICQBackupStatusView *)self->_backupStatusView setBackupError:v5];
  [(ICQBackupController *)self updateBusyState];
}

- (void)manager:(id)a3 didUpdateProgress:(float)a4 estimatedTimeRemaining:(unint64_t)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = ICQUSLogForCategory(0);
  v9 = a4;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v9;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Backup progress: %f", &v10, 0xCu);
  }

  self->_icloudBackupProgress = v9;
  self->_estimateTimeRemaining = a5;
  [(ICQBackupController *)self updateiCloudBackupAndSyncProgressWithAllowDecrease:0];
  if ((self->_backupState - 1) >= 2)
  {
    [(ICQBackupController *)self updateBusyState];
  }
}

- (void)managerDidUpdateBackgroundRestoreProgress:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ICQBackupController managerDidUpdateBackgroundRestoreProgress:]";
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(ICQBackupController *)self updateBusyState];
}

- (void)manager:(id)a3 didSetBackupEnabled:(BOOL)a4
{
  v4 = a4;
  v11 = *MEMORY[0x277D85DE8];
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[ICQBackupController manager:didSetBackupEnabled:]";
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "%s, enabled: %d", &v7, 0x12u);
  }

  [(ICQBackupController *)self updateBusyState];
  [(ICQBackupController *)self updateLastBackupDate];
}

- (void)managerDidLoseConnectionToService:(id)a3
{
  if ((self->_backupState - 1) <= 1)
  {
    v15 = v3;
    v16 = v4;
    v6 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Lost connection to backup service", buf, 2u);
    }

    currentSyncState = self->_currentSyncState;
    v8 = ICQUSLogForCategory(0);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (currentSyncState == 1)
    {
      if (v9)
      {
        *v13 = 0;
        _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "We are still syncing with iCloud", v13, 2u);
      }

      if (!self->_updateBackupState)
      {
        v10 = ICQUSLogForCategory(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Backup not finished before losing connection", v12, 2u);
        }

        self->_updateBackupState = 2;
      }
    }

    else
    {
      if (v9)
      {
        *v11 = 0;
        _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "We have finished icloud sync", v11, 2u);
      }

      self->_updateBackupState = 0;
      self->_finishBackupExecuted = 1;
    }

    [(ICQBackupController *)self updateBusyState];
    [(ICQBackupController *)self updateLastBackupDate];
  }
}

- (void)reloadSpecifiersForProvider:(id)a3 oldSpecifiers:(id)a4 animated:(BOOL)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v7;
    _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "Reloading specifiers for provider %@", &v14, 0xCu);
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v10 = [v8 count];
  v11 = [v7 specifiers];
  v12 = v11;
  if (v10)
  {
    v13 = [v11 count];

    if (!v13)
    {
      [(ICQBackupController *)self removeContiguousSpecifiers:v8 animated:1];
      goto LABEL_9;
    }

    v12 = [v7 specifiers];
    [(ICQBackupController *)self replaceContiguousSpecifiers:v8 withSpecifiers:v12 animated:1];
  }

  else
  {
    [(ICQBackupController *)self addSpecifiersFromArray:v11];
  }

LABEL_9:
}

@end