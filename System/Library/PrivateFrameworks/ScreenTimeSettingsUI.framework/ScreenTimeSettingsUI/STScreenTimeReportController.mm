@interface STScreenTimeReportController
- (BOOL)isDatePickerHidden;
- (STScreenTimeReportController)initWithTitle:(id)title coordinator:(id)coordinator pinControllerDelegate:(id)delegate;
- (id)parentController;
- (id)rootController;
- (void)_dateModeDidChange:(id)change;
- (void)_dateModePickerDidAppear;
- (void)_dateModePickerDidDisappear;
- (void)_devicesDidChangeFrom:(id)from to:(id)to;
- (void)_didPressAddApplicationLimitButton:(id)button;
- (void)_didPressAddCategoryLimitButton:(id)button;
- (void)_didPressAddWebDomainLimitButton:(id)button;
- (void)_didTapBarMark:(id)mark;
- (void)_didTapEditLimitLink:(id)link;
- (void)_didTapNotificationsLink:(id)link;
- (void)_didTapShowThisWeekButton:(id)button;
- (void)_didTapShowTodayButton:(id)button;
- (void)_editLimit:(id)limit isNewLimit:(BOOL)newLimit;
- (void)_selectedCoreDuetIdentifierDidChange:(id)change;
- (void)_selectedUsageReportDidChangeFrom:(id)from to:(id)to;
- (void)allowanceDetailController:(id)controller didDeleteAllowance:(id)allowance;
- (void)allowanceDetailController:(id)controller didSaveAllowance:(id)allowance;
- (void)dealloc;
- (void)debouncer:(id)debouncer didDebounce:(id)debounce;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
- (void)setDatePickerHidden:(BOOL)hidden;
- (void)setSpecifier:(id)specifier;
- (void)showController:(id)controller animate:(BOOL)animate;
- (void)viewDidLoad;
@end

@implementation STScreenTimeReportController

- (STScreenTimeReportController)initWithTitle:(id)title coordinator:(id)coordinator pinControllerDelegate:(id)delegate
{
  titleCopy = title;
  coordinatorCopy = coordinator;
  delegateCopy = delegate;
  v26.receiver = self;
  v26.super_class = STScreenTimeReportController;
  v11 = [(STScreenTimeReportController *)&v26 initWithNibName:0 bundle:0];
  [(STScreenTimeReportController *)v11 setTitle:titleCopy];
  objc_initWeak(&location, v11);
  v12 = [_TtC20ScreenTimeSettingsUI27STAllActivityViewController alloc];
  viewModel = [coordinatorCopy viewModel];
  v14 = [viewModel me];
  altDSID = [v14 altDSID];
  v16 = [(STAllActivityViewController *)v12 initWithUserAltDSID:altDSID deviceIdentifier:0];
  appAndWebsiteActivityViewController = v11->_appAndWebsiteActivityViewController;
  v11->_appAndWebsiteActivityViewController = v16;

  objc_storeStrong(&v11->_pinControllerDelegate, delegate);
  v18 = objc_opt_new();
  notificationSettingsGateway = v11->_notificationSettingsGateway;
  v11->_notificationSettingsGateway = v18;

  v20 = objc_opt_new();
  datePickerBar = v11->_datePickerBar;
  v11->_datePickerBar = v20;

  [(STDatePickerBar *)v11->_datePickerBar updateWithCoordinator:coordinatorCopy];
  v22 = [objc_alloc(MEMORY[0x277D4B990]) initWithMinCoalescenceInterval:0.1 maxCoalescenceInterval:1.0];
  datePickerHiddenDebouncer = v11->_datePickerHiddenDebouncer;
  v11->_datePickerHiddenDebouncer = v22;

  [(STDebouncer *)v11->_datePickerHiddenDebouncer setDelegate:v11];
  [(STScreenTimeReportController *)v11 setCoordinator:coordinatorCopy];
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

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  [(STRootViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedCoreDuetIdentifier" context:"KVOContextScreenTimeReportController"];
  [(STRootViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" context:"KVOContextScreenTimeReportController"];
  [(STRootViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.devices" context:"KVOContextScreenTimeReportController"];
  [(STRootViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName" context:"KVOContextScreenTimeReportController"];
  coordinator = self->_coordinator;
  self->_coordinator = coordinatorCopy;
  v6 = coordinatorCopy;

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
  appAndWebsiteActivityViewController = [(STScreenTimeReportController *)self appAndWebsiteActivityViewController];
  [(STScreenTimeReportController *)self addChildViewController:appAndWebsiteActivityViewController];
  view = [appAndWebsiteActivityViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(STScreenTimeReportController *)self view];
  [view2 addSubview:view];
  v6 = _NSDictionaryOfVariableBindings(&cfstr_Contentview.isa, view, 0);
  v7 = 0x277CCA000uLL;
  v8 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[contentView]|" options:0 metrics:0 views:v6];
  v9 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[contentView]|" options:0 metrics:0 views:v6];
  datePickerBar = [(STScreenTimeReportController *)self datePickerBar];
  v31 = view2;
  if (datePickerBar)
  {
    [view2 addSubview:datePickerBar];
    [view2 readableContentGuide];
    v11 = v28 = v6;
    topAnchor = [v11 topAnchor];

    topAnchor2 = [datePickerBar topAnchor];
    v25 = topAnchor;
    v26 = [topAnchor2 constraintEqualToAnchor:topAnchor];

    [(STScreenTimeReportController *)self setDatePickerTopConstraint:v26];
    bottomAnchor = [datePickerBar bottomAnchor];
    [bottomAnchor constraintEqualToAnchor:topAnchor];
    v15 = v27 = v8;

    [(STScreenTimeReportController *)self setDatePickerBottomConstraint:v15];
    v16 = objc_alloc(MEMORY[0x277CBEB18]);
    leadingAnchor = [datePickerBar leadingAnchor];
    leadingAnchor2 = [view2 leadingAnchor];
    [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v18 = v30 = appAndWebsiteActivityViewController;
    [datePickerBar trailingAnchor];
    v19 = v29 = view;
    [view2 trailingAnchor];
    v21 = v20 = v9;
    v22 = [v19 constraintEqualToAnchor:v21];
    v23 = [v16 initWithObjects:{v15, v18, v22, 0}];

    v9 = v20;
    view = v29;

    appAndWebsiteActivityViewController = v30;
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
  [appAndWebsiteActivityViewController didMoveToParentViewController:self];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STScreenTimeReportController.viewDidLoad", buf, 2u);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == "KVOContextScreenTimeReportController")
  {
    [(STScreenTimeReportController *)self coordinator];

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

      [(STScreenTimeReportController *)self _selectedUsageReportDidChangeFrom:v12 to:v14];
    }

    else
    {
      [(STScreenTimeReportController *)self coordinator];

      if (![pathCopy isEqualToString:@"usageDetailsCoordinator.devices"])
      {
        [(STScreenTimeReportController *)self coordinator];

        if ([pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName"])
        {
          v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          null3 = [MEMORY[0x277CBEB68] null];

          if (v12 == null3)
          {

            v12 = 0;
          }

          [(STScreenTimeReportController *)self setTitle:v12];
        }

        else
        {
          [(STScreenTimeReportController *)self coordinator];

          if (![pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.selectedCoreDuetIdentifier"])
          {
            goto LABEL_17;
          }

          v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          null4 = [MEMORY[0x277CBEB68] null];

          if (v12 == null4)
          {

            v12 = 0;
          }

          [(STScreenTimeReportController *)self _selectedCoreDuetIdentifierDidChange:v12];
        }

        goto LABEL_16;
      }

      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null5 = [MEMORY[0x277CBEB68] null];

      if (v12 == null5)
      {

        v12 = 0;
      }

      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null6 = [MEMORY[0x277CBEB68] null];

      if (v14 == null6)
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
  [(STScreenTimeReportController *)&v20 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
LABEL_17:
}

- (void)_selectedUsageReportDidChangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (fromCopy != toCopy)
  {
    v7 = [fromCopy isEqual:toCopy];
    if (toCopy)
    {
      if ((v7 & 1) == 0)
      {
        [toCopy type];
        reportDateInterval = [toCopy reportDateInterval];
        startDate = [reportDateInterval startDate];
        [startDate timeIntervalSinceReferenceDate];
        v11 = v10;

        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", v11];
        defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
        [defaultCenter postNotificationName:*MEMORY[0x277D4BE10] object:v12];
        datePickerBar = [(STScreenTimeReportController *)self datePickerBar];
        coordinator = [(STScreenTimeReportController *)self coordinator];
        [datePickerBar updateWithCoordinator:coordinator];
      }
    }
  }
}

- (void)_devicesDidChangeFrom:(id)from to:(id)to
{
  toCopy = to;
  v7 = [from count] > 1;
  v8 = [toCopy count];

  if (((v7 ^ (v8 < 2)) & 1) == 0)
  {
    coordinator = [(STScreenTimeReportController *)self coordinator];
    [STDevicesMenu updateWithCoordinator:coordinator viewController:self];
  }
}

- (void)_selectedCoreDuetIdentifierDidChange:(id)change
{
  coordinator = [(STScreenTimeReportController *)self coordinator];
  viewModel = [coordinator viewModel];
  v6 = [viewModel me];
  altDSID = [v6 altDSID];

  appAndWebsiteActivityViewController = [(STScreenTimeReportController *)self appAndWebsiteActivityViewController];
  if (altDSID)
  {
    coordinator2 = [(STScreenTimeReportController *)self coordinator];
    usageDetailsCoordinator = [coordinator2 usageDetailsCoordinator];
    selectedDeviceIdentifier = [usageDetailsCoordinator selectedDeviceIdentifier];
    [appAndWebsiteActivityViewController updateWithUserAltDSID:altDSID deviceIdentifier:selectedDeviceIdentifier];
  }

  else
  {
    [appAndWebsiteActivityViewController updateWithUserAltDSID:0 deviceIdentifier:0];
  }
}

- (void)_dateModeDidChange:(id)change
{
  object = [change object];
  intValue = [object intValue];

  coordinator = [(STScreenTimeReportController *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
  viewModel = [usageDetailsCoordinator viewModel];

  if (intValue)
  {
    v8 = viewModel;
    if (intValue != 1)
    {
      goto LABEL_6;
    }

    [viewModel setSelectedDay:0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    [viewModel selectToday];
  }

  v8 = viewModel;
LABEL_6:
}

- (void)_dateModePickerDidAppear
{
  datePickerHiddenDebouncer = [(STScreenTimeReportController *)self datePickerHiddenDebouncer];
  [datePickerHiddenDebouncer bounce:MEMORY[0x277CBEC38]];
}

- (void)_dateModePickerDidDisappear
{
  datePickerHiddenDebouncer = [(STScreenTimeReportController *)self datePickerHiddenDebouncer];
  [datePickerHiddenDebouncer bounce:MEMORY[0x277CBEC28]];
}

- (void)_didTapShowTodayButton:(id)button
{
  coordinator = [(STScreenTimeReportController *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
  viewModel = [usageDetailsCoordinator viewModel];
  [viewModel selectToday];
}

- (void)_didTapShowThisWeekButton:(id)button
{
  coordinator = [(STScreenTimeReportController *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
  viewModel = [usageDetailsCoordinator viewModel];
  [viewModel setSelectedWeek:0];
}

- (void)_didTapNotificationsLink:(id)link
{
  object = [link object];
  notificationSettingsGateway = [(STScreenTimeReportController *)self notificationSettingsGateway];
  v5 = [notificationSettingsGateway notificationSettingsForBundleIdentifier:object];

  if (v5)
  {
    mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
    v7 = [mEMORY[0x277D4B8C0] appInfoForBundleIdentifier:object];

    v8 = MEMORY[0x277D3FAD8];
    displayName = [v7 displayName];
    pinControllerDelegate = [(STScreenTimeReportController *)self pinControllerDelegate];
    v11 = [v8 preferenceSpecifierNamed:displayName target:pinControllerDelegate set:0 get:0 detail:0 cell:2 edit:0];

    v12 = PSBundlePathForPreferenceBundle();
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277D40000]];

    [v11 setObject:*MEMORY[0x277D4BE08] forKeyedSubscript:*MEMORY[0x277D3FF08]];
    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FE00]];
    [v11 setControllerLoadAction:sel_lazyLoadBundle_];
    [v11 setObject:v5 forKeyedSubscript:*MEMORY[0x277D4BE18]];
    [v11 setIdentifier:object];
    pinControllerDelegate2 = [(STScreenTimeReportController *)self pinControllerDelegate];
    v14 = [pinControllerDelegate2 selectSpecifier:v11];

    [v14 setParentController:self];
    WeakRetained = objc_loadWeakRetained(&self->_rootController);
    [v14 setRootController:WeakRetained];

    [v14 setSpecifier:v11];
    [(STScreenTimeReportController *)self showController:v14 animate:1];
  }
}

- (void)_didTapEditLimitLink:(id)link
{
  linkCopy = link;
  viewIfLoaded = [(STScreenTimeReportController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    object = [linkCopy object];
    coordinator = [(STScreenTimeReportController *)self coordinator];
    timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
    viewModel = [timeAllowancesCoordinator viewModel];
    allowancesByIdentifier = [viewModel allowancesByIdentifier];
    v11 = [allowancesByIdentifier objectForKeyedSubscript:object];

    [(STScreenTimeReportController *)self _editLimit:v11 isNewLimit:0];
  }
}

- (void)_didPressAddApplicationLimitButton:(id)button
{
  v13[1] = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  viewIfLoaded = [(STScreenTimeReportController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    object = [buttonCopy object];
    coordinator = [(STScreenTimeReportController *)self coordinator];
    isPasscodeEnabled = [coordinator isPasscodeEnabled];
    v10 = object;
    v11 = objc_opt_new();
    [v11 setBehaviorType:isPasscodeEnabled];
    if (v10)
    {
      v13[0] = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      [v11 setBundleIdentifiers:v12];
    }

    [(STScreenTimeReportController *)self _editLimit:v11 isNewLimit:1];
  }
}

- (void)_didPressAddCategoryLimitButton:(id)button
{
  v13[1] = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  viewIfLoaded = [(STScreenTimeReportController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    object = [buttonCopy object];
    coordinator = [(STScreenTimeReportController *)self coordinator];
    isPasscodeEnabled = [coordinator isPasscodeEnabled];
    v10 = object;
    v11 = objc_opt_new();
    [v11 setBehaviorType:isPasscodeEnabled];
    if (v10)
    {
      v13[0] = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      [v11 setCategoryIdentifiers:v12];
    }

    [(STScreenTimeReportController *)self _editLimit:v11 isNewLimit:1];
  }
}

- (void)_didPressAddWebDomainLimitButton:(id)button
{
  v13[1] = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  viewIfLoaded = [(STScreenTimeReportController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    object = [buttonCopy object];
    coordinator = [(STScreenTimeReportController *)self coordinator];
    isPasscodeEnabled = [coordinator isPasscodeEnabled];
    v10 = object;
    v11 = objc_opt_new();
    [v11 setBehaviorType:isPasscodeEnabled];
    if (v10)
    {
      v13[0] = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      [v11 setWebDomains:v12];
    }

    [(STScreenTimeReportController *)self _editLimit:v11 isNewLimit:1];
  }
}

- (void)_didTapBarMark:(id)mark
{
  v4 = MEMORY[0x277CBEAA8];
  markCopy = mark;
  v6 = [v4 alloc];
  object = [markCopy object];

  [object doubleValue];
  v14 = [v6 initWithTimeIntervalSinceReferenceDate:?];

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar components:512 fromDate:v14];
  weekday = [v9 weekday];

  coordinator = [(STScreenTimeReportController *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
  viewModel = [usageDetailsCoordinator viewModel];

  [viewModel setSelectedDay:weekday];
}

- (void)_editLimit:(id)limit isNewLimit:(BOOL)newLimit
{
  newLimitCopy = newLimit;
  limitCopy = limit;
  coordinator = [(STScreenTimeReportController *)self coordinator];
  pinControllerDelegate = [(STScreenTimeReportController *)self pinControllerDelegate];
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    alertControllerForFeatureNotAvailable = [MEMORY[0x277D75110] alertControllerForFeatureNotAvailable];
    [(STScreenTimeReportController *)self presentViewController:alertControllerForFeatureNotAvailable animated:1 completion:0];
  }

  else
  {
    if ([coordinator isPasscodeEnabled] && (objc_msgSend(coordinator, "hasAlreadyEnteredPINForSession") & 1) == 0)
    {
      v16 = MEMORY[0x277D3FAD8];
      v17 = objc_opt_new();
      uUIDString = [v17 UUIDString];
      v10 = [v16 preferenceSpecifierNamed:uUIDString target:pinControllerDelegate set:0 get:0 detail:0 cell:13 edit:objc_opt_class()];

      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      [(STAllowanceDetailListController *)v10 setObject:v20 forKeyedSubscript:*MEMORY[0x277D400B8]];

      [(STAllowanceDetailListController *)v10 setObject:&unk_28769D028 forKeyedSubscript:*MEMORY[0x277D401C0]];
      [(STAllowanceDetailListController *)v10 setObject:pinControllerDelegate forKeyedSubscript:*MEMORY[0x277D401B8]];
      [(STAllowanceDetailListController *)v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __54__STScreenTimeReportController__editLimit_isNewLimit___block_invoke;
      aBlock[3] = &unk_279B7CF48;
      aBlock[4] = self;
      v27 = limitCopy;
      v28 = newLimitCopy;
      v21 = _Block_copy(aBlock);
      [(STAllowanceDetailListController *)v10 setObject:v21 forKeyedSubscript:0x287675888];

      v22 = objc_opt_new();
      [v22 setParentController:pinControllerDelegate];
      WeakRetained = objc_loadWeakRetained(&self->_rootController);
      [v22 setRootController:WeakRetained];

      [v22 setSpecifier:v10];
      v24 = objc_opt_new();
      [v24 setPinDelegate:pinControllerDelegate];
      [v24 setParentController:v22];
      rootController = [v22 rootController];
      [v24 setRootController:rootController];

      [v24 setSpecifier:v10];
      [pinControllerDelegate showController:v22 animate:1];
    }

    else
    {
      v10 = [[STAllowanceDetailListController alloc] initWithCoordinator:coordinator];
      [(STAllowanceDetailListController *)v10 setAllowance:limitCopy];
      [(STAllowanceDetailListController *)v10 setDelegate:self];
      [(STAllowanceDetailListController *)v10 setIsSetupController:newLimitCopy];
      [(STAllowanceDetailListController *)v10 setCreatingNewAllowance:newLimitCopy];
      if (newLimitCopy)
      {
        v11 = objc_opt_new();
        [v11 setParentController:pinControllerDelegate];
        v12 = objc_loadWeakRetained(&self->_rootController);
        [v11 setRootController:v12];

        [v11 setSpecifier:self->_specifier];
        [(STAllowanceDetailListController *)v10 setParentController:v11];
        rootController2 = [v11 rootController];
        [(STAllowanceDetailListController *)v10 setRootController:rootController2];

        specifier = [v11 specifier];
        [(STAllowanceDetailListController *)v10 setSpecifier:specifier];

        [v11 showController:v10];
        [pinControllerDelegate showController:v11 animate:1];
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

- (void)debouncer:(id)debouncer didDebounce:(id)debounce
{
  bOOLValue = [debounce BOOLValue];

  [(STScreenTimeReportController *)self setDatePickerHidden:bOOLValue];
}

- (BOOL)isDatePickerHidden
{
  datePickerTopConstraint = [(STScreenTimeReportController *)self datePickerTopConstraint];
  if ([datePickerTopConstraint isActive])
  {
    isActive = 0;
  }

  else
  {
    datePickerBottomConstraint = [(STScreenTimeReportController *)self datePickerBottomConstraint];
    isActive = [datePickerBottomConstraint isActive];
  }

  return isActive;
}

- (void)setDatePickerHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  viewIfLoaded = [(STScreenTimeReportController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  if (window)
  {
    v6 = window;
    isDatePickerHidden = [(STScreenTimeReportController *)self isDatePickerHidden];

    if (isDatePickerHidden != hiddenCopy)
    {
      datePickerTopConstraint = [(STScreenTimeReportController *)self datePickerTopConstraint];
      [datePickerTopConstraint setActive:hiddenCopy ^ 1];

      datePickerBottomConstraint = [(STScreenTimeReportController *)self datePickerBottomConstraint];
      [datePickerBottomConstraint setActive:hiddenCopy];

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
      v12 = hiddenCopy;
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

- (void)allowanceDetailController:(id)controller didSaveAllowance:(id)allowance
{
  controllerCopy = controller;
  allowanceCopy = allowance;
  coordinator = [(STScreenTimeReportController *)self coordinator];
  timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__STScreenTimeReportController_allowanceDetailController_didSaveAllowance___block_invoke;
  v11[3] = &unk_279B7CBC8;
  v12 = controllerCopy;
  selfCopy = self;
  v10 = controllerCopy;
  [timeAllowancesCoordinator saveAllowance:allowanceCopy completionHandler:v11];
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

- (void)allowanceDetailController:(id)controller didDeleteAllowance:(id)allowance
{
  allowanceCopy = allowance;
  coordinator = [(STScreenTimeReportController *)self coordinator];
  timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__STScreenTimeReportController_allowanceDetailController_didDeleteAllowance___block_invoke;
  v8[3] = &unk_279B7CC18;
  v8[4] = self;
  [timeAllowancesCoordinator deleteAllowance:allowanceCopy completionHandler:v8];
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

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_specifier != specifierCopy)
  {
    v6 = specifierCopy;
    objc_storeStrong(&self->_specifier, specifier);
    specifierCopy = v6;
  }
}

- (void)showController:(id)controller animate:(BOOL)animate
{
  animateCopy = animate;
  controllerCopy = controller;
  if (animateCopy)
  {
    [(STScreenTimeReportController *)self showViewController:controllerCopy sender:self];
    v6 = controllerCopy;
  }

  else
  {
    navigationController = [(STScreenTimeReportController *)self navigationController];
    [navigationController pushViewController:controllerCopy animated:0];

    v6 = navigationController;
  }
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
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