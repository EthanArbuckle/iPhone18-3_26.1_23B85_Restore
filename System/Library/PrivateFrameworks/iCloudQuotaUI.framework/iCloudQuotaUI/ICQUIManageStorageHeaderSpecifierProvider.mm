@interface ICQUIManageStorageHeaderSpecifierProvider
- (ICQUIManageStorageHeaderSpecifierProvider)initWithAccountManager:(id)manager storageSummary:(id)summary;
- (ICQUIManageStorageSpecifierProviderDelegate)delegate;
- (NSArray)specifiers;
- (id)_valueForStorageGraphSpecifier:(id)specifier;
- (id)account;
- (id)makeFamilyAndPlanManagementSpecifiers;
- (id)makeThermometerSpecifiers;
- (int64_t)cellTypeForAction:(int64_t)action;
- (int64_t)cellTypeForSpecifierInfo:(id)info;
- (void)_fetchStorageSummaryAndRefreshSpecifiers;
- (void)dealloc;
- (void)launchActionFromSpecifier:(id)specifier;
- (void)refreshHeaderSpecifiersWithSummary:(id)summary;
- (void)setSpecifiers:(id)specifiers;
@end

@implementation ICQUIManageStorageHeaderSpecifierProvider

- (ICQUIManageStorageHeaderSpecifierProvider)initWithAccountManager:(id)manager storageSummary:(id)summary
{
  managerCopy = manager;
  summaryCopy = summary;
  v13.receiver = self;
  v13.super_class = ICQUIManageStorageHeaderSpecifierProvider;
  v9 = [(ICQUIManageStorageHeaderSpecifierProvider *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, manager);
    objc_storeStrong(&v10->_storageSummary, summary);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__fetchStorageSummaryAndRefreshSpecifiers name:@"QuotaDidChange" object:0];
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
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

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
    makeThermometerSpecifiers = [(ICQUIManageStorageHeaderSpecifierProvider *)self makeThermometerSpecifiers];
    [v5 addObjectsFromArray:makeThermometerSpecifiers];

    makeFamilyAndPlanManagementSpecifiers = [(ICQUIManageStorageHeaderSpecifierProvider *)self makeFamilyAndPlanManagementSpecifiers];
    [v5 addObjectsFromArray:makeFamilyAndPlanManagementSpecifiers];

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
  storageSummary = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSummary];
  manageStoragePage = [storageSummary manageStoragePage];
  storageGraphFooterText = [manageStoragePage storageGraphFooterText];

  if (storageGraphFooterText)
  {
    [v4 setProperty:storageGraphFooterText forKey:*MEMORY[0x277D3FF88]];
  }

  [v3 addObject:v4];
  storageSpecifier = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSpecifier];

  if (!storageSpecifier)
  {
    v9 = MEMORY[0x277D3FAD8];
    storageSummary2 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSummary];
    displayLabel = [storageSummary2 displayLabel];
    v12 = [v9 preferenceSpecifierNamed:displayLabel target:self set:0 get:sel__valueForStorageGraphSpecifier_ detail:0 cell:-1 edit:0];
    [(ICQUIManageStorageHeaderSpecifierProvider *)self setStorageSpecifier:v12];

    storageSpecifier2 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSpecifier];
    [storageSpecifier2 setIdentifier:@"CLOUD_STORAGE_GRAPH"];

    v14 = objc_opt_class();
    storageSpecifier3 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSpecifier];
    [storageSpecifier3 setObject:v14 forKeyedSubscript:*MEMORY[0x277D3FE58]];

    storageSpecifier4 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSpecifier];
    v17 = *MEMORY[0x277D3FF38];
    [storageSpecifier4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];

    storageSpecifier5 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSpecifier];
    [storageSpecifier5 setObject:self forKeyedSubscript:*MEMORY[0x277D40148]];

    v19 = MEMORY[0x277CCABB0];
    storageSummary3 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSummary];
    v21 = [v19 numberWithInt:storageSummary3 != 0];
    storageSpecifier6 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSpecifier];
    [storageSpecifier6 setObject:v21 forKeyedSubscript:v17];

    storageSummary4 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSummary];
    displayLabel2 = [storageSummary4 displayLabel];
    storageSpecifier7 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSpecifier];
    [storageSpecifier7 setObject:displayLabel2 forKeyedSubscript:*MEMORY[0x277D40170]];
  }

  storageSpecifier8 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSpecifier];
  [v3 addObject:storageSpecifier8];

  v27 = [v3 copy];

  return v27;
}

- (void)setSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  if (specifiersCopy)
  {
    v5 = [(NSArray *)self->_specifiers copy];
    objc_storeStrong(&self->_specifiers, specifiers);
    delegate = [(ICQUIManageStorageHeaderSpecifierProvider *)self delegate];
    [delegate reloadSpecifiersForProvider:self oldSpecifiers:v5 animated:1];
  }

  else
  {
    [(ICQUIManageStorageHeaderSpecifierProvider *)self _fetchStorageSummaryAndRefreshSpecifiers];
  }
}

- (id)_valueForStorageGraphSpecifier:(id)specifier
{
  specifierCopy = specifier;
  storageSummary = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSummary];
  totalStorage = [storageSummary totalStorage];
  [specifierCopy setObject:totalStorage forKeyedSubscript:*MEMORY[0x277CEC9D0]];

  storageSummary2 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSummary];
  freeStorage = [storageSummary2 freeStorage];
  [specifierCopy setObject:freeStorage forKeyedSubscript:*MEMORY[0x277CEC9C8]];

  storageSummary3 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSummary];
  usedStorage = [storageSummary3 usedStorage];
  [specifierCopy setObject:usedStorage forKeyedSubscript:*MEMORY[0x277CEC9E0]];

  storageSummary4 = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSummary];
  icqui_AAUIiCloudMediaUsageInfo = [storageSummary4 icqui_AAUIiCloudMediaUsageInfo];
  [specifierCopy setObject:icqui_AAUIiCloudMediaUsageInfo forKeyedSubscript:*MEMORY[0x277CEC9D8]];

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
  storageSummary = [(ICQUIManageStorageHeaderSpecifierProvider *)self storageSummary];
  manageStoragePage = [storageSummary manageStoragePage];
  specifiers = [manageStoragePage specifiers];

  obj = specifiers;
  v6 = [specifiers countByEnumeratingWithState:&v28 objects:v35 count:16];
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
      actions = [v10 actions];
      firstObject = [actions firstObject];

      title = [v10 title];
      if (title || ([firstObject title], (title = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v14 = title;
        v15 = [(ICQUIManageStorageHeaderSpecifierProvider *)self cellTypeForSpecifierInfo:v10];
        v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:v15 edit:0];
        [v16 setIdentifier:v14];
        [v16 setObject:objc_opt_class() forKeyedSubscript:v27];
        [v16 setObject:firstObject forKeyedSubscript:@"ACTION_INFO"];
        [v16 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v26];
        if (v15 == 1)
        {
          subtitle = [v10 subtitle];
          [v16 setObject:subtitle forKeyedSubscript:v23];

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

- (int64_t)cellTypeForSpecifierInfo:(id)info
{
  subtitle = [info subtitle];

  if (subtitle)
  {
    return 1;
  }

  else
  {
    return 13;
  }
}

- (int64_t)cellTypeForAction:(int64_t)action
{
  if ((action - 112) > 9)
  {
    return 13;
  }

  else
  {
    return qword_2757A3D70[action - 112];
  }
}

- (void)launchActionFromSpecifier:(id)specifier
{
  specifierCopy = specifier;
  delegate = [(ICQUIManageStorageHeaderSpecifierProvider *)self delegate];
  [delegate provider:self loadActionFromSpecifier:specifierCopy];
}

- (void)refreshHeaderSpecifiersWithSummary:(id)summary
{
  [(ICQUIManageStorageHeaderSpecifierProvider *)self setStorageSummary:summary];
  v6 = [(NSArray *)self->_specifiers copy];
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  delegate = [(ICQUIManageStorageHeaderSpecifierProvider *)self delegate];
  [delegate reloadSpecifiersForProvider:self oldSpecifiers:v6 animated:1];
}

- (void)_fetchStorageSummaryAndRefreshSpecifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v3 = objc_alloc(MEMORY[0x277D7F338]);
  account = [(ICQUIManageStorageHeaderSpecifierProvider *)self account];
  v12 = [v3 initWithAccount:account];

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