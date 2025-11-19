@interface STAllowanceProgressGroupSpecifierProvider
- (STAllowanceProgressGroupSpecifierProvider)init;
- (STAllowanceProgressGroupSpecifierProvider)initWithBudgetedIdentifiers:(id)a3 usageItem:(id)a4;
- (id)_allowanceDetailText:(id)a3;
- (id)_specifierForAllowance:(id)a3;
- (void)_allowancesByIdentifierDidChangeFrom:(id)a3 to:(id)a4;
- (void)_didFetchAppInfo:(id)a3;
- (void)_showAllowanceDetailListController:(id)a3;
- (void)_showAllowanceSetupListController:(id)a3;
- (void)allowanceDetailController:(id)a3 didDeleteAllowance:(id)a4;
- (void)allowanceDetailController:(id)a3 didSaveAllowance:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCoordinator:(id)a3;
@end

@implementation STAllowanceProgressGroupSpecifierProvider

- (STAllowanceProgressGroupSpecifierProvider)init
{
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [(STAllowanceProgressGroupSpecifierProvider *)self initWithBudgetedIdentifiers:v3 usageItem:0];

  return v4;
}

- (STAllowanceProgressGroupSpecifierProvider)initWithBudgetedIdentifiers:(id)a3 usageItem:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v13 = [v6 copy];
    budgetedIdentifiers = v8->_budgetedIdentifiers;
    v8->_budgetedIdentifiers = v13;

    objc_storeStrong(&v8->_usageItem, a4);
    if (v7)
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

      v20 = [(STGroupSpecifierProvider *)v8 mutableSpecifiers];
      [v20 addObject:v8->_addAllowanceSpecifier];
    }
  }

  return v8;
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STUsageGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.allowancesByIdentifier" context:"KVOContextAllowanceProgressGroupSpecifierProvider"];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" context:"KVOContextAllowanceProgressGroupSpecifierProvider"];
  v6.receiver = self;
  v6.super_class = STAllowanceProgressGroupSpecifierProvider;
  [(STUsageGroupSpecifierProvider *)&v6 setCoordinator:v4];
  [v4 addObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.allowancesByIdentifier" options:7 context:"KVOContextAllowanceProgressGroupSpecifierProvider"];
  [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" options:5 context:"KVOContextAllowanceProgressGroupSpecifierProvider"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  if (a6 == "KVOContextAllowanceProgressGroupSpecifierProvider")
  {
    [(STUsageGroupSpecifierProvider *)self coordinator];

    if ([v10 isEqualToString:@"timeAllowancesCoordinator.viewModel.allowancesByIdentifier"])
    {
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v13 = [MEMORY[0x277CBEB68] null];

      if (v12 == v13)
      {

        v12 = 0;
      }

      v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v15 = [MEMORY[0x277CBEB68] null];

      if (v14 == v15)
      {

        v14 = 0;
      }

      [(STAllowanceProgressGroupSpecifierProvider *)self _allowancesByIdentifierDidChangeFrom:v12 to:v14];
    }

    else
    {
      [(STUsageGroupSpecifierProvider *)self coordinator];

      if (![v10 isEqualToString:@"usageDetailsCoordinator.viewModel.hasUsageData"])
      {
        goto LABEL_16;
      }

      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v16 = [MEMORY[0x277CBEB68] null];

      if (v12 == v16)
      {

        v12 = 0;
      }

      if (([v12 BOOLValue] & 1) == 0)
      {
        [(STGroupSpecifierProvider *)self setIsHidden:1];
        goto LABEL_10;
      }

      v14 = [(STGroupSpecifierProvider *)self specifiers];
      -[STGroupSpecifierProvider setIsHidden:](self, "setIsHidden:", [v14 count] == 0);
    }

LABEL_10:
    goto LABEL_16;
  }

  v17.receiver = self;
  v17.super_class = STAllowanceProgressGroupSpecifierProvider;
  [(STAllowanceProgressGroupSpecifierProvider *)&v17 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
LABEL_16:
}

- (void)_allowancesByIdentifierDidChangeFrom:(id)a3 to:(id)a4
{
  v116 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(STAllowanceProgressGroupSpecifierProvider *)self budgetedIdentifiers];
  if ([v8 count])
  {
    v9 = MEMORY[0x277CCAC30];
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __85__STAllowanceProgressGroupSpecifierProvider__allowancesByIdentifierDidChangeFrom_to___block_invoke;
    v108[3] = &unk_279B7CBF0;
    v109 = v8;
    v10 = [v9 predicateWithBlock:v108];
    v11 = [v6 allValues];
    v12 = [v11 filteredArrayUsingPredicate:v10];

    v13 = [v7 allValues];
    v14 = [v13 filteredArrayUsingPredicate:v10];
  }

  else
  {
    v12 = [v6 allValues];
    v14 = [v7 allValues];
  }

  if (v12 != v14 && ([v12 isEqual:v14] & 1) == 0)
  {
    v69 = v8;
    v70 = v7;
    v76 = v6;
    v71 = v12;
    v15 = [v12 mutableCopy];
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v68 = v14;
    v16 = v14;
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
              v24 = [v22 bundleIdentifiers];
              [v19 addObjectsFromArray:v24];
            }

            else
            {
              v25 = objc_alloc(MEMORY[0x277CBEB58]);
              v24 = [v22 bundleIdentifiers];
              v26 = v25;
              v15 = v83;
              v19 = [v26 initWithArray:v24];
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

    v27 = [MEMORY[0x277D4B8C0] sharedCache];
    v28 = [v16 mutableCopy];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    obj = v12;
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
            v34 = [v32 bundleIdentifiers];
            v35 = [v34 countByEnumeratingWithState:&v96 objects:v113 count:16];
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
                    objc_enumerationMutation(v34);
                  }

                  v39 = *(*(&v96 + 1) + 8 * k);
                  if ([v19 containsObject:v39])
                  {
                    [v19 removeObject:v39];
                  }

                  else
                  {
                    [v27 removeObserver:self bundleIdentifier:v39];
                  }
                }

                v36 = [v34 countByEnumeratingWithState:&v96 objects:v113 count:16];
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
    v75 = [(STGroupSpecifierProvider *)self specifiers];
    v81 = [v75 countByEnumeratingWithState:&v92 objects:v112 count:16];
    if (v81)
    {
      obja = *v93;
      do
      {
        for (m = 0; m != v81; ++m)
        {
          if (*v93 != obja)
          {
            objc_enumerationMutation(v75);
          }

          v41 = *(*(&v92 + 1) + 8 * m);
          v42 = [v41 userInfo];
          if (v42)
          {
            [v28 removeObject:v42];
            v43 = [v42 identifier];
            v44 = [v76 objectForKeyedSubscript:v43];
            v45 = [v83 containsObject:v44];

            if (v45)
            {
              v46 = [v28 firstObject];
              if (v46)
              {
                [v28 removeObject:v46];
                [v41 setUserInfo:v46];
                v73 = MEMORY[0x277D4B928];
                v74 = [v46 categoryIdentifiers];
                v47 = [v46 bundleIdentifiers];
                v48 = [v46 webDomains];
                v49 = [v73 displayNameForUsageLimitWithCategoryIdentifiers:v74 bundleIdentifiers:v47 webDomains:v48];
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

        v81 = [v75 countByEnumeratingWithState:&v92 objects:v112 count:16];
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

    v57 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
    [v57 removeObjectsInArray:v72];
    v58 = [(STAllowanceProgressGroupSpecifierProvider *)self addAllowanceSpecifier];

    if (v58)
    {
      v59 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{objc_msgSend(v57, "count") - 1, objc_msgSend(v50, "count")}];
      [v57 insertObjects:v50 atIndexes:v59];
    }

    else
    {
      [v57 addObjectsFromArray:v50];
    }

    v82 = v57;
    if ([v57 count])
    {
      v60 = [(STUsageGroupSpecifierProvider *)self coordinator];
      v61 = [v60 usageDetailsCoordinator];
      v62 = [v61 viewModel];
      -[STGroupSpecifierProvider setIsHidden:](self, "setIsHidden:", [v62 hasUsageData] ^ 1);
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

          [v27 addObserver:self selector:sel__didFetchAppInfo_ bundleIdentifier:*(*(&v84 + 1) + 8 * ii)];
        }

        v65 = [v63 countByEnumeratingWithState:&v84 objects:v110 count:16];
      }

      while (v65);
    }

    v6 = v76;
    v8 = v69;
    v7 = v70;
    v12 = v71;
    v14 = v68;
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

- (id)_specifierForAllowance:(id)a3
{
  v4 = MEMORY[0x277D4B928];
  v5 = a3;
  v6 = [v5 categoryIdentifiers];
  v7 = [v5 bundleIdentifiers];
  v8 = [v5 webDomains];
  v9 = [v4 displayNameForUsageLimitWithCategoryIdentifiers:v6 bundleIdentifiers:v7 webDomains:v8];

  v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v9 target:self set:0 get:sel__allowanceDetailText_ detail:0 cell:2 edit:objc_opt_class()];
  [v10 setUserInfo:v5];

  [v10 setControllerLoadAction:sel__showAllowanceDetailListController_];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x277D400B8]];

  [v10 setObject:&unk_28769CF68 forKeyedSubscript:*MEMORY[0x277D401C0]];
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];

  return v10;
}

- (id)_allowanceDetailText:(id)a3
{
  v3 = [a3 userInfo];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 timeByDay];

    if (v5)
    {
      v6 = +[STScreenTimeSettingsUIBundle bundle];
      v7 = [v6 localizedStringForKey:@"AllowanceCustomScheduleDetailText" value:&stru_28766E5A8 table:0];
    }

    else
    {
      v6 = [MEMORY[0x277CCA958] st_sharedShortDynamicDateFormatter];
      v8 = [v4 time];
      [STAllowance timeIntervalForAllowanceDateComponents:v8];
      v7 = [v6 stringFromTimeInterval:?];
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

- (void)_showAllowanceDetailListController:(id)a3
{
  v4 = a3;
  v5 = [STAllowanceDetailListController alloc];
  v6 = [(STUsageGroupSpecifierProvider *)self coordinator];
  v10 = [(STAllowanceDetailListController *)v5 initWithCoordinator:v6];

  v7 = [v4 userInfo];
  [(STAllowanceDetailListController *)v10 setAllowance:v7];

  [(STAllowanceDetailListController *)v10 setDelegate:self];
  v8 = [(STGroupSpecifierProvider *)self delegate];
  [(STAllowanceDetailListController *)v10 setParentController:v8];
  v9 = [v8 rootController];
  [(STAllowanceDetailListController *)v10 setRootController:v9];

  [(STAllowanceDetailListController *)v10 setSpecifier:v4];
  [(STGroupSpecifierProvider *)self showController:v10 animated:1];
}

- (void)_showAllowanceSetupListController:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(STAllowanceProgressGroupSpecifierProvider *)self usageItem];
  v7 = [(STUsageGroupSpecifierProvider *)self coordinator];
  v8 = objc_opt_new();
  [v8 setBehaviorType:{objc_msgSend(v7, "isPasscodeEnabled")}];
  v9 = [v6 itemType];
  if (v9 > 3)
  {
    if ((v9 - 5) >= 2)
    {
      if (v9 == 4)
      {
        v10 = [v6 budgetItemIdentifier];
        v16 = v10;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
        [v8 setWebDomains:v11];
        goto LABEL_10;
      }

      goto LABEL_11;
    }

LABEL_7:
    v10 = [v6 budgetItemIdentifier];
    v17[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v8 setBundleIdentifiers:v11];
    goto LABEL_10;
  }

  switch(v9)
  {
    case 1:
      v14 = [MEMORY[0x277CCA890] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"STAllowanceProgressGroupSpecifierProvider.m" lineNumber:279 description:{@"Unexpected usage item: @", v6}];

      break;
    case 2:
      goto LABEL_7;
    case 3:
      v10 = [v6 budgetItemIdentifier];
      v15 = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
      [v8 setCategoryIdentifiers:v11];
LABEL_10:

      break;
  }

LABEL_11:
  v12 = [[STAllowanceDetailListController alloc] initWithCoordinator:v7];
  [(STAllowanceDetailListController *)v12 setAllowance:v8];
  [(STAllowanceDetailListController *)v12 setDelegate:self];
  [(STAllowanceDetailListController *)v12 setIsSetupController:1];
  [(STAllowanceDetailListController *)v12 setCreatingNewAllowance:1];
  v13 = objc_opt_new();
  [v13 setSpecifier:v5];

  [v13 showController:v12];
  [(STGroupSpecifierProvider *)self showController:v13 animated:1];
}

- (void)allowanceDetailController:(id)a3 didSaveAllowance:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STUsageGroupSpecifierProvider *)self coordinator];
  v9 = [v8 timeAllowancesCoordinator];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__STAllowanceProgressGroupSpecifierProvider_allowanceDetailController_didSaveAllowance___block_invoke;
  v11[3] = &unk_279B7CBC8;
  v12 = v6;
  v13 = self;
  v10 = v6;
  [v9 saveAllowance:v7 completionHandler:v11];
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

- (void)allowanceDetailController:(id)a3 didDeleteAllowance:(id)a4
{
  v5 = a4;
  v6 = [(STUsageGroupSpecifierProvider *)self coordinator];
  v7 = [v6 timeAllowancesCoordinator];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__STAllowanceProgressGroupSpecifierProvider_allowanceDetailController_didDeleteAllowance___block_invoke;
  v8[3] = &unk_279B7CC18;
  v8[4] = self;
  [v7 deleteAllowance:v5 completionHandler:v8];
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

- (void)_didFetchAppInfo:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D4BC40]];
  v6 = [v5 bundleIdentifier];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = self;
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
        v12 = [v11 userInfo];
        v13 = [v12 bundleIdentifiers];
        if ([v13 containsObject:v6])
        {
          v14 = MEMORY[0x277D4B928];
          v15 = [v12 categoryIdentifiers];
          v16 = [v12 webDomains];
          v17 = [v14 displayNameForUsageLimitWithCategoryIdentifiers:v15 bundleIdentifiers:v13 webDomains:v16];
          [v11 setName:v17];

          [(STGroupSpecifierProvider *)v18 reloadSpecifier:v11 animated:1];
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