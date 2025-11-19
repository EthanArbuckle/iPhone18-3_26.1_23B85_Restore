@interface PUIPhotosPrivacyController
+ (BOOL)isServiceRestricted:(id)a3;
+ (void)setTCCForService:(__CFString *)a3 appIdentifier:(id)a4 value:(int)a5 completion:(id)a6;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (id)_photosStatus:(id)a3;
- (id)_specifiersWithCombinedPickerUsage;
- (id)appSpecifierWithName:(id)a3 bundleID:(id)a4 showPhotosAccess:(BOOL)a5 showPhotosAddAccess:(BOOL)a6 showPickerUsage:(BOOL)a7;
- (void)_setPhotosStatus:(id)a3 specifier:(id)a4;
- (void)_updatePhotosAuthorizationStates;
- (void)provideNavigationDonations;
- (void)updateSpecifiersForImposedSettings;
@end

@implementation PUIPhotosPrivacyController

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

+ (void)setTCCForService:(__CFString *)a3 appIdentifier:(id)a4 value:(int)a5 completion:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  if (a5 != 5)
  {
    if (setTCCForService_appIdentifier_value_completion__onceToken != -1)
    {
      +[PUIPhotosPrivacyController setTCCForService:appIdentifier:value:completion:];
    }

    v12 = _PUILoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v29 = a3;
      v30 = 2112;
      v31 = v10;
      v32 = 1024;
      v33 = a5;
      _os_log_impl(&dword_2657FE000, v12, OS_LOG_TYPE_DEFAULT, "Setting TCC auth for service: %@ appIdentifier:%@, accessLevel:%d", buf, 0x1Cu);
    }

    [v10 cStringUsingEncoding:4];
    v13 = tcc_identity_create();
    v14 = tcc_service_singleton_for_CF_name();
    v15 = 0;
    if ((a5 - 1) <= 2)
    {
      v15 = qword_265869FE8[a5 - 1];
    }

    v16 = CFEqual(a3, *MEMORY[0x277D6C1D0]);
    if (a5 == 2 && v16 && TCCLibraryCore() && gettcc_server_message_prompt_authorization_valueSymbolLoc())
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __78__PUIPhotosPrivacyController_setTCCForService_appIdentifier_value_completion___block_invoke_143;
      aBlock[3] = &unk_279BA1F38;
      v27 = a1;
      v25 = v10;
      v26 = v11;
      v17 = _Block_copy(aBlock);
      v18 = setTCCForService_appIdentifier_value_completion__tccServer;
      v19 = v13;
      v20 = v14;
      v21 = v17;
      v22 = gettcc_server_message_prompt_authorization_valueSymbolLoc();
      if (!v22)
      {
        [PUILockdownModeController getEligibleDevicesWithCompletion:];
      }

      v22(v18, 0, v19, v20, 0, v15, v21);
    }

    else
    {
      tcc_server_message_set_authorization_value();
      if (v11)
      {
        v11[2](v11);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __78__PUIPhotosPrivacyController_setTCCForService_appIdentifier_value_completion___block_invoke()
{
  setTCCForService_appIdentifier_value_completion__tccServer = tcc_server_create();

  return MEMORY[0x2821F96F8]();
}

void __78__PUIPhotosPrivacyController_setTCCForService_appIdentifier_value_completion___block_invoke_143(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v9 = @"PUIPhotosPrivacyUpgradePromptAppIdentifierKey";
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v2 postNotificationName:@"PUIPhotosPrivacyUpgradePromptCompletedNotification" object:v3 userInfo:v5];

  if (*(a1 + 40))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __78__PUIPhotosPrivacyController_setTCCForService_appIdentifier_value_completion___block_invoke_2;
    v7[3] = &unk_279BA1038;
    v8 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)provideNavigationDonations
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"PHOTOS" table:@"Privacy" locale:v6 bundleURL:v4];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:v9 bundleURL:v4];

  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/PHOTOS"];
  [(PUIPhotosPrivacyController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.privacy" title:v7 localizedNavigationComponents:v11 deepLink:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_specifiersWithCombinedPickerUsage
{
  v115 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v74 = *MEMORY[0x277D3FC48];
    val = self;
    [(PUIPhotosPrivacyController *)self _updatePhotosAuthorizationStates];
    v89 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v90 = [MEMORY[0x277CBEB58] set];
    v4 = MEMORY[0x277D6C1D0];
    v5 = *MEMORY[0x277D6C1D0];
    v6 = TCCAccessCopyInformation();
    v7 = *MEMORY[0x277D6C1D8];
    v72 = v6;
    v73 = TCCAccessCopyInformation();
    v8 = [v6 arrayByAddingObjectsFromArray:?];
    v88 = [PUIPhotosPrivacyController isServiceRestricted:*v4];
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v104 objects:v114 count:16];
    if (v9)
    {
      v10 = *v105;
      v84 = *MEMORY[0x277D40008];
      v81 = *MEMORY[0x277D40020];
      v78 = *MEMORY[0x277D3FF38];
      v11 = MEMORY[0x277D6C0C8];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v105 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v104 + 1) + 8 * i);
          v14 = [v13 objectForKey:*v11];
          v15 = v14;
          if (v14)
          {
            v16 = CFBundleGetIdentifier(v14);
            if (([v90 containsObject:v16] & 1) == 0)
            {
              [v90 addObject:v16];
              v17 = PUIDisplayNameForApp(v15);
              v18 = [(PUIPhotosPrivacyController *)val photosAddOnlyAllAppIDs];
              v19 = [v18 containsObject:v16];

              v20 = [(PUIPhotosPrivacyController *)val photosReadWriteAllAppIDs];
              v21 = [v20 containsObject:v16];

              v22 = [(PUIPhotosPrivacyController *)val pickerUsageAppIDs];
              v23 = [v22 containsObject:v16];

              v24 = [(PUIPhotosPrivacyController *)val appSpecifierWithName:v17 bundleID:v16 showPhotosAccess:v21 showPhotosAddAccess:v19 showPickerUsage:v23];
              [v24 setProperty:v16 forKey:v84];
              [v24 setProperty:MEMORY[0x277CBEC38] forKey:v81];
              v25 = [MEMORY[0x277CCABB0] numberWithInt:!v88];
              [v24 setObject:v25 forKeyedSubscript:v78];

              [v89 addObject:v24];
            }
          }

          else
          {
            v16 = _PUILoggingFacility();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v109 = v13;
              _os_log_impl(&dword_2657FE000, v16, OS_LOG_TYPE_DEFAULT, "TCCAccess skipping app with nil bundle: %@", buf, 0xCu);
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v104 objects:v114 count:16];
      }

      while (v9);
    }

    v75 = PUIGetActivePairedDevice();
    if (v75 && objc_opt_class())
    {
      v26 = [MEMORY[0x277D2BD58] sharedInstance];
      ScreenScale();
      v102 = 0u;
      v103 = 0u;
      if (v27 == 2)
      {
        v28 = 47;
      }

      else
      {
        v28 = 48;
      }

      v79 = v28;
      v101 = 0uLL;
      v100 = 0uLL;
      v82 = [(PUIPhotosPrivacyController *)val photosAllAppIDs];
      v29 = [v82 countByEnumeratingWithState:&v100 objects:v113 count:16];
      if (v29)
      {
        v85 = *v101;
        v76 = *MEMORY[0x277D3FF38];
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v101 != v85)
            {
              objc_enumerationMutation(v82);
            }

            v31 = *(*(&v100 + 1) + 8 * j);
            if (([v90 containsObject:v31] & 1) == 0)
            {
              [v90 addObject:v31];
              v32 = PUIDisplayNameForWatchApp(v31);
              if (v32)
              {
                v33 = v31;
              }

              else
              {
                v33 = PUIWatchBundleIDForBundleID(v31);
                v32 = PUIDisplayNameForWatchApp(v33);
              }

              v34 = [(PUIPhotosPrivacyController *)val photosAddOnlyAllAppIDs];
              v35 = [v34 containsObject:v31];

              v36 = [(PUIPhotosPrivacyController *)val photosReadWriteAllAppIDs];
              v37 = [v36 containsObject:v31];

              v38 = [(PUIPhotosPrivacyController *)val pickerUsageAppIDs];
              v39 = [v38 containsObject:v31];

              if (v32)
              {
                v40 = v32;
              }

              else
              {
                v40 = v31;
              }

              v41 = [(PUIPhotosPrivacyController *)val appSpecifierWithName:v40 bundleID:v31 showPhotosAccess:v37 showPhotosAddAccess:v35 showPickerUsage:v39];
              v42 = [MEMORY[0x277CCABB0] numberWithInt:!v88];
              [v41 setObject:v42 forKeyedSubscript:v76];

              objc_initWeak(buf, val);
              v97[0] = MEMORY[0x277D85DD0];
              v97[1] = 3221225472;
              v97[2] = __64__PUIPhotosPrivacyController__specifiersWithCombinedPickerUsage__block_invoke;
              v97[3] = &unk_279BA1900;
              v43 = v41;
              v98 = v43;
              objc_copyWeak(&v99, buf);
              [v26 getIconForBundleID:v33 iconVariant:v79 block:v97 timeout:-1.0];
              [v89 addObject:v43];
              objc_destroyWeak(&v99);

              objc_destroyWeak(buf);
            }
          }

          v29 = [v82 countByEnumeratingWithState:&v100 objects:v113 count:16];
        }

        while (v29);
      }
    }

    v44 = [MEMORY[0x277D3B240] sharedInstance];
    v45 = [v44 photosPickerPresentedLibraryLogsByClient];

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v86 = v45;
    v46 = [v86 countByEnumeratingWithState:&v93 objects:v112 count:16];
    if (v46)
    {
      v47 = *v94;
      v48 = *MEMORY[0x277D3B268];
      v83 = *MEMORY[0x277D40008];
      v80 = *MEMORY[0x277D40020];
      v77 = *MEMORY[0x277D3FF38];
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v94 != v47)
          {
            objc_enumerationMutation(v86);
          }

          v50 = *(*(&v93 + 1) + 8 * k);
          v51 = [v50 objectForKeyedSubscript:v48];
          v52 = [(PUIPhotosPrivacyController *)val pickerUsageAppIDs];
          v53 = [v52 containsObject:v51];

          if ([v90 containsObject:v51] & 1 | ((v53 & 1) == 0))
          {
            v54 = _PUILoggingFacility();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v109 = v50;
              _os_log_impl(&dword_2657FE000, v54, OS_LOG_TYPE_DEFAULT, "Skipping picker log: %@", buf, 0xCu);
            }
          }

          else
          {
            v92 = 0;
            v55 = [MEMORY[0x277CC1E70] bundleRecordWithApplicationIdentifier:v51 error:&v92];
            v54 = v92;
            if (v55)
            {
              v56 = [v55 localizedName];
              v57 = [(PUIPhotosPrivacyController *)val appSpecifierWithName:v56 bundleID:v51 showPhotosAccess:0 showPhotosAddAccess:0 showPickerUsage:1];
              [v57 setProperty:v51 forKey:v83];
              [v57 setProperty:MEMORY[0x277CBEC38] forKey:v80];
              v58 = [MEMORY[0x277CCABB0] numberWithInt:!v88];
              [v57 setObject:v58 forKeyedSubscript:v77];

              [v89 addObject:v57];
            }

            else
            {
              v56 = _PUILoggingFacility();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v109 = v51;
                v110 = 2112;
                v111 = v54;
                _os_log_impl(&dword_2657FE000, v56, OS_LOG_TYPE_DEFAULT, "Skipping app (%@) without bundle record with error: %@", buf, 0x16u);
              }
            }
          }
        }

        v46 = [v86 countByEnumeratingWithState:&v93 objects:v112 count:16];
      }

      while (v46);
    }

    [v89 sortUsingComparator:&__block_literal_global_175];
    v59 = [v89 copy];
    [(PUIPhotosPrivacyController *)val setAllAppSpecifiers:v59];

    v60 = objc_opt_new();
    v61 = NSClassFromString(&cfstr_Psphotostccgri.isa);
    if (v61)
    {
      v62 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      v63 = *MEMORY[0x277D3FFB8];
      [v62 setProperty:@"PHOTOS_GRID_GROUP" forKey:*MEMORY[0x277D3FFB8]];
      v64 = PUI_LocalizedStringForPrivacy(@"PHOTOS_GRID_FOOTER");
      [v62 setProperty:v64 forKey:*MEMORY[0x277D3FF88]];
      v65 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28771E540 target:val set:0 get:0 detail:0 cell:-1 edit:0];
      [v65 setProperty:@"PHOTOS_GRID_CELL" forKey:v63];
      v66 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
      [v65 setProperty:v66 forKey:*MEMORY[0x277D40140]];

      [v65 setProperty:v61 forKey:*MEMORY[0x277D3FE58]];
      [v60 addObject:v62];
      [v60 addObject:v65];
    }

    if ([v89 count])
    {
      if (![v89 count])
      {
LABEL_57:
        v69 = *(&val->super.super.super.super.super.isa + v74);
        *(&val->super.super.super.super.super.isa + v74) = v60;

        v3 = *(&val->super.super.super.super.super.isa + v74);
        goto LABEL_58;
      }

      v67 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28771E540 target:0 set:0 get:0 detail:0 cell:0 edit:0];
      [v67 setIdentifier:@"PHOTOKIT_APP_GROUP"];
      [v60 addObject:v67];
      [v60 addObjectsFromArray:v89];
    }

    else
    {
      v67 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
      [v67 setIdentifier:@"NO_APP_GROUP"];
      v68 = PUI_LocalizedStringForPrivacy(@"PHOTOS_NO_APP_FOOTER");
      [v67 setProperty:v68 forKey:*MEMORY[0x277D3FF88]];
      [v60 addObject:v67];
    }

    goto LABEL_57;
  }

LABEL_58:
  v70 = *MEMORY[0x277D85DE8];

  return v3;
}

void __64__PUIPhotosPrivacyController__specifiersWithCombinedPickerUsage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__PUIPhotosPrivacyController__specifiersWithCombinedPickerUsage__block_invoke_2;
  block[3] = &unk_279BA18D8;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
}

void __64__PUIPhotosPrivacyController__specifiersWithCombinedPickerUsage__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setProperty:*(a1 + 40) forKey:*MEMORY[0x277D3FFC0]];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

uint64_t __64__PUIPhotosPrivacyController__specifiersWithCombinedPickerUsage__block_invoke_172(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (id)appSpecifierWithName:(id)a3 bundleID:(id)a4 showPhotosAccess:(BOOL)a5 showPhotosAddAccess:(BOOL)a6 showPickerUsage:(BOOL)a7
{
  v24 = a7;
  v7 = a6;
  v8 = a5;
  v11 = MEMORY[0x277D3FAD8];
  v12 = a4;
  v13 = a3;
  v14 = [v11 preferenceSpecifierNamed:v13 target:self set:sel__setPhotosStatus_specifier_ get:sel__photosStatus_ detail:objc_opt_class() cell:2 edit:0];

  [v14 setIdentifier:v12];
  [v14 setProperty:v12 forKey:@"appBundleID"];

  v15 = PUI_LocalizedStringForPrivacy(@"PHOTOS_AUTH_ONGOING_HEADER");
  [v14 setProperty:v15 forKey:*MEMORY[0x277D40110]];

  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MEMORY[0x277CBEB18] array];
  if (!v8 && !v7 || (PUI_LocalizedStringForPrivacy(@"PHOTOS_NO_ACCESS_AUTHORIZATION"), v22 = objc_claimAutoreleasedReturnValue(), [v16 addObject:v22], v22, objc_msgSend(v17, "addObject:", &unk_28772B360), objc_msgSend(v14, "setProperty:forKey:", MEMORY[0x277CBEC38], @"hasTCCOptions"), !v7))
  {
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v23 = PUI_LocalizedStringForPrivacy(@"PHOTOS_ADD_ONLY_AUTHORIZATION");
  [v16 addObject:v23];

  [v17 addObject:&unk_28772B378];
  if (v8)
  {
LABEL_4:
    v18 = PUI_LocalizedStringForPrivacy(@"PHOTOS_LIMITED_AUTHORIZATION");
    [v16 addObject:v18];

    [v17 addObject:&unk_28772B330];
    v19 = PUI_LocalizedStringForPrivacy(@"PHOTOS_FULL_AUTHORIZATION");
    [v16 addObject:v19];

    [v17 addObject:&unk_28772B348];
  }

LABEL_5:
  if (v24)
  {
    v20 = PUI_LocalizedStringForPrivacy(@"PHOTOS_PICKER_ONLY_AUTHORIZATION");
    [v16 addObject:v20];

    [v17 addObject:&unk_28772B390];
    [v14 setProperty:MEMORY[0x277CBEC38] forKey:@"hasPickerInfo"];
  }

  [v14 setValues:v17 titles:v16];

  return v14;
}

- (void)_updatePhotosAuthorizationStates
{
  v3 = *MEMORY[0x277D6C1D0];
  v27 = 0;
  v28 = 0;
  v26 = 0;
  PUIPhotosAuthorizationStatesForService(v3, &v28, &v27, &v26, 0);
  v4 = v28;
  v5 = v27;
  v6 = v26;
  v7 = *MEMORY[0x277D6C1D8];
  v24 = 0;
  v25 = 0;
  v23 = 0;
  PUIPhotosAuthorizationStatesForService(v7, &v25, 0, &v24, &v23);
  v8 = v25;
  v9 = v24;
  v10 = v23;
  [(PUIPhotosPrivacyController *)self setPhotosReadWriteAllowedAppIDs:v4];
  [(PUIPhotosPrivacyController *)self setPhotosReadWriteLimitedAppIDs:v5];
  [(PUIPhotosPrivacyController *)self setPhotosReadWriteDeniedAppIDs:v6];
  [(PUIPhotosPrivacyController *)self setPhotosAddOnlyAllowedAppIDs:v8];
  [(PUIPhotosPrivacyController *)self setPhotosAddOnlyDeniedAppIDs:v9];
  v11 = PUIPhotosPolicyBundleIdentifiersWithRecentPickerUsage();
  [(PUIPhotosPrivacyController *)self setPickerUsageAppIDs:v11];

  v12 = [(PUIPhotosPrivacyController *)self photosReadWriteAllowedAppIDs];
  v13 = [(PUIPhotosPrivacyController *)self photosReadWriteLimitedAppIDs];
  v14 = [v12 setByAddingObjectsFromSet:v13];
  [(PUIPhotosPrivacyController *)self setPhotosReadWriteAllowedOrLimitedAppIDs:v14];

  v15 = [(PUIPhotosPrivacyController *)self photosReadWriteAllowedOrLimitedAppIDs];
  v16 = [v15 setByAddingObjectsFromSet:v6];
  [(PUIPhotosPrivacyController *)self setPhotosReadWriteAllAppIDs:v16];

  v17 = [(PUIPhotosPrivacyController *)self photosReadWriteAllAppIDs];
  v18 = [v17 setByAddingObjectsFromSet:v10];
  [(PUIPhotosPrivacyController *)self setPhotosReadWriteAllAppIDs:v18];

  v19 = [v8 setByAddingObjectsFromSet:v9];

  [(PUIPhotosPrivacyController *)self setPhotosAddOnlyAllAppIDs:v19];
  v20 = [(PUIPhotosPrivacyController *)self photosReadWriteAllAppIDs];
  v21 = [(PUIPhotosPrivacyController *)self photosAddOnlyAllAppIDs];
  v22 = [v20 setByAddingObjectsFromSet:v21];
  [(PUIPhotosPrivacyController *)self setPhotosAllAppIDs:v22];
}

- (void)_setPhotosStatus:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = [a4 propertyForKey:@"appBundleID"];
  if ([v6 intValue] == 2)
  {
    v8 = *MEMORY[0x277D6C1D0];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__PUIPhotosPrivacyController__setPhotosStatus_specifier___block_invoke;
    v19[3] = &unk_279BA0B28;
    v19[4] = self;
    [PUIPhotosPrivacyController setTCCForService:v8 appIdentifier:v7 value:2 completion:v19];
    goto LABEL_16;
  }

  if ([v6 intValue] == 1)
  {
    v9 = [(PUIPhotosPrivacyController *)self photosReadWriteAllowedOrLimitedAppIDs];
    v10 = [v9 containsObject:v7];

    if (v10)
    {
      [PUIPhotosPrivacyController setTCCForService:*MEMORY[0x277D6C1D0] appIdentifier:v7 value:0];
    }

    v11 = *MEMORY[0x277D6C1D8];
    v12 = v7;
    v13 = 1;
    goto LABEL_15;
  }

  if ([v6 intValue] == 3)
  {
    v11 = *MEMORY[0x277D6C1D0];
    v12 = v7;
    v13 = 3;
LABEL_15:
    [PUIPhotosPrivacyController setTCCForService:v11 appIdentifier:v12 value:v13];
    goto LABEL_16;
  }

  if ([v6 intValue] && objc_msgSend(v6, "intValue") != 5)
  {
    v18 = _PUILoggingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PUIPhotosPrivacyController _setPhotosStatus:v6 specifier:v18];
    }
  }

  else
  {
    v14 = [(PUIPhotosPrivacyController *)self photosReadWriteAllowedOrLimitedAppIDs];
    v15 = [v14 containsObject:v7];

    if (v15)
    {
      [PUIPhotosPrivacyController setTCCForService:*MEMORY[0x277D6C1D0] appIdentifier:v7 value:0];
    }

    v16 = [(PUIPhotosPrivacyController *)self photosAddOnlyAllowedAppIDs];
    v17 = [v16 containsObject:v7];

    if (v17)
    {
      v11 = *MEMORY[0x277D6C1D8];
      v12 = v7;
      v13 = 0;
      goto LABEL_15;
    }
  }

LABEL_16:
  [(PUIPhotosPrivacyController *)self _updatePhotosAuthorizationStates];
  [(PUIPhotosPrivacyController *)self reloadSpecifiers];
}

uint64_t __57__PUIPhotosPrivacyController__setPhotosStatus_specifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updatePhotosAuthorizationStates];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

- (id)_photosStatus:(id)a3
{
  v4 = [a3 propertyForKey:@"appBundleID"];
  v5 = [(PUIPhotosPrivacyController *)self photosReadWriteAllowedAppIDs];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = &unk_28772B348;
  }

  else
  {
    v8 = [(PUIPhotosPrivacyController *)self photosReadWriteLimitedAppIDs];
    v9 = [v8 containsObject:v4];

    if (v9)
    {
      v7 = &unk_28772B330;
    }

    else
    {
      v10 = [(PUIPhotosPrivacyController *)self photosAddOnlyAllowedAppIDs];
      v11 = [v10 containsObject:v4];

      if (v11)
      {
        v7 = &unk_28772B378;
      }

      else
      {
        v12 = [(PUIPhotosPrivacyController *)self pickerUsageAppIDs];
        v13 = [v12 containsObject:v4];

        if (v13)
        {
          v7 = &unk_28772B390;
        }

        else
        {
          v7 = &unk_28772B360;
        }
      }
    }
  }

  return v7;
}

- (void)updateSpecifiersForImposedSettings
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{+[PUIPhotosPrivacyController isServiceRestricted:](PUIPhotosPrivacyController, "isServiceRestricted:", *MEMORY[0x277D6C1D0]) ^ 1}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(PUIPhotosPrivacyController *)self allAppSpecifiers];
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

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUIPhotosPrivacyController *)self specifierForID:@"PICKER_APP_GROUP"];
  v13 = 0;
  if (-[PUIPhotosPrivacyController getGroup:row:ofSpecifier:](self, "getGroup:row:ofSpecifier:", &v13, 0, v8) && (v9 = [v7 section], v9 == v13))
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PUIPhotosPrivacyController;
    v10 = [(PUIPhotosPrivacyController *)&v12 tableView:v6 shouldHighlightRowAtIndexPath:v7];
  }

  return v10;
}

- (void)_setPhotosStatus:(uint64_t)a1 specifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "Unexpected value set for photos tcc access: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end