@interface PUIContactsAuthorizationLevelController
- (BOOL)isAppLinkedWithContactsLimitedAccessSupportedSDK;
- (PSSpecifier)fullAccessSpecifier;
- (PSSpecifier)limitedAccessSpecifier;
- (id)_limitedAccessSectionSpecifiers;
- (id)_parentTCCSpecifiers;
- (id)_pickerUsageSectionSpecifiers;
- (id)footerStringForSpecifiers:(id)a3;
- (id)specifiers;
- (unint64_t)_currentTCCAuthorizationRight;
- (void)_addLimitedAccessSection;
- (void)_addPickerUsageSectionIfNeeded;
- (void)_handleContactStoreDidChangeNotification:(id)a3;
- (void)_handleUpgradePromptNotification:(id)a3;
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

@implementation PUIContactsAuthorizationLevelController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PUIContactsAuthorizationLevelController;
  [(PSListItemsController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__handleContactStoreDidChangeNotification_ name:*MEMORY[0x277CBD140] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__handleUpgradePromptNotification_ name:@"PUIContactsPrivacyUpgradePromptCompletedNotification" object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"PUIContactsPrivacyUpgradePromptCompletedNotification" object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277CBD140] object:0];

  v5.receiver = self;
  v5.super_class = PUIContactsAuthorizationLevelController;
  [(PSListItemsController *)&v5 dealloc];
}

- (void)_handleUpgradePromptNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"PUIContactsPrivacyUpgradePromptAppIdentifierKey"];
  v6 = [(PUIContactsAuthorizationLevelController *)self serviceKey];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__PUIContactsAuthorizationLevelController__handleUpgradePromptNotification___block_invoke;
    block[3] = &unk_279BA0B28;
    block[4] = self;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
  }
}

- (void)_handleContactStoreDidChangeNotification:(id)a3
{
  v4 = [(PUIContactsAuthorizationLevelController *)self fullAccessSpecifier];
  [(PUIContactsAuthorizationLevelController *)self updateContactsCountSubtitleForSpecifier:v4 contactsTCCAccess:2];
  [(PUIContactsAuthorizationLevelController *)self reloadSpecifier:v4];
}

- (unint64_t)_currentTCCAuthorizationRight
{
  if (_currentTCCAuthorizationRight_onceToken != -1)
  {
    [PUIContactsAuthorizationLevelController _currentTCCAuthorizationRight];
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

uint64_t __72__PUIContactsAuthorizationLevelController__currentTCCAuthorizationRight__block_invoke()
{
  _currentTCCAuthorizationRight_tccServer = tcc_server_create();

  return MEMORY[0x2821F96F8]();
}

void __72__PUIContactsAuthorizationLevelController__currentTCCAuthorizationRight__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = tcc_authorization_record_get_service();
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:tcc_service_get_name() encoding:4];
    if ([v7 isEqualToString:@"kTCCServiceAddressBook"])
    {
      *(*(*(a1 + 40) + 8) + 24) = tcc_authorization_record_get_authorization_right();
    }
  }

  else
  {
    v8 = _PUILoggingFacility();
    v6 = v8;
    if (a3)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __72__PUIContactsAuthorizationLevelController__currentTCCAuthorizationRight__block_invoke_2_cold_1(a1);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_2657FE000, v6, OS_LOG_TYPE_DEFAULT, "Finished getting Contacts authorization for identity: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_parentTCCSpecifiers
{
  v42 = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = PUIContactsAuthorizationLevelController;
  v2 = [(PSListItemsController *)&v39 specifiers];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v41 count:16];
  v6 = MEMORY[0x277D3FC90];
  if (v5)
  {
    v7 = *v36;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        if (*&v9[*v6] == 3)
        {
          v10 = [v9 identifier];
          v11 = [v10 intValue];

          if (v11 == 4)
          {
            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    v29 = *MEMORY[0x277D3FE58];
    v16 = v5 ^ 1;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v31 + 1) + 8 * j);
        v19 = [v18 identifier];
        v20 = [v19 intValue];

        v21 = *&v18[*v6];
        if (v21 != 3 || v20 != 4)
        {
          if (v21 == 3)
          {
            v23 = v16;
          }

          else
          {
            v23 = 1;
          }

          if ((v23 & 1) != 0 || v20)
          {
            if (v21 == 3 && (v20 - 1) <= 1)
            {
              [v18 setProperty:objc_opt_class() forKey:v29];
              [(PUIContactsAuthorizationLevelController *)self updateContactsCountSubtitleForSpecifier:v18 contactsTCCAccess:v20];
            }
          }

          else
          {
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 0];
            [v18 setIdentifier:v24];
          }

          [v3 addObject:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v14);
  }

  v26 = [v3 copy];
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (void)setSpecifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = PUIContactsAuthorizationLevelController;
  v4 = a3;
  [(PUIContactsAuthorizationLevelController *)&v9 setSpecifier:v4];
  v5 = [v4 identifier];
  serviceKey = self->_serviceKey;
  self->_serviceKey = v5;

  v7 = [v4 propertyForKey:@"appLocalizedDisplayName"];

  displayName = self->_displayName;
  self->_displayName = v7;
}

- (id)specifiers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&v2->super.super.super.super.super.super.isa + v3))
  {
    v4 = [(PUIContactsAuthorizationLevelController *)v2 _currentTCCAuthorizationRight];
    v5 = [(PUIContactsAuthorizationLevelController *)v2 specifier];
    v6 = [v5 propertyForKey:@"hasPickerInfo"];
    v7 = [v6 BOOLValue];
    if (v4 == 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v9 = [(PUIContactsAuthorizationLevelController *)v2 specifier];
    v10 = [v9 propertyForKey:@"hasTCCOptions"];
    v11 = [v10 BOOLValue];

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v11)
    {
      v13 = [(PUIContactsAuthorizationLevelController *)v2 _parentTCCSpecifiers];
      [v12 addObjectsFromArray:v13];
      v14 = [v13 firstObject];
      v15 = [(PUIContactsAuthorizationLevelController *)v2 footerStringForSpecifiers:v12];
      if (v15)
      {
        [v14 setProperty:v15 forKey:*MEMORY[0x277D3FF88]];
      }

      v16 = [(PUIContactsAuthorizationLevelController *)v2 _limitedAccessSectionSpecifiers];
      [v12 addObjectsFromArray:v16];
    }

    v17 = [(PUIContactsAuthorizationLevelController *)v2 _pickerUsageSectionSpecifiers];
    v18 = v17;
    if (v8)
    {
      if ((v11 & 1) == 0)
      {
        v19 = [v17 firstObject];
        v20 = PUI_LocalizedStringForPrivacy(@"CONTACTS_AUTH_HEADER");
        [v19 setName:v20];
      }

      [v12 addObjectsFromArray:v18];
    }

    v21 = *(&v2->super.super.super.super.super.super.isa + v3);
    *(&v2->super.super.super.super.super.super.isa + v3) = v12;
  }

  objc_sync_exit(v2);

  v22 = *(&v2->super.super.super.super.super.super.isa + v3);

  return v22;
}

- (id)_pickerUsageSectionSpecifiers
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = bundleIdentifiersWithPickerAccess();
  if ([v3 containsObject:self->_serviceKey])
  {
    pickerUsageSectionSpecifiers = self->_pickerUsageSectionSpecifiers;
    if (!pickerUsageSectionSpecifiers)
    {
      v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:0];
      v6 = *MEMORY[0x277D3FFB8];
      [v5 setProperty:@"CONTACTS_PICKER_INFO_GROUP" forKey:*MEMORY[0x277D3FFB8]];
      v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
      [v7 setProperty:@"CONTACTS_PICKER_INFO_CELL" forKey:v6];
      v8 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
      [v7 setProperty:v8 forKey:*MEMORY[0x277D40140]];

      [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
      v14[0] = v5;
      v14[1] = v7;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
      v10 = self->_pickerUsageSectionSpecifiers;
      self->_pickerUsageSectionSpecifiers = v9;

      pickerUsageSectionSpecifiers = self->_pickerUsageSectionSpecifiers;
    }

    v11 = pickerUsageSectionSpecifiers;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_limitedAccessSectionSpecifiers
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (!self->_limitedAccessSectionSpecifiers)
  {
    v3 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v4 = *MEMORY[0x277D3FFB8];
    [v3 setProperty:@"CONTACTS_MANUAL_SELECTION_GROUP" forKey:*MEMORY[0x277D3FFB8]];
    v5 = MEMORY[0x277D3FAD8];
    v6 = PUI_LocalizedStringForPrivacy(@"CONTACTS_MANUAL_SELECTION_BUTTON");
    v7 = [v5 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];

    v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v7 setProperty:v8 forKey:*MEMORY[0x277D3FF38]];

    [v7 setProperty:@"CONTACTS_MANUAL_SELECTION_BUTTON" forKey:v4];
    [v7 setButtonAction:sel__presentContactsPickerForModifyingSelection];
    v14[0] = v3;
    v14[1] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    limitedAccessSectionSpecifiers = self->_limitedAccessSectionSpecifiers;
    self->_limitedAccessSectionSpecifiers = v9;
  }

  if ([(PUIContactsAuthorizationLevelController *)self _currentTCCAuthorizationRight]== 3)
  {
    v11 = self->_limitedAccessSectionSpecifiers;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)updateContactsCountSubtitleForSpecifier:(id)a3 contactsTCCAccess:(int)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(PUIContactsAuthorizationLevelController *)self serviceKey];
  v8 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v9 = v8;
  if (a4 == 1)
  {
    v15 = [v8 getLimitedAccessContactsCountForBundle:v7];
    if (v15)
    {
      v10 = v15;
      v12 = 0;
      goto LABEL_17;
    }

    v14 = _PUILoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v7;
      _os_log_impl(&dword_2657FE000, v14, OS_LOG_TYPE_DEFAULT, "Error: unable to get contacts count from ContactStore for %@", buf, 0xCu);
    }

    v12 = 0;
    goto LABEL_15;
  }

  if (a4 != 2)
  {
    v12 = 0;
LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  v24 = 0;
  v10 = [v8 unifiedContactCountWithError:&v24];
  v11 = v24;
  v12 = v11;
  if (v10)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11 == 0;
  }

  if (!v13)
  {
    v14 = _PUILoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v12;
      _os_log_impl(&dword_2657FE000, v14, OS_LOG_TYPE_DEFAULT, "Error: unable to get contacts count from ContactStore (%@)", buf, 0xCu);
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_17:
  v16 = v10;

  if (a4 == 1)
  {
    if ([v16 longValue] < 1)
    {
      v21 = PUI_LocalizedStringForPrivacy(@"CONTACTS_LIMITEDACCESS_NOCONTACTS_COUNT_SECONDARY_LABEL");
      [v6 setProperty:v21 forKey:*MEMORY[0x277D3FE18]];
    }

    else
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = PUI_LocalizedStringForPrivacy(@"LIMITEDACCESS_CONTACTS_COUNT_SECONDARY_LABEL");
      v22 = [v20 localizedStringWithFormat:v21, objc_msgSend(v16, "longValue")];
      [v6 setProperty:v22 forKey:*MEMORY[0x277D3FE18]];
    }

    [(PUIContactsAuthorizationLevelController *)self setLimitedAccessCount:v16];
    [(PUIContactsAuthorizationLevelController *)self setLimitedAccessSpecifier:v6];
  }

  else if (a4 == 2)
  {
    if ([v16 longValue] < 1)
    {
      v18 = PUI_LocalizedStringForPrivacy(@"CONTACTS_FULLACCESS_NOCONTACTS_COUNT_SECONDARY_LABEL");
      [v6 setProperty:v18 forKey:*MEMORY[0x277D3FE18]];
    }

    else
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = PUI_LocalizedStringForPrivacy(@"FULLACCESS_CONTACTS_COUNT_SECONDARY_LABEL");
      v19 = [v17 localizedStringWithFormat:v18, objc_msgSend(v16, "longValue")];
      [v6 setProperty:v19 forKey:*MEMORY[0x277D3FE18]];
    }

    [(PUIContactsAuthorizationLevelController *)self setFullAccessSpecifier:v6];
  }

  [(PUIContactsAuthorizationLevelController *)self reloadSpecifier:v6];

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAppLinkedWithContactsLimitedAccessSupportedSDK
{
  v3 = objc_alloc(MEMORY[0x277CC1E70]);
  v4 = [(PUIContactsAuthorizationLevelController *)self serviceKey];
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

- (void)contactPicker:(Class)a3 didSelectContacts:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [(PUIContactsAuthorizationLevelController *)self limitedAccessSpecifier:a3];
  [(PUIContactsAuthorizationLevelController *)self updateContactsCountSubtitleForSpecifier:v5 contactsTCCAccess:1];
  [(PUIContactsAuthorizationLevelController *)self reloadSpecifier:v5];
  if (![(PUIContactsAuthorizationLevelController *)self isAppLinkedWithContactsLimitedAccessSupportedSDK])
  {
    v6 = _PUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(PUIContactsAuthorizationLevelController *)self displayName];
      v8 = [(PUIContactsAuthorizationLevelController *)self serviceKey];
      *buf = 138412546;
      v29 = v7;
      v30 = 2112;
      v31 = v8;
      _os_log_impl(&dword_2657FE000, v6, OS_LOG_TYPE_DEFAULT, "App %@(%@) is linked using SDK that doesn't support LimitedAccess for Contacts", buf, 0x16u);
    }

    v9 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"Terminating app as selected contacts changed for legacy linked app"];
    if (!v9)
    {
      goto LABEL_22;
    }

    v10 = objc_alloc(MEMORY[0x277CC1E58]);
    v11 = [(PUIContactsAuthorizationLevelController *)self serviceKey];
    v12 = [v10 initWithBundleIdentifier:v11 URL:0 personaUniqueString:0 personaType:4];

    v13 = [MEMORY[0x277D46F60] identityForLSApplicationIdentity:v12];
    if (!v13)
    {
      v14 = _PUILoggingFacility();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }

      v16 = [(PUIContactsAuthorizationLevelController *)self displayName];
      v24 = [(PUIContactsAuthorizationLevelController *)self serviceKey];
      *buf = 138412546;
      v29 = v16;
      v30 = 2112;
      v31 = v24;
      _os_log_impl(&dword_2657FE000, v14, OS_LOG_TYPE_DEFAULT, "Unable to get process identity for %@(%@)", buf, 0x16u);

LABEL_20:
      goto LABEL_21;
    }

    v14 = [MEMORY[0x277D46FA0] predicateMatchingIdentity:v13];
    v15 = [objc_alloc(MEMORY[0x277D47018]) initWithPredicate:v14 context:v9];
    v16 = v15;
    if (v15)
    {
      v27 = 0;
      v17 = [v15 execute:&v27];
      v18 = v27;
      v19 = v18;
      if (v17)
      {
        v20 = _PUILoggingFacility();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [(PUIContactsAuthorizationLevelController *)self displayName];
          v22 = [(PUIContactsAuthorizationLevelController *)self serviceKey];
          *buf = 138412546;
          v29 = v21;
          v30 = 2112;
          v31 = v22;
          v23 = "Successfully terminated %@(%@)";
LABEL_17:
          _os_log_impl(&dword_2657FE000, v20, OS_LOG_TYPE_DEFAULT, v23, buf, 0x16u);

          goto LABEL_18;
        }

        goto LABEL_18;
      }

      if ([v18 code]!= 3)
      {
        v20 = _PUILoggingFacility();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [(PUIContactsAuthorizationLevelController *)self displayName];
          v22 = [(PUIContactsAuthorizationLevelController *)self serviceKey];
          *buf = 138412546;
          v29 = v21;
          v30 = 2112;
          v31 = v22;
          v23 = "Failed to kill %@(%@)";
          goto LABEL_17;
        }

LABEL_18:
      }
    }

    else
    {
      v19 = _PUILoggingFacility();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(PUIContactsAuthorizationLevelController *)self displayName];
        v25 = [(PUIContactsAuthorizationLevelController *)self serviceKey];
        *buf = 138412546;
        v29 = v20;
        v30 = 2112;
        v31 = v25;
        _os_log_impl(&dword_2657FE000, v19, OS_LOG_TYPE_DEFAULT, "Unable to create terminate request for %@(%@)", buf, 0x16u);

        goto LABEL_18;
      }
    }

    goto LABEL_20;
  }

LABEL_23:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_presentContactsPickerForModifyingSelection
{
  getCNLimitedAccessContactPickerViewControllerClass();
  if (objc_opt_class())
  {
    v3 = [(PUIContactsAuthorizationLevelController *)self limitedAccessCount];
    v4 = [v3 longValue];

    v5 = objc_alloc(getCNLimitedAccessContactPickerViewControllerClass());
    v6 = [(PUIContactsAuthorizationLevelController *)self displayName];
    v7 = [(PUIContactsAuthorizationLevelController *)self serviceKey];
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
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __86__PUIContactsAuthorizationLevelController__presentContactsPickerForModifyingSelection__block_invoke;
      v10[3] = &unk_279BA0B28;
      v10[4] = self;
      [(PUIContactsAuthorizationLevelController *)self presentViewController:v9 animated:1 completion:v10];
    }
  }
}

void __86__PUIContactsAuthorizationLevelController__presentContactsPickerForModifyingSelection__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _PUILoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) displayName];
    v4 = [*(a1 + 32) serviceKey];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_2657FE000, v2, OS_LOG_TYPE_DEFAULT, "Edit selected contacts view controller dismissed for %@(%@)", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)footerStringForSpecifiers:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 values];
        v10 = [v9 firstObject];
        v11 = [v10 isEqual:&unk_28772B2D0];

        v12 = [v8 values];
        v13 = [v12 firstObject];
        v14 = [v13 isEqual:&unk_28772B2E8];

        if ((v11 & 1) != 0 || v14)
        {

          v15 = PUI_LocalizedStringForPrivacy(@"CONTACTS_PRIVACY_FOOTER");
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUIContactsAuthorizationLevelController *)self indexForIndexPath:v7];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(PUIContactsAuthorizationLevelController *)self specifierAtIndex:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 propertyForKey:*MEMORY[0x277D3FFB8]];
      v12 = [v11 isEqual:@"CONTACTS_MANUAL_SELECTION_BUTTON"];

      if (v12)
      {
        [v10 performButtonAction];
        [v6 deselectRowAtIndexPath:v7 animated:1];
      }

      else
      {
        v18.receiver = self;
        v18.super_class = PUIContactsAuthorizationLevelController;
        [(PSListItemsController *)&v18 tableView:v6 didSelectRowAtIndexPath:v7];
        v13 = [v10 values];
        v14 = [v13 firstObject];
        v15 = [v14 intValue];

        if (v15 == 2)
        {
          [(PUIContactsAuthorizationLevelController *)self _removeLimitedAccessSectionIfPresent];
          [(PUIContactsAuthorizationLevelController *)self _removePickerUsageSectionIfPresent];
        }

        else if (v15 == 1)
        {
          v16 = [(NSArray *)self->_limitedAccessSectionSpecifiers firstObject];
          v17 = [(PUIContactsAuthorizationLevelController *)self containsSpecifier:v16];

          if ((v17 & 1) == 0)
          {
            [(PUIContactsAuthorizationLevelController *)self _addLimitedAccessSection];
            [(PUIContactsAuthorizationLevelController *)self _addPickerUsageSectionIfNeeded];
            [(PUIContactsAuthorizationLevelController *)self _presentContactsPickerForModifyingSelection];
          }
        }

        else
        {
          [(PUIContactsAuthorizationLevelController *)self _removeLimitedAccessSectionIfPresent];
          [(PUIContactsAuthorizationLevelController *)self _addPickerUsageSectionIfNeeded];
        }
      }
    }
  }
}

- (void)_addLimitedAccessSection
{
  if ([(NSArray *)self->_pickerUsageSectionSpecifiers count]&& ([(NSArray *)self->_pickerUsageSectionSpecifiers firstObject], v3 = objc_claimAutoreleasedReturnValue(), v4 = [(PUIContactsAuthorizationLevelController *)self containsSpecifier:v3], v3, v4))
  {
    v5 = [(NSArray *)self->_pickerUsageSectionSpecifiers firstObject];
    v6 = [(PUIContactsAuthorizationLevelController *)self indexOfSpecifier:v5];

    limitedAccessSectionSpecifiers = self->_limitedAccessSectionSpecifiers;

    [(PUIContactsAuthorizationLevelController *)self insertContiguousSpecifiers:limitedAccessSectionSpecifiers atIndex:v6 animated:1];
  }

  else
  {
    v8 = self->_limitedAccessSectionSpecifiers;

    [(PUIContactsAuthorizationLevelController *)self addSpecifiersFromArray:v8 animated:1];
  }
}

- (void)_removeLimitedAccessSectionIfPresent
{
  v3 = [(NSArray *)self->_limitedAccessSectionSpecifiers firstObject];
  v4 = [(PUIContactsAuthorizationLevelController *)self containsSpecifier:v3];

  if (v4)
  {
    limitedAccessSectionSpecifiers = self->_limitedAccessSectionSpecifiers;

    [(PUIContactsAuthorizationLevelController *)self removeContiguousSpecifiers:limitedAccessSectionSpecifiers animated:1];
  }
}

- (void)_addPickerUsageSectionIfNeeded
{
  v6 = [(NSArray *)self->_pickerUsageSectionSpecifiers firstObject];
  if ([(PUIContactsAuthorizationLevelController *)self containsSpecifier:?])
  {
  }

  else
  {
    v3 = bundleIdentifiersWithPickerAccess();
    v4 = [v3 containsObject:self->_serviceKey];

    if (v4)
    {
      pickerUsageSectionSpecifiers = self->_pickerUsageSectionSpecifiers;

      [(PUIContactsAuthorizationLevelController *)self addSpecifiersFromArray:pickerUsageSectionSpecifiers animated:1];
    }
  }
}

- (void)_removePickerUsageSectionIfPresent
{
  v3 = [(NSArray *)self->_pickerUsageSectionSpecifiers firstObject];
  v4 = [(PUIContactsAuthorizationLevelController *)self containsSpecifier:v3];

  if (v4)
  {
    pickerUsageSectionSpecifiers = self->_pickerUsageSectionSpecifiers;

    [(PUIContactsAuthorizationLevelController *)self removeContiguousSpecifiers:pickerUsageSectionSpecifiers animated:1];
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

void __72__PUIContactsAuthorizationLevelController__currentTCCAuthorizationRight__block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2657FE000, v2, v3, "Error when requesting Contacts TCC for identity: %@ error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

@end