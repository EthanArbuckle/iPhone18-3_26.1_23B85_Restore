@interface STNotificationsUsageGroupSpecifierProvider
- (STNotificationsUsageGroupSpecifierProvider)init;
- (id)_usageDetailsCoordinator:(id)coordinator;
- (id)newSpecifierWithUsageItem:(id)item;
- (void)_selectedUsageReportDidChangeFrom:(id)from to:(id)to;
- (void)_specifierIdentifierDidChange:(id)change;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
- (void)updateSpecifier:(id)specifier usageItem:(id)item;
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

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v2 selector:sel__specifierIdentifierDidChange_ name:0x2876740E8 object:0];

  return v2;
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" context:"KVOContextNotificationUsageGroupSpecifierProvider"];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" context:"KVOContextNotificationUsageGroupSpecifierProvider"];
  v6.receiver = self;
  v6.super_class = STNotificationsUsageGroupSpecifierProvider;
  [(STUsageGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" options:5 context:"KVOContextNotificationUsageGroupSpecifierProvider"];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" options:7 context:"KVOContextNotificationUsageGroupSpecifierProvider"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == "KVOContextNotificationUsageGroupSpecifierProvider")
  {
    [(STUsageGroupSpecifierProvider *)self coordinator];

    if ([pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.hasUsageData"])
    {
      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null = [MEMORY[0x277CBEB68] null];

      if (v12 == null)
      {

        v12 = 0;
      }

      -[STGroupSpecifierProvider setIsHidden:](self, "setIsHidden:", [v12 BOOLValue] ^ 1);
    }

    else
    {
      [(STUsageGroupSpecifierProvider *)self coordinator];

      if (![pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.selectedUsageReport"])
      {
        goto LABEL_14;
      }

      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null2 = [MEMORY[0x277CBEB68] null];

      if (v12 == null2)
      {

        v12 = 0;
      }

      v15 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null3 = [MEMORY[0x277CBEB68] null];

      if (v15 == null3)
      {

        v15 = 0;
      }

      [(STNotificationsUsageGroupSpecifierProvider *)self _selectedUsageReportDidChangeFrom:v12 to:v15];
    }

    goto LABEL_14;
  }

  v17.receiver = self;
  v17.super_class = STNotificationsUsageGroupSpecifierProvider;
  [(STNotificationsUsageGroupSpecifierProvider *)&v17 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
LABEL_14:
}

- (void)_selectedUsageReportDidChangeFrom:(id)from to:(id)to
{
  v57 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  if (fromCopy != toCopy && ([fromCopy isEqual:toCopy] & 1) == 0)
  {
    v45 = fromCopy;
    type = [fromCopy type];
    v9 = type == [toCopy type];
    summarySpecifier = [(STShowMoreUsageGroupSpecifierProvider *)self summarySpecifier];
    [(STGroupSpecifierProvider *)self reloadSpecifier:summarySpecifier animated:v9];

    notificationSectionByBundleID = [(STNotificationsUsageGroupSpecifierProvider *)self notificationSectionByBundleID];
    notificationsByTrustIdentifier = [toCopy notificationsByTrustIdentifier];
    allKeys = [notificationsByTrustIdentifier allKeys];
    v14 = [allKeys valueForKeyPath:@"identifier"];

    v42 = v14;
    v15 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v14];
    v16 = MEMORY[0x277CBEB98];
    notificationSectionByBundleID2 = [(STNotificationsUsageGroupSpecifierProvider *)self notificationSectionByBundleID];
    allKeys2 = [notificationSectionByBundleID2 allKeys];
    v19 = [v16 setWithArray:allKeys2];
    [v15 minusSet:v19];

    v46 = v15;
    if ([v15 count])
    {
      notificationSettingsGateway = [(STNotificationsUsageGroupSpecifierProvider *)self notificationSettingsGateway];
      v21 = [notificationSettingsGateway sectionInfoForSectionIDs:v15];

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
            sectionID = [v27 sectionID];
            [notificationSectionByBundleID setObject:v27 forKeyedSubscript:sectionID];
          }

          v24 = [v22 countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v24);
      }
    }

    selfCopy = self;
    coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
    viewModel = [coordinator viewModel];
    installedBundleIDs = [viewModel installedBundleIDs];

    v44 = toCopy;
    notifications = [toCopy notifications];
    v33 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(notifications, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v34 = notifications;
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
          budgetItemIdentifier = [v39 budgetItemIdentifier];
          v41 = [installedBundleIDs containsObject:budgetItemIdentifier];

          if (v41)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v36);
    }

    [(STShowMoreUsageGroupSpecifierProvider *)selfCopy setUsageItems:v33];
    toCopy = v44;
    fromCopy = v45;
  }
}

- (id)newSpecifierWithUsageItem:(id)item
{
  itemCopy = item;
  notificationSectionByBundleID = [(STNotificationsUsageGroupSpecifierProvider *)self notificationSectionByBundleID];
  budgetItemIdentifier = [itemCopy budgetItemIdentifier];
  v7 = [notificationSectionByBundleID objectForKeyedSubscript:budgetItemIdentifier];

  v8 = MEMORY[0x277D3FAD8];
  displayName = [itemCopy displayName];
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

  v11 = [v8 preferenceSpecifierNamed:displayName target:self set:0 get:sel_getNotificationsInfo_ detail:0 cell:v10 edit:0];

  v12 = PSBundlePathForPreferenceBundle();
  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277D40000]];

  [v11 setObject:*MEMORY[0x277D4BE08] forKeyedSubscript:*MEMORY[0x277D3FF08]];
  [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FE00]];
  [v11 setControllerLoadAction:sel_lazyLoadBundle_];
  [v11 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  systemGray4Color = [MEMORY[0x277D75348] systemGray4Color];
  [v11 setObject:systemGray4Color forKeyedSubscript:0x2876778C8];

  [v11 setObject:v7 forKeyedSubscript:*MEMORY[0x277D4BE18]];
  [v11 setUserInfo:itemCopy];
  sectionID = [v7 sectionID];
  if (sectionID)
  {
    [v11 setIdentifier:sectionID];
  }

  else
  {
    identifier = [itemCopy identifier];
    [v11 setIdentifier:identifier];
  }

  return v11;
}

- (void)updateSpecifier:(id)specifier usageItem:(id)item
{
  specifierCopy = specifier;
  itemCopy = item;
  userInfo = [specifierCopy userInfo];

  if (userInfo != itemCopy)
  {
    displayName = [itemCopy displayName];
    [specifierCopy setName:displayName];

    [specifierCopy setUserInfo:itemCopy];
    notificationSectionByBundleID = [(STNotificationsUsageGroupSpecifierProvider *)self notificationSectionByBundleID];
    budgetItemIdentifier = [itemCopy budgetItemIdentifier];
    v11 = [notificationSectionByBundleID objectForKeyedSubscript:budgetItemIdentifier];

    sectionID = [v11 sectionID];
    if (sectionID)
    {
      [specifierCopy setIdentifier:sectionID];
    }

    else
    {
      identifier = [itemCopy identifier];
      [specifierCopy setIdentifier:identifier];
    }

    if (v11)
    {
      v14 = 2;
    }

    else
    {
      v14 = -1;
    }

    [specifierCopy setCellType:v14];
    [specifierCopy setObject:v11 forKeyedSubscript:*MEMORY[0x277D4BE18]];
  }
}

- (id)_usageDetailsCoordinator:(id)coordinator
{
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];

  return usageDetailsCoordinator;
}

- (void)_specifierIdentifierDidChange:(id)change
{
  userInfo = [change userInfo];
  v4 = [userInfo objectForKeyedSubscript:0x287674108];
  summarySpecifier = [(STShowMoreUsageGroupSpecifierProvider *)self summarySpecifier];
  [summarySpecifier setIdentifier:v4];
}

@end