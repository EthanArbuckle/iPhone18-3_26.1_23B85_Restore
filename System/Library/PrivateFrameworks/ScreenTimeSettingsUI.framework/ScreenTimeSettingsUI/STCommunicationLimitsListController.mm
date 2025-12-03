@interface STCommunicationLimitsListController
- (STCommunicationLimitsListController)initWithRootViewModelCoordinator:(id)coordinator;
- (id)_allowContactEditing:(id)editing;
- (id)_manageContacts:(id)contacts;
- (id)_manageContactsGroupFooterText;
- (id)_statusPendingDetailText:(id)text;
- (id)_totaliCloudContactsDetailText:(id)text;
- (id)specifiers;
- (void)_communicationLimitsDidChangeFrom:(id)from to:(id)to;
- (void)_didCancelSyncingiCloudContacts;
- (void)_didFinishSyncingiCloudContacts;
- (void)_didStartSyncingiCloudContacts;
- (void)_enableAllowContactEditingSwitch:(BOOL)switch;
- (void)_indicateiCloudContactsSyncingStatus;
- (void)_setAllowContactEditing:(id)editing specifier:(id)specifier;
- (void)_setManageContacts:(id)contacts specifier:(id)specifier;
- (void)_startSyncingiCloudContacts;
- (void)_updateAllowContactEditing:(id)editing;
- (void)_updateAllowContactEditingWithAlertIfNeeded:(id)needed forSpecifier:(id)specifier;
- (void)_updateManageContactsGroupFooterView;
- (void)dealloc;
- (void)familyMemberContactsDidChange;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation STCommunicationLimitsListController

- (STCommunicationLimitsListController)initWithRootViewModelCoordinator:(id)coordinator
{
  v32[3] = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  v28.receiver = self;
  v28.super_class = STCommunicationLimitsListController;
  v5 = [(STPINListViewController *)&v28 initWithRootViewModelCoordinator:coordinatorCopy];
  contentPrivacyCoordinator = [coordinatorCopy contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  communicationLimits = [viewModel communicationLimits];
  v9 = [communicationLimits copy];
  communicationLimits = v5->_communicationLimits;
  v5->_communicationLimits = v9;

  viewModel2 = [coordinatorCopy viewModel];
  v12 = [viewModel2 me];

  if (([v12 isManaged] & 1) != 0 || objc_msgSend(v12, "hasPasscode"))
  {
    altDSID = [v12 altDSID];
    if (altDSID)
    {
      if (![v12 isRemoteUser])
      {
LABEL_14:

        goto LABEL_15;
      }

      givenName = [v12 givenName];
      v15 = givenName;
      if (givenName)
      {
        v32[0] = givenName;
        v31[0] = @"member-first-name";
        v31[1] = @"member-dsid";
        dsid = [v12 dsid];
        v31[2] = @"member-altDSID";
        v32[1] = dsid;
        v32[2] = altDSID;
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
        dsid = [v12 dsid];
        v29[1] = @"member-altDSID";
        v30[0] = dsid;
        v30[1] = altDSID;
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
  [coordinatorCopy addObserver:v5 forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits" options:3 context:"KVOContextCommunicationLimitsListController"];

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

- (void)viewDidAppear:(BOOL)appear
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = STCommunicationLimitsListController;
  [(STPINListViewController *)&v16 viewDidAppear:appear];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.ScreenTime/COMMUNICATION_LIMITS"];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"CommunicationLimitsSpecifierName" table:@"Localizable" locale:currentLocale bundleURL:bundleURL];

  v10 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = +[STScreenTimeSettingsUIBundle bundle];
  bundleURL2 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"ScreenTimeControllerTitle" table:@"Localizable" locale:currentLocale2 bundleURL:bundleURL2];

  v17[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [(STCommunicationLimitsListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.screen-time" title:v9 localizedNavigationComponents:v15 deepLink:v4];
}

- (void)dealloc
{
  coordinator = [(STPINListViewController *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits"];

  v4.receiver = self;
  v4.super_class = STCommunicationLimitsListController;
  [(STListViewController *)&v4 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STPINListViewController *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits"];
  v14.receiver = self;
  v14.super_class = STCommunicationLimitsListController;
  [(STPINListViewController *)&v14 setCoordinator:coordinatorCopy];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  communicationLimits = [viewModel communicationLimits];
  contentPrivacyCoordinator2 = [coordinatorCopy contentPrivacyCoordinator];
  viewModel2 = [contentPrivacyCoordinator2 viewModel];
  communicationLimits2 = [viewModel2 communicationLimits];
  [(STCommunicationLimitsListController *)self _communicationLimitsDidChangeFrom:communicationLimits to:communicationLimits2];

  [coordinatorCopy addObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits" options:3 context:"KVOContextCommunicationLimitsListController"];
  duringDowntimeSpecifier = [(STCommunicationLimitsListController *)self duringDowntimeSpecifier];
  [duringDowntimeSpecifier setObject:coordinatorCopy forKeyedSubscript:0x287675C48];

  duringScreenTimeSpecifier = [(STCommunicationLimitsListController *)self duringScreenTimeSpecifier];
  [duringScreenTimeSpecifier setObject:coordinatorCopy forKeyedSubscript:0x287675C48];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (context == "KVOContextCommunicationLimitsListController")
  {
    pathCopy = path;
    coordinator = [(STPINListViewController *)self coordinator];
    v14 = [pathCopy isEqualToString:@"contentPrivacyCoordinator.viewModel.communicationLimits"];

    if (v14)
    {
      v15 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null = [MEMORY[0x277CBEB68] null];

      if (v15 == null)
      {

        v15 = 0;
      }

      v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null2 = [MEMORY[0x277CBEB68] null];

      if (v17 == null2)
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
    pathCopy2 = path;
    [(STListViewController *)&v19 observeValueForKeyPath:pathCopy2 ofObject:object change:changeCopy context:context];
  }
}

- (void)_communicationLimitsDidChangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (fromCopy != toCopy && ([fromCopy isEqualToCommunicationLimits:toCopy] & 1) == 0)
  {
    [(STCommunicationLimitsListController *)self setCommunicationLimits:toCopy];
    [(STCommunicationLimitsListController *)self reloadSpecifiers];
    if ([fromCopy contactManagementState] == 1 && objc_msgSend(toCopy, "contactManagementState") == 2)
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
  coordinator = [(STPINListViewController *)self coordinator];
  viewModel = [coordinator viewModel];
  v8 = [viewModel me];

  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v10 = v8;
  v108 = v10;
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
      v10 = v108;
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

  v109 = *MEMORY[0x277D3FF88];
  [emptyGroupSpecifier setObject:v15 forKeyedSubscript:?];

  [v5 addObject:emptyGroupSpecifier];
  v16 = MEMORY[0x277D3FAD8];
  v17 = [v6 localizedStringForKey:@"AllowedCommunicationSectionTitle" value:&stru_28766E5A8 table:0];
  v18 = [v16 groupSpecifierWithName:v17];

  givenName2 = [v10 givenName];
  v107 = givenName2;
  isRemoteUser = [v10 isRemoteUser];
  v101 = emptyGroupSpecifier;
  if (isRemoteUser)
  {
    if (givenName2)
    {
      v20 = givenName2;
      v21 = [v6 localizedStringForKey:@"DuringScreenTimeSpecifierRemoteFooterText" value:&stru_28766E5A8 table:0];
      v22 = objc_alloc(MEMORY[0x277CCACA8]);
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      v24 = [v22 initWithFormat:v21 locale:currentLocale, v20];

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
  [v29 setObject:coordinator forKeyedSubscript:0x287675C48];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__STCommunicationLimitsListController_specifiers__block_invoke;
  aBlock[3] = &unk_279B7CC68;
  aBlock[4] = self;
  v97 = _Block_copy(aBlock);
  v33 = _Block_copy(v97);
  [v29 setObject:v33 forKeyedSubscript:0x287675888];

  communicationLimits = [(STCommunicationLimitsListController *)self communicationLimits];
  screenTimeCommunicationLimit = [communicationLimits screenTimeCommunicationLimit];
  v35 = 0;
  if (screenTimeCommunicationLimit <= 1)
  {
    if (screenTimeCommunicationLimit)
    {
      if (screenTimeCommunicationLimit != 1)
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

  if (screenTimeCommunicationLimit == 2)
  {
    v36 = @"AllowContactsOnlySpecifierName";
LABEL_23:
    v35 = [v6 localizedStringForKey:v36 value:&stru_28766E5A8 table:0];
    goto LABEL_24;
  }

  if (screenTimeCommunicationLimit == 3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"STCommunicationLimitsListController.m" lineNumber:223 description:@"Unexpected general communication policy whitelisted contacts"];

    v35 = 0;
  }

LABEL_24:
  v38 = *MEMORY[0x277D40160];
  v96 = v35;
  [v29 setObject:v35 forKeyedSubscript:*MEMORY[0x277D40160]];
  [(STCommunicationLimitsListController *)self setDuringScreenTimeSpecifier:v29];
  [v5 addObject:v29];
  emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v100 = v18;
  if (isRemoteUser)
  {
    if (v107)
    {
      [v6 localizedStringForKey:@"DuringDowntimeRemoteFooterText" value:&stru_28766E5A8 table:0];
      v40 = v5;
      v42 = v41 = emptyGroupSpecifier2;
      v107 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v42, v107];

      emptyGroupSpecifier2 = v41;
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

  v107 = [v45 localizedStringForKey:v44 value:&stru_28766E5A8 table:0];
LABEL_30:
  v94 = v107;
  [emptyGroupSpecifier2 setObject:v107 forKeyedSubscript:v109];
  v95 = emptyGroupSpecifier2;
  [v5 addObject:emptyGroupSpecifier2];
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
  [v49 setObject:coordinator forKeyedSubscript:0x287675C48];
  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = __49__STCommunicationLimitsListController_specifiers__block_invoke_2;
  v114[3] = &unk_279B7CC68;
  v114[4] = self;
  v92 = _Block_copy(v114);
  v52 = _Block_copy(v92);
  [v49 setObject:v52 forKeyedSubscript:0x287675888];

  downtimeCommunicationLimit = [communicationLimits downtimeCommunicationLimit];
  v54 = 0;
  if (downtimeCommunicationLimit <= 3)
  {
    v54 = [v6 localizedStringForKey:off_279B7D1D0[downtimeCommunicationLimit] value:&stru_28766E5A8 table:0];
  }

  v91 = v54;
  [v49 setObject:v54 forKeyedSubscript:v38];
  [(STCommunicationLimitsListController *)self setDuringDowntimeSpecifier:v49];
  [v5 addObject:v49];
  familyMemberContactsController = [(STCommunicationLimitsListController *)self familyMemberContactsController];
  v55 = v108;
  if (![v108 isManaged])
  {
    goto LABEL_52;
  }

  v56 = MEMORY[0x277D3FAD8];
  v57 = objc_opt_new();
  uUIDString = [v57 UUIDString];
  v59 = [v56 groupSpecifierWithID:uUIDString];

  contactManagementState = [communicationLimits contactManagementState];
  v60 = isRemoteUser ^ 1;
  if (contactManagementState != 2)
  {
    v60 = 1;
  }

  if ((v60 & 1) == 0 && ![familyMemberContactsController fetchStatus])
  {
    v61 = objc_opt_class();
    v62 = NSStringFromClass(v61);
    [v59 setObject:v62 forKeyedSubscript:*MEMORY[0x277D3FF48]];

    [(STCommunicationLimitsListController *)self _startSyncingiCloudContacts];
  }

  _manageContactsGroupFooterText = [(STCommunicationLimitsListController *)self _manageContactsGroupFooterText];
  [v59 setObject:_manageContactsGroupFooterText forKeyedSubscript:v109];

  [(STCommunicationLimitsListController *)self setManageContactsGroupSpecifier:v59];
  [v5 addObject:v59];
  if (isRemoteUser)
  {
    if (v107)
    {
      v64 = [v6 localizedStringForKey:@"ManageContactsRemoteSpecifierName" value:&stru_28766E5A8 table:0];
      v65 = objc_alloc(MEMORY[0x277CCACA8]);
      currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
      v1072 = [v65 initWithFormat:v64 locale:currentLocale2, v107];

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

  v1072 = [v69 localizedStringForKey:v68 value:&stru_28766E5A8 table:0];
LABEL_44:
  v70 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v1072 target:self set:sel__setManageContacts_specifier_ get:sel__manageContacts_ detail:0 cell:6 edit:objc_opt_class()];
  [(STPINListViewController *)self setUpPasscodeAndLineWrapBehaviorForSpecifier:v70];
  [(STCommunicationLimitsListController *)self setManageContactsSpecifier:v70];
  [v5 addObject:v70];
  if (isRemoteUser)
  {
    if (contactManagementState == 2)
    {
      v110 = v1072;
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

        v1072 = v110;
        goto LABEL_51;
      }

LABEL_49:
      [v5 addObject:v72];
      goto LABEL_50;
    }

    if (contactManagementState == 1)
    {
      v110 = v1072;
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
    uUIDString2 = [v76 UUIDString];
    v78 = [v75 groupSpecifierWithID:uUIDString2];

    [v5 addObject:v78];
    v79 = [v6 localizedStringForKey:@"AllowContactEditingSpecifierName" value:&stru_28766E5A8 table:0];
    v80 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v79 target:self set:sel__setAllowContactEditing_specifier_ get:sel__allowContactEditing_ detail:0 cell:6 edit:objc_opt_class()];
    v81 = objc_opt_class();
    v82 = NSStringFromClass(v81);
    [v80 setObject:v82 forKeyedSubscript:v104];

    [v80 setObject:&unk_28769D0B8 forKeyedSubscript:v103];
    [v80 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
    fetchStatus = [familyMemberContactsController fetchStatus];
    if (fetchStatus == 2)
    {
      v84 = 1;
    }

    else
    {
      v84 = isRemoteUser ^ 1;
    }

    if ((v84 & 1) == 0)
    {
      [v80 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    }

    [(STCommunicationLimitsListController *)self setAllowContactEditingSpecifier:v80];
    [v5 addObject:v80];
    if (fetchStatus)
    {
      v85 = 1;
    }

    else
    {
      v85 = isRemoteUser ^ 1;
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

- (id)_totaliCloudContactsDetailText:(id)text
{
  v4 = +[STScreenTimeSettingsUIBundle bundle];
  v5 = [v4 localizedStringForKey:@"TotaliCloudContacts" value:&stru_28766E5A8 table:0];

  v6 = MEMORY[0x277CCACA8];
  familyMemberContactsController = [(STCommunicationLimitsListController *)self familyMemberContactsController];
  v8 = [v6 localizedStringWithFormat:v5, objc_msgSend(familyMemberContactsController, "countOfFamilyMemberContacts")];

  return v8;
}

- (id)_manageContacts:(id)contacts
{
  v4 = [contacts objectForKeyedSubscript:*MEMORY[0x277D401A8]];
  if (!v4)
  {
    communicationLimits = [(STCommunicationLimitsListController *)self communicationLimits];
    contactManagementState = [communicationLimits contactManagementState];

    coordinator = [(STPINListViewController *)self coordinator];
    viewModel = [coordinator viewModel];
    v9 = [viewModel me];
    isRemoteUser = [v9 isRemoteUser];

    if (isRemoteUser)
    {
      v11 = (contactManagementState - 1) < 2;
    }

    else
    {
      v11 = contactManagementState == 2;
    }

    v4 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  }

  return v4;
}

- (void)_setManageContacts:(id)contacts specifier:(id)specifier
{
  specifierCopy = specifier;
  bOOLValue = [contacts BOOLValue];
  coordinator = [(STPINListViewController *)self coordinator];
  viewModel = [coordinator viewModel];
  v10 = [viewModel me];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__STCommunicationLimitsListController__setManageContacts_specifier___block_invoke;
  aBlock[3] = &unk_279B7D188;
  aBlock[4] = self;
  v18 = bOOLValue;
  v11 = specifierCopy;
  v17 = v11;
  v12 = _Block_copy(aBlock);
  if ([v10 hasPasscode] && (objc_msgSend(coordinator, "hasAlreadyEnteredPINForSession") & 1) == 0)
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

- (id)_statusPendingDetailText:(id)text
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"ManageContactsStatusPendingDetailText" value:&stru_28766E5A8 table:0];

  return v4;
}

- (id)_manageContactsGroupFooterText
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  coordinator = [(STPINListViewController *)self coordinator];
  viewModel = [coordinator viewModel];
  v6 = [viewModel me];

  givenName = [v6 givenName];
  communicationLimits = [(STCommunicationLimitsListController *)self communicationLimits];
  contactManagementState = [communicationLimits contactManagementState];

  if (([v6 isRemoteUser] & 1) == 0)
  {
    v11 = @"ManageContactsSpecifierLocalFooterText";
    goto LABEL_6;
  }

  if ([(STCommunicationLimitsListController *)self syncingiCloudContacts])
  {
    if (givenName)
    {
      v10 = @"iCloudContactsSyncingRemoteFooterText";
LABEL_15:
      v13 = [v3 localizedStringForKey:v10 value:&stru_28766E5A8 table:0];
      v16 = MEMORY[0x277CCACA8];
      v15 = [v3 localizedStringForKey:v13 value:&stru_28766E5A8 table:0];
      [v16 localizedStringWithFormat:v15, givenName, v18];
      goto LABEL_16;
    }

    v11 = @"iCloudContactsSyncingSpecifierRemoteGenericFooterText";
    goto LABEL_6;
  }

  if (contactManagementState != 1)
  {
    if (givenName)
    {
      if (contactManagementState)
      {
        v10 = @"iCloudContactsSpecifierRemoteFooterText";
      }

      else
      {
        v10 = @"ManageContactsGroupSpecifierRemoteFooterText";
      }

      goto LABEL_15;
    }

    if (contactManagementState)
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
    if (givenName)
    {
      v13 = [v3 localizedStringForKey:@"iCloudContactsPendingRemoteFooterText" value:&stru_28766E5A8 table:0];
      v14 = MEMORY[0x277CCACA8];
      v15 = [v3 localizedStringForKey:v13 value:&stru_28766E5A8 table:0];
      [v14 localizedStringWithFormat:v15, givenName, givenName];
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

- (id)_allowContactEditing:(id)editing
{
  v3 = MEMORY[0x277CCABB0];
  communicationLimits = [(STCommunicationLimitsListController *)self communicationLimits];
  v5 = [v3 numberWithBool:{objc_msgSend(communicationLimits, "contactsEditable")}];

  return v5;
}

- (void)_setAllowContactEditing:(id)editing specifier:(id)specifier
{
  editingCopy = editing;
  specifierCopy = specifier;
  coordinator = [(STPINListViewController *)self coordinator];
  viewModel = [coordinator viewModel];
  v10 = [viewModel me];
  if (![v10 hasPasscode])
  {

    goto LABEL_5;
  }

  hasAlreadyEnteredPINForSession = [coordinator hasAlreadyEnteredPINForSession];

  if (hasAlreadyEnteredPINForSession)
  {
LABEL_5:
    [(STCommunicationLimitsListController *)self _updateAllowContactEditingWithAlertIfNeeded:editingCopy forSpecifier:specifierCopy];
    goto LABEL_6;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__STCommunicationLimitsListController__setAllowContactEditing_specifier___block_invoke;
  v12[3] = &unk_279B7CC40;
  v12[4] = self;
  v13 = editingCopy;
  v14 = specifierCopy;
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

- (void)_updateAllowContactEditingWithAlertIfNeeded:(id)needed forSpecifier:(id)specifier
{
  neededCopy = needed;
  specifierCopy = specifier;
  communicationLimits = [(STCommunicationLimitsListController *)self communicationLimits];
  screenTimeCommunicationLimit = [communicationLimits screenTimeCommunicationLimit];

  if ([neededCopy BOOLValue] && (screenTimeCommunicationLimit - 1) <= 1)
  {
    v10 = +[STScreenTimeSettingsUIBundle bundle];
    coordinator = [(STPINListViewController *)self coordinator];
    viewModel = [coordinator viewModel];
    v13 = [viewModel me];

    v29 = v13;
    v30 = specifierCopy;
    if ([v13 isRemoteUser])
    {
      givenName = [v13 givenName];
      if (givenName)
      {
        v15 = [v10 localizedStringForKey:@"AllowContactEditingRemoteAlertTitle" value:&stru_28766E5A8 table:0];
        currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
        v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v15 locale:currentLocale, givenName];
        v18 = [v10 localizedStringForKey:@"AllowContactEditingRemoteAlertPrompt" value:&stru_28766E5A8 table:0];
        v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v18 locale:currentLocale, givenName];
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
    v34 = neededCopy;
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
    specifierCopy = v30;
    v32 = v30;
    v26 = [v24 actionWithTitle:v25 style:1 handler:v31];
    [v20 addAction:v26];

    [(STCommunicationLimitsListController *)self presentViewController:v20 animated:1 completion:0];
  }

  else
  {
    [(STCommunicationLimitsListController *)self _updateAllowContactEditing:neededCopy];
  }
}

- (void)_updateAllowContactEditing:(id)editing
{
  editingCopy = editing;
  communicationLimits = [(STCommunicationLimitsListController *)self communicationLimits];
  bOOLValue = [editingCopy BOOLValue];

  [communicationLimits setContactsEditable:bOOLValue];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  [contentPrivacyCoordinator saveCommunicationLimits:communicationLimits completionHandler:0];

  [STCommunicationLimitsScreenTimeDetailListController showCompatibilityAlertIfNeededWithCoordinator:coordinator presentingViewController:self okHandler:0];
}

- (void)_startSyncingiCloudContacts
{
  familyMemberContactsController = [(STCommunicationLimitsListController *)self familyMemberContactsController];
  [familyMemberContactsController countOfFamilyMemberContacts];
  fetchStatus = [familyMemberContactsController fetchStatus];
  if (fetchStatus == 2)
  {
    [(STCommunicationLimitsListController *)self _didFinishSyncingiCloudContacts];
  }

  else
  {
    [(STCommunicationLimitsListController *)self setSyncingiCloudContacts:(fetchStatus & 0xFFFFFFFFFFFFFFFDLL) == 1];
    [(STCommunicationLimitsListController *)self _didStartSyncingiCloudContacts];
  }
}

- (void)_didStartSyncingiCloudContacts
{
  v13 = *MEMORY[0x277D85DE8];
  [(STCommunicationLimitsListController *)self _enableAllowContactEditingSwitch:0];
  [(STCommunicationLimitsListController *)self _updateManageContactsGroupFooterView];
  [(STCommunicationLimitsListController *)self _indicateiCloudContactsSyncingStatus];
  familyMemberContactsController = [(STCommunicationLimitsListController *)self familyMemberContactsController];
  fetchStatus = [familyMemberContactsController fetchStatus];
  coordinator = [(STPINListViewController *)self coordinator];
  viewModel = [coordinator viewModel];
  v7 = [viewModel me];
  givenName = [v7 givenName];
  if (fetchStatus > 1)
  {
    if (fetchStatus == 2)
    {
      v9 = +[STUILog communication];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = givenName;
        v10 = "Finished syncing %@'s iCloud contacts.";
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    if (fetchStatus == 3)
    {
      v9 = +[STUILog communication];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = givenName;
        v10 = "Syncing %@'s iCloud contacts.";
        goto LABEL_14;
      }

LABEL_15:
    }
  }

  else
  {
    if (!fetchStatus)
    {
      v9 = +[STUILog communication];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = givenName;
        v10 = "Did not fetch %@'s iCloud contacts.";
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    if (fetchStatus == 1)
    {
      v9 = +[STUILog communication];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = givenName;
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
  communicationLimits = [(STCommunicationLimitsListController *)self communicationLimits];
  contactManagementState = [communicationLimits contactManagementState];
  manageContactsSpecifier = [(STCommunicationLimitsListController *)self manageContactsSpecifier];
  familyMemberContactsController = [(STCommunicationLimitsListController *)self familyMemberContactsController];
  coordinator = [(STPINListViewController *)self coordinator];
  v8 = [(STCommunicationLimitsListController *)self _manageContacts:manageContactsSpecifier];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue && !contactManagementState)
  {
    if ([familyMemberContactsController countOfFamilyMemberContacts] >= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    [communicationLimits setContactManagementState:v10];
    contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
    [contentPrivacyCoordinator saveCommunicationLimits:communicationLimits completionHandler:0];
LABEL_7:

    goto LABEL_11;
  }

  if (contactManagementState == 2)
  {
    contentPrivacyCoordinator = [(STCommunicationLimitsListController *)self iCloudContactsSpecifier];
    if (([(STCommunicationLimitsListController *)self containsSpecifier:contentPrivacyCoordinator]& 1) == 0)
    {
      [(STCommunicationLimitsListController *)self insertSpecifier:contentPrivacyCoordinator afterSpecifier:manageContactsSpecifier animated:1];
    }

    goto LABEL_7;
  }

LABEL_11:
  [manageContactsSpecifier removePropertyForKey:*MEMORY[0x277D401A8]];
  [(STCommunicationLimitsListController *)self _updateManageContactsGroupFooterView];
  [(STCommunicationLimitsListController *)self _indicateiCloudContactsSyncingStatus];
  fetchStatus = [familyMemberContactsController fetchStatus];
  viewModel = [coordinator viewModel];
  v14 = [viewModel me];
  givenName = [v14 givenName];
  if (fetchStatus > 1)
  {
    if (fetchStatus == 2)
    {
      v16 = +[STUILog communication];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = givenName;
        v17 = "Finished syncing %@'s iCloud contacts.";
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    if (fetchStatus == 3)
    {
      v16 = +[STUILog communication];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = givenName;
        v17 = "Syncing %@'s iCloud contacts.";
        goto LABEL_24;
      }

LABEL_25:
    }
  }

  else
  {
    if (!fetchStatus)
    {
      v16 = +[STUILog communication];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = givenName;
        v17 = "Did not fetch %@'s iCloud contacts.";
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    if (fetchStatus == 1)
    {
      v16 = +[STUILog communication];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = givenName;
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
    manageContactsSpecifier = [(STCommunicationLimitsListController *)self manageContactsSpecifier];
    [manageContactsSpecifier removePropertyForKey:*MEMORY[0x277D401A8]];

    [(STCommunicationLimitsListController *)self _updateManageContactsGroupFooterView];

    [(STCommunicationLimitsListController *)self _indicateiCloudContactsSyncingStatus];
  }
}

- (void)_updateManageContactsGroupFooterView
{
  manageContactsGroupSpecifier = [(STCommunicationLimitsListController *)self manageContactsGroupSpecifier];
  if ([(STCommunicationLimitsListController *)self syncingiCloudContacts])
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    [manageContactsGroupSpecifier setObject:v4 forKeyedSubscript:*MEMORY[0x277D3FF48]];
  }

  else
  {
    [manageContactsGroupSpecifier removePropertyForKey:*MEMORY[0x277D3FF48]];
  }

  _manageContactsGroupFooterText = [(STCommunicationLimitsListController *)self _manageContactsGroupFooterText];
  [manageContactsGroupSpecifier setObject:_manageContactsGroupFooterText forKeyedSubscript:*MEMORY[0x277D3FF88]];

  [(STCommunicationLimitsListController *)self reloadSpecifier:manageContactsGroupSpecifier animated:0];
}

- (void)_indicateiCloudContactsSyncingStatus
{
  manageContactsGroupSpecifier = [(STCommunicationLimitsListController *)self manageContactsGroupSpecifier];
  v4 = [manageContactsGroupSpecifier objectForKeyedSubscript:*MEMORY[0x277D3FF90]];

  if ([(STCommunicationLimitsListController *)self syncingiCloudContacts])
  {
    [v4 startAnimatingSpinner];
  }

  else
  {
    [v4 stopAnimatingSpinner];
  }
}

- (void)_enableAllowContactEditingSwitch:(BOOL)switch
{
  switchCopy = switch;
  allowContactEditingSpecifier = [(STCommunicationLimitsListController *)self allowContactEditingSpecifier];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:switchCopy];
  [allowContactEditingSpecifier setObject:v5 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [(STCommunicationLimitsListController *)self reloadSpecifier:allowContactEditingSpecifier animated:1];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(STCommunicationLimitsListController *)self specifierAtIndexPath:pathCopy];
  iCloudContactsSpecifier = [(STCommunicationLimitsListController *)self iCloudContactsSpecifier];
  v10 = iCloudContactsSpecifier;
  if (v8 == iCloudContactsSpecifier)
  {
    communicationLimits = [(STCommunicationLimitsListController *)self communicationLimits];
    contactManagementState = [communicationLimits contactManagementState];

    if (contactManagementState != 2)
    {
      goto LABEL_7;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__STCommunicationLimitsListController_tableView_didSelectRowAtIndexPath___block_invoke;
    aBlock[3] = &unk_279B7CC40;
    v20 = viewCopy;
    v21 = pathCopy;
    selfCopy = self;
    v13 = _Block_copy(aBlock);
    coordinator = [(STPINListViewController *)self coordinator];
    viewModel = [coordinator viewModel];
    v16 = [viewModel me];
    if ([v16 hasPasscode])
    {
      hasAlreadyEnteredPINForSession = [coordinator hasAlreadyEnteredPINForSession];

      if ((hasAlreadyEnteredPINForSession & 1) == 0)
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
  [(STPINListViewController *)&v18 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
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