@interface ICQDeviceBackupSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (BOOL)handleURL:(id)a3;
- (ICQDeviceBackupSpecifierProvider)initWithAccount:(id)a3 presenter:(id)a4;
- (ICQDeviceBackupSpecifierProvider)initWithAccountManager:(id)a3;
- (NSArray)specifiers;
- (id)_backupDevicesSpecififers:(id)a3;
- (id)_valueForBackUpDevice:(id)a3;
- (void)_fetchBackupInfo;
- (void)_handleLocalDeviceDeeplink;
- (void)_reloadSpecifiers;
- (void)_startObservingBackupChanges;
- (void)dealloc;
- (void)loadFailed:(id)a3 withError:(id)a4;
- (void)loadFinished:(id)a3;
- (void)loadStarted:(id)a3;
@end

@implementation ICQDeviceBackupSpecifierProvider

- (ICQDeviceBackupSpecifierProvider)initWithAccountManager:(id)a3
{
  v4 = [a3 accounts];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];
  v6 = [(ICQDeviceBackupSpecifierProvider *)self initWithAccount:v5 presenter:0];

  return v6;
}

- (ICQDeviceBackupSpecifierProvider)initWithAccount:(id)a3 presenter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICQDeviceBackupSpecifierProvider;
  v9 = [(ICQDeviceBackupSpecifierProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeWeak(&v10->_listController, v8);
    v10->_isBackupRequestInProgress = 0;
    [(ICQDeviceBackupSpecifierProvider *)v10 _fetchBackupInfo];
    [(ICQDeviceBackupSpecifierProvider *)v10 _startObservingBackupChanges];
  }

  return v10;
}

- (void)dealloc
{
  if (self->_backupChangesNotificationObserver)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_backupChangesNotificationObserver name:@"BackupInfoDidChange" object:0];

    backupChangesNotificationObserver = self->_backupChangesNotificationObserver;
    self->_backupChangesNotificationObserver = 0;
  }

  v5.receiver = self;
  v5.super_class = ICQDeviceBackupSpecifierProvider;
  [(ICQDeviceBackupSpecifierProvider *)&v5 dealloc];
}

- (NSArray)specifiers
{
  v19[2] = *MEMORY[0x277D85DE8];
  specifiers = self->_specifiers;
  if (specifiers)
  {
    v3 = specifiers;
    goto LABEL_9;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  backupInfo = self->_backupInfo;
  if (backupInfo)
  {
    v7 = [(ICQBackupInfo *)backupInfo deviceGroups];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46__ICQDeviceBackupSpecifierProvider_specifiers__block_invoke;
    v16[3] = &unk_27A65AC38;
    v8 = v5;
    v17 = v8;
    v18 = self;
    [v7 enumerateObjectsUsingBlock:v16];

    v9 = [v8 copy];
    v10 = self->_specifiers;
    self->_specifiers = v9;

    v11 = v17;
LABEL_7:

    goto LABEL_8;
  }

  if (self->_isBackupRequestInProgress)
  {
    v11 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"BACKUP_DEVICES_GROUP"];
    v19[0] = v11;
    v12 = [(ICQDeviceBackupSpecifierProvider *)self _specifierForSpinner];
    v19[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v14 = self->_specifiers;
    self->_specifiers = v13;

    goto LABEL_7;
  }

LABEL_8:
  v3 = self->_specifiers;

LABEL_9:

  return v3;
}

void __46__ICQDeviceBackupSpecifierProvider_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 backupDevices];
  v4 = [v3 count];

  if (v4)
  {
    v5 = MEMORY[0x277D3FAD8];
    v6 = [v13 sectionHeader];
    v7 = [v5 groupSpecifierWithID:@"BACKUP_DEVICES_GROUP" name:v6];

    v8 = [v13 sectionFooter];
    v9 = *MEMORY[0x277D3FF88];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    v10 = [v13 sectionFooter];
    [v7 setProperty:v10 forKey:v9];

    [*(a1 + 32) addObject:v7];
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) _backupDevicesSpecififers:v13];
    [v11 addObjectsFromArray:v12];
  }
}

- (id)_backupDevicesSpecififers:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 backupDevices];

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __62__ICQDeviceBackupSpecifierProvider__backupDevicesSpecififers___block_invoke;
  v14 = &unk_27A65AC60;
  v15 = self;
  v16 = v6;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:&v11];

  v9 = [v8 copy];

  return v9;
}

void __62__ICQDeviceBackupSpecifierProvider__backupDevicesSpecififers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isLocalBackup];
  v5 = off_27A658AB0;
  if (v4)
  {
    v5 = off_27A658A38;
  }

  v11 = [(__objc2_class *)*v5 specifierForAccount:*(*(a1 + 32) + 8)];
  v6 = [v3 rawDictionary];
  [v11 setProperty:v6 forKey:@"attributes"];

  [v11 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
  v7 = [v3 imageURL];
  v8 = [_ICQUIHelperFunctions scaledImageURL:v7];
  [v11 setProperty:v8 forKey:*MEMORY[0x277D40030]];

  [v11 setObject:*(*(a1 + 32) + 8) forKeyedSubscript:@"ICQUISpecifierKeyAccount"];
  [v11 setTarget:v3];
  [v11 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  v9 = [v3 deviceName];
  [v11 setObject:v9 forKeyedSubscript:*MEMORY[0x277D40170]];

  [v11 setCellType:1];
  v10 = [v3 deviceSubtitle];
  [v11 setObject:v10 forKeyedSubscript:*MEMORY[0x277D40160]];

  [v11 setTarget:v3];
  [*(a1 + 40) addObject:v11];
}

- (id)_valueForBackUpDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 target];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && ([v3 target], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [v6 storageUsedLabel];
  }

  else
  {
    v8 = &stru_28844FC60;
  }

  return v8;
}

- (void)_fetchBackupInfo
{
  self->_isBackupRequestInProgress = 1;
  v3 = [objc_alloc(MEMORY[0x277D7F338]) initWithAccount:self->_account];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__ICQDeviceBackupSpecifierProvider__fetchBackupInfo__block_invoke;
  v4[3] = &unk_27A65AC88;
  v4[4] = self;
  [v3 fetchBackupinfoWithCompletion:v4];
}

void __52__ICQDeviceBackupSpecifierProvider__fetchBackupInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  *(*(a1 + 32) + 40) = 0;
  if (v7)
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __52__ICQDeviceBackupSpecifierProvider__fetchBackupInfo__block_invoke_cold_1(v7, v8);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 24), a2);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ICQDeviceBackupSpecifierProvider__fetchBackupInfo__block_invoke_56;
  block[3] = &unk_27A65A820;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void *__52__ICQDeviceBackupSpecifierProvider__fetchBackupInfo__block_invoke_56(uint64_t a1)
{
  [*(a1 + 32) _reloadSpecifiers];
  result = *(a1 + 32);
  if (result[6])
  {

    return [result _handleLocalDeviceDeeplink];
  }

  return result;
}

- (void)_reloadSpecifiers
{
  v5 = [(NSArray *)self->_specifiers copy];
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  WeakRetained = objc_loadWeakRetained(&self->_listController);
  [WeakRetained reloadSpecifiersForProvider:self oldSpecifiers:v5 animated:1];
}

- (void)loadStarted:(id)a3
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Backup info RUI view loading started.", v4, 2u);
  }
}

- (void)loadFinished:(id)a3
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Backup info RUI view load finished with success.", v4, 2u);
  }
}

- (void)loadFailed:(id)a3 withError:(id)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Backup info RUI view load failed with error: %@", &v6, 0xCu);
  }
}

- (void)_startObservingBackupChanges
{
  if (!self->_backupChangesNotificationObserver)
  {
    objc_initWeak(&location, self);
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = [MEMORY[0x277CCABD8] mainQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__ICQDeviceBackupSpecifierProvider__startObservingBackupChanges__block_invoke;
    v7[3] = &unk_27A65ACB0;
    objc_copyWeak(&v8, &location);
    v5 = [v3 addObserverForName:@"BackupInfoDidChange" object:0 queue:v4 usingBlock:v7];
    backupChangesNotificationObserver = self->_backupChangesNotificationObserver;
    self->_backupChangesNotificationObserver = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __64__ICQDeviceBackupSpecifierProvider__startObservingBackupChanges__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = @"BackupInfoDidChange";
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "Received notification: %@", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchBackupInfo];
}

- (BOOL)handleURL:(id)a3
{
  v4 = [a3 copy];
  resourceDictionary = self->_resourceDictionary;
  self->_resourceDictionary = v4;

  if (self->_isBackupRequestInProgress)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Backup info request is in progress, will handle deeplink a bit later.", buf, 2u);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__ICQDeviceBackupSpecifierProvider_handleURL___block_invoke;
    block[3] = &unk_27A65A820;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return 1;
}

- (void)_handleLocalDeviceDeeplink
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(NSDictionary *)self->_resourceDictionary objectForKeyedSubscript:@"path"];
  if (([v3 containsString:@"CURRENT_DEVICE_BACKUP"] & 1) != 0 || objc_msgSend(v3, "containsString:", @"LOCAL_BACKUP"))
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Opening local backup view.", &v11, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_listController);
    v6 = [WeakRetained specifierForID:@"CURRENT_DEVICE_BACKUP"];

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_listController);
      v8 = [v7 controllerForSpecifier:v6];

      v9 = objc_loadWeakRetained(&self->_listController);
      [v9 showController:v8 animate:1];
    }

    else
    {
      v8 = _ICQGetLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ICQDeviceBackupSpecifierProvider *)v8 _handleLocalDeviceDeeplink];
      }
    }
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Backup VC unable to handle this url: %@", &v11, 0xCu);
    }
  }

  resourceDictionary = self->_resourceDictionary;
  self->_resourceDictionary = 0;
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __52__ICQDeviceBackupSpecifierProvider__fetchBackupInfo__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch backup info with error: %@", &v2, 0xCu);
}

@end