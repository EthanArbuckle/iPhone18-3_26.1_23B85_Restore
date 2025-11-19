@interface STScreenTimeReportController
- (BOOL)isDatePickerHidden;
- (STScreenTimeReportController)initWithTitle:(id)a3 coordinator:(id)a4 pinControllerDelegate:(id)a5;
- (id)parentController;
- (id)rootController;
- (void)_dateModeDidChange:(id)a3;
- (void)_dateModePickerDidAppear;
- (void)_dateModePickerDidDisappear;
- (void)_devicesDidChangeFrom:(id)a3 to:(id)a4;
- (void)_didPressAddApplicationLimitButton:(id)a3;
- (void)_didPressAddCategoryLimitButton:(id)a3;
- (void)_didPressAddWebDomainLimitButton:(id)a3;
- (void)_didTapBarMark:(id)a3;
- (void)_didTapEditLimitLink:(id)a3;
- (void)_didTapNotificationsLink:(id)a3;
- (void)_didTapShowThisWeekButton:(id)a3;
- (void)_didTapShowTodayButton:(id)a3;
- (void)_editLimit:(id)a3 isNewLimit:(BOOL)a4;
- (void)_selectedCoreDuetIdentifierDidChange:(id)a3;
- (void)_selectedUsageReportDidChangeFrom:(id)a3 to:(id)a4;
- (void)allowanceDetailController:(id)a3 didDeleteAllowance:(id)a4;
- (void)allowanceDetailController:(id)a3 didSaveAllowance:(id)a4;
- (void)dealloc;
- (void)debouncer:(id)a3 didDebounce:(id)a4;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCoordinator:(id)a3;
- (void)setDatePickerHidden:(BOOL)a3;
- (void)setSpecifier:(id)a3;
- (void)showController:(id)a3 animate:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation STScreenTimeReportController

- (STScreenTimeReportController)initWithTitle:(id)a3 coordinator:(id)a4 pinControllerDelegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26.receiver = self;
  v26.super_class = STScreenTimeReportController;
  v11 = [(STScreenTimeReportController *)&v26 initWithNibName:0 bundle:0];
  [(STScreenTimeReportController *)v11 setTitle:v8];
  objc_initWeak(&location, v11);
  v12 = [_TtC20ScreenTimeSettingsUI27STAllActivityViewController alloc];
  v13 = [v9 viewModel];
  v14 = [v13 me];
  v15 = [v14 altDSID];
  v16 = [(STAllActivityViewController *)v12 initWithUserAltDSID:v15 deviceIdentifier:0];
  appAndWebsiteActivityViewController = v11->_appAndWebsiteActivityViewController;
  v11->_appAndWebsiteActivityViewController = v16;

  objc_storeStrong(&v11->_pinControllerDelegate, a5);
  v18 = objc_opt_new();
  notificationSettingsGateway = v11->_notificationSettingsGateway;
  v11->_notificationSettingsGateway = v18;

  v20 = objc_opt_new();
  datePickerBar = v11->_datePickerBar;
  v11->_datePickerBar = v20;

  [(STDatePickerBar *)v11->_datePickerBar updateWithCoordinator:v9];
  v22 = [objc_alloc(MEMORY[0x277D4B990]) initWithMinCoalescenceInterval:0.1 maxCoalescenceInterval:1.0];
  datePickerHiddenDebouncer = v11->_datePickerHiddenDebouncer;
  v11->_datePickerHiddenDebouncer = v22;

  [(STDebouncer *)v11->_datePickerHiddenDebouncer setDelegate:v11];
  [(STScreenTimeReportController *)v11 setCoordinator:v9];
  [(STAllActivityViewController *)v11->_appAndWebsiteActivityViewController loadViewIfNeeded];
  [MEMORY[0x277CCA9A0] defaultCenter];

  objc_destroyWeak(&location);
  return v11;
}

- (void)dealloc
{
  [(STScreenTimeReportController *)self setCoordinator:0];
  v3.receiver = self;
  v3.super_class = STScreenTimeReportController;
  [(STScreenTimeReportController *)&v3 dealloc];
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  [(STRootViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedCoreDuetIdentifier" context:"KVOContextScreenTimeReportController"];
  [(STRootViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" context:"KVOContextScreenTimeReportController"];
  [(STRootViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.devices" context:"KVOContextScreenTimeReportController"];
  [(STRootViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName" context:"KVOContextScreenTimeReportController"];
  coordinator = self->_coordinator;
  self->_coordinator = v4;
  v6 = v4;

  [(STRootViewModelCoordinator *)self->_coordinator addObserver:self forKeyPath:@"usageDetailsCoordinator.devices" options:7 context:"KVOContextScreenTimeReportController"];
  [(STRootViewModelCoordinator *)self->_coordinator addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName" options:5 context:"KVOContextScreenTimeReportController"];
  [(STRootViewModelCoordinator *)self->_coordinator addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedCoreDuetIdentifier" options:5 context:"KVOContextScreenTimeReportController"];
  [(STRootViewModelCoordinator *)self->_coordinator addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" options:7 context:"KVOContextScreenTimeReportController"];
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = STScreenTimeReportController;
  [(STScreenTimeReportController *)&v33 viewDidLoad];
  v3 = [(STScreenTimeReportController *)self appAndWebsiteActivityViewController];
  [(STScreenTimeReportController *)self addChildViewController:v3];
  v4 = [v3 view];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(STScreenTimeReportController *)self view];
  [v5 addSubview:v4];
  v6 = _NSDictionaryOfVariableBindings(&cfstr_Contentview.isa, v4, 0);
  v7 = 0x277CCA000uLL;
  v8 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[contentView]|" options:0 metrics:0 views:v6];
  v9 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[contentView]|" options:0 metrics:0 views:v6];
  v10 = [(STScreenTimeReportController *)self datePickerBar];
  v31 = v5;
  if (v10)
  {
    [v5 addSubview:v10];
    [v5 readableContentGuide];
    v11 = v28 = v6;
    v12 = [v11 topAnchor];

    v13 = [v10 topAnchor];
    v25 = v12;
    v26 = [v13 constraintEqualToAnchor:v12];

    [(STScreenTimeReportController *)self setDatePickerTopConstraint:v26];
    v14 = [v10 bottomAnchor];
    [v14 constraintEqualToAnchor:v12];
    v15 = v27 = v8;

    [(STScreenTimeReportController *)self setDatePickerBottomConstraint:v15];
    v16 = objc_alloc(MEMORY[0x277CBEB18]);
    v24 = [v10 leadingAnchor];
    v17 = [v5 leadingAnchor];
    [v24 constraintEqualToAnchor:v17];
    v18 = v30 = v3;
    [v10 trailingAnchor];
    v19 = v29 = v4;
    [v5 trailingAnchor];
    v21 = v20 = v9;
    v22 = [v19 constraintEqualToAnchor:v21];
    v23 = [v16 initWithObjects:{v15, v18, v22, 0}];

    v9 = v20;
    v4 = v29;

    v3 = v30;
    v7 = 0x277CCA000;

    v6 = v28;
    v8 = v27;
  }

  else
  {
    v23 = objc_opt_new();
  }

  [v23 addObjectsFromArray:v8];
  [v23 addObjectsFromArray:v9];
  [*(v7 + 2768) activateConstraints:v23];
  [v3 didMoveToParentViewController:self];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STScreenTimeReportController.viewDidLoad", buf, 2u);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  if (a6 == "KVOContextScreenTimeReportController")
  {
    [(STScreenTimeReportController *)self coordinator];

    if ([v10 isEqualToString:@"usageDetailsCoordinator.viewModel.selectedUsageReport"])
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

      [(STScreenTimeReportController *)self _selectedUsageReportDidChangeFrom:v12 to:v14];
    }

    else
    {
      [(STScreenTimeReportController *)self coordinator];

      if (![v10 isEqualToString:@"usageDetailsCoordinator.devices"])
      {
        [(STScreenTimeReportController *)self coordinator];

        if ([v10 isEqualToString:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName"])
        {
          v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          v18 = [MEMORY[0x277CBEB68] null];

          if (v12 == v18)
          {

            v12 = 0;
          }

          [(STScreenTimeReportController *)self setTitle:v12];
        }

        else
        {
          [(STScreenTimeReportController *)self coordinator];

          if (![v10 isEqualToString:@"usageDetailsCoordinator.viewModel.selectedCoreDuetIdentifier"])
          {
            goto LABEL_17;
          }

          v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          v19 = [MEMORY[0x277CBEB68] null];

          if (v12 == v19)
          {

            v12 = 0;
          }

          [(STScreenTimeReportController *)self _selectedCoreDuetIdentifierDidChange:v12];
        }

        goto LABEL_16;
      }

      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v16 = [MEMORY[0x277CBEB68] null];

      if (v12 == v16)
      {

        v12 = 0;
      }

      v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v17 = [MEMORY[0x277CBEB68] null];

      if (v14 == v17)
      {

        v14 = 0;
      }

      [(STScreenTimeReportController *)self _devicesDidChangeFrom:v12 to:v14];
    }

LABEL_16:
    goto LABEL_17;
  }

  v20.receiver = self;
  v20.super_class = STScreenTimeReportController;
  [(STScreenTimeReportController *)&v20 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
LABEL_17:
}

- (void)_selectedUsageReportDidChangeFrom:(id)a3 to:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (v16 != v6)
  {
    v7 = [v16 isEqual:v6];
    if (v6)
    {
      if ((v7 & 1) == 0)
      {
        [v6 type];
        v8 = [v6 reportDateInterval];
        v9 = [v8 startDate];
        [v9 timeIntervalSinceReferenceDate];
        v11 = v10;

        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", v11];
        v13 = [MEMORY[0x277CCA9A0] defaultCenter];
        [v13 postNotificationName:*MEMORY[0x277D4BE10] object:v12];
        v14 = [(STScreenTimeReportController *)self datePickerBar];
        v15 = [(STScreenTimeReportController *)self coordinator];
        [v14 updateWithCoordinator:v15];
      }
    }
  }
}

- (void)_devicesDidChangeFrom:(id)a3 to:(id)a4
{
  v6 = a4;
  v7 = [a3 count] > 1;
  v8 = [v6 count];

  if (((v7 ^ (v8 < 2)) & 1) == 0)
  {
    v9 = [(STScreenTimeReportController *)self coordinator];
    [STDevicesMenu updateWithCoordinator:v9 viewController:self];
  }
}

- (void)_selectedCoreDuetIdentifierDidChange:(id)a3
{
  v4 = [(STScreenTimeReportController *)self coordinator];
  v5 = [v4 viewModel];
  v6 = [v5 me];
  v11 = [v6 altDSID];

  v7 = [(STScreenTimeReportController *)self appAndWebsiteActivityViewController];
  if (v11)
  {
    v8 = [(STScreenTimeReportController *)self coordinator];
    v9 = [v8 usageDetailsCoordinator];
    v10 = [v9 selectedDeviceIdentifier];
    [v7 updateWithUserAltDSID:v11 deviceIdentifier:v10];
  }

  else
  {
    [v7 updateWithUserAltDSID:0 deviceIdentifier:0];
  }
}

- (void)_dateModeDidChange:(id)a3
{
  v4 = [a3 object];
  v5 = [v4 intValue];

  v6 = [(STScreenTimeReportController *)self coordinator];
  v7 = [v6 usageDetailsCoordinator];
  v9 = [v7 viewModel];

  if (v5)
  {
    v8 = v9;
    if (v5 != 1)
    {
      goto LABEL_6;
    }

    [v9 setSelectedDay:0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    [v9 selectToday];
  }

  v8 = v9;
LABEL_6:
}

- (void)_dateModePickerDidAppear
{
  v2 = [(STScreenTimeReportController *)self datePickerHiddenDebouncer];
  [v2 bounce:MEMORY[0x277CBEC38]];
}

- (void)_dateModePickerDidDisappear
{
  v2 = [(STScreenTimeReportController *)self datePickerHiddenDebouncer];
  [v2 bounce:MEMORY[0x277CBEC28]];
}

- (void)_didTapShowTodayButton:(id)a3
{
  v5 = [(STScreenTimeReportController *)self coordinator];
  v3 = [v5 usageDetailsCoordinator];
  v4 = [v3 viewModel];
  [v4 selectToday];
}

- (void)_didTapShowThisWeekButton:(id)a3
{
  v5 = [(STScreenTimeReportController *)self coordinator];
  v3 = [v5 usageDetailsCoordinator];
  v4 = [v3 viewModel];
  [v4 setSelectedWeek:0];
}

- (void)_didTapNotificationsLink:(id)a3
{
  v16 = [a3 object];
  v4 = [(STScreenTimeReportController *)self notificationSettingsGateway];
  v5 = [v4 notificationSettingsForBundleIdentifier:v16];

  if (v5)
  {
    v6 = [MEMORY[0x277D4B8C0] sharedCache];
    v7 = [v6 appInfoForBundleIdentifier:v16];

    v8 = MEMORY[0x277D3FAD8];
    v9 = [v7 displayName];
    v10 = [(STScreenTimeReportController *)self pinControllerDelegate];
    v11 = [v8 preferenceSpecifierNamed:v9 target:v10 set:0 get:0 detail:0 cell:2 edit:0];

    v12 = PSBundlePathForPreferenceBundle();
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277D40000]];

    [v11 setObject:*MEMORY[0x277D4BE08] forKeyedSubscript:*MEMORY[0x277D3FF08]];
    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FE00]];
    [v11 setControllerLoadAction:sel_lazyLoadBundle_];
    [v11 setObject:v5 forKeyedSubscript:*MEMORY[0x277D4BE18]];
    [v11 setIdentifier:v16];
    v13 = [(STScreenTimeReportController *)self pinControllerDelegate];
    v14 = [v13 selectSpecifier:v11];

    [v14 setParentController:self];
    WeakRetained = objc_loadWeakRetained(&self->_rootController);
    [v14 setRootController:WeakRetained];

    [v14 setSpecifier:v11];
    [(STScreenTimeReportController *)self showController:v14 animate:1];
  }
}

- (void)_didTapEditLimitLink:(id)a3
{
  v12 = a3;
  v4 = [(STScreenTimeReportController *)self viewIfLoaded];
  v5 = [v4 window];

  if (v5)
  {
    v6 = [v12 object];
    v7 = [(STScreenTimeReportController *)self coordinator];
    v8 = [v7 timeAllowancesCoordinator];
    v9 = [v8 viewModel];
    v10 = [v9 allowancesByIdentifier];
    v11 = [v10 objectForKeyedSubscript:v6];

    [(STScreenTimeReportController *)self _editLimit:v11 isNewLimit:0];
  }
}

- (void)_didPressAddApplicationLimitButton:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(STScreenTimeReportController *)self viewIfLoaded];
  v6 = [v5 window];

  if (v6)
  {
    v7 = [v4 object];
    v8 = [(STScreenTimeReportController *)self coordinator];
    v9 = [v8 isPasscodeEnabled];
    v10 = v7;
    v11 = objc_opt_new();
    [v11 setBehaviorType:v9];
    if (v10)
    {
      v13[0] = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      [v11 setBundleIdentifiers:v12];
    }

    [(STScreenTimeReportController *)self _editLimit:v11 isNewLimit:1];
  }
}

- (void)_didPressAddCategoryLimitButton:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(STScreenTimeReportController *)self viewIfLoaded];
  v6 = [v5 window];

  if (v6)
  {
    v7 = [v4 object];
    v8 = [(STScreenTimeReportController *)self coordinator];
    v9 = [v8 isPasscodeEnabled];
    v10 = v7;
    v11 = objc_opt_new();
    [v11 setBehaviorType:v9];
    if (v10)
    {
      v13[0] = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      [v11 setCategoryIdentifiers:v12];
    }

    [(STScreenTimeReportController *)self _editLimit:v11 isNewLimit:1];
  }
}

- (void)_didPressAddWebDomainLimitButton:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(STScreenTimeReportController *)self viewIfLoaded];
  v6 = [v5 window];

  if (v6)
  {
    v7 = [v4 object];
    v8 = [(STScreenTimeReportController *)self coordinator];
    v9 = [v8 isPasscodeEnabled];
    v10 = v7;
    v11 = objc_opt_new();
    [v11 setBehaviorType:v9];
    if (v10)
    {
      v13[0] = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      [v11 setWebDomains:v12];
    }

    [(STScreenTimeReportController *)self _editLimit:v11 isNewLimit:1];
  }
}

- (void)_didTapBarMark:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 object];

  [v7 doubleValue];
  v14 = [v6 initWithTimeIntervalSinceReferenceDate:?];

  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [v8 components:512 fromDate:v14];
  v10 = [v9 weekday];

  v11 = [(STScreenTimeReportController *)self coordinator];
  v12 = [v11 usageDetailsCoordinator];
  v13 = [v12 viewModel];

  [v13 setSelectedDay:v10];
}

- (void)_editLimit:(id)a3 isNewLimit:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(STScreenTimeReportController *)self coordinator];
  v8 = [(STScreenTimeReportController *)self pinControllerDelegate];
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    v9 = [MEMORY[0x277D75110] alertControllerForFeatureNotAvailable];
    [(STScreenTimeReportController *)self presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    if ([v7 isPasscodeEnabled] && (objc_msgSend(v7, "hasAlreadyEnteredPINForSession") & 1) == 0)
    {
      v16 = MEMORY[0x277D3FAD8];
      v17 = objc_opt_new();
      v18 = [v17 UUIDString];
      v10 = [v16 preferenceSpecifierNamed:v18 target:v8 set:0 get:0 detail:0 cell:13 edit:objc_opt_class()];

      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      [(STAllowanceDetailListController *)v10 setObject:v20 forKeyedSubscript:*MEMORY[0x277D400B8]];

      [(STAllowanceDetailListController *)v10 setObject:&unk_28769D028 forKeyedSubscript:*MEMORY[0x277D401C0]];
      [(STAllowanceDetailListController *)v10 setObject:v8 forKeyedSubscript:*MEMORY[0x277D401B8]];
      [(STAllowanceDetailListController *)v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __54__STScreenTimeReportController__editLimit_isNewLimit___block_invoke;
      aBlock[3] = &unk_279B7CF48;
      aBlock[4] = self;
      v27 = v6;
      v28 = v4;
      v21 = _Block_copy(aBlock);
      [(STAllowanceDetailListController *)v10 setObject:v21 forKeyedSubscript:0x287675888];

      v22 = objc_opt_new();
      [v22 setParentController:v8];
      WeakRetained = objc_loadWeakRetained(&self->_rootController);
      [v22 setRootController:WeakRetained];

      [v22 setSpecifier:v10];
      v24 = objc_opt_new();
      [v24 setPinDelegate:v8];
      [v24 setParentController:v22];
      v25 = [v22 rootController];
      [v24 setRootController:v25];

      [v24 setSpecifier:v10];
      [v8 showController:v22 animate:1];
    }

    else
    {
      v10 = [[STAllowanceDetailListController alloc] initWithCoordinator:v7];
      [(STAllowanceDetailListController *)v10 setAllowance:v6];
      [(STAllowanceDetailListController *)v10 setDelegate:self];
      [(STAllowanceDetailListController *)v10 setIsSetupController:v4];
      [(STAllowanceDetailListController *)v10 setCreatingNewAllowance:v4];
      if (v4)
      {
        v11 = objc_opt_new();
        [v11 setParentController:v8];
        v12 = objc_loadWeakRetained(&self->_rootController);
        [v11 setRootController:v12];

        [v11 setSpecifier:self->_specifier];
        [(STAllowanceDetailListController *)v10 setParentController:v11];
        v13 = [v11 rootController];
        [(STAllowanceDetailListController *)v10 setRootController:v13];

        v14 = [v11 specifier];
        [(STAllowanceDetailListController *)v10 setSpecifier:v14];

        [v11 showController:v10];
        [v8 showController:v11 animate:1];
      }

      else
      {
        [(STAllowanceDetailListController *)v10 setParentController:self];
        v15 = objc_loadWeakRetained(&self->_rootController);
        [(STAllowanceDetailListController *)v10 setRootController:v15];

        [(STAllowanceDetailListController *)v10 setSpecifier:self->_specifier];
        [(STScreenTimeReportController *)self showController:v10 animate:1];
      }
    }
  }
}

uint64_t __54__STScreenTimeReportController__editLimit_isNewLimit___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _editLimit:*(result + 40) isNewLimit:*(result + 48)];
  }

  return result;
}

- (void)debouncer:(id)a3 didDebounce:(id)a4
{
  v5 = [a4 BOOLValue];

  [(STScreenTimeReportController *)self setDatePickerHidden:v5];
}

- (BOOL)isDatePickerHidden
{
  v3 = [(STScreenTimeReportController *)self datePickerTopConstraint];
  if ([v3 isActive])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(STScreenTimeReportController *)self datePickerBottomConstraint];
    v4 = [v5 isActive];
  }

  return v4;
}

- (void)setDatePickerHidden:(BOOL)a3
{
  v3 = a3;
  v10 = [(STScreenTimeReportController *)self viewIfLoaded];
  v5 = [v10 window];
  if (v5)
  {
    v6 = v5;
    v7 = [(STScreenTimeReportController *)self isDatePickerHidden];

    if (v7 != v3)
    {
      v8 = [(STScreenTimeReportController *)self datePickerTopConstraint];
      [v8 setActive:v3 ^ 1];

      v9 = [(STScreenTimeReportController *)self datePickerBottomConstraint];
      [v9 setActive:v3];

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __52__STScreenTimeReportController_setDatePickerHidden___block_invoke;
      v13[3] = &unk_279B7C998;
      v13[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:0x20000 delay:v13 options:0 animations:0.6 completion:0.0];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __52__STScreenTimeReportController_setDatePickerHidden___block_invoke_2;
      v11[3] = &unk_279B7CF70;
      v11[4] = self;
      v12 = v3;
      [MEMORY[0x277D75D18] animateWithDuration:0x20000 delay:v11 options:0 animations:0.2 completion:0.0];
    }
  }

  else
  {
  }
}

void __52__STScreenTimeReportController_setDatePickerHidden___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

void __52__STScreenTimeReportController_setDatePickerHidden___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = [*(a1 + 32) datePickerBar];
  [v2 setAlpha:v1];
}

- (void)allowanceDetailController:(id)a3 didSaveAllowance:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STScreenTimeReportController *)self coordinator];
  v9 = [v8 timeAllowancesCoordinator];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__STScreenTimeReportController_allowanceDetailController_didSaveAllowance___block_invoke;
  v11[3] = &unk_279B7CBC8;
  v12 = v6;
  v13 = self;
  v10 = v6;
  [v9 saveAllowance:v7 completionHandler:v11];
}

void __75__STScreenTimeReportController_allowanceDetailController_didSaveAllowance___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[STUILog persistence];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __75__STScreenTimeReportController_allowanceDetailController_didSaveAllowance___block_invoke_cold_1(v3, v4);
    }
  }

  if ([*(a1 + 32) isSetupController])
  {
    [*(a1 + 40) dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)allowanceDetailController:(id)a3 didDeleteAllowance:(id)a4
{
  v5 = a4;
  v6 = [(STScreenTimeReportController *)self coordinator];
  v7 = [v6 timeAllowancesCoordinator];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__STScreenTimeReportController_allowanceDetailController_didDeleteAllowance___block_invoke;
  v8[3] = &unk_279B7CC18;
  v8[4] = self;
  [v7 deleteAllowance:v5 completionHandler:v8];
}

void __77__STScreenTimeReportController_allowanceDetailController_didDeleteAllowance___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[STUILog persistence];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77__STScreenTimeReportController_allowanceDetailController_didDeleteAllowance___block_invoke_cold_1(v3, v4);
    }
  }

  [*(a1 + 32) popViewControllerAnimated:1];
}

- (id)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

- (id)rootController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootController);

  return WeakRetained;
}

- (void)setSpecifier:(id)a3
{
  v5 = a3;
  if (self->_specifier != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_specifier, a3);
    v5 = v6;
  }
}

- (void)showController:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if (v4)
  {
    [(STScreenTimeReportController *)self showViewController:v8 sender:self];
    v6 = v8;
  }

  else
  {
    v7 = [(STScreenTimeReportController *)self navigationController];
    [v7 pushViewController:v8 animated:0];

    v6 = v7;
  }
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

void __75__STScreenTimeReportController_allowanceDetailController_didSaveAllowance___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_264BA2000, a2, OS_LOG_TYPE_ERROR, "Failed to save limit: %{public}@", &v2, 0xCu);
}

void __77__STScreenTimeReportController_allowanceDetailController_didDeleteAllowance___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_264BA2000, a2, OS_LOG_TYPE_ERROR, "Failed to delete limit: %{public}@", &v2, 0xCu);
}

@end