@interface ICQRemoteBackupController
+ (id)specifier;
+ (id)specifierForAccount:(id)a3;
- (id)specifiers;
- (void)_backupDeletionFailedWithCode:(int64_t)a3;
- (void)_backupDeletionSuccess;
- (void)dealloc;
- (void)deleteBackupConfirmed;
- (void)endDeletionBezel;
- (void)firstDeleteConfirmation:(id)a3;
- (void)loadFailed:(id)a3 withError:(id)a4;
- (void)loadFinished:(id)a3;
- (void)loadPropertyValuesFromDictionary:(id)a3;
- (void)loadStarted:(id)a3;
- (void)loadView;
- (void)secondDeleteConfirmationWithSender:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)startDeletionBezel;
@end

@implementation ICQRemoteBackupController

+ (id)specifier
{
  v2 = MEMORY[0x277D3FAD8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BACKUPS_TITLE" value:&stru_28844FC60 table:@"BackupInfo"];
  v5 = [v2 preferenceSpecifierNamed:v4 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  return v5;
}

+ (id)specifierForAccount:(id)a3
{
  v4 = a3;
  v5 = [a1 specifier];
  [v5 setObject:v4 forKeyedSubscript:@"ICQUISpecifierKeyAccount"];

  return v5;
}

- (void)setSpecifier:(id)a3
{
  v5 = a3;
  objc_storeStrong((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]), a3);
  v6 = [(ICQRemoteBackupController *)self specifier];
  v7 = [v6 objectForKeyedSubscript:@"ICQUISpecifierKeyAccount"];
  account = self->_account;
  self->_account = v7;

  if (!self->_account)
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICQRemoteBackupController setSpecifier:v9];
    }
  }
}

- (void)dealloc
{
  v3 = [(ICQPreferencesRemoteUIDelegate *)self->_remoteDelegate delegate];

  if (v3 == self)
  {
    [(ICQPreferencesRemoteUIDelegate *)self->_remoteDelegate setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = ICQRemoteBackupController;
  [(ICQRemoteBackupController *)&v4 dealloc];
}

- (void)loadPropertyValuesFromDictionary:(id)a3
{
  v25 = a3;
  v4 = [v25 objectForKey:@"label"];
  [(ICQRemoteBackupController *)self setDeviceName:v4];

  v5 = [v25 objectForKey:@"deviceUdid"];
  [(ICQRemoteBackupController *)self setDeviceIdentifier:v5];

  v6 = [v25 objectForKey:@"backupTimestamp"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
    if (v8)
    {
      if (v8 != -1)
      {
        v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v8];
        v12 = [ICQLocalBackupController cellValueStyleDateStringForDate:v10];
        goto LABEL_8;
      }

      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = v9;
      v11 = @"NEVER";
    }

    else
    {
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = v9;
      v11 = @"INCOMPLETE";
    }

    v12 = [v9 localizedStringForKey:v11 value:&stru_28844FC60 table:@"BackupInfo"];
LABEL_8:
    v13 = v12;
    [(ICQRemoteBackupController *)self setLastBackupDateString:v12];
  }

  v14 = [ICQLocalBackupController deviceImageURLFromAttributes:v25];
  [(ICQRemoteBackupController *)self setDeviceImageURL:v14];

  v15 = [v25 objectForKey:@"backupSize"];
  [v15 longLongValue];
  v16 = CPFSSizeStrings();
  [(ICQRemoteBackupController *)self setBackupSizeString:v16];

  v17 = [v25 objectForKey:@"deleteURL"];
  if (v17)
  {
    v18 = [MEMORY[0x277CBEBC0] URLWithString:v17];
    [(ICQRemoteBackupController *)self setDeletionURL:v18];
  }

  v19 = [v25 objectForKey:@"isActive"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v19 BOOLValue];
  }

  else
  {
    v20 = 0;
  }

  [(ICQRemoteBackupController *)self setIsBackupEnabled:v20];
  v21 = [(ICQRemoteBackupController *)self deviceName];
  if (!v21)
  {
    [ICQRemoteBackupController loadPropertyValuesFromDictionary:];
  }

  v22 = [(ICQRemoteBackupController *)self backupSizeString];
  if (!v22)
  {
    [ICQRemoteBackupController loadPropertyValuesFromDictionary:];
  }

  v23 = [(ICQRemoteBackupController *)self deletionURL];
  if (!v23)
  {
    [ICQRemoteBackupController loadPropertyValuesFromDictionary:];
  }

  v24 = [(ICQRemoteBackupController *)self lastBackupDateString];
  if (!v24)
  {
    [ICQRemoteBackupController loadPropertyValuesFromDictionary:];
  }
}

- (void)loadView
{
  v13.receiver = self;
  v13.super_class = ICQRemoteBackupController;
  [(ICQRemoteBackupController *)&v13 loadView];
  v3 = [(ICQRemoteBackupController *)self specifier];
  v4 = [v3 propertyForKey:@"attributes"];
  [(ICQRemoteBackupController *)self loadPropertyValuesFromDictionary:v4];

  v5 = [(ICQRemoteBackupController *)self specifier];
  v6 = [v5 propertyForKey:@"remoteDelegate"];
  [(ICQRemoteBackupController *)self setRemoteDelegate:v6];

  v7 = [ICQDeviceIdentificationView alloc];
  v8 = [(ICQRemoteBackupController *)self deviceName];
  v9 = [(ICQRemoteBackupController *)self deviceIdentifier];
  v10 = [(ICQRemoteBackupController *)self deviceImageURL];
  v11 = [(ICQDeviceIdentificationView *)v7 initWithFrame:v8 deviceName:v9 deviceIdentifier:v10 imageURL:0 isCurrentDevice:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  deviceIdentificationView = self->_deviceIdentificationView;
  self->_deviceIdentificationView = v11;

  [(ICQDeviceIdentificationView *)self->_deviceIdentificationView setLeftExtraMargin:16.0];
  [(ICQDeviceIdentificationView *)self->_deviceIdentificationView sizeToFit];
  [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) setTableHeaderView:self->_deviceIdentificationView];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"REMOTE_HEADER"];
    if (!self->_isBackupEnabled)
    {
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"REMOTE_DEVICE_INACTIVE" value:&stru_28844FC60 table:@"BackupInfo"];
      [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    }

    [v5 addObject:v6];
    v9 = MEMORY[0x277D3FAD8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = v6;
    v11 = [v10 localizedStringForKey:@"LATEST_BACKUP" value:&stru_28844FC60 table:@"BackupInfo"];
    v12 = [v9 preferenceSpecifierNamed:v11 target:self set:0 get:sel_lastBackupDateString detail:0 cell:4 edit:0];

    [v5 addObject:v12];
    v13 = MEMORY[0x277D3FAD8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"BACKUP_SIZE" value:&stru_28844FC60 table:@"BackupInfo"];
    v16 = [v13 preferenceSpecifierNamed:v15 target:self set:0 get:sel_backupSizeString detail:0 cell:4 edit:0];

    [v5 addObject:v16];
    if (self->_isBackupEnabled)
    {
      v17 = @"DELETE_BACKUP_AND_TURN_OFF_BACKUP";
    }

    else
    {
      v17 = @"DELETE_BACKUP";
    }

    v18 = MEMORY[0x277D3FAD8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:v17 value:&stru_28844FC60 table:@"BackupInfo"];
    v21 = [v18 deleteButtonSpecifierWithName:v20 target:self action:sel_firstDeleteConfirmation_];

    v22 = [(ICQRemoteBackupController *)self deletionURL];

    if (!v22)
    {
      v23 = [MEMORY[0x277CCABB0] numberWithBool:0];
      [v21 setProperty:v23 forKey:*MEMORY[0x277D3FF38]];
    }

    v24 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v5 addObject:v24];

    [v5 addObject:v21];
    v25 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)firstDeleteConfirmation:(id)a3
{
  v4 = a3;
  if (self->_isBackupEnabled)
  {
    v5 = @"TURN_OFF_AND_DELETE";
  }

  else
  {
    v5 = @"DELETE";
  }

  v28 = v5;
  v29 = v4;
  if (self->_isBackupEnabled)
  {
    v6 = @"TURN_OFF_REMOTE_ACTIVE_PROMPT_TEXT";
  }

  else
  {
    v6 = @"TURN_OFF_REMOTE_INACTIVE_PROMPT_TEXT";
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"TURN_OFF_REMOTE_PROMPT_TITLE" value:&stru_28844FC60 table:@"BackupInfo"];
  v10 = [(ICQRemoteBackupController *)self deviceName];
  v27 = [v7 stringWithFormat:v9, v10];

  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:v6 value:&stru_28844FC60 table:@"BackupInfo"];
  v14 = [(ICQRemoteBackupController *)self deviceName];
  v15 = [v11 stringWithFormat:v13, v14];

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:v28 value:&stru_28844FC60 table:@"BackupInfo"];

  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"CANCEL" value:&stru_28844FC60 table:@"BackupInfo"];

  v20 = [MEMORY[0x277D75110] sheetAlertControllerWithTitle:v27 message:v15];
  v21 = [(ICQRemoteBackupController *)self cachedCellForSpecifier:v29];
  v22 = [v20 popoverPresentationController];
  [v22 setSourceItem:v21];

  v23 = MEMORY[0x277D750F8];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __53__ICQRemoteBackupController_firstDeleteConfirmation___block_invoke;
  v30[3] = &unk_27A65A848;
  v30[4] = self;
  v31 = v29;
  v24 = v29;
  v25 = [v23 actionWithTitle:v17 style:2 handler:v30];
  v26 = [MEMORY[0x277D750F8] actionWithTitle:v19 style:1 handler:&__block_literal_global_25];
  [v20 addAction:v25];
  [v20 addAction:v26];
  [(ICQRemoteBackupController *)self presentViewController:v20 animated:1 completion:0];
}

- (void)secondDeleteConfirmationWithSender:(id)a3
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SECOND_TURN_OFF_REMOTE_PROMPT_TITLE" value:&stru_28844FC60 table:@"BackupInfo"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SECOND_TURN_OFF_REMOTE_PROMPT_TEXT" value:&stru_28844FC60 table:@"BackupInfo"];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"SECOND_TURN_OFF_REMOTE_PROMPT_ACTION" value:&stru_28844FC60 table:@"BackupInfo"];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CANCEL" value:&stru_28844FC60 table:@"BackupInfo"];

  v14 = [MEMORY[0x277D75110] sheetAlertControllerWithTitle:v7 message:v9];
  v15 = [(ICQRemoteBackupController *)self cachedCellForSpecifier:v5];

  v16 = [v14 popoverPresentationController];
  [v16 setSourceItem:v15];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__ICQRemoteBackupController_secondDeleteConfirmationWithSender___block_invoke;
  v19[3] = &unk_27A65B1A0;
  v19[4] = self;
  v17 = [MEMORY[0x277D750F8] actionWithTitle:v11 style:2 handler:v19];
  v18 = [MEMORY[0x277D750F8] actionWithTitle:v13 style:1 handler:&__block_literal_global_129];
  [v14 addAction:v17];
  [v14 addAction:v18];
  [(ICQRemoteBackupController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)startDeletionBezel
{
  v3 = [(ICQRemoteBackupController *)self navigationController];
  v4 = [v3 view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v9 = (v6 + -156.0) * 0.5;
  v10 = floorf(v9);
  v11 = (v8 + -126.0) * 0.5;
  v12 = floorf(v11);
  v13 = [(ICQRemoteBackupController *)self navigationController];
  v14 = [v13 view];
  v15 = [(ICQRemoteBackupController *)self view];
  [v14 convertRect:v15 toView:{v10, v12, 156.0, 126.0}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [[ICQSpinnerBezel alloc] initWithFrame:v17, v19, v21, v23];
  deletionBezel = self->_deletionBezel;
  self->_deletionBezel = v24;

  v26 = self->_deletionBezel;
  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"DELETING" value:&stru_28844FC60 table:@"BackupInfo"];
  [(ICQSpinnerBezel *)v26 setBezelText:v28];

  v29 = [(ICQRemoteBackupController *)self view];
  [v29 addSubview:self->_deletionBezel];

  v31 = [(ICQRemoteBackupController *)self view];
  v30 = [v31 window];
  [v30 setUserInteractionEnabled:0];
}

- (void)endDeletionBezel
{
  v3 = [(ICQRemoteBackupController *)self view];
  v4 = [v3 window];
  [v4 setUserInteractionEnabled:1];

  [(ICQSpinnerBezel *)self->_deletionBezel removeFromSuperview];
  deletionBezel = self->_deletionBezel;
  self->_deletionBezel = 0;
}

- (void)_backupDeletionFailedWithCode:(int64_t)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ICQRemoteBackupController *)self deletionURL];
    *buf = 138412290;
    v25 = v6;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Deletion URL: %@", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  if (a3 == 423)
  {
    v9 = @"CANNOT_DELETE_BACKUP_LOCKED";
  }

  else
  {
    v9 = @"CANNOT_DELETE_BACKUP_DETAILS";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_28844FC60 table:@"BackupInfo"];

  v11 = MEMORY[0x277D75110];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CANNOT_DELETE_BACKUP" value:&stru_28844FC60 table:@"BackupInfo"];
  v14 = [v11 alertControllerWithTitle:v13 message:v10 preferredStyle:1];

  v15 = MEMORY[0x277D750F8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"TRY_AGAIN" value:&stru_28844FC60 table:@"BackupInfo"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __59__ICQRemoteBackupController__backupDeletionFailedWithCode___block_invoke;
  v23[3] = &unk_27A65B1A0;
  v23[4] = self;
  v18 = [v15 actionWithTitle:v17 style:0 handler:v23];
  [v14 addAction:v18];

  v19 = MEMORY[0x277D750F8];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"OK" value:&stru_28844FC60 table:@"BackupInfo"];
  v22 = [v19 actionWithTitle:v21 style:1 handler:0];
  [v14 addAction:v22];

  [(ICQRemoteBackupController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)_backupDeletionSuccess
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Backup deletion completed sucessfully.", v7, 2u);
  }

  [(ICQRemoteBackupController *)self endDeletionBezel];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"BackupInfoDidChange" object:0];

  v5 = [(ICQRemoteBackupController *)self navigationController];
  v6 = [v5 popViewControllerAnimated:1];
}

- (void)deleteBackupConfirmed
{
  [(ICQRemoteBackupController *)self startDeletionBezel];
  v3 = MEMORY[0x277CCAB70];
  v4 = [(ICQRemoteBackupController *)self deletionURL];
  v5 = [v3 requestWithURL:v4];

  [(ICQUsageQuotaRequest *)ICQQuotaInfoRequest addHeadersToRequest:v5 forAccount:self->_account];
  [v5 setHTTPMethod:@"POST"];
  v6 = [MEMORY[0x277CCAD30] sharedSession];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__ICQRemoteBackupController_deleteBackupConfirmed__block_invoke;
  v8[3] = &unk_27A65A7A0;
  v8[4] = self;
  v7 = [v6 dataTaskWithRequest:v5 completionHandler:v8];

  [v7 resume];
}

void __50__ICQRemoteBackupController_deleteBackupConfirmed__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ICQRemoteBackupController_deleteBackupConfirmed__block_invoke_2;
  block[3] = &unk_27A65B108;
  v8 = *(a1 + 32);
  v12 = v6;
  v13 = v8;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__ICQRemoteBackupController_deleteBackupConfirmed__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [*(a1 + 40) endDeletionBezel];
    v5 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Error deleting remote backup: %@", buf, 0xCu);
    }

    v7 = *(a1 + 40);
    v8 = -1;
    goto LABEL_13;
  }

  v2 = [*(a1 + 32) statusCode];
  if (v2 != 200)
  {
    v9 = v2;
    [*(a1 + 40) endDeletionBezel];
    v10 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v9;
      _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Failed to delete backup, status code: %ld", buf, 0xCu);
    }

    v7 = *(a1 + 40);
    v8 = v9;
LABEL_13:
    [v7 _backupDeletionFailedWithCode:v8];
    return;
  }

  v3 = *(*(a1 + 40) + 1520);
  if (v3)
  {
    [v3 setDelegate:?];
    v4 = *(*(a1 + 40) + 1520);
    v12 = +[ICQCloudStorageInfo backupInfoHeaders];
    [v4 popAndReloadFromRemoteUI:0 additionalHeaders:?];
  }

  else
  {
    v11 = *(a1 + 40);

    [v11 _backupDeletionSuccess];
  }
}

- (void)loadStarted:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "loadStarted: %@", &v5, 0xCu);
  }
}

- (void)loadFinished:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "loadFinished: %@", &v6, 0xCu);
  }

  [(ICQRemoteBackupController *)self endDeletionBezel];
}

- (void)loadFailed:(id)a3 withError:(id)a4
{
  v5 = a4;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ICQRemoteBackupController loadFailed:v5 withError:v6];
  }

  [(ICQRemoteBackupController *)self endDeletionBezel];
  v7 = [(ICQRemoteBackupController *)self navigationController];
  v8 = [v7 popViewControllerAnimated:1];
}

- (void)loadFailed:(uint64_t)a1 withError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "loadFailed with error: %@", &v2, 0xCu);
}

@end