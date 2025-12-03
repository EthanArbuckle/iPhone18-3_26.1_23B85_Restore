@interface PUICalendarPrivacyController
+ (BOOL)isServiceRestricted:(id)restricted;
- (id)appSpecifierWithName:(id)name bundleID:(id)d;
- (id)calendarStatus:(id)status;
- (id)specifiers;
- (void)_setCalendarStatus:(id)status specifier:(id)specifier;
- (void)provideNavigationDonations;
- (void)setTCCForService:(__CFString *)service appIdentifier:(id)identifier value:(int)value;
- (void)updateCalendarAuthorizationStates;
- (void)updateSpecifiersForImposedSettings;
@end

@implementation PUICalendarPrivacyController

+ (BOOL)isServiceRestricted:(id)restricted
{
  restrictedCopy = restricted;
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v4 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  v5 = v4;
  if (v4)
  {
    v6 = [v4 containsObject:restrictedCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)provideNavigationDonations
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"CALENDARS" table:@"Privacy" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:currentLocale2 bundleURL:bundleURL];

  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/CALENDARS"];
  [(PUICalendarPrivacyController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.privacy" title:v7 localizedNavigationComponents:v11 deepLink:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setTCCForService:(__CFString *)service appIdentifier:(id)identifier value:(int)value
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v9 = _PUILoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    serviceCopy = service;
    v20 = 2112;
    v21 = identifierCopy;
    v22 = 1024;
    valueCopy = value;
    _os_log_impl(&dword_2657FE000, v9, OS_LOG_TYPE_DEFAULT, "Setting TCC auth for service: %@ appIdentifier:%@, accessLevel:%d", buf, 0x1Cu);
  }

  if (setTCCForService_appIdentifier_value__onceToken != -1)
  {
    [PUICalendarPrivacyController setTCCForService:appIdentifier:value:];
  }

  [identifierCopy cStringUsingEncoding:4];
  v10 = tcc_identity_create();
  v11 = tcc_service_singleton_for_CF_name();
  if (value == 2)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__PUICalendarPrivacyController_setTCCForService_appIdentifier_value___block_invoke_2;
    v16[3] = &unk_279BA18B0;
    v16[4] = self;
    v12 = identifierCopy;
    v17 = v12;
    v13 = _Block_copy(v16);
    v14 = _PUILoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      serviceCopy = v12;
      _os_log_impl(&dword_2657FE000, v14, OS_LOG_TYPE_DEFAULT, "Setting calendar auth for app %@ to full, after prompt", buf, 0xCu);
    }

    tcc_server_message_prompt_authorization_value();
  }

  else
  {
    tcc_server_message_set_authorization_value();
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __69__PUICalendarPrivacyController_setTCCForService_appIdentifier_value___block_invoke()
{
  setTCCForService_appIdentifier_value__tccServer = tcc_server_create();

  return MEMORY[0x2821F96F8]();
}

void __69__PUICalendarPrivacyController_setTCCForService_appIdentifier_value___block_invoke_2(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) updateCalendarAuthorizationStates];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9 = @"PUICalendarPrivacyUpgradePromptAppIdentifierKey";
  v10[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v2 postNotificationName:@"PUICalendarPrivacyUpgradePromptCompletedNotification" object:v4 userInfo:v5];

  v6 = dispatch_time(0, 100000000);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__PUICalendarPrivacyController_setTCCForService_appIdentifier_value___block_invoke_3;
  v8[3] = &unk_279BA0B28;
  v8[4] = *(a1 + 32);
  dispatch_after(v6, MEMORY[0x277D85CD0], v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (id)specifiers
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v48 = *MEMORY[0x277D3FC48];
    val = self;
    [(PUICalendarPrivacyController *)self updateCalendarAuthorizationStates];
    v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = MEMORY[0x277D6C118];
    v5 = *MEMORY[0x277D6C118];
    v6 = TCCAccessCopyInformation();
    v7 = objc_opt_new();
    v54 = [PUICalendarPrivacyController isServiceRestricted:*v4];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
    if (v8)
    {
      v9 = *v66;
      v52 = *MEMORY[0x277D40008];
      v50 = *MEMORY[0x277D40020];
      v10 = *MEMORY[0x277D3FF38];
      v11 = MEMORY[0x277D6C0C8];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v66 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v65 + 1) + 8 * i);
          v14 = [v13 objectForKey:*v11];
          v15 = v14;
          if (v14)
          {
            v16 = CFBundleGetIdentifier(v14);
            if (([v7 containsObject:v16] & 1) == 0)
            {
              [v7 addObject:v16];
              v17 = PUIDisplayNameForApp(v15);
              v18 = [(PUICalendarPrivacyController *)val appSpecifierWithName:v17 bundleID:v16];
              [v18 setProperty:v16 forKey:v52];
              [v18 setProperty:MEMORY[0x277CBEC38] forKey:v50];
              v19 = [MEMORY[0x277CCABB0] numberWithInt:!v54];
              [v18 setObject:v19 forKeyedSubscript:v10];

              [v55 addObject:v18];
            }
          }

          else
          {
            v16 = _PUILoggingFacility();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v71 = v13;
              _os_log_impl(&dword_2657FE000, v16, OS_LOG_TYPE_DEFAULT, "TCCAccess skipping app with nil bundle: %@", buf, 0xCu);
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
      }

      while (v8);
    }

    v47 = PUIGetActivePairedDevice();
    if (v47 && objc_opt_class())
    {
      mEMORY[0x277D2BD58] = [MEMORY[0x277D2BD58] sharedInstance];
      ScreenScale();
      if (v20 == 2)
      {
        v21 = 47;
      }

      else
      {
        v21 = 48;
      }

      v49 = v21;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      calendarAllAppIDs = [(PUICalendarPrivacyController *)val calendarAllAppIDs];
      v22 = [calendarAllAppIDs countByEnumeratingWithState:&v61 objects:v69 count:16];
      if (v22)
      {
        v23 = *v62;
        v24 = *MEMORY[0x277D3FF38];
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v62 != v23)
            {
              objc_enumerationMutation(calendarAllAppIDs);
            }

            v26 = *(*(&v61 + 1) + 8 * j);
            if (([v7 containsObject:v26] & 1) == 0)
            {
              [v7 addObject:v26];
              v27 = PUIDisplayNameForWatchApp(v26);
              if (v27)
              {
                v28 = v26;
              }

              else
              {
                v28 = PUIWatchBundleIDForBundleID(v26);
                v27 = PUIDisplayNameForWatchApp(v28);
              }

              if (v27)
              {
                v29 = v27;
              }

              else
              {
                v29 = v26;
              }

              v30 = [(PUICalendarPrivacyController *)val appSpecifierWithName:v29 bundleID:v26];
              v31 = [MEMORY[0x277CCABB0] numberWithInt:!v54];
              [v30 setObject:v31 forKeyedSubscript:v24];

              objc_initWeak(buf, val);
              v58[0] = MEMORY[0x277D85DD0];
              v58[1] = 3221225472;
              v58[2] = __42__PUICalendarPrivacyController_specifiers__block_invoke;
              v58[3] = &unk_279BA1900;
              v32 = v30;
              v59 = v32;
              objc_copyWeak(&v60, buf);
              [mEMORY[0x277D2BD58] getIconForBundleID:v28 iconVariant:v49 block:v58 timeout:-1.0];
              [v55 addObject:v32];
              objc_destroyWeak(&v60);

              objc_destroyWeak(buf);
            }
          }

          v22 = [calendarAllAppIDs countByEnumeratingWithState:&v61 objects:v69 count:16];
        }

        while (v22);
      }
    }

    [v55 sortUsingComparator:&__block_literal_global_107];
    v33 = [v55 copy];
    [(PUICalendarPrivacyController *)val setCalendarAppSpecifiers:v33];

    v34 = objc_opt_new();
    v35 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    [v35 setIdentifier:@"CALENDAR_PRIVACY_DESCRIPTION"];
    v36 = PUI_LocalizedStringForPrivacy(@"CALENDARS_PRIVACY_DESCRIPTION");
    v37 = *MEMORY[0x277D3FF88];
    [v35 setProperty:v36 forKey:*MEMORY[0x277D3FF88]];
    [v34 addObject:v35];
    v38 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:val set:0 get:0 detail:0 cell:-1 edit:0];
    [v38 setProperty:@"CALENDAR_PICKER_INFO_CELL" forKey:*MEMORY[0x277D3FFB8]];
    v39 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
    [v38 setProperty:v39 forKey:*MEMORY[0x277D40140]];

    [v38 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [v38 setIdentifier:@"CALENDAR_PREVIEW_GROUP"];
    [v34 addObject:v38];
    v40 = [v55 count] == 0;
    v41 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    v42 = v41;
    if (v40)
    {
      [v41 setIdentifier:@"NO_APP_GROUP"];
      v43 = PUI_LocalizedStringForPrivacy(@"CALENDARS_NO_APP_FOOTER");
      [v42 setProperty:v43 forKey:v37];
      [v34 addObject:v42];
    }

    else
    {
      [v41 setIdentifier:@"CALENDAR_FOOTER_SPACING"];
      [v34 addObject:v42];
      [v34 addObjectsFromArray:v55];
    }

    v44 = *(&val->super.super.super.super.super.isa + v48);
    *(&val->super.super.super.super.super.isa + v48) = v34;

    [(PUICalendarPrivacyController *)val updateSpecifiersForImposedSettings];
    v3 = *(&val->super.super.super.super.super.isa + v48);
  }

  v45 = *MEMORY[0x277D85DE8];

  return v3;
}

void __42__PUICalendarPrivacyController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PUICalendarPrivacyController_specifiers__block_invoke_2;
  block[3] = &unk_279BA18D8;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
}

void __42__PUICalendarPrivacyController_specifiers__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setProperty:*(a1 + 40) forKey:*MEMORY[0x277D3FFC0]];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

uint64_t __42__PUICalendarPrivacyController_specifiers__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (id)appSpecifierWithName:(id)name bundleID:(id)d
{
  v6 = MEMORY[0x277D3FAD8];
  dCopy = d;
  nameCopy = name;
  v9 = [v6 preferenceSpecifierNamed:nameCopy target:self set:sel__setCalendarStatus_specifier_ get:sel_calendarStatus_ detail:objc_opt_class() cell:2 edit:0];

  [v9 setIdentifier:dCopy];
  [v9 setProperty:dCopy forKey:@"appBundleID"];

  v10 = PUI_LocalizedStringForPrivacy(@"CALENDARS_AUTH_HEADER");
  [v9 setProperty:v10 forKey:*MEMORY[0x277D40110]];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v13 = PUI_LocalizedStringForPrivacy(@"CALENDARS_NO_ACCESS_AUTHORIZATION");
  [array addObject:v13];

  [array2 addObject:&unk_28772B2B8];
  v14 = PUI_LocalizedStringForPrivacy(@"CALENDARS_WRITE_ONLY_ACCESS_AUTHORIZATION");
  [array addObject:v14];

  [array2 addObject:&unk_28772B288];
  v15 = PUI_LocalizedStringForPrivacy(@"CALENDARS_FULL_ACCESS_AUTHORIZATION");
  [array addObject:v15];

  [array2 addObject:&unk_28772B2A0];
  [v9 setValues:array2 titles:array];

  return v9;
}

- (void)_setCalendarStatus:(id)status specifier:(id)specifier
{
  v23 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v7 = [specifier propertyForKey:@"appBundleID"];
  v8 = _PUILoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = v7;
    v21 = 1024;
    intValue = [statusCopy intValue];
    _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "Selected entry for app %@: %d", &v19, 0x12u);
  }

  if ([statusCopy intValue] == 2)
  {
    v9 = _PUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v7;
      _os_log_impl(&dword_2657FE000, v9, OS_LOG_TYPE_DEFAULT, "Setting calendar auth for app %@ to full", &v19, 0xCu);
    }

    v10 = *MEMORY[0x277D6C118];
    selfCopy3 = self;
    v12 = v7;
    v13 = 2;
LABEL_18:
    [(PUICalendarPrivacyController *)selfCopy3 setTCCForService:v10 appIdentifier:v12 value:v13];
    goto LABEL_19;
  }

  if ([statusCopy intValue] == 1)
  {
    v14 = _PUILoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v7;
      _os_log_impl(&dword_2657FE000, v14, OS_LOG_TYPE_DEFAULT, "Setting calendar auth for app %@ to write-only", &v19, 0xCu);
    }

    v10 = *MEMORY[0x277D6C118];
    selfCopy3 = self;
    v12 = v7;
    v13 = 1;
    goto LABEL_18;
  }

  intValue2 = [statusCopy intValue];
  v16 = _PUILoggingFacility();
  v17 = v16;
  if (!intValue2)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v7;
      _os_log_impl(&dword_2657FE000, v17, OS_LOG_TYPE_DEFAULT, "Setting calendar auth for app %@ to denied", &v19, 0xCu);
    }

    v10 = *MEMORY[0x277D6C118];
    selfCopy3 = self;
    v12 = v7;
    v13 = 0;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [PUICalendarPrivacyController _setCalendarStatus:statusCopy specifier:v17];
  }

LABEL_19:
  [(PUICalendarPrivacyController *)self updateCalendarAuthorizationStates];
  [(PUICalendarPrivacyController *)self reloadSpecifiers];

  v18 = *MEMORY[0x277D85DE8];
}

- (id)calendarStatus:(id)status
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [status propertyForKey:@"appBundleID"];
  calendarFullAccessAllowedAppIDs = [(PUICalendarPrivacyController *)self calendarFullAccessAllowedAppIDs];
  v6 = [calendarFullAccessAllowedAppIDs containsObject:v4];

  if (v6)
  {
    v7 = _PUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "App %@ has full calendar access", &v16, 0xCu);
    }

    v8 = &unk_28772B2A0;
  }

  else
  {
    calendarWriteOnlyAppIDs = [(PUICalendarPrivacyController *)self calendarWriteOnlyAppIDs];
    v10 = [calendarWriteOnlyAppIDs containsObject:v4];

    if (v10)
    {
      v7 = _PUILoggingFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v4;
        _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "App %@ has write-only calendar access", &v16, 0xCu);
      }

      v8 = &unk_28772B288;
    }

    else
    {
      calendarNoAccessAppIDs = [(PUICalendarPrivacyController *)self calendarNoAccessAppIDs];
      v12 = [calendarNoAccessAppIDs containsObject:v4];

      v13 = _PUILoggingFacility();
      v7 = v13;
      if (v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138412290;
          v17 = v4;
          _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "App %@ has no calendar access", &v16, 0xCu);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(PUICalendarPrivacyController *)v4 calendarStatus:v7];
      }

      v8 = &unk_28772B2B8;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)updateCalendarAuthorizationStates
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D6C118];
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
  v30 = __PUICalendarAuthorizationStatesForService_block_invoke;
  v31 = &unk_279BA1948;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v35 = v3;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  tcc_server_message_get_authorization_records_by_service();
  v13 = [v12 copy];
  v14 = v13;
  v15 = [v11 copy];
  v16 = v15;
  v17 = [v10 copy];
  v18 = v17;

  v19 = v13;
  v20 = v15;
  v21 = v17;
  [(PUICalendarPrivacyController *)self setCalendarFullAccessAllowedAppIDs:v19];
  [(PUICalendarPrivacyController *)self setCalendarWriteOnlyAppIDs:v20];

  [(PUICalendarPrivacyController *)self setCalendarNoAccessAppIDs:v21];
  calendarWriteOnlyAppIDs = [(PUICalendarPrivacyController *)self calendarWriteOnlyAppIDs];
  calendarFullAccessAllowedAppIDs = [(PUICalendarPrivacyController *)self calendarFullAccessAllowedAppIDs];
  v24 = [calendarWriteOnlyAppIDs setByAddingObjectsFromSet:calendarFullAccessAllowedAppIDs];
  [(PUICalendarPrivacyController *)self setCalendarSomeAccessAppIDs:v24];

  calendarSomeAccessAppIDs = [(PUICalendarPrivacyController *)self calendarSomeAccessAppIDs];
  calendarNoAccessAppIDs = [(PUICalendarPrivacyController *)self calendarNoAccessAppIDs];
  v27 = [calendarSomeAccessAppIDs setByAddingObjectsFromSet:calendarNoAccessAppIDs];
  [(PUICalendarPrivacyController *)self setCalendarAllAppIDs:v27];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)updateSpecifiersForImposedSettings
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{+[PUICalendarPrivacyController isServiceRestricted:](PUICalendarPrivacyController, "isServiceRestricted:", *MEMORY[0x277D6C118]) ^ 1}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(PUICalendarPrivacyController *)self calendarAppSpecifiers];
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
          bOOLValue = [v12 BOOLValue];
          bOOLValue2 = [v3 BOOLValue];

          if (bOOLValue == bOOLValue2)
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

- (void)_setCalendarStatus:(uint64_t)a1 specifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "Unexpected value set for calendar tcc access: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)calendarStatus:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "Unexpected status for calendar access, not in any array: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end