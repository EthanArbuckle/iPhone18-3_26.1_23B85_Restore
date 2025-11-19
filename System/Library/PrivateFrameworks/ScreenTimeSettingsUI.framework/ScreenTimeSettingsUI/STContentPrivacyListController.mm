@interface STContentPrivacyListController
- (BOOL)isEligibleForAppDistribution;
- (BOOL)shouldDeferPushForSpecifierID:(id)a3;
- (NSArray)distributionStoreDetailSpecifiers;
- (NSArray)storeDetailSpecifiers;
- (STContentPrivacyListController)init;
- (id)_allowChangesSpecifiers;
- (id)_buttonActionSpecifierWithAction:(SEL)a3 name:(id)a4;
- (id)_enableRestrictionsSwitchSpecifier;
- (id)_privacySpecifiers;
- (id)_topLevelSpecifierWithAction:(SEL)a3 name:(id)a4;
- (id)_topLevelSpecifiers;
- (id)defaultLinkListSpecifierWithConfiguration:(id)a3 key:(id)a4;
- (id)defaultLinkListSpecifierWithItem:(id)a3;
- (id)defaultRadioItemSpecifierWithGroup:(id)a3 name:(id)a4 value:(id)a5;
- (id)getItemSpecifierValue:(id)a3;
- (id)getRestrictionsEnabled:(id)a3;
- (id)groupSpecifierWithConfiguration:(id)a3 key:(id)a4 footerText:(id)a5 radio:(BOOL)a6;
- (id)radioGroupSpecifierWithName:(id)a3 footerText:(id)a4 item:(id)a5;
- (id)specifiers;
- (id)tccSpecifierWithCapabilityKey:(id)a3 id:(id)a4;
- (void)_isLoadedDidChange:(BOOL)a3;
- (void)_showCalendarDetailControllerWithAuthentication:(id)a3;
- (void)_showDetailControllerWithAuthenticationForBundleID:(id)a3 detailControllerClass:(Class)a4 specifier:(id)a5;
- (void)_showPhotosDetailControllerWithAuthentication:(id)a3;
- (void)_viewProfilesAndDeviceManagement:(id)a3;
- (void)dealloc;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCoordinator:(id)a3;
- (void)setItemSpecifierValue:(id)a3 specifier:(id)a4;
- (void)setItemSpecifierValueForUIOnly:(id)a3 specifier:(id)a4;
- (void)setRestrictionsEnabled:(id)a3 specifier:(id)a4;
- (void)showAllowedAppsRestrictions:(id)a3;
- (void)showMediaRestrictions:(id)a3;
- (void)showSiriAndIntelligenceRestrictions:(id)a3;
- (void)showiTunesPurchasesRestrictions:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation STContentPrivacyListController

- (STContentPrivacyListController)init
{
  v6.receiver = self;
  v6.super_class = STContentPrivacyListController;
  v2 = [(STPINListViewController *)&v6 init];
  if (v2)
  {
    v3 = +[STScreenTimeSettingsUIBundle bundle];
    v4 = [v3 localizedStringForKey:@"ContentPrivacySpecifierName" value:&stru_28766E5A8 table:0];
    [(STContentPrivacyListController *)v2 setTitle:v4];
  }

  return v2;
}

- (void)viewDidAppear:(BOOL)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = STContentPrivacyListController;
  [(STPINListViewController *)&v16 viewDidAppear:a3];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.ScreenTime/CONTENT_PRIVACY"];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = [v7 bundleURL];
  v9 = [v5 initWithKey:@"ContentPrivacySpecifierName" table:@"Localizable" locale:v6 bundleURL:v8];

  v10 = objc_alloc(MEMORY[0x277CCAEB8]);
  v11 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = +[STScreenTimeSettingsUIBundle bundle];
  v13 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"ScreenTimeControllerTitle" table:@"Localizable" locale:v11 bundleURL:v13];

  v17[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [(STContentPrivacyListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.screen-time" title:v9 localizedNavigationComponents:v15 deepLink:v4];
}

- (BOOL)isEligibleForAppDistribution
{
  v3 = [(STPINListViewController *)self coordinator];
  v4 = [v3 viewModel];
  v5 = [v4 me];
  if ([v5 isRemoteUser])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(STPINListViewController *)self coordinator];
    v8 = [v7 contentPrivacyCoordinator];
    v9 = [v8 viewModel];
    v6 = [v9 isEligibleForAppDistribution];
  }

  return v6;
}

- (BOOL)shouldDeferPushForSpecifierID:(id)a3
{
  v4 = a3;
  v5 = [(STContentPrivacyListController *)self specifierForID:v4];
  if ([v4 isEqualToString:@"ALLOWED_APPS"] && !objc_msgSend(*(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), "containsObject:", v5))
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = STContentPrivacyListController;
    v6 = [(STPINListViewController *)&v8 shouldDeferPushForSpecifierID:v4];
  }

  return v6;
}

- (id)specifiers
{
  v3 = [(STContentPrivacyListController *)self specifier];
  v4 = [v3 objectForKeyedSubscript:0x287675C48];
  [(STContentPrivacyListController *)self setCoordinator:v4];

  v5 = [v4 contentPrivacyCoordinator];
  v6 = [v5 viewModel];
  v7 = [v6 isLoaded];

  if (!v7)
  {
    v18 = MEMORY[0x277CBEBF8];
    goto LABEL_23;
  }

  v8 = objc_opt_new();
  v9 = [v4 viewModel];
  v10 = [v9 me];
  v11 = [v10 isRemoteUser];

  if ((v11 & 1) == 0)
  {
    v12 = [MEMORY[0x277D262A0] sharedConnection];
    v13 = [v12 installedMDMProfileIdentifier];
    v14 = [v12 installedProfileIdentifiersWithFilterFlags:69];
    v15 = [v14 mutableCopy];

    if (v13)
    {
      v47 = v12;
      [v15 removeObject:v13];
      v46 = v15;
      v16 = [v15 count];
      v17 = v16 != 0;
    }

    else
    {
      v19 = [v15 count];
      v17 = v19 != 0;
      if (!v19)
      {
LABEL_21:

        goto LABEL_22;
      }

      v16 = v19;
      v46 = v15;
      v47 = v12;
    }

    v20 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    v21 = +[STScreenTimeSettingsUIBundle bundle];
    v22 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
    v45 = v13;
    if (v13)
    {
      if (v17)
      {
        v23 = [v21 localizedStringForKey:@"ViewProfilesDeviceManagementFooterText" value:&stru_28766E5A8 table:v22];
        [v20 setObject:v23 forKeyedSubscript:*MEMORY[0x277D3FF88]];

        v24 = @"ViewProfilesDeviceManagementButtonTitle";
      }

      else
      {
        v35 = [v21 localizedStringForKey:@"ViewDeviceManagementFooterText" value:&stru_28766E5A8 table:v22];
        [v20 setObject:v35 forKeyedSubscript:*MEMORY[0x277D3FF88]];

        v24 = @"ViewDeviceManagementButtonTitle";
      }

      v30 = [v21 localizedStringForKey:v24 value:&stru_28766E5A8 table:v22];
      v34 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v30 target:self set:0 get:0 detail:0 cell:13 edit:0];
    }

    else
    {
      [MEMORY[0x277CBEAF8] currentLocale];
      v25 = v44 = v22;
      v26 = objc_alloc(MEMORY[0x277CCACA8]);
      if (v16 <= 1)
      {
        v27 = @"ViewProfileButtonTitle";
      }

      else
      {
        v27 = @"ViewProfilesButtonTitle";
      }

      if (v16 <= 1)
      {
        v28 = @"ViewProfileFooterText";
      }

      else
      {
        v28 = @"ViewProfilesFooterText";
      }

      v29 = [v21 localizedStringForKey:v27 value:&stru_28766E5A8 table:v44];
      v30 = [v26 initWithFormat:v29 locale:v25, v16];

      v31 = objc_alloc(MEMORY[0x277CCACA8]);
      v32 = [v21 localizedStringForKey:v28 value:&stru_28766E5A8 table:v44];
      v33 = [v31 initWithFormat:v32 locale:v25, v16];
      [v20 setObject:v33 forKeyedSubscript:*MEMORY[0x277D3FF88]];

      v34 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v30 target:self set:0 get:0 detail:0 cell:13 edit:0];

      v22 = v44;
    }

    v12 = v47;

    [v34 setButtonAction:sel__viewProfilesAndDeviceManagement_];
    [v34 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
    [v8 addObject:v20];
    [v8 addObject:v34];
    v36 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    [v8 addObject:v36];

    v15 = v46;
    v13 = v45;
    goto LABEL_21;
  }

LABEL_22:
  v37 = [(STContentPrivacyListController *)self _enableRestrictionsSwitchSpecifier];
  [(STContentPrivacyListController *)self setEnableRestrictionsSwitchSpecifier:v37];
  [v8 addObject:v37];
  v38 = [(STContentPrivacyListController *)self _topLevelSpecifiers];
  [v8 addObjectsFromArray:v38];

  v39 = [(STContentPrivacyListController *)self _allowChangesSpecifiers];
  [v8 addObjectsFromArray:v39];

  v40 = [v8 copy];
  v41 = *MEMORY[0x277D3FC48];
  v42 = *(&self->super.super.super.super.super.super.super.isa + v41);
  *(&self->super.super.super.super.super.super.super.isa + v41) = v40;

  v18 = *(&self->super.super.super.super.super.super.super.isa + v41);
LABEL_23:

  return v18;
}

- (id)_enableRestrictionsSwitchSpecifier
{
  v3 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v4 = +[STScreenTimeSettingsUIBundle bundle];
  v5 = [v4 localizedStringForKey:@"ContentPrivacySpecifierName" value:&stru_28766E5A8 table:v3];
  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v5 target:self set:sel_setRestrictionsEnabled_specifier_ get:sel_getRestrictionsEnabled_ detail:0 cell:6 edit:{+[STDevicePINFactory devicePINPaneForPlatform](STDevicePINFactory, "devicePINPaneForPlatform")}];
  v7 = [(STPINListViewController *)self coordinator];
  v8 = [v7 contentPrivacyCoordinator];
  v9 = [v8 viewModel];
  if (([v9 shouldAllowEditing] & 1) == 0)
  {

    goto LABEL_5;
  }

  v10 = [v7 contentPrivacyCoordinator];
  v11 = [v10 areRestrictionsEditable];

  if ((v11 & 1) == 0)
  {
LABEL_5:
    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  }

  [(STPINListViewController *)self setUpPasscodeAndLineWrapBehaviorForSpecifier:v6];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A48];

  return v6;
}

- (id)_topLevelSpecifiers
{
  if (_os_feature_enabled_impl())
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:v3];
  v5 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v6 = +[STScreenTimeSettingsUIBundle bundle];
  v7 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
  [v4 addObject:v7];

  if ([(STContentPrivacyListController *)self isEligibleForAppDistribution])
  {
    v8 = @"AppsInstallationsAndPurchasesSpecifierName";
  }

  else
  {
    v8 = @"ITunesAppStorePurchasesSpecifierName";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_28766E5A8 table:v5];
  v10 = [(STContentPrivacyListController *)self _topLevelSpecifierWithAction:sel_showiTunesPurchasesRestrictions_ name:v9];

  [v10 setIdentifier:@"PURCHASES"];
  v26 = v10;
  [v4 addObject:v10];
  v25 = [v6 localizedStringForKey:@"AADC_AllowedAppsAndFeaturesSpecifierName" value:&stru_28766E5A8 table:v5];
  v11 = [(STContentPrivacyListController *)self _topLevelSpecifierWithAction:sel_showAllowedAppsRestrictions_ name:?];
  [v11 setIdentifier:@"ALLOWED_APPS"];
  [v4 addObject:v11];
  v12 = [v4 lastObject];
  v13 = *MEMORY[0x277D3FD80];
  v14 = MEMORY[0x277CBEC38];
  [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];

  if (_os_feature_enabled_impl())
  {
    v15 = @"AADC_ContentRestrictionsSpecifierName";
  }

  else
  {
    v15 = @"AADC_Old_ContentRestrictionsSpecifierName";
  }

  v27 = v5;
  v16 = [v6 localizedStringForKey:v15 value:&stru_28766E5A8 table:v5];
  v17 = [(STContentPrivacyListController *)self _buttonActionSpecifierWithAction:sel_showMediaRestrictions_ name:v16];
  [v17 setIdentifier:@"CONTENT_RESTRICTIONS"];
  [v4 addObject:v17];
  v18 = [v4 lastObject];
  [v18 setObject:v14 forKeyedSubscript:v13];

  v19 = [v4 lastObject];
  [(STContentPrivacyListController *)self setContentRestrictionsSpecifier:v19];

  if (_os_feature_enabled_impl())
  {
    v20 = [v6 localizedStringForKey:@"AADC_SiriAndIntelligenceRestrictionsSpecifierName" value:&stru_28766E5A8 table:v27];
    v21 = [(STContentPrivacyListController *)self _topLevelSpecifierWithAction:sel_showSiriAndIntelligenceRestrictions_ name:v20];
    [v21 setIdentifier:@"SIRI_AND_INTELLIGENCE_RESTRICTIONS"];
    [v4 addObject:v21];
    v22 = [v4 lastObject];
    [v22 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v13];
  }

  v23 = [(STContentPrivacyListController *)self _privacySpecifiers];
  [v4 addObjectsFromArray:v23];

  return v4;
}

- (NSArray)storeDetailSpecifiers
{
  v3 = objc_opt_new();
  v4 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v5 = +[STScreenTimeSettingsUIBundle bundle];
  v6 = MEMORY[0x277D3FAD8];
  v7 = [v5 localizedStringForKey:@"StorePurchasesLabel" value:&stru_28766E5A8 table:v4];
  v8 = [v6 groupSpecifierWithName:v7];
  [v3 addObject:v8];

  v9 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"application.store" key:@"allowAppInstallation"];
  v10 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"application.store" key:@"allowUIAppInstallation"];
  v11 = [(STContentPrivacyListController *)self getItemSpecifierValue:v9];
  v12 = [v11 BOOLValue];

  v39 = v10;
  v13 = [(STContentPrivacyListController *)self getItemSpecifierValue:v10];
  v14 = [v13 BOOLValue];

  if (v12 != v14)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInt:v12 & v14];
    [(STContentPrivacyListController *)self setItemSpecifierValueForUIOnly:v15 specifier:v9];
  }

  [v3 addObject:v9];
  v16 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"application.store" key:@"allowAppRemoval"];
  [v3 addObject:v16];

  v17 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"application.store" key:@"allowInAppPurchases"];
  [v3 addObject:v17];

  v18 = [(STPINListViewController *)self coordinator];
  v19 = [v18 contentPrivacyCoordinator];
  v20 = [v19 viewModel];

  v40 = v9;
  if ([v20 isLocalDevice] && (v21 = MEMORY[0x277CF0300], objc_msgSend(MEMORY[0x277CB8F48], "ams_sharedAccountStore"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "ams_activeiTunesAccount"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "username"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "formattedUsernameFromUsername:", v24), v25 = objc_claimAutoreleasedReturnValue(), v24, v23, v22, v25))
  {
    v26 = [v5 localizedStringForKey:@"RequirePasswordDetailText" value:&stru_28766E5A8 table:v4];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:v26, v25];
  }

  else
  {
    v27 = [v5 localizedStringForKey:@"RequirePasswordNoUserDetailText" value:&stru_28766E5A8 table:v4];
  }

  v38 = v27;
  v28 = [v20 visibleRestrictionWithConfiguration:@"application.store" key:@"forceITunesStorePasswordEntry"];
  v29 = [v5 localizedStringForKey:@"RequirePasswordLabel" value:&stru_28766E5A8 table:v4];
  v30 = [(STContentPrivacyListController *)self radioGroupSpecifierWithName:v29 footerText:v27 item:v28];
  [v3 addObject:v30];
  [v5 localizedStringForKey:@"AlwaysRequireSpecifierName" value:&stru_28766E5A8 table:v4];
  v32 = v31 = v4;
  [(STContentPrivacyListController *)self defaultRadioItemSpecifierWithGroup:v30 name:v32 value:MEMORY[0x277CBEC38]];
  v33 = v37 = v20;
  [v3 addObject:v33];

  v34 = [v5 localizedStringForKey:@"DontRequireSpecifierName" value:&stru_28766E5A8 table:v31];
  v35 = [(STContentPrivacyListController *)self defaultRadioItemSpecifierWithGroup:v30 name:v34 value:MEMORY[0x277CBEC28]];
  [v3 addObject:v35];

  return v3;
}

- (NSArray)distributionStoreDetailSpecifiers
{
  v46[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v5 = +[STScreenTimeSettingsUIBundle bundle];
  v6 = MEMORY[0x277D3FAD8];
  v7 = [v5 localizedStringForKey:@"AppInstallationsLabel" value:&stru_28766E5A8 table:v4];
  v8 = [v6 groupSpecifierWithName:v7];

  v9 = [v5 localizedStringForKey:@"AppInstallationsDetailText" value:&stru_28766E5A8 table:v4];
  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  v45 = v8;
  [v3 addObject:v8];
  v10 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"application.store" key:@"allowAppInstallation"];
  [v3 addObject:v10];
  v44 = v10;
  v11 = [(STContentPrivacyListController *)self getItemSpecifierValue:v10];
  v12 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"application.store" key:@"allowUIAppInstallation"];
  v13 = *MEMORY[0x277D3FF38];
  [v12 setObject:v11 forKeyedSubscript:*MEMORY[0x277D3FF38]];
  if (([v11 BOOLValue] & 1) == 0)
  {
    [(STContentPrivacyListController *)self setItemSpecifierValueForUIOnly:v11 specifier:v12];
  }

  v43 = v12;
  [v3 addObject:v12];
  if (_os_feature_enabled_impl())
  {
    v14 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"application.store" key:@"allowWebDistributionAppInstallation"];
    [v14 setObject:v11 forKeyedSubscript:v13];
    if (([v11 BOOLValue] & 1) == 0)
    {
      [(STContentPrivacyListController *)self setItemSpecifierValueForUIOnly:v11 specifier:v14];
    }

    [v3 addObject:v14];
  }

  v15 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"application.store" key:@"allowMarketplaceAppInstallation"];
  [v15 setObject:v11 forKeyedSubscript:v13];
  if (([v11 BOOLValue] & 1) == 0)
  {
    [(STContentPrivacyListController *)self setItemSpecifierValueForUIOnly:v11 specifier:v15];
  }

  v40 = v11;
  v42 = v15;
  [v3 addObject:v15];
  v16 = MEMORY[0x277D3FAD8];
  v17 = [v5 localizedStringForKey:@"PurchasesLabel" value:&stru_28766E5A8 table:v4];
  v18 = [v16 groupSpecifierWithName:v17];
  [v3 addObject:v18];

  v19 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"application.store" key:@"allowInAppPurchases"];
  [v3 addObject:v19];

  v20 = [(STPINListViewController *)self coordinator];
  v21 = [v20 contentPrivacyCoordinator];
  v22 = [v21 viewModel];

  v41 = v22;
  if ([v22 isLocalDevice] && (v23 = MEMORY[0x277CF0300], objc_msgSend(MEMORY[0x277CB8F48], "ams_sharedAccountStore"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "ams_activeiTunesAccount"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "username"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "formattedUsernameFromUsername:", v26), v27 = objc_claimAutoreleasedReturnValue(), v26, v25, v24, v27))
  {
    v28 = [v5 localizedStringForKey:@"RequirePasswordDetailText" value:&stru_28766E5A8 table:v4];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:v28, v27];
  }

  else
  {
    v29 = [v5 localizedStringForKey:@"RequirePasswordNoUserDetailText" value:&stru_28766E5A8 table:v4];
  }

  v30 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"application.store" key:@"forceITunesStorePasswordEntry"];
  v31 = [v5 localizedStringForKey:@"AlwaysRequireSpecifierName" value:&stru_28766E5A8 table:v4];
  v32 = [v5 localizedStringForKey:@"DontRequireSpecifierName" value:&stru_28766E5A8 table:v4];
  v46[0] = v31;
  v46[1] = v32;
  [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
  v34 = v33 = v4;
  [v30 setValues:&unk_28769D7C0 titles:v34];

  [v30 setObject:v29 forKeyedSubscript:*MEMORY[0x277D40118]];
  [v3 addObject:v30];
  v35 = MEMORY[0x277D3FAD8];
  v36 = [v5 localizedStringForKey:@"AppManagementLabel" value:&stru_28766E5A8 table:v33];
  v37 = [v35 groupSpecifierWithName:v36];
  [v3 addObject:v37];

  v38 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"application.store" key:@"allowAppRemoval"];
  [v3 addObject:v38];

  return v3;
}

- (id)groupSpecifierWithConfiguration:(id)a3 key:(id)a4 footerText:(id)a5 radio:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v14 = +[STScreenTimeSettingsUIBundle bundle];
  v15 = [(STPINListViewController *)self coordinator];
  v16 = [v15 contentPrivacyCoordinator];
  v17 = [v16 viewModel];
  v18 = [v17 visibleRestrictionWithConfiguration:v12 key:v11];

  v19 = MEMORY[0x277D3FAD8];
  v20 = [v18 uiLabel];
  v21 = [v14 localizedStringForKey:v20 value:&stru_28766E5A8 table:v13];
  v22 = [v19 groupSpecifierWithName:v21];

  [v22 setObject:v18 forKeyedSubscript:0x287672648];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  [v22 setObject:v23 forKeyedSubscript:*MEMORY[0x277D3FFE8]];

  if (v10)
  {
    [v22 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  return v22;
}

- (id)_privacySpecifiers
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v5 = +[STScreenTimeSettingsUIBundle bundle];
  v6 = [v5 localizedStringForKey:@"PrivacySpecifierName" value:&stru_28766E5A8 table:v4];
  v7 = [(STContentPrivacyListController *)self radioGroupSpecifierWithName:v6 footerText:0 item:0];
  [v3 addObject:v7];

  v8 = [(STPINListViewController *)self coordinator];
  v9 = [v8 contentPrivacyCoordinator];
  v10 = [v9 viewModel];

  if ([v10 isLocalDevice])
  {
    v11 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:0x287672628 key:0x287672768];
    [v3 addObject:v11];

    v12 = objc_opt_class();
    v13 = [v3 lastObject];
    [v13 setDetailControllerClass:v12];

    v14 = [(STContentPrivacyListController *)self tccSpecifierWithCapabilityKey:0x2876727A8 id:*MEMORY[0x277D401E0]];
    [v3 addObject:v14];

    v15 = [(STContentPrivacyListController *)self tccSpecifierWithCapabilityKey:0x2876727E8 id:*MEMORY[0x277D401D0]];
    [v3 addObject:v15];

    v16 = [(STContentPrivacyListController *)self tccSpecifierWithCapabilityKey:0x287672868 id:*MEMORY[0x277D40220]];
    [v3 addObject:v16];

    v17 = [(STContentPrivacyListController *)self tccSpecifierWithCapabilityKey:0x287672848 id:*MEMORY[0x277D40218]];
    [v3 addObject:v17];

    v18 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"system.icloud" key:@"allowFindMyFriendsModification"];
    [v3 addObject:v18];

    v19 = [(STContentPrivacyListController *)self tccSpecifierWithCapabilityKey:0x2876727C8 id:*MEMORY[0x277D401C8]];
    [v3 addObject:v19];

    v20 = [(STContentPrivacyListController *)self tccSpecifierWithCapabilityKey:0x287672828 id:*MEMORY[0x277D40200]];
    [v3 addObject:v20];

    v21 = [(STContentPrivacyListController *)self tccSpecifierWithCapabilityKey:0x287672888 id:*MEMORY[0x277D40228]];
    [v3 addObject:v21];

    v22 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:0x287672628 key:0x287672748];
    [v3 addObject:v22];

    v23 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"system.web.tracking" key:@"forceLimitAdTracking"];
    [v3 addObject:v23];

    v24 = objc_opt_class();
    v25 = [v3 lastObject];
    [v25 setDetailControllerClass:v24];

    v26 = [v3 lastObject];
    [v26 setObject:@"USER_TRACKING" forKeyedSubscript:*MEMORY[0x277D3FFB8]];

    [(STContentPrivacyListController *)self tccSpecifierWithCapabilityKey:0x287672808 id:*MEMORY[0x277D401F8]];
  }

  else
  {
    [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"system.icloud" key:@"allowFindMyFriendsModification"];
  }
  v27 = ;
  [v3 addObject:v27];

  v28 = [(STPINListViewController *)self coordinator];
  v29 = [v28 contentPrivacyCoordinator];
  v30 = [v29 areRestrictionsEditable];

  if ((v30 & 1) == 0)
  {
    v43 = v10;
    v31 = v6;
    v32 = v5;
    v33 = v4;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v34 = v3;
    v35 = [v34 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v45;
      v38 = *MEMORY[0x277D3FF38];
      v39 = MEMORY[0x277CBEC28];
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v45 != v37)
          {
            objc_enumerationMutation(v34);
          }

          [*(*(&v44 + 1) + 8 * i) setObject:v39 forKeyedSubscript:v38];
        }

        v36 = [v34 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v36);
    }

    v4 = v33;
    v5 = v32;
    v6 = v31;
    v10 = v43;
  }

  v41 = [v3 copy];

  return v41;
}

- (id)_allowChangesSpecifiers
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:6];
  v4 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v5 = +[STScreenTimeSettingsUIBundle bundle];
  v6 = [v5 localizedStringForKey:@"AADC_AllowChangesLabel" value:&stru_28766E5A8 table:v4];
  v7 = [(STContentPrivacyListController *)self radioGroupSpecifierWithName:v6 footerText:0 item:0];
  [v3 addObject:v7];

  v8 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"passcode.settings" key:@"allowPasscodeModification"];
  [v3 addObject:v8];

  v9 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"account.settings" key:@"allowAccountModification"];
  [v3 addObject:v9];

  v10 = [v5 localizedStringForKey:@"AccountChangesFooterText" value:&stru_28766E5A8 table:v4];
  v11 = [v3 lastObject];
  [v11 setObject:v10 forKeyedSubscript:*MEMORY[0x277D40118]];

  v12 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:0x2876725E8 key:0x2876726C8];
  [v3 addObject:v12];

  v13 = [(STPINListViewController *)self coordinator];
  v14 = [v13 contentPrivacyCoordinator];
  v15 = [v14 viewModel];
  v16 = [v15 isLocalDevice];

  if (v16)
  {
    v17 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:0x287672628 key:0x287672788];
    [v3 addObject:v17];
  }

  if (_os_feature_enabled_impl())
  {
    v18 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"system.music" key:@"allowSpeakerVolumeLimitModification"];
    [v3 addObject:v18];
  }

  v19 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"system.donotdisturb" key:@"allowDriverDoNotDisturbModifications"];
  [v3 addObject:v19];

  v20 = [v5 localizedStringForKey:@"AADC_DrivingFocusSpecifierTitle" value:&stru_28766E5A8 table:v4];
  v21 = [v3 lastObject];
  v22 = *MEMORY[0x277D3FED0];
  [v21 setObject:v20 forKeyedSubscript:*MEMORY[0x277D3FED0]];

  v23 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"system.tvprovider" key:@"allowTVProviderModification"];
  [v3 addObject:v23];

  v24 = [v5 localizedStringForKey:@"AADC_TVProviderSpecifierTitle" value:&stru_28766E5A8 table:v4];
  v25 = [v3 lastObject];
  [v25 setObject:v24 forKeyedSubscript:v22];

  v26 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"application.settings" key:@"allowAutomaticAppUpdatesModification"];
  [v3 addObject:v26];

  v27 = [v5 localizedStringForKey:@"AADC_BackgroundAppActivitiesSpecifierTitle" value:&stru_28766E5A8 table:v4];
  v28 = [v3 lastObject];
  [v28 setObject:v27 forKeyedSubscript:v22];

  v29 = [(STPINListViewController *)self coordinator];
  v30 = [v29 contentPrivacyCoordinator];
  LOBYTE(v22) = [v30 areRestrictionsEditable];

  if ((v22 & 1) == 0)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v31 = v3;
    v32 = [v31 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v41;
      v35 = *MEMORY[0x277D3FF38];
      v36 = MEMORY[0x277CBEC28];
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v41 != v34)
          {
            objc_enumerationMutation(v31);
          }

          [*(*(&v40 + 1) + 8 * i) setObject:v36 forKeyedSubscript:{v35, v40}];
        }

        v33 = [v31 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v33);
    }
  }

  v38 = [v3 copy];

  return v38;
}

- (void)_viewProfilesAndDeviceManagement:(id)a3
{
  v3 = objc_alloc(MEMORY[0x277CBEBC0]);
  v5 = [v3 initWithString:*MEMORY[0x277D264C8]];
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v4 openSensitiveURL:v5 withOptions:0];
}

- (void)showiTunesPurchasesRestrictions:(id)a3
{
  v4 = a3;
  v7 = objc_opt_new();
  v5 = [(STPINListViewController *)self coordinator];
  [v7 setCoordinator:v5];

  [v7 setContentPrivacyController:self];
  [v7 setParentController:self];
  v6 = [(STContentPrivacyListController *)self rootController];
  [v7 setRootController:v6];

  [v7 setSpecifier:v4];
  [(STContentPrivacyListController *)self showController:v7 animate:1];
}

- (void)showAllowedAppsRestrictions:(id)a3
{
  v4 = a3;
  v7 = objc_opt_new();
  v5 = [(STPINListViewController *)self coordinator];
  [v7 setCoordinator:v5];

  [v7 setParentController:self];
  v6 = [(STContentPrivacyListController *)self rootController];
  [v7 setRootController:v6];

  [v7 setSpecifier:v4];
  [(STContentPrivacyListController *)self showController:v7 animate:1];
}

- (void)showMediaRestrictions:(id)a3
{
  v4 = a3;
  v5 = [(STContentPrivacyListController *)self contentRestrictionsSpecifier];
  [v5 st_startSpinner];

  v6 = [(STContentPrivacyListController *)self isEligibleForAppDistribution];
  v7 = [(STPINListViewController *)self coordinator];
  v8 = [v7 viewModel];
  v9 = [v8 me];
  v10 = [v9 dsid];

  v11 = [objc_alloc(MEMORY[0x277D4BA48]) initWithUnrated:v6 userDSID:v10];
  v12 = MEMORY[0x277D4BA40];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__STContentPrivacyListController_showMediaRestrictions___block_invoke;
  v14[3] = &unk_279B7D310;
  v14[4] = self;
  v15 = v4;
  v13 = v4;
  [v12 loadRegionRatingsWithOptions:v11 completionHandler:v14];
}

void __56__STContentPrivacyListController_showMediaRestrictions___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 contentRestrictionsSpecifier];
  [v5 st_stopSpinner];

  v9 = [[STContentPrivacyMediaRestrictionsDetailController alloc] initWithRegionRatings:v4];
  v6 = [*(a1 + 32) coordinator];
  [(STContentPrivacyMediaRestrictionsDetailController *)v9 setCoordinator:v6];

  v7 = [*(a1 + 32) contentRestrictionAdditionalURL];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:@"STContentRestrictionAdditionalURLHandling"];

  [*(a1 + 32) setContentRestrictionAdditionalURL:0];
  [(STContentPrivacyMediaRestrictionsDetailController *)v9 setParentController:*(a1 + 32)];
  v8 = [*(a1 + 32) rootController];
  [(STContentPrivacyMediaRestrictionsDetailController *)v9 setRootController:v8];

  [(STContentPrivacyMediaRestrictionsDetailController *)v9 setSpecifier:*(a1 + 40)];
  [*(a1 + 32) showController:v9 animate:1];
}

- (void)showSiriAndIntelligenceRestrictions:(id)a3
{
  v4 = a3;
  v5 = [STContentPrivacySiriAndIntelligenceRestrictionsDetailController alloc];
  v6 = [(STPINListViewController *)self coordinator];
  v8 = [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)v5 initWithRootViewModelCoordinator:v6];

  [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)v8 setParentController:self];
  v7 = [(STContentPrivacyListController *)self rootController];
  [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)v8 setRootController:v7];

  [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)v8 setSpecifier:v4];
  [(STContentPrivacyListController *)self showController:v8 animate:1];
}

- (id)_buttonActionSpecifierWithAction:(SEL)a3 name:(id)a4
{
  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:a4 target:self set:0 get:0 detail:0 cell:2 edit:0];
  v7 = [(STPINListViewController *)self coordinator];
  v8 = [v7 contentPrivacyCoordinator];
  v9 = [v8 viewModel];

  if (![v9 restrictionsEnabled] || (objc_msgSend(v9, "shouldAllowEditing") & 1) == 0)
  {
    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  }

  [v6 setButtonAction:a3];

  return v6;
}

- (id)_topLevelSpecifierWithAction:(SEL)a3 name:(id)a4
{
  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:a4 target:self set:0 get:0 detail:0 cell:2 edit:0];
  v7 = [(STPINListViewController *)self coordinator];
  v8 = [v7 contentPrivacyCoordinator];
  v9 = [v8 viewModel];

  if (![v9 restrictionsEnabled] || (objc_msgSend(v9, "shouldAllowEditing") & 1) == 0)
  {
    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  }

  [v6 setControllerLoadAction:a3];

  return v6;
}

- (id)getRestrictionsEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(STPINListViewController *)self coordinator];
  v5 = [v4 contentPrivacyCoordinator];
  v6 = [v5 viewModel];
  v7 = [v3 numberWithBool:{objc_msgSend(v6, "restrictionsEnabled")}];

  return v7;
}

- (void)setRestrictionsEnabled:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STPINListViewController *)self coordinator];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__STContentPrivacyListController_setRestrictionsEnabled_specifier___block_invoke;
  aBlock[3] = &unk_279B7CC18;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  if ([v8 isPasscodeEnabled] && (objc_msgSend(v8, "hasAlreadyEnteredPINForSession") & 1) == 0)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__STContentPrivacyListController_setRestrictionsEnabled_specifier___block_invoke_315;
    v11[3] = &unk_279B7D338;
    v12 = v8;
    v13 = v6;
    v14 = self;
    v15 = v9;
    [(STPINListViewController *)self showPINSheet:v7 completion:v11];

    v10 = v12;
  }

  else
  {
    v10 = [v8 contentPrivacyCoordinator];
    [v10 saveContentPrivacyEnabled:objc_msgSend(v6 completionHandler:{"BOOLValue"), v9}];
  }
}

void __67__STContentPrivacyListController_setRestrictionsEnabled_specifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[STUILog persistence];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __67__STContentPrivacyListController_setRestrictionsEnabled_specifier___block_invoke_cold_1(v3, v4);
    }
  }

  [*(a1 + 32) performSelectorOnMainThread:sel_reloadSpecifiers withObject:0 waitUntilDone:0];
}

void __67__STContentPrivacyListController_setRestrictionsEnabled_specifier___block_invoke_315(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) contentPrivacyCoordinator];
    [v4 saveContentPrivacyEnabled:objc_msgSend(*(a1 + 40) completionHandler:{"BOOLValue"), *(a1 + 56)}];
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = [v3 enableRestrictionsSwitchSpecifier];
    [v3 reloadSpecifier:? animated:?];
  }
}

- (id)getItemSpecifierValue:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:0x287672648];
  v5 = [(STPINListViewController *)self coordinator];
  v6 = [v5 contentPrivacyCoordinator];
  v7 = [v6 viewModel];

  v8 = [v7 valuesByRestriction];
  v9 = [v8 objectForKeyedSubscript:v4];

  v10 = [v7 defaultValueForRestriction:v4];
  v11 = v10;
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  v13 = v12;

  return v12;
}

- (void)setItemSpecifierValueForUIOnly:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v11 = [a4 objectForKeyedSubscript:0x287672648];
  v7 = [(STPINListViewController *)self coordinator];
  v8 = [v7 contentPrivacyCoordinator];
  v9 = [v8 viewModel];

  v10 = [v9 valuesByRestriction];
  [v10 setObject:v6 forKeyedSubscript:v11];
}

- (void)setItemSpecifierValue:(id)a3 specifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 objectForKeyedSubscript:0x287672648];
  v9 = [(STPINListViewController *)self coordinator];
  v10 = [v9 contentPrivacyCoordinator];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__STContentPrivacyListController_setItemSpecifierValue_specifier___block_invoke;
  v13[3] = &unk_279B7D360;
  v14 = v8;
  v15 = self;
  v16 = v6;
  v11 = v6;
  v12 = v8;
  [v10 saveRestrictionValue:v7 forItem:v12 completionHandler:v13];
}

void __66__STContentPrivacyListController_setItemSpecifierValue_specifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[STUILog persistence];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __66__STContentPrivacyListController_setItemSpecifierValue_specifier___block_invoke_cold_1();
    }
  }

  [*(a1 + 40) performSelectorOnMainThread:sel_reloadSpecifier_ withObject:*(a1 + 48) waitUntilDone:0];
}

- (id)defaultRadioItemSpecifierWithGroup:(id)a3 name:(id)a4 value:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:a4 target:self set:0 get:0 detail:0 cell:3 edit:0];
  v11 = [v8 objectForKeyedSubscript:0x287672648];
  [v10 setEditPaneClass:{+[STDevicePINFactory devicePINPaneForPlatform](STDevicePINFactory, "devicePINPaneForPlatform")}];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [v10 setObject:v13 forKeyedSubscript:*MEMORY[0x277D400B8]];

  [v10 setObject:&unk_28769D0E8 forKeyedSubscript:*MEMORY[0x277D401C0]];
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
  v14 = [(STPINListViewController *)self coordinator];
  [v10 setObject:v14 forKeyedSubscript:0x287675C48];

  [v10 setObject:v11 forKeyedSubscript:0x287672648];
  [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x277D401A8]];
  v15 = [(STPINListViewController *)self coordinator];
  v16 = [v15 contentPrivacyCoordinator];
  v17 = [v16 viewModel];

  if (![v17 restrictionsEnabled] || (objc_msgSend(v17, "shouldAllowEditing") & 1) == 0)
  {
    [v10 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  }

  v18 = [(STContentPrivacyListController *)self getItemSpecifierValue:v10];
  if ([v9 isEqualToNumber:v18])
  {
    [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x277D40090]];
  }

  return v10;
}

- (id)defaultLinkListSpecifierWithItem:(id)a3
{
  v26[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = [v5 uiLabel];
  v9 = [v7 localizedStringForKey:v8 value:&stru_28766E5A8 table:v6];

  v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v9 target:self set:sel_setItemSpecifierValue_specifier_ get:sel_getItemSpecifierValue_ detail:objc_opt_class() cell:2 edit:0];
  v11 = [(STPINListViewController *)self coordinator];
  [v10 setObject:v11 forKeyedSubscript:0x287675C48];

  v12 = [v5 restrictionType];
  if (v12 == 1)
  {
    v18 = [v7 localizedStringForKey:@"AllowLabel" value:&stru_28766E5A8 table:v6];
    v19 = [v7 localizedStringForKey:@"DontAllowLabel" value:&stru_28766E5A8 table:v6];
    v25[0] = v18;
    v25[1] = v19;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];

    v17 = &unk_28769D7F0;
  }

  else
  {
    v13 = v12;
    if (v12)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"STContentPrivacyListController.m" lineNumber:775 description:{@"Unimplemented type %d", v13}];

      v16 = 0;
      v17 = 0;
    }

    else
    {
      v14 = [v7 localizedStringForKey:@"AllowLabel" value:&stru_28766E5A8 table:v6];
      v15 = [v7 localizedStringForKey:@"DontAllowLabel" value:&stru_28766E5A8 table:v6];
      v26[0] = v14;
      v26[1] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];

      v17 = &unk_28769D7D8;
    }
  }

  [v10 setObject:v5 forKeyedSubscript:0x287672648];
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
  [v10 setValues:v17 titles:v16];
  v21 = [(STPINListViewController *)self coordinator];
  v22 = [v21 contentPrivacyCoordinator];
  v23 = [v22 viewModel];

  if (![v23 restrictionsEnabled] || (objc_msgSend(v23, "shouldAllowEditing") & 1) == 0)
  {
    [v10 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  }

  return v10;
}

- (id)defaultLinkListSpecifierWithConfiguration:(id)a3 key:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STPINListViewController *)self coordinator];
  v9 = [v8 contentPrivacyCoordinator];
  v10 = [v9 viewModel];
  v11 = [v10 visibleRestrictionWithConfiguration:v7 key:v6];

  v12 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithItem:v11];

  return v12;
}

- (id)tccSpecifierWithCapabilityKey:(id)a3 id:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:0x287672628 key:v6];
  if ([v6 isEqualToString:0x287672848])
  {
    v9 = sel__showPhotosDetailControllerWithAuthentication_;
LABEL_5:
    [v8 setButtonAction:v9];
    goto LABEL_9;
  }

  if ([v6 isEqualToString:0x2876727E8])
  {
    v9 = sel__showCalendarDetailControllerWithAuthentication_;
    goto LABEL_5;
  }

  if ([v6 isEqualToString:0x2876727A8])
  {
    _os_feature_enabled_impl();
  }

  [v8 setDetailControllerClass:objc_opt_class()];
LABEL_9:
  [v8 setObject:v6 forKeyedSubscript:@"capability"];
  [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FFB8]];

  return v8;
}

- (void)_showPhotosDetailControllerWithAuthentication:(id)a3
{
  v4 = a3;
  [(STContentPrivacyListController *)self _showDetailControllerWithAuthenticationForBundleID:@"com.apple.mobileslideshow" detailControllerClass:objc_opt_class() specifier:v4];
}

- (void)_showCalendarDetailControllerWithAuthentication:(id)a3
{
  v4 = a3;
  [(STContentPrivacyListController *)self _showDetailControllerWithAuthenticationForBundleID:@"com.apple.mobilecal" detailControllerClass:objc_opt_class() specifier:v4];
}

- (void)_showDetailControllerWithAuthenticationForBundleID:(id)a3 detailControllerClass:(Class)a4 specifier:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:v9];
  v12 = [MEMORY[0x277CEBE98] sharedGuard];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __117__STContentPrivacyListController__showDetailControllerWithAuthenticationForBundleID_detailControllerClass_specifier___block_invoke;
  v15[3] = &unk_279B7D3B0;
  v19 = a4;
  v20 = a2;
  v16 = v10;
  v17 = self;
  v18 = v9;
  v13 = v9;
  v14 = v10;
  [v12 authenticateForSubject:v11 completion:v15];
}

void __117__STContentPrivacyListController__showDetailControllerWithAuthenticationForBundleID_detailControllerClass_specifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __117__STContentPrivacyListController__showDetailControllerWithAuthenticationForBundleID_detailControllerClass_specifier___block_invoke_2;
    block[3] = &unk_279B7D388;
    v9 = *(a1 + 56);
    *&v6 = *(a1 + 32);
    *(&v6 + 1) = *(a1 + 40);
    *&v7 = v9;
    *(&v7 + 1) = *(a1 + 64);
    v11 = v6;
    v12 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v8 = v11;
  }

  else
  {
    v8 = +[STUILog contentPrivacy];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __117__STContentPrivacyListController__showDetailControllerWithAuthenticationForBundleID_detailControllerClass_specifier___block_invoke_cold_1();
    }
  }
}

void __117__STContentPrivacyListController__showDetailControllerWithAuthenticationForBundleID_detailControllerClass_specifier___block_invoke_2(void *a1)
{
  v2 = objc_opt_new();
  if (objc_opt_respondsToSelector())
  {
    [v2 setSpecifier:a1[4]];
  }

  else
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = a1[7];
    v5 = a1[5];
    v6 = [v2 description];
    [v3 handleFailureInMethod:v4 object:v5 file:@"STContentPrivacyListController.m" lineNumber:846 description:{@"%@ doesn't take a specifier", v6}];

    v7 = +[STUILog contentPrivacy];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __117__STContentPrivacyListController__showDetailControllerWithAuthenticationForBundleID_detailControllerClass_specifier___block_invoke_2_cold_1(v2, v7);
    }
  }

  [a1[5] showController:v2 animate:1];
}

- (id)radioGroupSpecifierWithName:(id)a3 footerText:(id)a4 item:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:a3];
  [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FFE8]];
  if (v7)
  {
    [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  if (v8)
  {
    [v9 setObject:v8 forKeyedSubscript:0x287672648];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(STPINListViewController *)self coordinator];
  [v3 removeObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.isLoaded" context:@"KVOContextContentPrivacyListController"];

  v4.receiver = self;
  v4.super_class = STContentPrivacyListController;
  [(STListViewController *)&v4 dealloc];
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STPINListViewController *)self coordinator];
  v6 = v5;
  if (v5 == v4)
  {
    v7.receiver = self;
    v7.super_class = STContentPrivacyListController;
    [(STPINListViewController *)&v7 setCoordinator:v4];
  }

  else
  {
    [v5 removeObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.isLoaded" context:@"KVOContextContentPrivacyListController"];
    v7.receiver = self;
    v7.super_class = STContentPrivacyListController;
    [(STPINListViewController *)&v7 setCoordinator:v4];
    [v4 addObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.isLoaded" options:1 context:@"KVOContextContentPrivacyListController"];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  if (a6 == @"KVOContextContentPrivacyListController")
  {
    v12 = a3;
    [(STPINListViewController *)self coordinator];

    v13 = [v12 isEqualToString:@"contentPrivacyCoordinator.viewModel.isLoaded"];
    if (v13)
    {
      v14 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v15 = [MEMORY[0x277CBEB68] null];

      if (v14 == v15)
      {

        v14 = 0;
      }

      -[STContentPrivacyListController _isLoadedDidChange:](self, "_isLoadedDidChange:", [v14 BOOLValue]);
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = STContentPrivacyListController;
    v11 = a3;
    [(STListViewController *)&v16 observeValueForKeyPath:v11 ofObject:a4 change:v10 context:a6];
  }
}

- (void)_isLoadedDidChange:(BOOL)a3
{
  if (a3)
  {
    [(STContentPrivacyListController *)self reloadSpecifiers];
    v5 = [(STContentPrivacyListController *)self specifierIDPendingPush];
    v4 = [(STContentPrivacyListController *)self specifierForID:?];
    if (v4)
    {
      if ([(STPINListViewController *)self shouldShowPINSheetForSpecifier:v4])
      {
        [(STContentPrivacyListController *)self setSpecifierIDPendingPush:0];
        [(STPINListViewController *)self showPINSheet:v4];
      }

      else
      {
        [(STContentPrivacyListController *)self handlePendingURL];
      }
    }
  }
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"path"];
  v9 = [@"CONTENT_RESTRICTIONS/APP_RATING" isEqualToString:v8];

  if (v9)
  {
    [(STContentPrivacyListController *)self setContentRestrictionAdditionalURL:@"APP_RATING"];
  }

  v10.receiver = self;
  v10.super_class = STContentPrivacyListController;
  [(STContentPrivacyListController *)&v10 handleURL:v6 withCompletion:v7];
}

void __67__STContentPrivacyListController_setRestrictionsEnabled_specifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_264BA2000, a2, OS_LOG_TYPE_FAULT, "Failure enabling restrictions: %{public}@", &v2, 0xCu);
}

void __66__STContentPrivacyListController_setItemSpecifierValue_specifier___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(&dword_264BA2000, v0, OS_LOG_TYPE_FAULT, "Failure saving restriction %@: %{public}@", v1, 0x16u);
}

void __117__STContentPrivacyListController__showDetailControllerWithAuthenticationForBundleID_detailControllerClass_specifier___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_264BA2000, v0, OS_LOG_TYPE_ERROR, "An error occured while evaluating app protection authentication for %{public}@: %{public}@", v1, 0x16u);
}

void __117__STContentPrivacyListController__showDetailControllerWithAuthenticationForBundleID_detailControllerClass_specifier___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_264BA2000, a2, OS_LOG_TYPE_ERROR, "An error occured trying to set the specifier on %{public}@", &v4, 0xCu);
}

@end