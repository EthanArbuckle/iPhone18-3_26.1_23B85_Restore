@interface STCommunicationLimitsScreenTimeDetailListController
+ (void)showCompatibilityAlertIfNeededWithCoordinator:(id)coordinator presentingViewController:(id)controller okHandler:(id)handler;
- (id)_allowedCommunicationGroupFooterText:(id)text;
- (id)specifiers;
- (void)_didFinishEditingCommunicationLimit;
- (void)_updateAllowedCommunicationGroupFooterText;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willResignActive;
@end

@implementation STCommunicationLimitsScreenTimeDetailListController

- (void)viewDidLoad
{
  specifier = [(STCommunicationLimitsScreenTimeDetailListController *)self specifier];
  v4 = [specifier objectForKeyedSubscript:0x287675C48];

  contentPrivacyCoordinator = [v4 contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  communicationLimits = [viewModel communicationLimits];
  v8 = [communicationLimits copy];
  [(STCommunicationLimitsScreenTimeDetailListController *)self setCommunicationLimits:v8];

  v9 = +[STScreenTimeSettingsUIBundle bundle];
  v10 = [v9 localizedStringForKey:@"DuringScreenTimeTitle" value:&stru_28766E5A8 table:0];
  [(STCommunicationLimitsScreenTimeDetailListController *)self setTitle:v10];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STCommunicationLimitsScreenTimeDetailListController.viewDidLoad", buf, 2u);
  }

  v11.receiver = self;
  v11.super_class = STCommunicationLimitsScreenTimeDetailListController;
  [(STCommunicationLimitsScreenTimeDetailListController *)&v11 viewDidLoad];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(STCommunicationLimitsScreenTimeDetailListController *)self _didFinishEditingCommunicationLimit];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STCommunicationLimitsScreenTimeDetailListController.viewWillDisappear", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = STCommunicationLimitsScreenTimeDetailListController;
  [(STCommunicationLimitsScreenTimeDetailListController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)willResignActive
{
  [(STCommunicationLimitsScreenTimeDetailListController *)self _didFinishEditingCommunicationLimit];
  v3.receiver = self;
  v3.super_class = STCommunicationLimitsScreenTimeDetailListController;
  [(STCommunicationLimitsScreenTimeDetailListController *)&v3 willResignActive];
}

- (void)_didFinishEditingCommunicationLimit
{
  specifier = [(STCommunicationLimitsScreenTimeDetailListController *)self specifier];
  v25 = [specifier objectForKeyedSubscript:0x287675C48];

  communicationLimits = [(STCommunicationLimitsScreenTimeDetailListController *)self communicationLimits];
  allowedCommunicationGroupSpecifier = [(STCommunicationLimitsScreenTimeDetailListController *)self allowedCommunicationGroupSpecifier];
  v7 = [allowedCommunicationGroupSpecifier objectForKeyedSubscript:*MEMORY[0x277D40090]];

  allowContactsOnlySpecifier = [(STCommunicationLimitsScreenTimeDetailListController *)self allowContactsOnlySpecifier];

  if (v7 == allowContactsOnlySpecifier)
  {
    v10 = 2;
  }

  else
  {
    allowGroupsWithOneContactSpecifier = [(STCommunicationLimitsScreenTimeDetailListController *)self allowGroupsWithOneContactSpecifier];
    v10 = v7 == allowGroupsWithOneContactSpecifier;
  }

  [communicationLimits setScreenTimeCommunicationLimit:v10];
  screenTimeCommunicationLimit = [communicationLimits screenTimeCommunicationLimit];
  contentPrivacyCoordinator = [v25 contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  communicationLimits2 = [viewModel communicationLimits];
  screenTimeCommunicationLimit2 = [communicationLimits2 screenTimeCommunicationLimit];

  if (screenTimeCommunicationLimit != screenTimeCommunicationLimit2)
  {
    downtimeCommunicationLimit = [communicationLimits downtimeCommunicationLimit];
    screenTimeCommunicationLimit3 = [communicationLimits screenTimeCommunicationLimit];
    if (screenTimeCommunicationLimit3 > 1)
    {
      v18 = v25;
      if (screenTimeCommunicationLimit3 == 2)
      {
        if (downtimeCommunicationLimit != 2)
        {
          v19 = communicationLimits;
          v20 = 2;
          goto LABEL_18;
        }

LABEL_19:
        v22 = communicationLimits;
        v23 = 0;
LABEL_20:
        [v22 setContactsEditable:v23];
        goto LABEL_21;
      }

      if (screenTimeCommunicationLimit3 == 3)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"STCommunicationLimitsScreenTimeDetailListController.m" lineNumber:97 description:@"Unexpected general communication policy whitelisted contacts"];

LABEL_21:
        v18 = v25;
      }
    }

    else
    {
      v18 = v25;
      if (!screenTimeCommunicationLimit3)
      {
        if (downtimeCommunicationLimit)
        {
          [communicationLimits setDowntimeCommunicationLimit:0];
        }

        v22 = communicationLimits;
        v23 = 1;
        goto LABEL_20;
      }

      if (screenTimeCommunicationLimit3 == 1)
      {
        if (downtimeCommunicationLimit != 1)
        {
          v19 = communicationLimits;
          v20 = 1;
LABEL_18:
          [v19 setDowntimeCommunicationLimit:v20];
          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    contentPrivacyCoordinator2 = [v18 contentPrivacyCoordinator];
    [contentPrivacyCoordinator2 saveCommunicationLimits:communicationLimits completionHandler:0];
  }
}

+ (void)showCompatibilityAlertIfNeededWithCoordinator:(id)coordinator presentingViewController:(id)controller okHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  viewModel = [coordinator viewModel];
  v10 = [viewModel me];
  dsid = [v10 dsid];
  stringValue = [dsid stringValue];

  if ([viewModel shouldShowCompatibilityAlerts] && !+[STCommunicationLimits hasShownCompatibilityAlertForDSID:](STCommunicationLimits, "hasShownCompatibilityAlertForDSID:", stringValue))
  {
    v13 = +[STScreenTimeSettingsUIBundle bundle];
    if ([v10 isRemoteUser])
    {
      givenName = [v10 givenName];
      if (givenName)
      {
        v24 = [v13 localizedStringForKey:@"UpdateChildDevicesAlertTitleFormat" value:&stru_28766E5A8 table:0];
        currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
        v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v24 locale:currentLocale, givenName];
        v16 = [v13 localizedStringForKey:@"CommunicationLimitsChildCompatibilityAlertMessageFormat" value:&stru_28766E5A8 table:0];
        v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v16 locale:currentLocale, givenName];

        v18 = v25;
LABEL_9:
        v26 = v18;

        v21 = [MEMORY[0x277D75110] alertControllerWithTitle:v18 message:v17 preferredStyle:1];
        v22 = [v13 localizedStringForKey:@"ConfirmationButtonOK" value:&stru_28766E5A8 table:0];
        v23 = [MEMORY[0x277D750F8] actionWithTitle:v22 style:0 handler:handlerCopy];
        [v21 addAction:v23];
        [v21 setPreferredAction:v23];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __136__STCommunicationLimitsScreenTimeDetailListController_showCompatibilityAlertIfNeededWithCoordinator_presentingViewController_okHandler___block_invoke;
        v27[3] = &unk_279B7C998;
        v28 = stringValue;
        [controllerCopy presentViewController:v21 animated:1 completion:v27];

        goto LABEL_10;
      }

      v18 = [v13 localizedStringForKey:@"UpdateChildDevicesAlertTitle" value:&stru_28766E5A8 table:0];
      v20 = @"CommunicationLimitsChildCompatibilityAlertMessage";
      v19 = v13;
    }

    else
    {
      v18 = [v13 localizedStringForKey:@"UpdateOtherDevicesAlertTitle" value:&stru_28766E5A8 table:0];
      givenName = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"CommunicationLimitsCompatibilityAlertMessage"];
      v19 = v13;
      v20 = givenName;
    }

    v17 = [v19 localizedStringForKey:v20 value:&stru_28766E5A8 table:0];
    goto LABEL_9;
  }

LABEL_10:
}

- (id)specifiers
{
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v45 = *MEMORY[0x277D3FC48];
    v4 = objc_opt_new();
    v46 = +[STScreenTimeSettingsUIBundle bundle];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    specifier = [(STCommunicationLimitsScreenTimeDetailListController *)self specifier];
    v7 = [specifier objectForKeyedSubscript:0x287675C48];

    v44 = v7;
    viewModel = [v7 viewModel];
    v9 = [viewModel me];

    v10 = v9;
    if ([v10 isRemoteUser])
    {
      givenName = [v10 givenName];
      v12 = +[STScreenTimeSettingsUIBundle bundle];
      v13 = v12;
      if (givenName)
      {
        v14 = [v12 localizedStringForKey:@"CommunicationLimitsRemoteHeaderText" value:&stru_28766E5A8 table:0];

        v15 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v14, givenName];
        v13 = v14;
      }

      else
      {
        v15 = [v12 localizedStringForKey:@"CommunicationLimitsRemoteGenericHeaderText" value:&stru_28766E5A8 table:0];
      }
    }

    else
    {
      givenName = +[STScreenTimeSettingsUIBundle bundle];
      v15 = [givenName localizedStringForKey:@"CommunicationLimitsLocalHeaderText" value:&stru_28766E5A8 table:0];
    }

    v43 = v10;
    v42 = *MEMORY[0x277D3FF88];
    [emptyGroupSpecifier setObject:v15 forKeyedSubscript:?];

    [v4 addObject:emptyGroupSpecifier];
    v16 = MEMORY[0x277D3FAD8];
    v17 = [v46 localizedStringForKey:@"AllowedCommunicationSectionTitle" value:&stru_28766E5A8 table:0];
    v18 = [v16 groupSpecifierWithName:v17];

    v19 = MEMORY[0x277CBEC38];
    [v18 setObject:? forKeyedSubscript:?];
    [(STCommunicationLimitsScreenTimeDetailListController *)self setAllowedCommunicationGroupSpecifier:v18];
    [v4 addObject:v18];
    v20 = MEMORY[0x277D3FAD8];
    v21 = [v46 localizedStringForKey:@"AllowContactsOnlySpecifierName" value:&stru_28766E5A8 table:0];
    v22 = [v20 preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v23 = *MEMORY[0x277D3FF38];
    v24 = v19;
    [v22 setObject:v19 forKeyedSubscript:*MEMORY[0x277D3FF38]];
    [(STCommunicationLimitsScreenTimeDetailListController *)self setAllowContactsOnlySpecifier:v22];
    [v4 addObject:v22];
    v41 = [v46 localizedStringForKey:@"AllowGroupsWithOneContactSpecifierName" value:&stru_28766E5A8 table:0];
    v25 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    [v25 setObject:v24 forKeyedSubscript:*MEMORY[0x277D3FD80]];
    [(STCommunicationLimitsScreenTimeDetailListController *)self setAllowGroupsWithOneContactSpecifier:v25];
    [v4 addObject:v25];
    v26 = MEMORY[0x277D3FAD8];
    v27 = [v46 localizedStringForKey:@"AllowEveryoneSpecifierName" value:&stru_28766E5A8 table:0];
    v28 = [v26 preferenceSpecifierNamed:v27 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v28 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v23];
    [(STCommunicationLimitsScreenTimeDetailListController *)self setAllowEveryoneSpecifier:v28];
    [v4 addObject:v28];
    communicationLimits = [(STCommunicationLimitsScreenTimeDetailListController *)self communicationLimits];
    screenTimeCommunicationLimit = [communicationLimits screenTimeCommunicationLimit];

    v31 = MEMORY[0x277D40090];
    if (screenTimeCommunicationLimit > 1)
    {
      if (screenTimeCommunicationLimit == 3)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"STCommunicationLimitsScreenTimeDetailListController.m" lineNumber:191 description:@"Unexpected general communication policy whitelisted contacts"];

        goto LABEL_18;
      }

      if (screenTimeCommunicationLimit == 2)
      {
        v32 = *MEMORY[0x277D40090];
        v33 = v18;
        v34 = v22;
        goto LABEL_15;
      }
    }

    else
    {
      if (!screenTimeCommunicationLimit)
      {
        [v18 setObject:v28 forKeyedSubscript:*MEMORY[0x277D40090]];
        goto LABEL_18;
      }

      if (screenTimeCommunicationLimit == 1)
      {
        v32 = *MEMORY[0x277D40090];
        v33 = v18;
        v34 = v25;
LABEL_15:
        [v33 setObject:v34 forKeyedSubscript:v32];
      }
    }

LABEL_18:
    v36 = [v18 objectForKeyedSubscript:*v31];
    v37 = [(STCommunicationLimitsScreenTimeDetailListController *)self _allowedCommunicationGroupFooterText:v36];
    [v18 setObject:v37 forKeyedSubscript:v42];

    v38 = *(&self->super.super.super.super.super.isa + v45);
    *(&self->super.super.super.super.super.isa + v45) = v4;

    v3 = *(&self->super.super.super.super.super.isa + v45);
  }

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = STCommunicationLimitsScreenTimeDetailListController;
  pathCopy = path;
  [(STCommunicationLimitsScreenTimeDetailListController *)&v14 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(STCommunicationLimitsScreenTimeDetailListController *)self allowedCommunicationGroupSpecifier:v14.receiver];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D40090]];
  allowEveryoneSpecifier = [(STCommunicationLimitsScreenTimeDetailListController *)self allowEveryoneSpecifier];
  v10 = [(STCommunicationLimitsScreenTimeDetailListController *)self specifierAtIndexPath:pathCopy];

  if (v10 != allowEveryoneSpecifier && v8 != allowEveryoneSpecifier)
  {
    specifier = [(STCommunicationLimitsScreenTimeDetailListController *)self specifier];
    v12 = [specifier objectForKeyedSubscript:0x287675C48];

    [objc_opt_class() showCompatibilityAlertIfNeededWithCoordinator:v12 presentingViewController:self okHandler:0];
  }

  v13 = [(STCommunicationLimitsScreenTimeDetailListController *)self _allowedCommunicationGroupFooterText:v10];
  [v7 setObject:v13 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  [(STCommunicationLimitsScreenTimeDetailListController *)self _updateAllowedCommunicationGroupFooterText];
}

- (id)_allowedCommunicationGroupFooterText:(id)text
{
  textCopy = text;
  allowEveryoneSpecifier = [(STCommunicationLimitsScreenTimeDetailListController *)self allowEveryoneSpecifier];

  if (allowEveryoneSpecifier == textCopy)
  {
    v7 = +[STScreenTimeSettingsUIBundle bundle];
    v15 = [v7 localizedStringForKey:@"DuringScreenTimeEveryoneFooterText" value:&stru_28766E5A8 table:0];
  }

  else
  {
    specifier = [(STCommunicationLimitsScreenTimeDetailListController *)self specifier];
    v7 = [specifier objectForKeyedSubscript:0x287675C48];

    viewModel = [v7 viewModel];
    v9 = [viewModel me];

    if ([v9 isRemoteUser])
    {
      givenName = [v9 givenName];
      allowContactsOnlySpecifier = [(STCommunicationLimitsScreenTimeDetailListController *)self allowContactsOnlySpecifier];

      v12 = +[STScreenTimeSettingsUIBundle bundle];
      v13 = v12;
      if (givenName)
      {
        if (allowContactsOnlySpecifier == textCopy)
        {
          v14 = [v12 localizedStringForKey:@"DuringScreenTimeContactsOnlyRemoteFooterText" value:&stru_28766E5A8 table:0];

          [MEMORY[0x277CCACA8] localizedStringWithFormat:v14, givenName, v21];
        }

        else
        {
          v14 = [v12 localizedStringForKey:@"DuringScreenTimeGroupsWithOneContactRemoteFooterText" value:&stru_28766E5A8 table:0];

          [MEMORY[0x277CCACA8] localizedStringWithFormat:v14, givenName, givenName];
        }
        v15 = ;
        v13 = v14;
      }

      else
      {
        if (allowContactsOnlySpecifier == textCopy)
        {
          v19 = @"DuringScreenTimeContactsOnlyRemoteGenericFooterText";
        }

        else
        {
          v19 = @"DuringScreenTimeGroupsWithOneContactRemoteGenericFooterText";
        }

        v15 = [v12 localizedStringForKey:v19 value:&stru_28766E5A8 table:0];
      }
    }

    else
    {
      allowContactsOnlySpecifier2 = [(STCommunicationLimitsScreenTimeDetailListController *)self allowContactsOnlySpecifier];

      v17 = +[STScreenTimeSettingsUIBundle bundle];
      givenName = v17;
      if (allowContactsOnlySpecifier2 == textCopy)
      {
        v18 = @"DuringScreenTimeContactsOnlyLocalFooterText";
      }

      else
      {
        v18 = @"DuringScreenTimeGroupsWithOneContactLocalFooterText";
      }

      v15 = [v17 localizedStringForKey:v18 value:&stru_28766E5A8 table:0];
    }
  }

  return v15;
}

- (void)_updateAllowedCommunicationGroupFooterText
{
  allowedCommunicationGroupSpecifier = [(STCommunicationLimitsScreenTimeDetailListController *)self allowedCommunicationGroupSpecifier];
  [(STCommunicationLimitsScreenTimeDetailListController *)self reloadSpecifier:allowedCommunicationGroupSpecifier animated:1];
}

@end