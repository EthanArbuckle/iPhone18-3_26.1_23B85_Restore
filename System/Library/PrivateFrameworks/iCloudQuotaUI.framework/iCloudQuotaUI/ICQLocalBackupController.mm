@interface ICQLocalBackupController
+ (BOOL)isiCloudPhotosEnabled;
+ (id)cellValueStyleDateStringForDate:(id)date;
+ (id)currentDeviceBackupWithMBManager:(id)manager filtering:(BOOL)filtering error:(id *)error;
+ (id)dateStringForSnapshot:(id)snapshot;
+ (id)deviceImageURLFromAttributes:(id)attributes;
+ (id)specifier;
+ (id)specifierForAccount:(id)account;
- (BOOL)beginScan;
- (BOOL)isDomainWhitelisted:(id)whitelisted;
- (ICQLocalBackupController)init;
- (id)appSpecifierForBundleID:(id)d;
- (id)backupDomainEnabledForSpecifier:(id)specifier;
- (id)backupSizeString;
- (id)currentDeviceBackup;
- (id)dateStringOfLatestBackup;
- (id)loadAppSpecifiersWithDomainInfo:(id)info;
- (id)nextBackupSizeStringWithSpecifier:(id)specifier;
- (id)specifiers;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)_backupDeletionSuccess;
- (void)_updateTable:(id)table toMatchArray:(id)array withVisibleArray:(id)visibleArray maxVisible:(unint64_t)visible inSection:(int64_t)section withRowOffset:(int64_t)offset;
- (void)animateAppSpecifierChanges;
- (void)assignDisableBackupsConfirmationToSpecifier:(id)specifier;
- (void)dealloc;
- (void)deleteBackupConfirmed;
- (void)endDeletionBezel;
- (void)firstDeleteConfirmation:(id)confirmation;
- (void)insertDeleteBackupButtonIfNeeded:(BOOL)needed;
- (void)loadFailed:(id)failed withError:(id)error;
- (void)loadPropertyValuesFromDictionary:(id)dictionary;
- (void)loadQuotaInfo;
- (void)loadView;
- (void)manager:(id)manager didFailScanWithError:(id)error;
- (void)managerDidFinishScan:(id)scan;
- (void)reloadAfterFetch;
- (void)reloadBackupInfoWithDeleteButton:(BOOL)button;
- (void)reloadQuotaInfo;
- (void)secondDeleteConfirmationWithSender:(id)sender;
- (void)setBackupDomainEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setSpecifier:(id)specifier;
- (void)showAllApps:(id)apps;
- (void)startDeletionBezel;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)turnOffAppBackupCancelled:(id)cancelled;
- (void)turnOffAppBackupConfirmed:(id)confirmed;
- (void)updateAppSpecifiersScanWhenComplete:(BOOL)complete;
- (void)updateNextBackupSize;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ICQLocalBackupController

+ (id)specifier
{
  v2 = MEMORY[0x277D3FAD8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BACKUPS_TITLE" value:&stru_28844FC60 table:@"BackupInfo"];
  v5 = [v2 preferenceSpecifierNamed:v4 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  return v5;
}

+ (id)specifierForAccount:(id)account
{
  accountCopy = account;
  specifier = [self specifier];
  [specifier setObject:accountCopy forKeyedSubscript:@"ICQUISpecifierKeyAccount"];

  [specifier setObject:@"CURRENT_DEVICE_BACKUP" forKeyedSubscript:*MEMORY[0x277D3FFB8]];

  return specifier;
}

- (ICQLocalBackupController)init
{
  v21.receiver = self;
  v21.super_class = ICQLocalBackupController;
  v2 = [(ICQLocalBackupController *)&v21 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_reloadQuotaInfo name:@"QuotaInformationChanged" object:0];

    v4 = MEMORY[0x277D3FAD8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"SHOW_ALL_APPS" value:&stru_28844FC60 table:@"BackupInfo"];
    v7 = [v4 preferenceSpecifierNamed:v6 target:v2 set:0 get:0 detail:0 cell:13 edit:0];
    showAllSpecifier = v2->_showAllSpecifier;
    v2->_showAllSpecifier = v7;

    v9 = v2->_showAllSpecifier;
    v10 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(PSSpecifier *)v9 setProperty:v10 forKey:*MEMORY[0x277D3FD78]];

    v11 = *MEMORY[0x277D3FFB8];
    [(PSSpecifier *)v2->_showAllSpecifier setProperty:@"SHOW_ALL_APPS" forKey:*MEMORY[0x277D3FFB8]];
    [(PSSpecifier *)v2->_showAllSpecifier setButtonAction:sel_showAllApps_];
    v12 = MEMORY[0x277D3FAD8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"NEXT_BACKUP_SIZE" value:&stru_28844FC60 table:@"BackupInfo"];
    v15 = [v12 preferenceSpecifierNamed:v14 target:v2 set:0 get:sel_nextBackupSizeStringWithSpecifier_ detail:0 cell:4 edit:0];
    nextBackupSizeSpecifier = v2->_nextBackupSizeSpecifier;
    v2->_nextBackupSizeSpecifier = v15;

    [(PSSpecifier *)v2->_nextBackupSizeSpecifier setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [(PSSpecifier *)v2->_nextBackupSizeSpecifier setProperty:@"NEXT_BACKUP_SIZE" forKey:v11];
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    visibleAppSpecifiers = v2->_visibleAppSpecifiers;
    v2->_visibleAppSpecifiers = v17;

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_didEnterBackground_ name:*MEMORY[0x277D76660] object:0];
  }

  return v2;
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  objc_storeStrong((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]), specifier);
  specifier = [(ICQLocalBackupController *)self specifier];
  v7 = [specifier objectForKeyedSubscript:@"ICQUISpecifierKeyAccount"];
  account = self->_account;
  self->_account = v7;

  if (self->_account)
  {
    v9 = objc_alloc(MEMORY[0x277D28A40]);
    v10 = self->_account;
    v15 = 0;
    v11 = [v9 initWithAccount:v10 delegate:self eventQueue:0 error:&v15];
    v12 = v15;
    backupManager = self->_backupManager;
    self->_backupManager = v11;

    if (v12)
    {
      v14 = _ICQGetLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ICQLocalBackupController setSpecifier:];
      }
    }
  }

  else
  {
    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICQLocalBackupController setSpecifier:];
    }
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(MBManager *)self->_backupManager setDelegate:0];
  delegate = [(ICQPreferencesRemoteUIDelegate *)self->_remoteDelegate delegate];

  if (delegate == self)
  {
    [(ICQPreferencesRemoteUIDelegate *)self->_remoteDelegate setDelegate:0];
  }

  v5.receiver = self;
  v5.super_class = ICQLocalBackupController;
  [(ICQLocalBackupController *)&v5 dealloc];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (self->_scanInProgress && self->_shouldCancelScanOnExit && [(ICQLocalBackupController *)self isMovingFromParentViewController])
  {
    self->_shouldCancelScanOnExit = 0;
    [(MBManager *)self->_backupManager cancel];
  }

  v5.receiver = self;
  v5.super_class = ICQLocalBackupController;
  [(ICQLocalBackupController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (self->_manageStorageReloadNeeded)
  {
    remoteDelegate = self->_remoteDelegate;
    v6 = +[ICQCloudStorageInfo backupInfoHeaders];
    [(ICQPreferencesRemoteUIDelegate *)remoteDelegate reloadTopControllerWithAdditionalHeaders:v6];
  }

  v7.receiver = self;
  v7.super_class = ICQLocalBackupController;
  [(ICQLocalBackupController *)&v7 viewDidDisappear:disappearCopy];
}

+ (id)deviceImageURLFromAttributes:(id)attributes
{
  attributesCopy = attributes;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v6 = v5;

  if (v6 <= 1.0 || ([@"largeImage" stringByAppendingString:@"2x"], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(attributesCopy, "objectForKey:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v8 = [attributesCopy objectForKey:@"largeImage"];
  }

  v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];

  return v9;
}

- (void)loadPropertyValuesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"label"];
  [(ICQLocalBackupController *)self setDeviceName:v5];

  v6 = [dictionaryCopy objectForKey:@"deviceUdid"];
  [(ICQLocalBackupController *)self setDeviceIdentifier:v6];

  v7 = [objc_opt_class() deviceImageURLFromAttributes:dictionaryCopy];
  [(ICQLocalBackupController *)self setDeviceImageURL:v7];

  v8 = [dictionaryCopy objectForKey:@"backupSize"];
  -[ICQLocalBackupController setBackupSize:](self, "setBackupSize:", [v8 longLongValue]);

  v10 = [dictionaryCopy objectForKey:@"bytesRequiredForBackup"];

  if (v10)
  {
    v9 = [MEMORY[0x277CCA8E8] stringFromByteCount:objc_msgSend(v10 countStyle:{"longLongValue"), 1}];
    [(ICQLocalBackupController *)self setAdditionalSpaceRequiredString:v9];
  }

  else
  {
    [(ICQLocalBackupController *)self setAdditionalSpaceRequiredString:0];
  }
}

- (void)loadView
{
  v15.receiver = self;
  v15.super_class = ICQLocalBackupController;
  [(ICQLocalBackupController *)&v15 loadView];
  specifier = [(ICQLocalBackupController *)self specifier];
  v4 = [specifier propertyForKey:@"attributes"];
  [(ICQLocalBackupController *)self loadPropertyValuesFromDictionary:v4];

  specifier2 = [(ICQLocalBackupController *)self specifier];
  v6 = [specifier2 propertyForKey:@"remoteDelegate"];
  [(ICQLocalBackupController *)self setRemoteDelegate:v6];

  [(ICQLocalBackupController *)self loadQuotaInfo];
  v7 = [ICQDeviceIdentificationView alloc];
  deviceName = self->_deviceName;
  deviceIdentifier = [(ICQLocalBackupController *)self deviceIdentifier];
  deviceImageURL = [(ICQLocalBackupController *)self deviceImageURL];
  v11 = [(ICQDeviceIdentificationView *)v7 initWithFrame:deviceName deviceName:deviceIdentifier deviceIdentifier:deviceImageURL imageURL:1 isCurrentDevice:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  deviceIdentificationView = self->_deviceIdentificationView;
  self->_deviceIdentificationView = v11;

  [(ICQDeviceIdentificationView *)self->_deviceIdentificationView setLeftExtraMargin:16.0];
  [(ICQDeviceIdentificationView *)self->_deviceIdentificationView sizeToFit];
  [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) setTableHeaderView:self->_deviceIdentificationView];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"BACKUPS_PAGE_TITLE" value:&stru_28844FC60 table:@"BackupInfo"];
  [(ICQLocalBackupController *)self setTitle:v14];
}

- (id)appSpecifierForBundleID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    specifiers = [(ICQLocalBackupController *)self specifiers];
    v6 = [specifiers specifierForID:dCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (void)turnOffAppBackupCancelled:(id)cancelled
{
  v3 = [cancelled propertyForKey:*MEMORY[0x277D40148]];
  control = [v3 control];

  [control setOn:1 animated:1];
}

- (void)turnOffAppBackupConfirmed:(id)confirmed
{
  confirmedCopy = confirmed;
  v5 = [confirmedCopy propertyForKey:@"MBDomainInfo"];
  domainName = [v5 domainName];

  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ICQLocalBackupController_turnOffAppBackupConfirmed___block_invoke;
  block[3] = &unk_27A65B108;
  block[4] = self;
  v11 = domainName;
  v12 = confirmedCopy;
  v8 = confirmedCopy;
  v9 = domainName;
  dispatch_async(v7, block);
}

void __54__ICQLocalBackupController_turnOffAppBackupConfirmed___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 1456);
  v18 = 0;
  v4 = [v3 removeDomainName:v2 error:&v18];
  v5 = v18;
  if (v4)
  {
    [*(*(a1 + 32) + 1456) setBackupEnabled:0 forDomainName:*(a1 + 40)];
    v6 = *(a1 + 32);
    v7 = *(v6 + 1552);
    *(v6 + 1552) = 0;
  }

  v8 = [*(*(a1 + 32) + 1456) domainInfoForName:*(a1 + 40)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ICQLocalBackupController_turnOffAppBackupConfirmed___block_invoke_2;
  block[3] = &unk_27A65A870;
  v17 = v4;
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = v8;
  v9 = v8;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __54__ICQLocalBackupController_turnOffAppBackupConfirmed___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = [*(a1 + 56) propertyForKey:@"MBDomainInfo"];
    v3 = [v2 remoteSize];

    [*(a1 + 56) setProperty:*(a1 + 64) forKey:@"MBDomainInfo"];
    v4 = +[ICQQuotaRequestManager sharedManager];
    [v4 noteQuotaInfoChanged];

    [*(a1 + 48) setBackupSize:{objc_msgSend(*(a1 + 48), "backupSize") - v3}];
    [*(a1 + 48) reloadSpecifierID:@"BACKUP_SIZE"];
    [*(a1 + 48) setScanInProgress:0];
    v5 = [*(a1 + 48) specifierForID:@"BACKED_UP_APPS"];
    v25 = [v5 propertyForKey:*MEMORY[0x277D3FFB0]];

    [v25 hideSpinner];
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __54__ICQLocalBackupController_turnOffAppBackupConfirmed___block_invoke_2_cold_1();
    }

    [*(a1 + 48) reloadSpecifier:*(a1 + 56) animated:1];
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"CANNOT_TURN_OFF_BACKUP_DETAILS" value:&stru_28844FC60 table:@"BackupInfo"];
    v10 = [*(a1 + 56) name];
    v11 = [v7 stringWithFormat:v9, v10];

    v12 = MEMORY[0x277D75110];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CANNOT_TURN_OFF_BACKUP" value:&stru_28844FC60 table:@"BackupInfo"];
    v15 = [v12 alertControllerWithTitle:v14 message:v11 preferredStyle:1];

    v16 = MEMORY[0x277D750F8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"TRY_AGAIN" value:&stru_28844FC60 table:@"BackupInfo"];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __54__ICQLocalBackupController_turnOffAppBackupConfirmed___block_invoke_153;
    v26[3] = &unk_27A65A848;
    v19 = *(a1 + 56);
    v26[4] = *(a1 + 48);
    v27 = v19;
    v20 = [v16 actionWithTitle:v18 style:0 handler:v26];
    [v15 addAction:v20];

    v21 = MEMORY[0x277D750F8];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"OK" value:&stru_28844FC60 table:@"BackupInfo"];
    v24 = [v21 actionWithTitle:v23 style:1 handler:0];
    [v15 addAction:v24];

    [*(a1 + 48) presentViewController:v15 animated:1 completion:0];
  }
}

- (void)setBackupDomainEnabled:(id)enabled forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if ([enabled BOOLValue])
  {
    v6 = [specifierCopy propertyForKey:@"MBDomainInfo"];

    [v6 setEnabled:1];
    backupManager = self->_backupManager;
    domainName = [v6 domainName];
    [(MBManager *)backupManager setBackupEnabled:1 forDomainName:domainName];

    [(ICQLocalBackupController *)self updateNextBackupSize];
    v9 = v6;
  }

  else
  {
    [(ICQLocalBackupController *)self showConfirmationViewForSpecifier:specifierCopy];
    v9 = specifierCopy;
  }
}

- (id)backupDomainEnabledForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:@"MBDomainInfo"];
  v4 = MEMORY[0x277CCABB0];
  if ([v3 isEnabled])
  {
    v5 = [v3 isRestricted] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 numberWithBool:v5];

  return v6;
}

- (void)showAllApps:(id)apps
{
  appsCopy = apps;
  self->_showAllPressed = 1;
  if (!self->_appSpecifiers)
  {
    [ICQLocalBackupController showAllApps:];
  }

  v5 = appsCopy;
  [(ICQLocalBackupController *)self animateAppSpecifierChanges];
}

+ (BOOL)isiCloudPhotosEnabled
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager fileExistsAtPath:@"/var/mobile/Media/PhotoData/CPL/initialsync_marker"];

  return v3;
}

- (BOOL)isDomainWhitelisted:(id)whitelisted
{
  v3 = isDomainWhitelisted__onceToken;
  whitelistedCopy = whitelisted;
  if (v3 != -1)
  {
    [ICQLocalBackupController isDomainWhitelisted:];
  }

  v5 = isDomainWhitelisted__whitelist;
  bundleID = [whitelistedCopy bundleID];

  v7 = [v5 containsObject:bundleID];
  return v7;
}

void __48__ICQLocalBackupController_isDomainWhitelisted___block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D3FDE0];
  v3[0] = *MEMORY[0x277D3FDE8];
  v3[1] = v0;
  v3[2] = *MEMORY[0x277D3FDC8];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
  v2 = isDomainWhitelisted__whitelist;
  isDomainWhitelisted__whitelist = v1;
}

- (void)assignDisableBackupsConfirmationToSpecifier:(id)specifier
{
  v20 = MEMORY[0x277CBEAC0];
  v3 = MEMORY[0x277CCA8D8];
  specifierCopy = specifier;
  v19 = [v3 bundleForClass:objc_opt_class()];
  v17 = [v19 localizedStringForKey:@"CANCEL" value:&stru_28844FC60 table:@"BackupInfo"];
  v16 = *MEMORY[0x277D3FE78];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v18 localizedStringForKey:@"DELETE" value:&stru_28844FC60 table:@"BackupInfo"];
  v15 = *MEMORY[0x277D3FE88];
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"TURN_OFF_APP_PROMPT_TEXT" value:&stru_28844FC60 table:@"BackupInfo"];
  name = [specifierCopy name];
  v10 = [v6 stringWithFormat:v8, name];
  v11 = *MEMORY[0x277D3FE90];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"TURN_OFF" value:&stru_28844FC60 table:@"BackupInfo"];
  v21 = [v20 dictionaryWithObjectsAndKeys:{v17, v16, v5, v15, v10, v11, v13, *MEMORY[0x277D3FE98], 0}];

  [specifierCopy setupWithDictionary:v21];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [specifierCopy setProperty:v14 forKey:*MEMORY[0x277D3FE80]];
}

- (id)loadAppSpecifiersWithDomainInfo:(id)info
{
  v63 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = infoCopy;
  v5 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v55;
    v46 = *MEMORY[0x277D3FE58];
    v44 = *MEMORY[0x277D40008];
    v45 = *MEMORY[0x277D3FFB8];
    v42 = *MEMORY[0x277D40160];
    v43 = *MEMORY[0x277D40020];
    v39 = *MEMORY[0x277D3FF38];
    selfCopy = self;
    v48 = *v55;
    do
    {
      v8 = 0;
      v49 = v6;
      do
      {
        if (*v55 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v54 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        name = [getPSGBackupUtilsClass() displayNameForDomainInfo:v9];
        v12 = [getPSGBackupUtilsClass() bundleIdForDomainInfo:v9];
        if (([getPSGBackupUtilsClass() shouldIgnoreBundleId:v12] & 1) == 0)
        {
          v13 = _ICQGetLogSystem();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v59 = name;
            v60 = 2112;
            v61 = v12;
            _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to show domain: %@:%@", buf, 0x16u);
          }

          v14 = [(ICQLocalBackupController *)self appSpecifierForBundleID:v12];
          v15 = v14;
          if (v14 && !name)
          {
            name = [v14 name];
          }

          if (name)
          {
            v16 = 1;
          }

          else
          {
            v16 = v12 == 0;
          }

          v17 = !v16;
          if (!v16)
          {
            v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            name = [v18 localizedStringForKey:@"LOADING" value:&stru_28844FC60 table:@"BackupInfo"];

            [array2 addObject:v12];
          }

          if (name)
          {
            if (v15)
            {
              [v15 setName:name];
              v19 = v15;
            }

            else
            {
              v19 = [MEMORY[0x277D3F9C8] preferenceSpecifierNamed:name target:self set:sel_setBackupDomainEnabled_forSpecifier_ get:sel_backupDomainEnabledForSpecifier_ detail:0 cell:6 edit:0];
            }

            [v19 setProperty:objc_opt_class() forKey:v46];
            [v19 setProperty:v9 forKey:@"MBDomainInfo"];
            [v19 setProperty:v12 forKey:v45];
            [v19 setProperty:v12 forKey:v44];
            v20 = [MEMORY[0x277CCABB0] numberWithBool:1];
            [v19 setProperty:v20 forKey:v43];

            if ([v9 isRestricted])
            {
              v21 = [MEMORY[0x277CCABB0] numberWithBool:0];
              [v19 setProperty:v21 forKey:v39];

              v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v23 = [v22 localizedStringForKey:@"BACKUP_NOT_SUPPORTED" value:&stru_28844FC60 table:@"BackupInfo"];
              [v19 setProperty:v23 forKey:v42];
            }

            else
            {
              v24 = [v9 size];
              if (v24)
              {
                v22 = [MEMORY[0x277CCA8E8] stringFromByteCount:v24 countStyle:1];
              }

              else
              {
                v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v22 = [v25 localizedStringForKey:@"NO_DATA" value:&stru_28844FC60 table:@"BackupInfo"];
              }

              [v19 setProperty:v22 forKey:v42];
              if (v15)
              {
                v26 = 0;
              }

              else
              {
                v26 = v17;
              }

              if (v26)
              {
                v27 = [MEMORY[0x277CCABB0] numberWithBool:0];
                [v19 setProperty:v27 forKey:v39];

                v28 = selfCopy;
              }

              else
              {
                v28 = selfCopy;
                [(ICQLocalBackupController *)selfCopy assignDisableBackupsConfirmationToSpecifier:v19];
              }

              objc_storeWeak(&v19[*MEMORY[0x277D3FCB8]], v28);
              [v19 setConfirmationAction:sel_turnOffAppBackupConfirmed_];
              [v19 setConfirmationCancelAction:sel_turnOffAppBackupCancelled_];
            }

            v7 = v48;
            if ([v9 isCameraRollDomain])
            {
              self = selfCopy;
              if (([objc_opt_class() isiCloudPhotosEnabled] & 1) == 0)
              {
                [array insertObject:v19 atIndex:0];
              }
            }

            else
            {
              [array addObject:v19];
              self = selfCopy;
            }
          }

          else
          {
            v19 = v15;
            v7 = v48;
          }

          v6 = v49;
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v6);
  }

  v29 = array2;
  if (ceilf([array2 count] / 10.0) > 0.0)
  {
    v30 = 0;
    v31 = 0;
    v32 = 1;
    do
    {
      v33 = [v29 count];
      if ((v33 + v31) >= 0xA)
      {
        v34 = 10;
      }

      else
      {
        v34 = v33 + v31;
      }

      v35 = [v29 subarrayWithRange:{v30, v34}];
      v36 = +[ICQQuotaRequestManager sharedManager];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __60__ICQLocalBackupController_loadAppSpecifiersWithDomainInfo___block_invoke;
      v51[3] = &unk_27A65B130;
      v52 = array;
      selfCopy2 = self;
      [v36 getAppDetailsForBundleIDs:v35 handler:v51];

      v29 = array2;
      v37 = v32;
      v31 -= 10;
      v30 += 10;
      ++v32;
    }

    while (ceilf([array2 count] / 10.0) > v37);
  }

  return array;
}

void __60__ICQLocalBackupController_loadAppSpecifiersWithDomainInfo___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  [a2 apps];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    v16 = *MEMORY[0x277D3FF38];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = *(a1 + 32);
        v9 = [v7 bundleID];
        v10 = [v8 specifierForID:v9];

        v11 = [v7 localizedName];
        [v10 setName:v11];

        v12 = [v10 propertyForKey:@"MBDomainInfo"];
        if (([v12 isRestricted] & 1) == 0)
        {
          [*(a1 + 40) assignDisableBackupsConfirmationToSpecifier:v10];
          v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
          [v10 setProperty:v13 forKey:v16];
        }

        v14 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __60__ICQLocalBackupController_loadAppSpecifiersWithDomainInfo___block_invoke_2;
        block[3] = &unk_27A65B108;
        block[4] = v7;
        v19 = v10;
        v20 = *(a1 + 40);
        v15 = v10;
        dispatch_async(v14, block);
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }
}

void __60__ICQLocalBackupController_loadAppSpecifiersWithDomainInfo___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CBEA90];
  v3 = [*(a1 + 32) thumbnailURL];
  v4 = [v2 dataWithContentsOfURL:v3];

  v5 = [MEMORY[0x277D755B8] imageWithData:v4];
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  v7 = [v5 _applicationIconImageForFormat:0 precomposed:0 scale:?];

  [*(a1 + 40) setProperty:v7 forKey:*MEMORY[0x277D3FFC0]];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ICQLocalBackupController_loadAppSpecifiersWithDomainInfo___block_invoke_3;
  block[3] = &unk_27A65A708;
  v9 = *(a1 + 40);
  v8 = v9.i64[0];
  v11 = vextq_s8(v9, v9, 8uLL);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_updateTable:(id)table toMatchArray:(id)array withVisibleArray:(id)visibleArray maxVisible:(unint64_t)visible inSection:(int64_t)section withRowOffset:(int64_t)offset
{
  v57 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  arrayCopy = array;
  visibleArrayCopy = visibleArray;
  v39 = tableCopy;
  [tableCopy beginUpdates];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v49 = [visibleArrayCopy copy];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v17 = arrayCopy;
  v18 = 0x277CCA000uLL;
  v38 = array;
  v41 = v17;
  v48 = [v17 countByEnumeratingWithState:&v52 objects:v56 count:16];
  v19 = 0;
  if (!v48)
  {
    goto LABEL_20;
  }

  v47 = *v53;
  v43 = *MEMORY[0x277D3FFB8];
  sectionCopy = section;
  offsetCopy = offset;
  visibleCopy = visible;
  do
  {
    for (i = 0; i != v48; ++i)
    {
      if (*v53 != v47)
      {
        objc_enumerationMutation(v17);
      }

      v21 = *(*(&v52 + 1) + 8 * i);
      if (v19 >= [visibleArrayCopy count])
      {
        v25 = [*(v18 + 2672) indexPathForRow:offset + v19 inSection:section];
        [array addObject:v25];

        v18 = 0x277CCA000;
        [visibleArrayCopy addObject:v21];
        goto LABEL_17;
      }

      v22 = [visibleArrayCopy objectAtIndex:v19];
      v23 = [v22 propertyForKey:v43];
      v24 = [v21 propertyForKey:v43];
      if (([v24 isEqualToString:v23] & 1) == 0)
      {
        v42 = v22;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __106__ICQLocalBackupController__updateTable_toMatchArray_withVisibleArray_maxVisible_inSection_withRowOffset___block_invoke;
        aBlock[3] = &unk_27A65B158;
        v51 = v24;
        v26 = _Block_copy(aBlock);
        v27 = [v49 indexOfObjectPassingTest:v26];
        v28 = *(v18 + 2672);
        if (v27 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = [v28 indexPathForRow:offsetCopy + v19 inSection:sectionCopy];
          [array addObject:v29];

          v17 = v41;
          goto LABEL_14;
        }

        v40 = [v28 indexPathForRow:v27 + offsetCopy inSection:sectionCopy];
        v30 = [*(v18 + 2672) indexPathForRow:offsetCopy + v19 inSection:sectionCopy];
        [v39 moveRowAtIndexPath:v40 toIndexPath:v30];

        array = v38;
        v31 = [visibleArrayCopy indexOfObjectPassingTest:v26];
        v17 = v41;
        if (v31 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [visibleArrayCopy removeObjectAtIndex:v31];
LABEL_14:
          [visibleArrayCopy insertObject:v21 atIndex:v19];
        }

        v18 = 0x277CCA000;
        v22 = v42;
        goto LABEL_16;
      }

      [visibleArrayCopy replaceObjectAtIndex:v19 withObject:v21];
LABEL_16:

      section = sectionCopy;
      offset = offsetCopy;
      visible = visibleCopy;
LABEL_17:
      if (++v19 >= visible)
      {
        goto LABEL_20;
      }
    }

    v48 = [v17 countByEnumeratingWithState:&v52 objects:v56 count:16];
  }

  while (v48);
LABEL_20:

  if ([visibleArrayCopy count] <= v19)
  {
    v33 = 0;
    v32 = 0;
  }

  else
  {
    v32 = [visibleArrayCopy count] - v19;
    v33 = v19;
  }

  for (; v19 < [visibleArrayCopy count]; ++v19)
  {
    v34 = [visibleArrayCopy objectAtIndex:v19];
    v35 = [v49 indexOfObject:v34];
    if (v35 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [ICQLocalBackupController _updateTable:toMatchArray:withVisibleArray:maxVisible:inSection:withRowOffset:];
    }

    v36 = [MEMORY[0x277CCAA70] indexPathForRow:v35 + offset inSection:section];
    [array2 addObject:v36];
  }

  [visibleArrayCopy removeObjectsInRange:{v33, v32}];
  [v39 insertRowsAtIndexPaths:v38 withRowAnimation:0];
  [v39 deleteRowsAtIndexPaths:array2 withRowAnimation:0];
  [v39 endUpdates];
}

uint64_t __106__ICQLocalBackupController__updateTable_toMatchArray_withVisibleArray_maxVisible_inSection_withRowOffset___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 propertyForKey:*MEMORY[0x277D3FFB8]];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)animateAppSpecifierChanges
{
  selfCopy = self;
  v64 = *MEMORY[0x277D85DE8];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = self->_visibleAppSpecifiers;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v57 objects:v63 count:16];
  v51 = selfCopy;
  if (v3)
  {
    v4 = v3;
    v5 = *v58;
    v6 = *MEMORY[0x277D3FFB8];
    v7 = *MEMORY[0x277D40160];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v58 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v57 + 1) + 8 * i);
        appSpecifiers = selfCopy->_appSpecifiers;
        v11 = [v9 propertyForKey:v6];
        v12 = [(NSMutableArray *)appSpecifiers specifierForID:v11];

        if (v12)
        {
          v13 = [v12 propertyForKey:v7];
          v14 = [v9 propertyForKey:v7];
          v15 = [v13 isEqualToString:v14];

          if ((v15 & 1) == 0)
          {
            v16 = [v12 propertyForKey:v7];
            [v9 setProperty:v16 forKey:v7];

            [(ICQLocalBackupController *)v51 reloadSpecifier:v9 animated:0];
          }

          selfCopy = v51;
        }
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v4);
  }

  v56 = 0;
  [(ICQLocalBackupController *)selfCopy getGroup:&v56 row:0 ofSpecifierID:@"BACKED_UP_APPS"];
  if (selfCopy->_showAllPressed)
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v17 = 5;
  }

  v18 = [(ICQLocalBackupController *)selfCopy specifiersInGroup:v56];
  if (![v18 count])
  {
    [ICQLocalBackupController animateAppSpecifierChanges];
  }

  v19 = [v18 objectAtIndex:0];
  v20 = [(ICQLocalBackupController *)selfCopy indexOfSpecifier:v19];

  if ([(NSMutableArray *)selfCopy->_visibleAppSpecifiers count])
  {
    v21 = [(NSMutableArray *)selfCopy->_visibleAppSpecifiers objectAtIndex:0];
    v22 = [(ICQLocalBackupController *)selfCopy indexOfSpecifier:v21]+ ~v20;
  }

  else
  {
    v22 = [v18 count] - 1;
  }

  if ([v18 count] < 2)
  {
    v26 = 0;
    v24 = [(ICQLocalBackupController *)selfCopy indexOfGroup:v56]+ 1;
  }

  else
  {
    v23 = [v18 objectAtIndex:1];
    v24 = [(ICQLocalBackupController *)selfCopy indexOfSpecifier:v23];

    lastObject = [v18 lastObject];
    v26 = [(ICQLocalBackupController *)selfCopy indexOfSpecifier:lastObject]- v24 + 1;
  }

  [(ICQLocalBackupController *)selfCopy beginUpdates];
  v27 = [(ICQLocalBackupController *)selfCopy indexOfSpecifierID:@"SPINNER_CELL"];
  if (v27 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = v27;
    if (v27 > v20 && v27 < [v18 count] + v20)
    {
      v29 = v28 + ~v20;
      table = [(ICQLocalBackupController *)selfCopy table];
      v31 = [MEMORY[0x277CCAA70] indexPathForRow:v29 inSection:v56];
      v62 = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
      [table deleteRowsAtIndexPaths:v32 withRowAnimation:100];

      selfCopy = v51;
      v22 -= v22 > v29;
    }
  }

  table2 = [(ICQLocalBackupController *)selfCopy table];
  [(ICQLocalBackupController *)selfCopy _updateTable:table2 toMatchArray:selfCopy->_appSpecifiers withVisibleArray:selfCopy->_visibleAppSpecifiers maxVisible:v17 inSection:v56 withRowOffset:v22];

  v34 = [(NSMutableArray *)selfCopy->_visibleAppSpecifiers mutableCopy];
  v35 = [(ICQLocalBackupController *)selfCopy indexPathForIndex:[(ICQLocalBackupController *)selfCopy indexOfSpecifier:selfCopy->_showAllSpecifier]];
  v36 = [(NSMutableArray *)selfCopy->_visibleAppSpecifiers count];
  v37 = [(NSMutableArray *)selfCopy->_appSpecifiers count];
  if (v35 && v36 >= v37)
  {
    table3 = [(ICQLocalBackupController *)selfCopy table];
    v39 = [MEMORY[0x277CBEA60] arrayWithObject:v35];
    [table3 deleteRowsAtIndexPaths:v39 withRowAnimation:0];
  }

  else if (v36 < v37)
  {
    if (!v35)
    {
      table4 = [(ICQLocalBackupController *)selfCopy table];
      v41 = MEMORY[0x277CBEA60];
      v42 = [MEMORY[0x277CCAA70] indexPathForRow:5 inSection:v56];
      v43 = [v41 arrayWithObject:v42];
      [table4 insertRowsAtIndexPaths:v43 withRowAnimation:0];

      selfCopy = v51;
    }

    [v34 addObject:selfCopy->_showAllSpecifier];
  }

  specifiers = [(ICQLocalBackupController *)selfCopy specifiers];
  [specifiers replaceObjectsInRange:v24 withObjectsFromArray:{v26, v34}];

  [(ICQLocalBackupController *)selfCopy createGroupIndices];
  [(ICQLocalBackupController *)selfCopy endUpdates];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v45 = selfCopy->_appSpecifiers;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v53;
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v53 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [(ICQLocalBackupController *)selfCopy reloadSpecifier:*(*(&v52 + 1) + 8 * j)];
      }

      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v47);
  }
}

- (BOOL)beginScan
{
  if (self->_scanInProgress)
  {
    v2 = 0;
    v3 = 1;
  }

  else
  {
    backupManager = self->_backupManager;
    v11 = 0;
    v6 = [(MBManager *)backupManager startScanWithError:&v11];
    v2 = v11;
    if (!v6)
    {
      v7 = _ICQGetLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ICQLocalBackupController beginScan];
      }

      domain = [v2 domain];
      if ([domain isEqualToString:@"MBErrorDomain"])
      {
        code = [v2 code];

        if (code == 3)
        {
          v3 = 1;
          [(ICQLocalBackupController *)self setScanInProgress:1];
          goto LABEL_12;
        }
      }

      else
      {
      }

      v3 = 0;
      goto LABEL_12;
    }

    v3 = 1;
    [(ICQLocalBackupController *)self setScanInProgress:1];
    self->_shouldCancelScanOnExit = 1;
  }

LABEL_12:

  return v3;
}

- (void)updateAppSpecifiersScanWhenComplete:(BOOL)complete
{
  v5 = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__ICQLocalBackupController_updateAppSpecifiersScanWhenComplete___block_invoke;
  v6[3] = &unk_27A65A930;
  v6[4] = self;
  completeCopy = complete;
  dispatch_async(v5, v6);
}

void __64__ICQLocalBackupController_updateAppSpecifiersScanWhenComplete___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1456) domainInfoList];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ICQLocalBackupController_updateAppSpecifiersScanWhenComplete___block_invoke_2;
  block[3] = &unk_27A65A7D0;
  block[4] = *(a1 + 32);
  v5 = v2;
  v6 = *(a1 + 40);
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__ICQLocalBackupController_updateAppSpecifiersScanWhenComplete___block_invoke_2(uint64_t a1)
{
  obj = [*(a1 + 32) loadAppSpecifiersWithDomainInfo:*(a1 + 40)];
  if ([obj count] || (*(a1 + 48) & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 1464), obj);
    [*(a1 + 32) animateAppSpecifierChanges];
    v2 = [*(a1 + 32) specifierForID:@"BACKED_UP_APPS"];
    v3 = [v2 propertyForKey:*MEMORY[0x277D3FFB0]];

    if (*(a1 + 48) == 1)
    {
      if ([*(a1 + 32) beginScan])
      {
        [v3 showSpinner];
      }
    }

    else
    {
      [v3 hideSpinner];
    }

    [*(a1 + 32) updateNextBackupSize];
  }

  else
  {
    [*(a1 + 32) beginScan];
  }
}

- (void)insertDeleteBackupButtonIfNeeded:(BOOL)needed
{
  if (self->_deviceBackup)
  {
    neededCopy = needed;
    v5 = [(ICQLocalBackupController *)self specifierForID:@"DELETE_BACKUP"];

    if (!v5)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DELETE_BACKUP_BUTTON_GROUP"];
      v7 = @"DELETE_BACKUP_AND_TURN_OFF_BACKUP";
      if (!neededCopy)
      {
        v7 = @"DELETE_BACKUP";
      }

      v8 = MEMORY[0x277D3FAD8];
      v9 = MEMORY[0x277CCA8D8];
      v10 = v7;
      v11 = [v9 bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:v10 value:&stru_28844FC60 table:@"BackupInfo"];

      v13 = [v8 deleteButtonSpecifierWithName:v12 target:self action:sel_firstDeleteConfirmation_];

      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"DELETE_BACKUP_FOOTER" value:&stru_28844FC60 table:@"BackupInfo"];
      [v6 setObject:v15 forKeyedSubscript:*MEMORY[0x277D3FF88]];

      [v16 addObject:v6];
      [v16 addObject:v13];
      -[ICQLocalBackupController insertContiguousSpecifiers:atIndex:animated:](self, "insertContiguousSpecifiers:atIndex:animated:", v16, [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) count], 1);
    }
  }
}

- (void)firstDeleteConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DELETE_BACKUP_TITLE" value:&stru_28844FC60 table:@"BackupInfo"];

  if ([(MBManager *)self->_backupManager isBackupEnabled])
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"TURN_OFF_ALL_AND_DELETE"];
    v9 = [v7 localizedStringForKey:v8 value:&stru_28844FC60 table:@"BackupInfo"];
    v10 = @"TURN_OFF_AND_DELETE";
  }

  else
  {
    v11 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"DELETE_BACKUP_PROMPT" value:&stru_28844FC60 table:@"BackupInfo"];
    v9 = [v11 localizedStringWithFormat:v8, self->_deviceName];
    v10 = @"DELETE_BACKUP";
  }

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:v10 value:&stru_28844FC60 table:@"BackupInfo"];

  v14 = MEMORY[0x277CCA8D8];
  v15 = v13;
  v16 = v9;
  v17 = v6;
  v18 = [v14 bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"CANCEL" value:&stru_28844FC60 table:@"BackupInfo"];

  v20 = [MEMORY[0x277D75110] sheetAlertControllerWithTitle:v17 message:v16];

  v21 = [(ICQLocalBackupController *)self cachedCellForSpecifier:confirmationCopy];
  popoverPresentationController = [v20 popoverPresentationController];
  [popoverPresentationController setSourceItem:v21];

  v23 = MEMORY[0x277D750F8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __52__ICQLocalBackupController_firstDeleteConfirmation___block_invoke;
  v27[3] = &unk_27A65A848;
  v27[4] = self;
  v28 = confirmationCopy;
  v24 = confirmationCopy;
  v25 = [v23 actionWithTitle:v15 style:2 handler:v27];

  v26 = [MEMORY[0x277D750F8] actionWithTitle:v19 style:1 handler:&__block_literal_global_239];
  [v20 addAction:v25];
  [v20 addAction:v26];
  [(ICQLocalBackupController *)self presentViewController:v20 animated:1 completion:0];
}

- (void)secondDeleteConfirmationWithSender:(id)sender
{
  v4 = MEMORY[0x277CCA8D8];
  senderCopy = sender;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SECOND_DELETE_BACKUP_TITLE" value:&stru_28844FC60 table:@"BackupInfo"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SECOND_DELETE_BACKUP_PROMPT" value:&stru_28844FC60 table:@"BackupInfo"];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"SECOND_DELETE_BACKUP_ACTION" value:&stru_28844FC60 table:@"BackupInfo"];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CANCEL" value:&stru_28844FC60 table:@"BackupInfo"];

  v14 = [MEMORY[0x277D75110] sheetAlertControllerWithTitle:v7 message:v9];
  v15 = [(ICQLocalBackupController *)self cachedCellForSpecifier:senderCopy];

  popoverPresentationController = [v14 popoverPresentationController];
  [popoverPresentationController setSourceItem:v15];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__ICQLocalBackupController_secondDeleteConfirmationWithSender___block_invoke;
  v19[3] = &unk_27A65B1A0;
  v19[4] = self;
  v17 = [MEMORY[0x277D750F8] actionWithTitle:v11 style:2 handler:v19];
  v18 = [MEMORY[0x277D750F8] actionWithTitle:v13 style:1 handler:&__block_literal_global_250];
  [v14 addAction:v17];
  [v14 addAction:v18];
  [(ICQLocalBackupController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)managerDidFinishScan:(id)scan
{
  if (self->_scanInProgress)
  {
    [(ICQLocalBackupController *)self setScanInProgress:0];

    [(ICQLocalBackupController *)self updateAppSpecifiersScanWhenComplete:0];
  }
}

- (void)manager:(id)manager didFailScanWithError:(id)error
{
  errorCopy = error;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ICQLocalBackupController manager:didFailScanWithError:];
  }

  if (self->_scanInProgress && [errorCopy code] != 202)
  {
    [(ICQLocalBackupController *)self setScanInProgress:0];
    v7 = [(ICQLocalBackupController *)self specifierForID:@"BACKED_UP_APPS"];
    v8 = [v7 propertyForKey:*MEMORY[0x277D3FFB0]];

    [v8 hideSpinner];
  }
}

+ (id)currentDeviceBackupWithMBManager:(id)manager filtering:(BOOL)filtering error:(id *)error
{
  filteringCopy = filtering;
  v31 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v8 = objc_opt_new();
  backupDeviceUUID = [v8 backupDeviceUUID];

  v29 = 0;
  v10 = [managerCopy getBackupListWithFiltering:filteringCopy error:&v29];
  v11 = v29;
  if (v10)
  {
    v24 = managerCopy;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          backupUUID = [v17 backupUUID];
          v19 = [backupUUID isEqualToString:backupDeviceUUID];

          if (v19)
          {
            v20 = v17;

            goto LABEL_12;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v20 = 0;
LABEL_12:
    managerCopy = v24;
  }

  else
  {
    v21 = _ICQGetLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[ICQLocalBackupController currentDeviceBackupWithMBManager:filtering:error:];
    }

    if (error)
    {
      v22 = v11;
      v20 = 0;
      *error = v11;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (id)currentDeviceBackup
{
  v3 = self->_deviceBackup;
  objc_sync_enter(v3);
  deviceBackup = self->_deviceBackup;
  if (!deviceBackup)
  {
    v5 = [objc_opt_class() currentDeviceBackupWithMBManager:self->_backupManager filtering:0 error:0];
    v6 = self->_deviceBackup;
    self->_deviceBackup = v5;

    dateOfLastBackup = [(MBManager *)self->_backupManager dateOfLastBackup];
    v8 = [dateOfLastBackup copy];
    dateOfLastBackup = self->_dateOfLastBackup;
    self->_dateOfLastBackup = v8;

    self->_doneLoadingDeviceBackup = 1;
    deviceBackup = self->_deviceBackup;
  }

  v10 = deviceBackup;
  objc_sync_exit(v3);

  return v10;
}

+ (id)cellValueStyleDateStringForDate:(id)date
{
  dateCopy = date;
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [dateCopy isTodayWithCalendar:currentCalendar];

  [v4 setDoesRelativeDateFormatting:1];
  [v4 setTimeStyle:v6];
  [v4 setDateStyle:1];
  v7 = [v4 stringFromDate:dateCopy];

  return v7;
}

+ (id)dateStringForSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  state = [snapshotCopy state];
  if (state == 2)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    date = v8;
    v9 = @"INCOMPLETE";
  }

  else
  {
    if (state == 3)
    {
      v5 = objc_opt_class();
      date = [snapshotCopy date];
      v7 = [v5 cellValueStyleDateStringForDate:date];
      goto LABEL_7;
    }

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    date = v8;
    v9 = @"NEVER";
  }

  v7 = [v8 localizedStringForKey:v9 value:&stru_28844FC60 table:@"BackupInfo"];
LABEL_7:
  v10 = v7;

  return v10;
}

- (id)dateStringOfLatestBackup
{
  if (self->_doneLoadingDeviceBackup)
  {
    if (self->_dateOfLastBackup)
    {
      v2 = [objc_opt_class() cellValueStyleDateStringForDate:self->_dateOfLastBackup];
      goto LABEL_10;
    }

    snapshots = [(MBBackup *)self->_deviceBackup snapshots];
    lastObject = [snapshots lastObject];
    if ([lastObject state] == 3)
    {
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v2 = [v5 localizedStringForKey:@"NEVER" value:&stru_28844FC60 table:@"BackupInfo"];
    }

    else
    {
      v2 = [objc_opt_class() dateStringForSnapshot:lastObject];
    }
  }

  else
  {
    snapshots = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = [snapshots localizedStringForKey:@"LOADING" value:&stru_28844FC60 table:@"BackupInfo"];
  }

LABEL_10:

  return v2;
}

- (id)nextBackupSizeStringWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_doneLoadingDeviceBackup)
  {
    nextBackupSizeString = self->_nextBackupSizeString;
    if (nextBackupSizeString)
    {
      v6 = nextBackupSizeString;
      goto LABEL_6;
    }

    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__ICQLocalBackupController_nextBackupSizeStringWithSpecifier___block_invoke;
    block[3] = &unk_27A65A820;
    block[4] = self;
    dispatch_async(v7, block);
  }

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v8 localizedStringForKey:@"LOADING" value:&stru_28844FC60 table:@"BackupInfo"];

LABEL_6:

  return v6;
}

void __62__ICQLocalBackupController_nextBackupSizeStringWithSpecifier___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1456) nextBackupSizeInfo];
  if ([v2 state] == 2)
  {
    v3 = [v2 size];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __62__ICQLocalBackupController_nextBackupSizeStringWithSpecifier___block_invoke_2;
    v4[3] = &unk_27A65B1C8;
    v4[4] = *(a1 + 32);
    v4[5] = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

void __62__ICQLocalBackupController_nextBackupSizeStringWithSpecifier___block_invoke_2(uint64_t a1)
{
  v5 = [MEMORY[0x277CCA8E8] stringFromByteCount:*(a1 + 40) countStyle:1];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"+%@", v5];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1552);
  *(v3 + 1552) = v2;

  [*(a1 + 32) reloadSpecifier:*(*(a1 + 32) + 1496)];
}

- (void)updateNextBackupSize
{
  nextBackupSizeString = self->_nextBackupSizeString;
  self->_nextBackupSizeString = 0;

  nextBackupSizeSpecifier = self->_nextBackupSizeSpecifier;

  [(ICQLocalBackupController *)self reloadSpecifier:nextBackupSizeSpecifier];
}

- (id)backupSizeString
{
  v2 = MEMORY[0x277CCA8E8];
  backupSize = [(ICQLocalBackupController *)self backupSize];

  return [v2 stringFromByteCount:backupSize countStyle:1];
}

- (void)reloadAfterFetch
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = *MEMORY[0x277D40148];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 cellType])
        {
          v9 = [v8 propertyForKey:v6];

          if (v9)
          {
            v10 = [v8 propertyForKey:v6];
            [v10 refreshCellContentsWithSpecifier:v8];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)loadQuotaInfo
{
  v3 = +[ICQQuotaRequestManager sharedManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__ICQLocalBackupController_loadQuotaInfo__block_invoke;
  v4[3] = &unk_27A65B1F0;
  v4[4] = self;
  [v3 getQuotaInfoDetailed:0 handler:v4];
}

- (void)reloadQuotaInfo
{
  [(ICQLocalBackupController *)self loadQuotaInfo];
  self->_manageStorageReloadNeeded = 1;
  self->_doneLoadingDeviceBackup = 0;
  [(ICQLocalBackupController *)self reloadSpecifierID:@"BACKUP_SIZE"];
  [(ICQLocalBackupController *)self reloadSpecifierID:@"LATEST_BACKUP"];
  [(ICQLocalBackupController *)self updateNextBackupSize];
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ICQLocalBackupController_reloadQuotaInfo__block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(v3, block);
}

void __43__ICQLocalBackupController_reloadQuotaInfo__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) reloadBackupInfoWithDeleteButton:0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 1456) domainInfoList];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) remoteSize];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__ICQLocalBackupController_reloadQuotaInfo__block_invoke_2;
  v8[3] = &unk_27A65B1C8;
  v8[4] = *(a1 + 32);
  v8[5] = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

uint64_t __43__ICQLocalBackupController_reloadQuotaInfo__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setBackupSize:*(a1 + 40)];
  [*(a1 + 32) reloadSpecifierID:@"BACKUP_SIZE"];
  [*(a1 + 32) reloadSpecifierID:@"LATEST_BACKUP"];
  v2 = *(a1 + 32);

  return [v2 updateNextBackupSize];
}

- (void)reloadBackupInfoWithDeleteButton:(BOOL)button
{
  deviceBackup = self->_deviceBackup;
  self->_deviceBackup = 0;

  dateOfLastBackup = self->_dateOfLastBackup;
  self->_dateOfLastBackup = 0;

  v7 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__ICQLocalBackupController_reloadBackupInfoWithDeleteButton___block_invoke;
  v8[3] = &unk_27A65A930;
  v8[4] = self;
  buttonCopy = button;
  dispatch_async(v7, v8);
}

void __61__ICQLocalBackupController_reloadBackupInfoWithDeleteButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentDeviceBackup];
  v3 = [*(*(a1 + 32) + 1456) isBackupEnabled];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__ICQLocalBackupController_reloadBackupInfoWithDeleteButton___block_invoke_2;
  v4[3] = &unk_27A65B218;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

uint64_t __61__ICQLocalBackupController_reloadBackupInfoWithDeleteButton___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) reloadAfterFetch];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 41);

    return [v3 insertDeleteBackupButtonIfNeeded:v4];
  }

  return result;
}

- (id)specifiers
{
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v38 = *MEMORY[0x277D3FC48];
    appSpecifiers = self->_appSpecifiers;
    self->_appSpecifiers = 0;

    nextBackupSizeString = self->_nextBackupSizeString;
    self->_nextBackupSizeString = 0;

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:0];
    v37 = *MEMORY[0x277D3FFB8];
    [v7 setProperty:@"BACKUP_INFO_GROUP" forKey:?];
    isBackupEnabled = [(MBManager *)self->_backupManager isBackupEnabled];
    v9 = MEMORY[0x277D3FF88];
    if ((isBackupEnabled & 1) == 0)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"DEVICE_BACKUP_TURNED_OFF_FOOTER" value:&stru_28844FC60 table:@"BackupInfo"];
      [v7 setObject:v11 forKeyedSubscript:*v9];
    }

    [v6 addObject:v7];
    v12 = MEMORY[0x277D3FAD8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"LATEST_BACKUP" value:&stru_28844FC60 table:@"BackupInfo"];
    v15 = [v12 preferenceSpecifierNamed:v14 target:self set:0 get:sel_dateStringOfLatestBackup detail:0 cell:4 edit:0];

    v16 = objc_opt_class();
    v17 = *MEMORY[0x277D3FE58];
    [v15 setProperty:v16 forKey:*MEMORY[0x277D3FE58]];
    v39 = v15;
    [v6 addObject:v15];
    v18 = MEMORY[0x277D3FAD8];
    v19 = v6;
    v20 = v7;
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"BACKUP_SIZE" value:&stru_28844FC60 table:@"BackupInfo"];
    v23 = [v18 preferenceSpecifierNamed:v22 target:self set:0 get:sel_backupSizeString detail:0 cell:4 edit:0];

    [v23 setProperty:objc_opt_class() forKey:v17];
    [v6 addObject:v23];
    restoreState = [(MBManager *)self->_backupManager restoreState];
    LODWORD(v17) = [restoreState state];

    if ((v17 - 1) >= 2)
    {
      if ([(MBManager *)self->_backupManager isBackupEnabled])
      {
        [v6 addObject:self->_nextBackupSizeSpecifier];
      }

      v29 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:0];
      [v29 setProperty:@"BACKED_UP_APPS" forKey:v37];
      [v29 setProperty:@"LocalBackupHeaderView" forKey:*MEMORY[0x277D3FFA0]];
      [v6 addObject:v29];
      v19 = v6;
      v30 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28844FC60 target:0 set:0 get:0 detail:0 cell:15 edit:0];
      [v30 setProperty:@"SPINNER_CELL" forKey:v37];
      [v6 addObject:v30];
      [(NSMutableArray *)self->_visibleAppSpecifiers removeAllObjects];
      [(ICQLocalBackupController *)self reloadBackupInfoWithDeleteButton:1];
      [(ICQLocalBackupController *)self updateAppSpecifiersScanWhenComplete:1];
      v28 = v38;
      if ([objc_opt_class() isiCloudPhotosEnabled] && (-[ACAccount aa_isManagedAppleID](self->_account, "aa_isManagedAppleID") & 1) == 0)
      {
        v31 = _ICQGetLogSystem();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [(ICQLocalBackupController *)v31 specifiers];
        }

        if ([(MBManager *)self->_backupManager isBackupEnabled])
        {
          v32 = @"ICLOUD_PHOTOS_ACTIVE_BACKUP_FOOTER_TEXT";
        }

        else
        {
          v32 = @"ICLOUD_PHOTOS_INACTIVE_BACKUP_FOOTER_TEXT";
        }

        v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v34 = [v33 localizedStringForKey:v32 value:&stru_28844FC60 table:@"BackupInfo"];
        [v29 setProperty:v34 forKey:*MEMORY[0x277D3FF88]];
      }
    }

    else
    {
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"RESTORE_INCOMPLETE"];
      v27 = [v25 localizedStringForKey:v26 value:&stru_28844FC60 table:@"BackupInfo"];
      [v20 setProperty:v27 forKey:*MEMORY[0x277D3FF88]];

      [(ICQLocalBackupController *)self reloadBackupInfoWithDeleteButton:0];
      v28 = v38;
    }

    v35 = *(&self->super.super.super.super.super.isa + v28);
    *(&self->super.super.super.super.super.isa + v28) = v19;

    v3 = *(&self->super.super.super.super.super.isa + v28);
  }

  return v3;
}

- (void)startDeletionBezel
{
  navigationController = [(ICQLocalBackupController *)self navigationController];
  view = [navigationController view];
  [view bounds];
  v6 = v5;
  v8 = v7;

  v9 = (v6 + -156.0) * 0.5;
  v10 = floorf(v9);
  v11 = (v8 + -126.0) * 0.5;
  v12 = floorf(v11);
  navigationController2 = [(ICQLocalBackupController *)self navigationController];
  view2 = [navigationController2 view];
  view3 = [(ICQLocalBackupController *)self view];
  [view2 convertRect:view3 toView:{v10, v12, 156.0, 126.0}];
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

  view4 = [(ICQLocalBackupController *)self view];
  [view4 addSubview:self->_deletionBezel];

  view5 = [(ICQLocalBackupController *)self view];
  window = [view5 window];
  [window setUserInteractionEnabled:0];
}

- (void)endDeletionBezel
{
  view = [(ICQLocalBackupController *)self view];
  window = [view window];
  [window setUserInteractionEnabled:1];

  [(ICQSpinnerBezel *)self->_deletionBezel removeFromSuperview];
  deletionBezel = self->_deletionBezel;
  self->_deletionBezel = 0;
}

- (void)_backupDeletionSuccess
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Backup deletion completed sucessfully.", v7, 2u);
  }

  [(ICQLocalBackupController *)self endDeletionBezel];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"BackupInfoDidChange" object:0];

  navigationController = [(ICQLocalBackupController *)self navigationController];
  v6 = [navigationController popViewControllerAnimated:1];
}

- (void)deleteBackupConfirmed
{
  [(ICQLocalBackupController *)self startDeletionBezel];
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ICQLocalBackupController_deleteBackupConfirmed__block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(v3, block);
}

void __49__ICQLocalBackupController_deleteBackupConfirmed__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1512) backupUDID];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1512);
  if (v4)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    __49__ICQLocalBackupController_deleteBackupConfirmed__block_invoke_cold_1();
  }

  v6 = v2;
  if (v4)
  {
    v7 = *(v3 + 1456);
    v14 = 0;
    v8 = [v7 deleteBackupUDID:v6 error:&v14];
    v9 = v14;
  }

  else
  {
    v9 = 0;
    v8 = 1;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__ICQLocalBackupController_deleteBackupConfirmed__block_invoke_2;
  v11[3] = &unk_27A65A7D0;
  v13 = v8;
  v11[4] = *(a1 + 32);
  v12 = v9;
  v10 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __49__ICQLocalBackupController_deleteBackupConfirmed__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v3 = *(v2 + 1592);
    if (v3)
    {
      [v3 setDelegate:?];
      v4 = *(*(a1 + 32) + 1592);
      v21 = +[ICQCloudStorageInfo backupInfoHeaders];
      [v4 popAndReloadFromRemoteUI:0 additionalHeaders:v21];
    }

    else
    {

      [v2 _backupDeletionSuccess];
    }
  }

  else
  {
    *(v2 + 1602) = 1;
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __49__ICQLocalBackupController_deleteBackupConfirmed__block_invoke_2_cold_1();
    }

    [*(a1 + 32) endDeletionBezel];
    v6 = [*(a1 + 40) domain];
    v7 = @"CANNOT_DELETE_BACKUP_DETAILS";
    if ([v6 isEqualToString:@"MBErrorDomain"] && objc_msgSend(*(a1 + 40), "code") == 13)
    {
      v7 = @"CANNOT_DELETE_BACKUP_LOCKED";
    }

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v8 localizedStringForKey:v7 value:&stru_28844FC60 table:@"BackupInfo"];

    v9 = MEMORY[0x277D75110];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"CANNOT_DELETE_BACKUP" value:&stru_28844FC60 table:@"BackupInfo"];
    v12 = [v9 alertControllerWithTitle:v11 message:v22 preferredStyle:1];

    v13 = MEMORY[0x277D750F8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"TRY_AGAIN" value:&stru_28844FC60 table:@"BackupInfo"];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __49__ICQLocalBackupController_deleteBackupConfirmed__block_invoke_302;
    v23[3] = &unk_27A65B1A0;
    v23[4] = *(a1 + 32);
    v16 = [v13 actionWithTitle:v15 style:0 handler:v23];
    [v12 addAction:v16];

    v17 = MEMORY[0x277D750F8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"OK" value:&stru_28844FC60 table:@"BackupInfo"];
    v20 = [v17 actionWithTitle:v19 style:1 handler:0];
    [v12 addAction:v20];

    [*(a1 + 32) presentViewController:v12 animated:1 completion:0];
  }
}

- (void)loadFailed:(id)failed withError:(id)error
{
  [(ICQLocalBackupController *)self endDeletionBezel:failed];
  navigationController = [(ICQLocalBackupController *)self navigationController];
  v5 = [navigationController popViewControllerAnimated:1];
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(ICQLocalBackupController *)self specifierAtIndex:[(ICQLocalBackupController *)self indexForIndexPath:pathCopy]];
  identifier = [v6 identifier];

  v8 = [(ICQLocalBackupController *)self specifierAtIndex:[(ICQLocalBackupController *)self indexForIndexPath:pathCopy]];
  v9 = [(ICQLocalBackupController *)self getGroupSpecifierForSpecifier:v8];

  if (([identifier isEqualToString:@"SHOW_ALL_APPS"] & 1) != 0 || (objc_msgSend(v9, "identifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"DELETE_BACKUP_BUTTON_GROUP"), v10, v11))
  {
    v12 = pathCopy;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8.receiver = self;
  v8.super_class = ICQLocalBackupController;
  [(ICQLocalBackupController *)&v8 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v19.receiver = self;
  v19.super_class = ICQLocalBackupController;
  v6 = [(ICQLocalBackupController *)&v19 tableView:view viewForHeaderInSection:?];
  additionalSpaceRequiredString = [(ICQLocalBackupController *)self additionalSpaceRequiredString];

  if (additionalSpaceRequiredString)
  {
    v8 = [(ICQLocalBackupController *)self specifierForID:@"BACKED_UP_APPS"];
    v18 = 0;
    [(ICQLocalBackupController *)self getGroup:&v18 row:0 ofSpecifier:v8];
    if (v18 == section)
    {
      v9 = [v8 propertyForKey:*MEMORY[0x277D3FFB0]];
      addSubtitle = [v9 subtitleAtIndex:1];
      if (!addSubtitle)
      {
        addSubtitle = [v9 addSubtitle];
      }

      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"ADDITONAL_SPACE_NEEDED"];
      v14 = [v12 localizedStringForKey:v13 value:&stru_28844FC60 table:@"BackupInfo"];
      additionalSpaceRequiredString2 = [(ICQLocalBackupController *)self additionalSpaceRequiredString];
      v16 = [v11 stringWithFormat:v14, additionalSpaceRequiredString2];
      [addSubtitle setText:v16];
    }
  }

  return v6;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v26[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  if ([MEMORY[0x277D3FA48] instancesRespondToSelector:sel_tableView_willDisplayCell_forRowAtIndexPath_])
  {
    v25.receiver = self;
    v25.super_class = ICQLocalBackupController;
    [(ICQLocalBackupController *)&v25 tableView:viewCopy willDisplayCell:cellCopy forRowAtIndexPath:pathCopy];
  }

  v11 = [(ICQLocalBackupController *)self specifierAtIndex:[(ICQLocalBackupController *)self indexForIndexPath:pathCopy]];
  identifier = [v11 identifier];
  v13 = [identifier isEqualToString:@"SHOW_ALL_APPS"];

  if (v13)
  {
    [cellCopy setIndentationLevel:1];
    [cellCopy setIndentationWidth:36.0];
  }

  else
  {
    identifier2 = [v11 identifier];
    v15 = [identifier2 isEqualToString:@"NEXT_BACKUP_SIZE"];

    if (v15)
    {
      additionalSpaceRequiredString = [(ICQLocalBackupController *)self additionalSpaceRequiredString];

      if (additionalSpaceRequiredString)
      {
        v17 = MEMORY[0x277D755D0];
        systemRedColor = [MEMORY[0x277D75348] systemRedColor];
        v26[0] = systemRedColor;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
        v20 = [v17 configurationWithPaletteColors:v19];

        v21 = [MEMORY[0x277D755B8] _systemImageNamed:@"exclamationmark.circle" withConfiguration:v20];
        v22 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v21];
        [cellCopy setAccessoryView:v22];
      }
    }
  }

  v23 = [v11 propertyForKey:*MEMORY[0x277D40160]];
  if (v23)
  {
    detailTextLabel = [cellCopy detailTextLabel];
    [detailTextLabel setText:v23];
  }
}

@end