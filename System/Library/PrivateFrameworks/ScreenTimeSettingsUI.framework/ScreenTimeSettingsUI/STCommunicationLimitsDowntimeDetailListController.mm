@interface STCommunicationLimitsDowntimeDetailListController
- (id)_allowedCommunicationGroupFooterText:(id)a3;
- (id)_allowedContactsSpecifiers;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4;
- (int64_t)_downtimeCommunicationLimitForSpecifier:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_didFinishEditingCommunicationLimit;
- (void)_didFinishSyncingWhitelistedContacts;
- (void)_selectLeastRestrictiveOptionIfNecessary;
- (void)_startSyncingWhitelistedContacts;
- (void)_updateAllowedCommunicationGroupFooterText;
- (void)dismissPresentedViewController:(id)a3;
- (void)familyMemberContactsDidChange;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willResignActive;
@end

@implementation STCommunicationLimitsDowntimeDetailListController

- (void)viewDidLoad
{
  v27[3] = *MEMORY[0x277D85DE8];
  v3 = [(STCommunicationLimitsDowntimeDetailListController *)self specifier];
  v4 = [v3 objectForKeyedSubscript:0x287675C48];
  v5 = [v4 contentPrivacyCoordinator];
  v6 = [v5 viewModel];
  v7 = [v6 communicationLimits];
  v8 = [v7 copy];
  [(STCommunicationLimitsDowntimeDetailListController *)self setCommunicationLimits:v8];

  v9 = [v4 viewModel];
  v10 = [v9 me];

  if ([v10 isRemoteUser])
  {
    v11 = [v10 altDSID];
    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x277D08268]);
      v26[0] = @"member-first-name";
      v13 = [v10 givenName];
      v27[0] = v13;
      v26[1] = @"member-dsid";
      v14 = [v10 dsid];
      v26[2] = @"member-altDSID";
      v27[1] = v14;
      v27[2] = v11;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
      v16 = [v12 initWithDictionaryRepresentation:v15];
    }

    else
    {
      v13 = +[STUILog communication];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [(STCommunicationLimitsDowntimeDetailListController *)v13 viewDidLoad];
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
  v19 = [v3 name];
  v20 = [v18 localizedStringForKey:@"AllowedContactsSpecifierName" value:&stru_28766E5A8 table:0];
  v21 = [v19 isEqualToString:v20];

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

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(STCommunicationLimitsDowntimeDetailListController *)self _selectLeastRestrictiveOptionIfNecessary];
  [(STCommunicationLimitsDowntimeDetailListController *)self _didFinishEditingCommunicationLimit];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STCommunicationLimitsDowntimeDetailListController.viewWillDisappear", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = STCommunicationLimitsDowntimeDetailListController;
  [(STCommunicationLimitsDowntimeDetailListController *)&v5 viewWillDisappear:v3];
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
  v3 = [(STCommunicationLimitsDowntimeDetailListController *)self specifier];
  v8 = [v3 objectForKeyedSubscript:0x287675C48];

  v4 = [(STCommunicationLimitsDowntimeDetailListController *)self communicationLimits];
  v5 = [(STCommunicationLimitsDowntimeDetailListController *)self allowedCommunicationGroupSpecifier];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D40090]];

  [v4 setDowntimeCommunicationLimit:{-[STCommunicationLimitsDowntimeDetailListController _downtimeCommunicationLimitForSpecifier:](self, "_downtimeCommunicationLimitForSpecifier:", v6)}];
  v7 = [v8 contentPrivacyCoordinator];
  [v7 saveCommunicationLimits:v4 completionHandler:0];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v7 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v8 = [(STCommunicationLimitsDowntimeDetailListController *)self specifier];
    v9 = [v8 objectForKeyedSubscript:0x287675C48];

    v42 = v9;
    v10 = [v9 viewModel];
    v11 = [v10 me];
    v45 = v5;
    if ([v11 isRemoteUser])
    {
      v12 = [v11 givenName];
      v13 = +[STScreenTimeSettingsUIBundle bundle];
      v14 = v13;
      if (v12)
      {
        v15 = [v13 localizedStringForKey:@"CommunicationLimitsRemoteHeaderText" value:&stru_28766E5A8 table:0];

        v16 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v15, v12];
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
      v12 = +[STScreenTimeSettingsUIBundle bundle];
      v16 = [v12 localizedStringForKey:@"CommunicationLimitsLocalHeaderText" value:&stru_28766E5A8 table:0];
    }

    v40 = *MEMORY[0x277D3FF88];
    [v7 setObject:v16 forKeyedSubscript:?];

    v43 = v7;
    [v5 addObject:v7];
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
    v46 = [(STCommunicationLimitsDowntimeDetailListController *)self communicationLimits];
    v22 = [v46 screenTimeCommunicationLimit];
    v23 = 0;
    v44 = v6;
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v26 = [v6 localizedStringForKey:@"AllowContactsOnlySpecifierName" value:&stru_28766E5A8 table:0];
        v24 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v26 target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v21];
        [(STCommunicationLimitsDowntimeDetailListController *)self setAllowContactsOnlySpecifier:v24];
        [v45 addObject:v24];
        v23 = 0;
        goto LABEL_18;
      }

      v24 = 0;
      v25 = 0;
      if (v22 != 3)
      {
        goto LABEL_20;
      }

      v26 = [MEMORY[0x277CCA890] currentHandler];
      [v26 handleFailureInMethod:a2 object:self file:@"STCommunicationLimitsDowntimeDetailListController.m" lineNumber:166 description:@"Unexpected general communication policy whitelisted contacts"];
      v23 = 0;
    }

    else
    {
      if (!v22)
      {
        v26 = [v6 localizedStringForKey:@"AllowEveryoneSpecifierName" value:&stru_28766E5A8 table:0];
        v25 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v26 target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v25 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v21];
        [(STCommunicationLimitsDowntimeDetailListController *)self setAllowEveryoneSpecifier:v25];
        [v5 addObject:v25];
        v23 = 0;
        v24 = 0;
LABEL_19:

LABEL_20:
        v28 = [v46 downtimeCommunicationLimit];
        v41 = v17;
        if (v28 > 1)
        {
          if (v28 == 2)
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

          if (v28 == 3)
          {
            v29 = *MEMORY[0x277D40090];
            goto LABEL_35;
          }
        }

        else
        {
          if (!v28)
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
            v33 = [(STCommunicationLimitsDowntimeDetailListController *)self _allowedContactsSpecifiers];
            v32 = v45;
            [v45 addObjectsFromArray:v33];

            goto LABEL_36;
          }

          if (v28 == 1)
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
      if (v22 != 1)
      {
        goto LABEL_20;
      }

      v26 = [v44 localizedStringForKey:@"AllowGroupsWithOneContactSpecifierName" value:&stru_28766E5A8 table:0];
      v23 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v26 target:self set:0 get:0 detail:0 cell:3 edit:0];
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
  v39 = self;
  v6 = [(STCommunicationLimitsDowntimeDetailListController *)self specifier];
  v7 = [v6 objectForKeyedSubscript:0x287675C48];

  v35 = v7;
  v8 = [v7 viewModel];
  v9 = [v8 me];

  if ([v9 isRemoteUser] && objc_msgSend(v9, "hasPasscode"))
  {
    v10 = [v9 givenName];
    if (v10)
    {
      v11 = [v4 localizedStringForKey:@"AllowedContactsGroupSpecifierRemoteFooterText" value:&stru_28766E5A8 table:0];
      v12 = objc_alloc(MEMORY[0x277CCACA8]);
      v13 = [MEMORY[0x277CBEAF8] currentLocale];
      v14 = [v12 initWithFormat:v11 locale:v13, v10];
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
  v15 = [(STCommunicationLimitsDowntimeDetailListController *)v39 whitelistedContactsController];
  v16 = [v15 familyMemberContactItems];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
  v18 = *MEMORY[0x277D401A8];
  [v5 setObject:v17 forKeyedSubscript:*MEMORY[0x277D401A8]];

  [(STCommunicationLimitsDowntimeDetailListController *)v39 setAllowedContactsGroupSpecifier:v5];
  [v3 addObject:v5];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v16;
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
        v27 = [v25 label];
        v28 = [v26 preferenceSpecifierNamed:v27 target:v39 set:0 get:sel__allowedContactDetailLabelText_ detail:0 cell:2 edit:0];

        [v28 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v20];
        v29 = [v25 detailLabel];
        [v28 setObject:v29 forKeyedSubscript:v18];

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
  v32 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v31 target:v39 set:0 get:0 detail:0 cell:13 edit:0];
  [v32 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v20];
  [(STCommunicationLimitsDowntimeDetailListController *)v39 setAddContactsSpecifier:v32];
  [v3 addObject:v32];
  [(STCommunicationLimitsDowntimeDetailListController *)v39 setAllowedContactsSpecifiers:v3];

  return v3;
}

- (int64_t)_downtimeCommunicationLimitForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(STCommunicationLimitsDowntimeDetailListController *)self allowEveryoneSpecifier];

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v6 = [(STCommunicationLimitsDowntimeDetailListController *)self allowContactsOnlySpecifier];

    if (v6 == v4)
    {
      v8 = 2;
    }

    else
    {
      v7 = [(STCommunicationLimitsDowntimeDetailListController *)self allowGroupsWithOneContactSpecifier];

      if (v7 == v4)
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
    v3 = [(STCommunicationLimitsDowntimeDetailListController *)self allowedContactsGroupSpecifier];
    v4 = *MEMORY[0x277D401A8];
    v11 = v3;
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D401A8]];
    v6 = [v5 unsignedIntegerValue];

    v7 = [(STCommunicationLimitsDowntimeDetailListController *)self whitelistedContactsController];
    v8 = [v7 familyMemberContactItems];
    v9 = [v8 count];

    if (v6 != v9)
    {
      [(STCommunicationLimitsDowntimeDetailListController *)self reloadSpecifiers];
      [(STCommunicationLimitsDowntimeDetailListController *)self _selectLeastRestrictiveOptionIfNecessary];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
      [v11 setObject:v10 forKeyedSubscript:v4];
    }
  }
}

- (void)dismissPresentedViewController:(id)a3
{
  [(STCommunicationLimitsDowntimeDetailListController *)self dismissViewControllerAnimated:1 completion:0];

  [(STCommunicationLimitsDowntimeDetailListController *)self _selectLeastRestrictiveOptionIfNecessary];
}

- (void)_selectLeastRestrictiveOptionIfNecessary
{
  v14 = [(STCommunicationLimitsDowntimeDetailListController *)self allowedCommunicationGroupSpecifier];
  v3 = [(STCommunicationLimitsDowntimeDetailListController *)self whitelistedContactsController];
  v4 = [v3 familyMemberContactItems];
  if ([v4 count])
  {
LABEL_2:

    goto LABEL_4;
  }

  v5 = *MEMORY[0x277D40090];
  v6 = [v14 objectForKeyedSubscript:*MEMORY[0x277D40090]];
  v7 = [(STCommunicationLimitsDowntimeDetailListController *)self allowSpecificContactsSpecifier];

  if (v6 == v7)
  {
    v3 = [(STCommunicationLimitsDowntimeDetailListController *)self allowEveryoneSpecifier];
    v4 = [(STCommunicationLimitsDowntimeDetailListController *)self allowContactsOnlySpecifier];
    v8 = [(STCommunicationLimitsDowntimeDetailListController *)self allowGroupsWithOneContactSpecifier];
    v9 = v8;
    v10 = v3;
    if (v3 || (v10 = v4) != 0 || (v10 = v8) != 0)
    {
      [v14 setObject:v10 forKeyedSubscript:v5];
    }

    v11 = [(STCommunicationLimitsDowntimeDetailListController *)self allowedContactsGroupSpecifier];
    [(STCommunicationLimitsDowntimeDetailListController *)self removeSpecifier:v11 animated:1];

    [(STCommunicationLimitsDowntimeDetailListController *)self reloadSpecifier:v14 animated:0];
    v12 = [v14 objectForKeyedSubscript:v5];
    v13 = [(STCommunicationLimitsDowntimeDetailListController *)self _allowedCommunicationGroupFooterText:v12];
    [v14 setObject:v13 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [(STCommunicationLimitsDowntimeDetailListController *)self _updateAllowedCommunicationGroupFooterText];
    goto LABEL_2;
  }

LABEL_4:
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STCommunicationLimitsDowntimeDetailListController *)self specifierAtIndexPath:v7];
  v9 = [(STCommunicationLimitsDowntimeDetailListController *)self allowedContactsGroupSpecifier];
  v10 = [(STCommunicationLimitsDowntimeDetailListController *)self indexPathForSpecifier:v9];

  v11 = [(STCommunicationLimitsDowntimeDetailListController *)self allowedCommunicationGroupSpecifier];
  v12 = [(STCommunicationLimitsDowntimeDetailListController *)self indexPathForSpecifier:v11];

  v13 = [v7 section];
  if (v13 == [v12 section])
  {
    v29 = v10;
    v14 = [(STCommunicationLimitsDowntimeDetailListController *)self allowedCommunicationGroupSpecifier];
    v15 = [(STCommunicationLimitsDowntimeDetailListController *)self allowSpecificContactsSpecifier];
    v16 = [v14 objectForKeyedSubscript:*MEMORY[0x277D40090]];

    v33.receiver = self;
    v33.super_class = STCommunicationLimitsDowntimeDetailListController;
    [(STCommunicationLimitsDowntimeDetailListController *)&v33 tableView:v6 didSelectRowAtIndexPath:v7];
    v17 = [(STCommunicationLimitsDowntimeDetailListController *)self _downtimeCommunicationLimitForSpecifier:v8];
    v18 = [(STCommunicationLimitsDowntimeDetailListController *)self communicationLimits];
    [v18 setDowntimeCommunicationLimit:v17];

    if (v8 != v15 || v16 == v15)
    {
      if (v8 != v15 && v16 == v15)
      {
        v24 = [(STCommunicationLimitsDowntimeDetailListController *)self allowedContactsGroupSpecifier];
        [(STCommunicationLimitsDowntimeDetailListController *)self removeSpecifier:v24 animated:1];
      }
    }

    else
    {
      [(STCommunicationLimitsDowntimeDetailListController *)self _startSyncingWhitelistedContacts];
    }

    v25 = [(STCommunicationLimitsDowntimeDetailListController *)self _allowedCommunicationGroupFooterText:v8];
    [v14 setObject:v25 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [(STCommunicationLimitsDowntimeDetailListController *)self _updateAllowedCommunicationGroupFooterText];
    v26 = [(STCommunicationLimitsDowntimeDetailListController *)self allowEveryoneSpecifier];

    if (v8 != v26)
    {
      v27 = [(STCommunicationLimitsDowntimeDetailListController *)self specifier];
      v28 = [v27 objectForKeyedSubscript:0x287675C48];

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
    v19 = [v7 section];
    if (v19 == [v10 section])
    {
      v20 = [(STCommunicationLimitsDowntimeDetailListController *)self whitelistedContactsController];
      v21 = [(STCommunicationLimitsDowntimeDetailListController *)self addContactsSpecifier];

      if (v8 == v21)
      {
        [v20 performInteraction:0];
        v31.receiver = self;
        v31.super_class = STCommunicationLimitsDowntimeDetailListController;
        [(STCommunicationLimitsDowntimeDetailListController *)&v31 tableView:v6 didSelectRowAtIndexPath:v7];
      }

      else
      {
        [v6 deselectRowAtIndexPath:v7 animated:1];
        v22 = [v20 familyMemberContactItems];
        v23 = [v22 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
        [v20 presentDetailsOfFamilyMemberContactItem:v23];
      }
    }

    else
    {
      v30.receiver = self;
      v30.super_class = STCommunicationLimitsDowntimeDetailListController;
      [(STCommunicationLimitsDowntimeDetailListController *)&v30 tableView:v6 didSelectRowAtIndexPath:v7];
    }
  }
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(STCommunicationLimitsDowntimeDetailListController *)self allowedContactsGroupSpecifier];
  v7 = [(STCommunicationLimitsDowntimeDetailListController *)self indexPathForSpecifier:v6];

  v8 = [v5 section];
  v9 = v8 == [v7 section];

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v23.receiver = self;
  v23.super_class = STCommunicationLimitsDowntimeDetailListController;
  v7 = [(STCommunicationLimitsDowntimeDetailListController *)&v23 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(STCommunicationLimitsDowntimeDetailListController *)self allowedContactsGroupSpecifier];
  v9 = [(STCommunicationLimitsDowntimeDetailListController *)self indexPathForSpecifier:v8];

  v10 = [v6 section];
  if (v10 == [v9 section])
  {
    v11 = [(STCommunicationLimitsDowntimeDetailListController *)self addContactsSpecifier];
    v12 = [(STCommunicationLimitsDowntimeDetailListController *)self indexPathForSpecifier:v11];
    v13 = [v6 isEqual:v12];

    if ((v13 & 1) == 0)
    {
      [v7 setAccessibilityIdentifier:@"AllowedContact"];
    }
  }

  v14 = [(STCommunicationLimitsDowntimeDetailListController *)self specifierAtIndexPath:v6];
  v15 = [v14 objectForKeyedSubscript:@"UnreachableContact"];
  v16 = [v15 BOOLValue];

  if (v16)
  {
    v17 = [MEMORY[0x277D755D0] configurationWithScale:3];
    v18 = objc_alloc(MEMORY[0x277D755E8]);
    v19 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.circle" withConfiguration:v17];
    v20 = [v18 initWithImage:v19];

    v21 = [MEMORY[0x277D75348] systemRedColor];
    [v20 setTintColor:v21];

    [v7 setAccessoryView:v20];
  }

  return v7;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v7 = [a5 row];
  if (a4 == 1)
  {
    v8 = v7;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(STCommunicationLimitsDowntimeDetailListController *)self whitelistedContactsController];
      v9 = [v11 familyMemberContactItems];
      v10 = [v9 objectAtIndexedSubscript:v8];
      [v11 deleteFamilyMemberContactItem:v10];
    }
  }
}

- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  v9 = [(STCommunicationLimitsDowntimeDetailListController *)self allowedContactsGroupSpecifier];
  v10 = [(STCommunicationLimitsDowntimeDetailListController *)self indexPathForSpecifier:v9];
  v11 = [v10 section];

  if (v8 == v11)
  {
    v12 = +[STScreenTimeSettingsUIBundle bundle];
    v13 = [v12 localizedStringForKey:@"AllowedContactsDeleteConfirmationButtonTitle" value:&stru_28766E5A8 table:0];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = STCommunicationLimitsDowntimeDetailListController;
    v13 = [(STCommunicationLimitsDowntimeDetailListController *)&v15 tableView:v6 titleForDeleteConfirmationButtonForRowAtIndexPath:v7];
  }

  return v13;
}

- (void)_updateAllowedCommunicationGroupFooterText
{
  v3 = [(STCommunicationLimitsDowntimeDetailListController *)self allowedCommunicationGroupSpecifier];
  [(STCommunicationLimitsDowntimeDetailListController *)self reloadSpecifier:v3 animated:1];
}

- (id)_allowedCommunicationGroupFooterText:(id)a3
{
  v4 = a3;
  v5 = [(STCommunicationLimitsDowntimeDetailListController *)self allowEveryoneSpecifier];

  if (v5 == v4)
  {
    v7 = +[STScreenTimeSettingsUIBundle bundle];
    v18 = [v7 localizedStringForKey:@"DuringDowntimeEveryoneFooterText" value:&stru_28766E5A8 table:0];
  }

  else
  {
    v6 = [(STCommunicationLimitsDowntimeDetailListController *)self specifier];
    v7 = [v6 objectForKeyedSubscript:0x287675C48];

    v8 = [v7 viewModel];
    v9 = [v8 me];

    if ([v9 isRemoteUser])
    {
      v10 = [v9 givenName];
      if (v10)
      {
        v11 = [(STCommunicationLimitsDowntimeDetailListController *)self allowGroupsWithOneContactSpecifier];

        if (v11 == v4)
        {
          v27 = +[STScreenTimeSettingsUIBundle bundle];
          v16 = [v27 localizedStringForKey:@"DuringDowntimeGroupsWithOneContactRemoteFooterText" value:&stru_28766E5A8 table:0];

          v17 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v16, v10, v10];
        }

        else
        {
          v12 = [(STCommunicationLimitsDowntimeDetailListController *)self allowContactsOnlySpecifier];
          v13 = @"DuringDowntimeSpecificContactsRemoteFooterText";
          if (v12 == v4)
          {
            v13 = @"DuringDowntimeContactsOnlyRemoteFooterText";
          }

          v14 = v13;

          v15 = +[STScreenTimeSettingsUIBundle bundle];
          v16 = [v15 localizedStringForKey:v14 value:&stru_28766E5A8 table:0];

          v17 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:0, v10];
        }
      }

      else
      {
        v23 = [(STCommunicationLimitsDowntimeDetailListController *)self allowContactsOnlySpecifier];

        if (v23 == v4)
        {
          v25 = +[STScreenTimeSettingsUIBundle bundle];
          v16 = v25;
          v26 = @"DuringDowntimeContactsOnlyRemoteGenericFooterText";
        }

        else
        {
          v24 = [(STCommunicationLimitsDowntimeDetailListController *)self allowGroupsWithOneContactSpecifier];

          v25 = +[STScreenTimeSettingsUIBundle bundle];
          v16 = v25;
          if (v24 == v4)
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
      v19 = [(STCommunicationLimitsDowntimeDetailListController *)self allowContactsOnlySpecifier];

      if (v19 == v4)
      {
        v21 = +[STScreenTimeSettingsUIBundle bundle];
        v10 = v21;
        v22 = @"DuringDowntimeContactsOnlyLocalFooterText";
      }

      else
      {
        v20 = [(STCommunicationLimitsDowntimeDetailListController *)self allowGroupsWithOneContactSpecifier];

        v21 = +[STScreenTimeSettingsUIBundle bundle];
        v10 = v21;
        if (v20 == v4)
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
  v4 = [(STCommunicationLimitsDowntimeDetailListController *)self whitelistedContactsController];
  [v4 familyMemberContactItems];

  v3 = [v4 fetchStatus];
  if (v3 == 2)
  {
    [(STCommunicationLimitsDowntimeDetailListController *)self _didFinishSyncingWhitelistedContacts];
  }

  else
  {
    [(STCommunicationLimitsDowntimeDetailListController *)self setSyncingWhitelistedContacts:(v3 & 0xFFFFFFFFFFFFFFFDLL) == 1];
  }
}

- (void)_didFinishSyncingWhitelistedContacts
{
  [(STCommunicationLimitsDowntimeDetailListController *)self setSyncingWhitelistedContacts:0];
  v18 = [(STCommunicationLimitsDowntimeDetailListController *)self whitelistedContactsController];
  v3 = [v18 familyMemberContactItems];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(STCommunicationLimitsDowntimeDetailListController *)self allowedContactsSpecifiers];
    v6 = [(STCommunicationLimitsDowntimeDetailListController *)self allowEveryoneSpecifier];
    v7 = [(STCommunicationLimitsDowntimeDetailListController *)self allowContactsOnlySpecifier];
    v8 = [(STCommunicationLimitsDowntimeDetailListController *)self allowGroupsWithOneContactSpecifier];
    v9 = v8;
    v10 = v6;
    if (v6 || (v10 = v7) != 0 || (v10 = v8) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v5)
    {
      v12 = [(STCommunicationLimitsDowntimeDetailListController *)self allowedContactsGroupSpecifier];
      v13 = [(STCommunicationLimitsDowntimeDetailListController *)self containsSpecifier:v12];

      if ((v13 & 1) == 0)
      {
        [(STCommunicationLimitsDowntimeDetailListController *)self insertContiguousSpecifiers:v5 afterSpecifier:v11 animated:1];
      }
    }

    else
    {
      v14 = [(STCommunicationLimitsDowntimeDetailListController *)self _allowedContactsSpecifiers];
      [(STCommunicationLimitsDowntimeDetailListController *)self insertContiguousSpecifiers:v14 afterSpecifier:v11 animated:1];
    }

    v15 = [(STCommunicationLimitsDowntimeDetailListController *)self allowSpecificContactsSpecifier];
    v16 = [(STCommunicationLimitsDowntimeDetailListController *)self _allowedCommunicationGroupFooterText:v15];
    v17 = [(STCommunicationLimitsDowntimeDetailListController *)self allowedCommunicationGroupSpecifier];
    [v17 setObject:v16 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [(STCommunicationLimitsDowntimeDetailListController *)self _updateAllowedCommunicationGroupFooterText];
  }

  else
  {
    [v18 performInteraction:0];
  }
}

@end