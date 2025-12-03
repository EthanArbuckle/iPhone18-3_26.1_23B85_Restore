@interface STCommunicationGroupSpecifierProvider
- (BOOL)showDemoModeAlertIfNeeded;
- (STCommunicationGroupSpecifierProvider)init;
- (id)_communicationLimitsDetailText;
- (id)_communicationSafetyDetailText;
- (void)_communicationLimitsDidChangeFrom:(id)from to:(id)to;
- (void)_communicationSafetyDetailText;
- (void)_communicationSafetyDidChange;
- (void)_isRemoteUserDidChangeFrom:(BOOL)from to:(BOOL)to;
- (void)_resetCommunicationLimitsDetailText;
- (void)_showCommunicationLimitsViewController:(id)controller;
- (void)_userTypeDidChange:(unint64_t)change;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)setCoordinator:(id)coordinator;
- (void)showCommunicationSafetyViewController:(id)controller;
@end

@implementation STCommunicationGroupSpecifierProvider

- (STCommunicationGroupSpecifierProvider)init
{
  v23.receiver = self;
  v23.super_class = STCommunicationGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v23 init];
  if (v2)
  {
    v3 = +[STScreenTimeSettingsUIBundle bundle];
    mutableSpecifiers = [(STGroupSpecifierProvider *)v2 mutableSpecifiers];
    v4 = MEMORY[0x277D3FAD8];
    v5 = [v3 localizedStringForKey:@"CommunicationGroupSpecifierName" value:&stru_28766E5A8 table:0];
    v6 = [v4 groupSpecifierWithName:v5];
    [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v6];

    v21 = v3;
    v22 = [v3 localizedStringForKey:@"CommunicationLimitsSpecifierName" value:&stru_28766E5A8 table:0];
    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v22 target:v2 set:0 get:0 detail:0 cell:2 edit:0];
    [v7 setIdentifier:@"COMMUNICATION_LIMITS"];
    v20 = *MEMORY[0x277D40170];
    [v7 setObject:v22 forKeyedSubscript:?];
    _communicationLimitsDetailText = [(STCommunicationGroupSpecifierProvider *)v2 _communicationLimitsDetailText];
    v9 = *MEMORY[0x277D40160];
    [v7 setObject:_communicationLimitsDetailText forKeyedSubscript:*MEMORY[0x277D40160]];

    v10 = objc_opt_class();
    v11 = *MEMORY[0x277D3FE58];
    [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FE58]];
    v12 = *MEMORY[0x277D40020];
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    v13 = *MEMORY[0x277D3FFD8];
    [v7 setObject:@"com.apple.graphic-icon.communication-limits" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
    [v7 setControllerLoadAction:sel__showCommunicationLimitsViewController_];
    [(STCommunicationGroupSpecifierProvider *)v2 setCommunicationLimitsSpecifier:v7];
    [mutableSpecifiers addObject:v7];
    v14 = [v3 localizedStringForKey:@"CommunicationSafetyTitle" value:&stru_28766E5A8 table:0];
    _communicationSafetyDetailText = [(STCommunicationGroupSpecifierProvider *)v2 _communicationSafetyDetailText];
    v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:v2 set:0 get:0 detail:0 cell:2 edit:0];
    [v16 setIdentifier:@"COMMUNICATION_SAFETY"];
    [v16 setObject:v14 forKeyedSubscript:v20];
    [v16 setObject:_communicationSafetyDetailText forKeyedSubscript:v9];
    [v16 setObject:@"COMMUNICATION_SAFETY" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    [v16 setObject:objc_opt_class() forKeyedSubscript:v11];
    [v16 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v12];
    [v16 setObject:@"com.apple.graphic-icon.communication-safety" forKeyedSubscript:v13];
    [v16 setControllerLoadAction:sel_showCommunicationSafetyViewController_];
    [(STCommunicationGroupSpecifierProvider *)v2 setCommunicationSafetySpecifier:v16];
    [mutableSpecifiers addObject:v16];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v5.receiver = self;
  v5.super_class = STCommunicationGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v5 invalidate];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STCommunicationGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"viewModel.isLocalOrRemotelyManagedUser" context:"STCommunicationGroupSpecifierProviderObservationContext"];
  [coordinator removeObserver:self forKeyPath:@"viewModel.me.isRemoteUser"];
  [coordinator removeObserver:self forKeyPath:@"viewModel.me.type"];
  [coordinator removeObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits"];
  [coordinator removeObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyReceivingRestricted"];
  [coordinator removeObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetySendingRestricted"];
  [coordinator removeObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyNotificationEnabled"];
  [coordinator removeObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyAnalyticsEnabled"];
  v12.receiver = self;
  v12.super_class = STCommunicationGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v12 setCoordinator:coordinatorCopy];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  communicationLimits = [viewModel communicationLimits];
  contentPrivacyCoordinator2 = [coordinatorCopy contentPrivacyCoordinator];
  viewModel2 = [contentPrivacyCoordinator2 viewModel];
  communicationLimits2 = [viewModel2 communicationLimits];
  [(STCommunicationGroupSpecifierProvider *)self _communicationLimitsDidChangeFrom:communicationLimits to:communicationLimits2];

  [(STCommunicationGroupSpecifierProvider *)self _communicationSafetyDidChange];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.isLocalOrRemotelyManagedUser" options:4 context:"STCommunicationGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.me.isRemoteUser" options:7 context:"STCommunicationGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.me.type" options:5 context:"STCommunicationGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits" options:3 context:"STCommunicationGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyReceivingRestricted" options:5 context:"STCommunicationGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetySendingRestricted" options:5 context:"STCommunicationGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyNotificationEnabled" options:5 context:"STCommunicationGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyAnalyticsEnabled" options:5 context:"STCommunicationGroupSpecifierProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == "STCommunicationGroupSpecifierProviderObservationContext")
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v13 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

    coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
    if ([pathCopy isEqualToString:@"viewModel.isLocalOrRemotelyManagedUser"])
    {
      coordinator2 = [(STRootGroupSpecifierProvider *)self coordinator];
      viewModel = [coordinator2 viewModel];
      if ([viewModel isLocalOrRemotelyManagedUser])
      {
        mutableSpecifiers = [(STGroupSpecifierProvider *)self mutableSpecifiers];
        if ([mutableSpecifiers count])
        {
          v18 = v13 == 2;
        }

        else
        {
          v18 = 1;
        }

        v19 = v18;
        [(STGroupSpecifierProvider *)self setIsHidden:v19];
      }

      else
      {
        [(STGroupSpecifierProvider *)self setIsHidden:1];
      }
    }

    else
    {
      if ([pathCopy isEqualToString:@"viewModel.me.type"])
      {
        v20 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        null = [MEMORY[0x277CBEB68] null];

        if (v20 == null)
        {

          v20 = 0;
        }

        -[STCommunicationGroupSpecifierProvider _userTypeDidChange:](self, "_userTypeDidChange:", [v20 unsignedIntegerValue]);
      }

      else
      {
        if ([pathCopy isEqualToString:@"viewModel.me.isRemoteUser"])
        {
          v20 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
          null2 = [MEMORY[0x277CBEB68] null];

          if (v20 == null2)
          {

            v20 = 0;
          }

          v23 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          null3 = [MEMORY[0x277CBEB68] null];

          if (v23 == null3)
          {

            v23 = 0;
          }

          -[STCommunicationGroupSpecifierProvider _isRemoteUserDidChangeFrom:to:](self, "_isRemoteUserDidChangeFrom:to:", [v20 BOOLValue], objc_msgSend(v23, "BOOLValue"));
        }

        else
        {
          if (![pathCopy isEqualToString:@"contentPrivacyCoordinator.viewModel.communicationLimits"])
          {
            if (([pathCopy isEqualToString:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyReceivingRestricted"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"communicationSafetyCoordinator.viewModel.isCommunicationSafetySendingRestricted") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"communicationSafetyCoordinator.viewModel.isCommunicationSafetyNotificationEnabled") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"communicationSafetyCoordinator.viewModel.isCommunicationSafetyAnalyticsEnabled"))
            {
              [(STCommunicationGroupSpecifierProvider *)self _communicationSafetyDidChange];
            }

            goto LABEL_32;
          }

          v20 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
          null4 = [MEMORY[0x277CBEB68] null];

          if (v20 == null4)
          {

            v20 = 0;
          }

          v23 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          null5 = [MEMORY[0x277CBEB68] null];

          if (v23 == null5)
          {

            v23 = 0;
          }

          [(STCommunicationGroupSpecifierProvider *)self _communicationLimitsDidChangeFrom:v20 to:v23];
        }
      }
    }

LABEL_32:

    goto LABEL_33;
  }

  v27.receiver = self;
  v27.super_class = STCommunicationGroupSpecifierProvider;
  [(STCommunicationGroupSpecifierProvider *)&v27 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
LABEL_33:
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  if ([viewModel isLocalOrRemotelyManagedUser])
  {
    mutableSpecifiers = [(STGroupSpecifierProvider *)self mutableSpecifiers];
    if ([mutableSpecifiers count])
    {
      v9 = v6 == 2;
    }

    else
    {
      v9 = 1;
    }

    v10 = v9;
    [(STGroupSpecifierProvider *)self setIsHidden:v10];
  }

  else
  {
    [(STGroupSpecifierProvider *)self setIsHidden:1];
  }
}

- (void)_userTypeDidChange:(unint64_t)change
{
  if (!change)
  {
    mutableSpecifiers = [(STGroupSpecifierProvider *)self mutableSpecifiers];
    communicationLimitsSpecifier = [(STCommunicationGroupSpecifierProvider *)self communicationLimitsSpecifier];
    [mutableSpecifiers removeObject:communicationLimitsSpecifier];

    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v8 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

    coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
    viewModel = [coordinator viewModel];
    if ([viewModel isLocalOrRemotelyManagedUser])
    {
      mutableSpecifiers2 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
      if ([mutableSpecifiers2 count])
      {
        v11 = v8 == 2;
      }

      else
      {
        v11 = 1;
      }

      v12 = v11;
      [(STGroupSpecifierProvider *)self setIsHidden:v12];
    }

    else
    {
      [(STGroupSpecifierProvider *)self setIsHidden:1];
    }
  }
}

- (void)_isRemoteUserDidChangeFrom:(BOOL)from to:(BOOL)to
{
  if (from != to)
  {
    [(STCommunicationGroupSpecifierProvider *)self _resetCommunicationLimitsDetailText];
  }
}

- (void)_communicationLimitsDidChangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (fromCopy != toCopy && ([fromCopy isEqual:toCopy] & 1) == 0)
  {
    [(STCommunicationGroupSpecifierProvider *)self _resetCommunicationLimitsDetailText];
  }
}

- (void)_resetCommunicationLimitsDetailText
{
  communicationLimitsSpecifier = [(STCommunicationGroupSpecifierProvider *)self communicationLimitsSpecifier];
  _communicationLimitsDetailText = [(STCommunicationGroupSpecifierProvider *)self _communicationLimitsDetailText];
  [communicationLimitsSpecifier setObject:_communicationLimitsDetailText forKeyedSubscript:*MEMORY[0x277D40160]];

  [(STGroupSpecifierProvider *)self reloadSpecifier:communicationLimitsSpecifier animated:0];
}

- (id)_communicationLimitsDetailText
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  communicationLimits = [viewModel communicationLimits];

  if ([communicationLimits screenTimeCommunicationLimit] || objc_msgSend(communicationLimits, "downtimeCommunicationLimit"))
  {
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v7 = v6;
    v8 = @"CommunicationLimitsOnDetailText";
  }

  else if ([communicationLimits contactManagementState] || !objc_msgSend(communicationLimits, "contactsEditable"))
  {
    contactManagementState = [communicationLimits contactManagementState];
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v7 = v6;
    if (contactManagementState)
    {
      v8 = @"CommunicationLimitsManagingContactsDetailText";
    }

    else
    {
      v8 = @"CommunicationLimitsContactEditingDetailText";
    }
  }

  else
  {
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v7 = v6;
    v8 = @"AADC_CommunicationLimitsDetailText";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_28766E5A8 table:0];

  return v9;
}

- (void)_showCommunicationLimitsViewController:(id)controller
{
  controllerCopy = controller;
  if (![(STCommunicationGroupSpecifierProvider *)self showDemoModeAlertIfNeeded])
  {
    coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
    v5 = [[STCommunicationLimitsListController alloc] initWithRootViewModelCoordinator:coordinator];
    viewModel = [coordinator viewModel];
    v7 = [viewModel me];
    isRemoteUser = [v7 isRemoteUser];

    if (isRemoteUser)
    {
      [MEMORY[0x277CBDA28] requestAccountSyncWithOptions:1];
    }

    delegate = [(STGroupSpecifierProvider *)self delegate];
    [(STCommunicationLimitsListController *)v5 setParentController:delegate];
    rootController = [delegate rootController];
    [(STCommunicationLimitsListController *)v5 setRootController:rootController];

    [(STCommunicationLimitsListController *)v5 setSpecifier:controllerCopy];
    [(STGroupSpecifierProvider *)self showController:v5 animated:1];
  }
}

- (void)showCommunicationSafetyViewController:(id)controller
{
  controllerCopy = controller;
  if (![(STCommunicationGroupSpecifierProvider *)self showDemoModeAlertIfNeeded])
  {
    v4 = objc_opt_new();
    coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
    [v4 setCoordinator:coordinator];

    delegate = [(STGroupSpecifierProvider *)self delegate];
    [v4 setParentController:delegate];
    rootController = [delegate rootController];
    [v4 setRootController:rootController];

    [v4 setSpecifier:controllerCopy];
    [(STGroupSpecifierProvider *)self showController:v4 animated:1];
  }
}

- (void)_communicationSafetyDidChange
{
  communicationSafetySpecifier = [(STCommunicationGroupSpecifierProvider *)self communicationSafetySpecifier];
  v4 = communicationSafetySpecifier;
  if (communicationSafetySpecifier)
  {
    v5 = *MEMORY[0x277D40160];
    v6 = [communicationSafetySpecifier objectForKeyedSubscript:*MEMORY[0x277D40160]];
    _communicationSafetyDetailText = [(STCommunicationGroupSpecifierProvider *)self _communicationSafetyDetailText];
    if (([v6 isEqualToString:_communicationSafetyDetailText] & 1) == 0)
    {
      [v4 setObject:_communicationSafetyDetailText forKeyedSubscript:v5];
      v8 = +[STUILog communicationSafety];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(STCommunicationGroupSpecifierProvider *)v8 _communicationSafetyDidChange];
      }

      [(STGroupSpecifierProvider *)self reloadSpecifier:v4 animated:0];
    }
  }
}

- (id)_communicationSafetyDetailText
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  communicationSafetyCoordinator = [coordinator communicationSafetyCoordinator];
  viewModel = [communicationSafetyCoordinator viewModel];
  isCommunicationSafetySendingRestricted = [viewModel isCommunicationSafetySendingRestricted];

  v6 = +[STUILog communicationSafety];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(STCommunicationGroupSpecifierProvider *)isCommunicationSafetySendingRestricted _communicationSafetyDetailText];
  }

  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = v7;
  if (isCommunicationSafetySendingRestricted)
  {
    v9 = @"CommunicationSafetyOnSubtitle";
  }

  else
  {
    v9 = @"CommunicationSafetyOffSubtitle";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_28766E5A8 table:0];

  return v10;
}

- (BOOL)showDemoModeAlertIfNeeded
{
  isRunningInStoreDemoMode = [MEMORY[0x277D75128] isRunningInStoreDemoMode];
  if (isRunningInStoreDemoMode)
  {
    [(STGroupSpecifierProvider *)self showStoreDemoAlert];
  }

  return isRunningInStoreDemoMode;
}

- (void)_communicationSafetyDetailText
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self & 1];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_264BA2000, a2, OS_LOG_TYPE_DEBUG, "Top-level specifier fetching 'communication safety sending restricted' flag from viewmodel: %@", &v4, 0xCu);
}

@end