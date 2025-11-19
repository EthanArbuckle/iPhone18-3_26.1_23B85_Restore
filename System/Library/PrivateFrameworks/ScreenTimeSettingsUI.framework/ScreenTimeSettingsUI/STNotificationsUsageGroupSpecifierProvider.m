@interface STNotificationsUsageGroupSpecifierProvider
- (STNotificationsUsageGroupSpecifierProvider)init;
- (id)_usageDetailsCoordinator:(id)a3;
- (id)newSpecifierWithUsageItem:(id)a3;
- (void)_selectedUsageReportDidChangeFrom:(id)a3 to:(id)a4;
- (void)_specifierIdentifierDidChange:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCoordinator:(id)a3;
- (void)updateSpecifier:(id)a3 usageItem:(id)a4;
@end

@implementation STNotificationsUsageGroupSpecifierProvider

- (STNotificationsUsageGroupSpecifierProvider)init
{
  v16.receiver = self;
  v16.super_class = STNotificationsUsageGroupSpecifierProvider;
  v2 = [(STShowMoreUsageGroupSpecifierProvider *)&v16 init];
  v3 = MEMORY[0x277D3FAD8];
  v4 = +[STScreenTimeSettingsUIBundle bundle];
  v5 = [v4 localizedStringForKey:@"NotificationsGroupName" value:&stru_28766E5A8 table:0];
  v6 = [v3 groupSpecifierWithName:v5];
  [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v6];

  v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Notifications Summary" target:v2 set:0 get:sel__usageDetailsCoordinator_ detail:0 cell:-1 edit:0];
  [v7 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  [(STShowMoreUsageGroupSpecifierProvider *)v2 setSummarySpecifier:v7];
  v8 = objc_opt_new();
  notificationSectionByBundleID = v2->_notificationSectionByBundleID;
  v2->_notificationSectionByBundleID = v8;

  v10 = dispatch_queue_create("com.apple.screentime.notification-settings-gateway", 0);
  notificationSettingsGatewayQueue = v2->_notificationSettingsGatewayQueue;
  v2->_notificationSettingsGatewayQueue = v10;

  v12 = [objc_alloc(MEMORY[0x277CF3580]) initWithQueue:v2->_notificationSettingsGatewayQueue];
  notificationSettingsGateway = v2->_notificationSettingsGateway;
  v2->_notificationSettingsGateway = v12;

  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 addObserver:v2 selector:sel__specifierIdentifierDidChange_ name:0x2876740E8 object:0];

  return v2;
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STUsageGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" context:"KVOContextNotificationUsageGroupSpecifierProvider"];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" context:"KVOContextNotificationUsageGroupSpecifierProvider"];
  v6.receiver = self;
  v6.super_class = STNotificationsUsageGroupSpecifierProvider;
  [(STUsageGroupSpecifierProvider *)&v6 setCoordinator:v4];
  [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" options:5 context:"KVOContextNotificationUsageGroupSpecifierProvider"];
  [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" options:7 context:"KVOContextNotificationUsageGroupSpecifierProvider"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  if (a6 == "KVOContextNotificationUsageGroupSpecifierProvider")
  {
    [(STUsageGroupSpecifierProvider *)self coordinator];

    if ([v10 isEqualToString:@"usageDetailsCoordinator.viewModel.hasUsageData"])
    {
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v13 = [MEMORY[0x277CBEB68] null];

      if (v12 == v13)
      {

        v12 = 0;
      }

      -[STGroupSpecifierProvider setIsHidden:](self, "setIsHidden:", [v12 BOOLValue] ^ 1);
    }

    else
    {
      [(STUsageGroupSpecifierProvider *)self coordinator];

      if (![v10 isEqualToString:@"usageDetailsCoordinator.viewModel.selectedUsageReport"])
      {
        goto LABEL_14;
      }

      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v14 = [MEMORY[0x277CBEB68] null];

      if (v12 == v14)
      {

        v12 = 0;
      }

      v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v16 = [MEMORY[0x277CBEB68] null];

      if (v15 == v16)
      {

        v15 = 0;
      }

      [(STNotificationsUsageGroupSpecifierProvider *)self _selectedUsageReportDidChangeFrom:v12 to:v15];
    }

    goto LABEL_14;
  }

  v17.receiver = self;
  v17.super_class = STNotificationsUsageGroupSpecifierProvider;
  [(STNotificationsUsageGroupSpecifierProvider *)&v17 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
LABEL_14:
}

- (void)_selectedUsageReportDidChangeFrom:(id)a3 to:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 != v7 && ([v6 isEqual:v7] & 1) == 0)
  {
    v45 = v6;
    v8 = [v6 type];
    v9 = v8 == [v7 type];
    v10 = [(STShowMoreUsageGroupSpecifierProvider *)self summarySpecifier];
    [(STGroupSpecifierProvider *)self reloadSpecifier:v10 animated:v9];

    v11 = [(STNotificationsUsageGroupSpecifierProvider *)self notificationSectionByBundleID];
    v12 = [v7 notificationsByTrustIdentifier];
    v13 = [v12 allKeys];
    v14 = [v13 valueForKeyPath:@"identifier"];

    v42 = v14;
    v15 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v14];
    v16 = MEMORY[0x277CBEB98];
    v17 = [(STNotificationsUsageGroupSpecifierProvider *)self notificationSectionByBundleID];
    v18 = [v17 allKeys];
    v19 = [v16 setWithArray:v18];
    [v15 minusSet:v19];

    v46 = v15;
    if ([v15 count])
    {
      v20 = [(STNotificationsUsageGroupSpecifierProvider *)self notificationSettingsGateway];
      v21 = [v20 sectionInfoForSectionIDs:v15];

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v52;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v52 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v51 + 1) + 8 * i);
            v28 = [v27 sectionID];
            [v11 setObject:v27 forKeyedSubscript:v28];
          }

          v24 = [v22 countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v24);
      }
    }

    v43 = self;
    v29 = [(STUsageGroupSpecifierProvider *)self coordinator];
    v30 = [v29 viewModel];
    v31 = [v30 installedBundleIDs];

    v44 = v7;
    v32 = [v7 notifications];
    v33 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v32, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v34 = v32;
    v35 = [v34 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v48;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v48 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v47 + 1) + 8 * j);
          v40 = [v39 budgetItemIdentifier];
          v41 = [v31 containsObject:v40];

          if (v41)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v36);
    }

    [(STShowMoreUsageGroupSpecifierProvider *)v43 setUsageItems:v33];
    v7 = v44;
    v6 = v45;
  }
}

- (id)newSpecifierWithUsageItem:(id)a3
{
  v4 = a3;
  v5 = [(STNotificationsUsageGroupSpecifierProvider *)self notificationSectionByBundleID];
  v6 = [v4 budgetItemIdentifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = MEMORY[0x277D3FAD8];
  v9 = [v4 displayName];
  if (v7)
  {
    if ([v7 suppressFromSettings])
    {
      v10 = -1;
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = -1;
  }

  v11 = [v8 preferenceSpecifierNamed:v9 target:self set:0 get:sel_getNotificationsInfo_ detail:0 cell:v10 edit:0];

  v12 = PSBundlePathForPreferenceBundle();
  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277D40000]];

  [v11 setObject:*MEMORY[0x277D4BE08] forKeyedSubscript:*MEMORY[0x277D3FF08]];
  [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FE00]];
  [v11 setControllerLoadAction:sel_lazyLoadBundle_];
  [v11 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  v13 = [MEMORY[0x277D75348] systemGray4Color];
  [v11 setObject:v13 forKeyedSubscript:0x2876778C8];

  [v11 setObject:v7 forKeyedSubscript:*MEMORY[0x277D4BE18]];
  [v11 setUserInfo:v4];
  v14 = [v7 sectionID];
  if (v14)
  {
    [v11 setIdentifier:v14];
  }

  else
  {
    v15 = [v4 identifier];
    [v11 setIdentifier:v15];
  }

  return v11;
}

- (void)updateSpecifier:(id)a3 usageItem:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [v15 userInfo];

  if (v7 != v6)
  {
    v8 = [v6 displayName];
    [v15 setName:v8];

    [v15 setUserInfo:v6];
    v9 = [(STNotificationsUsageGroupSpecifierProvider *)self notificationSectionByBundleID];
    v10 = [v6 budgetItemIdentifier];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = [v11 sectionID];
    if (v12)
    {
      [v15 setIdentifier:v12];
    }

    else
    {
      v13 = [v6 identifier];
      [v15 setIdentifier:v13];
    }

    if (v11)
    {
      v14 = 2;
    }

    else
    {
      v14 = -1;
    }

    [v15 setCellType:v14];
    [v15 setObject:v11 forKeyedSubscript:*MEMORY[0x277D4BE18]];
  }
}

- (id)_usageDetailsCoordinator:(id)a3
{
  v3 = [(STUsageGroupSpecifierProvider *)self coordinator];
  v4 = [v3 usageDetailsCoordinator];

  return v4;
}

- (void)_specifierIdentifierDidChange:(id)a3
{
  v6 = [a3 userInfo];
  v4 = [v6 objectForKeyedSubscript:0x287674108];
  v5 = [(STShowMoreUsageGroupSpecifierProvider *)self summarySpecifier];
  [v5 setIdentifier:v4];
}

@end