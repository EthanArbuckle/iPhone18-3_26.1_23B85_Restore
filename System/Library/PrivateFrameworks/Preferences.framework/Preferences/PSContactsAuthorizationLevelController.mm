@interface PSContactsAuthorizationLevelController
- (BOOL)isAppLinkedWithContactsLimitedAccessSupportedSDK;
- (PSSpecifier)fullAccessSpecifier;
- (PSSpecifier)limitedAccessSpecifier;
- (id)_limitedAccessSectionSpecifiers;
- (id)_parentTCCSpecifiers;
- (id)_pickerUsageSectionSpecifiers;
- (id)footerStringForSpecifiers:(id)specifiers;
- (id)specifiers;
- (uint64_t)dealloc;
- (unint64_t)_currentTCCAuthorizationRight;
- (void)_addLimitedAccessSection;
- (void)_addPickerUsageSectionIfNeeded;
- (void)_handleContactStoreDidChangeNotification:(id)notification;
- (void)_handleUpgradePromptNotification:(id)notification;
- (void)_limitedAccessSectionSpecifiers;
- (void)_presentContactsPickerForModifyingSelection;
- (void)_removeLimitedAccessSectionIfPresent;
- (void)_removePickerUsageSectionIfPresent;
- (void)contactPicker:(Class)picker didSelectContacts:(id)contacts;
- (void)dealloc;
- (void)setSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateContactsCountSubtitleForSpecifier:(id)specifier contactsTCCAccess:(int)access;
- (void)viewDidLoad;
@end

@implementation PSContactsAuthorizationLevelController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PSContactsAuthorizationLevelController;
  [(PSListItemsController *)&v5 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleUpgradePromptNotification_ name:@"PSContactsPrivacyUpgradePromptCompletedNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__handleUpgradePromptNotification_ name:@"PSContactsPrivacyUpgradePromptCompletedNotification" object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"PSContactsPrivacyUpgradePromptCompletedNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
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

  [defaultCenter2 removeObserver:self name:*v5 object:0];

  v8.receiver = self;
  v8.super_class = PSContactsAuthorizationLevelController;
  [(PSListItemsController *)&v8 dealloc];
}

- (void)_handleUpgradePromptNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"PSContactsPrivacyUpgradePromptAppIdentifierKey"];
  serviceKey = [(PSContactsAuthorizationLevelController *)self serviceKey];
  v7 = [v5 isEqualToString:serviceKey];

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

- (void)_handleContactStoreDidChangeNotification:(id)notification
{
  fullAccessSpecifier = [(PSContactsAuthorizationLevelController *)self fullAccessSpecifier];
  [(PSContactsAuthorizationLevelController *)self updateContactsCountSubtitleForSpecifier:fullAccessSpecifier contactsTCCAccess:2];
  [(PSListController *)self reloadSpecifier:fullAccessSpecifier];
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
  specifiers = [(PSListItemsController *)&v36 specifiers];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(specifiers, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = specifiers;
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
          identifier = [v8 identifier];
          intValue = [identifier intValue];

          if (intValue == 4)
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
        identifier2 = [v17 identifier];
        intValue2 = [identifier2 intValue];

        v20 = v17[7];
        if (v20 != 3 || intValue2 != 4)
        {
          if (v20 == 3)
          {
            v22 = v15;
          }

          else
          {
            v22 = 1;
          }

          if ((v22 & 1) != 0 || intValue2)
          {
            if (v20 == 3 && (intValue2 - 1) <= 1)
            {
              [v17 setProperty:objc_opt_class() forKey:@"cellClass"];
              [(PSContactsAuthorizationLevelController *)self updateContactsCountSubtitleForSpecifier:v17 contactsTCCAccess:intValue2];
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

- (void)setSpecifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = PSContactsAuthorizationLevelController;
  specifierCopy = specifier;
  [(PSListController *)&v9 setSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"appBundleID", v9.receiver, v9.super_class}];
  serviceKey = self->_serviceKey;
  self->_serviceKey = v5;

  v7 = [specifierCopy propertyForKey:@"appLocalizedDisplayName"];

  displayName = self->_displayName;
  self->_displayName = v7;
}

- (id)footerStringForSpecifiers:(id)specifiers
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  specifiersCopy = specifiers;
  v4 = [specifiersCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(specifiersCopy);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        values = [v8 values];
        firstObject = [values firstObject];
        v11 = [firstObject isEqual:&unk_1EFE65A00];

        values2 = [v8 values];
        firstObject2 = [values2 firstObject];
        v14 = [firstObject2 isEqual:&unk_1EFE65A18];

        if ((v11 & 1) != 0 || v14)
        {

          v15 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_PRIVACY_FOOTER");
          goto LABEL_12;
        }
      }

      v5 = [specifiersCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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

  _currentTCCAuthorizationRight = [(PSContactsAuthorizationLevelController *)self _currentTCCAuthorizationRight];
  if (_currentTCCAuthorizationRight == 3)
  {
    v10 = self->_limitedAccessSectionSpecifiers;
  }

  else
  {
    v11 = _currentTCCAuthorizationRight;
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if (([currentDevice sf_isInternalInstall] & 1) != 0 || PSDiagnosticsAreEnabled())
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

- (void)updateContactsCountSubtitleForSpecifier:(id)specifier contactsTCCAccess:(int)access
{
  v31 = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  serviceKey = [(PSContactsAuthorizationLevelController *)self serviceKey];
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
  if (access == 1)
  {
    v12 = [v10 getLimitedAccessContactsCountForBundle:serviceKey];
    if (v12)
    {
      v14 = 0;
      goto LABEL_17;
    }

    v15 = _PSLoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = serviceKey;
      _os_log_impl(&dword_18B008000, v15, OS_LOG_TYPE_DEFAULT, "Error: unable to get contacts count from ContactStore for %@", &buf, 0xCu);
    }

    v14 = 0;
    goto LABEL_15;
  }

  if (access != 2)
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

  if (access == 1)
  {
    if ([v16 longValue] < 1)
    {
      v21 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_LIMITEDACCESS_NOCONTACTS_COUNT_SECONDARY_LABEL");
      [specifierCopy setProperty:v21 forKey:@"cellSubtitleText"];
    }

    else
    {
      v20 = MEMORY[0x1E696AEC0];
      v21 = PS_LocalizedStringForSystemPolicy(@"LIMITEDACCESS_CONTACTS_COUNT_SECONDARY_LABEL");
      v22 = [v20 localizedStringWithFormat:v21, objc_msgSend(v16, "longValue")];
      [specifierCopy setProperty:v22 forKey:@"cellSubtitleText"];
    }

    [(PSContactsAuthorizationLevelController *)self setLimitedAccessCount:v16];
    [(PSContactsAuthorizationLevelController *)self setLimitedAccessSpecifier:specifierCopy];
  }

  else if (access == 2)
  {
    if ([v16 longValue] < 1)
    {
      v18 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_FULLACCESS_NOCONTACTS_COUNT_SECONDARY_LABEL");
      [specifierCopy setProperty:v18 forKey:@"cellSubtitleText"];
    }

    else
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = PS_LocalizedStringForSystemPolicy(@"FULLACCESS_CONTACTS_COUNT_SECONDARY_LABEL");
      v19 = [v17 localizedStringWithFormat:v18, objc_msgSend(v16, "longValue")];
      [specifierCopy setProperty:v19 forKey:@"cellSubtitleText"];
    }

    [(PSContactsAuthorizationLevelController *)self setFullAccessSpecifier:specifierCopy];
  }

  [(PSListController *)self reloadSpecifier:specifierCopy];
}

- (void)contactPicker:(Class)picker didSelectContacts:(id)contacts
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [(PSContactsAuthorizationLevelController *)self limitedAccessSpecifier:picker];
  [(PSContactsAuthorizationLevelController *)self updateContactsCountSubtitleForSpecifier:v5 contactsTCCAccess:1];
  [(PSListController *)self reloadSpecifier:v5];
  if (![(PSContactsAuthorizationLevelController *)self isAppLinkedWithContactsLimitedAccessSupportedSDK])
  {
    v6 = _PSLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      displayName = [(PSContactsAuthorizationLevelController *)self displayName];
      serviceKey = [(PSContactsAuthorizationLevelController *)self serviceKey];
      *buf = 138412546;
      v28 = displayName;
      v29 = 2112;
      v30 = serviceKey;
      _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "App %@(%@) is linked using SDK that doesn't support LimitedAccess for Contacts", buf, 0x16u);
    }

    v9 = [objc_alloc(MEMORY[0x1E69C7650]) initWithExplanation:@"Terminating app as selected contacts changed for legacy linked app"];
    if (!v9)
    {
      goto LABEL_22;
    }

    v10 = objc_alloc(MEMORY[0x1E69635D8]);
    serviceKey2 = [(PSContactsAuthorizationLevelController *)self serviceKey];
    v12 = [v10 initWithBundleIdentifier:serviceKey2 URL:0 personaUniqueString:0 personaType:4];

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

      displayName2 = [(PSContactsAuthorizationLevelController *)self displayName];
      serviceKey3 = [(PSContactsAuthorizationLevelController *)self serviceKey];
      *buf = 138412546;
      v28 = displayName2;
      v29 = 2112;
      v30 = serviceKey3;
      _os_log_impl(&dword_18B008000, v14, OS_LOG_TYPE_DEFAULT, "Unable to get process identity for %@(%@)", buf, 0x16u);

LABEL_20:
      goto LABEL_21;
    }

    v14 = [MEMORY[0x1E69C7610] predicateMatchingIdentity:v13];
    v15 = [objc_alloc(MEMORY[0x1E69C7660]) initWithPredicate:v14 context:v9];
    displayName2 = v15;
    if (v15)
    {
      v26 = 0;
      v17 = [v15 execute:&v26];
      v18 = v26;
      v19 = v18;
      if (v17)
      {
        displayName4 = _PSLoggingFacility();
        if (os_log_type_enabled(displayName4, OS_LOG_TYPE_DEFAULT))
        {
          displayName3 = [(PSContactsAuthorizationLevelController *)self displayName];
          serviceKey4 = [(PSContactsAuthorizationLevelController *)self serviceKey];
          *buf = 138412546;
          v28 = displayName3;
          v29 = 2112;
          v30 = serviceKey4;
          v23 = "Successfully terminated %@(%@)";
LABEL_17:
          _os_log_impl(&dword_18B008000, displayName4, OS_LOG_TYPE_DEFAULT, v23, buf, 0x16u);

          goto LABEL_18;
        }

        goto LABEL_18;
      }

      if ([v18 code]!= 3)
      {
        displayName4 = _PSLoggingFacility();
        if (os_log_type_enabled(displayName4, OS_LOG_TYPE_DEFAULT))
        {
          displayName3 = [(PSContactsAuthorizationLevelController *)self displayName];
          serviceKey4 = [(PSContactsAuthorizationLevelController *)self serviceKey];
          *buf = 138412546;
          v28 = displayName3;
          v29 = 2112;
          v30 = serviceKey4;
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
        displayName4 = [(PSContactsAuthorizationLevelController *)self displayName];
        serviceKey5 = [(PSContactsAuthorizationLevelController *)self serviceKey];
        *buf = 138412546;
        v28 = displayName4;
        v29 = 2112;
        v30 = serviceKey5;
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
  serviceKey = [(PSContactsAuthorizationLevelController *)self serviceKey];
  v11 = 0;
  v5 = [v3 initWithBundleIdentifier:serviceKey allowPlaceholder:0 error:&v11];

  if (v5 && ([v5 SDKVersion], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    sDKVersion = [v5 SDKVersion];
    v8 = [sDKVersion compare:@"18.0" options:64];

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
    limitedAccessCount = [(PSContactsAuthorizationLevelController *)self limitedAccessCount];
    longValue = [limitedAccessCount longValue];

    v5 = objc_alloc(getCNLimitedAccessContactPickerViewControllerClass());
    displayName = [(PSContactsAuthorizationLevelController *)self displayName];
    serviceKey = [(PSContactsAuthorizationLevelController *)self serviceKey];
    if (longValue <= 0)
    {
      v8 = [v5 initDeltaPickerForAppName:displayName bundleId:serviceKey];
    }

    else
    {
      v8 = [v5 initSettingsPickerForAppName:displayName bundleId:serviceKey];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->super.super._specifiers)
  {
    _currentTCCAuthorizationRight = [(PSContactsAuthorizationLevelController *)selfCopy _currentTCCAuthorizationRight];
    specifier = [(PSListController *)selfCopy specifier];
    v5 = [specifier propertyForKey:@"hasPickerInfo"];
    bOOLValue = [v5 BOOLValue];
    if (_currentTCCAuthorizationRight == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = bOOLValue;
    }

    specifier2 = [(PSListController *)selfCopy specifier];
    v9 = [specifier2 propertyForKey:@"hasTCCOptions"];
    bOOLValue2 = [v9 BOOLValue];

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (bOOLValue2)
    {
      _parentTCCSpecifiers = [(PSContactsAuthorizationLevelController *)selfCopy _parentTCCSpecifiers];
      [(NSArray *)v11 addObjectsFromArray:_parentTCCSpecifiers];
      firstObject = [_parentTCCSpecifiers firstObject];
      v14 = [(PSContactsAuthorizationLevelController *)selfCopy footerStringForSpecifiers:v11];
      if (v14)
      {
        [firstObject setProperty:v14 forKey:@"footerText"];
      }

      _limitedAccessSectionSpecifiers = [(PSContactsAuthorizationLevelController *)selfCopy _limitedAccessSectionSpecifiers];
      [(NSArray *)v11 addObjectsFromArray:_limitedAccessSectionSpecifiers];
    }

    _pickerUsageSectionSpecifiers = [(PSContactsAuthorizationLevelController *)selfCopy _pickerUsageSectionSpecifiers];
    v17 = _pickerUsageSectionSpecifiers;
    if (v7)
    {
      if ((bOOLValue2 & 1) == 0)
      {
        firstObject2 = [_pickerUsageSectionSpecifiers firstObject];
        v19 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_AUTH_HEADER");
        [firstObject2 setName:v19];
      }

      [(NSArray *)v11 addObjectsFromArray:v17];
    }

    specifiers = selfCopy->super.super._specifiers;
    selfCopy->super.super._specifiers = v11;
  }

  objc_sync_exit(selfCopy);

  v21 = selfCopy->super.super._specifiers;

  return v21;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(PSListController *)self indexForIndexPath:pathCopy];
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
        [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      }

      else
      {
        v18.receiver = self;
        v18.super_class = PSContactsAuthorizationLevelController;
        [(PSListItemsController *)&v18 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
        values = [v10 values];
        firstObject = [values firstObject];
        intValue = [firstObject intValue];

        if (intValue == 2)
        {
          [(PSContactsAuthorizationLevelController *)self _removeLimitedAccessSectionIfPresent];
          [(PSContactsAuthorizationLevelController *)self _removePickerUsageSectionIfPresent];
        }

        else if (intValue == 1)
        {
          firstObject2 = [(NSArray *)self->_limitedAccessSectionSpecifiers firstObject];
          v17 = [(PSListController *)self containsSpecifier:firstObject2];

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
    firstObject = [(NSArray *)self->_pickerUsageSectionSpecifiers firstObject];
    v6 = [(PSListController *)self indexOfSpecifier:firstObject];

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
  firstObject = [(NSArray *)self->_limitedAccessSectionSpecifiers firstObject];
  v4 = [(PSListController *)self containsSpecifier:firstObject];

  if (v4)
  {
    limitedAccessSectionSpecifiers = self->_limitedAccessSectionSpecifiers;

    [(PSListController *)self removeContiguousSpecifiers:limitedAccessSectionSpecifiers animated:1];
  }
}

- (void)_addPickerUsageSectionIfNeeded
{
  firstObject = [(NSArray *)self->_pickerUsageSectionSpecifiers firstObject];
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
  firstObject = [(NSArray *)self->_pickerUsageSectionSpecifiers firstObject];
  v4 = [(PSListController *)self containsSpecifier:firstObject];

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
  selfCopy = self;
  _os_log_debug_impl(&dword_18B008000, a2, OS_LOG_TYPE_DEBUG, "Contacts: Empty specifier are returned, auth = %llu", &v2, 0xCu);
}

@end