@interface ICQCloudStorageGroupController
- (BOOL)hasPurchasedMoreStorage;
- (ICQCloudStorageGroupController)init;
- (id)availableStorage:(id)a3;
- (id)specifiersWithBuyMore:(BOOL)a3;
- (id)totalStorage:(id)a3;
- (void)cancelLoaders;
- (void)clearQuotaCache;
- (void)dealloc;
- (void)enterBuyStorage;
- (void)enterBuyStorageWhenPossible;
- (void)enterManageStorageWhenPossible;
- (void)enterManagedStorage:(id)a3;
- (void)getQuotaInfo;
- (void)groupRemovedFromListController;
- (void)loadFailed:(id)a3 withError:(id)a4;
- (void)loadFinished:(id)a3;
- (void)manager:(id)a3 loadDidFailWithError:(id)a4;
- (void)manager:(id)a3 willPresentViewController:(id)a4;
- (void)quotaInfoChanged;
- (void)reachabilityChanged:(id)a3;
- (void)remoteUIDelegate:(id)a3 didCreatePage:(id)a4 forAccount:(id)a5 inObjectModel:(id)a6;
- (void)remoteUIDelegate:(id)a3 didCreatePage:(id)a4 inObjectModel:(id)a5;
- (void)startSpinnerInCellForSpecifier:(id)a3;
- (void)stopSpinner;
- (void)updateManagedStorageState;
@end

@implementation ICQCloudStorageGroupController

- (ICQCloudStorageGroupController)init
{
  v9.receiver = self;
  v9.super_class = ICQCloudStorageGroupController;
  v2 = [(ICQCloudStorageGroupController *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_quotaInfoChanged name:@"QuotaInformationChanged" object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v2 selector:sel_updateManagedStorageState name:@"PSProfileConnectionEffectiveSettingsChangedNotification" object:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel_quotaInfoChanged name:*MEMORY[0x277D76758] object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, backupStateChanged, *MEMORY[0x277D28A88], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v7 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    [v7 addNetworkReachableObserver:v2 selector:sel_reachabilityChanged_];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D28A88], 0);
  v5 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [v5 removeNetworkReachableObserver:self];

  v6 = [(ICQPreferencesRemoteUIDelegate *)self->_storageDelegate delegate];

  if (v6 == self)
  {
    [(ICQPreferencesRemoteUIDelegate *)self->_storageDelegate setDelegate:0];
  }

  v7.receiver = self;
  v7.super_class = ICQCloudStorageGroupController;
  [(ICQCloudStorageGroupController *)&v7 dealloc];
}

- (void)groupRemovedFromListController
{
  [(ICQUICloudStorageOffersManager *)self->_storageOffersManager cancelLoad];
  [(ICQPreferencesRemoteUIDelegate *)self->_storageDelegate cancelRemoteUI];
  storageDelegate = self->_storageDelegate;
  self->_storageDelegate = 0;

  [(ICQCloudStorageGroupController *)self stopSpinner];

  objc_storeWeak(&self->_listController, 0);
}

- (id)totalStorage:(id)a3
{
  v4 = a3;
  if (self->_quotaCached)
  {
    v5 = [(ICQQuotaInfoResponse *)self->_quotaInfo totalStorageText];
  }

  else if (self->_quotaFailed)
  {
    v5 = &stru_28844FC60;
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"LOADING" value:&stru_28844FC60 table:@"CloudGroup"];
  }

  return v5;
}

- (id)availableStorage:(id)a3
{
  v4 = a3;
  if (self->_quotaCached)
  {
    v5 = [(ICQQuotaInfoResponse *)self->_quotaInfo availableStorageText];
  }

  else if (self->_quotaFailed)
  {
    v5 = &stru_28844FC60;
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"LOADING" value:&stru_28844FC60 table:@"CloudGroup"];
  }

  return v5;
}

- (void)reachabilityChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277CEC510]];
  v6 = [v5 BOOLValue];

  if (v6 && self->_quotaFailed)
  {

    [(ICQCloudStorageGroupController *)self getQuotaInfo];
  }
}

- (void)updateManagedStorageState
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_specifiers objectAtIndex:0];
  v4 = *MEMORY[0x277D3FFA8];
  [v3 removePropertyForKey:*MEMORY[0x277D3FFA8]];
  buyMore = self->_buyMore;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (buyMore)
  {
    v8 = @"STORAGE";
  }

  else
  {
    v8 = @"CASTLE";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_28844FC60 table:@"CloudGroup"];
  [v3 setName:v9];

  if (!self->_quotaCached)
  {
    if (!self->_quotaFailed)
    {
      goto LABEL_17;
    }

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"QUOTA_FAILED" value:&stru_28844FC60 table:@"CloudGroup"];
    [v3 setProperty:v12 forKey:v4];
    goto LABEL_15;
  }

  v10 = [(ICQQuotaInfoResponse *)self->_quotaInfo accountStatus];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 objectForKey:@"account_status_header"];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 setName:v12];
      }
    }

    v13 = [v11 objectForKey:@"account_status_text"];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 setProperty:v13 forKey:v4];
      }
    }

LABEL_15:
  }

LABEL_17:
  v33 = v3;
  if (self->_quotaCached)
  {
    v14 = [MEMORY[0x277D262A0] sharedConnection];
    if ([v14 effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]] == 2)
    {
      v15 = 0;
    }

    else
    {
      v16 = [MEMORY[0x277CEC748] sharedManager];
      v17 = [v16 primaryAccount];
      v15 = [v17 needsToVerifyTerms] ^ 1;
    }
  }

  else
  {
    v15 = 0;
  }

  managedStorage = self->_managedStorage;
  v19 = [MEMORY[0x277CCABB0] numberWithBool:v15];
  v20 = *MEMORY[0x277D3FF38];
  [(PSSpecifier *)managedStorage setProperty:v19 forKey:*MEMORY[0x277D3FF38]];

  v21 = *MEMORY[0x277D40148];
  v22 = [(PSSpecifier *)self->_managedStorage propertyForKey:*MEMORY[0x277D40148]];
  [v22 setCellEnabled:v15];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = [(NSMutableArray *)self->_specifiers subarrayWithRange:1, 2];
  v24 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v35;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v34 + 1) + 8 * i);
        v29 = [MEMORY[0x277CCABB0] numberWithBool:!self->_quotaFailed];
        [v28 setProperty:v29 forKey:v20];

        v30 = [v28 propertyForKey:v21];
        [v30 setCellEnabled:!self->_quotaFailed];
      }

      v25 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v25);
  }

  if (v15 && self->_delayedEnterManageStorage)
  {
    [(ICQCloudStorageGroupController *)self enterManagedStorage:self->_managedStorage];
    self->_delayedEnterManageStorage = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    v32 = [(NSMutableArray *)self->_specifiers objectAtIndex:0];
    [WeakRetained reloadSpecifier:v32 animated:1];
  }
}

- (void)getQuotaInfo
{
  if (!self->_quotaCached && !self->_quotaFetchInProgress)
  {
    self->_quotaFetchInProgress = 1;
    v3 = +[ICQQuotaRequestManager sharedManager];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __46__ICQCloudStorageGroupController_getQuotaInfo__block_invoke;
    v4[3] = &unk_27A65B1F0;
    v4[4] = self;
    [v3 getQuotaInfoDetailed:0 handler:v4];
  }
}

void __46__ICQCloudStorageGroupController_getQuotaInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  *(*(a1 + 32) + 33) = 0;
  if (!v6 || ([v6 error], v8 = objc_claimAutoreleasedReturnValue(), v9 = v7 | v8, v8, v9))
  {
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __46__ICQCloudStorageGroupController_getQuotaInfo__block_invoke_cold_1(v7, v6, v11);
    }

    v10 = 1;
  }

  else
  {
    *(*(a1 + 32) + 34) = 1;
    objc_storeStrong((*(a1 + 32) + 40), a2);
    v10 = 0;
  }

  *(*(a1 + 32) + 35) = v10;
  v12 = [*(*(a1 + 32) + 40) hasPurchasedMoreStorage];
  v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v14 = v13;
  if (v12)
  {
    [v13 setBool:1 forKey:@"hasPurchasedMoreStorage"];
  }

  else
  {
    [v13 removeObjectForKey:@"hasPurchasedMoreStorage"];
  }

  [*(a1 + 32) updateManagedStorageState];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v16 = [WeakRetained specifierForID:@"BUY_MORE_STORAGE"];

  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if ([*(a1 + 32) hasPurchasedMoreStorage])
  {
    v18 = @"CHANGE_STORAGE_PLAN";
  }

  else
  {
    v18 = @"BUY_MORE_STORAGE";
  }

  v19 = [v17 localizedStringForKey:v18 value:&stru_28844FC60 table:@"CloudGroup"];

  v20 = [v16 name];
  v21 = [v20 isEqualToString:v19];

  if ((v21 & 1) == 0)
  {
    [v16 setName:v19];
    v22 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v22 reloadSpecifier:v16];
  }
}

- (void)quotaInfoChanged
{
  [(ICQCloudStorageGroupController *)self clearQuotaCache];

  [(ICQCloudStorageGroupController *)self getQuotaInfo];
}

- (void)clearQuotaCache
{
  self->_quotaFailed = 0;
  *&self->_quotaFetchInProgress = 0;
  quotaInfo = self->_quotaInfo;
  self->_quotaInfo = 0;

  v3 = +[ICQQuotaRequestManager sharedManager];
  [v3 clearCachedQuotaInfo];
}

- (BOOL)hasPurchasedMoreStorage
{
  quotaInfo = self->_quotaInfo;
  if (quotaInfo)
  {

    return [(ICQQuotaInfoResponse *)quotaInfo hasPurchasedMoreStorage];
  }

  else
  {
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [v5 BOOLForKey:@"hasPurchasedMoreStorage"];

    return v6;
  }
}

- (id)specifiersWithBuyMore:(BOOL)a3
{
  v3 = a3;
  [(ICQCloudStorageGroupController *)self clearQuotaCache];
  specifiers = self->_specifiers;
  if (!specifiers || self->_buyMore != v3 && (self->_specifiers = 0, specifiers, !self->_specifiers))
  {
    self->_buyMore = v3;
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    v7 = self->_specifiers;
    self->_specifiers = v6;

    v8 = MEMORY[0x277D3FAD8];
    buyMore = self->_buyMore;
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = v10;
    if (buyMore)
    {
      v12 = @"STORAGE";
    }

    else
    {
      v12 = @"CASTLE";
    }

    v13 = [v10 localizedStringForKey:v12 value:&stru_28844FC60 table:@"CloudGroup"];
    v14 = [v8 preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [(NSMutableArray *)self->_specifiers addObject:v14];
    v15 = MEMORY[0x277D3FAD8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"TOTAL" value:&stru_28844FC60 table:@"CloudGroup"];
    v18 = [v15 preferenceSpecifierNamed:v17 target:self set:0 get:sel_totalStorage_ detail:0 cell:4 edit:0];

    v19 = *MEMORY[0x277D3FFB8];
    [v18 setProperty:@"TOTAL_STORAGE" forKey:*MEMORY[0x277D3FFB8]];
    [(NSMutableArray *)self->_specifiers addObject:v18];
    v20 = MEMORY[0x277D3FAD8];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"AVAILABLE" value:&stru_28844FC60 table:@"CloudGroup"];
    v23 = [v20 preferenceSpecifierNamed:v22 target:self set:0 get:sel_availableStorage_ detail:0 cell:4 edit:0];

    [v23 setProperty:@"AVAILABLE_STORAGE" forKey:v19];
    [(NSMutableArray *)self->_specifiers addObject:v23];
    v24 = MEMORY[0x277D3FAD8];
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"MANAGE" value:&stru_28844FC60 table:@"CloudGroup"];
    v27 = [v24 preferenceSpecifierNamed:v26 target:self set:0 get:0 detail:0 cell:1 edit:0];
    managedStorage = self->_managedStorage;
    self->_managedStorage = v27;

    [(PSSpecifier *)self->_managedStorage setIdentifier:@"MANAGE_STORAGE"];
    [(PSSpecifier *)self->_managedStorage setControllerLoadAction:sel_enterManagedStorage_];
    [(NSMutableArray *)self->_specifiers addObject:self->_managedStorage];
    [(ICQCloudStorageGroupController *)self updateManagedStorageState];
    if (self->_buyMore)
    {
      v29 = self->_specifiers;
      v30 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      [(NSMutableArray *)v29 addObject:v30];

      v31 = MEMORY[0x277D3FAD8];
      v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if ([(ICQCloudStorageGroupController *)self hasPurchasedMoreStorage])
      {
        v33 = @"CHANGE_STORAGE_PLAN";
      }

      else
      {
        v33 = @"BUY_MORE_STORAGE";
      }

      v34 = [v32 localizedStringForKey:v33 value:&stru_28844FC60 table:@"CloudGroup"];
      v35 = [v31 preferenceSpecifierNamed:v34 target:self set:0 get:0 detail:objc_opt_class() cell:13 edit:0];

      [v35 setProperty:@"BUY_MORE_STORAGE" forKey:v19];
      [v35 setButtonAction:sel_enterBuyStorage];
      [(NSMutableArray *)self->_specifiers addObject:v35];
    }
  }

  [(ICQCloudStorageGroupController *)self getQuotaInfo];
  v36 = self->_specifiers;

  return v36;
}

- (void)cancelLoaders
{
  if (self->_loadingCommerce || self->_loadingStorage)
  {
    self->_loadingCommerce = 0;
    [(ICQUICloudStorageOffersManager *)self->_storageOffersManager cancelLoad];
    self->_loadingStorage = 0;
    [(ICQPreferencesRemoteUIDelegate *)self->_storageDelegate cleanupLoader];
    storageDelegate = self->_storageDelegate;
    self->_storageDelegate = 0;

    [(ICQCloudStorageGroupController *)self stopSpinner];
  }
}

- (void)enterManageStorageWhenPossible
{
  self->_delayedEnterManageStorage = 1;
  [(ICQCloudStorageGroupController *)self updateManagedStorageState];

  [(ICQCloudStorageGroupController *)self getQuotaInfo];
}

- (void)enterManagedStorage:(id)a3
{
  v4 = a3;
  if (self->_quotaCached && !self->_loadingStorage)
  {
    [(ICQCloudStorageGroupController *)self cancelLoaders];
    self->_loadingStorage = 1;
    storageDelegate = self->_storageDelegate;
    if (!storageDelegate)
    {
      v6 = [ICQPreferencesRemoteUIDelegate alloc];
      WeakRetained = objc_loadWeakRetained(&self->_listController);
      v8 = [WeakRetained navigationController];
      v9 = [(ICQPreferencesRemoteUIDelegate *)v6 initWithNavigationController:v8];
      v10 = self->_storageDelegate;
      self->_storageDelegate = v9;

      storageDelegate = self->_storageDelegate;
    }

    [(ICQPreferencesRemoteUIDelegate *)storageDelegate setDelegate:self];
    v11 = [(ICQQuotaInfoResponse *)self->_quotaInfo manageStorageURLString];
    v12 = [v11 stringByAddingPercentEscapesUsingEncoding:4];

    v13 = dispatch_get_global_queue(-2, 0);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __54__ICQCloudStorageGroupController_enterManagedStorage___block_invoke;
    v18 = &unk_27A65A708;
    v19 = self;
    v20 = v12;
    v14 = v12;
    dispatch_async(v13, &v15);

    [(ICQCloudStorageGroupController *)self startSpinnerInCellForSpecifier:v4, v15, v16, v17, v18, v19];
  }
}

void __54__ICQCloudStorageGroupController_enterManagedStorage___block_invoke(uint64_t a1)
{
  v2 = +[ICQCloudStorageInfo backupInfoHeaders];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ICQCloudStorageGroupController_enterManagedStorage___block_invoke_2;
  block[3] = &unk_27A65B108;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v3;
  v7 = v2;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __54__ICQCloudStorageGroupController_enterManagedStorage___block_invoke_2(void *a1)
{
  v2 = *(a1[4] + 48);
  v3 = [MEMORY[0x277CBEBC0] URLWithString:a1[5]];
  [v2 loadURL:v3 postBody:0 additionalHeaders:a1[6]];
}

- (void)enterBuyStorageWhenPossible
{
  v3 = dispatch_time(0, 300000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ICQCloudStorageGroupController_enterBuyStorageWhenPossible__block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

- (void)enterBuyStorage
{
  if (!self->_loadingCommerce)
  {
    [(ICQCloudStorageGroupController *)self cancelLoaders];
    self->_loadingCommerce = 1;
    if (!self->_storageOffersManager)
    {
      v4 = objc_alloc_init(ICQUICloudStorageOffersManager);
      storageOffersManager = self->_storageOffersManager;
      self->_storageOffersManager = v4;

      [(ICQUICloudStorageOffersManager *)self->_storageOffersManager setDelegate:self];
    }

    WeakRetained = objc_loadWeakRetained(&self->_listController);
    v7 = [WeakRetained specifierForID:@"BUY_MORE_STORAGE"];
    [(ICQCloudStorageGroupController *)self startSpinnerInCellForSpecifier:v7];

    v8 = self->_storageOffersManager;
    v10 = objc_loadWeakRetained(&self->_listController);
    v9 = [v10 navigationController];
    [(ICQUICloudStorageOffersManager *)v8 beginFlowWithNavigationController:v9 modally:1];
  }
}

- (void)startSpinnerInCellForSpecifier:(id)a3
{
  v4 = a3;
  if (self->_remoteLoadingCell)
  {
    [ICQCloudStorageGroupController startSpinnerInCellForSpecifier:];
  }

  v8 = v4;
  v5 = [v4 propertyForKey:*MEMORY[0x277D40148]];
  remoteLoadingCell = self->_remoteLoadingCell;
  self->_remoteLoadingCell = v5;

  if (self->_remoteLoadingCell)
  {
    v7 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v7 startAnimating];
    [(PSTableCell *)self->_remoteLoadingCell setAccessoryView:v7];
  }
}

- (void)stopSpinner
{
  remoteLoadingCell = self->_remoteLoadingCell;
  if (remoteLoadingCell)
  {
    [(PSTableCell *)remoteLoadingCell setAccessoryView:0];
    v4 = self->_remoteLoadingCell;
    self->_remoteLoadingCell = 0;
  }
}

- (void)manager:(id)a3 willPresentViewController:(id)a4
{
  if (self->_loadingCommerce)
  {
    self->_loadingCommerce = 0;
    [(ICQCloudStorageGroupController *)self stopSpinner:a3];
  }
}

- (void)manager:(id)a3 loadDidFailWithError:(id)a4
{
  if (self->_loadingCommerce)
  {
    self->_loadingCommerce = 0;
    [(ICQCloudStorageGroupController *)self stopSpinner:a3];
  }
}

- (void)loadFinished:(id)a3
{
  if (self->_storageDelegate == a3)
  {
    self->_loadingStorage = 0;
    [(ICQCloudStorageGroupController *)self stopSpinner];
  }
}

- (void)loadFailed:(id)a3 withError:(id)a4
{
  if (self->_storageDelegate == a3)
  {
    self->_loadingStorage = 0;
    [(ICQCloudStorageGroupController *)self stopSpinner];
  }
}

- (void)remoteUIDelegate:(id)a3 didCreatePage:(id)a4 inObjectModel:(id)a5
{
  v8 = MEMORY[0x277CB8F48];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 defaultStore];
  v13 = [v12 aa_primaryAppleAccount];

  [(ICQCloudStorageGroupController *)self remoteUIDelegate:v11 didCreatePage:v10 forAccount:v13 inObjectModel:v9];
}

- (void)remoteUIDelegate:(id)a3 didCreatePage:(id)a4 forAccount:(id)a5 inObjectModel:(id)a6
{
  v18 = a4;
  v9 = a5;
  v10 = [a6 identifier];
  v11 = [v10 isEqualToString:@"iCloudManageStorage"];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277D46218]);
    v13 = [v18 tableViewOM];
    v14 = [v12 initWithAttributes:0 parent:v13];

    v15 = [[ICQCloudStorageGraphTableViewRow alloc] initWithAccount:v9];
    [(RUITableViewRow *)v15 setAttributes:&unk_28847A130];
    [(RUITableViewRow *)v15 setDelegate:self];
    [v14 addRow:v15];
    v16 = [v18 tableViewOM];
    v17 = [v16 sections];
    [v17 insertObject:v14 atIndex:0];
  }
}

void __46__ICQCloudStorageGroupController_getQuotaInfo__block_invoke_cold_1(void *a1, void *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a1;
  if (!a1)
  {
    v5 = [a2 error];
  }

  v6 = 138412290;
  v7 = v5;
  _os_log_error_impl(&dword_275623000, log, OS_LOG_TYPE_ERROR, "Error getting quota data: %@", &v6, 0xCu);
  if (!a1)
  {
  }
}

@end