@interface STAllowanceDetailListController
- (STAllowanceDetailListController)initWithCoordinator:(id)a3;
- (STAllowanceDetailListControllerDelegate)delegate;
- (id)_allowanceEnabled:(id)a3;
- (id)_askForMoreTime:(id)a3;
- (id)_categoryDetailText:(id)a3;
- (id)atEndOfLimitFooterText;
- (id)budgetTime;
- (id)createBudgetedItemSpecifiers;
- (id)datePickerForSpecifier:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)timeFooterText;
- (void)_editListButtonPressed:(id)a3;
- (void)_setAllowanceEnabled:(id)a3 specifier:(id)a4;
- (void)_setAskForMoreTime:(id)a3 specifier:(id)a4;
- (void)_showOrHidePickerSpecifierForSpecifier:(id)a3 highlight:(BOOL)a4;
- (void)cancelButtonTapped:(id)a3;
- (void)confirmDeletion:(id)a3;
- (void)createBudgetedItemSpecifiers;
- (void)customizeDaysListController:(id)a3 didFinishEditingTimeByDay:(id)a4;
- (void)datePickerChanged:(id)a3;
- (void)deleteAllowance:(id)a3;
- (void)loadView;
- (void)saveButtonTapped:(id)a3;
- (void)showCustomizeDaysController:(id)a3;
- (void)showOrHideCustomizeDaysSpecifier;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willResignActive;
@end

@implementation STAllowanceDetailListController

- (STAllowanceDetailListController)initWithCoordinator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = STAllowanceDetailListController;
  v6 = [(STAllowanceDetailListController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coordinator, a3);
  }

  return v7;
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = STAllowanceDetailListController;
  [(STAllowanceDetailListController *)&v8 loadView];
  if ([(STAllowanceDetailListController *)self isSetupController])
  {
    v3 = [(STAllowanceDetailListController *)self navigationItem];
    if (![(STAllowanceDetailListController *)self useBackButton])
    {
      v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
      [v3 setLeftBarButtonItem:v4];
    }

    if (_UISolariumEnabled())
    {
      v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_saveButtonTapped_];
      [v3 setRightBarButtonItem:v5];
    }

    else
    {
      v6 = +[STScreenTimeSettingsUIBundle bundle];
      v5 = [v6 localizedStringForKey:@"AllowanceAddBarButtonItemTitle" value:&stru_28766E5A8 table:0];

      v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v5 style:2 target:self action:sel_saveButtonTapped_];
      [v3 setRightBarButtonItem:v7];
    }
  }
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = STAllowanceDetailListController;
  [(STAllowanceDetailListController *)&v10 viewDidLoad];
  v3 = [(STAllowanceDetailListController *)self allowance];
  v4 = MEMORY[0x277D4B928];
  v5 = [v3 categoryIdentifiers];
  v6 = [v3 bundleIdentifiers];
  v7 = [v3 webDomains];
  v8 = [v4 displayNameForUsageLimitWithCategoryIdentifiers:v5 bundleIdentifiers:v6 webDomains:v7];
  [(STAllowanceDetailListController *)self setTitle:v8];

  [(STAllowanceDetailListController *)self showOrHideCustomizeDaysSpecifier];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STAllowanceDetailListController.viewDidLoad", v9, 2u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = STAllowanceDetailListController;
  [(STAllowanceDetailListController *)&v10 viewDidAppear:a3];
  v4 = [(STAllowanceDetailListController *)self defaultTimeCellDetailTextColor];

  if (!v4)
  {
    v5 = [(STAllowanceDetailListController *)self timeSpecifier];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D40148]];

    v7 = [v6 detailTextLabel];
    v8 = [v7 textColor];
    [(STAllowanceDetailListController *)self setDefaultTimeCellDetailTextColor:v8];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STAllowanceDetailListController.viewDidAppear", v9, 2u);
  }
}

- (id)specifiers
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.isa + v3))
  {
    v60 = *MEMORY[0x277D3FC48];
    [(STAllowanceDetailListController *)self setSelectedTimeSpecifier:0];
    v4 = +[STScreenTimeSettingsUIBundle bundle];
    v68 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    v65 = [v4 localizedStringForKey:@"AllowanceEnableAllowanceSpecifierName" value:&stru_28766E5A8 table:0];
    v70 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    v5 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    v6 = [(STAllowanceDetailListController *)self timeFooterText];
    v55 = *MEMORY[0x277D3FF88];
    [v5 setObject:v6 forKeyedSubscript:?];

    [(STAllowanceDetailListController *)self setTimeGroupSpecifier:v5];
    v63 = [v4 localizedStringForKey:@"AllowanceTimeSpecifierName" value:&stru_28766E5A8 table:0];
    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    [(STAllowanceDetailListController *)self setTimeSpecifier:v7];
    v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28766E5A8 target:self set:0 get:0 detail:0 cell:4 edit:0];
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    [v8 setIdentifier:v10];

    v11 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F9E0] preferredHeight];
    v12 = [v11 numberWithDouble:?];
    [v8 setObject:v12 forKeyedSubscript:*MEMORY[0x277D40140]];

    [v8 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    v61 = v8;
    [(STAllowanceDetailListController *)self setTimePickerSpecifier:v8];
    v59 = [v4 localizedStringForKey:@"AllowanceCustomizeDaysSpecifierName" value:&stru_28766E5A8 table:0];
    v13 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    [v13 setControllerLoadAction:sel_showCustomizeDaysController_];
    v58 = v13;
    [(STAllowanceDetailListController *)self setCustomizeDaysSpecifier:v13];
    v14 = MEMORY[0x277D3FAD8];
    v15 = [v4 localizedStringForKey:@"CategoriesAppsWebsitesGroupSpecifierName" value:&stru_28766E5A8 table:0];
    v16 = [v14 groupSpecifierWithName:v15];

    v69 = [(STAllowanceDetailListController *)self createBudgetedItemSpecifiers];
    [(STAllowanceDetailListController *)self setBudgetedItemSpecifiers:?];
    v17 = MEMORY[0x277D3FAD8];
    v18 = [v4 localizedStringForKey:@"AllowanceDeleteSpecifierName" value:&stru_28766E5A8 table:0];
    v67 = [v17 deleteButtonSpecifierWithName:v18 target:self action:sel_confirmDeletion_];

    LODWORD(v17) = [(STAllowanceDetailListController *)self creatingNewAllowance];
    v19 = objc_alloc(MEMORY[0x277CBEB18]);
    if (v17)
    {
      v20 = [v19 initWithObjects:{v5, v7, 0}];
      v21 = v70;
      v22 = v68;
    }

    else
    {
      v21 = v70;
      v22 = v68;
      v20 = [v19 initWithObjects:{v68, v70, v5, v7, 0}];
    }

    v62 = v7;
    v64 = v5;
    v66 = [(STAllowanceDetailListController *)self coordinator];
    if ([v66 isPasscodeEnabled])
    {
      [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
      v23 = v21;
      v24 = v22;
      v26 = v25 = v16;
      v27 = [(STAllowanceDetailListController *)self atEndOfLimitFooterText];
      [v26 setObject:v27 forKeyedSubscript:v55];

      [v20 addObject:v26];
      v28 = [v4 localizedStringForKey:@"BlockAtEndOfLimit" value:&stru_28766E5A8 table:0];
      v29 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v28 target:self set:sel__setAskForMoreTime_specifier_ get:sel__askForMoreTime_ detail:0 cell:6 edit:0];
      [v20 addObject:v29];

      v16 = v25;
      v22 = v24;
      v21 = v23;
    }

    [v20 addObject:v16];
    [v20 addObjectsFromArray:v69];
    v30 = [(STAllowanceDetailListController *)self allowance];
    if (![(STAllowanceDetailListController *)self useBackButton])
    {
      v56 = v16;
      v31 = v22;
      v32 = [v4 localizedStringForKey:@"EditListSpecifierName" value:&stru_28766E5A8 table:0];
      v33 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
      [v33 setButtonAction:sel__editListButtonPressed_];
      v34 = [MEMORY[0x277D4BD98] sharedCache];
      v35 = [v34 blankSpaceImageWithSize:{29.0, 29.0}];
      [v33 setObject:v35 forKeyedSubscript:*MEMORY[0x277D3FFC0]];

      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      [v33 setObject:v37 forKeyedSubscript:*MEMORY[0x277D400B8]];

      v38 = [v30 bundleIdentifiers];
      [v33 setObject:v38 forKeyedSubscript:0x28766E8C8];

      v39 = [v30 webDomains];
      [v33 setObject:v39 forKeyedSubscript:0x28766E8E8];

      v40 = [v30 categoryIdentifiers];
      [v33 setObject:v40 forKeyedSubscript:0x28766E908];

      [v33 setObject:v66 forKeyedSubscript:0x287675C48];
      if ((_UISolariumEnabled() & 1) == 0)
      {
        v41 = [v4 localizedStringForKey:@"AllowanceAddBarButtonItemTitle" value:&stru_28766E5A8 table:0];
        [v33 setObject:v41 forKeyedSubscript:0x28766E928];
      }

      [v20 addObject:v33];

      v22 = v31;
      v21 = v70;
      v16 = v56;
    }

    v42 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    [v20 addObject:v42];

    if (![(STAllowanceDetailListController *)self isSetupController])
    {
      [v20 addObject:v67];
    }

    if (([v30 shouldAllowEditing] & 1) == 0)
    {
      v43 = v16;
      v57 = v4;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v44 = v20;
      v45 = [v44 countByEnumeratingWithState:&v71 objects:v75 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v72;
        v48 = *MEMORY[0x277D3FF38];
        v49 = MEMORY[0x277CBEC28];
        do
        {
          for (i = 0; i != v46; ++i)
          {
            if (*v72 != v47)
            {
              objc_enumerationMutation(v44);
            }

            [*(*(&v71 + 1) + 8 * i) setObject:v49 forKeyedSubscript:v48];
          }

          v46 = [v44 countByEnumeratingWithState:&v71 objects:v75 count:16];
        }

        while (v46);
      }

      v4 = v57;
      v22 = v68;
      v21 = v70;
      v16 = v43;
    }

    v3 = v60;
    v51 = *(&self->super.super.super.super.super.isa + v60);
    *(&self->super.super.super.super.super.isa + v60) = v20;
  }

  if ([(STAllowanceDetailListController *)self creatingNewAllowance])
  {
    v52 = [(STAllowanceDetailListController *)self timeSpecifier];
    [(STAllowanceDetailListController *)self _showOrHidePickerSpecifierForSpecifier:v52 highlight:0];
  }

  v53 = *(&self->super.super.super.super.super.isa + v3);

  return v53;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(STAllowanceDetailListController *)self delegate];
  if (![(STAllowanceDetailListController *)self isSetupController]&& ![(STAllowanceDetailListController *)self didDeleteAllowance]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [(STAllowanceDetailListController *)self allowance];
    [v5 allowanceDetailController:self didSaveAllowance:v6];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STAllowanceDetailListController.viewDidAppear", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = STAllowanceDetailListController;
  [(STAllowanceDetailListController *)&v7 viewWillDisappear:v3];
}

- (void)willResignActive
{
  v3 = [(STAllowanceDetailListController *)self delegate];
  if (![(STAllowanceDetailListController *)self isSetupController]&& ![(STAllowanceDetailListController *)self didDeleteAllowance]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [(STAllowanceDetailListController *)self allowance];
    [v3 allowanceDetailController:self didSaveAllowance:v4];
  }

  v5.receiver = self;
  v5.super_class = STAllowanceDetailListController;
  [(STAllowanceDetailListController *)&v5 willResignActive];
}

- (void)saveButtonTapped:(id)a3
{
  v4 = +[STUILog persistence];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_264BA2000, v4, OS_LOG_TYPE_INFO, "User saved edited allowance", v7, 2u);
  }

  v5 = [(STAllowanceDetailListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(STAllowanceDetailListController *)self allowance];
    [v5 allowanceDetailController:self didSaveAllowance:v6];
  }
}

- (void)showOrHideCustomizeDaysSpecifier
{
  v4 = [(STAllowanceDetailListController *)self customizeDaysSpecifier];
  v3 = [(STAllowanceDetailListController *)self timePickerSpecifier];
  if (([(STAllowanceDetailListController *)self containsSpecifier:v4]& 1) == 0)
  {
    [(STAllowanceDetailListController *)self insertSpecifier:v4 afterSpecifier:v3 animated:1];
  }
}

- (void)cancelButtonTapped:(id)a3
{
  v4 = +[STUILog persistence];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_264BA2000, v4, OS_LOG_TYPE_INFO, "User cancelled editing allowance", v6, 2u);
  }

  v5 = [(STAllowanceDetailListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 allowanceDetailControllerDidCancel:self];
  }
}

- (void)_showOrHidePickerSpecifierForSpecifier:(id)a3 highlight:(BOOL)a4
{
  v4 = a4;
  v28 = a3;
  v6 = [(STAllowanceDetailListController *)self selectedTimeSpecifier];

  if (v6 == v28)
  {
    v19 = [(STAllowanceDetailListController *)self allowance];
    v20 = [v19 timeByDay];

    if (!v20)
    {
      v21 = [v28 objectForKeyedSubscript:*MEMORY[0x277D40148]];
      v22 = [MEMORY[0x277D75348] tableCellGrayTextColor];
      v23 = [v21 detailTextLabel];
      [v23 setTextColor:v22];
    }

    v24 = [(STAllowanceDetailListController *)self timePickerSpecifier];
    [(STAllowanceDetailListController *)self removeSpecifier:v24 animated:1];

    v25 = [(STAllowanceDetailListController *)self customizeDaysSpecifier];
    [(STAllowanceDetailListController *)self removeSpecifier:v25 animated:1];

    if (v4)
    {
      v26 = [(STAllowanceDetailListController *)self selectedTimeSpecifier];
      v27 = [v26 identifier];
      [(STAllowanceDetailListController *)self highlightSpecifierWithID:v27];
    }

    [(STAllowanceDetailListController *)self setSelectedTimeSpecifier:0];
  }

  else
  {
    [(STAllowanceDetailListController *)self setSelectedTimeSpecifier:?];
    v7 = [(STAllowanceDetailListController *)self allowance];
    v8 = [v7 timeByDay];

    if (!v8)
    {
      v9 = [(STAllowanceDetailListController *)self timeSpecifier];
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D40148]];

      v11 = [MEMORY[0x277D75348] tableCellBlueTextColor];
      v12 = [v10 detailTextLabel];
      [v12 setTextColor:v11];
    }

    v13 = [(STAllowanceDetailListController *)self timePickerSpecifier];
    v14 = [(STAllowanceDetailListController *)self timeSpecifier];
    [(STAllowanceDetailListController *)self insertSpecifier:v13 afterSpecifier:v14 animated:1];

    v15 = [(STAllowanceDetailListController *)self customizeDaysSpecifier];
    v16 = [(STAllowanceDetailListController *)self timePickerSpecifier];
    [(STAllowanceDetailListController *)self insertSpecifier:v15 afterSpecifier:v16 animated:1];

    if (v4)
    {
      v17 = [(STAllowanceDetailListController *)self selectedTimeSpecifier];
      v18 = [v17 identifier];
      [(STAllowanceDetailListController *)self highlightSpecifierWithID:v18];
    }
  }
}

- (id)budgetTime
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [(STAllowanceDetailListController *)self allowance];
  v5 = [v4 timeByDay];

  if (v5)
  {
    v6 = [v3 localizedStringForKey:@"AllowanceCustomScheduleDetailText" value:&stru_28766E5A8 table:0];
  }

  else
  {
    v7 = [(STAllowanceDetailListController *)self allowance];
    v8 = [v7 time];
    [STAllowance timeIntervalForAllowanceDateComponents:v8];
    v10 = v9;

    v11 = objc_opt_new();
    [v11 setFormattingContext:1];
    [v11 setUnitsStyle:2];
    [v11 setAllowedUnits:96];
    v12 = [v11 stringFromTimeInterval:v10];
    v13 = [v3 localizedStringForKey:@"AppLimitEveryDayFormat" value:&stru_28766E5A8 table:0];
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = [MEMORY[0x277CBEAF8] currentLocale];
    v6 = [v14 initWithFormat:v13 locale:v15, v12];
  }

  return v6;
}

- (id)timeFooterText
{
  v3 = [(STAllowanceDetailListController *)self coordinator];
  v4 = [v3 viewModel];
  v5 = [v4 me];

  LODWORD(v4) = [v5 isRemoteUser];
  v6 = +[STScreenTimeSettingsUIBundle bundle];
  if (v4)
  {
    v7 = [v5 givenName];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0x277CCACA8];
      v10 = [v6 localizedStringForKey:@"AllowanceTimeFooterTextRemote" value:&stru_28766E5A8 table:0];
      v11 = [v9 localizedStringWithFormat:v10, v8];

      goto LABEL_8;
    }
  }

  else
  {
    v12 = [(STAllowanceDetailListController *)self coordinator];
    v13 = [v12 viewModel];
    v14 = [v13 isCloudSyncEnabled];

    if (!v14)
    {
      v15 = @"AllowanceTimeFooterTextLocal";
      goto LABEL_7;
    }
  }

  v15 = @"AllowanceTimeFooterTextCloud";
LABEL_7:
  v11 = [v6 localizedStringForKey:v15 value:&stru_28766E5A8 table:0];
LABEL_8:

  return v11;
}

- (void)showCustomizeDaysController:(id)a3
{
  v4 = a3;
  v11 = objc_opt_new();
  v5 = [(STAllowanceDetailListController *)self allowance];
  v6 = [v5 timeByDay];

  v7 = [(STAllowanceDetailListController *)self allowance];
  v8 = v7;
  if (v6)
  {
    [v7 timeByDay];
  }

  else
  {
    [v7 defaultTimeByDay];
  }
  v9 = ;
  [v11 setTimeByDay:v9];

  [v11 setDelegate:self];
  [v11 setParentController:self];
  v10 = [(STAllowanceDetailListController *)self rootController];
  [v11 setRootController:v10];

  [v11 setSpecifier:v4];
  [(STAllowanceDetailListController *)self showController:v11 animate:1];
}

- (void)_editListButtonPressed:(id)a3
{
  v4 = a3;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __58__STAllowanceDetailListController__editListButtonPressed___block_invoke;
  v13 = &unk_279B7C948;
  v14 = self;
  v15 = v4;
  v5 = v4;
  v6 = _Block_copy(&v10);
  v7 = _Block_copy(v6);
  [v5 setObject:v7 forKeyedSubscript:{0x28766E948, v10, v11, v12, v13, v14}];

  v8 = objc_opt_new();
  [v8 setParentController:self];
  v9 = [(STAllowanceDetailListController *)self rootController];
  [v8 setRootController:v9];

  [v8 setSpecifier:v5];
  [v8 setupController];
  [(STAllowanceDetailListController *)self showController:v8 animate:1];
}

void __58__STAllowanceDetailListController__editListButtonPressed___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v23 = [v9 allowance];
  [v23 setBundleIdentifiers:v12];
  [v23 setWebDomains:v11];
  [v23 setCategoryIdentifiers:v10];
  [*(a1 + 40) setObject:v12 forKeyedSubscript:0x28766E8C8];

  [*(a1 + 40) setObject:v11 forKeyedSubscript:0x28766E8E8];
  [*(a1 + 40) setObject:v10 forKeyedSubscript:0x28766E908];

  v14 = [*(a1 + 32) createBudgetedItemSpecifiers];
  v15 = *(a1 + 32);
  v16 = [v15 budgetedItemSpecifiers];
  [v15 replaceContiguousSpecifiers:v16 withSpecifiers:v14 animated:1];

  [*(a1 + 32) setBudgetedItemSpecifiers:v14];
  v17 = MEMORY[0x277D4B928];
  v18 = [v23 categoryIdentifiers];
  v19 = [v23 bundleIdentifiers];
  v20 = [v23 webDomains];
  v21 = [v17 displayNameForUsageLimitWithCategoryIdentifiers:v18 bundleIdentifiers:v19 webDomains:v20];
  [*(a1 + 32) setTitle:v21];

  [v13 dismissViewControllerAnimated:1 completion:0];
  v22 = [v13 specifier];

  [v22 removePropertyForKey:0x28766E948];
}

- (void)confirmDeletion:(id)a3
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v5 = +[STScreenTimeSettingsUIBundle bundle];
  v13[0] = *MEMORY[0x277D3FE98];
  v6 = [v5 localizedStringForKey:@"AllowanceDeleteSpecifierName" value:&stru_28766E5A8 table:0];
  v14[0] = v6;
  v13[1] = *MEMORY[0x277D3FE90];
  v7 = [v5 localizedStringForKey:@"AllowanceDeletionPrompt" value:&stru_28766E5A8 table:0];
  v14[1] = v7;
  v13[2] = *MEMORY[0x277D3FE88];
  v8 = [MEMORY[0x277D75418] currentDevice];
  if ([v8 sf_isiPad])
  {
    v9 = @"ConfirmationTitleDelete";
  }

  else
  {
    v9 = @"AllowanceDeleteSpecifierName";
  }

  v10 = [v5 localizedStringForKey:v9 value:&stru_28766E5A8 table:0];
  v14[2] = v10;
  v13[3] = *MEMORY[0x277D3FE78];
  v11 = [v5 localizedStringForKey:@"ConfirmationButtonCancel" value:&stru_28766E5A8 table:0];
  v14[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  [v4 setupWithDictionary:v12];

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FE80]];
  [v4 setTarget:self];
  [v4 setConfirmationAction:sel_deleteAllowance_];
  [(STAllowanceDetailListController *)self showConfirmationViewForSpecifier:v4];
}

- (void)deleteAllowance:(id)a3
{
  v5 = [(STAllowanceDetailListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(STAllowanceDetailListController *)self setDidDeleteAllowance:1];
    v4 = [(STAllowanceDetailListController *)self allowance];
    [v5 allowanceDetailController:self didDeleteAllowance:v4];
  }
}

- (id)createBudgetedItemSpecifiers
{
  v96 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(STAllowanceDetailListController *)self allowance];
  v5 = objc_alloc(MEMORY[0x277CBEB70]);
  v62 = v4;
  v6 = [v4 categoryIdentifiers];
  v7 = [v5 initWithArray:v6];

  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v9 = STAvailableCategoriesExcludingSystemCategories();
  v10 = [v8 initWithArray:v9];

  v11 = [v7 set];
  v60 = v10;
  LODWORD(v9) = [v11 isEqualToSet:v10];

  v73 = self;
  v74 = v3;
  v61 = v7;
  if (v9)
  {
    v12 = +[STScreenTimeSettingsUIBundle bundle];
    v13 = [v12 localizedStringForKey:@"AllAppsAndCategoriesSpecifierName" value:&stru_28766E5A8 table:0];

    v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];
    v15 = [MEMORY[0x277D4BD98] sharedCache];
    v16 = [v15 imageForCategoryIdentifier:*MEMORY[0x277D4BCC0]];
    [v14 setObject:v16 forKeyedSubscript:*MEMORY[0x277D3FFC0]];

    [v3 addObject:v14];
  }

  else
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    obj = v7;
    v17 = [obj countByEnumeratingWithState:&v83 objects:v89 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v84;
      v20 = *MEMORY[0x277D3FFC0];
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v84 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v83 + 1) + 8 * i);
          v23 = STCategoryNameWithIdentifier();
          v24 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v23 target:v73 set:0 get:sel__categoryDetailText_ detail:0 cell:4 edit:0];
          [v24 setUserInfo:v22];
          v25 = [MEMORY[0x277D4BD98] sharedCache];
          v26 = [v25 imageForCategoryIdentifier:v22];
          [v24 setObject:v26 forKeyedSubscript:v20];

          [v74 addObject:v24];
        }

        v18 = [obj countByEnumeratingWithState:&v83 objects:v89 count:16];
      }

      while (v18);
    }

    self = v73;
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obja = [v62 bundleIdentifiers];
  v27 = [obja countByEnumeratingWithState:&v79 objects:v88 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v80;
    v68 = *MEMORY[0x277D4BBC8];
    v64 = *MEMORY[0x277D40008];
    v66 = *MEMORY[0x277D40020];
    v30 = *MEMORY[0x277D3FE58];
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v80 != v29)
        {
          objc_enumerationMutation(obja);
        }

        v32 = *(*(&v79 + 1) + 8 * j);
        v33 = [MEMORY[0x277D4B8C0] sharedCache];
        v34 = [v33 appInfoForBundleIdentifier:v32];

        v35 = [v34 bundleIdentifier];
        v36 = [v34 displayName];
        v37 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v36 target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v37 setIdentifier:v35];
        [v37 setUserInfo:v35];
        if ([v34 source] == 2 && (objc_msgSend(v35, "isEqualToString:", v68) & 1) == 0)
        {
          [v37 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v66];
          v38 = v64;
        }

        else
        {
          [v37 setObject:objc_opt_class() forKeyedSubscript:v30];
          v38 = @"STAppBundleID";
        }

        [v37 setObject:v35 forKeyedSubscript:v38];
        [v74 addObject:v37];

        self = v73;
      }

      v28 = [obja countByEnumeratingWithState:&v79 objects:v88 count:16];
    }

    while (v28);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v63 = [v62 webDomains];
  v39 = v74;
  v69 = [v63 countByEnumeratingWithState:&v75 objects:v87 count:16];
  if (v69)
  {
    v67 = *v76;
    v65 = *MEMORY[0x277D3FFC0];
    do
    {
      for (k = 0; k != v69; ++k)
      {
        if (*v76 != v67)
        {
          objc_enumerationMutation(v63);
        }

        v41 = *(*(&v75 + 1) + 8 * k);
        v42 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v41 target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v42 setUserInfo:v41];
        v43 = [MEMORY[0x277D75C80] currentTraitCollection];
        v44 = [v43 userInterfaceStyle];

        v45 = v41;
        if ([v45 length])
        {
          objb = v44;
          v46 = objc_opt_new();
          [v46 setScheme:@"https"];
          [v46 setHost:v45];
          v47 = [v46 URL];
          v48 = [v47 _lp_highLevelDomain];
          v49 = [v46 host];
          v50 = [v46 URL];
          v51 = v48;
          v52 = v49;
          v53 = v50;
          if ([v51 length])
          {
            v54 = [v51 substringToIndex:1];
            v55 = [v54 uppercaseString];
          }

          else
          {
            v56 = [v52 substringToIndex:1];
            v55 = [v56 uppercaseString];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v93 = v53;
              v94 = 2112;
              v95 = v52;
              _os_log_error_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to extract high level domain for URL: %@. Creating initial for host instead: %@", buf, 0x16u);
            }
          }

          v44 = objb;

          self = v73;
          v39 = v74;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [(STAllowanceDetailListController *)v90 createBudgetedItemSpecifiers];
          }

          v55 = 0;
        }

        v57 = [MEMORY[0x277D4BD98] sharedCache];
        v58 = [v57 monogramImageForInitial:v55 useDarkColors:v44 == 2];
        [v42 setObject:v58 forKeyedSubscript:v65];

        [v39 addObject:v42];
      }

      v69 = [v63 countByEnumeratingWithState:&v75 objects:v87 count:16];
    }

    while (v69);
  }

  return v39;
}

- (id)_categoryDetailText:(id)a3
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"AllItemsSelectedDetailText" value:&stru_28766E5A8 table:0];

  return v4;
}

- (void)_setAskForMoreTime:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v6 = [(STAllowanceDetailListController *)self allowance];
  [v6 setBehaviorType:v5];
}

- (id)_askForMoreTime:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(STAllowanceDetailListController *)self allowance];
  v5 = [v3 numberWithInt:{objc_msgSend(v4, "behaviorType") == 1}];

  return v5;
}

- (void)_setAllowanceEnabled:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v6 = [(STAllowanceDetailListController *)self allowance];
  [v6 setAllowanceEnabled:v5];
}

- (id)_allowanceEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(STAllowanceDetailListController *)self allowance];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "allowanceEnabled")}];

  return v5;
}

- (id)atEndOfLimitFooterText
{
  v2 = [(STAllowanceDetailListController *)self coordinator];
  v3 = [v2 viewModel];
  v4 = [v3 me];

  if ([v4 isRemoteUser])
  {
    v5 = [v4 name];

    if (v5)
    {
      v6 = objc_opt_new();
      v7 = [v4 name];
      v8 = [v6 personNameComponentsFromString:v7];

      v9 = [v8 givenName];
      if ([v9 length])
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = +[STScreenTimeSettingsUIBundle bundle];
        v12 = [v11 localizedStringForKey:@"AtAllowanceRemoteFooterText" value:&stru_28766E5A8 table:0];
        v13 = [v10 localizedStringWithFormat:v12, v9];

        goto LABEL_9;
      }
    }

    v14 = +[STScreenTimeSettingsUIBundle bundle];
    v8 = v14;
    v15 = @"AtAllowanceRemoteGenericFooterText";
  }

  else
  {
    v14 = +[STScreenTimeSettingsUIBundle bundle];
    v8 = v14;
    v15 = @"AtAllowanceLocalFooterText";
  }

  v13 = [v14 localizedStringForKey:v15 value:&stru_28766E5A8 table:0];
LABEL_9:

  return v13;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = STAllowanceDetailListController;
  v6 = a4;
  v7 = [(STAllowanceDetailListController *)&v13 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(STAllowanceDetailListController *)self indexForIndexPath:v6, v13.receiver, v13.super_class];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndexedSubscript:v8];
    v10 = [(STAllowanceDetailListController *)self budgetedItemSpecifiers];
    v11 = [v10 containsObject:v9];

    if (v11)
    {
      [v7 setSelectionStyle:0];
    }
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STAllowanceDetailListController *)self indexForIndexPath:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndexedSubscript:v8];
  }

  v10 = [(STAllowanceDetailListController *)self timeSpecifier];

  if (v9 == v10)
  {
    [(STAllowanceDetailListController *)self _showOrHidePickerSpecifierForSpecifier:v9 highlight:1];
  }

  v11.receiver = self;
  v11.super_class = STAllowanceDetailListController;
  [(STAllowanceDetailListController *)&v11 tableView:v6 didSelectRowAtIndexPath:v7];
}

- (void)datePickerChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 calendar];
  v6 = [v4 date];

  v14 = [v5 components:96 fromDate:v6];

  v7 = [(STAllowanceDetailListController *)self allowance];
  [v7 setTime:v14];

  v8 = [(STAllowanceDetailListController *)self allowance];
  [v8 setTimeByDay:0];

  v9 = [(STAllowanceDetailListController *)self timeSpecifier];
  [(STAllowanceDetailListController *)self reloadSpecifier:v9];

  v10 = [(STAllowanceDetailListController *)self selectedTimeSpecifier];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D40148]];

  v12 = [MEMORY[0x277D75348] tableCellBlueTextColor];
  v13 = [v11 detailTextLabel];
  [v13 setTextColor:v12];

  [(STAllowanceDetailListController *)self showOrHideCustomizeDaysSpecifier];
}

- (id)datePickerForSpecifier:(id)a3
{
  v4 = MEMORY[0x277D753E8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 setPreferredDatePickerStyle:1];
  [v7 setDatePickerMode:3];
  [v7 _setAllowsZeroCountDownDuration:1];
  v8 = objc_opt_new();
  v9 = [(STAllowanceDetailListController *)self timePickerSpecifier];

  if (v9 == v5)
  {
    v11 = [(STAllowanceDetailListController *)self allowance];
    v12 = [v11 time];

    v8 = v12;
  }

  else
  {
    v10 = +[STUILog persistence];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [STAllowanceDetailListController datePickerForSpecifier:v10];
    }
  }

  v13 = [v7 calendar];
  v14 = [v13 dateFromComponents:v8];
  [v7 setDate:v14 animated:1];

  return v7;
}

- (void)customizeDaysListController:(id)a3 didFinishEditingTimeByDay:(id)a4
{
  v19 = a4;
  v5 = MEMORY[0x277CBEB98];
  v6 = [v19 allValues];
  v7 = [v5 setWithArray:v6];

  v8 = v19;
  if ([v7 count] == 1)
  {
    v9 = [v7 anyObject];
    v10 = [(STAllowanceDetailListController *)self allowance];
    [v10 setTime:v9];

    v8 = 0;
  }

  v11 = [(STAllowanceDetailListController *)self allowance];
  [v11 setTimeByDay:v8];

  v12 = [(STAllowanceDetailListController *)self timePickerSpecifier];
  [(STAllowanceDetailListController *)self removeSpecifier:v12 animated:1];

  v13 = [(STAllowanceDetailListController *)self customizeDaysSpecifier];
  [(STAllowanceDetailListController *)self removeSpecifier:v13 animated:1];

  v14 = [(STAllowanceDetailListController *)self selectedTimeSpecifier];
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277D40148]];

  v16 = [(STAllowanceDetailListController *)self defaultTimeCellDetailTextColor];
  v17 = [v15 detailTextLabel];
  [v17 setTextColor:v16];

  [(STAllowanceDetailListController *)self setSelectedTimeSpecifier:0];
  v18 = [(STAllowanceDetailListController *)self timeSpecifier];
  [(STAllowanceDetailListController *)self reloadSpecifier:v18];

  [(STAllowanceDetailListController *)self showOrHideCustomizeDaysSpecifier];
}

- (STAllowanceDetailListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)createBudgetedItemSpecifiers
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_error_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Web domain name must have at least one character for monogram: %@", buf, 0xCu);
}

@end