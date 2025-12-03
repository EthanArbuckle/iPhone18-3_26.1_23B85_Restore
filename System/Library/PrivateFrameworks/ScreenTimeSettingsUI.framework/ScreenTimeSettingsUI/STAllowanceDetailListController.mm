@interface STAllowanceDetailListController
- (STAllowanceDetailListController)initWithCoordinator:(id)coordinator;
- (STAllowanceDetailListControllerDelegate)delegate;
- (id)_allowanceEnabled:(id)enabled;
- (id)_askForMoreTime:(id)time;
- (id)_categoryDetailText:(id)text;
- (id)atEndOfLimitFooterText;
- (id)budgetTime;
- (id)createBudgetedItemSpecifiers;
- (id)datePickerForSpecifier:(id)specifier;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)timeFooterText;
- (void)_editListButtonPressed:(id)pressed;
- (void)_setAllowanceEnabled:(id)enabled specifier:(id)specifier;
- (void)_setAskForMoreTime:(id)time specifier:(id)specifier;
- (void)_showOrHidePickerSpecifierForSpecifier:(id)specifier highlight:(BOOL)highlight;
- (void)cancelButtonTapped:(id)tapped;
- (void)confirmDeletion:(id)deletion;
- (void)createBudgetedItemSpecifiers;
- (void)customizeDaysListController:(id)controller didFinishEditingTimeByDay:(id)day;
- (void)datePickerChanged:(id)changed;
- (void)deleteAllowance:(id)allowance;
- (void)loadView;
- (void)saveButtonTapped:(id)tapped;
- (void)showCustomizeDaysController:(id)controller;
- (void)showOrHideCustomizeDaysSpecifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willResignActive;
@end

@implementation STAllowanceDetailListController

- (STAllowanceDetailListController)initWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = STAllowanceDetailListController;
  v6 = [(STAllowanceDetailListController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coordinator, coordinator);
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
    navigationItem = [(STAllowanceDetailListController *)self navigationItem];
    if (![(STAllowanceDetailListController *)self useBackButton])
    {
      v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
      [navigationItem setLeftBarButtonItem:v4];
    }

    if (_UISolariumEnabled())
    {
      v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_saveButtonTapped_];
      [navigationItem setRightBarButtonItem:v5];
    }

    else
    {
      v6 = +[STScreenTimeSettingsUIBundle bundle];
      v5 = [v6 localizedStringForKey:@"AllowanceAddBarButtonItemTitle" value:&stru_28766E5A8 table:0];

      v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v5 style:2 target:self action:sel_saveButtonTapped_];
      [navigationItem setRightBarButtonItem:v7];
    }
  }
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = STAllowanceDetailListController;
  [(STAllowanceDetailListController *)&v10 viewDidLoad];
  allowance = [(STAllowanceDetailListController *)self allowance];
  v4 = MEMORY[0x277D4B928];
  categoryIdentifiers = [allowance categoryIdentifiers];
  bundleIdentifiers = [allowance bundleIdentifiers];
  webDomains = [allowance webDomains];
  v8 = [v4 displayNameForUsageLimitWithCategoryIdentifiers:categoryIdentifiers bundleIdentifiers:bundleIdentifiers webDomains:webDomains];
  [(STAllowanceDetailListController *)self setTitle:v8];

  [(STAllowanceDetailListController *)self showOrHideCustomizeDaysSpecifier];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STAllowanceDetailListController.viewDidLoad", v9, 2u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = STAllowanceDetailListController;
  [(STAllowanceDetailListController *)&v10 viewDidAppear:appear];
  defaultTimeCellDetailTextColor = [(STAllowanceDetailListController *)self defaultTimeCellDetailTextColor];

  if (!defaultTimeCellDetailTextColor)
  {
    timeSpecifier = [(STAllowanceDetailListController *)self timeSpecifier];
    v6 = [timeSpecifier objectForKeyedSubscript:*MEMORY[0x277D40148]];

    detailTextLabel = [v6 detailTextLabel];
    textColor = [detailTextLabel textColor];
    [(STAllowanceDetailListController *)self setDefaultTimeCellDetailTextColor:textColor];
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
    st_emptyGroupSpecifier = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    v65 = [v4 localizedStringForKey:@"AllowanceEnableAllowanceSpecifierName" value:&stru_28766E5A8 table:0];
    v70 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    st_emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    timeFooterText = [(STAllowanceDetailListController *)self timeFooterText];
    v55 = *MEMORY[0x277D3FF88];
    [st_emptyGroupSpecifier2 setObject:timeFooterText forKeyedSubscript:?];

    [(STAllowanceDetailListController *)self setTimeGroupSpecifier:st_emptyGroupSpecifier2];
    v63 = [v4 localizedStringForKey:@"AllowanceTimeSpecifierName" value:&stru_28766E5A8 table:0];
    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    [(STAllowanceDetailListController *)self setTimeSpecifier:v7];
    v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28766E5A8 target:self set:0 get:0 detail:0 cell:4 edit:0];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v8 setIdentifier:uUIDString];

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

    createBudgetedItemSpecifiers = [(STAllowanceDetailListController *)self createBudgetedItemSpecifiers];
    [(STAllowanceDetailListController *)self setBudgetedItemSpecifiers:?];
    v17 = MEMORY[0x277D3FAD8];
    v18 = [v4 localizedStringForKey:@"AllowanceDeleteSpecifierName" value:&stru_28766E5A8 table:0];
    v67 = [v17 deleteButtonSpecifierWithName:v18 target:self action:sel_confirmDeletion_];

    LODWORD(v17) = [(STAllowanceDetailListController *)self creatingNewAllowance];
    v19 = objc_alloc(MEMORY[0x277CBEB18]);
    if (v17)
    {
      v20 = [v19 initWithObjects:{st_emptyGroupSpecifier2, v7, 0}];
      v21 = v70;
      v22 = st_emptyGroupSpecifier;
    }

    else
    {
      v21 = v70;
      v22 = st_emptyGroupSpecifier;
      v20 = [v19 initWithObjects:{st_emptyGroupSpecifier, v70, st_emptyGroupSpecifier2, v7, 0}];
    }

    v62 = v7;
    v64 = st_emptyGroupSpecifier2;
    coordinator = [(STAllowanceDetailListController *)self coordinator];
    if ([coordinator isPasscodeEnabled])
    {
      [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
      v23 = v21;
      v24 = v22;
      v26 = v25 = v16;
      atEndOfLimitFooterText = [(STAllowanceDetailListController *)self atEndOfLimitFooterText];
      [v26 setObject:atEndOfLimitFooterText forKeyedSubscript:v55];

      [v20 addObject:v26];
      v28 = [v4 localizedStringForKey:@"BlockAtEndOfLimit" value:&stru_28766E5A8 table:0];
      v29 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v28 target:self set:sel__setAskForMoreTime_specifier_ get:sel__askForMoreTime_ detail:0 cell:6 edit:0];
      [v20 addObject:v29];

      v16 = v25;
      v22 = v24;
      v21 = v23;
    }

    [v20 addObject:v16];
    [v20 addObjectsFromArray:createBudgetedItemSpecifiers];
    allowance = [(STAllowanceDetailListController *)self allowance];
    if (![(STAllowanceDetailListController *)self useBackButton])
    {
      v56 = v16;
      v31 = v22;
      v32 = [v4 localizedStringForKey:@"EditListSpecifierName" value:&stru_28766E5A8 table:0];
      v33 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
      [v33 setButtonAction:sel__editListButtonPressed_];
      mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
      v35 = [mEMORY[0x277D4BD98] blankSpaceImageWithSize:{29.0, 29.0}];
      [v33 setObject:v35 forKeyedSubscript:*MEMORY[0x277D3FFC0]];

      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      [v33 setObject:v37 forKeyedSubscript:*MEMORY[0x277D400B8]];

      bundleIdentifiers = [allowance bundleIdentifiers];
      [v33 setObject:bundleIdentifiers forKeyedSubscript:0x28766E8C8];

      webDomains = [allowance webDomains];
      [v33 setObject:webDomains forKeyedSubscript:0x28766E8E8];

      categoryIdentifiers = [allowance categoryIdentifiers];
      [v33 setObject:categoryIdentifiers forKeyedSubscript:0x28766E908];

      [v33 setObject:coordinator forKeyedSubscript:0x287675C48];
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

    st_emptyGroupSpecifier3 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    [v20 addObject:st_emptyGroupSpecifier3];

    if (![(STAllowanceDetailListController *)self isSetupController])
    {
      [v20 addObject:v67];
    }

    if (([allowance shouldAllowEditing] & 1) == 0)
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
      v22 = st_emptyGroupSpecifier;
      v21 = v70;
      v16 = v43;
    }

    v3 = v60;
    v51 = *(&self->super.super.super.super.super.isa + v60);
    *(&self->super.super.super.super.super.isa + v60) = v20;
  }

  if ([(STAllowanceDetailListController *)self creatingNewAllowance])
  {
    timeSpecifier = [(STAllowanceDetailListController *)self timeSpecifier];
    [(STAllowanceDetailListController *)self _showOrHidePickerSpecifierForSpecifier:timeSpecifier highlight:0];
  }

  v53 = *(&self->super.super.super.super.super.isa + v3);

  return v53;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  delegate = [(STAllowanceDetailListController *)self delegate];
  if (![(STAllowanceDetailListController *)self isSetupController]&& ![(STAllowanceDetailListController *)self didDeleteAllowance]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    allowance = [(STAllowanceDetailListController *)self allowance];
    [delegate allowanceDetailController:self didSaveAllowance:allowance];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STAllowanceDetailListController.viewDidAppear", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = STAllowanceDetailListController;
  [(STAllowanceDetailListController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)willResignActive
{
  delegate = [(STAllowanceDetailListController *)self delegate];
  if (![(STAllowanceDetailListController *)self isSetupController]&& ![(STAllowanceDetailListController *)self didDeleteAllowance]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    allowance = [(STAllowanceDetailListController *)self allowance];
    [delegate allowanceDetailController:self didSaveAllowance:allowance];
  }

  v5.receiver = self;
  v5.super_class = STAllowanceDetailListController;
  [(STAllowanceDetailListController *)&v5 willResignActive];
}

- (void)saveButtonTapped:(id)tapped
{
  v4 = +[STUILog persistence];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_264BA2000, v4, OS_LOG_TYPE_INFO, "User saved edited allowance", v7, 2u);
  }

  delegate = [(STAllowanceDetailListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    allowance = [(STAllowanceDetailListController *)self allowance];
    [delegate allowanceDetailController:self didSaveAllowance:allowance];
  }
}

- (void)showOrHideCustomizeDaysSpecifier
{
  customizeDaysSpecifier = [(STAllowanceDetailListController *)self customizeDaysSpecifier];
  timePickerSpecifier = [(STAllowanceDetailListController *)self timePickerSpecifier];
  if (([(STAllowanceDetailListController *)self containsSpecifier:customizeDaysSpecifier]& 1) == 0)
  {
    [(STAllowanceDetailListController *)self insertSpecifier:customizeDaysSpecifier afterSpecifier:timePickerSpecifier animated:1];
  }
}

- (void)cancelButtonTapped:(id)tapped
{
  v4 = +[STUILog persistence];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_264BA2000, v4, OS_LOG_TYPE_INFO, "User cancelled editing allowance", v6, 2u);
  }

  delegate = [(STAllowanceDetailListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate allowanceDetailControllerDidCancel:self];
  }
}

- (void)_showOrHidePickerSpecifierForSpecifier:(id)specifier highlight:(BOOL)highlight
{
  highlightCopy = highlight;
  specifierCopy = specifier;
  selectedTimeSpecifier = [(STAllowanceDetailListController *)self selectedTimeSpecifier];

  if (selectedTimeSpecifier == specifierCopy)
  {
    allowance = [(STAllowanceDetailListController *)self allowance];
    timeByDay = [allowance timeByDay];

    if (!timeByDay)
    {
      v21 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D40148]];
      tableCellGrayTextColor = [MEMORY[0x277D75348] tableCellGrayTextColor];
      detailTextLabel = [v21 detailTextLabel];
      [detailTextLabel setTextColor:tableCellGrayTextColor];
    }

    timePickerSpecifier = [(STAllowanceDetailListController *)self timePickerSpecifier];
    [(STAllowanceDetailListController *)self removeSpecifier:timePickerSpecifier animated:1];

    customizeDaysSpecifier = [(STAllowanceDetailListController *)self customizeDaysSpecifier];
    [(STAllowanceDetailListController *)self removeSpecifier:customizeDaysSpecifier animated:1];

    if (highlightCopy)
    {
      selectedTimeSpecifier2 = [(STAllowanceDetailListController *)self selectedTimeSpecifier];
      identifier = [selectedTimeSpecifier2 identifier];
      [(STAllowanceDetailListController *)self highlightSpecifierWithID:identifier];
    }

    [(STAllowanceDetailListController *)self setSelectedTimeSpecifier:0];
  }

  else
  {
    [(STAllowanceDetailListController *)self setSelectedTimeSpecifier:?];
    allowance2 = [(STAllowanceDetailListController *)self allowance];
    timeByDay2 = [allowance2 timeByDay];

    if (!timeByDay2)
    {
      timeSpecifier = [(STAllowanceDetailListController *)self timeSpecifier];
      v10 = [timeSpecifier objectForKeyedSubscript:*MEMORY[0x277D40148]];

      tableCellBlueTextColor = [MEMORY[0x277D75348] tableCellBlueTextColor];
      detailTextLabel2 = [v10 detailTextLabel];
      [detailTextLabel2 setTextColor:tableCellBlueTextColor];
    }

    timePickerSpecifier2 = [(STAllowanceDetailListController *)self timePickerSpecifier];
    timeSpecifier2 = [(STAllowanceDetailListController *)self timeSpecifier];
    [(STAllowanceDetailListController *)self insertSpecifier:timePickerSpecifier2 afterSpecifier:timeSpecifier2 animated:1];

    customizeDaysSpecifier2 = [(STAllowanceDetailListController *)self customizeDaysSpecifier];
    timePickerSpecifier3 = [(STAllowanceDetailListController *)self timePickerSpecifier];
    [(STAllowanceDetailListController *)self insertSpecifier:customizeDaysSpecifier2 afterSpecifier:timePickerSpecifier3 animated:1];

    if (highlightCopy)
    {
      selectedTimeSpecifier3 = [(STAllowanceDetailListController *)self selectedTimeSpecifier];
      identifier2 = [selectedTimeSpecifier3 identifier];
      [(STAllowanceDetailListController *)self highlightSpecifierWithID:identifier2];
    }
  }
}

- (id)budgetTime
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  allowance = [(STAllowanceDetailListController *)self allowance];
  timeByDay = [allowance timeByDay];

  if (timeByDay)
  {
    v6 = [v3 localizedStringForKey:@"AllowanceCustomScheduleDetailText" value:&stru_28766E5A8 table:0];
  }

  else
  {
    allowance2 = [(STAllowanceDetailListController *)self allowance];
    time = [allowance2 time];
    [STAllowance timeIntervalForAllowanceDateComponents:time];
    v10 = v9;

    v11 = objc_opt_new();
    [v11 setFormattingContext:1];
    [v11 setUnitsStyle:2];
    [v11 setAllowedUnits:96];
    v12 = [v11 stringFromTimeInterval:v10];
    v13 = [v3 localizedStringForKey:@"AppLimitEveryDayFormat" value:&stru_28766E5A8 table:0];
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v6 = [v14 initWithFormat:v13 locale:currentLocale, v12];
  }

  return v6;
}

- (id)timeFooterText
{
  coordinator = [(STAllowanceDetailListController *)self coordinator];
  viewModel = [coordinator viewModel];
  v5 = [viewModel me];

  LODWORD(viewModel) = [v5 isRemoteUser];
  v6 = +[STScreenTimeSettingsUIBundle bundle];
  if (viewModel)
  {
    givenName = [v5 givenName];
    if (givenName)
    {
      v8 = givenName;
      v9 = MEMORY[0x277CCACA8];
      v10 = [v6 localizedStringForKey:@"AllowanceTimeFooterTextRemote" value:&stru_28766E5A8 table:0];
      v11 = [v9 localizedStringWithFormat:v10, v8];

      goto LABEL_8;
    }
  }

  else
  {
    coordinator2 = [(STAllowanceDetailListController *)self coordinator];
    viewModel2 = [coordinator2 viewModel];
    isCloudSyncEnabled = [viewModel2 isCloudSyncEnabled];

    if (!isCloudSyncEnabled)
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

- (void)showCustomizeDaysController:(id)controller
{
  controllerCopy = controller;
  v11 = objc_opt_new();
  allowance = [(STAllowanceDetailListController *)self allowance];
  timeByDay = [allowance timeByDay];

  allowance2 = [(STAllowanceDetailListController *)self allowance];
  v8 = allowance2;
  if (timeByDay)
  {
    [allowance2 timeByDay];
  }

  else
  {
    [allowance2 defaultTimeByDay];
  }
  v9 = ;
  [v11 setTimeByDay:v9];

  [v11 setDelegate:self];
  [v11 setParentController:self];
  rootController = [(STAllowanceDetailListController *)self rootController];
  [v11 setRootController:rootController];

  [v11 setSpecifier:controllerCopy];
  [(STAllowanceDetailListController *)self showController:v11 animate:1];
}

- (void)_editListButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __58__STAllowanceDetailListController__editListButtonPressed___block_invoke;
  v13 = &unk_279B7C948;
  selfCopy = self;
  v15 = pressedCopy;
  v5 = pressedCopy;
  v6 = _Block_copy(&v10);
  v7 = _Block_copy(v6);
  [v5 setObject:v7 forKeyedSubscript:{0x28766E948, v10, v11, v12, v13, selfCopy}];

  v8 = objc_opt_new();
  [v8 setParentController:self];
  rootController = [(STAllowanceDetailListController *)self rootController];
  [v8 setRootController:rootController];

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

- (void)confirmDeletion:(id)deletion
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice sf_isiPad])
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

- (void)deleteAllowance:(id)allowance
{
  delegate = [(STAllowanceDetailListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(STAllowanceDetailListController *)self setDidDeleteAllowance:1];
    allowance = [(STAllowanceDetailListController *)self allowance];
    [delegate allowanceDetailController:self didDeleteAllowance:allowance];
  }
}

- (id)createBudgetedItemSpecifiers
{
  v96 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  allowance = [(STAllowanceDetailListController *)self allowance];
  v5 = objc_alloc(MEMORY[0x277CBEB70]);
  v62 = allowance;
  categoryIdentifiers = [allowance categoryIdentifiers];
  v7 = [v5 initWithArray:categoryIdentifiers];

  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v9 = STAvailableCategoriesExcludingSystemCategories();
  v10 = [v8 initWithArray:v9];

  v11 = [v7 set];
  v60 = v10;
  LODWORD(v9) = [v11 isEqualToSet:v10];

  selfCopy = self;
  v74 = v3;
  v61 = v7;
  if (v9)
  {
    v12 = +[STScreenTimeSettingsUIBundle bundle];
    v13 = [v12 localizedStringForKey:@"AllAppsAndCategoriesSpecifierName" value:&stru_28766E5A8 table:0];

    v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];
    mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
    v16 = [mEMORY[0x277D4BD98] imageForCategoryIdentifier:*MEMORY[0x277D4BCC0]];
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
          v24 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v23 target:selfCopy set:0 get:sel__categoryDetailText_ detail:0 cell:4 edit:0];
          [v24 setUserInfo:v22];
          mEMORY[0x277D4BD98]2 = [MEMORY[0x277D4BD98] sharedCache];
          v26 = [mEMORY[0x277D4BD98]2 imageForCategoryIdentifier:v22];
          [v24 setObject:v26 forKeyedSubscript:v20];

          [v74 addObject:v24];
        }

        v18 = [obj countByEnumeratingWithState:&v83 objects:v89 count:16];
      }

      while (v18);
    }

    self = selfCopy;
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
        mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
        v34 = [mEMORY[0x277D4B8C0] appInfoForBundleIdentifier:v32];

        bundleIdentifier = [v34 bundleIdentifier];
        displayName = [v34 displayName];
        v37 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:displayName target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v37 setIdentifier:bundleIdentifier];
        [v37 setUserInfo:bundleIdentifier];
        if ([v34 source] == 2 && (objc_msgSend(bundleIdentifier, "isEqualToString:", v68) & 1) == 0)
        {
          [v37 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v66];
          v38 = v64;
        }

        else
        {
          [v37 setObject:objc_opt_class() forKeyedSubscript:v30];
          v38 = @"STAppBundleID";
        }

        [v37 setObject:bundleIdentifier forKeyedSubscript:v38];
        [v74 addObject:v37];

        self = selfCopy;
      }

      v28 = [obja countByEnumeratingWithState:&v79 objects:v88 count:16];
    }

    while (v28);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  webDomains = [v62 webDomains];
  v39 = v74;
  v69 = [webDomains countByEnumeratingWithState:&v75 objects:v87 count:16];
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
          objc_enumerationMutation(webDomains);
        }

        v41 = *(*(&v75 + 1) + 8 * k);
        v42 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v41 target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v42 setUserInfo:v41];
        currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
        userInterfaceStyle = [currentTraitCollection userInterfaceStyle];

        v45 = v41;
        if ([v45 length])
        {
          objb = userInterfaceStyle;
          v46 = objc_opt_new();
          [v46 setScheme:@"https"];
          [v46 setHost:v45];
          v47 = [v46 URL];
          _lp_highLevelDomain = [v47 _lp_highLevelDomain];
          host = [v46 host];
          v50 = [v46 URL];
          v51 = _lp_highLevelDomain;
          v52 = host;
          v53 = v50;
          if ([v51 length])
          {
            v54 = [v51 substringToIndex:1];
            uppercaseString = [v54 uppercaseString];
          }

          else
          {
            v56 = [v52 substringToIndex:1];
            uppercaseString = [v56 uppercaseString];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v93 = v53;
              v94 = 2112;
              v95 = v52;
              _os_log_error_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to extract high level domain for URL: %@. Creating initial for host instead: %@", buf, 0x16u);
            }
          }

          userInterfaceStyle = objb;

          self = selfCopy;
          v39 = v74;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [(STAllowanceDetailListController *)v90 createBudgetedItemSpecifiers];
          }

          uppercaseString = 0;
        }

        mEMORY[0x277D4BD98]3 = [MEMORY[0x277D4BD98] sharedCache];
        v58 = [mEMORY[0x277D4BD98]3 monogramImageForInitial:uppercaseString useDarkColors:userInterfaceStyle == 2];
        [v42 setObject:v58 forKeyedSubscript:v65];

        [v39 addObject:v42];
      }

      v69 = [webDomains countByEnumeratingWithState:&v75 objects:v87 count:16];
    }

    while (v69);
  }

  return v39;
}

- (id)_categoryDetailText:(id)text
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"AllItemsSelectedDetailText" value:&stru_28766E5A8 table:0];

  return v4;
}

- (void)_setAskForMoreTime:(id)time specifier:(id)specifier
{
  bOOLValue = [time BOOLValue];
  allowance = [(STAllowanceDetailListController *)self allowance];
  [allowance setBehaviorType:bOOLValue];
}

- (id)_askForMoreTime:(id)time
{
  v3 = MEMORY[0x277CCABB0];
  allowance = [(STAllowanceDetailListController *)self allowance];
  v5 = [v3 numberWithInt:{objc_msgSend(allowance, "behaviorType") == 1}];

  return v5;
}

- (void)_setAllowanceEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  allowance = [(STAllowanceDetailListController *)self allowance];
  [allowance setAllowanceEnabled:bOOLValue];
}

- (id)_allowanceEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  allowance = [(STAllowanceDetailListController *)self allowance];
  v5 = [v3 numberWithBool:{objc_msgSend(allowance, "allowanceEnabled")}];

  return v5;
}

- (id)atEndOfLimitFooterText
{
  coordinator = [(STAllowanceDetailListController *)self coordinator];
  viewModel = [coordinator viewModel];
  v4 = [viewModel me];

  if ([v4 isRemoteUser])
  {
    name = [v4 name];

    if (name)
    {
      v6 = objc_opt_new();
      name2 = [v4 name];
      v8 = [v6 personNameComponentsFromString:name2];

      givenName = [v8 givenName];
      if ([givenName length])
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = +[STScreenTimeSettingsUIBundle bundle];
        v12 = [v11 localizedStringForKey:@"AtAllowanceRemoteFooterText" value:&stru_28766E5A8 table:0];
        v13 = [v10 localizedStringWithFormat:v12, givenName];

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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = STAllowanceDetailListController;
  pathCopy = path;
  v7 = [(STAllowanceDetailListController *)&v13 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(STAllowanceDetailListController *)self indexForIndexPath:pathCopy, v13.receiver, v13.super_class];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndexedSubscript:v8];
    budgetedItemSpecifiers = [(STAllowanceDetailListController *)self budgetedItemSpecifiers];
    v11 = [budgetedItemSpecifiers containsObject:v9];

    if (v11)
    {
      [v7 setSelectionStyle:0];
    }
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(STAllowanceDetailListController *)self indexForIndexPath:pathCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndexedSubscript:v8];
  }

  timeSpecifier = [(STAllowanceDetailListController *)self timeSpecifier];

  if (v9 == timeSpecifier)
  {
    [(STAllowanceDetailListController *)self _showOrHidePickerSpecifierForSpecifier:v9 highlight:1];
  }

  v11.receiver = self;
  v11.super_class = STAllowanceDetailListController;
  [(STAllowanceDetailListController *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (void)datePickerChanged:(id)changed
{
  changedCopy = changed;
  calendar = [changedCopy calendar];
  date = [changedCopy date];

  v14 = [calendar components:96 fromDate:date];

  allowance = [(STAllowanceDetailListController *)self allowance];
  [allowance setTime:v14];

  allowance2 = [(STAllowanceDetailListController *)self allowance];
  [allowance2 setTimeByDay:0];

  timeSpecifier = [(STAllowanceDetailListController *)self timeSpecifier];
  [(STAllowanceDetailListController *)self reloadSpecifier:timeSpecifier];

  selectedTimeSpecifier = [(STAllowanceDetailListController *)self selectedTimeSpecifier];
  v11 = [selectedTimeSpecifier objectForKeyedSubscript:*MEMORY[0x277D40148]];

  tableCellBlueTextColor = [MEMORY[0x277D75348] tableCellBlueTextColor];
  detailTextLabel = [v11 detailTextLabel];
  [detailTextLabel setTextColor:tableCellBlueTextColor];

  [(STAllowanceDetailListController *)self showOrHideCustomizeDaysSpecifier];
}

- (id)datePickerForSpecifier:(id)specifier
{
  v4 = MEMORY[0x277D753E8];
  specifierCopy = specifier;
  v6 = [v4 alloc];
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 setPreferredDatePickerStyle:1];
  [v7 setDatePickerMode:3];
  [v7 _setAllowsZeroCountDownDuration:1];
  v8 = objc_opt_new();
  timePickerSpecifier = [(STAllowanceDetailListController *)self timePickerSpecifier];

  if (timePickerSpecifier == specifierCopy)
  {
    allowance = [(STAllowanceDetailListController *)self allowance];
    time = [allowance time];

    v8 = time;
  }

  else
  {
    v10 = +[STUILog persistence];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [STAllowanceDetailListController datePickerForSpecifier:v10];
    }
  }

  calendar = [v7 calendar];
  v14 = [calendar dateFromComponents:v8];
  [v7 setDate:v14 animated:1];

  return v7;
}

- (void)customizeDaysListController:(id)controller didFinishEditingTimeByDay:(id)day
{
  dayCopy = day;
  v5 = MEMORY[0x277CBEB98];
  allValues = [dayCopy allValues];
  v7 = [v5 setWithArray:allValues];

  v8 = dayCopy;
  if ([v7 count] == 1)
  {
    anyObject = [v7 anyObject];
    allowance = [(STAllowanceDetailListController *)self allowance];
    [allowance setTime:anyObject];

    v8 = 0;
  }

  allowance2 = [(STAllowanceDetailListController *)self allowance];
  [allowance2 setTimeByDay:v8];

  timePickerSpecifier = [(STAllowanceDetailListController *)self timePickerSpecifier];
  [(STAllowanceDetailListController *)self removeSpecifier:timePickerSpecifier animated:1];

  customizeDaysSpecifier = [(STAllowanceDetailListController *)self customizeDaysSpecifier];
  [(STAllowanceDetailListController *)self removeSpecifier:customizeDaysSpecifier animated:1];

  selectedTimeSpecifier = [(STAllowanceDetailListController *)self selectedTimeSpecifier];
  v15 = [selectedTimeSpecifier objectForKeyedSubscript:*MEMORY[0x277D40148]];

  defaultTimeCellDetailTextColor = [(STAllowanceDetailListController *)self defaultTimeCellDetailTextColor];
  detailTextLabel = [v15 detailTextLabel];
  [detailTextLabel setTextColor:defaultTimeCellDetailTextColor];

  [(STAllowanceDetailListController *)self setSelectedTimeSpecifier:0];
  timeSpecifier = [(STAllowanceDetailListController *)self timeSpecifier];
  [(STAllowanceDetailListController *)self reloadSpecifier:timeSpecifier];

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