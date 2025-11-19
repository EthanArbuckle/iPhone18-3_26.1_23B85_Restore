@interface STCategoryDetailsGroupSpecifierProvider
- (STCategoryDetailsGroupSpecifierProvider)initWithCategoryUsageItem:(id)a3 coordinator:(id)a4;
- (id)totalUsageDescription:(id)a3;
- (void)showMostUsedDetailListController:(id)a3;
@end

@implementation STCategoryDetailsGroupSpecifierProvider

- (STCategoryDetailsGroupSpecifierProvider)initWithCategoryUsageItem:(id)a3 coordinator:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 itemType] != 3)
  {
    [STCategoryDetailsGroupSpecifierProvider initWithCategoryUsageItem:a2 coordinator:self];
  }

  v54.receiver = self;
  v54.super_class = STCategoryDetailsGroupSpecifierProvider;
  v9 = [(STGroupSpecifierProvider *)&v54 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_coordinator, a4);
    v11 = 0x277D3F000uLL;
    v12 = MEMORY[0x277D3FAD8];
    v13 = +[STScreenTimeSettingsUIBundle bundle];
    v14 = [v13 localizedStringForKey:@"MostUsedCategoryInfoGroupSpecifierName" value:&stru_28766E5A8 table:0];
    v15 = [v12 groupSpecifierWithName:v14];
    [(STGroupSpecifierProvider *)v10 setGroupSpecifier:v15];

    v16 = objc_opt_new();
    v17 = objc_opt_new();
    v40 = v8;
    v18 = [v8 usageDetailsCoordinator];
    v19 = [v18 viewModel];
    v20 = [v19 selectedUsageReport];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v39 = v20;
    obj = [v20 appAndWebUsages];
    v49 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v49)
    {
      v48 = *v51;
      v43 = *MEMORY[0x277D4BBC8];
      v42 = *MEMORY[0x277D40020];
      v41 = *MEMORY[0x277D40008];
      v44 = *MEMORY[0x277D3FE58];
      v45 = *MEMORY[0x277D3FFC0];
      v46 = v17;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v51 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v50 + 1) + 8 * i);
          v23 = [v7 budgetItemIdentifier];
          v24 = [v22 categoryIdentifier];
          v25 = [v23 isEqualToString:v24];

          if (v25)
          {
            [v16 addObject:v22];
            v26 = *(v11 + 2776);
            v27 = [v22 displayName];
            v28 = [v26 preferenceSpecifierNamed:v27 target:v10 set:0 get:sel_totalUsageDescription_ detail:0 cell:2 edit:0];

            if ([v22 itemType] == 4)
            {
              v29 = [v22 image];
              [v28 setObject:v29 forKeyedSubscript:v45];
            }

            else
            {
              v30 = v16;
              v31 = v11;
              v32 = v10;
              v33 = v7;
              v29 = [v22 budgetItemIdentifier];
              v34 = [MEMORY[0x277D4B8C0] sharedCache];
              v35 = [v34 appInfoForBundleIdentifier:v29];

              if ([v35 source] == 2 && (objc_msgSend(v29, "isEqualToString:", v43) & 1) == 0)
              {
                [v28 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v42];
                v36 = v41;
              }

              else
              {
                [v28 setObject:objc_opt_class() forKeyedSubscript:v44];
                v36 = @"STAppBundleID";
              }

              [v28 setObject:v29 forKeyedSubscript:v36];

              v7 = v33;
              v10 = v32;
              v11 = v31;
              v16 = v30;
              v17 = v46;
            }

            [v28 setUserInfo:v22];
            [v28 setControllerLoadAction:sel_showMostUsedDetailListController_];
            [v17 addObject:v28];
          }
        }

        v49 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v49);
    }

    v37 = [(STGroupSpecifierProvider *)v10 mutableSpecifiers];
    [v37 addObjectsFromArray:v17];

    v8 = v40;
  }

  return v10;
}

- (id)totalUsageDescription:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 totalUsage];
  [v4 doubleValue];
  v6 = v5;
  if (v5 >= 60.0)
  {
    v7 = objc_opt_new();
    [v7 setAllowedUnits:96];
    [v7 setUnitsStyle:1];
  }

  else
  {
    v7 = [MEMORY[0x277CCA958] st_sharedAbbreviatedSecondsDateFormatter];
  }

  v8 = [v7 stringFromTimeInterval:v6];

  return v8;
}

- (void)showMostUsedDetailListController:(id)a3
{
  v4 = a3;
  v10 = [v4 userInfo];
  v5 = [STDrillInDetailListController alloc];
  v6 = [(STCategoryDetailsGroupSpecifierProvider *)self coordinator];
  v7 = [(STDrillInDetailListController *)v5 initWithUsageItem:v10 coordinator:v6];

  v8 = [(STGroupSpecifierProvider *)self delegate];
  [(STDrillInDetailListController *)v7 setParentController:v8];
  v9 = [v8 rootController];
  [(STDrillInDetailListController *)v7 setRootController:v9];

  [(STDrillInDetailListController *)v7 setSpecifier:v4];
  [(STGroupSpecifierProvider *)self showController:v7 animated:1];
}

- (void)initWithCategoryUsageItem:(uint64_t)a1 coordinator:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STCategoryDetailsGroupSpecifierProvider.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"categoryUsageItem.itemType == STUsageItemTypeCategory"}];
}

@end