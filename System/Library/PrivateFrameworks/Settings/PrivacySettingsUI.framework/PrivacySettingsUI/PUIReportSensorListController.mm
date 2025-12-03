@interface PUIReportSensorListController
+ (id)appSpecifiersFromManager:(id)manager;
- (PUIReportSensorListController)init;
- (id)specifiers;
- (void)dealloc;
- (void)sortByWasTapped;
@end

@implementation PUIReportSensorListController

+ (id)appSpecifiersFromManager:(id)manager
{
  v63 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v52 = objc_opt_new();
  [v52 setUnitsStyle:2];
  v4 = objc_opt_new();
  allEvents = [managerCopy allEvents];
  v6 = [managerCopy bundleIDsAndLatestDatesFromEvents:allEvents];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v51 = v6;
  obj = [v6 allKeys];
  v53 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v53)
  {
    v49 = *v59;
    v48 = *MEMORY[0x277D40008];
    v47 = *MEMORY[0x277D40020];
    v46 = *MEMORY[0x277D3FE58];
    v45 = *MEMORY[0x277D40160];
    v42 = managerCopy;
    v44 = v4;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v59 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v58 + 1) + 8 * i);
        v9 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v8 allowPlaceholder:0 error:0];
        localizedName = [v9 localizedName];

        v11 = MEMORY[0x277D3FAD8];
        if ([localizedName length])
        {
          v12 = localizedName;
        }

        else
        {
          v12 = v8;
        }

        v13 = [v11 preferenceSpecifierNamed:v12 target:self set:0 get:sel_valueForSpecifier_ detail:objc_opt_class() cell:2 edit:0];
        [v13 setIdentifier:v8];
        [v13 setObject:v8 forKeyedSubscript:@"PUIReportAppIDKey"];
        [v13 setObject:v8 forKeyedSubscript:v48];
        [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v47];
        [v13 setObject:managerCopy forKeyedSubscript:@"PUIReportSensorManagerKey"];
        [v13 setObject:objc_opt_class() forKeyedSubscript:v46];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __58__PUIReportSensorListController_appSpecifiersFromManager___block_invoke;
        v57[3] = &unk_279BA21E0;
        v57[4] = v8;
        v54 = [managerCopy eventsFiltered:v57];
        v14 = [managerCopy categoriesAndLatestDatesFromEvents:?];
        allKeys = [v14 allKeys];

        v16 = [v51 objectForKeyedSubscript:v8];
        v17 = [MEMORY[0x277CBEAA8] now];
        v18 = [v52 localizedStringForDate:v16 relativeToDate:v17];

        if ([allKeys count])
        {
          if ([allKeys count] == 1)
          {
            v19 = MEMORY[0x277CCACA8];
            v20 = PUI_LocalizedStringForAppReport(@"TIME_AND_CATEGORY_1");
            v21 = objc_opt_class();
            v22 = [allKeys objectAtIndexedSubscript:0];
            v23 = [v21 localizedStringForCategory:v22];
            v24 = [v19 stringWithFormat:v20, v18, v23];
          }

          else
          {
            v25 = [allKeys count];
            v26 = MEMORY[0x277CCACA8];
            if (v25 == 2)
            {
              v20 = PUI_LocalizedStringForAppReport(@"TIME_AND_CATEGORY_2");
              v27 = objc_opt_class();
              v22 = [allKeys objectAtIndexedSubscript:0];
              v23 = [v27 localizedStringForCategory:v22];
              v39 = v26;
              v28 = objc_opt_class();
              v29 = [allKeys objectAtIndexedSubscript:1];
              [v28 localizedStringForCategory:v29];
              v40 = localizedName;
              v31 = v30 = v18;
              v24 = [v39 stringWithFormat:v20, v30, v23, v31];

              v18 = v30;
              localizedName = v40;

              managerCopy = v42;
            }

            else
            {
              v20 = PUI_LocalizedStringForAppReport(@"TIME_AND_CATEGORY_3");
              v32 = objc_opt_class();
              v22 = [allKeys objectAtIndexedSubscript:0];
              v23 = [v32 localizedStringForCategory:v22];
              v33 = objc_opt_class();
              v41 = [allKeys objectAtIndexedSubscript:1];
              v34 = [v33 localizedStringForCategory:v41];
              v24 = [v26 localizedStringWithFormat:v20, v18, v23, v34, objc_msgSend(allKeys, "count") - 2];

              managerCopy = v42;
            }
          }

          v4 = v44;
        }

        else
        {
          v24 = &stru_28771E540;
        }

        [v13 setObject:v24 forKeyedSubscript:v45];
        [v4 addObject:v13];
      }

      v53 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v53);
  }

  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __58__PUIReportSensorListController_appSpecifiersFromManager___block_invoke_2;
  v55[3] = &unk_279BA2208;
  v56 = v51;
  v35 = managerCopy;
  v36 = v51;
  [v4 sortUsingComparator:v55];

  v37 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __58__PUIReportSensorListController_appSpecifiersFromManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 access];
  v4 = [v3 accessor];
  v5 = [v4 identifier];
  v6 = [v5 isEqual:*(a1 + 32)];

  return v6;
}

uint64_t __58__PUIReportSensorListController_appSpecifiersFromManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 identifier];
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = *(a1 + 32);
  v10 = [v6 identifier];

  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [v8 compare:v11];

  return v12;
}

- (PUIReportSensorListController)init
{
  v7.receiver = self;
  v7.super_class = PUIReportSensorListController;
  v2 = [(PUIReportSensorListController *)&v7 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_dataDidChange name:@"PUIReportSensorManagerDataHasChangedNotification" object:0];

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    PUIAnalyticsLogView(v5, 0, 0);
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PUIReportSensorListController;
  [(PUIReportSensorListController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    manager = [(PUIReportSensorListController *)self manager];

    if (!manager)
    {
      specifier = [(PUIReportSensorListController *)self specifier];
      v7 = [specifier objectForKeyedSubscript:@"PUIReportSensorManagerKey"];
      [(PUIReportSensorListController *)self setManager:v7];
    }

    v8 = PUI_LocalizedStringForAppReport(@"DATA_SENSOR_ACCESS_TITLE");
    [(PUIReportSensorListController *)self setTitle:v8];

    v9 = objc_alloc(MEMORY[0x277D751E0]);
    v10 = PUI_LocalizedStringForAppReport(@"SORT_BY");
    v11 = [v9 initWithTitle:v10 style:0 target:self action:sel_sortByWasTapped];
    navigationItem = [(PUIReportSensorListController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v11];

    v13 = objc_opt_new();
    if ([(PUIReportSensorListController *)self alphabeticalSort])
    {
      v14 = &stru_28771E540;
    }

    else
    {
      v14 = PUI_LocalizedStringForAppReport(@"MOST_RECENT_ACCESS");
    }

    v15 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"HEADER_GROUP" name:v14];
    [v13 addObject:v15];
    v16 = objc_opt_class();
    manager2 = [(PUIReportSensorListController *)self manager];
    v18 = [v16 appSpecifiersFromManager:manager2];
    v19 = [v18 mutableCopy];

    if ([(PUIReportSensorListController *)self alphabeticalSort])
    {
      [v19 sortUsingComparator:&__block_literal_global_18];
    }

    [v13 addObjectsFromArray:v19];
    v20 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v13;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

uint64_t __43__PUIReportSensorListController_specifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)sortByWasTapped
{
  v3 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v4 = MEMORY[0x277D750F8];
  v5 = PUI_LocalizedStringForAppReport(@"RECENT_ACCESS");
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__PUIReportSensorListController_sortByWasTapped__block_invoke;
  v14[3] = &unk_279BA1B38;
  v14[4] = self;
  v6 = [v4 actionWithTitle:v5 style:0 handler:v14];

  [v6 _setChecked:{-[PUIReportSensorListController alphabeticalSort](self, "alphabeticalSort") ^ 1}];
  [v3 addAction:v6];
  v7 = MEMORY[0x277D750F8];
  v8 = PUI_LocalizedStringForAppReport(@"ALPHABETICAL");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__PUIReportSensorListController_sortByWasTapped__block_invoke_2;
  v13[3] = &unk_279BA1B38;
  v13[4] = self;
  v9 = [v7 actionWithTitle:v8 style:0 handler:v13];

  [v9 _setChecked:{-[PUIReportSensorListController alphabeticalSort](self, "alphabeticalSort")}];
  [v3 addAction:v9];
  v10 = MEMORY[0x277D750F8];
  v11 = PUI_LocalizedStringForAppReport(@"CANCEL");
  v12 = [v10 actionWithTitle:v11 style:1 handler:0];

  [v3 addAction:v12];
  [(PUIReportSensorListController *)self presentViewController:v3 animated:1 completion:0];
}

uint64_t __48__PUIReportSensorListController_sortByWasTapped__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) alphabeticalSort];
  if (result)
  {
    [*(a1 + 32) setAlphabeticalSort:0];
    v3 = *(a1 + 32);

    return [v3 reloadSpecifiers];
  }

  return result;
}

uint64_t __48__PUIReportSensorListController_sortByWasTapped__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) alphabeticalSort];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setAlphabeticalSort:1];
    v3 = *(a1 + 32);

    return [v3 reloadSpecifiers];
  }

  return result;
}

@end