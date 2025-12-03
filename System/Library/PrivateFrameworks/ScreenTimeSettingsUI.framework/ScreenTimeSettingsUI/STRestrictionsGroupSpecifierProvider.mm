@interface STRestrictionsGroupSpecifierProvider
- (STRestrictionsGroupSpecifierProvider)init;
- (id)_screenTimeManagementDetailText;
- (id)_screenTimeManagementSpecifier;
- (id)contentPrivacyDetailText;
- (void)_showScreenTimeManagementListController:(id)controller;
- (void)_updateScreenTimeManagementSpecifierWithOldLastPasscodeUseDate:(id)date newLastPasscodeUseDate:(id)useDate;
- (void)_updateScreenTimeManagementSpecifierWithWasRemotelyManagedUserWithPasscode:(BOOL)passcode to:(BOOL)to;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)setCoordinator:(id)coordinator;
@end

@implementation STRestrictionsGroupSpecifierProvider

- (STRestrictionsGroupSpecifierProvider)init
{
  v13.receiver = self;
  v13.super_class = STRestrictionsGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v13 init];
  if (v2)
  {
    v3 = +[STScreenTimeSettingsUIBundle bundle];
    mutableSpecifiers = [(STGroupSpecifierProvider *)v2 mutableSpecifiers];
    v5 = MEMORY[0x277D3FAD8];
    v6 = [v3 localizedStringForKey:@"RestrictionsGroupSpecifierName" value:&stru_28766E5A8 table:0];
    v7 = [v5 groupSpecifierWithName:v6];
    [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v7];

    v8 = [v3 localizedStringForKey:@"ContentPrivacySpecifierName" value:&stru_28766E5A8 table:0];
    v9 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:v2 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    [v9 setIdentifier:@"CONTENT_PRIVACY"];
    [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x277D40170]];
    [v9 setObject:@"CONTENT_PRIVACY" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    contentPrivacyDetailText = [(STRestrictionsGroupSpecifierProvider *)v2 contentPrivacyDetailText];
    [v9 setObject:contentPrivacyDetailText forKeyedSubscript:*MEMORY[0x277D40160]];

    [v9 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    [v9 setObject:@"com.apple.graphic-icon.content-and-privacy-restrictions" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
    if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
    {
      [v9 setButtonAction:sel_showStoreDemoAlert];
    }

    [(STRestrictionsGroupSpecifierProvider *)v2 setContentPrivacySpecifier:v9];
    [mutableSpecifiers addObject:v9];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v5.receiver = self;
  v5.super_class = STRestrictionsGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v5 invalidate];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STRestrictionsGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"viewModel.isLocalOrRemotelyManagedUser" context:"STRestrictionsGroupSpecifierProviderObservationContext"];
  if (_os_feature_enabled_impl())
  {
    [coordinator removeObserver:self forKeyPath:@"viewModel.isRemotelyManagedUserWithPasscode" context:"STRestrictionsGroupSpecifierProviderObservationContext"];
    [coordinator removeObserver:self forKeyPath:@"viewModel.lastPasscodeUseDevice.lastPasscodeUseDate" context:"STRestrictionsGroupSpecifierProviderObservationContext"];
  }

  v8.receiver = self;
  v8.super_class = STRestrictionsGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v8 setCoordinator:coordinatorCopy];
  coordinator2 = [(STRootGroupSpecifierProvider *)self coordinator];
  contentPrivacySpecifier = [(STRestrictionsGroupSpecifierProvider *)self contentPrivacySpecifier];
  [contentPrivacySpecifier setObject:coordinator2 forKeyedSubscript:0x287675C48];

  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.isLocalOrRemotelyManagedUser" options:4 context:"STRestrictionsGroupSpecifierProviderObservationContext"];
  if (_os_feature_enabled_impl())
  {
    [coordinatorCopy addObserver:self forKeyPath:@"viewModel.isRemotelyManagedUserWithPasscode" options:7 context:"STRestrictionsGroupSpecifierProviderObservationContext"];
    [coordinatorCopy addObserver:self forKeyPath:@"viewModel.lastPasscodeUseDevice.lastPasscodeUseDate" options:7 context:"STRestrictionsGroupSpecifierProviderObservationContext"];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == "STRestrictionsGroupSpecifierProviderObservationContext")
  {
    coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
    [(STRootGroupSpecifierProvider *)self coordinator];

    if ([pathCopy isEqualToString:@"viewModel.isLocalOrRemotelyManagedUser"])
    {
      mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
      v14 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

      coordinator2 = [(STRootGroupSpecifierProvider *)self coordinator];
      viewModel = [coordinator2 viewModel];
      v17 = [viewModel isLocalOrRemotelyManagedUser] ^ 1;
      if (v14 == 2)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      [(STGroupSpecifierProvider *)self setIsHidden:v18];
    }

    else if ([pathCopy isEqualToString:@"viewModel.isRemotelyManagedUserWithPasscode"])
    {
      coordinator2 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null = [MEMORY[0x277CBEB68] null];

      if (coordinator2 == null)
      {

        coordinator2 = 0;
      }

      viewModel = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null2 = [MEMORY[0x277CBEB68] null];

      if (viewModel == null2)
      {

        viewModel = 0;
      }

      -[STRestrictionsGroupSpecifierProvider _updateScreenTimeManagementSpecifierWithWasRemotelyManagedUserWithPasscode:to:](self, "_updateScreenTimeManagementSpecifierWithWasRemotelyManagedUserWithPasscode:to:", [coordinator2 BOOLValue], objc_msgSend(viewModel, "BOOLValue"));
    }

    else
    {
      if (![pathCopy isEqualToString:@"viewModel.lastPasscodeUseDevice.lastPasscodeUseDate"])
      {
LABEL_21:

        goto LABEL_22;
      }

      coordinator2 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null3 = [MEMORY[0x277CBEB68] null];

      if (coordinator2 == null3)
      {

        coordinator2 = 0;
      }

      viewModel = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null4 = [MEMORY[0x277CBEB68] null];

      if (viewModel == null4)
      {

        viewModel = 0;
      }

      [(STRestrictionsGroupSpecifierProvider *)self _updateScreenTimeManagementSpecifierWithOldLastPasscodeUseDate:coordinator2 newLastPasscodeUseDate:viewModel];
    }

    goto LABEL_21;
  }

  v23.receiver = self;
  v23.super_class = STRestrictionsGroupSpecifierProvider;
  [(STRestrictionsGroupSpecifierProvider *)&v23 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
LABEL_22:
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v8 = [viewModel isLocalOrRemotelyManagedUser] ^ 1;
  if (v6 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  [(STGroupSpecifierProvider *)self setIsHidden:v9];
}

- (id)contentPrivacyDetailText
{
  v2 = +[STScreenTimeSettingsUIBundle bundle];
  v3 = [v2 localizedStringForKey:@"AADC_ContentPrivacyDetailText" value:&stru_28766E5A8 table:0];

  return v3;
}

- (void)_updateScreenTimeManagementSpecifierWithWasRemotelyManagedUserWithPasscode:(BOOL)passcode to:(BOOL)to
{
  toCopy = to;
  passcodeCopy = passcode;
  if (!_os_feature_enabled_impl())
  {
    return;
  }

  mutableSpecifiers = [(STGroupSpecifierProvider *)self mutableSpecifiers];
  v7 = [mutableSpecifiers indexOfSpecifierWithID:@"SCREEN_TIME_MANAGEMENT"];
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v10 = [viewModel me];
  isRemoteUser = [v10 isRemoteUser];

  if (isRemoteUser)
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      _screenTimeManagementSpecifier = [(STRestrictionsGroupSpecifierProvider *)self _screenTimeManagementSpecifier];
      [mutableSpecifiers addObject:_screenTimeManagementSpecifier];

LABEL_10:
      v13 = mutableSpecifiers;
      goto LABEL_11;
    }

    v13 = mutableSpecifiers;
    if (passcodeCopy != toCopy)
    {
      v14 = [mutableSpecifiers objectAtIndexedSubscript:v7];
      _screenTimeManagementDetailText = [(STRestrictionsGroupSpecifierProvider *)self _screenTimeManagementDetailText];
      [v14 setObject:_screenTimeManagementDetailText forKeyedSubscript:*MEMORY[0x277D40160]];

      [(STGroupSpecifierProvider *)self reloadSpecifier:v14 animated:1];
      goto LABEL_10;
    }
  }

  else
  {
    v13 = mutableSpecifiers;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [mutableSpecifiers removeObjectAtIndex:v7];
      goto LABEL_10;
    }
  }

LABEL_11:
}

- (void)_updateScreenTimeManagementSpecifierWithOldLastPasscodeUseDate:(id)date newLastPasscodeUseDate:(id)useDate
{
  dateCopy = date;
  useDateCopy = useDate;
  v7 = _os_feature_enabled_impl();
  if (dateCopy != useDateCopy && v7 && ([dateCopy isEqualToDate:useDateCopy] & 1) == 0)
  {
    specifiers = [(STGroupSpecifierProvider *)self specifiers];
    specifiers2 = [(STGroupSpecifierProvider *)self specifiers];
    v10 = [specifiers2 indexOfSpecifierWithID:@"SCREEN_TIME_MANAGEMENT"];

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [specifiers objectAtIndexedSubscript:v10];
      _screenTimeManagementDetailText = [(STRestrictionsGroupSpecifierProvider *)self _screenTimeManagementDetailText];
      [v11 setObject:_screenTimeManagementDetailText forKeyedSubscript:*MEMORY[0x277D40160]];

      [(STGroupSpecifierProvider *)self reloadSpecifier:v11 animated:1];
    }
  }
}

- (id)_screenTimeManagementSpecifier
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"ScreenTimeManagementSpecifierName" value:&stru_28766E5A8 table:0];

  v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:2 edit:0];
  [v5 setIdentifier:@"SCREEN_TIME_MANAGEMENT"];
  [v5 setObject:v4 forKeyedSubscript:*MEMORY[0x277D40170]];
  [v5 setObject:@"SCREEN_TIME_MANAGEMENT" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
  _screenTimeManagementDetailText = [(STRestrictionsGroupSpecifierProvider *)self _screenTimeManagementDetailText];
  [v5 setObject:_screenTimeManagementDetailText forKeyedSubscript:*MEMORY[0x277D40160]];

  [v5 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
  [v5 setObject:@"com.apple.screen-time.screen-time-management" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    [v5 setButtonAction:sel_showStoreDemoAlert];
  }

  else
  {
    [v5 setControllerLoadAction:sel__showScreenTimeManagementListController_];
  }

  return v5;
}

- (id)_screenTimeManagementDetailText
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];

  if ([viewModel isRemotelyManagedUserWithPasscode])
  {
    lastPasscodeUseDevice = [viewModel lastPasscodeUseDevice];
    lastPasscodeUseDate = [lastPasscodeUseDevice lastPasscodeUseDate];

    if (lastPasscodeUseDate)
    {
      v6 = objc_opt_new();
      [v6 setTimeStyle:1];
      [v6 setDateStyle:2];
      [v6 setDoesRelativeDateFormatting:1];
      [v6 setFormattingContext:5];
      v7 = [v6 stringFromDate:lastPasscodeUseDate];
      v8 = +[STScreenTimeSettingsUIBundle bundle];
      v9 = [v8 localizedStringForKey:@"ScreenTimeManagementPasscodeUseDateFormat" value:&stru_28766E5A8 table:0];

      v10 = objc_alloc(MEMORY[0x277CCACA8]);
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      v12 = [v10 initWithFormat:v9 locale:currentLocale, v7];
    }

    else
    {
      v6 = +[STScreenTimeSettingsUIBundle bundle];
      v12 = [v6 localizedStringForKey:@"ScreenTimeManagementOnDetailText" value:&stru_28766E5A8 table:0];
    }
  }

  else
  {
    lastPasscodeUseDate = +[STScreenTimeSettingsUIBundle bundle];
    v12 = [lastPasscodeUseDate localizedStringForKey:@"ScreenTimeManagementOffDetailText" value:&stru_28766E5A8 table:0];
  }

  return v12;
}

- (void)_showScreenTimeManagementListController:(id)controller
{
  controllerCopy = controller;
  v8 = objc_opt_new();
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [v8 setCoordinator:coordinator];

  delegate = [(STGroupSpecifierProvider *)self delegate];
  [v8 setParentController:delegate];
  rootController = [delegate rootController];
  [v8 setRootController:rootController];

  [v8 setSpecifier:controllerCopy];
  [(STGroupSpecifierProvider *)self showController:v8 animated:1];
}

@end