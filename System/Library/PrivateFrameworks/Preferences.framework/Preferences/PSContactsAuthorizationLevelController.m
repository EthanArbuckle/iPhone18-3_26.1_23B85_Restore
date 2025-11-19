@interface PSContactsAuthorizationLevelController
- (BOOL)isAppLinkedWithContactsLimitedAccessSupportedSDK;
- (PSSpecifier)fullAccessSpecifier;
- (PSSpecifier)limitedAccessSpecifier;
- (id)_limitedAccessSectionSpecifiers;
- (id)_parentTCCSpecifiers;
- (id)_pickerUsageSectionSpecifiers;
- (id)footerStringForSpecifiers:(id)a3;
- (id)specifiers;
- (uint64_t)dealloc;
- (unint64_t)_currentTCCAuthorizationRight;
- (void)_addLimitedAccessSection;
- (void)_addPickerUsageSectionIfNeeded;
- (void)_handleContactStoreDidChangeNotification:(id)a3;
- (void)_handleUpgradePromptNotification:(id)a3;
- (void)_limitedAccessSectionSpecifiers;
- (void)_presentContactsPickerForModifyingSelection;
- (void)_removeLimitedAccessSectionIfPresent;
- (void)_removePickerUsageSectionIfPresent;
- (void)contactPicker:(Class)a3 didSelectContacts:(id)a4;
- (void)dealloc;
- (void)setSpecifier:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateContactsCountSubtitleForSpecifier:(id)a3 contactsTCCAccess:(int)a4;
- (void)viewDidLoad;
@end

@implementation PSContactsAuthorizationLevelController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PSContactsAuthorizationLevelController;
  [(PSListItemsController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleUpgradePromptNotification_ name:@"PSContactsPrivacyUpgradePromptCompletedNotification" object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__handleUpgradePromptNotification_ name:@"PSContactsPrivacyUpgradePromptCompletedNotification" object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"PSContactsPrivacyUpgradePromptCompletedNotification" object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v5 = getCNContactStoreDidChangeNotificationSymbolLoc_ptr;
  v17 = getCNContactStoreDidChangeNotificationSymbolLoc_ptr;
  if (!getCNContactStoreDidChangeNotificationSymbolLoc_ptr)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __getCNContactStoreDidChangeNotificationSymbolLoc_block_invoke;
    v12 = &unk_1E71DBC78;
    v13 = &v14;
    v6 = ContactsLibrary();
    v15[3] = dlsym(v6, "CNContactStoreDidChangeNotification");
    getCNContactStoreDidChangeNotificationSymbolLoc_ptr = *(v13[1] + 24);
    v5 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v5)
  {
    v7 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v14, 8);
    _Unwind_Resume(v7);
  }

  [v4 removeObserver:self name:*v5 object:0];

  v8.receiver = self;
  v8.super_class = PSContactsAuthorizationLevelController;
  [(PSListItemsController *)&v8 dealloc];
}

- (void)_handleUpgradePromptNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"PSContactsPrivacyUpgradePromptAppIdentifierKey"];
  v6 = [(PSContactsAuthorizationLevelController *)self serviceKey];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__PSContactsAuthorizationLevelController__handleUpgradePromptNotification___block_invoke;
    block[3] = &unk_1E71DBE20;
    block[4] = self;
    dispatch_after(v8, MEMORY[0x1E69E96A0], block);
  }
}

- (void)_handleContactStoreDidChangeNotification:(id)a3
{
  v4 = [(PSContactsAuthorizationLevelController *)self fullAccessSpecifier];
  [(PSContactsAuthorizationLevelController *)self updateContactsCountSubtitleForSpecifier:v4 contactsTCCAccess:2];
  [(PSListController *)self reloadSpecifier:v4];
}

- (unint64_t)_currentTCCAuthorizationRight
{
  if (_currentTCCAuthorizationRight_onceToken != -1)
  {
    [PSContactsAuthorizationLevelController _currentTCCAuthorizationRight];
  }

  [(NSString *)self->_serviceKey cStringUsingEncoding:4];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5 = tcc_identity_create();
  tcc_server_message_get_authorization_records_by_identity();
  v3 = v7[3];

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __71__PSContactsAuthorizationLevelController__currentTCCAuthorizationRight__block_invoke()
{
  v0 = tcc_server_create();
  v1 = _currentTCCAuthorizationRight_tccServer;
  _currentTCCAuthorizationRight_tccServer = v0;
}

void __71__PSContactsAuthorizationLevelController__currentTCCAuthorizationRight__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    v6 = tcc_authorization_record_get_service();
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:tcc_service_get_name() encoding:4];
    if ([v7 isEqualToString:@"kTCCServiceAddressBook"])
    {
      *(*(*(a1 + 40) + 8) + 24) = tcc_authorization_record_get_authorization_right();
    }
  }

  else
  {
    v8 = _PSLoggingFacility();
    v6 = v8;
    if (a3)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __71__PSContactsAuthorizationLevelController__currentTCCAuthorizationRight__block_invoke_2_cold_1();
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "Finished getting Contacts authorization for identity: %@", &v10, 0xCu);
    }
  }
}

- (id)_parentTCCSpecifiers
{
  v39 = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = PSContactsAuthorizationLevelController;
  v2 = [(PSListItemsController *)&v36 specifiers];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v5)
  {
    v6 = *v33;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        if (v8[7] == 3)
        {
          v9 = [v8 identifier];
          v10 = [v9 intValue];

          if (v10 == 4)
          {
            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    v15 = v5 ^ 1;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v28 + 1) + 8 * j);
        v18 = [v17 identifier];
        v19 = [v18 intValue];

        v20 = v17[7];
        if (v20 != 3 || v19 != 4)
        {
          if (v20 == 3)
          {
            v22 = v15;
          }

          else
          {
            v22 = 1;
          }

          if ((v22 & 1) != 0 || v19)
          {
            if (v20 == 3 && (v19 - 1) <= 1)
            {
              [v17 setProperty:objc_opt_class() forKey:@"cellClass"];
              [(PSContactsAuthorizationLevelController *)self updateContactsCountSubtitleForSpecifier:v17 contactsTCCAccess:v19];
            }
          }

          else
          {
            v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 0];
            [v17 setIdentifier:v23];
          }

          [v3 addObject:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v13);
  }

  v25 = [v3 copy];

  return v25;
}

- (void)setSpecifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = PSContactsAuthorizationLevelController;
  v4 = a3;
  [(PSListController *)&v9 setSpecifier:v4];
  v5 = [v4 propertyForKey:{@"appBundleID", v9.receiver, v9.super_class}];
  serviceKey = self->_serviceKey;
  self->_serviceKey = v5;

  v7 = [v4 propertyForKey:@"appLocalizedDisplayName"];

  displayName = self->_displayName;
  self->_displayName = v7;
}

- (id)footerStringForSpecifiers:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 values];
        v10 = [v9 firstObject];
        v11 = [v10 isEqual:&unk_1EFE65A00];

        v12 = [v8 values];
        v13 = [v12 firstObject];
        v14 = [v13 isEqual:&unk_1EFE65A18];

        if ((v11 & 1) != 0 || v14)
        {

          v15 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_PRIVACY_FOOTER");
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)_pickerUsageSectionSpecifiers
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = bundleIdentifiersWithPickerAccess();
  if ([v3 containsObject:self->_serviceKey])
  {
    pickerUsageSectionSpecifiers = self->_pickerUsageSectionSpecifiers;
    if (!pickerUsageSectionSpecifiers)
    {
      v5 = [PSSpecifier groupSpecifierWithName:0];
      [v5 setProperty:@"CONTACTS_PICKER_INFO_GROUP" forKey:@"id"];
      v6 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
      [v6 setProperty:@"CONTACTS_PICKER_INFO_CELL" forKey:@"id"];
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DE3D0]];
      [v6 setProperty:v7 forKey:@"height"];

      [v6 setProperty:objc_opt_class() forKey:@"cellClass"];
      v12[0] = v5;
      v12[1] = v6;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
      v9 = self->_pickerUsageSectionSpecifiers;
      self->_pickerUsageSectionSpecifiers = v8;

      pickerUsageSectionSpecifiers = self->_pickerUsageSectionSpecifiers;
    }

    v10 = pickerUsageSectionSpecifiers;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (id)_limitedAccessSectionSpecifiers
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (!self->_limitedAccessSectionSpecifiers)
  {
    v3 = +[PSSpecifier emptyGroupSpecifier];
    [v3 setProperty:@"CONTACTS_MANUAL_SELECTION_GROUP" forKey:@"id"];
    v4 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_MANUAL_SELECTION_BUTTON");
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];

    v6 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v5 setProperty:v6 forKey:@"enabled"];

    [v5 setProperty:@"CONTACTS_MANUAL_SELECTION_BUTTON" forKey:@"id"];
    [v5 setButtonAction:sel__presentContactsPickerForModifyingSelection];
    v15[0] = v3;
    v15[1] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    limitedAccessSectionSpecifiers = self->_limitedAccessSectionSpecifiers;
    self->_limitedAccessSectionSpecifiers = v7;
  }

  v9 = [(PSContactsAuthorizationLevelController *)self _currentTCCAuthorizationRight];
  if (v9 == 3)
  {
    v10 = self->_limitedAccessSectionSpecifiers;
  }

  else
  {
    v11 = v9;
    v12 = [MEMORY[0x1E69DC938] currentDevice];
    if (([v12 sf_isInternalInstall] & 1) != 0 || PSDiagnosticsAreEnabled())
    {
      v13 = _PSLoggingFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(PSContactsAuthorizationLevelController *)v11 _limitedAccessSectionSpecifiers];
      }
    }

    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (void)updateContactsCountSubtitleForSpecifier:(id)a3 contactsTCCAccess:(int)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PSContactsAuthorizationLevelController *)self serviceKey];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v8 = getCNContactStoreClass_softClass;
  v26 = getCNContactStoreClass_softClass;
  if (!getCNContactStoreClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v28 = __getCNContactStoreClass_block_invoke;
    v29 = &unk_1E71DBC78;
    v30 = &v23;
    __getCNContactStoreClass_block_invoke(&buf);
    v8 = v24[3];
  }

  v9 = v8;
  _Block_object_dispose(&v23, 8);
  v10 = objc_alloc_init(v8);
  v11 = v10;
  if (a4 == 1)
  {
    v12 = [v10 getLimitedAccessContactsCountForBundle:v7];
    if (v12)
    {
      v14 = 0;
      goto LABEL_17;
    }

    v15 = _PSLoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_18B008000, v15, OS_LOG_TYPE_DEFAULT, "Error: unable to get contacts count from ContactStore for %@", &buf, 0xCu);
    }

    v14 = 0;
    goto LABEL_15;
  }

  if (a4 != 2)
  {
    v14 = 0;
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v23 = 0;
  v12 = [v10 unifiedContactCountWithError:&v23];
  v13 = v23;
  v14 = v13;
  if (!v12 && v13)
  {
    v15 = _PSLoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_18B008000, v15, OS_LOG_TYPE_DEFAULT, "Error: unable to get contacts count from ContactStore (%@)", &buf, 0xCu);
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_17:
  v16 = v12;

  if (a4 == 1)
  {
    if ([v16 longValue] < 1)
    {
      v21 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_LIMITEDACCESS_NOCONTACTS_COUNT_SECONDARY_LABEL");
      [v6 setProperty:v21 forKey:@"cellSubtitleText"];
    }

    else
    {
      v20 = MEMORY[0x1E696AEC0];
      v21 = PS_LocalizedStringForSystemPolicy(@"LIMITEDACCESS_CONTACTS_COUNT_SECONDARY_LABEL");
      v22 = [v20 localizedStringWithFormat:v21, objc_msgSend(v16, "longValue")];
      [v6 setProperty:v22 forKey:@"cellSubtitleText"];
    }

    [(PSContactsAuthorizationLevelController *)self setLimitedAccessCount:v16];
    [(PSContactsAuthorizationLevelController *)self setLimitedAccessSpecifier:v6];
  }

  else if (a4 == 2)
  {
    if ([v16 longValue] < 1)
    {
      v18 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_FULLACCESS_NOCONTACTS_COUNT_SECONDARY_LABEL");
      [v6 setProperty:v18 forKey:@"cellSubtitleText"];
    }

    else
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = PS_LocalizedStringForSystemPolicy(@"FULLACCESS_CONTACTS_COUNT_SECONDARY_LABEL");
      v19 = [v17 localizedStringWithFormat:v18, objc_msgSend(v16, "longValue")];
      [v6 setProperty:v19 forKey:@"cellSubtitleText"];
    }

    [(PSContactsAuthorizationLevelController *)self setFullAccessSpecifier:v6];
  }

  [(PSListController *)self reloadSpecifier:v6];
}

- (void)contactPicker:(Class)a3 didSelectContacts:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [(PSContactsAuthorizationLevelController *)self limitedAccessSpecifier:a3];
  [(PSContactsAuthorizationLevelController *)self updateContactsCountSubtitleForSpecifier:v5 contactsTCCAccess:1];
  [(PSListController *)self reloadSpecifier:v5];
  if (![(PSContactsAuthorizationLevelController *)self isAppLinkedWithContactsLimitedAccessSupportedSDK])
  {
    v6 = _PSLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(PSContactsAuthorizationLevelController *)self displayName];
      v8 = [(PSContactsAuthorizationLevelController *)self serviceKey];
      *buf = 138412546;
      v28 = v7;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "App %@(%@) is linked using SDK that doesn't support LimitedAccess for Contacts", buf, 0x16u);
    }

    v9 = [objc_alloc(MEMORY[0x1E69C7650]) initWithExplanation:@"Terminating app as selected contacts changed for legacy linked app"];
    if (!v9)
    {
      goto LABEL_22;
    }

    v10 = objc_alloc(MEMORY[0x1E69635D8]);
    v11 = [(PSContactsAuthorizationLevelController *)self serviceKey];
    v12 = [v10 initWithBundleIdentifier:v11 URL:0 personaUniqueString:0 personaType:4];

    v13 = [MEMORY[0x1E69C75F0] identityForLSApplicationIdentity:v12];
    if (!v13)
    {
      v14 = _PSLoggingFacility();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }

      v16 = [(PSContactsAuthorizationLevelController *)self displayName];
      v24 = [(PSContactsAuthorizationLevelController *)self serviceKey];
      *buf = 138412546;
      v28 = v16;
      v29 = 2112;
      v30 = v24;
      _os_log_impl(&dword_18B008000, v14, OS_LOG_TYPE_DEFAULT, "Unable to get process identity for %@(%@)", buf, 0x16u);

LABEL_20:
      goto LABEL_21;
    }

    v14 = [MEMORY[0x1E69C7610] predicateMatchingIdentity:v13];
    v15 = [objc_alloc(MEMORY[0x1E69C7660]) initWithPredicate:v14 context:v9];
    v16 = v15;
    if (v15)
    {
      v26 = 0;
      v17 = [v15 execute:&v26];
      v18 = v26;
      v19 = v18;
      if (v17)
      {
        v20 = _PSLoggingFacility();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [(PSContactsAuthorizationLevelController *)self displayName];
          v22 = [(PSContactsAuthorizationLevelController *)self serviceKey];
          *buf = 138412546;
          v28 = v21;
          v29 = 2112;
          v30 = v22;
          v23 = "Successfully terminated %@(%@)";
LABEL_17:
          _os_log_impl(&dword_18B008000, v20, OS_LOG_TYPE_DEFAULT, v23, buf, 0x16u);

          goto LABEL_18;
        }

        goto LABEL_18;
      }

      if ([v18 code]!= 3)
      {
        v20 = _PSLoggingFacility();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [(PSContactsAuthorizationLevelController *)self displayName];
          v22 = [(PSContactsAuthorizationLevelController *)self serviceKey];
          *buf = 138412546;
          v28 = v21;
          v29 = 2112;
          v30 = v22;
          v23 = "Failed to kill %@(%@)";
          goto LABEL_17;
        }

LABEL_18:
      }
    }

    else
    {
      v19 = _PSLoggingFacility();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(PSContactsAuthorizationLevelController *)self displayName];
        v25 = [(PSContactsAuthorizationLevelController *)self serviceKey];
        *buf = 138412546;
        v28 = v20;
        v29 = 2112;
        v30 = v25;
        _os_log_impl(&dword_18B008000, v19, OS_LOG_TYPE_DEFAULT, "Unable to create terminate request for %@(%@)", buf, 0x16u);

        goto LABEL_18;
      }
    }

    goto LABEL_20;
  }

LABEL_23:
}

- (BOOL)isAppLinkedWithContactsLimitedAccessSupportedSDK
{
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  v4 = [(PSContactsAuthorizationLevelController *)self serviceKey];
  v11 = 0;
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v11];

  if (v5 && ([v5 SDKVersion], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 SDKVersion];
    v8 = [v7 compare:@"18.0" options:64];

    v9 = v8 < 2;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_presentContactsPickerForModifyingSelection
{
  getCNLimitedAccessContactPickerViewControllerClass();
  if (objc_opt_class())
  {
    v3 = [(PSContactsAuthorizationLevelController *)self limitedAccessCount];
    v4 = [v3 longValue];

    v5 = objc_alloc(getCNLimitedAccessContactPickerViewControllerClass());
    v6 = [(PSContactsAuthorizationLevelController *)self displayName];
    v7 = [(PSContactsAuthorizationLevelController *)self serviceKey];
    if (v4 <= 0)
    {
      v8 = [v5 initDeltaPickerForAppName:v6 bundleId:v7];
    }

    else
    {
      v8 = [v5 initSettingsPickerForAppName:v6 bundleId:v7];
    }

    v9 = v8;

    [v9 setDelegate:self];
    if (v9)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __85__PSContactsAuthorizationLevelController__presentContactsPickerForModifyingSelection__block_invoke;
      v10[3] = &unk_1E71DBE20;
      v10[4] = self;
      [(PSContactsAuthorizationLevelController *)self presentViewController:v9 animated:1 completion:v10];
    }
  }
}

void __85__PSContactsAuthorizationLevelController__presentContactsPickerForModifyingSelection__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _PSLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) displayName];
    v4 = [*(a1 + 32) serviceKey];
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_18B008000, v2, OS_LOG_TYPE_DEFAULT, "Edit selected contacts view controller dismissed for %@(%@)", &v5, 0x16u);
  }
}

- (id)specifiers
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->super.super._specifiers)
  {
    v3 = [(PSContactsAuthorizationLevelController *)v2 _currentTCCAuthorizationRight];
    v4 = [(PSListController *)v2 specifier];
    v5 = [v4 propertyForKey:@"hasPickerInfo"];
    v6 = [v5 BOOLValue];
    if (v3 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v8 = [(PSListController *)v2 specifier];
    v9 = [v8 propertyForKey:@"hasTCCOptions"];
    v10 = [v9 BOOLValue];

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v10)
    {
      v12 = [(PSContactsAuthorizationLevelController *)v2 _parentTCCSpecifiers];
      [(NSArray *)v11 addObjectsFromArray:v12];
      v13 = [v12 firstObject];
      v14 = [(PSContactsAuthorizationLevelController *)v2 footerStringForSpecifiers:v11];
      if (v14)
      {
        [v13 setProperty:v14 forKey:@"footerText"];
      }

      v15 = [(PSContactsAuthorizationLevelController *)v2 _limitedAccessSectionSpecifiers];
      [(NSArray *)v11 addObjectsFromArray:v15];
    }

    v16 = [(PSContactsAuthorizationLevelController *)v2 _pickerUsageSectionSpecifiers];
    v17 = v16;
    if (v7)
    {
      if ((v10 & 1) == 0)
      {
        v18 = [v16 firstObject];
        v19 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_AUTH_HEADER");
        [v18 setName:v19];
      }

      [(NSArray *)v11 addObjectsFromArray:v17];
    }

    specifiers = v2->super.super._specifiers;
    v2->super.super._specifiers = v11;
  }

  objc_sync_exit(v2);

  v21 = v2->super.super._specifiers;

  return v21;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PSListController *)self indexForIndexPath:v7];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(PSListController *)self specifierAtIndex:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 propertyForKey:@"id"];
      v12 = [v11 isEqual:@"CONTACTS_MANUAL_SELECTION_BUTTON"];

      if (v12)
      {
        [v10 performButtonAction];
        [v6 deselectRowAtIndexPath:v7 animated:1];
      }

      else
      {
        v18.receiver = self;
        v18.super_class = PSContactsAuthorizationLevelController;
        [(PSListItemsController *)&v18 tableView:v6 didSelectRowAtIndexPath:v7];
        v13 = [v10 values];
        v14 = [v13 firstObject];
        v15 = [v14 intValue];

        if (v15 == 2)
        {
          [(PSContactsAuthorizationLevelController *)self _removeLimitedAccessSectionIfPresent];
          [(PSContactsAuthorizationLevelController *)self _removePickerUsageSectionIfPresent];
        }

        else if (v15 == 1)
        {
          v16 = [(NSArray *)self->_limitedAccessSectionSpecifiers firstObject];
          v17 = [(PSListController *)self containsSpecifier:v16];

          if (!v17)
          {
            [(PSContactsAuthorizationLevelController *)self _addLimitedAccessSection];
            [(PSContactsAuthorizationLevelController *)self _addPickerUsageSectionIfNeeded];
            [(PSContactsAuthorizationLevelController *)self _presentContactsPickerForModifyingSelection];
          }
        }

        else
        {
          [(PSContactsAuthorizationLevelController *)self _removeLimitedAccessSectionIfPresent];
          [(PSContactsAuthorizationLevelController *)self _addPickerUsageSectionIfNeeded];
        }
      }
    }
  }
}

- (void)_addLimitedAccessSection
{
  if ([(NSArray *)self->_pickerUsageSectionSpecifiers count]&& ([(NSArray *)self->_pickerUsageSectionSpecifiers firstObject], v3 = objc_claimAutoreleasedReturnValue(), v4 = [(PSListController *)self containsSpecifier:v3], v3, v4))
  {
    v5 = [(NSArray *)self->_pickerUsageSectionSpecifiers firstObject];
    v6 = [(PSListController *)self indexOfSpecifier:v5];

    limitedAccessSectionSpecifiers = self->_limitedAccessSectionSpecifiers;

    [(PSListController *)self insertContiguousSpecifiers:limitedAccessSectionSpecifiers atIndex:v6 animated:1];
  }

  else
  {
    v8 = self->_limitedAccessSectionSpecifiers;

    [(PSListController *)self addSpecifiersFromArray:v8 animated:1];
  }
}

- (void)_removeLimitedAccessSectionIfPresent
{
  v3 = [(NSArray *)self->_limitedAccessSectionSpecifiers firstObject];
  v4 = [(PSListController *)self containsSpecifier:v3];

  if (v4)
  {
    limitedAccessSectionSpecifiers = self->_limitedAccessSectionSpecifiers;

    [(PSListController *)self removeContiguousSpecifiers:limitedAccessSectionSpecifiers animated:1];
  }
}

- (void)_addPickerUsageSectionIfNeeded
{
  v6 = [(NSArray *)self->_pickerUsageSectionSpecifiers firstObject];
  if ([(PSListController *)self containsSpecifier:?])
  {
  }

  else
  {
    v3 = bundleIdentifiersWithPickerAccess();
    v4 = [v3 containsObject:self->_serviceKey];

    if (v4)
    {
      pickerUsageSectionSpecifiers = self->_pickerUsageSectionSpecifiers;

      [(PSListController *)self addSpecifiersFromArray:pickerUsageSectionSpecifiers animated:1];
    }
  }
}

- (void)_removePickerUsageSectionIfPresent
{
  v3 = [(NSArray *)self->_pickerUsageSectionSpecifiers firstObject];
  v4 = [(PSListController *)self containsSpecifier:v3];

  if (v4)
  {
    pickerUsageSectionSpecifiers = self->_pickerUsageSectionSpecifiers;

    [(PSListController *)self removeContiguousSpecifiers:pickerUsageSectionSpecifiers animated:1];
  }
}

- (PSSpecifier)fullAccessSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_fullAccessSpecifier);

  return WeakRetained;
}

- (PSSpecifier)limitedAccessSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_limitedAccessSpecifier);

  return WeakRetained;
}

- (uint64_t)dealloc
{
  dlerror();
  v0 = abort_report_np();
  return [(PSContactsAuthorizationLevelController *)v0 _currentTCCAuthorizationRight];
}

- (void)_limitedAccessSectionSpecifiers
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_18B008000, a2, OS_LOG_TYPE_DEBUG, "Contacts: Empty specifier are returned, auth = %llu", &v2, 0xCu);
}

@end