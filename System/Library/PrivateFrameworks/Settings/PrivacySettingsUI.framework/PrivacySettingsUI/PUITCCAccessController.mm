@interface PUITCCAccessController
+ (BOOL)isServiceRestricted:(id)restricted;
- (PUITCCAccessController)init;
- (id)specifiers;
- (void)provideNavigationDonations;
- (void)setAccess:(id)access forSpecifier:(id)specifier;
- (void)setSpecifier:(id)specifier;
- (void)updateSpecifiersForImposedSettings;
@end

@implementation PUITCCAccessController

- (PUITCCAccessController)init
{
  v6.receiver = self;
  v6.super_class = PUITCCAccessController;
  v2 = [(PUITCCAccessController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(PUITCCAccessController *)v2 setReusesCells:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_updateAppClipsSpecifierCount_ name:@"com.apple.PrivacySettingsUI.AppClipsStateChanged" object:0];
  }

  return v3;
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v56.receiver = self;
  v56.super_class = PUITCCAccessController;
  [(PUITCCAccessController *)&v56 setSpecifier:specifierCopy];
  identifier = [specifierCopy identifier];
  v6 = [identifier isEqualToString:*MEMORY[0x277D401E0]];

  if (v6)
  {
    v7 = MEMORY[0x277D6C100];
LABEL_7:
    v12 = *v7;
    goto LABEL_8;
  }

  identifier2 = [specifierCopy identifier];
  v9 = [identifier2 isEqualToString:*MEMORY[0x277D40220]];

  if (v9)
  {
    v7 = MEMORY[0x277D6C1E0];
    goto LABEL_7;
  }

  identifier3 = [specifierCopy identifier];
  v11 = [identifier3 isEqualToString:*MEMORY[0x277D401D0]];

  if (v11)
  {
    v7 = MEMORY[0x277D6C118];
    goto LABEL_7;
  }

  identifier4 = [specifierCopy identifier];
  v25 = [identifier4 isEqualToString:*MEMORY[0x277D40218]];

  if (v25)
  {
    v12 = *MEMORY[0x277D6C1D0];
    [(PUITCCAccessController *)self setHeader:@"PHOTOS_HEADER"];
    goto LABEL_8;
  }

  identifier5 = [specifierCopy identifier];
  v27 = [identifier5 isEqualToString:*MEMORY[0x277D401C8]];

  if (v27)
  {
    v28 = MEMORY[0x277D6C110];
LABEL_20:
    v12 = *v28;
    [(PUITCCAccessController *)self setSupportsClips:1];
    goto LABEL_8;
  }

  identifier6 = [specifierCopy identifier];
  v30 = [identifier6 isEqualToString:*MEMORY[0x277D40200]];

  if (v30)
  {
    v28 = MEMORY[0x277D6C1A8];
    goto LABEL_20;
  }

  identifier7 = [specifierCopy identifier];
  v32 = [identifier7 isEqualToString:*MEMORY[0x277D40228]];

  if (v32)
  {
    v7 = MEMORY[0x277D6C218];
    goto LABEL_7;
  }

  identifier8 = [specifierCopy identifier];
  v34 = [identifier8 isEqualToString:*MEMORY[0x277D40238]];

  if (v34)
  {
    v7 = MEMORY[0x277D6C258];
    goto LABEL_7;
  }

  identifier9 = [specifierCopy identifier];
  v36 = [identifier9 isEqualToString:*MEMORY[0x277D40208]];

  if (v36)
  {
    v7 = MEMORY[0x277D6C1B0];
    goto LABEL_7;
  }

  identifier10 = [specifierCopy identifier];
  v38 = [identifier10 isEqualToString:*MEMORY[0x277D401D8]];

  if (v38)
  {
    [(PUITCCAccessController *)self setHeader:@"CAMERA_HEADER"];
    [(PUITCCAccessController *)self setSupportsClips:1];
    v7 = MEMORY[0x277D6C120];
    goto LABEL_7;
  }

  identifier11 = [specifierCopy identifier];
  v40 = [identifier11 isEqualToString:*MEMORY[0x277D401F8]];

  if (v40)
  {
    v7 = MEMORY[0x277D6C1A0];
    goto LABEL_7;
  }

  identifier12 = [specifierCopy identifier];
  v42 = [identifier12 isEqualToString:*MEMORY[0x277D401F0]];

  if (v42)
  {
    v7 = MEMORY[0x277D6C168];
    goto LABEL_7;
  }

  identifier13 = [specifierCopy identifier];
  v44 = [identifier13 isEqualToString:*MEMORY[0x277D40230]];

  if (v44)
  {
    [(PUITCCAccessController *)self setHeader:@"TRACKING_HEADER"];
    v7 = MEMORY[0x277D6C238];
    goto LABEL_7;
  }

  identifier14 = [specifierCopy identifier];
  v46 = [identifier14 isEqualToString:*MEMORY[0x277D401E8]];

  if (v46)
  {
    v12 = *MEMORY[0x277D6C158];
    v47 = PUI_LocalizedStringForPrivacy(@"EXPOSURE_HEADER");
    [(PUITCCAccessController *)self setAppGroupHeader:v47];
  }

  else
  {
    identifier15 = [specifierCopy identifier];
    v49 = [identifier15 isEqualToString:@"CONTACTLESS_NFC"];

    if (v49)
    {
      v7 = MEMORY[0x277D6C128];
      goto LABEL_7;
    }

    identifier16 = [specifierCopy identifier];
    v51 = [identifier16 isEqualToString:@"SECURE_ELEMENT"];

    if (v51)
    {
      v7 = MEMORY[0x277D6C1E8];
      goto LABEL_7;
    }

    identifier17 = [specifierCopy identifier];
    v53 = [identifier17 isEqualToString:@"PASSKEYS"];

    if (v53)
    {
      v7 = MEMORY[0x277D6C248];
      goto LABEL_7;
    }

    identifier18 = [specifierCopy identifier];
    v55 = [identifier18 isEqualToString:*MEMORY[0x277D40210]];

    if (!v55)
    {
      [PUITCCAccessController setSpecifier:];
    }

    v12 = *MEMORY[0x277D6C1B8];
    [(PUITCCAccessController *)self setFooter:@"NEARBY_INTERACTIONS_FOOTER"];
  }

LABEL_8:
  objc_storeStrong(&self->_serviceKey, v12);
  v13 = [specifierCopy propertyForKey:@"PUITCCAccessControllerAppTypeKey"];
  -[PUITCCAccessController setAppType:](self, "setAppType:", [v13 intValue]);

  footer = [(PUITCCAccessController *)self footer];

  if (!footer)
  {
    appType = [(PUITCCAccessController *)self appType];
    v16 = MEMORY[0x277CCACA8];
    identifier19 = [specifierCopy identifier];
    v18 = identifier19;
    if (appType)
    {
      v19 = [v16 stringWithFormat:@"%@_CLIPS_FOOTER", identifier19];
      [(PUITCCAccessController *)self setClipsFooter:v19];
    }

    else
    {
      v20 = [v16 stringWithFormat:@"%@_FOOTER", identifier19];

      [(PUITCCAccessController *)self setFooter:v20];
      v18 = v20;
    }
  }

  v21 = MEMORY[0x277CCACA8];
  identifier20 = [specifierCopy identifier];
  v23 = [v21 stringWithFormat:@"%@_EXPLANATION", identifier20];
  [(PUITCCAccessController *)self setExplanation:v23];
}

- (id)specifiers
{
  v119 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v3)
  {
    goto LABEL_67;
  }

  v88 = *MEMORY[0x277D3FC48];
  serviceKey = self->_serviceKey;
  v5 = TCCAccessCopyInformation();
  v103 = objc_opt_new();
  v91 = objc_opt_new();
  v101 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count") + 1}];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v111 objects:v118 count:16];
  if (v6)
  {
    v7 = *v112;
    v97 = *MEMORY[0x277D40020];
    v99 = *MEMORY[0x277D40008];
    v93 = *MEMORY[0x277D3FE58];
    v95 = *MEMORY[0x277D401A8];
    v8 = MEMORY[0x277D6C0C8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v112 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v111 + 1) + 8 * i);
        v11 = [v10 objectForKey:*v8];
        v12 = v11;
        if (v11)
        {
          v13 = CFBundleGetIdentifier(v11);
          [v103 addObject:v13];
          if (!PUIIsAppClip(v13))
          {
            if ([(PUITCCAccessController *)self appType]== 1)
            {
              goto LABEL_21;
            }

LABEL_16:
            v16 = MEMORY[0x277D3FAD8];
            v17 = PUIDisplayNameForApp(v12);
            v18 = [v16 preferenceSpecifierNamed:v17 target:self set:sel_setAccess_forSpecifier_ get:sel_accesssForSpecifier_ detail:0 cell:6 edit:0];

            [v18 setIdentifier:v13];
            [v18 setProperty:v13 forKey:v99];
            [v18 setProperty:MEMORY[0x277CBEC38] forKey:v97];
            v19 = [v10 objectForKey:*MEMORY[0x277D6C0D0]];
            [v18 setProperty:v19 forKey:v95];

            [v18 setProperty:v13 forKey:@"appBundleID"];
            [v18 setProperty:v13 forKey:@"PUITCCAccessControllerBundleIDKey"];
            specifier = [(PUITCCAccessController *)self specifier];
            v21 = [specifier objectForKeyedSubscript:@"PUITCCAccessControllerCellClassKey"];

            if (v21)
            {
              specifier2 = [(PUITCCAccessController *)self specifier];
              v23 = [specifier2 objectForKeyedSubscript:@"PUITCCAccessControllerCellClassKey"];
              [v18 setProperty:v23 forKey:v93];
            }

            specifier3 = [(PUITCCAccessController *)self specifier];
            v25 = [specifier3 objectForKeyedSubscript:@"PUITCCAccessControllerCellDelegateKey"];

            if (v25)
            {
              specifier4 = [(PUITCCAccessController *)self specifier];
              v27 = [specifier4 objectForKeyedSubscript:@"PUITCCAccessControllerCellDelegateKey"];
              [v18 setProperty:v27 forKey:@"PUITCCAccessControllerCellDelegateKey"];
            }

            [v101 addObject:v18];

            goto LABEL_21;
          }

          v14 = [v10 objectForKey:*MEMORY[0x277D6C0D0]];
          bOOLValue = [v14 BOOLValue];

          if (bOOLValue)
          {
            [v91 addObject:v13];
          }

          if ([(PUITCCAccessController *)self appType])
          {
            goto LABEL_16;
          }
        }

        else
        {
          v13 = _PUILoggingFacility();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v117 = v10;
            _os_log_impl(&dword_2657FE000, v13, OS_LOG_TYPE_DEFAULT, "TCCAccess skipping app with nil bundle: %@", buf, 0xCu);
          }
        }

LABEL_21:
      }

      v6 = [obj countByEnumeratingWithState:&v111 objects:v118 count:16];
    }

    while (v6);
  }

  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v91, "count")];
  v29 = PUI_LocalizedStringForPrivacy(v28);
  [(PUITCCAccessController *)self setAppClipsCount:v29];

  v87 = PUIGetActivePairedDevice();
  if (![(PUITCCAccessController *)self appType]&& v87 && objc_opt_class())
  {
    v30 = MEMORY[0x277CBEB98];
    v31 = self->_serviceKey;
    v32 = TCCAccessCopyBundleIdentifiersForService();
    v98 = [v30 setWithArray:v32];

    v33 = MEMORY[0x277CBEB98];
    v34 = self->_serviceKey;
    v35 = TCCAccessCopyBundleIdentifiersDisabledForService();
    v86 = [v33 setWithArray:v35];

    v36 = [v98 setByAddingObjectsFromSet:v86];
    mEMORY[0x277D2BD58] = [MEMORY[0x277D2BD58] sharedInstance];
    ScreenScale();
    if (v37 == 2)
    {
      v38 = 47;
    }

    else
    {
      v38 = 48;
    }

    v94 = v38;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v100 = v36;
    v39 = [v100 countByEnumeratingWithState:&v107 objects:v115 count:16];
    if (v39)
    {
      v40 = *v108;
      v92 = *MEMORY[0x277D3FFC0];
      v90 = *MEMORY[0x277D401A8];
      v89 = *MEMORY[0x277D3FE58];
      do
      {
        v41 = 0;
        do
        {
          if (*v108 != v40)
          {
            objc_enumerationMutation(v100);
          }

          v42 = *(*(&v107 + 1) + 8 * v41);
          if (([v103 containsObject:v42] & 1) == 0)
          {
            [v103 addObject:v42];
            v43 = PUIDisplayNameForWatchApp(v42);
            if (v43)
            {
              v44 = v42;
              v45 = MEMORY[0x277D3FAD8];
              goto LABEL_37;
            }

            v44 = PUIWatchBundleIDForBundleID(v42);
            v43 = PUIDisplayNameForWatchApp(v44);
            if (!(v43 | v44))
            {
              goto LABEL_43;
            }

            v45 = MEMORY[0x277D3FAD8];
            v46 = v42;
            if (v43)
            {
LABEL_37:
              v46 = v43;
            }

            v47 = [v45 preferenceSpecifierNamed:v46 target:self set:sel_setAccess_forSpecifier_ get:sel_accesssForSpecifier_ detail:0 cell:6 edit:0];
            [v47 setIdentifier:v42];
            v48 = PSBlankIconImage();
            [v47 setProperty:v48 forKey:v92];

            v49 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v98, "containsObject:", v42)}];
            [v47 setProperty:v49 forKey:v90];

            [v47 setProperty:v42 forKey:@"appBundleID"];
            [v47 setProperty:v42 forKey:@"PUITCCAccessControllerBundleIDKey"];
            specifier5 = [(PUITCCAccessController *)self specifier];
            v51 = [specifier5 objectForKeyedSubscript:@"PUITCCAccessControllerCellClassKey"];

            if (v51)
            {
              specifier6 = [(PUITCCAccessController *)self specifier];
              v53 = [specifier6 objectForKeyedSubscript:@"PUITCCAccessControllerCellClassKey"];
              [v47 setProperty:v53 forKey:v89];
            }

            specifier7 = [(PUITCCAccessController *)self specifier];
            v55 = [specifier7 objectForKeyedSubscript:@"PUITCCAccessControllerCellDelegateKey"];

            if (v55)
            {
              specifier8 = [(PUITCCAccessController *)self specifier];
              v57 = [specifier8 objectForKeyedSubscript:@"PUITCCAccessControllerCellDelegateKey"];
              [v47 setProperty:v57 forKey:@"PUITCCAccessControllerCellDelegateKey"];
            }

            objc_initWeak(buf, self);
            v104[0] = MEMORY[0x277D85DD0];
            v104[1] = 3221225472;
            v104[2] = __36__PUITCCAccessController_specifiers__block_invoke;
            v104[3] = &unk_279BA1900;
            v58 = v47;
            v105 = v58;
            objc_copyWeak(&v106, buf);
            [mEMORY[0x277D2BD58] getIconForBundleID:v44 iconVariant:v94 block:v104 timeout:-1.0];
            [v101 addObject:v58];
            objc_destroyWeak(&v106);

            objc_destroyWeak(buf);
          }

LABEL_43:
          ++v41;
        }

        while (v39 != v41);
        v59 = [v100 countByEnumeratingWithState:&v107 objects:v115 count:16];
        v39 = v59;
      }

      while (v59);
    }
  }

  [v101 sortUsingComparator:&__block_literal_global_22];
  v60 = [v101 copy];
  [(PUITCCAccessController *)self setAppSpecifiers:v60];

  if (_os_feature_enabled_impl())
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    if ([mEMORY[0x277D262A0] isAppClipsAllowed] && !-[PUITCCAccessController appType](self, "appType"))
    {
      supportsClips = [(PUITCCAccessController *)self supportsClips];

      if (!supportsClips)
      {
        goto LABEL_58;
      }

      v63 = MEMORY[0x277D3FAD8];
      v64 = PUI_LocalizedStringForDimSum(@"APP_CLIPS");
      mEMORY[0x277D262A0] = [v63 preferenceSpecifierNamed:v64 target:self set:0 get:sel_getAppClipsCount_ detail:objc_opt_class() cell:2 edit:0];

      specifier9 = [(PUITCCAccessController *)self specifier];
      identifier = [specifier9 identifier];
      [mEMORY[0x277D262A0] setIdentifier:identifier];

      [mEMORY[0x277D262A0] setObject:&unk_28772B588 forKeyedSubscript:@"PUITCCAccessControllerAppTypeKey"];
      [mEMORY[0x277D262A0] setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
      [mEMORY[0x277D262A0] setObject:@"com.apple.graphic-icon.app-clips" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
      specifier10 = [(PUITCCAccessController *)self specifier];
      v68 = [specifier10 objectForKeyedSubscript:@"PUITCCAccessControllerCellClassKey"];

      if (v68)
      {
        specifier11 = [(PUITCCAccessController *)self specifier];
        v70 = [specifier11 objectForKeyedSubscript:@"PUITCCAccessControllerCellClassKey"];
        [mEMORY[0x277D262A0] setProperty:v70 forKey:@"PUITCCAccessControllerCellClassKey"];
      }

      [v101 insertObject:mEMORY[0x277D262A0] atIndex:0];
    }
  }

LABEL_58:
  if ([v101 count] || (-[PUITCCAccessController serviceKey](self, "serviceKey"), v71 = objc_claimAutoreleasedReturnValue(), v72 = objc_msgSend(v71, "isEqualToString:", *MEMORY[0x277D6C158]), v71, (v72 & 1) == 0))
  {
    v73 = [(NSString *)self->_header length];
    v74 = MEMORY[0x277D3FF88];
    if (v73)
    {
      v75 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
      v76 = PUI_LocalizedStringForPrivacy(self->_header);
      [v75 setProperty:v76 forKey:*v74];

      [v101 insertObject:v75 atIndex:0];
    }

    v77 = MEMORY[0x277D3FAD8];
    appGroupHeader = [(PUITCCAccessController *)self appGroupHeader];
    v79 = [v77 preferenceSpecifierNamed:appGroupHeader target:0 set:0 get:0 detail:0 cell:0 edit:0];

    [v79 setIdentifier:@"APP_GROUP"];
    clipsFooter = [(PUITCCAccessController *)self clipsFooter];

    if (clipsFooter)
    {
      clipsFooter2 = [(PUITCCAccessController *)self clipsFooter];
      PUI_LocalizedStringForDimSum(clipsFooter2);
    }

    else
    {
      clipsFooter2 = [(PUITCCAccessController *)self footer];
      PUI_LocalizedStringForPrivacy(clipsFooter2);
    }
    v82 = ;

    [v79 setProperty:v82 forKey:*v74];
    [v101 insertObject:v79 atIndex:v73 != 0];
  }

  v83 = *(&self->super.super.super.super.super.isa + v88);
  *(&self->super.super.super.super.super.isa + v88) = v101;

  [(PUITCCAccessController *)self updateSpecifiersForImposedSettings];
  v3 = *(&self->super.super.super.super.super.isa + v88);
LABEL_67:
  v84 = *MEMORY[0x277D85DE8];

  return v3;
}

void __36__PUITCCAccessController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__PUITCCAccessController_specifiers__block_invoke_2;
  block[3] = &unk_279BA18D8;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
}

void __36__PUITCCAccessController_specifiers__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setProperty:*(a1 + 40) forKey:*MEMORY[0x277D3FFC0]];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

uint64_t __36__PUITCCAccessController_specifiers__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)provideNavigationDonations
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"PRIVACY" table:@"Privacy" locale:currentLocale bundleURL:bundleURL];

  v24[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  if ([(NSString *)self->_serviceKey isEqualToString:*MEMORY[0x277D6C1A0]])
  {
    v9 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
    v11 = [v9 initWithKey:@"MEDIALIBRARY" table:@"Privacy" locale:currentLocale2 bundleURL:bundleURL];

    v12 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
    v14 = [v12 initWithKey:@"PRIVACY" table:@"Privacy" locale:currentLocale3 bundleURL:bundleURL];

    v15 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/MEDIALIBRARY"];
    v16 = v15;
    if (v11 && v15)
    {
      [(PUITCCAccessController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.privacy" title:v11 localizedNavigationComponents:v8 deepLink:v15];
    }

    v7 = v14;
  }

  else
  {
    if ([(NSString *)self->_serviceKey isEqualToString:*MEMORY[0x277D6C110]])
    {
      v17 = @"com.apple.graphic-icon.bluetooth";
      v18 = @"settings-navigation://com.apple.Settings.PrivacyAndSecurity/BT_PERIPHERAL";
      v19 = @"BT_PERIPHERAL";
    }

    else if ([(NSString *)self->_serviceKey isEqualToString:*MEMORY[0x277D6C258]])
    {
      v17 = @"com.apple.graphic-icon.home";
      v18 = @"settings-navigation://com.apple.Settings.PrivacyAndSecurity/WILLOW";
      v19 = @"WILLOW";
    }

    else if ([(NSString *)self->_serviceKey isEqualToString:*MEMORY[0x277D6C248]])
    {
      v17 = @"com.apple.graphic-icon.person-passkey";
      v18 = @"settings-navigation://com.apple.Settings.PrivacyAndSecurity/PASSKEYS";
      v19 = @"PASSKEYS";
    }

    else if ([(NSString *)self->_serviceKey isEqualToString:*MEMORY[0x277D6C1E0]])
    {
      v17 = @"com.apple.graphic-icon.privacy";
      v18 = @"settings-navigation://com.apple.Settings.PrivacyAndSecurity/REMINDERS";
      v19 = @"REMINDERS";
    }

    else if ([(NSString *)self->_serviceKey isEqualToString:*MEMORY[0x277D6C120]])
    {
      v17 = @"com.apple.graphic-icon.camera";
      v18 = @"settings-navigation://com.apple.Settings.PrivacyAndSecurity/CAMERA";
      v19 = @"CAMERA";
    }

    else if ([(NSString *)self->_serviceKey isEqualToString:*MEMORY[0x277D6C1A8]])
    {
      v17 = @"com.apple.graphic-icon.microphone-access";
      v18 = @"settings-navigation://com.apple.Settings.PrivacyAndSecurity/MICROPHONE";
      v19 = @"MICROPHONE";
    }

    else if ([(NSString *)self->_serviceKey isEqualToString:*MEMORY[0x277D6C1B8]])
    {
      v17 = @"com.apple.graphic-icon.nearby-interactions";
      v18 = @"settings-navigation://com.apple.Settings.PrivacyAndSecurity/NEARBY_INTERACTIONS";
      v19 = @"NEARBY_INTERACTIONS";
    }

    else
    {
      if (![(NSString *)self->_serviceKey isEqualToString:*MEMORY[0x277D6C218]])
      {
        v16 = 0;
        v11 = 0;
        goto LABEL_25;
      }

      v17 = @"com.apple.graphic-icon.waveform";
      v18 = @"settings-navigation://com.apple.Settings.PrivacyAndSecurity/SPEECH_RECOGNITION";
      v19 = @"SPEECH_RECOGNITION";
    }

    v20 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale4 = [MEMORY[0x277CBEAF8] currentLocale];
    v11 = [v20 initWithKey:v19 table:@"Privacy" locale:currentLocale4 bundleURL:bundleURL];

    v22 = [MEMORY[0x277CBEBC0] URLWithString:v18];
    v16 = v22;
    if (v11 && v22)
    {
      [(PUITCCAccessController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:v17 title:v11 localizedNavigationComponents:v8 deepLink:v22];
    }
  }

LABEL_25:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setAccess:(id)access forSpecifier:(id)specifier
{
  accessCopy = access;
  specifierCopy = specifier;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PUITCCAccessController_setAccess_forSpecifier___block_invoke;
  aBlock[3] = &unk_279BA11C8;
  v8 = accessCopy;
  v38 = v8;
  v9 = specifierCopy;
  v39 = v9;
  selfCopy = self;
  v10 = _Block_copy(aBlock);
  if (([v8 BOOLValue] & 1) != 0 || (-[PUITCCAccessController specifier](self, "specifier"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKeyedSubscript:", @"PUITCCAccessControllerPromptTitleKey"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
  {
    v10[2](v10);
  }

  else
  {
    specifier = [(PUITCCAccessController *)self specifier];
    v32 = [specifier objectForKeyedSubscript:@"PUITCCAccessControllerPromptTitleKey"];

    specifier2 = [(PUITCCAccessController *)self specifier];
    v31 = [specifier2 objectForKeyedSubscript:@"PUITCCAccessControllerPromptDetailKey"];

    v15 = MEMORY[0x277CCACA8];
    v16 = PUI_LocalizedStringForPrivacy(v32);
    name = [v9 name];
    v18 = [v15 stringWithFormat:v16, name];

    v19 = MEMORY[0x277CCACA8];
    v20 = PUI_LocalizedStringForPrivacy(v31);
    name2 = [v9 name];
    v22 = [v19 stringWithFormat:v20, name2];

    v23 = [MEMORY[0x277D75110] alertControllerWithTitle:v18 message:v22 preferredStyle:1];
    v24 = MEMORY[0x277D750F8];
    v25 = PUI_LocalizedStringForPrivacy(@"TCC_ALERT_TURN_OFF");
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __49__PUITCCAccessController_setAccess_forSpecifier___block_invoke_196;
    v35[3] = &unk_279BA2348;
    v36 = v10;
    v26 = [v24 actionWithTitle:v25 style:2 handler:v35];
    [v23 addAction:v26];

    v27 = MEMORY[0x277D750F8];
    v28 = PUI_LocalizedStringForPrivacy(@"TCC_ALERT_CANCEL");
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __49__PUITCCAccessController_setAccess_forSpecifier___block_invoke_2;
    v33[3] = &unk_279BA1178;
    v33[4] = self;
    v34 = v9;
    v29 = [v27 actionWithTitle:v28 style:1 handler:v33];
    [v23 addAction:v29];

    [(PUITCCAccessController *)self presentViewController:v23 animated:1 completion:0];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.PrivacySettingsUI.AppClipsStateChanged" object:0];
}

void __49__PUITCCAccessController_setAccess_forSpecifier___block_invoke(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = *MEMORY[0x277D401A8];
  v4 = [a1[5] propertyForKey:*MEMORY[0x277D401A8]];
  LOBYTE(v2) = [v2 isEqual:v4];

  if ((v2 & 1) == 0)
  {
    v5 = [a1[5] propertyForKey:@"appBundleID"];
    v6 = *(a1[6] + 182);
    [a1[4] BOOLValue];
    TCCAccessSetForBundleId();
    [a1[5] setProperty:a1[4] forKey:v3];
    if ([a1[4] BOOLValue])
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    [MEMORY[0x277D4D8F0] trackingStateOfRequestForSpecificApp:v7 view:@"PrivacyTracking"];
    v8 = _PUILoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "########### Quitting application (%@) in response to privacy settings change.", &v12, 0xCu);
    }
  }

  v9 = [a1[6] serviceKey];
  v10 = [v9 isEqualToString:*MEMORY[0x277D6C238]];

  if (v10)
  {
    PUIResetIDFAIfNeeded();
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isServiceRestricted:(id)restricted
{
  restrictedCopy = restricted;
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v4 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  v5 = v4;
  if (v4)
  {
    LOBYTE(v6) = [v4 containsObject:restrictedCopy];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  TCCAccessGetOverride();
  if ([restrictedCopy isEqualToString:*MEMORY[0x277D6C238]])
  {
    v7 = objc_opt_new();
    v8 = v7;
    if (v6)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = [v7 crossAppTrackingAllowedSwitchEnabled] ^ 1;
    }
  }

  return v6;
}

- (void)updateSpecifiersForImposedSettings
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(objc_opt_class(), "isServiceRestricted:", self->_serviceKey) ^ 1}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(PUITCCAccessController *)self appSpecifiers];
  v3 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    v6 = *MEMORY[0x277D3FF38];
    v7 = *MEMORY[0x277D401A8];
    v21 = *MEMORY[0x277D401A8];
    v22 = *MEMORY[0x277D40148];
    v8 = MEMORY[0x277D3FC90];
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        if (*&v10[*v8] == 6)
        {
          v11 = [*(*(&v25 + 1) + 8 * v9) propertyForKey:v6];
          if (!v11)
          {
            goto LABEL_9;
          }

          v12 = v11;
          v13 = [v10 objectForKeyedSubscript:v6];
          v14 = v5;
          v15 = v8;
          bOOLValue = [v13 BOOLValue];
          bOOLValue2 = [v24 BOOLValue];

          v18 = bOOLValue == bOOLValue2;
          v8 = v15;
          v5 = v14;
          if (!v18)
          {
LABEL_9:
            [v10 setProperty:v24 forKey:{v6, v21}];
            v19 = [v10 propertyForKey:v22];
            [v19 setCellEnabled:{objc_msgSend(v24, "BOOLValue")}];

            if (([v24 BOOLValue] & 1) == 0)
            {
              [v10 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v21];
            }
          }
        }

        ++v9;
      }

      while (v4 != v9);
      v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end