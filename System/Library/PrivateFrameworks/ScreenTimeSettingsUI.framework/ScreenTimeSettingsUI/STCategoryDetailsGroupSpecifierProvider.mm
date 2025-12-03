@interface STCategoryDetailsGroupSpecifierProvider
- (STCategoryDetailsGroupSpecifierProvider)initWithCategoryUsageItem:(id)item coordinator:(id)coordinator;
- (id)totalUsageDescription:(id)description;
- (void)showMostUsedDetailListController:(id)controller;
@end

@implementation STCategoryDetailsGroupSpecifierProvider

- (STCategoryDetailsGroupSpecifierProvider)initWithCategoryUsageItem:(id)item coordinator:(id)coordinator
{
  v56 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  coordinatorCopy = coordinator;
  if ([itemCopy itemType] != 3)
  {
    [STCategoryDetailsGroupSpecifierProvider initWithCategoryUsageItem:a2 coordinator:self];
  }

  v54.receiver = self;
  v54.super_class = STCategoryDetailsGroupSpecifierProvider;
  v9 = [(STGroupSpecifierProvider *)&v54 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_coordinator, coordinator);
    v11 = 0x277D3F000uLL;
    v12 = MEMORY[0x277D3FAD8];
    v13 = +[STScreenTimeSettingsUIBundle bundle];
    v14 = [v13 localizedStringForKey:@"MostUsedCategoryInfoGroupSpecifierName" value:&stru_28766E5A8 table:0];
    v15 = [v12 groupSpecifierWithName:v14];
    [(STGroupSpecifierProvider *)v10 setGroupSpecifier:v15];

    v16 = objc_opt_new();
    v17 = objc_opt_new();
    v40 = coordinatorCopy;
    usageDetailsCoordinator = [coordinatorCopy usageDetailsCoordinator];
    viewModel = [usageDetailsCoordinator viewModel];
    selectedUsageReport = [viewModel selectedUsageReport];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v39 = selectedUsageReport;
    obj = [selectedUsageReport appAndWebUsages];
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
          budgetItemIdentifier = [itemCopy budgetItemIdentifier];
          categoryIdentifier = [v22 categoryIdentifier];
          v25 = [budgetItemIdentifier isEqualToString:categoryIdentifier];

          if (v25)
          {
            [v16 addObject:v22];
            v26 = *(v11 + 2776);
            displayName = [v22 displayName];
            v28 = [v26 preferenceSpecifierNamed:displayName target:v10 set:0 get:sel_totalUsageDescription_ detail:0 cell:2 edit:0];

            if ([v22 itemType] == 4)
            {
              image = [v22 image];
              [v28 setObject:image forKeyedSubscript:v45];
            }

            else
            {
              v30 = v16;
              v31 = v11;
              v32 = v10;
              v33 = itemCopy;
              image = [v22 budgetItemIdentifier];
              mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
              v35 = [mEMORY[0x277D4B8C0] appInfoForBundleIdentifier:image];

              if ([v35 source] == 2 && (objc_msgSend(image, "isEqualToString:", v43) & 1) == 0)
              {
                [v28 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v42];
                v36 = v41;
              }

              else
              {
                [v28 setObject:objc_opt_class() forKeyedSubscript:v44];
                v36 = @"STAppBundleID";
              }

              [v28 setObject:image forKeyedSubscript:v36];

              itemCopy = v33;
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

    mutableSpecifiers = [(STGroupSpecifierProvider *)v10 mutableSpecifiers];
    [mutableSpecifiers addObjectsFromArray:v17];

    coordinatorCopy = v40;
  }

  return v10;
}

- (id)totalUsageDescription:(id)description
{
  userInfo = [description userInfo];
  totalUsage = [userInfo totalUsage];
  [totalUsage doubleValue];
  v6 = v5;
  if (v5 >= 60.0)
  {
    st_sharedAbbreviatedSecondsDateFormatter = objc_opt_new();
    [st_sharedAbbreviatedSecondsDateFormatter setAllowedUnits:96];
    [st_sharedAbbreviatedSecondsDateFormatter setUnitsStyle:1];
  }

  else
  {
    st_sharedAbbreviatedSecondsDateFormatter = [MEMORY[0x277CCA958] st_sharedAbbreviatedSecondsDateFormatter];
  }

  v8 = [st_sharedAbbreviatedSecondsDateFormatter stringFromTimeInterval:v6];

  return v8;
}

- (void)showMostUsedDetailListController:(id)controller
{
  controllerCopy = controller;
  userInfo = [controllerCopy userInfo];
  v5 = [STDrillInDetailListController alloc];
  coordinator = [(STCategoryDetailsGroupSpecifierProvider *)self coordinator];
  v7 = [(STDrillInDetailListController *)v5 initWithUsageItem:userInfo coordinator:coordinator];

  delegate = [(STGroupSpecifierProvider *)self delegate];
  [(STDrillInDetailListController *)v7 setParentController:delegate];
  rootController = [delegate rootController];
  [(STDrillInDetailListController *)v7 setRootController:rootController];

  [(STDrillInDetailListController *)v7 setSpecifier:controllerCopy];
  [(STGroupSpecifierProvider *)self showController:v7 animated:1];
}

- (void)initWithCategoryUsageItem:(uint64_t)a1 coordinator:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STCategoryDetailsGroupSpecifierProvider.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"categoryUsageItem.itemType == STUsageItemTypeCategory"}];
}

@end