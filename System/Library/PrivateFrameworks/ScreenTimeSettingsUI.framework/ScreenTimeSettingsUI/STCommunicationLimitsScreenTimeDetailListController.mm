@interface STCommunicationLimitsScreenTimeDetailListController
+ (void)showCompatibilityAlertIfNeededWithCoordinator:(id)a3 presentingViewController:(id)a4 okHandler:(id)a5;
- (id)_allowedCommunicationGroupFooterText:(id)a3;
- (id)specifiers;
- (void)_didFinishEditingCommunicationLimit;
- (void)_updateAllowedCommunicationGroupFooterText;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willResignActive;
@end

@implementation STCommunicationLimitsScreenTimeDetailListController

- (void)viewDidLoad
{
  v3 = [(STCommunicationLimitsScreenTimeDetailListController *)self specifier];
  v4 = [v3 objectForKeyedSubscript:0x287675C48];

  v5 = [v4 contentPrivacyCoordinator];
  v6 = [v5 viewModel];
  v7 = [v6 communicationLimits];
  v8 = [v7 copy];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(STCommunicationLimitsScreenTimeDetailListController *)self _didFinishEditingCommunicationLimit];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STCommunicationLimitsScreenTimeDetailListController.viewWillDisappear", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = STCommunicationLimitsScreenTimeDetailListController;
  [(STCommunicationLimitsScreenTimeDetailListController *)&v5 viewWillDisappear:v3];
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
  v4 = [(STCommunicationLimitsScreenTimeDetailListController *)self specifier];
  v25 = [v4 objectForKeyedSubscript:0x287675C48];

  v5 = [(STCommunicationLimitsScreenTimeDetailListController *)self communicationLimits];
  v6 = [(STCommunicationLimitsScreenTimeDetailListController *)self allowedCommunicationGroupSpecifier];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D40090]];

  v8 = [(STCommunicationLimitsScreenTimeDetailListController *)self allowContactsOnlySpecifier];

  if (v7 == v8)
  {
    v10 = 2;
  }

  else
  {
    v9 = [(STCommunicationLimitsScreenTimeDetailListController *)self allowGroupsWithOneContactSpecifier];
    v10 = v7 == v9;
  }

  [v5 setScreenTimeCommunicationLimit:v10];
  v11 = [v5 screenTimeCommunicationLimit];
  v12 = [v25 contentPrivacyCoordinator];
  v13 = [v12 viewModel];
  v14 = [v13 communicationLimits];
  v15 = [v14 screenTimeCommunicationLimit];

  if (v11 != v15)
  {
    v16 = [v5 downtimeCommunicationLimit];
    v17 = [v5 screenTimeCommunicationLimit];
    if (v17 > 1)
    {
      v18 = v25;
      if (v17 == 2)
      {
        if (v16 != 2)
        {
          v19 = v5;
          v20 = 2;
          goto LABEL_18;
        }

LABEL_19:
        v22 = v5;
        v23 = 0;
LABEL_20:
        [v22 setContactsEditable:v23];
        goto LABEL_21;
      }

      if (v17 == 3)
      {
        v21 = [MEMORY[0x277CCA890] currentHandler];
        [v21 handleFailureInMethod:a2 object:self file:@"STCommunicationLimitsScreenTimeDetailListController.m" lineNumber:97 description:@"Unexpected general communication policy whitelisted contacts"];

LABEL_21:
        v18 = v25;
      }
    }

    else
    {
      v18 = v25;
      if (!v17)
      {
        if (v16)
        {
          [v5 setDowntimeCommunicationLimit:0];
        }

        v22 = v5;
        v23 = 1;
        goto LABEL_20;
      }

      if (v17 == 1)
      {
        if (v16 != 1)
        {
          v19 = v5;
          v20 = 1;
LABEL_18:
          [v19 setDowntimeCommunicationLimit:v20];
          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    v24 = [v18 contentPrivacyCoordinator];
    [v24 saveCommunicationLimits:v5 completionHandler:0];
  }
}

+ (void)showCompatibilityAlertIfNeededWithCoordinator:(id)a3 presentingViewController:(id)a4 okHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 viewModel];
  v10 = [v9 me];
  v11 = [v10 dsid];
  v12 = [v11 stringValue];

  if ([v9 shouldShowCompatibilityAlerts] && !+[STCommunicationLimits hasShownCompatibilityAlertForDSID:](STCommunicationLimits, "hasShownCompatibilityAlertForDSID:", v12))
  {
    v13 = +[STScreenTimeSettingsUIBundle bundle];
    if ([v10 isRemoteUser])
    {
      v14 = [v10 givenName];
      if (v14)
      {
        v24 = [v13 localizedStringForKey:@"UpdateChildDevicesAlertTitleFormat" value:&stru_28766E5A8 table:0];
        v15 = [MEMORY[0x277CBEAF8] currentLocale];
        v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v24 locale:v15, v14];
        v16 = [v13 localizedStringForKey:@"CommunicationLimitsChildCompatibilityAlertMessageFormat" value:&stru_28766E5A8 table:0];
        v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v16 locale:v15, v14];

        v18 = v25;
LABEL_9:
        v26 = v18;

        v21 = [MEMORY[0x277D75110] alertControllerWithTitle:v18 message:v17 preferredStyle:1];
        v22 = [v13 localizedStringForKey:@"ConfirmationButtonOK" value:&stru_28766E5A8 table:0];
        v23 = [MEMORY[0x277D750F8] actionWithTitle:v22 style:0 handler:v8];
        [v21 addAction:v23];
        [v21 setPreferredAction:v23];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __136__STCommunicationLimitsScreenTimeDetailListController_showCompatibilityAlertIfNeededWithCoordinator_presentingViewController_okHandler___block_invoke;
        v27[3] = &unk_279B7C998;
        v28 = v12;
        [v7 presentViewController:v21 animated:1 completion:v27];

        goto LABEL_10;
      }

      v18 = [v13 localizedStringForKey:@"UpdateChildDevicesAlertTitle" value:&stru_28766E5A8 table:0];
      v20 = @"CommunicationLimitsChildCompatibilityAlertMessage";
      v19 = v13;
    }

    else
    {
      v18 = [v13 localizedStringForKey:@"UpdateOtherDevicesAlertTitle" value:&stru_28766E5A8 table:0];
      v14 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"CommunicationLimitsCompatibilityAlertMessage"];
      v19 = v13;
      v20 = v14;
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
    v5 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v6 = [(STCommunicationLimitsScreenTimeDetailListController *)self specifier];
    v7 = [v6 objectForKeyedSubscript:0x287675C48];

    v44 = v7;
    v8 = [v7 viewModel];
    v9 = [v8 me];

    v10 = v9;
    if ([v10 isRemoteUser])
    {
      v11 = [v10 givenName];
      v12 = +[STScreenTimeSettingsUIBundle bundle];
      v13 = v12;
      if (v11)
      {
        v14 = [v12 localizedStringForKey:@"CommunicationLimitsRemoteHeaderText" value:&stru_28766E5A8 table:0];

        v15 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v14, v11];
        v13 = v14;
      }

      else
      {
        v15 = [v12 localizedStringForKey:@"CommunicationLimitsRemoteGenericHeaderText" value:&stru_28766E5A8 table:0];
      }
    }

    else
    {
      v11 = +[STScreenTimeSettingsUIBundle bundle];
      v15 = [v11 localizedStringForKey:@"CommunicationLimitsLocalHeaderText" value:&stru_28766E5A8 table:0];
    }

    v43 = v10;
    v42 = *MEMORY[0x277D3FF88];
    [v5 setObject:v15 forKeyedSubscript:?];

    [v4 addObject:v5];
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
    v29 = [(STCommunicationLimitsScreenTimeDetailListController *)self communicationLimits];
    v30 = [v29 screenTimeCommunicationLimit];

    v31 = MEMORY[0x277D40090];
    if (v30 > 1)
    {
      if (v30 == 3)
      {
        v35 = [MEMORY[0x277CCA890] currentHandler];
        [v35 handleFailureInMethod:a2 object:self file:@"STCommunicationLimitsScreenTimeDetailListController.m" lineNumber:191 description:@"Unexpected general communication policy whitelisted contacts"];

        goto LABEL_18;
      }

      if (v30 == 2)
      {
        v32 = *MEMORY[0x277D40090];
        v33 = v18;
        v34 = v22;
        goto LABEL_15;
      }
    }

    else
    {
      if (!v30)
      {
        [v18 setObject:v28 forKeyedSubscript:*MEMORY[0x277D40090]];
        goto LABEL_18;
      }

      if (v30 == 1)
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = STCommunicationLimitsScreenTimeDetailListController;
  v6 = a4;
  [(STCommunicationLimitsScreenTimeDetailListController *)&v14 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(STCommunicationLimitsScreenTimeDetailListController *)self allowedCommunicationGroupSpecifier:v14.receiver];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D40090]];
  v9 = [(STCommunicationLimitsScreenTimeDetailListController *)self allowEveryoneSpecifier];
  v10 = [(STCommunicationLimitsScreenTimeDetailListController *)self specifierAtIndexPath:v6];

  if (v10 != v9 && v8 != v9)
  {
    v11 = [(STCommunicationLimitsScreenTimeDetailListController *)self specifier];
    v12 = [v11 objectForKeyedSubscript:0x287675C48];

    [objc_opt_class() showCompatibilityAlertIfNeededWithCoordinator:v12 presentingViewController:self okHandler:0];
  }

  v13 = [(STCommunicationLimitsScreenTimeDetailListController *)self _allowedCommunicationGroupFooterText:v10];
  [v7 setObject:v13 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  [(STCommunicationLimitsScreenTimeDetailListController *)self _updateAllowedCommunicationGroupFooterText];
}

- (id)_allowedCommunicationGroupFooterText:(id)a3
{
  v4 = a3;
  v5 = [(STCommunicationLimitsScreenTimeDetailListController *)self allowEveryoneSpecifier];

  if (v5 == v4)
  {
    v7 = +[STScreenTimeSettingsUIBundle bundle];
    v15 = [v7 localizedStringForKey:@"DuringScreenTimeEveryoneFooterText" value:&stru_28766E5A8 table:0];
  }

  else
  {
    v6 = [(STCommunicationLimitsScreenTimeDetailListController *)self specifier];
    v7 = [v6 objectForKeyedSubscript:0x287675C48];

    v8 = [v7 viewModel];
    v9 = [v8 me];

    if ([v9 isRemoteUser])
    {
      v10 = [v9 givenName];
      v11 = [(STCommunicationLimitsScreenTimeDetailListController *)self allowContactsOnlySpecifier];

      v12 = +[STScreenTimeSettingsUIBundle bundle];
      v13 = v12;
      if (v10)
      {
        if (v11 == v4)
        {
          v14 = [v12 localizedStringForKey:@"DuringScreenTimeContactsOnlyRemoteFooterText" value:&stru_28766E5A8 table:0];

          [MEMORY[0x277CCACA8] localizedStringWithFormat:v14, v10, v21];
        }

        else
        {
          v14 = [v12 localizedStringForKey:@"DuringScreenTimeGroupsWithOneContactRemoteFooterText" value:&stru_28766E5A8 table:0];

          [MEMORY[0x277CCACA8] localizedStringWithFormat:v14, v10, v10];
        }
        v15 = ;
        v13 = v14;
      }

      else
      {
        if (v11 == v4)
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
      v16 = [(STCommunicationLimitsScreenTimeDetailListController *)self allowContactsOnlySpecifier];

      v17 = +[STScreenTimeSettingsUIBundle bundle];
      v10 = v17;
      if (v16 == v4)
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
  v3 = [(STCommunicationLimitsScreenTimeDetailListController *)self allowedCommunicationGroupSpecifier];
  [(STCommunicationLimitsScreenTimeDetailListController *)self reloadSpecifier:v3 animated:1];
}

@end