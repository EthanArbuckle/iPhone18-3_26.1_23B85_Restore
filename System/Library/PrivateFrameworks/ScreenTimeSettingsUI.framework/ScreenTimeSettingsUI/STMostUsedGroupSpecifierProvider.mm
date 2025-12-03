@interface STMostUsedGroupSpecifierProvider
- (STMostUsedGroupSpecifierProvider)init;
- (id)allowanceIconForUsageItem:(id)item;
- (id)newSpecifierWithUsageItem:(id)item;
- (void)_allowancesByIdentifierDidChangeFrom:(id)from to:(id)to;
- (void)_selectedUsageReportDidChangeFrom:(id)from to:(id)to;
- (void)loadActiveBudgetedIdentifiers;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reloadMostUsedSpecifiers;
- (void)setCoordinator:(id)coordinator;
- (void)showMostUsedDetailListController:(id)controller;
- (void)toggleSelectedItemType:(id)type;
- (void)updateSpecifier:(id)specifier usageItem:(id)item;
@end

@implementation STMostUsedGroupSpecifierProvider

- (STMostUsedGroupSpecifierProvider)init
{
  v12.receiver = self;
  v12.super_class = STMostUsedGroupSpecifierProvider;
  v2 = [(STShowMoreUsageGroupSpecifierProvider *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_selectedItemType = 0;
    v4 = +[STScreenTimeSettingsUIBundle bundle];
    v5 = MEMORY[0x277D3FAD8];
    v6 = [v4 localizedStringForKey:@"MostUsedGroupSpecifierName" value:&stru_28766E5A8 table:0];
    v7 = [v5 groupSpecifierWithName:v6];

    [v7 setTarget:v3];
    [v7 setButtonAction:sel_toggleSelectedItemType_];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x277D3FFA0]];

    v10 = [v4 localizedStringForKey:@"ShowMostUsedCategoriesButtonText" value:&stru_28766E5A8 table:0];
    [v7 setObject:v10 forKeyedSubscript:0x287677008];

    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287677028];
    [(STGroupSpecifierProvider *)v3 setGroupSpecifier:v7];
    [(STShowMoreUsageGroupSpecifierProvider *)v3 setNumberOfItemsToShow:8];
  }

  return v3;
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" context:"KVOContextMostUsedGroupSpecifierProvider"];
  [coordinator removeObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.allowancesByIdentifier" context:"KVOContextMostUsedGroupSpecifierProvider"];
  v6.receiver = self;
  v6.super_class = STMostUsedGroupSpecifierProvider;
  [(STUsageGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" options:7 context:"KVOContextMostUsedGroupSpecifierProvider"];
  [coordinatorCopy addObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.allowancesByIdentifier" options:7 context:"KVOContextMostUsedGroupSpecifierProvider"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == "KVOContextMostUsedGroupSpecifierProvider")
  {
    [(STUsageGroupSpecifierProvider *)self coordinator];

    if ([pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.selectedUsageReport"])
    {
      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null = [MEMORY[0x277CBEB68] null];

      if (v12 == null)
      {

        v12 = 0;
      }

      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null2 = [MEMORY[0x277CBEB68] null];

      if (v14 == null2)
      {

        v14 = 0;
      }

      [(STMostUsedGroupSpecifierProvider *)self _selectedUsageReportDidChangeFrom:v12 to:v14];
    }

    else
    {
      [(STUsageGroupSpecifierProvider *)self coordinator];

      if (![pathCopy isEqualToString:@"timeAllowancesCoordinator.viewModel.allowancesByIdentifier"])
      {
        goto LABEL_16;
      }

      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null3 = [MEMORY[0x277CBEB68] null];

      if (v12 == null3)
      {

        v12 = 0;
      }

      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null4 = [MEMORY[0x277CBEB68] null];

      if (v14 == null4)
      {

        v14 = 0;
      }

      [(STMostUsedGroupSpecifierProvider *)self _allowancesByIdentifierDidChangeFrom:v12 to:v14];
    }

    goto LABEL_16;
  }

  v18.receiver = self;
  v18.super_class = STMostUsedGroupSpecifierProvider;
  [(STMostUsedGroupSpecifierProvider *)&v18 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
LABEL_16:
}

- (void)_selectedUsageReportDidChangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  appAndWebUsages = [toCopy appAndWebUsages];
  v8 = [appAndWebUsages count];

  [(STGroupSpecifierProvider *)self setIsHidden:v8 == 0];
  if (fromCopy != toCopy && ([fromCopy isEqual:toCopy] & 1) == 0)
  {
    categoryUsageByTrustIdentifier = [toCopy categoryUsageByTrustIdentifier];
    v10 = ![categoryUsageByTrustIdentifier count] && (-[STMostUsedGroupSpecifierProvider selectedItemType](self, "selectedItemType") == 0);

    v11 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    groupSpecifier = [(STGroupSpecifierProvider *)self groupSpecifier];
    [groupSpecifier setObject:v11 forKeyedSubscript:0x287677028];

    if (v8)
    {
      [(STMostUsedGroupSpecifierProvider *)self reloadMostUsedSpecifiers];
    }
  }
}

- (void)_allowancesByIdentifierDidChangeFrom:(id)from to:(id)to
{
  toCopy = to;
  allValues = [from allValues];
  allValues2 = [toCopy allValues];

  if (allValues != allValues2 && ([allValues isEqual:allValues2] & 1) == 0)
  {
    [(STMostUsedGroupSpecifierProvider *)self loadActiveBudgetedIdentifiers];
    [(STShowMoreUsageGroupSpecifierProvider *)self refreshUsageSpecifiersWithUpdates:1];
  }
}

- (id)newSpecifierWithUsageItem:(id)item
{
  v4 = MEMORY[0x277D3FAD8];
  itemCopy = item;
  displayName = [itemCopy displayName];
  v7 = [v4 preferenceSpecifierNamed:displayName target:self set:0 get:sel_getUsageItem_ detail:0 cell:2 edit:0];

  [v7 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  displayName2 = [itemCopy displayName];
  [v7 setName:displayName2];

  [v7 setUserInfo:itemCopy];
  [v7 setControllerLoadAction:sel_showMostUsedDetailListController_];
  v9 = [(STMostUsedGroupSpecifierProvider *)self allowanceIconForUsageItem:itemCopy];

  if (v9)
  {
    [v7 setObject:v9 forKeyedSubscript:0x287675208];
  }

  else
  {
    [v7 removePropertyForKey:0x287675208];
  }

  return v7;
}

- (void)updateSpecifier:(id)specifier usageItem:(id)item
{
  specifierCopy = specifier;
  itemCopy = item;
  displayName = [itemCopy displayName];
  [specifierCopy setName:displayName];

  [specifierCopy setUserInfo:itemCopy];
  v8 = [(STMostUsedGroupSpecifierProvider *)self allowanceIconForUsageItem:itemCopy];

  if (v8)
  {
    [specifierCopy setObject:v8 forKeyedSubscript:0x287675208];
  }

  else
  {
    [specifierCopy removePropertyForKey:0x287675208];
  }
}

- (void)loadActiveBudgetedIdentifiers
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  selfCopy = self;
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
  viewModel = [timeAllowancesCoordinator viewModel];
  allowancesByIdentifier = [viewModel allowancesByIdentifier];
  allValues = [allowancesByIdentifier allValues];

  obj = allValues;
  v44 = [allValues countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v44)
  {
    v43 = *v59;
    do
    {
      v9 = 0;
      do
      {
        if (*v59 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v9;
        v10 = *(*(&v58 + 1) + 8 * v9);
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        bundleIdentifiers = [v10 bundleIdentifiers];
        v12 = [bundleIdentifiers countByEnumeratingWithState:&v54 objects:v64 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v55;
          do
          {
            v15 = 0;
            do
            {
              if (*v55 != v14)
              {
                objc_enumerationMutation(bundleIdentifiers);
              }

              v16 = *(*(&v54 + 1) + 8 * v15);
              v17 = v10;
              v18 = v3;
              v19 = [v18 objectForKeyedSubscript:v16];
              if (v19)
              {
                v20 = v19;
                [v19 addObject:v17];
              }

              else
              {
                v20 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v17, 0}];
                [v18 setObject:v20 forKeyedSubscript:v16];
              }

              ++v15;
            }

            while (v13 != v15);
            v13 = [bundleIdentifiers countByEnumeratingWithState:&v54 objects:v64 count:16];
          }

          while (v13);
        }

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        webDomains = [v10 webDomains];
        v22 = [webDomains countByEnumeratingWithState:&v50 objects:v63 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v51;
          do
          {
            v25 = 0;
            do
            {
              if (*v51 != v24)
              {
                objc_enumerationMutation(webDomains);
              }

              v26 = *(*(&v50 + 1) + 8 * v25);
              v27 = v10;
              v28 = v3;
              v29 = [v28 objectForKeyedSubscript:v26];
              if (v29)
              {
                v30 = v29;
                [v29 addObject:v27];
              }

              else
              {
                v30 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v27, 0}];
                [v28 setObject:v30 forKeyedSubscript:v26];
              }

              ++v25;
            }

            while (v23 != v25);
            v23 = [webDomains countByEnumeratingWithState:&v50 objects:v63 count:16];
          }

          while (v23);
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        categoryIdentifiers = [v10 categoryIdentifiers];
        v32 = [categoryIdentifiers countByEnumeratingWithState:&v46 objects:v62 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v47;
          do
          {
            v35 = 0;
            do
            {
              if (*v47 != v34)
              {
                objc_enumerationMutation(categoryIdentifiers);
              }

              v36 = *(*(&v46 + 1) + 8 * v35);
              v37 = v10;
              v38 = v3;
              v39 = [v38 objectForKeyedSubscript:v36];
              if (v39)
              {
                v40 = v39;
                [v39 addObject:v37];
              }

              else
              {
                v40 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v37, 0}];
                [v38 setObject:v40 forKeyedSubscript:v36];
              }

              ++v35;
            }

            while (v33 != v35);
            v33 = [categoryIdentifiers countByEnumeratingWithState:&v46 objects:v62 count:16];
          }

          while (v33);
        }

        v9 = v45 + 1;
      }

      while (v45 + 1 != v44);
      v44 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v44);
  }

  [(STMostUsedGroupSpecifierProvider *)selfCopy setAllowancesByActiveBudgetedIdentifier:v3];
}

- (void)toggleSelectedItemType:(id)type
{
  typeCopy = type;
  selectedItemType = self->_selectedItemType;
  if (selectedItemType)
  {
    if (selectedItemType != 1)
    {
      goto LABEL_6;
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  [(STMostUsedGroupSpecifierProvider *)self setSelectedItemType:v5];
LABEL_6:
  [(STMostUsedGroupSpecifierProvider *)self reloadMostUsedSpecifiers];
}

- (void)reloadMostUsedSpecifiers
{
  groupSpecifier = [(STGroupSpecifierProvider *)self groupSpecifier];
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
  viewModel = [usageDetailsCoordinator viewModel];

  selectedUsageReport = [viewModel selectedUsageReport];
  selectedItemType = [(STMostUsedGroupSpecifierProvider *)self selectedItemType];
  if (selectedItemType == 1)
  {
    categoryUsages = [selectedUsageReport categoryUsages];
    v9 = @"ShowMostUsedAppsButtonText";
    goto LABEL_5;
  }

  if (!selectedItemType)
  {
    categoryUsages = [selectedUsageReport appAndWebUsages];
    v9 = @"ShowMostUsedCategoriesButtonText";
LABEL_5:
    v10 = +[STScreenTimeSettingsUIBundle bundle];
    v11 = [v10 localizedStringForKey:v9 value:&stru_28766E5A8 table:0];
    [groupSpecifier setObject:v11 forKeyedSubscript:0x287677008];

    goto LABEL_7;
  }

  categoryUsages = 0;
LABEL_7:
  v12 = [groupSpecifier objectForKeyedSubscript:*MEMORY[0x277D3FFB0]];
  [v12 reloadFromSpecifier];
  [(STShowMoreUsageGroupSpecifierProvider *)self setUsageItems:categoryUsages];
  -[STGroupSpecifierProvider setIsHidden:](self, "setIsHidden:", [categoryUsages count] == 0);
}

- (void)showMostUsedDetailListController:(id)controller
{
  controllerCopy = controller;
  userInfo = [controllerCopy userInfo];
  v5 = [STDrillInDetailListController alloc];
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  v7 = [(STDrillInDetailListController *)v5 initWithUsageItem:userInfo coordinator:coordinator];

  delegate = [(STGroupSpecifierProvider *)self delegate];
  [(STDrillInDetailListController *)v7 setParentController:delegate];
  rootController = [delegate rootController];
  [(STDrillInDetailListController *)v7 setRootController:rootController];

  [(STDrillInDetailListController *)v7 setSpecifier:controllerCopy];
  [(STGroupSpecifierProvider *)self showController:v7 animated:1];
}

- (id)allowanceIconForUsageItem:(id)item
{
  v27 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  budgetItemIdentifier = [itemCopy budgetItemIdentifier];
  allowancesByActiveBudgetedIdentifier = [(STMostUsedGroupSpecifierProvider *)self allowancesByActiveBudgetedIdentifier];
  v7 = [allowancesByActiveBudgetedIdentifier objectForKeyedSubscript:budgetItemIdentifier];

  if (![v7 count])
  {
LABEL_14:
    v9 = 0;
    goto LABEL_18;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = 0;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if ([v13 allowanceEnabled])
        {
          [v13 timeToday];
          v15 = v14;
          totalUsage = [itemCopy totalUsage];
          [totalUsage doubleValue];
          v18 = v15 - v17;

          if (v18 <= 0.0)
          {

            v19 = @"HourGlassEmpty";
            goto LABEL_16;
          }

          v10 = 1;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    if (v10)
    {
      v19 = @"HourGlassFilling";
LABEL_16:
      v20 = MEMORY[0x277D755B8];
      v8 = +[STScreenTimeSettingsUIBundle bundle];
      v9 = [v20 imageNamed:v19 inBundle:v8];
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_17:

LABEL_18:

  return v9;
}

@end