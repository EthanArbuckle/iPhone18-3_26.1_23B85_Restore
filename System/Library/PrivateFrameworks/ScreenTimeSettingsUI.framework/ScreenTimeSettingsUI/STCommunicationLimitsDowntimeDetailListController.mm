@interface STCommunicationLimitsDowntimeDetailListController
- (id)_allowedCommunicationGroupFooterText:(id)text;
- (id)_allowedContactsSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (int64_t)_downtimeCommunicationLimitForSpecifier:(id)specifier;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_didFinishEditingCommunicationLimit;
- (void)_didFinishSyncingWhitelistedContacts;
- (void)_selectLeastRestrictiveOptionIfNecessary;
- (void)_startSyncingWhitelistedContacts;
- (void)_updateAllowedCommunicationGroupFooterText;
- (void)dismissPresentedViewController:(id)controller;
- (void)familyMemberContactsDidChange;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willResignActive;
@end

@implementation STCommunicationLimitsDowntimeDetailListController

- (void)viewDidLoad
{
  v27[3] = *MEMORY[0x277D85DE8];
  specifier = [(STCommunicationLimitsDowntimeDetailListController *)self specifier];
  v4 = [specifier objectForKeyedSubscript:0x287675C48];
  contentPrivacyCoordinator = [v4 contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  communicationLimits = [viewModel communicationLimits];
  v8 = [communicationLimits copy];
  [(STCommunicationLimitsDowntimeDetailListController *)self setCommunicationLimits:v8];

  viewModel2 = [v4 viewModel];
  v10 = [viewModel2 me];

  if ([v10 isRemoteUser])
  {
    altDSID = [v10 altDSID];
    if (altDSID)
    {
      v12 = objc_alloc(MEMORY[0x277D08268]);
      v26[0] = @"member-first-name";
      givenName = [v10 givenName];
      v27[0] = givenName;
      v26[1] = @"member-dsid";
      dsid = [v10 dsid];
      v26[2] = @"member-altDSID";
      v27[1] = dsid;
      v27[2] = altDSID;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
      v16 = [v12 initWithDictionaryRepresentation:v15];
    }

    else
    {
      givenName = +[STUILog communication];
      if (os_log_type_enabled(givenName, OS_LOG_TYPE_FAULT))
      {
        [(STCommunicationLimitsDowntimeDetailListController *)givenName viewDidLoad];
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_alloc(MEMORY[0x277CBDCA8]) initWithFamilyMember:v16 familyMemberContactsPresentation:self];
  [(STCommunicationLimitsDowntimeDetailListController *)self setWhitelistedContactsController:v17];

  v18 = +[STScreenTimeSettingsUIBundle bundle];
  name = [specifier name];
  v20 = [v18 localizedStringForKey:@"AllowedContactsSpecifierName" value:&stru_28766E5A8 table:0];
  v21 = [name isEqualToString:v20];

  if (v21)
  {
    v22 = @"AllowedCommunicationSectionTitle";
  }

  else
  {
    v22 = @"DuringDowntimeTitle";
  }

  v23 = [v18 localizedStringForKey:v22 value:&stru_28766E5A8 table:0];
  [(STCommunicationLimitsDowntimeDetailListController *)self setTitle:v23];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STCommunicationLimitsDowntimeDetailListController.viewDidLoad", buf, 2u);
  }

  v24.receiver = self;
  v24.super_class = STCommunicationLimitsDowntimeDetailListController;
  [(STCommunicationLimitsDowntimeDetailListController *)&v24 viewDidLoad];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(STCommunicationLimitsDowntimeDetailListController *)self _selectLeastRestrictiveOptionIfNecessary];
  [(STCommunicationLimitsDowntimeDetailListController *)self _didFinishEditingCommunicationLimit];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STCommunicationLimitsDowntimeDetailListController.viewWillDisappear", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = STCommunicationLimitsDowntimeDetailListController;
  [(STCommunicationLimitsDowntimeDetailListController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)willResignActive
{
  [(STCommunicationLimitsDowntimeDetailListController *)self _selectLeastRestrictiveOptionIfNecessary];
  [(STCommunicationLimitsDowntimeDetailListController *)self _didFinishEditingCommunicationLimit];
  v3.receiver = self;
  v3.super_class = STCommunicationLimitsDowntimeDetailListController;
  [(STCommunicationLimitsDowntimeDetailListController *)&v3 willResignActive];
}

- (void)_didFinishEditingCommunicationLimit
{
  specifier = [(STCommunicationLimitsDowntimeDetailListController *)self specifier];
  v8 = [specifier objectForKeyedSubscript:0x287675C48];

  communicationLimits = [(STCommunicationLimitsDowntimeDetailListController *)self communicationLimits];
  allowedCommunicationGroupSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowedCommunicationGroupSpecifier];
  v6 = [allowedCommunicationGroupSpecifier objectForKeyedSubscript:*MEMORY[0x277D40090]];

  [communicationLimits setDowntimeCommunicationLimit:{-[STCommunicationLimitsDowntimeDetailListController _downtimeCommunicationLimitForSpecifier:](self, "_downtimeCommunicationLimitForSpecifier:", v6)}];
  contentPrivacyCoordinator = [v8 contentPrivacyCoordinator];
  [contentPrivacyCoordinator saveCommunicationLimits:communicationLimits completionHandler:0];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    specifier = [(STCommunicationLimitsDowntimeDetailListController *)self specifier];
    v9 = [specifier objectForKeyedSubscript:0x287675C48];

    v42 = v9;
    viewModel = [v9 viewModel];
    v11 = [viewModel me];
    v45 = v5;
    if ([v11 isRemoteUser])
    {
      givenName = [v11 givenName];
      v13 = +[STScreenTimeSettingsUIBundle bundle];
      v14 = v13;
      if (givenName)
      {
        v15 = [v13 localizedStringForKey:@"CommunicationLimitsRemoteHeaderText" value:&stru_28766E5A8 table:0];

        v16 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v15, givenName];
        v14 = v15;
        v5 = v45;
      }

      else
      {
        v16 = [v13 localizedStringForKey:@"CommunicationLimitsRemoteGenericHeaderText" value:&stru_28766E5A8 table:0];
      }
    }

    else
    {
      givenName = +[STScreenTimeSettingsUIBundle bundle];
      v16 = [givenName localizedStringForKey:@"CommunicationLimitsLocalHeaderText" value:&stru_28766E5A8 table:0];
    }

    v40 = *MEMORY[0x277D3FF88];
    [emptyGroupSpecifier setObject:v16 forKeyedSubscript:?];

    v43 = emptyGroupSpecifier;
    [v5 addObject:emptyGroupSpecifier];
    v17 = [v6 localizedStringForKey:@"AllowedCommunicationSectionTitle" value:&stru_28766E5A8 table:0];
    v18 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:v17];
    v19 = MEMORY[0x277CBEC38];
    [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FFE8]];
    [(STCommunicationLimitsDowntimeDetailListController *)self setAllowedCommunicationGroupSpecifier:v18];
    [v5 addObject:v18];
    v39 = [v6 localizedStringForKey:@"AllowSpecificContactsSpecifierName" value:&stru_28766E5A8 table:0];
    v20 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    v21 = *MEMORY[0x277D3FF38];
    [v20 setObject:v19 forKeyedSubscript:*MEMORY[0x277D3FF38]];
    [(STCommunicationLimitsDowntimeDetailListController *)self setAllowSpecificContactsSpecifier:v20];
    [v5 addObject:v20];
    communicationLimits = [(STCommunicationLimitsDowntimeDetailListController *)self communicationLimits];
    screenTimeCommunicationLimit = [communicationLimits screenTimeCommunicationLimit];
    v23 = 0;
    v44 = v6;
    if (screenTimeCommunicationLimit > 1)
    {
      if (screenTimeCommunicationLimit == 2)
      {
        currentHandler = [v6 localizedStringForKey:@"AllowContactsOnlySpecifierName" value:&stru_28766E5A8 table:0];
        v24 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:currentHandler target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v21];
        [(STCommunicationLimitsDowntimeDetailListController *)self setAllowContactsOnlySpecifier:v24];
        [v45 addObject:v24];
        v23 = 0;
        goto LABEL_18;
      }

      v24 = 0;
      v25 = 0;
      if (screenTimeCommunicationLimit != 3)
      {
        goto LABEL_20;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"STCommunicationLimitsDowntimeDetailListController.m" lineNumber:166 description:@"Unexpected general communication policy whitelisted contacts"];
      v23 = 0;
    }

    else
    {
      if (!screenTimeCommunicationLimit)
      {
        currentHandler = [v6 localizedStringForKey:@"AllowEveryoneSpecifierName" value:&stru_28766E5A8 table:0];
        v25 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:currentHandler target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v25 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v21];
        [(STCommunicationLimitsDowntimeDetailListController *)self setAllowEveryoneSpecifier:v25];
        [v5 addObject:v25];
        v23 = 0;
        v24 = 0;
LABEL_19:

LABEL_20:
        downtimeCommunicationLimit = [communicationLimits downtimeCommunicationLimit];
        v41 = v17;
        if (downtimeCommunicationLimit > 1)
        {
          if (downtimeCommunicationLimit == 2)
          {
            v29 = *MEMORY[0x277D40090];
            if (v24)
            {
              v30 = v18;
              v31 = v24;
              goto LABEL_33;
            }

            goto LABEL_35;
          }

          if (downtimeCommunicationLimit == 3)
          {
            v29 = *MEMORY[0x277D40090];
            goto LABEL_35;
          }
        }

        else
        {
          if (!downtimeCommunicationLimit)
          {
            v29 = *MEMORY[0x277D40090];
            if (v25)
            {
              v30 = v18;
              v31 = v25;
              goto LABEL_33;
            }

LABEL_35:
            [v18 setObject:v20 forKeyedSubscript:v29];
            _allowedContactsSpecifiers = [(STCommunicationLimitsDowntimeDetailListController *)self _allowedContactsSpecifiers];
            v32 = v45;
            [v45 addObjectsFromArray:_allowedContactsSpecifiers];

            goto LABEL_36;
          }

          if (downtimeCommunicationLimit == 1)
          {
            v29 = *MEMORY[0x277D40090];
            if (v23)
            {
              v30 = v18;
              v31 = v23;
LABEL_33:
              [v30 setObject:v31 forKeyedSubscript:v29];
              goto LABEL_34;
            }

            goto LABEL_35;
          }
        }

        v29 = *MEMORY[0x277D40090];
LABEL_34:
        v32 = v45;
LABEL_36:
        v34 = [v18 objectForKeyedSubscript:v29];
        v35 = [(STCommunicationLimitsDowntimeDetailListController *)self _allowedCommunicationGroupFooterText:v34];
        [v18 setObject:v35 forKeyedSubscript:v40];

        v36 = *(&self->super.super.super.super.super.isa + v3);
        *(&self->super.super.super.super.super.isa + v3) = v32;

        v4 = *(&self->super.super.super.super.super.isa + v3);
        goto LABEL_37;
      }

      v24 = 0;
      v25 = 0;
      if (screenTimeCommunicationLimit != 1)
      {
        goto LABEL_20;
      }

      currentHandler = [v44 localizedStringForKey:@"AllowGroupsWithOneContactSpecifierName" value:&stru_28766E5A8 table:0];
      v23 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:currentHandler target:self set:0 get:0 detail:0 cell:3 edit:0];
      v27 = MEMORY[0x277CBEC38];
      [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
      [v23 setObject:v27 forKeyedSubscript:v21];
      [(STCommunicationLimitsDowntimeDetailListController *)self setAllowGroupsWithOneContactSpecifier:v23];
      [v45 addObject:v23];
    }

    v24 = 0;
LABEL_18:
    v25 = 0;
    goto LABEL_19;
  }

LABEL_37:

  return v4;
}

- (id)_allowedContactsSpecifiers
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = +[STScreenTimeSettingsUIBundle bundle];
  v36 = [v4 localizedStringForKey:@"AllowedContactsGroupSpecifierName" value:&stru_28766E5A8 table:0];
  v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:?];
  selfCopy = self;
  specifier = [(STCommunicationLimitsDowntimeDetailListController *)self specifier];
  v7 = [specifier objectForKeyedSubscript:0x287675C48];

  v35 = v7;
  viewModel = [v7 viewModel];
  v9 = [viewModel me];

  if ([v9 isRemoteUser] && objc_msgSend(v9, "hasPasscode"))
  {
    givenName = [v9 givenName];
    if (givenName)
    {
      v11 = [v4 localizedStringForKey:@"AllowedContactsGroupSpecifierRemoteFooterText" value:&stru_28766E5A8 table:0];
      v12 = objc_alloc(MEMORY[0x277CCACA8]);
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      v14 = [v12 initWithFormat:v11 locale:currentLocale, givenName];
      [v5 setObject:v14 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    }

    else
    {
      v11 = [v4 localizedStringForKey:@"AllowedContactsGroupSpecifierRemoteGenericFooterText" value:&stru_28766E5A8 table:0];
      [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    }
  }

  v34 = v9;
  v37 = v4;
  whitelistedContactsController = [(STCommunicationLimitsDowntimeDetailListController *)selfCopy whitelistedContactsController];
  familyMemberContactItems = [whitelistedContactsController familyMemberContactItems];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(familyMemberContactItems, "count")}];
  v18 = *MEMORY[0x277D401A8];
  [v5 setObject:v17 forKeyedSubscript:*MEMORY[0x277D401A8]];

  [(STCommunicationLimitsDowntimeDetailListController *)selfCopy setAllowedContactsGroupSpecifier:v5];
  [v3 addObject:v5];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = familyMemberContactItems;
  v19 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  v20 = *MEMORY[0x277D3FF38];
  if (v19)
  {
    v21 = v19;
    v22 = *v41;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        v24 = v3;
        if (*v41 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v40 + 1) + 8 * i);
        v26 = MEMORY[0x277D3FB40];
        label = [v25 label];
        v28 = [v26 preferenceSpecifierNamed:label target:selfCopy set:0 get:sel__allowedContactDetailLabelText_ detail:0 cell:2 edit:0];

        [v28 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v20];
        detailLabel = [v25 detailLabel];
        [v28 setObject:detailLabel forKeyedSubscript:v18];

        v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v25, "isUnreachable")}];
        [v28 setObject:v30 forKeyedSubscript:@"UnreachableContact"];

        v3 = v24;
        [v24 addObject:v28];
      }

      v21 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v21);
  }

  v31 = [v37 localizedStringForKey:@"AddContactsSpecifierName" value:&stru_28766E5A8 table:0];
  v32 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v31 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];
  [v32 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v20];
  [(STCommunicationLimitsDowntimeDetailListController *)selfCopy setAddContactsSpecifier:v32];
  [v3 addObject:v32];
  [(STCommunicationLimitsDowntimeDetailListController *)selfCopy setAllowedContactsSpecifiers:v3];

  return v3;
}

- (int64_t)_downtimeCommunicationLimitForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  allowEveryoneSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowEveryoneSpecifier];

  if (allowEveryoneSpecifier == specifierCopy)
  {
    v8 = 0;
  }

  else
  {
    allowContactsOnlySpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowContactsOnlySpecifier];

    if (allowContactsOnlySpecifier == specifierCopy)
    {
      v8 = 2;
    }

    else
    {
      allowGroupsWithOneContactSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowGroupsWithOneContactSpecifier];

      if (allowGroupsWithOneContactSpecifier == specifierCopy)
      {
        v8 = 1;
      }

      else
      {
        v8 = 3;
      }
    }
  }

  return v8;
}

- (void)familyMemberContactsDidChange
{
  if ([(STCommunicationLimitsDowntimeDetailListController *)self syncingWhitelistedContacts])
  {

    [(STCommunicationLimitsDowntimeDetailListController *)self _didFinishSyncingWhitelistedContacts];
  }

  else
  {
    allowedContactsGroupSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowedContactsGroupSpecifier];
    v4 = *MEMORY[0x277D401A8];
    v11 = allowedContactsGroupSpecifier;
    v5 = [allowedContactsGroupSpecifier objectForKeyedSubscript:*MEMORY[0x277D401A8]];
    unsignedIntegerValue = [v5 unsignedIntegerValue];

    whitelistedContactsController = [(STCommunicationLimitsDowntimeDetailListController *)self whitelistedContactsController];
    familyMemberContactItems = [whitelistedContactsController familyMemberContactItems];
    v9 = [familyMemberContactItems count];

    if (unsignedIntegerValue != v9)
    {
      [(STCommunicationLimitsDowntimeDetailListController *)self reloadSpecifiers];
      [(STCommunicationLimitsDowntimeDetailListController *)self _selectLeastRestrictiveOptionIfNecessary];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
      [v11 setObject:v10 forKeyedSubscript:v4];
    }
  }
}

- (void)dismissPresentedViewController:(id)controller
{
  [(STCommunicationLimitsDowntimeDetailListController *)self dismissViewControllerAnimated:1 completion:0];

  [(STCommunicationLimitsDowntimeDetailListController *)self _selectLeastRestrictiveOptionIfNecessary];
}

- (void)_selectLeastRestrictiveOptionIfNecessary
{
  allowedCommunicationGroupSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowedCommunicationGroupSpecifier];
  whitelistedContactsController = [(STCommunicationLimitsDowntimeDetailListController *)self whitelistedContactsController];
  familyMemberContactItems = [whitelistedContactsController familyMemberContactItems];
  if ([familyMemberContactItems count])
  {
LABEL_2:

    goto LABEL_4;
  }

  v5 = *MEMORY[0x277D40090];
  v6 = [allowedCommunicationGroupSpecifier objectForKeyedSubscript:*MEMORY[0x277D40090]];
  allowSpecificContactsSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowSpecificContactsSpecifier];

  if (v6 == allowSpecificContactsSpecifier)
  {
    whitelistedContactsController = [(STCommunicationLimitsDowntimeDetailListController *)self allowEveryoneSpecifier];
    familyMemberContactItems = [(STCommunicationLimitsDowntimeDetailListController *)self allowContactsOnlySpecifier];
    allowGroupsWithOneContactSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowGroupsWithOneContactSpecifier];
    v9 = allowGroupsWithOneContactSpecifier;
    v10 = whitelistedContactsController;
    if (whitelistedContactsController || (v10 = familyMemberContactItems) != 0 || (v10 = allowGroupsWithOneContactSpecifier) != 0)
    {
      [allowedCommunicationGroupSpecifier setObject:v10 forKeyedSubscript:v5];
    }

    allowedContactsGroupSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowedContactsGroupSpecifier];
    [(STCommunicationLimitsDowntimeDetailListController *)self removeSpecifier:allowedContactsGroupSpecifier animated:1];

    [(STCommunicationLimitsDowntimeDetailListController *)self reloadSpecifier:allowedCommunicationGroupSpecifier animated:0];
    v12 = [allowedCommunicationGroupSpecifier objectForKeyedSubscript:v5];
    v13 = [(STCommunicationLimitsDowntimeDetailListController *)self _allowedCommunicationGroupFooterText:v12];
    [allowedCommunicationGroupSpecifier setObject:v13 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [(STCommunicationLimitsDowntimeDetailListController *)self _updateAllowedCommunicationGroupFooterText];
    goto LABEL_2;
  }

LABEL_4:
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(STCommunicationLimitsDowntimeDetailListController *)self specifierAtIndexPath:pathCopy];
  allowedContactsGroupSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowedContactsGroupSpecifier];
  v10 = [(STCommunicationLimitsDowntimeDetailListController *)self indexPathForSpecifier:allowedContactsGroupSpecifier];

  allowedCommunicationGroupSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowedCommunicationGroupSpecifier];
  v12 = [(STCommunicationLimitsDowntimeDetailListController *)self indexPathForSpecifier:allowedCommunicationGroupSpecifier];

  section = [pathCopy section];
  if (section == [v12 section])
  {
    v29 = v10;
    allowedCommunicationGroupSpecifier2 = [(STCommunicationLimitsDowntimeDetailListController *)self allowedCommunicationGroupSpecifier];
    allowSpecificContactsSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowSpecificContactsSpecifier];
    v16 = [allowedCommunicationGroupSpecifier2 objectForKeyedSubscript:*MEMORY[0x277D40090]];

    v33.receiver = self;
    v33.super_class = STCommunicationLimitsDowntimeDetailListController;
    [(STCommunicationLimitsDowntimeDetailListController *)&v33 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
    v17 = [(STCommunicationLimitsDowntimeDetailListController *)self _downtimeCommunicationLimitForSpecifier:v8];
    communicationLimits = [(STCommunicationLimitsDowntimeDetailListController *)self communicationLimits];
    [communicationLimits setDowntimeCommunicationLimit:v17];

    if (v8 != allowSpecificContactsSpecifier || v16 == allowSpecificContactsSpecifier)
    {
      if (v8 != allowSpecificContactsSpecifier && v16 == allowSpecificContactsSpecifier)
      {
        allowedContactsGroupSpecifier2 = [(STCommunicationLimitsDowntimeDetailListController *)self allowedContactsGroupSpecifier];
        [(STCommunicationLimitsDowntimeDetailListController *)self removeSpecifier:allowedContactsGroupSpecifier2 animated:1];
      }
    }

    else
    {
      [(STCommunicationLimitsDowntimeDetailListController *)self _startSyncingWhitelistedContacts];
    }

    v25 = [(STCommunicationLimitsDowntimeDetailListController *)self _allowedCommunicationGroupFooterText:v8];
    [allowedCommunicationGroupSpecifier2 setObject:v25 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [(STCommunicationLimitsDowntimeDetailListController *)self _updateAllowedCommunicationGroupFooterText];
    allowEveryoneSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowEveryoneSpecifier];

    if (v8 != allowEveryoneSpecifier)
    {
      specifier = [(STCommunicationLimitsDowntimeDetailListController *)self specifier];
      v28 = [specifier objectForKeyedSubscript:0x287675C48];

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __87__STCommunicationLimitsDowntimeDetailListController_tableView_didSelectRowAtIndexPath___block_invoke;
      v32[3] = &unk_279B7D160;
      v32[4] = self;
      [STCommunicationLimitsScreenTimeDetailListController showCompatibilityAlertIfNeededWithCoordinator:v28 presentingViewController:self okHandler:v32];
    }

    v10 = v29;
  }

  else
  {
    section2 = [pathCopy section];
    if (section2 == [v10 section])
    {
      whitelistedContactsController = [(STCommunicationLimitsDowntimeDetailListController *)self whitelistedContactsController];
      addContactsSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self addContactsSpecifier];

      if (v8 == addContactsSpecifier)
      {
        [whitelistedContactsController performInteraction:0];
        v31.receiver = self;
        v31.super_class = STCommunicationLimitsDowntimeDetailListController;
        [(STCommunicationLimitsDowntimeDetailListController *)&v31 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
      }

      else
      {
        [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
        familyMemberContactItems = [whitelistedContactsController familyMemberContactItems];
        v23 = [familyMemberContactItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
        [whitelistedContactsController presentDetailsOfFamilyMemberContactItem:v23];
      }
    }

    else
    {
      v30.receiver = self;
      v30.super_class = STCommunicationLimitsDowntimeDetailListController;
      [(STCommunicationLimitsDowntimeDetailListController *)&v30 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
    }
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  allowedContactsGroupSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowedContactsGroupSpecifier];
  v7 = [(STCommunicationLimitsDowntimeDetailListController *)self indexPathForSpecifier:allowedContactsGroupSpecifier];

  section = [pathCopy section];
  v9 = section == [v7 section];

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v23.receiver = self;
  v23.super_class = STCommunicationLimitsDowntimeDetailListController;
  v7 = [(STCommunicationLimitsDowntimeDetailListController *)&v23 tableView:view cellForRowAtIndexPath:pathCopy];
  allowedContactsGroupSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowedContactsGroupSpecifier];
  v9 = [(STCommunicationLimitsDowntimeDetailListController *)self indexPathForSpecifier:allowedContactsGroupSpecifier];

  section = [pathCopy section];
  if (section == [v9 section])
  {
    addContactsSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self addContactsSpecifier];
    v12 = [(STCommunicationLimitsDowntimeDetailListController *)self indexPathForSpecifier:addContactsSpecifier];
    v13 = [pathCopy isEqual:v12];

    if ((v13 & 1) == 0)
    {
      [v7 setAccessibilityIdentifier:@"AllowedContact"];
    }
  }

  v14 = [(STCommunicationLimitsDowntimeDetailListController *)self specifierAtIndexPath:pathCopy];
  v15 = [v14 objectForKeyedSubscript:@"UnreachableContact"];
  bOOLValue = [v15 BOOLValue];

  if (bOOLValue)
  {
    v17 = [MEMORY[0x277D755D0] configurationWithScale:3];
    v18 = objc_alloc(MEMORY[0x277D755E8]);
    v19 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.circle" withConfiguration:v17];
    v20 = [v18 initWithImage:v19];

    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    [v20 setTintColor:systemRedColor];

    [v7 setAccessoryView:v20];
  }

  return v7;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v7 = [path row];
  if (style == 1)
  {
    v8 = v7;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      whitelistedContactsController = [(STCommunicationLimitsDowntimeDetailListController *)self whitelistedContactsController];
      familyMemberContactItems = [whitelistedContactsController familyMemberContactItems];
      v10 = [familyMemberContactItems objectAtIndexedSubscript:v8];
      [whitelistedContactsController deleteFamilyMemberContactItem:v10];
    }
  }
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  allowedContactsGroupSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowedContactsGroupSpecifier];
  v10 = [(STCommunicationLimitsDowntimeDetailListController *)self indexPathForSpecifier:allowedContactsGroupSpecifier];
  section2 = [v10 section];

  if (section == section2)
  {
    v12 = +[STScreenTimeSettingsUIBundle bundle];
    v13 = [v12 localizedStringForKey:@"AllowedContactsDeleteConfirmationButtonTitle" value:&stru_28766E5A8 table:0];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = STCommunicationLimitsDowntimeDetailListController;
    v13 = [(STCommunicationLimitsDowntimeDetailListController *)&v15 tableView:viewCopy titleForDeleteConfirmationButtonForRowAtIndexPath:pathCopy];
  }

  return v13;
}

- (void)_updateAllowedCommunicationGroupFooterText
{
  allowedCommunicationGroupSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowedCommunicationGroupSpecifier];
  [(STCommunicationLimitsDowntimeDetailListController *)self reloadSpecifier:allowedCommunicationGroupSpecifier animated:1];
}

- (id)_allowedCommunicationGroupFooterText:(id)text
{
  textCopy = text;
  allowEveryoneSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowEveryoneSpecifier];

  if (allowEveryoneSpecifier == textCopy)
  {
    v7 = +[STScreenTimeSettingsUIBundle bundle];
    v18 = [v7 localizedStringForKey:@"DuringDowntimeEveryoneFooterText" value:&stru_28766E5A8 table:0];
  }

  else
  {
    specifier = [(STCommunicationLimitsDowntimeDetailListController *)self specifier];
    v7 = [specifier objectForKeyedSubscript:0x287675C48];

    viewModel = [v7 viewModel];
    v9 = [viewModel me];

    if ([v9 isRemoteUser])
    {
      givenName = [v9 givenName];
      if (givenName)
      {
        allowGroupsWithOneContactSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowGroupsWithOneContactSpecifier];

        if (allowGroupsWithOneContactSpecifier == textCopy)
        {
          v27 = +[STScreenTimeSettingsUIBundle bundle];
          v16 = [v27 localizedStringForKey:@"DuringDowntimeGroupsWithOneContactRemoteFooterText" value:&stru_28766E5A8 table:0];

          v17 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v16, givenName, givenName];
        }

        else
        {
          allowContactsOnlySpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowContactsOnlySpecifier];
          v13 = @"DuringDowntimeSpecificContactsRemoteFooterText";
          if (allowContactsOnlySpecifier == textCopy)
          {
            v13 = @"DuringDowntimeContactsOnlyRemoteFooterText";
          }

          v14 = v13;

          v15 = +[STScreenTimeSettingsUIBundle bundle];
          v16 = [v15 localizedStringForKey:v14 value:&stru_28766E5A8 table:0];

          v17 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:0, givenName];
        }
      }

      else
      {
        allowContactsOnlySpecifier2 = [(STCommunicationLimitsDowntimeDetailListController *)self allowContactsOnlySpecifier];

        if (allowContactsOnlySpecifier2 == textCopy)
        {
          v25 = +[STScreenTimeSettingsUIBundle bundle];
          v16 = v25;
          v26 = @"DuringDowntimeContactsOnlyRemoteGenericFooterText";
        }

        else
        {
          allowGroupsWithOneContactSpecifier2 = [(STCommunicationLimitsDowntimeDetailListController *)self allowGroupsWithOneContactSpecifier];

          v25 = +[STScreenTimeSettingsUIBundle bundle];
          v16 = v25;
          if (allowGroupsWithOneContactSpecifier2 == textCopy)
          {
            v26 = @"DuringDowntimeGroupsWithOneContactRemoteGenericFooterText";
          }

          else
          {
            v26 = @"DuringDowntimeSpecificContactsRemoteGenericFooterText";
          }
        }

        v17 = [v25 localizedStringForKey:v26 value:&stru_28766E5A8 table:0];
      }

      v18 = v17;
    }

    else
    {
      allowContactsOnlySpecifier3 = [(STCommunicationLimitsDowntimeDetailListController *)self allowContactsOnlySpecifier];

      if (allowContactsOnlySpecifier3 == textCopy)
      {
        v21 = +[STScreenTimeSettingsUIBundle bundle];
        givenName = v21;
        v22 = @"DuringDowntimeContactsOnlyLocalFooterText";
      }

      else
      {
        allowGroupsWithOneContactSpecifier3 = [(STCommunicationLimitsDowntimeDetailListController *)self allowGroupsWithOneContactSpecifier];

        v21 = +[STScreenTimeSettingsUIBundle bundle];
        givenName = v21;
        if (allowGroupsWithOneContactSpecifier3 == textCopy)
        {
          v22 = @"DuringDowntimeGroupsWithOneContactLocalFooterText";
        }

        else
        {
          v22 = @"DuringDowntimeSpecificContactsLocalFooterText";
        }
      }

      v18 = [v21 localizedStringForKey:v22 value:&stru_28766E5A8 table:0];
    }
  }

  return v18;
}

- (void)_startSyncingWhitelistedContacts
{
  whitelistedContactsController = [(STCommunicationLimitsDowntimeDetailListController *)self whitelistedContactsController];
  [whitelistedContactsController familyMemberContactItems];

  fetchStatus = [whitelistedContactsController fetchStatus];
  if (fetchStatus == 2)
  {
    [(STCommunicationLimitsDowntimeDetailListController *)self _didFinishSyncingWhitelistedContacts];
  }

  else
  {
    [(STCommunicationLimitsDowntimeDetailListController *)self setSyncingWhitelistedContacts:(fetchStatus & 0xFFFFFFFFFFFFFFFDLL) == 1];
  }
}

- (void)_didFinishSyncingWhitelistedContacts
{
  [(STCommunicationLimitsDowntimeDetailListController *)self setSyncingWhitelistedContacts:0];
  whitelistedContactsController = [(STCommunicationLimitsDowntimeDetailListController *)self whitelistedContactsController];
  familyMemberContactItems = [whitelistedContactsController familyMemberContactItems];
  v4 = [familyMemberContactItems count];

  if (v4)
  {
    allowedContactsSpecifiers = [(STCommunicationLimitsDowntimeDetailListController *)self allowedContactsSpecifiers];
    allowEveryoneSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowEveryoneSpecifier];
    allowContactsOnlySpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowContactsOnlySpecifier];
    allowGroupsWithOneContactSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowGroupsWithOneContactSpecifier];
    v9 = allowGroupsWithOneContactSpecifier;
    v10 = allowEveryoneSpecifier;
    if (allowEveryoneSpecifier || (v10 = allowContactsOnlySpecifier) != 0 || (v10 = allowGroupsWithOneContactSpecifier) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (allowedContactsSpecifiers)
    {
      allowedContactsGroupSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowedContactsGroupSpecifier];
      v13 = [(STCommunicationLimitsDowntimeDetailListController *)self containsSpecifier:allowedContactsGroupSpecifier];

      if ((v13 & 1) == 0)
      {
        [(STCommunicationLimitsDowntimeDetailListController *)self insertContiguousSpecifiers:allowedContactsSpecifiers afterSpecifier:v11 animated:1];
      }
    }

    else
    {
      _allowedContactsSpecifiers = [(STCommunicationLimitsDowntimeDetailListController *)self _allowedContactsSpecifiers];
      [(STCommunicationLimitsDowntimeDetailListController *)self insertContiguousSpecifiers:_allowedContactsSpecifiers afterSpecifier:v11 animated:1];
    }

    allowSpecificContactsSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowSpecificContactsSpecifier];
    v16 = [(STCommunicationLimitsDowntimeDetailListController *)self _allowedCommunicationGroupFooterText:allowSpecificContactsSpecifier];
    allowedCommunicationGroupSpecifier = [(STCommunicationLimitsDowntimeDetailListController *)self allowedCommunicationGroupSpecifier];
    [allowedCommunicationGroupSpecifier setObject:v16 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [(STCommunicationLimitsDowntimeDetailListController *)self _updateAllowedCommunicationGroupFooterText];
  }

  else
  {
    [whitelistedContactsController performInteraction:0];
  }
}

@end