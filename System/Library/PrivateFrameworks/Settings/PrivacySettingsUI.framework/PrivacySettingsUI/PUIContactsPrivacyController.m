@interface PUIContactsPrivacyController
+ (BOOL)isServiceRestricted:(id)a3;
- (id)appSpecifierWithName:(id)a3 bundleID:(id)a4 showContactsAccess:(BOOL)a5 showPickerUsage:(BOOL)a6;
- (id)contactsStatus:(id)a3;
- (id)createSpecifiers;
- (id)createSpecifiersWithCombinedPickerUsage;
- (id)specifiers;
- (void)_setContactsTCCStatus:(id)a3 specifier:(id)a4;
- (void)provideNavigationDonations;
- (void)setAccess:(id)a3 forSpecifier:(id)a4;
- (void)setTCCForService:(__CFString *)a3 appIdentifier:(id)a4 value:(int)a5;
- (void)updateContactsAuthorizationStates;
- (void)updateSpecifiersForImposedSettings;
@end

@implementation PUIContactsPrivacyController

- (void)provideNavigationDonations
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = PUI_BundleForPrivacySettingsFramework();
  v4 = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"CONTACTS" table:@"Privacy" locale:v6 bundleURL:v4];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:v9 bundleURL:v4];

  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/CONTACTS"];
  [(PUIContactsPrivacyController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.privacy" title:v7 localizedNavigationComponents:v11 deepLink:v12];

  v13 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isServiceRestricted:(id)a3
{
  v3 = a3;
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v4 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  v5 = v4;
  if (v4)
  {
    v6 = [v4 containsObject:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateSpecifiersForImposedSettings
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{+[PUIContactsPrivacyController isServiceRestricted:](PUIContactsPrivacyController, "isServiceRestricted:", *MEMORY[0x277D6C100]) ^ 1}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(PUIContactsPrivacyController *)self contactsAppSpecifiers];
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    v7 = *MEMORY[0x277D3FF38];
    v19 = *MEMORY[0x277D40148];
    v17 = *MEMORY[0x277D401A8];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 propertyForKey:v7];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 objectForKeyedSubscript:v7];
          v13 = [v12 BOOLValue];
          v14 = [v3 BOOLValue];

          if (v13 == v14)
          {
            continue;
          }
        }

        [v9 setProperty:v3 forKey:v7];
        v15 = [v9 propertyForKey:v19];
        [v15 setCellEnabled:{objc_msgSend(v3, "BOOLValue")}];

        if (([v3 BOOLValue] & 1) == 0)
        {
          [v9 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v17];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateContactsAuthorizationStates
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D6C100];
  v4 = tcc_server_create();
  v5 = tcc_service_singleton_for_CF_name();
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v9 = _PUILoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v29) = 138412290;
    *(&v29 + 4) = v3;
    _os_log_impl(&dword_2657FE000, v9, OS_LOG_TYPE_DEFAULT, "Requesting TCC auth records for service: %@", &v29, 0xCu);
  }

  *&v29 = MEMORY[0x277D85DD0];
  *(&v29 + 1) = 3221225472;
  v30 = __PUIContactsAuthorizationStatesForService_block_invoke;
  v31 = &unk_279BA1948;
  v10 = v6;
  v32 = v10;
  v11 = v7;
  v33 = v11;
  v12 = v8;
  v34 = v12;
  v35 = v3;
  tcc_server_message_get_authorization_records_by_service();
  v13 = [v10 copy];
  v14 = v13;
  v15 = [v11 copy];
  v16 = v15;
  if (v12)
  {
    v17 = [v12 copy];
    v18 = v17;
  }

  else
  {
    v17 = 0;
  }

  v19 = v13;
  v20 = v15;
  v21 = v17;
  [(PUIContactsPrivacyController *)self setContactsFullAccessAllowedAppIDs:v19];
  [(PUIContactsPrivacyController *)self setContactsLimitedAccessAppIDs:v20];

  [(PUIContactsPrivacyController *)self setContactsDeniedAppIDs:v21];
  v22 = [(PUIContactsPrivacyController *)self contactsFullAccessAllowedAppIDs];
  v23 = [(PUIContactsPrivacyController *)self contactsLimitedAccessAppIDs];
  v24 = [v22 setByAddingObjectsFromSet:v23];

  v25 = [(PUIContactsPrivacyController *)self contactsDeniedAppIDs];
  v26 = [v24 setByAddingObjectsFromSet:v25];
  [(PUIContactsPrivacyController *)self setContactsAllAppIDs:v26];

  v27 = bundleIdentifiersWithPickerAccess();
  [(PUIContactsPrivacyController *)self setPickerUsageAppIDs:v27];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_setContactsTCCStatus:(id)a3 specifier:(id)a4
{
  *&v17[13] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a4 propertyForKey:@"appBundleID"];
  v8 = [v6 intValue];

  if (v8 > 4)
  {
    v9 = @"unsupported";
  }

  else
  {
    v9 = off_279BA19A8[v8];
  }

  v10 = _PUILoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = v7;
    v16 = 1024;
    *v17 = v8;
    v17[2] = 2112;
    *&v17[3] = v9;
    _os_log_impl(&dword_2657FE000, v10, OS_LOG_TYPE_DEFAULT, "Selected contacts auth for app %@: %d(%@)", &v14, 0x1Cu);
  }

  v11 = _PUILoggingFacility();
  v12 = v11;
  if (v8 > 2)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v14 = 138412802;
      v15 = v7;
      v16 = 1024;
      *v17 = v8;
      v17[2] = 2112;
      *&v17[3] = v9;
      _os_log_fault_impl(&dword_2657FE000, v12, OS_LOG_TYPE_FAULT, "Unexpected value set for contacts tcc access for app %@: %d(%@)", &v14, 0x1Cu);
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v7;
      v16 = 2112;
      *v17 = v9;
      _os_log_impl(&dword_2657FE000, v12, OS_LOG_TYPE_DEFAULT, "Setting contacts auth for app %@ to %@", &v14, 0x16u);
    }

    [(PUIContactsPrivacyController *)self setTCCForService:*MEMORY[0x277D6C100] appIdentifier:v7 value:v8];
  }

  [(PUIContactsPrivacyController *)self updateContactsAuthorizationStates];
  [(PUIContactsPrivacyController *)self reloadSpecifiers];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setTCCForService:(__CFString *)a3 appIdentifier:(id)a4 value:(int)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = _PUILoggingFacility();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (a5 != 4)
  {
    if (v10)
    {
      *buf = 138412802;
      v25 = a3;
      v26 = 2112;
      v27 = v8;
      v28 = 1024;
      v29 = a5;
      _os_log_impl(&dword_2657FE000, v9, OS_LOG_TYPE_DEFAULT, "Setting TCC auth for service: %@ appIdentifier:%@, accessLevel:%d", buf, 0x1Cu);
    }

    if (setTCCForService_appIdentifier_value__onceToken_0 != -1)
    {
      [PUIContactsPrivacyController setTCCForService:appIdentifier:value:];
    }

    [(__CFString *)v8 cStringUsingEncoding:4];
    v9 = tcc_identity_create();
    v11 = tcc_service_singleton_for_CF_name();
    if (a5 == 1)
    {
      v17 = [(PUIContactsPrivacyController *)self contactsLimitedAccessAppIDs];
      v18 = [v17 containsObject:v8];

      if (v18)
      {
        goto LABEL_21;
      }
    }

    else if (a5 != 3)
    {
      if (a5 == 2)
      {
        v12 = [(PUIContactsPrivacyController *)self contactsFullAccessAllowedAppIDs];
        v13 = [v12 containsObject:v8];

        if ((v13 & 1) == 0)
        {
          if (_os_feature_enabled_impl())
          {
            v22[0] = MEMORY[0x277D85DD0];
            v22[1] = 3221225472;
            v22[2] = __69__PUIContactsPrivacyController_setTCCForService_appIdentifier_value___block_invoke_2;
            v22[3] = &unk_279BA18B0;
            v22[4] = self;
            v14 = v8;
            v23 = v14;
            v15 = _Block_copy(v22);
            v16 = _PUILoggingFacility();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v25 = a3;
              v26 = 2112;
              v27 = v14;
              _os_log_impl(&dword_2657FE000, v16, OS_LOG_TYPE_DEFAULT, "Setting %@ auth for app %@ to full, after prompt", buf, 0x16u);
            }

            tcc_server_message_prompt_authorization_value();
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_21:

        goto LABEL_22;
      }

      v19 = [(PUIContactsPrivacyController *)self contactsDeniedAppIDs];
      v20 = [v19 containsObject:v8];

      if (v20)
      {
        goto LABEL_21;
      }
    }

LABEL_20:
    tcc_server_message_set_authorization_value();
    [(PUIContactsPrivacyController *)self updateContactsAuthorizationStates];
    goto LABEL_21;
  }

  if (v10)
  {
    *buf = 138412290;
    v25 = v8;
    _os_log_impl(&dword_2657FE000, v9, OS_LOG_TYPE_DEFAULT, "Access level is picker only; Skipping for app: %@", buf, 0xCu);
  }

LABEL_22:

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __69__PUIContactsPrivacyController_setTCCForService_appIdentifier_value___block_invoke()
{
  setTCCForService_appIdentifier_value__tccServer_0 = tcc_server_create();

  return MEMORY[0x2821F96F8]();
}

void __69__PUIContactsPrivacyController_setTCCForService_appIdentifier_value___block_invoke_2(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) updateContactsAuthorizationStates];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9 = @"PUIContactsPrivacyUpgradePromptAppIdentifierKey";
  v10[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v2 postNotificationName:@"PUIContactsPrivacyUpgradePromptCompletedNotification" object:v4 userInfo:v5];

  v6 = dispatch_time(0, 100000000);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__PUIContactsPrivacyController_setTCCForService_appIdentifier_value___block_invoke_3;
  v8[3] = &unk_279BA0B28;
  v8[4] = *(a1 + 32);
  dispatch_after(v6, MEMORY[0x277D85CD0], v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (id)contactsStatus:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a3 propertyForKey:@"appBundleID"];
  v5 = [(PUIContactsPrivacyController *)self contactsFullAccessAllowedAppIDs];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = _PUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v4;
      _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "App %@ has full contacts access", &v18, 0xCu);
    }

    v8 = &unk_28772B2E8;
    goto LABEL_19;
  }

  v9 = [(PUIContactsPrivacyController *)self contactsLimitedAccessAppIDs];
  v10 = [v9 containsObject:v4];

  if (v10)
  {
    v7 = _PUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v4;
      _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "App %@ has limited contacts access", &v18, 0xCu);
    }

    v8 = &unk_28772B2D0;
    goto LABEL_19;
  }

  v11 = [(PUIContactsPrivacyController *)self contactsDeniedAppIDs];
  v12 = [v11 containsObject:v4];

  if (v12)
  {
    v7 = _PUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v4;
      _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "App %@ has no access to contacts", &v18, 0xCu);
    }

LABEL_18:
    v8 = &unk_28772B300;
    goto LABEL_19;
  }

  v13 = [(PUIContactsPrivacyController *)self pickerUsageAppIDs];
  v14 = [v13 containsObject:v4];

  v15 = _PUILoggingFacility();
  v7 = v15;
  if (!v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(PUIContactsPrivacyController *)v4 contactsStatus:v7];
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v4;
    _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "App %@ has private access to contacts", &v18, 0xCu);
  }

  v8 = &unk_28772B318;
LABEL_19:

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)appSpecifierWithName:(id)a3 bundleID:(id)a4 showContactsAccess:(BOOL)a5 showPickerUsage:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = MEMORY[0x277D3FAD8];
  v11 = a4;
  v12 = a3;
  v13 = [v10 preferenceSpecifierNamed:v12 target:self set:sel__setContactsTCCStatus_specifier_ get:sel_contactsStatus_ detail:objc_opt_class() cell:2 edit:0];
  [v13 setIdentifier:v11];
  [v13 setProperty:v11 forKey:@"appBundleID"];

  [v13 setProperty:v12 forKey:@"appLocalizedDisplayName"];
  v14 = PUI_LocalizedStringForPrivacy(@"CONTACTS_AUTH_HEADER");
  [v13 setProperty:v14 forKey:*MEMORY[0x277D40110]];

  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [MEMORY[0x277CBEB18] array];
  if (v7)
  {
    v17 = PUI_LocalizedStringForPrivacy(@"CONTACTS_NO_ACCESS_AUTHORIZATION");
    [v15 addObject:v17];

    [v16 addObject:&unk_28772B300];
    [v13 setProperty:MEMORY[0x277CBEC38] forKey:@"hasTCCOptions"];
    v18 = PUI_LocalizedStringForPrivacy(@"CONTACTS_LIMITED_ACCESS_AUTHORIZATION");
    [v15 addObject:v18];

    [v16 addObject:&unk_28772B2D0];
    v19 = PUI_LocalizedStringForPrivacy(@"CONTACTS_FULL_ACCESS_AUTHORIZATION");
    [v15 addObject:v19];

    [v16 addObject:&unk_28772B2E8];
  }

  if (v6)
  {
    v20 = PUI_LocalizedStringForPrivacy(@"CONTACTS_PICKER_ONLY_AUTHORIZATION");
    [v15 addObject:v20];

    [v16 addObject:&unk_28772B318];
    [v13 setProperty:MEMORY[0x277CBEC38] forKey:@"hasPickerInfo"];
  }

  [v13 setValues:v16 titles:v15];

  return v13;
}

- (id)createSpecifiersWithCombinedPickerUsage
{
  v101 = *MEMORY[0x277D85DE8];
  v2 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v62 = *MEMORY[0x277D3FC48];
    [(PUIContactsPrivacyController *)self updateContactsAuthorizationStates];
    v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = MEMORY[0x277D6C100];
    v6 = *MEMORY[0x277D6C100];
    v7 = TCCAccessCopyInformation();
    v75 = [PUIContactsPrivacyController isServiceRestricted:*v5];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v90 objects:v100 count:16];
    if (v8)
    {
      v9 = *v91;
      v69 = *MEMORY[0x277D40008];
      v66 = *MEMORY[0x277D40020];
      v64 = *MEMORY[0x277D3FF38];
      v10 = MEMORY[0x277D6C0C8];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v91 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v90 + 1) + 8 * i);
          v13 = [v12 objectForKey:*v10];
          v14 = v13;
          if (v13)
          {
            v15 = CFBundleGetIdentifier(v13);
            if (([v4 containsObject:v15] & 1) == 0)
            {
              [v4 addObject:v15];
              v16 = PUIDisplayNameForApp(v14);
              v17 = [(PUIContactsPrivacyController *)self contactsAllAppIDs];
              v18 = [v17 containsObject:v15];

              v19 = [(PUIContactsPrivacyController *)self pickerUsageAppIDs];
              v20 = [v19 containsObject:v15];

              if ((v18 | v20))
              {
                v21 = [(PUIContactsPrivacyController *)self appSpecifierWithName:v16 bundleID:v15 showContactsAccess:v18 showPickerUsage:v20];
                [v21 setProperty:v15 forKey:v69];
                [v21 setProperty:MEMORY[0x277CBEC38] forKey:v66];
                v22 = [MEMORY[0x277CCABB0] numberWithInt:!v75];
                [v21 setProperty:v22 forKey:v64];

                [v76 addObject:v21];
              }
            }
          }

          else
          {
            v15 = _PUILoggingFacility();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v95 = v12;
              _os_log_impl(&dword_2657FE000, v15, OS_LOG_TYPE_DEFAULT, "Contacts: TCCAccess skipping app with nil bundle for %@", buf, 0xCu);
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v90 objects:v100 count:16];
      }

      while (v8);
    }

    v63 = PUIGetActivePairedDevice();
    if (v63 && objc_opt_class())
    {
      v23 = [MEMORY[0x277D2BD58] sharedInstance];
      ScreenScale();
      v88 = 0u;
      v89 = 0u;
      if (v24 == 2)
      {
        v25 = 47;
      }

      else
      {
        v25 = 48;
      }

      v67 = v25;
      v87 = 0uLL;
      v86 = 0uLL;
      v70 = [(PUIContactsPrivacyController *)self contactsAllAppIDs];
      v26 = [v70 countByEnumeratingWithState:&v86 objects:v99 count:16];
      if (v26)
      {
        v72 = *v87;
        v65 = *MEMORY[0x277D3FF38];
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v87 != v72)
            {
              objc_enumerationMutation(v70);
            }

            v28 = *(*(&v86 + 1) + 8 * j);
            if (([v4 containsObject:v28] & 1) == 0)
            {
              [v4 addObject:v28];
              v29 = PUIDisplayNameForWatchApp(v28);
              if (v29)
              {
                v30 = v28;
              }

              else
              {
                v30 = PUIWatchBundleIDForBundleID(v28);
                v29 = PUIDisplayNameForWatchApp(v30);
              }

              v31 = [(PUIContactsPrivacyController *)self contactsAllAppIDs];
              v32 = [v31 containsObject:v28];

              v33 = [(PUIContactsPrivacyController *)self pickerUsageAppIDs];
              v34 = [v33 containsObject:v28];

              if (v29)
              {
                v35 = v29;
              }

              else
              {
                v35 = v28;
              }

              v36 = [(PUIContactsPrivacyController *)self appSpecifierWithName:v35 bundleID:v28 showContactsAccess:v32 showPickerUsage:v34];
              v37 = [MEMORY[0x277CCABB0] numberWithInt:!v75];
              [v36 setObject:v37 forKeyedSubscript:v65];

              objc_initWeak(buf, self);
              v83[0] = MEMORY[0x277D85DD0];
              v83[1] = 3221225472;
              v83[2] = __71__PUIContactsPrivacyController_createSpecifiersWithCombinedPickerUsage__block_invoke;
              v83[3] = &unk_279BA1900;
              v38 = v36;
              v84 = v38;
              objc_copyWeak(&v85, buf);
              [v23 getIconForBundleID:v30 iconVariant:v67 block:v83 timeout:-1.0];
              [v76 addObject:v38];
              objc_destroyWeak(&v85);

              objc_destroyWeak(buf);
            }
          }

          v26 = [v70 countByEnumeratingWithState:&v86 objects:v99 count:16];
        }

        while (v26);
      }
    }

    v73 = bundleIdentifiersWithPickerAccess();
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v39 = [v73 countByEnumeratingWithState:&v79 objects:v98 count:16];
    if (v39)
    {
      v40 = *v80;
      v71 = *MEMORY[0x277D40008];
      v68 = *MEMORY[0x277D40020];
      v41 = *MEMORY[0x277D3FF38];
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v80 != v40)
          {
            objc_enumerationMutation(v73);
          }

          v43 = *(*(&v79 + 1) + 8 * k);
          if ([v4 containsObject:v43])
          {
            v44 = _PUILoggingFacility();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v95 = v43;
              _os_log_impl(&dword_2657FE000, v44, OS_LOG_TYPE_DEFAULT, "Contacts: Skipping picker log: %@", buf, 0xCu);
            }
          }

          else
          {
            v78 = 0;
            v45 = [MEMORY[0x277CC1E70] bundleRecordWithApplicationIdentifier:v43 error:&v78];
            v44 = v78;
            if (v45)
            {
              v46 = [v45 localizedName];
              v47 = [(PUIContactsPrivacyController *)self appSpecifierWithName:v46 bundleID:v43 showContactsAccess:0 showPickerUsage:1];
              [v47 setProperty:v43 forKey:v71];
              [v47 setProperty:MEMORY[0x277CBEC38] forKey:v68];
              v48 = [MEMORY[0x277CCABB0] numberWithInt:!v75];
              [v47 setObject:v48 forKeyedSubscript:v41];

              [v76 addObject:v47];
            }

            else
            {
              v46 = _PUILoggingFacility();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v95 = v43;
                v96 = 2112;
                v97 = v44;
                _os_log_impl(&dword_2657FE000, v46, OS_LOG_TYPE_DEFAULT, "Contacts: Skipping picker log for app (%@) without bundle record with error: %@", buf, 0x16u);
              }
            }
          }
        }

        v39 = [v73 countByEnumeratingWithState:&v79 objects:v98 count:16];
      }

      while (v39);
    }

    [v76 sortUsingComparator:&__block_literal_global_280];
    v49 = [v76 copy];
    [(PUIContactsPrivacyController *)self setContactsAppSpecifiers:v49];

    v50 = objc_opt_new();
    v51 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    [v51 setIdentifier:@"CONTACTS_PRIVACY_FOOTER"];
    v52 = PUI_LocalizedStringForPrivacy(@"CONTACTS_PRIVACY_FOOTER");
    v53 = *MEMORY[0x277D3FF88];
    [v51 setProperty:v52 forKey:*MEMORY[0x277D3FF88]];
    [v50 addObject:v51];
    v54 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v54 setProperty:@"CONTACTS_PICKER_INFO_CELL" forKey:*MEMORY[0x277D3FFB8]];
    v55 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
    [v54 setProperty:v55 forKey:*MEMORY[0x277D40140]];

    [v54 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [v54 setIdentifier:@"CONTACTS_AVATAR_VIEW"];
    [v50 addObject:v54];
    if ([v76 count])
    {
      v56 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28771E540 target:0 set:0 get:0 detail:0 cell:0 edit:0];
      [v56 setIdentifier:@"CONTACTS_APP_GROUP"];
      [v50 addObject:v56];
      [v50 addObjectsFromArray:v76];
    }

    else
    {
      v56 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
      [v56 setIdentifier:@"NO_APP_GROUP"];
      v57 = PUI_LocalizedStringForPrivacy(@"CONTACTS_NO_APP_FOOTER");
      [v56 setProperty:v57 forKey:v53];
      [v50 addObject:v56];
    }

    v58 = *(&self->super.super.super.super.super.isa + v62);
    *(&self->super.super.super.super.super.isa + v62) = v50;
    v59 = v50;

    v3 = *(&self->super.super.super.super.super.isa + v62);
  }

  v60 = *MEMORY[0x277D85DE8];

  return v3;
}

void __71__PUIContactsPrivacyController_createSpecifiersWithCombinedPickerUsage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__PUIContactsPrivacyController_createSpecifiersWithCombinedPickerUsage__block_invoke_2;
  block[3] = &unk_279BA18D8;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
}

void __71__PUIContactsPrivacyController_createSpecifiersWithCombinedPickerUsage__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setProperty:*(a1 + 40) forKey:*MEMORY[0x277D3FFC0]];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

uint64_t __71__PUIContactsPrivacyController_createSpecifiersWithCombinedPickerUsage__block_invoke_277(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (void)setAccess:(id)a3 forSpecifier:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x277D401A8];
  v8 = [v6 propertyForKey:*MEMORY[0x277D401A8]];
  v9 = [v5 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [v6 propertyForKey:@"appBundleID"];
    v11 = *MEMORY[0x277D6C100];
    [v5 BOOLValue];
    TCCAccessSetForBundleId();
    [v6 setProperty:v5 forKey:v7];
    v12 = _PUILoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_2657FE000, v12, OS_LOG_TYPE_DEFAULT, "########### Quitting application (%@) in response to privacy settings change.", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)createSpecifiers
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v61 = *MEMORY[0x277D3FC48];
    v4 = *MEMORY[0x277D6C100];
    v5 = TCCAccessCopyInformation();
    v76 = objc_opt_new();
    v74 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count") + 1}];
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v84 objects:v91 count:16];
    if (v6)
    {
      v75 = *v85;
      v72 = *MEMORY[0x277D40008];
      v68 = *MEMORY[0x277D401A8];
      v70 = *MEMORY[0x277D40020];
      v64 = *MEMORY[0x277D3FE58];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v85 != v75)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v84 + 1) + 8 * i);
          v9 = [v8 objectForKey:*MEMORY[0x277D6C0C8]];
          v10 = v9;
          if (v9)
          {
            v11 = CFBundleGetIdentifier(v9);
            [v76 addObject:v11];
            v12 = MEMORY[0x277D3FAD8];
            v13 = PUIDisplayNameForApp(v10);
            v14 = [v12 preferenceSpecifierNamed:v13 target:self set:sel_setAccess_forSpecifier_ get:sel_accesssForSpecifier_ detail:0 cell:6 edit:0];

            [v14 setIdentifier:v11];
            [v14 setProperty:v11 forKey:v72];
            [v14 setProperty:MEMORY[0x277CBEC38] forKey:v70];
            v15 = [v8 objectForKey:*MEMORY[0x277D6C0D0]];
            [v14 setProperty:v15 forKey:v68];

            [v14 setProperty:v11 forKey:@"appBundleID"];
            [v14 setProperty:v11 forKey:@"PUITCCAccessControllerBundleIDKey"];
            v16 = [(PUIContactsPrivacyController *)self specifier];
            v17 = [v16 objectForKeyedSubscript:@"PUITCCAccessControllerCellClassKey"];

            if (v17)
            {
              v18 = [(PUIContactsPrivacyController *)self specifier];
              v19 = [v18 objectForKeyedSubscript:@"PUITCCAccessControllerCellClassKey"];
              [v14 setProperty:v19 forKey:v64];
            }

            v20 = [(PUIContactsPrivacyController *)self specifier];
            v21 = [v20 objectForKeyedSubscript:@"PUITCCAccessControllerCellDelegateKey"];

            if (v21)
            {
              v22 = [(PUIContactsPrivacyController *)self specifier];
              v23 = [v22 objectForKeyedSubscript:@"PUITCCAccessControllerCellDelegateKey"];
              [v14 setProperty:v23 forKey:@"PUITCCAccessControllerCellDelegateKey"];
            }

            [v74 addObject:v14];
          }

          else
          {
            v11 = _PUILoggingFacility();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v90 = v8;
              _os_log_impl(&dword_2657FE000, v11, OS_LOG_TYPE_DEFAULT, "TCCAccess skipping app with nil bundle: %@", buf, 0xCu);
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v84 objects:v91 count:16];
      }

      while (v6);
    }

    v60 = PUIGetActivePairedDevice();
    if (v60 && objc_opt_class())
    {
      v24 = MEMORY[0x277CBEB98];
      v25 = *MEMORY[0x277D6C100];
      v26 = TCCAccessCopyBundleIdentifiersForService();
      v71 = [v24 setWithArray:v26];

      v27 = MEMORY[0x277CBEB98];
      v28 = *MEMORY[0x277D6C100];
      v29 = TCCAccessCopyBundleIdentifiersDisabledForService();
      v59 = [v27 setWithArray:v29];

      v30 = [v71 setByAddingObjectsFromSet:v59];
      v69 = [MEMORY[0x277D2BD58] sharedInstance];
      ScreenScale();
      if (v31 == 2)
      {
        v32 = 47;
      }

      else
      {
        v32 = 48;
      }

      v67 = v32;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v73 = v30;
      v33 = [v73 countByEnumeratingWithState:&v80 objects:v88 count:16];
      if (v33)
      {
        v34 = *v81;
        v65 = *MEMORY[0x277D3FFC0];
        v63 = *MEMORY[0x277D401A8];
        v62 = *MEMORY[0x277D3FE58];
        do
        {
          v35 = 0;
          do
          {
            if (*v81 != v34)
            {
              objc_enumerationMutation(v73);
            }

            v36 = *(*(&v80 + 1) + 8 * v35);
            if (([v76 containsObject:v36] & 1) == 0)
            {
              [v76 addObject:v36];
              v37 = PUIDisplayNameForWatchApp(v36);
              if (v37)
              {
                v38 = v36;
                v39 = MEMORY[0x277D3FAD8];
                goto LABEL_30;
              }

              v38 = PUIWatchBundleIDForBundleID(v36);
              v37 = PUIDisplayNameForWatchApp(v38);
              if (!(v37 | v38))
              {
                goto LABEL_36;
              }

              v39 = MEMORY[0x277D3FAD8];
              v40 = v36;
              if (v37)
              {
LABEL_30:
                v40 = v37;
              }

              v41 = [v39 preferenceSpecifierNamed:v40 target:self set:sel__setContactsTCCStatus_specifier_ get:sel_contactsStatus_ detail:0 cell:6 edit:0];
              [v41 setIdentifier:v36];
              v42 = PSBlankIconImage();
              [v41 setProperty:v42 forKey:v65];

              v43 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v71, "containsObject:", v36)}];
              [v41 setProperty:v43 forKey:v63];

              [v41 setProperty:v36 forKey:@"appBundleID"];
              [v41 setProperty:v36 forKey:@"PUITCCAccessControllerBundleIDKey"];
              v44 = [(PUIContactsPrivacyController *)self specifier];
              v45 = [v44 objectForKeyedSubscript:@"PUITCCAccessControllerCellClassKey"];

              if (v45)
              {
                v46 = [(PUIContactsPrivacyController *)self specifier];
                v47 = [v46 objectForKeyedSubscript:@"PUITCCAccessControllerCellClassKey"];
                [v41 setProperty:v47 forKey:v62];
              }

              v48 = [(PUIContactsPrivacyController *)self specifier];
              v49 = [v48 objectForKeyedSubscript:@"PUITCCAccessControllerCellDelegateKey"];

              if (v49)
              {
                v50 = [(PUIContactsPrivacyController *)self specifier];
                v51 = [v50 objectForKeyedSubscript:@"PUITCCAccessControllerCellDelegateKey"];
                [v41 setProperty:v51 forKey:@"PUITCCAccessControllerCellDelegateKey"];
              }

              objc_initWeak(buf, self);
              v77[0] = MEMORY[0x277D85DD0];
              v77[1] = 3221225472;
              v77[2] = __48__PUIContactsPrivacyController_createSpecifiers__block_invoke;
              v77[3] = &unk_279BA1900;
              v52 = v41;
              v78 = v52;
              objc_copyWeak(&v79, buf);
              [v69 getIconForBundleID:v38 iconVariant:v67 block:v77 timeout:-1.0];
              [v74 addObject:v52];
              objc_destroyWeak(&v79);

              objc_destroyWeak(buf);
            }

LABEL_36:
            ++v35;
          }

          while (v33 != v35);
          v53 = [v73 countByEnumeratingWithState:&v80 objects:v88 count:16];
          v33 = v53;
        }

        while (v53);
      }
    }

    [v74 sortUsingComparator:&__block_literal_global_303];
    v54 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    v55 = PUI_LocalizedStringForPrivacy(@"CONTACTS_FOOTER");
    [v54 setProperty:v55 forKey:*MEMORY[0x277D3FF88]];

    [v74 addObject:v54];
    v56 = *(&self->super.super.super.super.super.isa + v61);
    *(&self->super.super.super.super.super.isa + v61) = v74;

    [(PUIContactsPrivacyController *)self updateSpecifiersForImposedSettings];
    v3 = *(&self->super.super.super.super.super.isa + v61);
  }

  v57 = *MEMORY[0x277D85DE8];

  return v3;
}

void __48__PUIContactsPrivacyController_createSpecifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PUIContactsPrivacyController_createSpecifiers__block_invoke_2;
  block[3] = &unk_279BA18D8;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
}

void __48__PUIContactsPrivacyController_createSpecifiers__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setProperty:*(a1 + 40) forKey:*MEMORY[0x277D3FFC0]];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

uint64_t __48__PUIContactsPrivacyController_createSpecifiers__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.isa + v3))
  {
    if (_os_feature_enabled_impl())
    {
      [(PUIContactsPrivacyController *)self createSpecifiersWithCombinedPickerUsage];
    }

    else
    {
      [(PUIContactsPrivacyController *)self createSpecifiers];
    }
    v4 = ;
    v5 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v4;
  }

  v6 = *(&self->super.super.super.super.super.isa + v3);

  return v6;
}

- (void)contactsStatus:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "Unknown or unexpected status for contacts access, not in any array; Defaulting to denied: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end