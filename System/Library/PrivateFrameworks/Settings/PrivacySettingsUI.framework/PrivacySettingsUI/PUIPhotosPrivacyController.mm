@interface PUIPhotosPrivacyController
+ (BOOL)isServiceRestricted:(id)restricted;
+ (void)setTCCForService:(__CFString *)service appIdentifier:(id)identifier value:(int)value completion:(id)completion;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (id)_photosStatus:(id)status;
- (id)_specifiersWithCombinedPickerUsage;
- (id)appSpecifierWithName:(id)name bundleID:(id)d showPhotosAccess:(BOOL)access showPhotosAddAccess:(BOOL)addAccess showPickerUsage:(BOOL)usage;
- (void)_setPhotosStatus:(id)status specifier:(id)specifier;
- (void)_updatePhotosAuthorizationStates;
- (void)provideNavigationDonations;
- (void)updateSpecifiersForImposedSettings;
@end

@implementation PUIPhotosPrivacyController

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

+ (void)setTCCForService:(__CFString *)service appIdentifier:(id)identifier value:(int)value completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  if (value != 5)
  {
    if (setTCCForService_appIdentifier_value_completion__onceToken != -1)
    {
      +[PUIPhotosPrivacyController setTCCForService:appIdentifier:value:completion:];
    }

    v12 = _PUILoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      serviceCopy = service;
      v30 = 2112;
      v31 = identifierCopy;
      v32 = 1024;
      valueCopy = value;
      _os_log_impl(&dword_2657FE000, v12, OS_LOG_TYPE_DEFAULT, "Setting TCC auth for service: %@ appIdentifier:%@, accessLevel:%d", buf, 0x1Cu);
    }

    [identifierCopy cStringUsingEncoding:4];
    v13 = tcc_identity_create();
    v14 = tcc_service_singleton_for_CF_name();
    v15 = 0;
    if ((value - 1) <= 2)
    {
      v15 = qword_265869FE8[value - 1];
    }

    v16 = CFEqual(service, *MEMORY[0x277D6C1D0]);
    if (value == 2 && v16 && TCCLibraryCore() && gettcc_server_message_prompt_authorization_valueSymbolLoc())
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __78__PUIPhotosPrivacyController_setTCCForService_appIdentifier_value_completion___block_invoke_143;
      aBlock[3] = &unk_279BA1F38;
      selfCopy = self;
      v25 = identifierCopy;
      v26 = completionCopy;
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
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
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
  bundleURL = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"PHOTOS" table:@"Privacy" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:currentLocale2 bundleURL:bundleURL];

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
              photosAddOnlyAllAppIDs = [(PUIPhotosPrivacyController *)val photosAddOnlyAllAppIDs];
              v19 = [photosAddOnlyAllAppIDs containsObject:v16];

              photosReadWriteAllAppIDs = [(PUIPhotosPrivacyController *)val photosReadWriteAllAppIDs];
              v21 = [photosReadWriteAllAppIDs containsObject:v16];

              pickerUsageAppIDs = [(PUIPhotosPrivacyController *)val pickerUsageAppIDs];
              v23 = [pickerUsageAppIDs containsObject:v16];

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
      mEMORY[0x277D2BD58] = [MEMORY[0x277D2BD58] sharedInstance];
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
      photosAllAppIDs = [(PUIPhotosPrivacyController *)val photosAllAppIDs];
      v29 = [photosAllAppIDs countByEnumeratingWithState:&v100 objects:v113 count:16];
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
              objc_enumerationMutation(photosAllAppIDs);
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

              photosAddOnlyAllAppIDs2 = [(PUIPhotosPrivacyController *)val photosAddOnlyAllAppIDs];
              v35 = [photosAddOnlyAllAppIDs2 containsObject:v31];

              photosReadWriteAllAppIDs2 = [(PUIPhotosPrivacyController *)val photosReadWriteAllAppIDs];
              v37 = [photosReadWriteAllAppIDs2 containsObject:v31];

              pickerUsageAppIDs2 = [(PUIPhotosPrivacyController *)val pickerUsageAppIDs];
              v39 = [pickerUsageAppIDs2 containsObject:v31];

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
              [mEMORY[0x277D2BD58] getIconForBundleID:v33 iconVariant:v79 block:v97 timeout:-1.0];
              [v89 addObject:v43];
              objc_destroyWeak(&v99);

              objc_destroyWeak(buf);
            }
          }

          v29 = [photosAllAppIDs countByEnumeratingWithState:&v100 objects:v113 count:16];
        }

        while (v29);
      }
    }

    mEMORY[0x277D3B240] = [MEMORY[0x277D3B240] sharedInstance];
    photosPickerPresentedLibraryLogsByClient = [mEMORY[0x277D3B240] photosPickerPresentedLibraryLogsByClient];

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v86 = photosPickerPresentedLibraryLogsByClient;
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
          pickerUsageAppIDs3 = [(PUIPhotosPrivacyController *)val pickerUsageAppIDs];
          v53 = [pickerUsageAppIDs3 containsObject:v51];

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
              localizedName = [v55 localizedName];
              v57 = [(PUIPhotosPrivacyController *)val appSpecifierWithName:localizedName bundleID:v51 showPhotosAccess:0 showPhotosAddAccess:0 showPickerUsage:1];
              [v57 setProperty:v51 forKey:v83];
              [v57 setProperty:MEMORY[0x277CBEC38] forKey:v80];
              v58 = [MEMORY[0x277CCABB0] numberWithInt:!v88];
              [v57 setObject:v58 forKeyedSubscript:v77];

              [v89 addObject:v57];
            }

            else
            {
              localizedName = _PUILoggingFacility();
              if (os_log_type_enabled(localizedName, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v109 = v51;
                v110 = 2112;
                v111 = v54;
                _os_log_impl(&dword_2657FE000, localizedName, OS_LOG_TYPE_DEFAULT, "Skipping app (%@) without bundle record with error: %@", buf, 0x16u);
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
      emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      v63 = *MEMORY[0x277D3FFB8];
      [emptyGroupSpecifier setProperty:@"PHOTOS_GRID_GROUP" forKey:*MEMORY[0x277D3FFB8]];
      v64 = PUI_LocalizedStringForPrivacy(@"PHOTOS_GRID_FOOTER");
      [emptyGroupSpecifier setProperty:v64 forKey:*MEMORY[0x277D3FF88]];
      v65 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28771E540 target:val set:0 get:0 detail:0 cell:-1 edit:0];
      [v65 setProperty:@"PHOTOS_GRID_CELL" forKey:v63];
      v66 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
      [v65 setProperty:v66 forKey:*MEMORY[0x277D40140]];

      [v65 setProperty:v61 forKey:*MEMORY[0x277D3FE58]];
      [v60 addObject:emptyGroupSpecifier];
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

- (id)appSpecifierWithName:(id)name bundleID:(id)d showPhotosAccess:(BOOL)access showPhotosAddAccess:(BOOL)addAccess showPickerUsage:(BOOL)usage
{
  usageCopy = usage;
  addAccessCopy = addAccess;
  accessCopy = access;
  v11 = MEMORY[0x277D3FAD8];
  dCopy = d;
  nameCopy = name;
  v14 = [v11 preferenceSpecifierNamed:nameCopy target:self set:sel__setPhotosStatus_specifier_ get:sel__photosStatus_ detail:objc_opt_class() cell:2 edit:0];

  [v14 setIdentifier:dCopy];
  [v14 setProperty:dCopy forKey:@"appBundleID"];

  v15 = PUI_LocalizedStringForPrivacy(@"PHOTOS_AUTH_ONGOING_HEADER");
  [v14 setProperty:v15 forKey:*MEMORY[0x277D40110]];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  if (!accessCopy && !addAccessCopy || (PUI_LocalizedStringForPrivacy(@"PHOTOS_NO_ACCESS_AUTHORIZATION"), v22 = objc_claimAutoreleasedReturnValue(), [array addObject:v22], v22, objc_msgSend(array2, "addObject:", &unk_28772B360), objc_msgSend(v14, "setProperty:forKey:", MEMORY[0x277CBEC38], @"hasTCCOptions"), !addAccessCopy))
  {
    if (!accessCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v23 = PUI_LocalizedStringForPrivacy(@"PHOTOS_ADD_ONLY_AUTHORIZATION");
  [array addObject:v23];

  [array2 addObject:&unk_28772B378];
  if (accessCopy)
  {
LABEL_4:
    v18 = PUI_LocalizedStringForPrivacy(@"PHOTOS_LIMITED_AUTHORIZATION");
    [array addObject:v18];

    [array2 addObject:&unk_28772B330];
    v19 = PUI_LocalizedStringForPrivacy(@"PHOTOS_FULL_AUTHORIZATION");
    [array addObject:v19];

    [array2 addObject:&unk_28772B348];
  }

LABEL_5:
  if (usageCopy)
  {
    v20 = PUI_LocalizedStringForPrivacy(@"PHOTOS_PICKER_ONLY_AUTHORIZATION");
    [array addObject:v20];

    [array2 addObject:&unk_28772B390];
    [v14 setProperty:MEMORY[0x277CBEC38] forKey:@"hasPickerInfo"];
  }

  [v14 setValues:array2 titles:array];

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

  photosReadWriteAllowedAppIDs = [(PUIPhotosPrivacyController *)self photosReadWriteAllowedAppIDs];
  photosReadWriteLimitedAppIDs = [(PUIPhotosPrivacyController *)self photosReadWriteLimitedAppIDs];
  v14 = [photosReadWriteAllowedAppIDs setByAddingObjectsFromSet:photosReadWriteLimitedAppIDs];
  [(PUIPhotosPrivacyController *)self setPhotosReadWriteAllowedOrLimitedAppIDs:v14];

  photosReadWriteAllowedOrLimitedAppIDs = [(PUIPhotosPrivacyController *)self photosReadWriteAllowedOrLimitedAppIDs];
  v16 = [photosReadWriteAllowedOrLimitedAppIDs setByAddingObjectsFromSet:v6];
  [(PUIPhotosPrivacyController *)self setPhotosReadWriteAllAppIDs:v16];

  photosReadWriteAllAppIDs = [(PUIPhotosPrivacyController *)self photosReadWriteAllAppIDs];
  v18 = [photosReadWriteAllAppIDs setByAddingObjectsFromSet:v10];
  [(PUIPhotosPrivacyController *)self setPhotosReadWriteAllAppIDs:v18];

  v19 = [v8 setByAddingObjectsFromSet:v9];

  [(PUIPhotosPrivacyController *)self setPhotosAddOnlyAllAppIDs:v19];
  photosReadWriteAllAppIDs2 = [(PUIPhotosPrivacyController *)self photosReadWriteAllAppIDs];
  photosAddOnlyAllAppIDs = [(PUIPhotosPrivacyController *)self photosAddOnlyAllAppIDs];
  v22 = [photosReadWriteAllAppIDs2 setByAddingObjectsFromSet:photosAddOnlyAllAppIDs];
  [(PUIPhotosPrivacyController *)self setPhotosAllAppIDs:v22];
}

- (void)_setPhotosStatus:(id)status specifier:(id)specifier
{
  statusCopy = status;
  v7 = [specifier propertyForKey:@"appBundleID"];
  if ([statusCopy intValue] == 2)
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

  if ([statusCopy intValue] == 1)
  {
    photosReadWriteAllowedOrLimitedAppIDs = [(PUIPhotosPrivacyController *)self photosReadWriteAllowedOrLimitedAppIDs];
    v10 = [photosReadWriteAllowedOrLimitedAppIDs containsObject:v7];

    if (v10)
    {
      [PUIPhotosPrivacyController setTCCForService:*MEMORY[0x277D6C1D0] appIdentifier:v7 value:0];
    }

    v11 = *MEMORY[0x277D6C1D8];
    v12 = v7;
    v13 = 1;
    goto LABEL_15;
  }

  if ([statusCopy intValue] == 3)
  {
    v11 = *MEMORY[0x277D6C1D0];
    v12 = v7;
    v13 = 3;
LABEL_15:
    [PUIPhotosPrivacyController setTCCForService:v11 appIdentifier:v12 value:v13];
    goto LABEL_16;
  }

  if ([statusCopy intValue] && objc_msgSend(statusCopy, "intValue") != 5)
  {
    v18 = _PUILoggingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PUIPhotosPrivacyController _setPhotosStatus:statusCopy specifier:v18];
    }
  }

  else
  {
    photosReadWriteAllowedOrLimitedAppIDs2 = [(PUIPhotosPrivacyController *)self photosReadWriteAllowedOrLimitedAppIDs];
    v15 = [photosReadWriteAllowedOrLimitedAppIDs2 containsObject:v7];

    if (v15)
    {
      [PUIPhotosPrivacyController setTCCForService:*MEMORY[0x277D6C1D0] appIdentifier:v7 value:0];
    }

    photosAddOnlyAllowedAppIDs = [(PUIPhotosPrivacyController *)self photosAddOnlyAllowedAppIDs];
    v17 = [photosAddOnlyAllowedAppIDs containsObject:v7];

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

- (id)_photosStatus:(id)status
{
  v4 = [status propertyForKey:@"appBundleID"];
  photosReadWriteAllowedAppIDs = [(PUIPhotosPrivacyController *)self photosReadWriteAllowedAppIDs];
  v6 = [photosReadWriteAllowedAppIDs containsObject:v4];

  if (v6)
  {
    v7 = &unk_28772B348;
  }

  else
  {
    photosReadWriteLimitedAppIDs = [(PUIPhotosPrivacyController *)self photosReadWriteLimitedAppIDs];
    v9 = [photosReadWriteLimitedAppIDs containsObject:v4];

    if (v9)
    {
      v7 = &unk_28772B330;
    }

    else
    {
      photosAddOnlyAllowedAppIDs = [(PUIPhotosPrivacyController *)self photosAddOnlyAllowedAppIDs];
      v11 = [photosAddOnlyAllowedAppIDs containsObject:v4];

      if (v11)
      {
        v7 = &unk_28772B378;
      }

      else
      {
        pickerUsageAppIDs = [(PUIPhotosPrivacyController *)self pickerUsageAppIDs];
        v13 = [pickerUsageAppIDs containsObject:v4];

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

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(PUIPhotosPrivacyController *)self specifierForID:@"PICKER_APP_GROUP"];
  v13 = 0;
  if (-[PUIPhotosPrivacyController getGroup:row:ofSpecifier:](self, "getGroup:row:ofSpecifier:", &v13, 0, v8) && (v9 = [pathCopy section], v9 == v13))
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PUIPhotosPrivacyController;
    v10 = [(PUIPhotosPrivacyController *)&v12 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
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