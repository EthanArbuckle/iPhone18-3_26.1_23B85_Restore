@interface ICQUIManageStorageHeaderSpecifierProvider
- (ICQUIManageStorageHeaderSpecifierProvider)initWithAccountManager:(id)a3 storageSummary:(id)a4;
- (ICQUIManageStorageSpecifierProviderDelegate)delegate;
- (NSArray)specifiers;
- (id)_valueForStorageGraphSpecifier:(id)a3;
- (id)account;
- (id)makeFamilyAndPlanManagementSpecifiers;
- (id)makeThermometerSpecifiers;
- (int64_t)cellTypeForAction:(int64_t)a3;
- (int64_t)cellTypeForSpecifierInfo:(id)a3;
- (void)_fetchStorageSummaryAndRefreshSpecifiers;
- (void)dealloc;
- (void)launchActionFromSpecifier:(id)a3;
- (void)refreshHeaderSpecifiersWithSummary:(id)a3;
- (void)setSpecifiers:(id)a3;
@end

@implementation ICQUIManageStorageHeaderSpecifierProvider

- (ICQUIManageStorageHeaderSpecifierProvider)initWithAccountManager:(id)a3 storageSummary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = ICQUIManageStorageHeaderSpecifierProvider;
  v9 = [(ICQUIManageStorageHeaderSpecifierProvider *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, a3);
    objc_storeStrong(&v10->_storageSummary, a4);
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v10 selector:sel__fetchStorageSummaryAndRefreshSpecifiers name:@"QuotaDidChange" object:0];
  }

  return v10;
}

- (void)dealloc
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "[ICQUIManageStorageHeaderSpecifierProvider dealloc]";
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

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (specifiers)
  {
    v3 = specifiers;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [(ICQUIManageStorageHeaderSpecifierProvider *)self makeThermometerSpecifiers];
    [v5 addObjectsFromArray:v6];

    v7 = [(ICQUIManageStorageHeaderSpecifierProvider *)self makeFamilyAndPlanManagementSpecifiers];
    [v5 addObjectsFromArray:v7];

    v8 = [v5 copy];
    v9 = self->_specifiers;
    self->_specifiers = v8;

    v3 = self->_specifiers;
  }

  return v3;
}

- (id)makeThermometerSpecifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"MANAGE_STORAGE_THERMOMETER"];
  v5 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSummary];
  v6 = [v5 manageStoragePage];
  v7 = [v6 storageGraphFooterText];

  if (v7)
  {
    [v4 setProperty:v7 forKey:*MEMORY[0x277D3FF88]];
  }

  [v3 addObject:v4];
  v8 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSpecifier];

  if (!v8)
  {
    v9 = MEMORY[0x277D3FAD8];
    v10 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSummary];
    v11 = [v10 displayLabel];
    v12 = [v9 preferenceSpecifierNamed:v11 target:self set:0 get:sel__valueForStorageGraphSpecifier_ detail:0 cell:-1 edit:0];
    [(ICQUIManageStorageHeaderSpecifierProvider *)self setStorageSpecifier:v12];

    v13 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSpecifier];
    [v13 setIdentifier:@"CLOUD_STORAGE_GRAPH"];

    v14 = objc_opt_class();
    v15 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSpecifier];
    [v15 setObject:v14 forKeyedSubscript:*MEMORY[0x277D3FE58]];

    v16 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSpecifier];
    v17 = *MEMORY[0x277D3FF38];
    [v16 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];

    v18 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSpecifier];
    [v18 setObject:self forKeyedSubscript:*MEMORY[0x277D40148]];

    v19 = MEMORY[0x277CCABB0];
    v20 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSummary];
    v21 = [v19 numberWithInt:v20 != 0];
    v22 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSpecifier];
    [v22 setObject:v21 forKeyedSubscript:v17];

    v23 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSummary];
    v24 = [v23 displayLabel];
    v25 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSpecifier];
    [v25 setObject:v24 forKeyedSubscript:*MEMORY[0x277D40170]];
  }

  v26 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSpecifier];
  [v3 addObject:v26];

  v27 = [v3 copy];

  return v27;
}

- (void)setSpecifiers:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v5 = [(NSArray *)self->_specifiers copy];
    objc_storeStrong(&self->_specifiers, a3);
    v6 = [(ICQUIManageStorageHeaderSpecifierProvider *)self delegate];
    [v6 reloadSpecifiersForProvider:self oldSpecifiers:v5 animated:1];
  }

  else
  {
    [(ICQUIManageStorageHeaderSpecifierProvider *)self _fetchStorageSummaryAndRefreshSpecifiers];
  }
}

- (id)_valueForStorageGraphSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSummary];
  v6 = [v5 totalStorage];
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277CEC9D0]];

  v7 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSummary];
  v8 = [v7 freeStorage];
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277CEC9C8]];

  v9 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSummary];
  v10 = [v9 usedStorage];
  [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277CEC9E0]];

  v11 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSummary];
  v12 = [v11 icqui_AAUIiCloudMediaUsageInfo];
  [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x277CEC9D8]];

  return 0;
}

- (id)makeFamilyAndPlanManagementSpecifiers
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSummary];
  v4 = [v3 manageStoragePage];
  v5 = [v4 specifiers];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = v6;
  v8 = *v29;
  v27 = *MEMORY[0x277D3FE58];
  v26 = *MEMORY[0x277D3FD80];
  v23 = *MEMORY[0x277D40160];
  do
  {
    v9 = 0;
    do
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v28 + 1) + 8 * v9);
      v11 = [v10 actions];
      v12 = [v11 firstObject];

      v13 = [v10 title];
      if (v13 || ([v12 title], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v14 = v13;
        v15 = [(ICQUIManageStorageHeaderSpecifierProvider *)self cellTypeForSpecifierInfo:v10];
        v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:v15 edit:0];
        [v16 setIdentifier:v14];
        [v16 setObject:objc_opt_class() forKeyedSubscript:v27];
        [v16 setObject:v12 forKeyedSubscript:@"ACTION_INFO"];
        [v16 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v26];
        if (v15 == 1)
        {
          v17 = [v10 subtitle];
          [v16 setObject:v17 forKeyedSubscript:v23];

          [v16 setControllerLoadAction:sel_launchActionFromSpecifier_];
          if (!v16)
          {
            goto LABEL_13;
          }

LABEL_12:
          [v25 addObject:v16];
        }

        else
        {
          [v16 setButtonAction:sel_launchActionFromSpecifier_];
          if (v16)
          {
            goto LABEL_12;
          }
        }

LABEL_13:

        goto LABEL_14;
      }

      v14 = _ICQGetLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v10;
        _os_log_error_impl(&dword_275623000, v14, OS_LOG_TYPE_ERROR, "Specifier info is missing a title! %@", buf, 0xCu);
      }

LABEL_14:

      ++v9;
    }

    while (v7 != v9);
    v18 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    v7 = v18;
  }

  while (v18);
LABEL_19:

  if ([v25 count])
  {
    v19 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"MANAGE_STORAGE_HEADER_ACTIONS"];
    v32 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    v21 = [v20 arrayByAddingObjectsFromArray:v25];
  }

  else
  {
    v21 = MEMORY[0x277CBEBF8];
  }

  return v21;
}

- (int64_t)cellTypeForSpecifierInfo:(id)a3
{
  v3 = [a3 subtitle];

  if (v3)
  {
    return 1;
  }

  else
  {
    return 13;
  }
}

- (int64_t)cellTypeForAction:(int64_t)a3
{
  if ((a3 - 112) > 9)
  {
    return 13;
  }

  else
  {
    return qword_2757A3D70[a3 - 112];
  }
}

- (void)launchActionFromSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(ICQUIManageStorageHeaderSpecifierProvider *)self delegate];
  [v5 provider:self loadActionFromSpecifier:v4];
}

- (void)refreshHeaderSpecifiersWithSummary:(id)a3
{
  [(ICQUIManageStorageHeaderSpecifierProvider *)self setStorageSummary:a3];
  v6 = [(NSArray *)self->_specifiers copy];
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  v5 = [(ICQUIManageStorageHeaderSpecifierProvider *)self delegate];
  [v5 reloadSpecifiersForProvider:self oldSpecifiers:v6 animated:1];
}

- (void)_fetchStorageSummaryAndRefreshSpecifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v3 = objc_alloc(MEMORY[0x277D7F338]);
  v4 = [(ICQUIManageStorageHeaderSpecifierProvider *)self account];
  v12 = [v3 initWithAccount:v4];

  v5 = v8[5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__ICQUIManageStorageHeaderSpecifierProvider__fetchStorageSummaryAndRefreshSpecifiers__block_invoke;
  v6[3] = &unk_27A65AAC8;
  v6[4] = self;
  v6[5] = &v7;
  [v5 fetchStorageSummaryWithCompletion:v6];
  _Block_object_dispose(&v7, 8);
}

void __85__ICQUIManageStorageHeaderSpecifierProvider__fetchStorageSummaryAndRefreshSpecifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__ICQUIManageStorageHeaderSpecifierProvider__fetchStorageSummaryAndRefreshSpecifiers__block_invoke_2;
  block[3] = &unk_27A65AAA0;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __85__ICQUIManageStorageHeaderSpecifierProvider__fetchStorageSummaryAndRefreshSpecifiers__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) refreshHeaderSpecifiersWithSummary:?];
  }

  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (ICQUIManageStorageSpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end