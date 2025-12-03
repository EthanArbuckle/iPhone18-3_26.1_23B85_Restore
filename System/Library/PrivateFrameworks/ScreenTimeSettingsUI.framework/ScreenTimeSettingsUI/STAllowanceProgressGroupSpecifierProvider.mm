@interface STAllowanceProgressGroupSpecifierProvider
- (STAllowanceProgressGroupSpecifierProvider)init;
- (STAllowanceProgressGroupSpecifierProvider)initWithBudgetedIdentifiers:(id)identifiers usageItem:(id)item;
- (id)_allowanceDetailText:(id)text;
- (id)_specifierForAllowance:(id)allowance;
- (void)_allowancesByIdentifierDidChangeFrom:(id)from to:(id)to;
- (void)_didFetchAppInfo:(id)info;
- (void)_showAllowanceDetailListController:(id)controller;
- (void)_showAllowanceSetupListController:(id)controller;
- (void)allowanceDetailController:(id)controller didDeleteAllowance:(id)allowance;
- (void)allowanceDetailController:(id)controller didSaveAllowance:(id)allowance;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
@end

@implementation STAllowanceProgressGroupSpecifierProvider

- (STAllowanceProgressGroupSpecifierProvider)init
{
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [(STAllowanceProgressGroupSpecifierProvider *)self initWithBudgetedIdentifiers:v3 usageItem:0];

  return v4;
}

- (STAllowanceProgressGroupSpecifierProvider)initWithBudgetedIdentifiers:(id)identifiers usageItem:(id)item
{
  identifiersCopy = identifiers;
  itemCopy = item;
  v22.receiver = self;
  v22.super_class = STAllowanceProgressGroupSpecifierProvider;
  v8 = [(STGroupSpecifierProvider *)&v22 init];
  if (v8)
  {
    v9 = +[STScreenTimeSettingsUIBundle bundle];
    v10 = MEMORY[0x277D3FAD8];
    v11 = [v9 localizedStringForKey:@"AllowancesGroupName" value:&stru_28766E5A8 table:0];
    v12 = [v10 groupSpecifierWithName:v11];
    [(STGroupSpecifierProvider *)v8 setGroupSpecifier:v12];

    [(STGroupSpecifierProvider *)v8 setIsHidden:1];
    v13 = [identifiersCopy copy];
    budgetedIdentifiers = v8->_budgetedIdentifiers;
    v8->_budgetedIdentifiers = v13;

    objc_storeStrong(&v8->_usageItem, item);
    if (itemCopy)
    {
      v15 = [v9 localizedStringForKey:@"AddLimitSpecifierName" value:&stru_28766E5A8 table:0];
      v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v15 target:v8 set:0 get:0 detail:0 cell:13 edit:objc_opt_class()];
      addAllowanceSpecifier = v8->_addAllowanceSpecifier;
      v8->_addAllowanceSpecifier = v16;

      [(PSSpecifier *)v8->_addAllowanceSpecifier setButtonAction:sel__showAllowanceSetupListController_];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      [(PSSpecifier *)v8->_addAllowanceSpecifier setObject:v19 forKeyedSubscript:*MEMORY[0x277D400B8]];

      [(PSSpecifier *)v8->_addAllowanceSpecifier setObject:&unk_28769CF68 forKeyedSubscript:*MEMORY[0x277D401C0]];
      [(PSSpecifier *)v8->_addAllowanceSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
      if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
      {
        [(PSSpecifier *)v8->_addAllowanceSpecifier setButtonAction:sel_showStoreDemoAlert];
      }

      mutableSpecifiers = [(STGroupSpecifierProvider *)v8 mutableSpecifiers];
      [mutableSpecifiers addObject:v8->_addAllowanceSpecifier];
    }
  }

  return v8;
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.allowancesByIdentifier" context:"KVOContextAllowanceProgressGroupSpecifierProvider"];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" context:"KVOContextAllowanceProgressGroupSpecifierProvider"];
  v6.receiver = self;
  v6.super_class = STAllowanceProgressGroupSpecifierProvider;
  [(STUsageGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.allowancesByIdentifier" options:7 context:"KVOContextAllowanceProgressGroupSpecifierProvider"];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" options:5 context:"KVOContextAllowanceProgressGroupSpecifierProvider"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == "KVOContextAllowanceProgressGroupSpecifierProvider")
  {
    [(STUsageGroupSpecifierProvider *)self coordinator];

    if ([pathCopy isEqualToString:@"timeAllowancesCoordinator.viewModel.allowancesByIdentifier"])
    {
      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null = [MEMORY[0x277CBEB68] null];

      if (v12 == null)
      {

        v12 = 0;
      }

      specifiers = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null2 = [MEMORY[0x277CBEB68] null];

      if (specifiers == null2)
      {

        specifiers = 0;
      }

      [(STAllowanceProgressGroupSpecifierProvider *)self _allowancesByIdentifierDidChangeFrom:v12 to:specifiers];
    }

    else
    {
      [(STUsageGroupSpecifierProvider *)self coordinator];

      if (![pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.hasUsageData"])
      {
        goto LABEL_16;
      }

      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null3 = [MEMORY[0x277CBEB68] null];

      if (v12 == null3)
      {

        v12 = 0;
      }

      if (([v12 BOOLValue] & 1) == 0)
      {
        [(STGroupSpecifierProvider *)self setIsHidden:1];
        goto LABEL_10;
      }

      specifiers = [(STGroupSpecifierProvider *)self specifiers];
      -[STGroupSpecifierProvider setIsHidden:](self, "setIsHidden:", [specifiers count] == 0);
    }

LABEL_10:
    goto LABEL_16;
  }

  v17.receiver = self;
  v17.super_class = STAllowanceProgressGroupSpecifierProvider;
  [(STAllowanceProgressGroupSpecifierProvider *)&v17 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
LABEL_16:
}

- (void)_allowancesByIdentifierDidChangeFrom:(id)from to:(id)to
{
  v116 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  budgetedIdentifiers = [(STAllowanceProgressGroupSpecifierProvider *)self budgetedIdentifiers];
  if ([budgetedIdentifiers count])
  {
    v9 = MEMORY[0x277CCAC30];
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __85__STAllowanceProgressGroupSpecifierProvider__allowancesByIdentifierDidChangeFrom_to___block_invoke;
    v108[3] = &unk_279B7CBF0;
    v109 = budgetedIdentifiers;
    v10 = [v9 predicateWithBlock:v108];
    allValues = [fromCopy allValues];
    allValues3 = [allValues filteredArrayUsingPredicate:v10];

    allValues2 = [toCopy allValues];
    allValues4 = [allValues2 filteredArrayUsingPredicate:v10];
  }

  else
  {
    allValues3 = [fromCopy allValues];
    allValues4 = [toCopy allValues];
  }

  if (allValues3 != allValues4 && ([allValues3 isEqual:allValues4] & 1) == 0)
  {
    v69 = budgetedIdentifiers;
    v70 = toCopy;
    v76 = fromCopy;
    v71 = allValues3;
    v15 = [allValues3 mutableCopy];
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v68 = allValues4;
    v16 = allValues4;
    v17 = [v16 countByEnumeratingWithState:&v104 objects:v115 count:16];
    v83 = v15;
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v105;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v105 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v104 + 1) + 8 * i);
          if (v15 && (v23 = [v15 indexOfObject:*(*(&v104 + 1) + 8 * i)], v23 != 0x7FFFFFFFFFFFFFFFLL))
          {
            [v15 removeObjectAtIndex:v23];
          }

          else
          {
            if (v19)
            {
              bundleIdentifiers = [v22 bundleIdentifiers];
              [v19 addObjectsFromArray:bundleIdentifiers];
            }

            else
            {
              v25 = objc_alloc(MEMORY[0x277CBEB58]);
              bundleIdentifiers = [v22 bundleIdentifiers];
              v26 = v25;
              v15 = v83;
              v19 = [v26 initWithArray:bundleIdentifiers];
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v104 objects:v115 count:16];
      }

      while (v18);
    }

    else
    {
      v19 = 0;
    }

    mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
    v28 = [v16 mutableCopy];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    obj = allValues3;
    v29 = [obj countByEnumeratingWithState:&v100 objects:v114 count:16];
    v77 = v28;
    if (v29)
    {
      v30 = v29;
      v80 = *v101;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v101 != v80)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v100 + 1) + 8 * j);
          if (v28 && (v33 = [v28 indexOfObject:*(*(&v100 + 1) + 8 * j)], v33 != 0x7FFFFFFFFFFFFFFFLL))
          {
            [v28 removeObjectAtIndex:v33];
          }

          else
          {
            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            bundleIdentifiers2 = [v32 bundleIdentifiers];
            v35 = [bundleIdentifiers2 countByEnumeratingWithState:&v96 objects:v113 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v97;
              do
              {
                for (k = 0; k != v36; ++k)
                {
                  if (*v97 != v37)
                  {
                    objc_enumerationMutation(bundleIdentifiers2);
                  }

                  v39 = *(*(&v96 + 1) + 8 * k);
                  if ([v19 containsObject:v39])
                  {
                    [v19 removeObject:v39];
                  }

                  else
                  {
                    [mEMORY[0x277D4B8C0] removeObserver:self bundleIdentifier:v39];
                  }
                }

                v36 = [bundleIdentifiers2 countByEnumeratingWithState:&v96 objects:v113 count:16];
              }

              while (v36);
            }

            v15 = v83;
            v28 = v77;
          }
        }

        v30 = [obj countByEnumeratingWithState:&v100 objects:v114 count:16];
      }

      while (v30);
    }

    v72 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    specifiers = [(STGroupSpecifierProvider *)self specifiers];
    v81 = [specifiers countByEnumeratingWithState:&v92 objects:v112 count:16];
    if (v81)
    {
      obja = *v93;
      do
      {
        for (m = 0; m != v81; ++m)
        {
          if (*v93 != obja)
          {
            objc_enumerationMutation(specifiers);
          }

          v41 = *(*(&v92 + 1) + 8 * m);
          userInfo = [v41 userInfo];
          if (userInfo)
          {
            [v28 removeObject:userInfo];
            identifier = [userInfo identifier];
            v44 = [v76 objectForKeyedSubscript:identifier];
            v45 = [v83 containsObject:v44];

            if (v45)
            {
              firstObject = [v28 firstObject];
              if (firstObject)
              {
                [v28 removeObject:firstObject];
                [v41 setUserInfo:firstObject];
                v73 = MEMORY[0x277D4B928];
                categoryIdentifiers = [firstObject categoryIdentifiers];
                bundleIdentifiers3 = [firstObject bundleIdentifiers];
                webDomains = [firstObject webDomains];
                v49 = [v73 displayNameForUsageLimitWithCategoryIdentifiers:categoryIdentifiers bundleIdentifiers:bundleIdentifiers3 webDomains:webDomains];
                [v41 setName:v49];

                v28 = v77;
                [(STGroupSpecifierProvider *)self reloadSpecifier:v41 animated:1];
              }

              else
              {
                [v72 addObject:v41];
              }
            }
          }
        }

        v81 = [specifiers countByEnumeratingWithState:&v92 objects:v112 count:16];
      }

      while (v81);
    }

    v50 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v28, "count")}];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v51 = v28;
    v52 = [v51 countByEnumeratingWithState:&v88 objects:v111 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v89;
      do
      {
        for (n = 0; n != v53; ++n)
        {
          if (*v89 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = [(STAllowanceProgressGroupSpecifierProvider *)self _specifierForAllowance:*(*(&v88 + 1) + 8 * n)];
          [v50 addObject:v56];
        }

        v53 = [v51 countByEnumeratingWithState:&v88 objects:v111 count:16];
      }

      while (v53);
    }

    mutableSpecifiers = [(STGroupSpecifierProvider *)self mutableSpecifiers];
    [mutableSpecifiers removeObjectsInArray:v72];
    addAllowanceSpecifier = [(STAllowanceProgressGroupSpecifierProvider *)self addAllowanceSpecifier];

    if (addAllowanceSpecifier)
    {
      v59 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{objc_msgSend(mutableSpecifiers, "count") - 1, objc_msgSend(v50, "count")}];
      [mutableSpecifiers insertObjects:v50 atIndexes:v59];
    }

    else
    {
      [mutableSpecifiers addObjectsFromArray:v50];
    }

    v82 = mutableSpecifiers;
    if ([mutableSpecifiers count])
    {
      coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
      usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
      viewModel = [usageDetailsCoordinator viewModel];
      -[STGroupSpecifierProvider setIsHidden:](self, "setIsHidden:", [viewModel hasUsageData] ^ 1);
    }

    else
    {
      [(STGroupSpecifierProvider *)self setIsHidden:1];
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v63 = v19;
    v64 = [v63 countByEnumeratingWithState:&v84 objects:v110 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v85;
      do
      {
        for (ii = 0; ii != v65; ++ii)
        {
          if (*v85 != v66)
          {
            objc_enumerationMutation(v63);
          }

          [mEMORY[0x277D4B8C0] addObserver:self selector:sel__didFetchAppInfo_ bundleIdentifier:*(*(&v84 + 1) + 8 * ii)];
        }

        v65 = [v63 countByEnumeratingWithState:&v84 objects:v110 count:16];
      }

      while (v65);
    }

    fromCopy = v76;
    budgetedIdentifiers = v69;
    toCopy = v70;
    allValues3 = v71;
    allValues4 = v68;
  }
}

uint64_t __85__STAllowanceProgressGroupSpecifierProvider__allowancesByIdentifierDidChangeFrom_to___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 bundleIdentifiers];
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v29 != v11)
      {
        objc_enumerationMutation(v8);
      }

      if ([v7 containsObject:{*(*(&v28 + 1) + 8 * v12), v28}])
      {
        goto LABEL_26;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = [v3 webDomains];
  v14 = *(a1 + 32);
  v15 = v13;
  v7 = v14;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v15;
  v16 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
LABEL_11:
    v19 = 0;
    while (1)
    {
      if (*v29 != v18)
      {
        objc_enumerationMutation(v8);
      }

      if ([v7 containsObject:*(*(&v28 + 1) + 8 * v19)])
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v17)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

LABEL_26:

    v24 = 1;
    goto LABEL_27;
  }

LABEL_17:

  v20 = [v3 categoryIdentifiers];
  v21 = *(a1 + 32);
  v22 = v20;
  v23 = v21;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v22;
  v24 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v24)
  {
    v25 = *v29;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v8);
        }

        if ([v23 containsObject:*(*(&v28 + 1) + 8 * i)])
        {
          v24 = 1;
          goto LABEL_29;
        }
      }

      v24 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_29:

LABEL_27:
  return v24;
}

- (id)_specifierForAllowance:(id)allowance
{
  v4 = MEMORY[0x277D4B928];
  allowanceCopy = allowance;
  categoryIdentifiers = [allowanceCopy categoryIdentifiers];
  bundleIdentifiers = [allowanceCopy bundleIdentifiers];
  webDomains = [allowanceCopy webDomains];
  v9 = [v4 displayNameForUsageLimitWithCategoryIdentifiers:categoryIdentifiers bundleIdentifiers:bundleIdentifiers webDomains:webDomains];

  v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v9 target:self set:0 get:sel__allowanceDetailText_ detail:0 cell:2 edit:objc_opt_class()];
  [v10 setUserInfo:allowanceCopy];

  [v10 setControllerLoadAction:sel__showAllowanceDetailListController_];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x277D400B8]];

  [v10 setObject:&unk_28769CF68 forKeyedSubscript:*MEMORY[0x277D401C0]];
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];

  return v10;
}

- (id)_allowanceDetailText:(id)text
{
  userInfo = [text userInfo];
  v4 = userInfo;
  if (userInfo)
  {
    timeByDay = [userInfo timeByDay];

    if (timeByDay)
    {
      st_sharedShortDynamicDateFormatter = +[STScreenTimeSettingsUIBundle bundle];
      v7 = [st_sharedShortDynamicDateFormatter localizedStringForKey:@"AllowanceCustomScheduleDetailText" value:&stru_28766E5A8 table:0];
    }

    else
    {
      st_sharedShortDynamicDateFormatter = [MEMORY[0x277CCA958] st_sharedShortDynamicDateFormatter];
      time = [v4 time];
      [STAllowance timeIntervalForAllowanceDateComponents:time];
      v7 = [st_sharedShortDynamicDateFormatter stringFromTimeInterval:?];
    }
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_28766E5A8;
  }

  v10 = v9;

  return v9;
}

- (void)_showAllowanceDetailListController:(id)controller
{
  controllerCopy = controller;
  v5 = [STAllowanceDetailListController alloc];
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  v10 = [(STAllowanceDetailListController *)v5 initWithCoordinator:coordinator];

  userInfo = [controllerCopy userInfo];
  [(STAllowanceDetailListController *)v10 setAllowance:userInfo];

  [(STAllowanceDetailListController *)v10 setDelegate:self];
  delegate = [(STGroupSpecifierProvider *)self delegate];
  [(STAllowanceDetailListController *)v10 setParentController:delegate];
  rootController = [delegate rootController];
  [(STAllowanceDetailListController *)v10 setRootController:rootController];

  [(STAllowanceDetailListController *)v10 setSpecifier:controllerCopy];
  [(STGroupSpecifierProvider *)self showController:v10 animated:1];
}

- (void)_showAllowanceSetupListController:(id)controller
{
  v17[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  usageItem = [(STAllowanceProgressGroupSpecifierProvider *)self usageItem];
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  v8 = objc_opt_new();
  [v8 setBehaviorType:{objc_msgSend(coordinator, "isPasscodeEnabled")}];
  itemType = [usageItem itemType];
  if (itemType > 3)
  {
    if ((itemType - 5) >= 2)
    {
      if (itemType == 4)
      {
        budgetItemIdentifier = [usageItem budgetItemIdentifier];
        v16 = budgetItemIdentifier;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
        [v8 setWebDomains:v11];
        goto LABEL_10;
      }

      goto LABEL_11;
    }

LABEL_7:
    budgetItemIdentifier = [usageItem budgetItemIdentifier];
    v17[0] = budgetItemIdentifier;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v8 setBundleIdentifiers:v11];
    goto LABEL_10;
  }

  switch(itemType)
  {
    case 1:
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"STAllowanceProgressGroupSpecifierProvider.m" lineNumber:279 description:{@"Unexpected usage item: @", usageItem}];

      break;
    case 2:
      goto LABEL_7;
    case 3:
      budgetItemIdentifier = [usageItem budgetItemIdentifier];
      v15 = budgetItemIdentifier;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
      [v8 setCategoryIdentifiers:v11];
LABEL_10:

      break;
  }

LABEL_11:
  v12 = [[STAllowanceDetailListController alloc] initWithCoordinator:coordinator];
  [(STAllowanceDetailListController *)v12 setAllowance:v8];
  [(STAllowanceDetailListController *)v12 setDelegate:self];
  [(STAllowanceDetailListController *)v12 setIsSetupController:1];
  [(STAllowanceDetailListController *)v12 setCreatingNewAllowance:1];
  v13 = objc_opt_new();
  [v13 setSpecifier:controllerCopy];

  [v13 showController:v12];
  [(STGroupSpecifierProvider *)self showController:v13 animated:1];
}

- (void)allowanceDetailController:(id)controller didSaveAllowance:(id)allowance
{
  controllerCopy = controller;
  allowanceCopy = allowance;
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__STAllowanceProgressGroupSpecifierProvider_allowanceDetailController_didSaveAllowance___block_invoke;
  v11[3] = &unk_279B7CBC8;
  v12 = controllerCopy;
  selfCopy = self;
  v10 = controllerCopy;
  [timeAllowancesCoordinator saveAllowance:allowanceCopy completionHandler:v11];
}

void __88__STAllowanceProgressGroupSpecifierProvider_allowanceDetailController_didSaveAllowance___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[STUILog persistence];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __88__STAllowanceProgressGroupSpecifierProvider_allowanceDetailController_didSaveAllowance___block_invoke_cold_1(v3, v4);
    }
  }

  if ([*(a1 + 32) isSetupController])
  {
    [*(a1 + 40) dismissViewControllerAnimated:1];
  }
}

- (void)allowanceDetailController:(id)controller didDeleteAllowance:(id)allowance
{
  allowanceCopy = allowance;
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__STAllowanceProgressGroupSpecifierProvider_allowanceDetailController_didDeleteAllowance___block_invoke;
  v8[3] = &unk_279B7CC18;
  v8[4] = self;
  [timeAllowancesCoordinator deleteAllowance:allowanceCopy completionHandler:v8];
}

void __90__STAllowanceProgressGroupSpecifierProvider_allowanceDetailController_didDeleteAllowance___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[STUILog persistence];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __90__STAllowanceProgressGroupSpecifierProvider_allowanceDetailController_didDeleteAllowance___block_invoke_cold_1(v3, v4);
    }
  }

  [*(a1 + 32) popToViewControllerAnimated:1];
}

- (void)_didFetchAppInfo:(id)info
{
  v25 = *MEMORY[0x277D85DE8];
  userInfo = [info userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D4BC40]];
  bundleIdentifier = [v5 bundleIdentifier];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  obj = [(STGroupSpecifierProvider *)self specifiers];
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        userInfo2 = [v11 userInfo];
        bundleIdentifiers = [userInfo2 bundleIdentifiers];
        if ([bundleIdentifiers containsObject:bundleIdentifier])
        {
          v14 = MEMORY[0x277D4B928];
          categoryIdentifiers = [userInfo2 categoryIdentifiers];
          webDomains = [userInfo2 webDomains];
          v17 = [v14 displayNameForUsageLimitWithCategoryIdentifiers:categoryIdentifiers bundleIdentifiers:bundleIdentifiers webDomains:webDomains];
          [v11 setName:v17];

          [(STGroupSpecifierProvider *)selfCopy reloadSpecifier:v11 animated:1];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }
}

void __88__STAllowanceProgressGroupSpecifierProvider_allowanceDetailController_didSaveAllowance___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_264BA2000, a2, OS_LOG_TYPE_FAULT, "Failed to save edited allowance: %{public}@", &v2, 0xCu);
}

void __90__STAllowanceProgressGroupSpecifierProvider_allowanceDetailController_didDeleteAllowance___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_264BA2000, a2, OS_LOG_TYPE_FAULT, "Failed to delete allowance: %{public}@", &v2, 0xCu);
}

@end