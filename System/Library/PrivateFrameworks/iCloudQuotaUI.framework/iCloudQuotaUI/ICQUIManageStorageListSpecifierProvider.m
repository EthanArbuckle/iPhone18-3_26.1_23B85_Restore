@interface ICQUIManageStorageListSpecifierProvider
- (ICQUIManageStorageListSpecifierProvider)initWithAccountManager:(id)a3 navigationItem:(id)a4;
- (ICQUIManageStorageSpecifierProviderDelegate)delegate;
- (NSArray)specifiers;
- (UINavigationItem)navigationItem;
- (id)account;
- (id)nativeSpecifierForAppInfo:(id)a3;
- (id)serverUISpecifierForAppInfo:(id)a3;
- (void)_refreshAppList;
- (void)_reloadSpecifiers;
- (void)addDecorationToSpecifier:(id)a3 usingAppInfo:(id)a4;
- (void)dealloc;
- (void)loadDrilldownFromSpecifier:(id)a3;
- (void)setSpecifiers:(id)a3;
@end

@implementation ICQUIManageStorageListSpecifierProvider

- (ICQUIManageStorageListSpecifierProvider)initWithAccountManager:(id)a3 navigationItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = ICQUIManageStorageListSpecifierProvider;
  v9 = [(ICQUIManageStorageListSpecifierProvider *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, a3);
    objc_storeWeak(&v10->_navigationItem, v8);
    [(ICQUIManageStorageListSpecifierProvider *)v10 _refreshAppList];
    objc_initWeak(&location, v10);
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = [MEMORY[0x277CCABD8] mainQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __81__ICQUIManageStorageListSpecifierProvider_initWithAccountManager_navigationItem___block_invoke;
    v15[3] = &unk_27A65ACB0;
    objc_copyWeak(&v16, &location);
    v13 = [v11 addObserverForName:@"QuotaDidChange" object:0 queue:v12 usingBlock:v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __81__ICQUIManageStorageListSpecifierProvider_initWithAccountManager_navigationItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshAppList];
}

- (void)dealloc
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "[ICQUIManageStorageListSpecifierProvider dealloc]";
  v3 = 2112;
  v4 = @"QuotaDidChange";
  _os_log_debug_impl(&dword_275623000, log, OS_LOG_TYPE_DEBUG, "%s: Unregistering from notification: %@", &v1, 0x16u);
}

- (id)account
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (void)_refreshAppList
{
  if ([(ICQUIManageStorageListSpecifierProvider *)self isFetching])
  {
    v3 = _ICQGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(ICQUIManageStorageListSpecifierProvider *)v3 _refreshAppList];
    }
  }

  else
  {
    v4 = [(ICQUIManageStorageListSpecifierProvider *)self storageApps];
    v5 = [v4 apps];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [(ICQUIManageStorageListSpecifierProvider *)self navigationItem];
      [v7 icqui_showNavigationBarSpinner];
    }

    [(ICQUIManageStorageListSpecifierProvider *)self setIsFetching:1];
    [(ICQUIManageStorageListSpecifierProvider *)self setFailedToFetchAppList:0];
    v8 = objc_alloc(MEMORY[0x277D7F338]);
    v9 = [(ICQUIManageStorageListSpecifierProvider *)self account];
    v3 = [v8 initWithAccount:v9];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__ICQUIManageStorageListSpecifierProvider__refreshAppList__block_invoke;
    v10[3] = &unk_27A65ACD8;
    v10[4] = self;
    [v3 fetchStorageAppsWithCompletion:v10];
  }
}

void __58__ICQUIManageStorageListSpecifierProvider__refreshAppList__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__ICQUIManageStorageListSpecifierProvider__refreshAppList__block_invoke_cold_1(v6, v7);
    }
  }

  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 apps];
    v10 = [v9 count];
    v11 = [v5 apps];
    *buf = 134218242;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Received apps count %lu, apps: %@", buf, 0x16u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__ICQUIManageStorageListSpecifierProvider__refreshAppList__block_invoke_39;
  v13[3] = &unk_27A65A708;
  v13[4] = *(a1 + 32);
  v14 = v5;
  v12 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v13);
}

uint64_t __58__ICQUIManageStorageListSpecifierProvider__refreshAppList__block_invoke_39(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationItem];
  [v2 icqui_hideNavigationBarSpinner];

  [*(a1 + 32) setIsFetching:0];
  v3 = [*(a1 + 40) apps];
  v4 = [v3 count];

  if (!v4)
  {
    [*(a1 + 32) setFailedToFetchAppList:1];
  }

  [*(a1 + 32) setStorageApps:*(a1 + 40)];
  v5 = *(a1 + 32);

  return [v5 _reloadSpecifiers];
}

- (void)_reloadSpecifiers
{
  v5 = [(NSArray *)self->_specifiers copy];
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  v4 = [(ICQUIManageStorageListSpecifierProvider *)self delegate];
  [v4 reloadSpecifiersForProvider:self oldSpecifiers:v5 animated:1];
}

- (NSArray)specifiers
{
  v31 = *MEMORY[0x277D85DE8];
  specifiers = self->_specifiers;
  if (specifiers)
  {
    v3 = specifiers;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"MANAGE_STORAGE_APP_LIST"];
    [v5 addObject:v6];
    v7 = [(ICQUIManageStorageListSpecifierProvider *)self storageApps];
    v8 = [v7 apps];
    v9 = [v8 count];

    if (v9)
    {
      v25 = v6;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v10 = [(ICQUIManageStorageListSpecifierProvider *)self storageApps];
      v11 = [v10 apps];

      v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v27;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v26 + 1) + 8 * i);
            v17 = [v16 action];
            v18 = [v17 icqLink];
            v19 = [v18 action];

            if (v19 == 126)
            {
              [(ICQUIManageStorageListSpecifierProvider *)self nativeSpecifierForAppInfo:v16];
            }

            else
            {
              [(ICQUIManageStorageListSpecifierProvider *)self serverUISpecifierForAppInfo:v16];
            }
            v20 = ;
            if (v20)
            {
              [v5 addObject:v20];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v13);
      }

      v6 = v25;
    }

    else if ([(ICQUIManageStorageListSpecifierProvider *)self failedToFetchAppList])
    {

      v5 = 0;
    }

    else
    {
      v21 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
      [v5 addObject:v21];
      [(ICQUIManageStorageListSpecifierProvider *)self _refreshAppList];
    }

    v22 = [v5 copy];
    v23 = self->_specifiers;
    self->_specifiers = v22;

    v3 = self->_specifiers;
  }

  return v3;
}

- (void)setSpecifiers:(id)a3
{
  v7 = a3;
  v5 = [(NSArray *)self->_specifiers copy];
  if (v7)
  {
    objc_storeStrong(&self->_specifiers, a3);
  }

  else
  {
    [(ICQUIManageStorageListSpecifierProvider *)self _refreshAppList];
  }

  v6 = [(ICQUIManageStorageListSpecifierProvider *)self delegate];
  [v6 reloadSpecifiersForProvider:self oldSpecifiers:v5 animated:1];
}

- (id)serverUISpecifierForAppInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 action];
  v6 = [v5 actionURL];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  v8 = MEMORY[0x277D3FAD8];
  v9 = [v4 label];
  v10 = [v8 preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:v7 edit:0];

  [(ICQUIManageStorageListSpecifierProvider *)self addDecorationToSpecifier:v10 usingAppInfo:v4];
  [v10 setControllerLoadAction:sel_loadDrilldownFromSpecifier_];

  return v10;
}

- (id)nativeSpecifierForAppInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 action];
  v6 = [v5 icqLink];
  v7 = [v6 parameters];
  v8 = [v7 objectForKeyedSubscript:@"identifier"];

  if ([v8 isEqualToString:@"afuiSettings"])
  {
    v9 = +[ICQPreferencesRemoteUIDelegate afuiSettingsSpecifier];
LABEL_7:
    v10 = v9;
    goto LABEL_8;
  }

  if ([v8 isEqualToString:@"healthSettings"])
  {
    v9 = +[ICQPreferencesRemoteUIDelegate healthSettingsSpecifier];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"messagesSettings"])
  {
    v9 = +[ICQPreferencesRemoteUIDelegate messagesSettingsSpecifier];
    goto LABEL_7;
  }

  v12 = _ICQGetLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [(ICQUIManageStorageListSpecifierProvider *)v8 nativeSpecifierForAppInfo:v12];
  }

  v10 = 0;
LABEL_8:
  [(ICQUIManageStorageListSpecifierProvider *)self addDecorationToSpecifier:v10 usingAppInfo:v4];

  return v10;
}

- (void)addDecorationToSpecifier:(id)a3 usingAppInfo:(id)a4
{
  v17 = a3;
  v5 = a4;
  if (v17)
  {
    [v17 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    v6 = MEMORY[0x277CCACA8];
    v7 = [v5 bundleIds];
    v8 = [v7 firstObject];
    v9 = v8;
    if (!v8)
    {
      v9 = [v5 label];
    }

    v10 = [v6 stringWithFormat:@"APP_LIST_CELL_%@", v9];
    [v17 setIdentifier:v10];

    if (!v8)
    {
    }

    [v17 setObject:v5 forKeyedSubscript:@"DRILLDOWN_APP_INFO"];
    v11 = [v5 label];
    [v17 setObject:v11 forKeyedSubscript:*MEMORY[0x277D40170]];

    v12 = [v5 detailLabel];
    [v17 setObject:v12 forKeyedSubscript:*MEMORY[0x277D40160]];

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
    [v17 setObject:v13 forKeyedSubscript:*MEMORY[0x277D40140]];

    v14 = MEMORY[0x277CBEC38];
    [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    v15 = [v5 iconURL];
    v16 = [_ICQUIHelperFunctions scaledImageURL:v15];
    [v17 setObject:v16 forKeyedSubscript:*MEMORY[0x277D40030]];

    [v17 setObject:v14 forKeyedSubscript:*MEMORY[0x277D3FD80]];
  }
}

- (void)loadDrilldownFromSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(ICQUIManageStorageListSpecifierProvider *)self delegate];
  [v5 provider:self loadActionFromSpecifier:v4];
}

- (ICQUIManageStorageSpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UINavigationItem)navigationItem
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationItem);

  return WeakRetained;
}

void __58__ICQUIManageStorageListSpecifierProvider__refreshAppList__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Error retrieving list of apps: %@", &v4, 0xCu);
}

- (void)nativeSpecifierForAppInfo:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Unknown native drilldown identifier: %@", &v2, 0xCu);
}

@end