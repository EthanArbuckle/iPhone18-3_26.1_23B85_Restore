@interface STCommunicationLimitsListController
- (STCommunicationLimitsListController)initWithRootViewModelCoordinator:(id)a3;
- (id)_allowContactEditing:(id)a3;
- (id)_manageContacts:(id)a3;
- (id)_manageContactsGroupFooterText;
- (id)_statusPendingDetailText:(id)a3;
- (id)_totaliCloudContactsDetailText:(id)a3;
- (id)specifiers;
- (void)_communicationLimitsDidChangeFrom:(id)a3 to:(id)a4;
- (void)_didCancelSyncingiCloudContacts;
- (void)_didFinishSyncingiCloudContacts;
- (void)_didStartSyncingiCloudContacts;
- (void)_enableAllowContactEditingSwitch:(BOOL)a3;
- (void)_indicateiCloudContactsSyncingStatus;
- (void)_setAllowContactEditing:(id)a3 specifier:(id)a4;
- (void)_setManageContacts:(id)a3 specifier:(id)a4;
- (void)_startSyncingiCloudContacts;
- (void)_updateAllowContactEditing:(id)a3;
- (void)_updateAllowContactEditingWithAlertIfNeeded:(id)a3 forSpecifier:(id)a4;
- (void)_updateManageContactsGroupFooterView;
- (void)dealloc;
- (void)familyMemberContactsDidChange;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCoordinator:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation STCommunicationLimitsListController

- (STCommunicationLimitsListController)initWithRootViewModelCoordinator:(id)a3
{
  v32[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = STCommunicationLimitsListController;
  v5 = [(STPINListViewController *)&v28 initWithRootViewModelCoordinator:v4];
  v6 = [v4 contentPrivacyCoordinator];
  v7 = [v6 viewModel];
  v8 = [v7 communicationLimits];
  v9 = [v8 copy];
  communicationLimits = v5->_communicationLimits;
  v5->_communicationLimits = v9;

  v11 = [v4 viewModel];
  v12 = [v11 me];

  if (([v12 isManaged] & 1) != 0 || objc_msgSend(v12, "hasPasscode"))
  {
    v13 = [v12 altDSID];
    if (v13)
    {
      if (![v12 isRemoteUser])
      {
LABEL_14:

        goto LABEL_15;
      }

      v14 = [v12 givenName];
      v15 = v14;
      if (v14)
      {
        v32[0] = v14;
        v31[0] = @"member-first-name";
        v31[1] = @"member-dsid";
        v16 = [v12 dsid];
        v31[2] = @"member-altDSID";
        v32[1] = v16;
        v32[2] = v13;
        v17 = MEMORY[0x277CBEAC0];
        v18 = v32;
        v19 = v31;
        v20 = 3;
      }

      else
      {
        v21 = +[STUILog communication];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&dword_264BA2000, v21, OS_LOG_TYPE_DEFAULT, "User's givenName is nil.", v27, 2u);
        }

        v29[0] = @"member-dsid";
        v16 = [v12 dsid];
        v29[1] = @"member-altDSID";
        v30[0] = v16;
        v30[1] = v13;
        v17 = MEMORY[0x277CBEAC0];
        v18 = v30;
        v19 = v29;
        v20 = 2;
      }

      v22 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];

      v23 = [objc_alloc(MEMORY[0x277D08268]) initWithDictionaryRepresentation:v22];
      v24 = [objc_alloc(MEMORY[0x277CBDCA0]) initWithFamilyMember:v23 familyMemberContactsPresentation:v5];
      familyMemberContactsController = v5->_familyMemberContactsController;
      v5->_familyMemberContactsController = v24;
    }

    else
    {
      v15 = +[STUILog communication];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [(STCommunicationLimitsDowntimeDetailListController *)v15 viewDidLoad];
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  [v4 addObserver:v5 forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits" options:3 context:"KVOContextCommunicationLimitsListController"];

  return v5;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = STCommunicationLimitsListController;
  [(STCommunicationLimitsListController *)&v4 viewDidLoad];
  [(STCommunicationLimitsListController *)self _indicateiCloudContactsSyncingStatus];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STCommunicationLimitsListController.viewDidLoad", v3, 2u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = STCommunicationLimitsListController;
  [(STPINListViewController *)&v16 viewDidAppear:a3];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.ScreenTime/COMMUNICATION_LIMITS"];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = [v7 bundleURL];
  v9 = [v5 initWithKey:@"CommunicationLimitsSpecifierName" table:@"Localizable" locale:v6 bundleURL:v8];

  v10 = objc_alloc(MEMORY[0x277CCAEB8]);
  v11 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = +[STScreenTimeSettingsUIBundle bundle];
  v13 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"ScreenTimeControllerTitle" table:@"Localizable" locale:v11 bundleURL:v13];

  v17[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [(STCommunicationLimitsListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.screen-time" title:v9 localizedNavigationComponents:v15 deepLink:v4];
}

- (void)dealloc
{
  v3 = [(STPINListViewController *)self coordinator];
  [v3 removeObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits"];

  v4.receiver = self;
  v4.super_class = STCommunicationLimitsListController;
  [(STListViewController *)&v4 dealloc];
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STPINListViewController *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits"];
  v14.receiver = self;
  v14.super_class = STCommunicationLimitsListController;
  [(STPINListViewController *)&v14 setCoordinator:v4];
  v6 = [v5 contentPrivacyCoordinator];
  v7 = [v6 viewModel];
  v8 = [v7 communicationLimits];
  v9 = [v4 contentPrivacyCoordinator];
  v10 = [v9 viewModel];
  v11 = [v10 communicationLimits];
  [(STCommunicationLimitsListController *)self _communicationLimitsDidChangeFrom:v8 to:v11];

  [v4 addObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits" options:3 context:"KVOContextCommunicationLimitsListController"];
  v12 = [(STCommunicationLimitsListController *)self duringDowntimeSpecifier];
  [v12 setObject:v4 forKeyedSubscript:0x287675C48];

  v13 = [(STCommunicationLimitsListController *)self duringScreenTimeSpecifier];
  [v13 setObject:v4 forKeyedSubscript:0x287675C48];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  if (a6 == "KVOContextCommunicationLimitsListController")
  {
    v12 = a3;
    v13 = [(STPINListViewController *)self coordinator];
    v14 = [v12 isEqualToString:@"contentPrivacyCoordinator.viewModel.communicationLimits"];

    if (v14)
    {
      v15 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v16 = [MEMORY[0x277CBEB68] null];

      if (v15 == v16)
      {

        v15 = 0;
      }

      v17 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v18 = [MEMORY[0x277CBEB68] null];

      if (v17 == v18)
      {

        v17 = 0;
      }

      [(STCommunicationLimitsListController *)self _communicationLimitsDidChangeFrom:v15 to:v17];
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = STCommunicationLimitsListController;
    v11 = a3;
    [(STListViewController *)&v19 observeValueForKeyPath:v11 ofObject:a4 change:v10 context:a6];
  }
}

- (void)_communicationLimitsDidChangeFrom:(id)a3 to:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7 != v6 && ([v7 isEqualToCommunicationLimits:v6] & 1) == 0)
  {
    [(STCommunicationLimitsListController *)self setCommunicationLimits:v6];
    [(STCommunicationLimitsListController *)self reloadSpecifiers];
    if ([v7 contactManagementState] == 1 && objc_msgSend(v6, "contactManagementState") == 2)
    {
      [(STCommunicationLimitsListController *)self _indicateiCloudContactsSyncingStatus];
    }
  }
}

- (id)specifiers
{
  v3 = *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v3)
  {
    goto LABEL_65;
  }

  v102 = *MEMORY[0x277D3FC48];
  v5 = objc_opt_new();
  v6 = +[STScreenTimeSettingsUIBundle bundle];
  v113 = [(STPINListViewController *)self coordinator];
  v7 = [v113 viewModel];
  v8 = [v7 me];

  v9 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v10 = v8;
  v108 = v10;
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
      v10 = v108;
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

  v109 = *MEMORY[0x277D3FF88];
  [v9 setObject:v15 forKeyedSubscript:?];

  [v5 addObject:v9];
  v16 = MEMORY[0x277D3FAD8];
  v17 = [v6 localizedStringForKey:@"AllowedCommunicationSectionTitle" value:&stru_28766E5A8 table:0];
  v18 = [v16 groupSpecifierWithName:v17];

  v19 = [v10 givenName];
  v107 = v19;
  v112 = [v10 isRemoteUser];
  v101 = v9;
  if (v112)
  {
    if (v19)
    {
      v20 = v19;
      v21 = [v6 localizedStringForKey:@"DuringScreenTimeSpecifierRemoteFooterText" value:&stru_28766E5A8 table:0];
      v22 = objc_alloc(MEMORY[0x277CCACA8]);
      v23 = [MEMORY[0x277CBEAF8] currentLocale];
      v24 = [v22 initWithFormat:v21 locale:v23, v20];

      goto LABEL_14;
    }

    v25 = @"DuringScreenTimeSpecifierRemoteGenericFooterText";
  }

  else
  {
    v25 = @"DuringScreenTimeSpecifierLocalFooterText";
  }

  v24 = [v6 localizedStringForKey:v25 value:&stru_28766E5A8 table:0];
LABEL_14:
  v99 = v24;
  [v18 setObject:v24 forKeyedSubscript:v109];
  [v5 addObject:v18];
  v26 = [v6 localizedStringForKey:@"DuringScreenTimeSpecifierName" value:&stru_28766E5A8 table:0];
  v27 = MEMORY[0x277D3FAD8];
  v28 = objc_opt_class();
  v98 = v26;
  v29 = [v27 preferenceSpecifierNamed:v26 target:self set:0 get:0 detail:v28 cell:2 edit:objc_opt_class()];
  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  v104 = *MEMORY[0x277D400B8];
  [v29 setObject:v31 forKeyedSubscript:?];

  v103 = *MEMORY[0x277D401C0];
  [v29 setObject:&unk_28769D0B8 forKeyedSubscript:?];
  [v29 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:?];
  v32 = objc_opt_class();
  v105 = *MEMORY[0x277D3FE58];
  [v29 setObject:v32 forKeyedSubscript:?];
  [v29 setObject:v113 forKeyedSubscript:0x287675C48];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__STCommunicationLimitsListController_specifiers__block_invoke;
  aBlock[3] = &unk_279B7CC68;
  aBlock[4] = self;
  v97 = _Block_copy(aBlock);
  v33 = _Block_copy(v97);
  [v29 setObject:v33 forKeyedSubscript:0x287675888];

  v111 = [(STCommunicationLimitsListController *)self communicationLimits];
  v34 = [v111 screenTimeCommunicationLimit];
  v35 = 0;
  if (v34 <= 1)
  {
    if (v34)
    {
      if (v34 != 1)
      {
        goto LABEL_24;
      }

      v36 = @"AllowGroupsWithOneContactSpecifierName";
    }

    else
    {
      v36 = @"AllowEveryoneSpecifierName";
    }

    goto LABEL_23;
  }

  if (v34 == 2)
  {
    v36 = @"AllowContactsOnlySpecifierName";
LABEL_23:
    v35 = [v6 localizedStringForKey:v36 value:&stru_28766E5A8 table:0];
    goto LABEL_24;
  }

  if (v34 == 3)
  {
    v37 = [MEMORY[0x277CCA890] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"STCommunicationLimitsListController.m" lineNumber:223 description:@"Unexpected general communication policy whitelisted contacts"];

    v35 = 0;
  }

LABEL_24:
  v38 = *MEMORY[0x277D40160];
  v96 = v35;
  [v29 setObject:v35 forKeyedSubscript:*MEMORY[0x277D40160]];
  [(STCommunicationLimitsListController *)self setDuringScreenTimeSpecifier:v29];
  [v5 addObject:v29];
  v39 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v100 = v18;
  if (v112)
  {
    if (v107)
    {
      [v6 localizedStringForKey:@"DuringDowntimeRemoteFooterText" value:&stru_28766E5A8 table:0];
      v40 = v5;
      v42 = v41 = v39;
      v43 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v42, v107];

      v39 = v41;
      v5 = v40;
      goto LABEL_30;
    }

    v44 = @"DuringDowntimeRemoteGenericFooterText";
    v45 = v6;
  }

  else
  {
    v44 = @"DuringDowntimeLocalFooterText";
    v45 = v6;
  }

  v43 = [v45 localizedStringForKey:v44 value:&stru_28766E5A8 table:0];
LABEL_30:
  v94 = v43;
  [v39 setObject:v43 forKeyedSubscript:v109];
  v95 = v39;
  [v5 addObject:v39];
  v46 = [v6 localizedStringForKey:@"DuringDowntimeSpecifierName" value:&stru_28766E5A8 table:0];
  v47 = MEMORY[0x277D3FAD8];
  v48 = objc_opt_class();
  v93 = v46;
  v49 = [v47 preferenceSpecifierNamed:v46 target:self set:0 get:0 detail:v48 cell:2 edit:objc_opt_class()];
  v50 = objc_opt_class();
  v51 = NSStringFromClass(v50);
  [v49 setObject:v51 forKeyedSubscript:v104];

  [v49 setObject:&unk_28769D0B8 forKeyedSubscript:v103];
  [v49 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
  [v49 setObject:objc_opt_class() forKeyedSubscript:v105];
  [v49 setObject:v113 forKeyedSubscript:0x287675C48];
  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = __49__STCommunicationLimitsListController_specifiers__block_invoke_2;
  v114[3] = &unk_279B7CC68;
  v114[4] = self;
  v92 = _Block_copy(v114);
  v52 = _Block_copy(v92);
  [v49 setObject:v52 forKeyedSubscript:0x287675888];

  v53 = [v111 downtimeCommunicationLimit];
  v54 = 0;
  if (v53 <= 3)
  {
    v54 = [v6 localizedStringForKey:off_279B7D1D0[v53] value:&stru_28766E5A8 table:0];
  }

  v91 = v54;
  [v49 setObject:v54 forKeyedSubscript:v38];
  [(STCommunicationLimitsListController *)self setDuringDowntimeSpecifier:v49];
  [v5 addObject:v49];
  v106 = [(STCommunicationLimitsListController *)self familyMemberContactsController];
  v55 = v108;
  if (![v108 isManaged])
  {
    goto LABEL_52;
  }

  v56 = MEMORY[0x277D3FAD8];
  v57 = objc_opt_new();
  v58 = [v57 UUIDString];
  v59 = [v56 groupSpecifierWithID:v58];

  v89 = [v111 contactManagementState];
  v60 = v112 ^ 1;
  if (v89 != 2)
  {
    v60 = 1;
  }

  if ((v60 & 1) == 0 && ![v106 fetchStatus])
  {
    v61 = objc_opt_class();
    v62 = NSStringFromClass(v61);
    [v59 setObject:v62 forKeyedSubscript:*MEMORY[0x277D3FF48]];

    [(STCommunicationLimitsListController *)self _startSyncingiCloudContacts];
  }

  v63 = [(STCommunicationLimitsListController *)self _manageContactsGroupFooterText];
  [v59 setObject:v63 forKeyedSubscript:v109];

  [(STCommunicationLimitsListController *)self setManageContactsGroupSpecifier:v59];
  [v5 addObject:v59];
  if (v112)
  {
    if (v107)
    {
      v64 = [v6 localizedStringForKey:@"ManageContactsRemoteSpecifierName" value:&stru_28766E5A8 table:0];
      v65 = objc_alloc(MEMORY[0x277CCACA8]);
      v66 = [MEMORY[0x277CBEAF8] currentLocale];
      v67 = [v65 initWithFormat:v64 locale:v66, v107];

      goto LABEL_44;
    }

    v68 = @"ManageContactsRemoteGenericSpecifierName";
    v69 = v6;
  }

  else
  {
    v68 = @"ManageContactsLocalSpecifierName";
    v69 = v6;
  }

  v67 = [v69 localizedStringForKey:v68 value:&stru_28766E5A8 table:0];
LABEL_44:
  v70 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v67 target:self set:sel__setManageContacts_specifier_ get:sel__manageContacts_ detail:0 cell:6 edit:objc_opt_class()];
  [(STPINListViewController *)self setUpPasscodeAndLineWrapBehaviorForSpecifier:v70];
  [(STCommunicationLimitsListController *)self setManageContactsSpecifier:v70];
  [v5 addObject:v70];
  if (v112)
  {
    if (v89 == 2)
    {
      v110 = v67;
      v90 = [v6 localizedStringForKey:@"iCloudContactsSpecifierName" value:&stru_28766E5A8 table:0];
      v72 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v90 target:self set:0 get:sel__totaliCloudContactsDetailText_ detail:0 cell:2 edit:objc_opt_class()];
      v73 = objc_opt_class();
      v74 = NSStringFromClass(v73);
      [v72 setObject:v74 forKeyedSubscript:v104];

      v71 = v90;
      [v72 setObject:&unk_28769D0B8 forKeyedSubscript:v103];
      [v72 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
      [(STCommunicationLimitsListController *)self setICloudContactsSpecifier:v72];
      if ([(STCommunicationLimitsListController *)self syncingiCloudContacts])
      {
LABEL_50:

        v67 = v110;
        goto LABEL_51;
      }

LABEL_49:
      [v5 addObject:v72];
      goto LABEL_50;
    }

    if (v89 == 1)
    {
      v110 = v67;
      v71 = [v6 localizedStringForKey:@"iCloudContactsSpecifierName" value:&stru_28766E5A8 table:0];
      v72 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v71 target:self set:0 get:sel__statusPendingDetailText_ detail:0 cell:4 edit:0];
      [v72 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
      [(STCommunicationLimitsListController *)self setICloudContactsSpecifier:v72];
      goto LABEL_49;
    }
  }

LABEL_51:

  v55 = v108;
LABEL_52:
  if ([v55 hasPasscode])
  {
    v75 = MEMORY[0x277D3FAD8];
    v76 = objc_opt_new();
    v77 = [v76 UUIDString];
    v78 = [v75 groupSpecifierWithID:v77];

    [v5 addObject:v78];
    v79 = [v6 localizedStringForKey:@"AllowContactEditingSpecifierName" value:&stru_28766E5A8 table:0];
    v80 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v79 target:self set:sel__setAllowContactEditing_specifier_ get:sel__allowContactEditing_ detail:0 cell:6 edit:objc_opt_class()];
    v81 = objc_opt_class();
    v82 = NSStringFromClass(v81);
    [v80 setObject:v82 forKeyedSubscript:v104];

    [v80 setObject:&unk_28769D0B8 forKeyedSubscript:v103];
    [v80 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
    v83 = [v106 fetchStatus];
    if (v83 == 2)
    {
      v84 = 1;
    }

    else
    {
      v84 = v112 ^ 1;
    }

    if ((v84 & 1) == 0)
    {
      [v80 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    }

    [(STCommunicationLimitsListController *)self setAllowContactEditingSpecifier:v80];
    [v5 addObject:v80];
    if (v83)
    {
      v85 = 1;
    }

    else
    {
      v85 = v112 ^ 1;
    }

    if ((v85 & 1) == 0)
    {
      [(STCommunicationLimitsListController *)self _startSyncingiCloudContacts];
    }

    v55 = v108;
  }

  v86 = *(&self->super.super.super.super.super.super.super.isa + v102);
  *(&self->super.super.super.super.super.super.super.isa + v102) = v5;
  v87 = v5;

  v3 = *(&self->super.super.super.super.super.super.super.isa + v102);
LABEL_65:

  return v3;
}

void __49__STCommunicationLimitsListController_specifiers__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 table];
    v5 = *(a1 + 32);
    v6 = [v5 duringScreenTimeSpecifier];
    v7 = [v5 indexPathForSpecifier:v6];
    v8.receiver = v3;
    v8.super_class = STCommunicationLimitsListController;
    objc_msgSendSuper2(&v8, sel_tableView_didSelectRowAtIndexPath_, v4, v7);
  }
}

void __49__STCommunicationLimitsListController_specifiers__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 table];
    v5 = *(a1 + 32);
    v6 = [v5 duringDowntimeSpecifier];
    v7 = [v5 indexPathForSpecifier:v6];
    v8.receiver = v3;
    v8.super_class = STCommunicationLimitsListController;
    objc_msgSendSuper2(&v8, sel_tableView_didSelectRowAtIndexPath_, v4, v7);
  }
}

- (id)_totaliCloudContactsDetailText:(id)a3
{
  v4 = +[STScreenTimeSettingsUIBundle bundle];
  v5 = [v4 localizedStringForKey:@"TotaliCloudContacts" value:&stru_28766E5A8 table:0];

  v6 = MEMORY[0x277CCACA8];
  v7 = [(STCommunicationLimitsListController *)self familyMemberContactsController];
  v8 = [v6 localizedStringWithFormat:v5, objc_msgSend(v7, "countOfFamilyMemberContacts")];

  return v8;
}

- (id)_manageContacts:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x277D401A8]];
  if (!v4)
  {
    v5 = [(STCommunicationLimitsListController *)self communicationLimits];
    v6 = [v5 contactManagementState];

    v7 = [(STPINListViewController *)self coordinator];
    v8 = [v7 viewModel];
    v9 = [v8 me];
    v10 = [v9 isRemoteUser];

    if (v10)
    {
      v11 = (v6 - 1) < 2;
    }

    else
    {
      v11 = v6 == 2;
    }

    v4 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  }

  return v4;
}

- (void)_setManageContacts:(id)a3 specifier:(id)a4
{
  v6 = a4;
  v7 = [a3 BOOLValue];
  v8 = [(STPINListViewController *)self coordinator];
  v9 = [v8 viewModel];
  v10 = [v9 me];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__STCommunicationLimitsListController__setManageContacts_specifier___block_invoke;
  aBlock[3] = &unk_279B7D188;
  aBlock[4] = self;
  v18 = v7;
  v11 = v6;
  v17 = v11;
  v12 = _Block_copy(aBlock);
  if ([v10 hasPasscode] && (objc_msgSend(v8, "hasAlreadyEnteredPINForSession") & 1) == 0)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__STCommunicationLimitsListController__setManageContacts_specifier___block_invoke_2;
    v13[3] = &unk_279B7D1B0;
    v15 = v12;
    v13[4] = self;
    v14 = v11;
    [(STPINListViewController *)self showPINSheet:v14 completion:v13];
  }

  else
  {
    v12[2](v12);
  }
}

void __68__STCommunicationLimitsListController__setManageContacts_specifier___block_invoke(uint64_t a1)
{
  v11 = [*(a1 + 32) coordinator];
  v2 = [*(a1 + 32) communicationLimits];
  v3 = *(a1 + 48);
  v4 = [v11 viewModel];
  v5 = [v4 me];
  v6 = [v5 isRemoteUser];

  if (v3 == 1)
  {
    if (v6)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
      [*(a1 + 40) setObject:v7 forKeyedSubscript:*MEMORY[0x277D401A8]];

      [*(a1 + 32) _startSyncingiCloudContacts];
      goto LABEL_10;
    }

    v8 = v2;
    v9 = 2;
    goto LABEL_9;
  }

  if (v6)
  {
    [*(a1 + 32) _didCancelSyncingiCloudContacts];
  }

  if ([v2 contactManagementState])
  {
    v8 = v2;
    v9 = 0;
LABEL_9:
    [v8 setContactManagementState:v9];
    v10 = [v11 contentPrivacyCoordinator];
    [v10 saveCommunicationLimits:v2 completionHandler:0];
  }

LABEL_10:
  [STCommunicationLimitsScreenTimeDetailListController showCompatibilityAlertIfNeededWithCoordinator:v11 presentingViewController:*(a1 + 32) okHandler:0];
}

uint64_t __68__STCommunicationLimitsListController__setManageContacts_specifier___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) reloadSpecifier:*(a1 + 40) animated:1];
  }
}

- (id)_statusPendingDetailText:(id)a3
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"ManageContactsStatusPendingDetailText" value:&stru_28766E5A8 table:0];

  return v4;
}

- (id)_manageContactsGroupFooterText
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [(STPINListViewController *)self coordinator];
  v5 = [v4 viewModel];
  v6 = [v5 me];

  v7 = [v6 givenName];
  v8 = [(STCommunicationLimitsListController *)self communicationLimits];
  v9 = [v8 contactManagementState];

  if (([v6 isRemoteUser] & 1) == 0)
  {
    v11 = @"ManageContactsSpecifierLocalFooterText";
    goto LABEL_6;
  }

  if ([(STCommunicationLimitsListController *)self syncingiCloudContacts])
  {
    if (v7)
    {
      v10 = @"iCloudContactsSyncingRemoteFooterText";
LABEL_15:
      v13 = [v3 localizedStringForKey:v10 value:&stru_28766E5A8 table:0];
      v16 = MEMORY[0x277CCACA8];
      v15 = [v3 localizedStringForKey:v13 value:&stru_28766E5A8 table:0];
      [v16 localizedStringWithFormat:v15, v7, v18];
      goto LABEL_16;
    }

    v11 = @"iCloudContactsSyncingSpecifierRemoteGenericFooterText";
    goto LABEL_6;
  }

  if (v9 != 1)
  {
    if (v7)
    {
      if (v9)
      {
        v10 = @"iCloudContactsSpecifierRemoteFooterText";
      }

      else
      {
        v10 = @"ManageContactsGroupSpecifierRemoteFooterText";
      }

      goto LABEL_15;
    }

    if (v9)
    {
      v11 = @"iCloudContactsSpecifierRemoteGenericFooterText";
    }

    else
    {
      v11 = @"ManageContactsGroupSpecifierRemoteGenericFooterText";
    }

LABEL_6:
    v12 = [v3 localizedStringForKey:v11 value:&stru_28766E5A8 table:0];
    goto LABEL_17;
  }

  if ([v6 isRemoteUser])
  {
    if (v7)
    {
      v13 = [v3 localizedStringForKey:@"iCloudContactsPendingRemoteFooterText" value:&stru_28766E5A8 table:0];
      v14 = MEMORY[0x277CCACA8];
      v15 = [v3 localizedStringForKey:v13 value:&stru_28766E5A8 table:0];
      [v14 localizedStringWithFormat:v15, v7, v7];
      v12 = LABEL_16:;

      goto LABEL_17;
    }

    v11 = @"iCloudContactsPendingRemoteGenericFooterText";
    goto LABEL_6;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (id)_allowContactEditing:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(STCommunicationLimitsListController *)self communicationLimits];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "contactsEditable")}];

  return v5;
}

- (void)_setAllowContactEditing:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STPINListViewController *)self coordinator];
  v9 = [v8 viewModel];
  v10 = [v9 me];
  if (![v10 hasPasscode])
  {

    goto LABEL_5;
  }

  v11 = [v8 hasAlreadyEnteredPINForSession];

  if (v11)
  {
LABEL_5:
    [(STCommunicationLimitsListController *)self _updateAllowContactEditingWithAlertIfNeeded:v6 forSpecifier:v7];
    goto LABEL_6;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__STCommunicationLimitsListController__setAllowContactEditing_specifier___block_invoke;
  v12[3] = &unk_279B7CC40;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  [(STPINListViewController *)self showPINSheet:v14 completion:v12];

LABEL_6:
}

uint64_t __73__STCommunicationLimitsListController__setAllowContactEditing_specifier___block_invoke(void *a1, int a2)
{
  v3 = a1[4];
  if (a2)
  {
    return [v3 _updateAllowContactEditingWithAlertIfNeeded:a1[5] forSpecifier:a1[6]];
  }

  else
  {
    return [v3 reloadSpecifier:a1[6] animated:1];
  }
}

- (void)_updateAllowContactEditingWithAlertIfNeeded:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STCommunicationLimitsListController *)self communicationLimits];
  v9 = [v8 screenTimeCommunicationLimit];

  if ([v6 BOOLValue] && (v9 - 1) <= 1)
  {
    v10 = +[STScreenTimeSettingsUIBundle bundle];
    v11 = [(STPINListViewController *)self coordinator];
    v12 = [v11 viewModel];
    v13 = [v12 me];

    v29 = v13;
    v30 = v7;
    if ([v13 isRemoteUser])
    {
      v14 = [v13 givenName];
      if (v14)
      {
        v15 = [v10 localizedStringForKey:@"AllowContactEditingRemoteAlertTitle" value:&stru_28766E5A8 table:0];
        v16 = [MEMORY[0x277CBEAF8] currentLocale];
        v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v15 locale:v16, v14];
        v18 = [v10 localizedStringForKey:@"AllowContactEditingRemoteAlertPrompt" value:&stru_28766E5A8 table:0];
        v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v18 locale:v16, v14];
      }

      else
      {
        v17 = [v10 localizedStringForKey:@"AllowContactEditingRemoteGenericAlertTitle" value:&stru_28766E5A8 table:0];
        v19 = [v10 localizedStringForKey:@"AllowContactEditingRemoteGenericAlertPrompt" value:&stru_28766E5A8 table:0];
      }
    }

    else
    {
      v17 = [v10 localizedStringForKey:@"AllowContactEditingLocalAlertTitle" value:&stru_28766E5A8 table:0];
      v19 = [v10 localizedStringForKey:@"AllowContactEditingLocalAlertPrompt" value:&stru_28766E5A8 table:0];
    }

    v27 = v17;
    v28 = v19;
    v20 = [MEMORY[0x277D75110] alertControllerWithTitle:v17 message:v19 preferredStyle:1];
    v21 = MEMORY[0x277D750F8];
    v22 = [v10 localizedStringForKey:@"ConfirmationButtonContinue" value:&stru_28766E5A8 table:0];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __96__STCommunicationLimitsListController__updateAllowContactEditingWithAlertIfNeeded_forSpecifier___block_invoke;
    v33[3] = &unk_279B7CDF0;
    v33[4] = self;
    v34 = v6;
    v23 = [v21 actionWithTitle:v22 style:0 handler:v33];

    [v20 addAction:v23];
    [v20 setPreferredAction:v23];
    v24 = MEMORY[0x277D750F8];
    v25 = [v10 localizedStringForKey:@"ConfirmationButtonCancel" value:&stru_28766E5A8 table:0];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __96__STCommunicationLimitsListController__updateAllowContactEditingWithAlertIfNeeded_forSpecifier___block_invoke_2;
    v31[3] = &unk_279B7CDF0;
    v31[4] = self;
    v7 = v30;
    v32 = v30;
    v26 = [v24 actionWithTitle:v25 style:1 handler:v31];
    [v20 addAction:v26];

    [(STCommunicationLimitsListController *)self presentViewController:v20 animated:1 completion:0];
  }

  else
  {
    [(STCommunicationLimitsListController *)self _updateAllowContactEditing:v6];
  }
}

- (void)_updateAllowContactEditing:(id)a3
{
  v4 = a3;
  v8 = [(STCommunicationLimitsListController *)self communicationLimits];
  v5 = [v4 BOOLValue];

  [v8 setContactsEditable:v5];
  v6 = [(STPINListViewController *)self coordinator];
  v7 = [v6 contentPrivacyCoordinator];
  [v7 saveCommunicationLimits:v8 completionHandler:0];

  [STCommunicationLimitsScreenTimeDetailListController showCompatibilityAlertIfNeededWithCoordinator:v6 presentingViewController:self okHandler:0];
}

- (void)_startSyncingiCloudContacts
{
  v4 = [(STCommunicationLimitsListController *)self familyMemberContactsController];
  [v4 countOfFamilyMemberContacts];
  v3 = [v4 fetchStatus];
  if (v3 == 2)
  {
    [(STCommunicationLimitsListController *)self _didFinishSyncingiCloudContacts];
  }

  else
  {
    [(STCommunicationLimitsListController *)self setSyncingiCloudContacts:(v3 & 0xFFFFFFFFFFFFFFFDLL) == 1];
    [(STCommunicationLimitsListController *)self _didStartSyncingiCloudContacts];
  }
}

- (void)_didStartSyncingiCloudContacts
{
  v13 = *MEMORY[0x277D85DE8];
  [(STCommunicationLimitsListController *)self _enableAllowContactEditingSwitch:0];
  [(STCommunicationLimitsListController *)self _updateManageContactsGroupFooterView];
  [(STCommunicationLimitsListController *)self _indicateiCloudContactsSyncingStatus];
  v3 = [(STCommunicationLimitsListController *)self familyMemberContactsController];
  v4 = [v3 fetchStatus];
  v5 = [(STPINListViewController *)self coordinator];
  v6 = [v5 viewModel];
  v7 = [v6 me];
  v8 = [v7 givenName];
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v9 = +[STUILog communication];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v8;
        v10 = "Finished syncing %@'s iCloud contacts.";
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    if (v4 == 3)
    {
      v9 = +[STUILog communication];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v8;
        v10 = "Syncing %@'s iCloud contacts.";
        goto LABEL_14;
      }

LABEL_15:
    }
  }

  else
  {
    if (!v4)
    {
      v9 = +[STUILog communication];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v8;
        v10 = "Did not fetch %@'s iCloud contacts.";
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    if (v4 == 1)
    {
      v9 = +[STUILog communication];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v8;
        v10 = "Fetching %@'s iCloud contacts.";
LABEL_14:
        _os_log_impl(&dword_264BA2000, v9, OS_LOG_TYPE_DEFAULT, v10, &v11, 0xCu);
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }
}

- (void)_didFinishSyncingiCloudContacts
{
  v20 = *MEMORY[0x277D85DE8];
  [(STCommunicationLimitsListController *)self setSyncingiCloudContacts:0];
  [(STCommunicationLimitsListController *)self _enableAllowContactEditingSwitch:1];
  v3 = [(STCommunicationLimitsListController *)self communicationLimits];
  v4 = [v3 contactManagementState];
  v5 = [(STCommunicationLimitsListController *)self manageContactsSpecifier];
  v6 = [(STCommunicationLimitsListController *)self familyMemberContactsController];
  v7 = [(STPINListViewController *)self coordinator];
  v8 = [(STCommunicationLimitsListController *)self _manageContacts:v5];
  v9 = [v8 BOOLValue];

  if (v9 && !v4)
  {
    if ([v6 countOfFamilyMemberContacts] >= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    [v3 setContactManagementState:v10];
    v11 = [v7 contentPrivacyCoordinator];
    [v11 saveCommunicationLimits:v3 completionHandler:0];
LABEL_7:

    goto LABEL_11;
  }

  if (v4 == 2)
  {
    v11 = [(STCommunicationLimitsListController *)self iCloudContactsSpecifier];
    if (([(STCommunicationLimitsListController *)self containsSpecifier:v11]& 1) == 0)
    {
      [(STCommunicationLimitsListController *)self insertSpecifier:v11 afterSpecifier:v5 animated:1];
    }

    goto LABEL_7;
  }

LABEL_11:
  [v5 removePropertyForKey:*MEMORY[0x277D401A8]];
  [(STCommunicationLimitsListController *)self _updateManageContactsGroupFooterView];
  [(STCommunicationLimitsListController *)self _indicateiCloudContactsSyncingStatus];
  v12 = [v6 fetchStatus];
  v13 = [v7 viewModel];
  v14 = [v13 me];
  v15 = [v14 givenName];
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v16 = +[STUILog communication];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v15;
        v17 = "Finished syncing %@'s iCloud contacts.";
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    if (v12 == 3)
    {
      v16 = +[STUILog communication];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v15;
        v17 = "Syncing %@'s iCloud contacts.";
        goto LABEL_24;
      }

LABEL_25:
    }
  }

  else
  {
    if (!v12)
    {
      v16 = +[STUILog communication];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v15;
        v17 = "Did not fetch %@'s iCloud contacts.";
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    if (v12 == 1)
    {
      v16 = +[STUILog communication];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v15;
        v17 = "Fetching %@'s iCloud contacts.";
LABEL_24:
        _os_log_impl(&dword_264BA2000, v16, OS_LOG_TYPE_DEFAULT, v17, &v18, 0xCu);
        goto LABEL_25;
      }

      goto LABEL_25;
    }
  }
}

- (void)_didCancelSyncingiCloudContacts
{
  if ([(STCommunicationLimitsListController *)self syncingiCloudContacts])
  {
    [(STCommunicationLimitsListController *)self setSyncingiCloudContacts:0];
    v3 = [(STCommunicationLimitsListController *)self manageContactsSpecifier];
    [v3 removePropertyForKey:*MEMORY[0x277D401A8]];

    [(STCommunicationLimitsListController *)self _updateManageContactsGroupFooterView];

    [(STCommunicationLimitsListController *)self _indicateiCloudContactsSyncingStatus];
  }
}

- (void)_updateManageContactsGroupFooterView
{
  v6 = [(STCommunicationLimitsListController *)self manageContactsGroupSpecifier];
  if ([(STCommunicationLimitsListController *)self syncingiCloudContacts])
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    [v6 setObject:v4 forKeyedSubscript:*MEMORY[0x277D3FF48]];
  }

  else
  {
    [v6 removePropertyForKey:*MEMORY[0x277D3FF48]];
  }

  v5 = [(STCommunicationLimitsListController *)self _manageContactsGroupFooterText];
  [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  [(STCommunicationLimitsListController *)self reloadSpecifier:v6 animated:0];
}

- (void)_indicateiCloudContactsSyncingStatus
{
  v3 = [(STCommunicationLimitsListController *)self manageContactsGroupSpecifier];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D3FF90]];

  if ([(STCommunicationLimitsListController *)self syncingiCloudContacts])
  {
    [v4 startAnimatingSpinner];
  }

  else
  {
    [v4 stopAnimatingSpinner];
  }
}

- (void)_enableAllowContactEditingSwitch:(BOOL)a3
{
  v3 = a3;
  v6 = [(STCommunicationLimitsListController *)self allowContactEditingSpecifier];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [(STCommunicationLimitsListController *)self reloadSpecifier:v6 animated:1];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STCommunicationLimitsListController *)self specifierAtIndexPath:v7];
  v9 = [(STCommunicationLimitsListController *)self iCloudContactsSpecifier];
  v10 = v9;
  if (v8 == v9)
  {
    v11 = [(STCommunicationLimitsListController *)self communicationLimits];
    v12 = [v11 contactManagementState];

    if (v12 != 2)
    {
      goto LABEL_7;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__STCommunicationLimitsListController_tableView_didSelectRowAtIndexPath___block_invoke;
    aBlock[3] = &unk_279B7CC40;
    v20 = v6;
    v21 = v7;
    v22 = self;
    v13 = _Block_copy(aBlock);
    v14 = [(STPINListViewController *)self coordinator];
    v15 = [v14 viewModel];
    v16 = [v15 me];
    if ([v16 hasPasscode])
    {
      v17 = [v14 hasAlreadyEnteredPINForSession];

      if ((v17 & 1) == 0)
      {
        [(STPINListViewController *)self showPINSheet:v8 completion:v13];
LABEL_11:

        goto LABEL_8;
      }
    }

    else
    {
    }

    (*(v13 + 2))(v13, 1);
    goto LABEL_11;
  }

LABEL_7:
  v18.receiver = self;
  v18.super_class = STCommunicationLimitsListController;
  [(STPINListViewController *)&v18 tableView:v6 didSelectRowAtIndexPath:v7];
LABEL_8:
}

void __73__STCommunicationLimitsListController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) deselectRowAtIndexPath:*(a1 + 40) animated:1];
    v3 = [*(a1 + 48) familyMemberContactsController];
    [v3 performInteraction:0];
  }
}

- (void)familyMemberContactsDidChange
{
  if ([(STCommunicationLimitsListController *)self syncingiCloudContacts])
  {

    [(STCommunicationLimitsListController *)self _didFinishSyncingiCloudContacts];
  }
}

@end