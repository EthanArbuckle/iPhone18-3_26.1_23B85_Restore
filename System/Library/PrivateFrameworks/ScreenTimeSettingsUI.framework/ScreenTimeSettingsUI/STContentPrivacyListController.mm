@interface STContentPrivacyListController
- (BOOL)isEligibleForAppDistribution;
- (BOOL)shouldDeferPushForSpecifierID:(id)d;
- (NSArray)distributionStoreDetailSpecifiers;
- (NSArray)storeDetailSpecifiers;
- (STContentPrivacyListController)init;
- (id)_allowChangesSpecifiers;
- (id)_buttonActionSpecifierWithAction:(SEL)action name:(id)name;
- (id)_enableRestrictionsSwitchSpecifier;
- (id)_privacySpecifiers;
- (id)_topLevelSpecifierWithAction:(SEL)action name:(id)name;
- (id)_topLevelSpecifiers;
- (id)defaultLinkListSpecifierWithConfiguration:(id)configuration key:(id)key;
- (id)defaultLinkListSpecifierWithItem:(id)item;
- (id)defaultRadioItemSpecifierWithGroup:(id)group name:(id)name value:(id)value;
- (id)getItemSpecifierValue:(id)value;
- (id)getRestrictionsEnabled:(id)enabled;
- (id)groupSpecifierWithConfiguration:(id)configuration key:(id)key footerText:(id)text radio:(BOOL)radio;
- (id)radioGroupSpecifierWithName:(id)name footerText:(id)text item:(id)item;
- (id)specifiers;
- (id)tccSpecifierWithCapabilityKey:(id)key id:(id)id;
- (void)_isLoadedDidChange:(BOOL)change;
- (void)_showCalendarDetailControllerWithAuthentication:(id)authentication;
- (void)_showDetailControllerWithAuthenticationForBundleID:(id)d detailControllerClass:(Class)class specifier:(id)specifier;
- (void)_showPhotosDetailControllerWithAuthentication:(id)authentication;
- (void)_viewProfilesAndDeviceManagement:(id)management;
- (void)dealloc;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
- (void)setItemSpecifierValue:(id)value specifier:(id)specifier;
- (void)setItemSpecifierValueForUIOnly:(id)only specifier:(id)specifier;
- (void)setRestrictionsEnabled:(id)enabled specifier:(id)specifier;
- (void)showAllowedAppsRestrictions:(id)restrictions;
- (void)showMediaRestrictions:(id)restrictions;
- (void)showSiriAndIntelligenceRestrictions:(id)restrictions;
- (void)showiTunesPurchasesRestrictions:(id)restrictions;
- (void)viewDidAppear:(BOOL)appear;
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

- (void)viewDidAppear:(BOOL)appear
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = STContentPrivacyListController;
  [(STPINListViewController *)&v16 viewDidAppear:appear];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.ScreenTime/CONTENT_PRIVACY"];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"ContentPrivacySpecifierName" table:@"Localizable" locale:currentLocale bundleURL:bundleURL];

  v10 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = +[STScreenTimeSettingsUIBundle bundle];
  bundleURL2 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"ScreenTimeControllerTitle" table:@"Localizable" locale:currentLocale2 bundleURL:bundleURL2];

  v17[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [(STContentPrivacyListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.screen-time" title:v9 localizedNavigationComponents:v15 deepLink:v4];
}

- (BOOL)isEligibleForAppDistribution
{
  coordinator = [(STPINListViewController *)self coordinator];
  viewModel = [coordinator viewModel];
  v5 = [viewModel me];
  if ([v5 isRemoteUser])
  {
    isEligibleForAppDistribution = 0;
  }

  else
  {
    coordinator2 = [(STPINListViewController *)self coordinator];
    contentPrivacyCoordinator = [coordinator2 contentPrivacyCoordinator];
    viewModel2 = [contentPrivacyCoordinator viewModel];
    isEligibleForAppDistribution = [viewModel2 isEligibleForAppDistribution];
  }

  return isEligibleForAppDistribution;
}

- (BOOL)shouldDeferPushForSpecifierID:(id)d
{
  dCopy = d;
  v5 = [(STContentPrivacyListController *)self specifierForID:dCopy];
  if ([dCopy isEqualToString:@"ALLOWED_APPS"] && !objc_msgSend(*(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), "containsObject:", v5))
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = STContentPrivacyListController;
    v6 = [(STPINListViewController *)&v8 shouldDeferPushForSpecifierID:dCopy];
  }

  return v6;
}

- (id)specifiers
{
  specifier = [(STContentPrivacyListController *)self specifier];
  v4 = [specifier objectForKeyedSubscript:0x287675C48];
  [(STContentPrivacyListController *)self setCoordinator:v4];

  contentPrivacyCoordinator = [v4 contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  isLoaded = [viewModel isLoaded];

  if (!isLoaded)
  {
    v18 = MEMORY[0x277CBEBF8];
    goto LABEL_23;
  }

  v8 = objc_opt_new();
  viewModel2 = [v4 viewModel];
  v10 = [viewModel2 me];
  isRemoteUser = [v10 isRemoteUser];

  if ((isRemoteUser & 1) == 0)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    installedMDMProfileIdentifier = [mEMORY[0x277D262A0] installedMDMProfileIdentifier];
    v14 = [mEMORY[0x277D262A0] installedProfileIdentifiersWithFilterFlags:69];
    v15 = [v14 mutableCopy];

    if (installedMDMProfileIdentifier)
    {
      v47 = mEMORY[0x277D262A0];
      [v15 removeObject:installedMDMProfileIdentifier];
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
      v47 = mEMORY[0x277D262A0];
    }

    st_emptyGroupSpecifier = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    v21 = +[STScreenTimeSettingsUIBundle bundle];
    v22 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
    v45 = installedMDMProfileIdentifier;
    if (installedMDMProfileIdentifier)
    {
      if (v17)
      {
        v23 = [v21 localizedStringForKey:@"ViewProfilesDeviceManagementFooterText" value:&stru_28766E5A8 table:v22];
        [st_emptyGroupSpecifier setObject:v23 forKeyedSubscript:*MEMORY[0x277D3FF88]];

        v24 = @"ViewProfilesDeviceManagementButtonTitle";
      }

      else
      {
        v35 = [v21 localizedStringForKey:@"ViewDeviceManagementFooterText" value:&stru_28766E5A8 table:v22];
        [st_emptyGroupSpecifier setObject:v35 forKeyedSubscript:*MEMORY[0x277D3FF88]];

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
      [st_emptyGroupSpecifier setObject:v33 forKeyedSubscript:*MEMORY[0x277D3FF88]];

      v34 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v30 target:self set:0 get:0 detail:0 cell:13 edit:0];

      v22 = v44;
    }

    mEMORY[0x277D262A0] = v47;

    [v34 setButtonAction:sel__viewProfilesAndDeviceManagement_];
    [v34 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
    [v8 addObject:st_emptyGroupSpecifier];
    [v8 addObject:v34];
    st_emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    [v8 addObject:st_emptyGroupSpecifier2];

    v15 = v46;
    installedMDMProfileIdentifier = v45;
    goto LABEL_21;
  }

LABEL_22:
  _enableRestrictionsSwitchSpecifier = [(STContentPrivacyListController *)self _enableRestrictionsSwitchSpecifier];
  [(STContentPrivacyListController *)self setEnableRestrictionsSwitchSpecifier:_enableRestrictionsSwitchSpecifier];
  [v8 addObject:_enableRestrictionsSwitchSpecifier];
  _topLevelSpecifiers = [(STContentPrivacyListController *)self _topLevelSpecifiers];
  [v8 addObjectsFromArray:_topLevelSpecifiers];

  _allowChangesSpecifiers = [(STContentPrivacyListController *)self _allowChangesSpecifiers];
  [v8 addObjectsFromArray:_allowChangesSpecifiers];

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
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  if (([viewModel shouldAllowEditing] & 1) == 0)
  {

    goto LABEL_5;
  }

  contentPrivacyCoordinator2 = [coordinator contentPrivacyCoordinator];
  areRestrictionsEditable = [contentPrivacyCoordinator2 areRestrictionsEditable];

  if ((areRestrictionsEditable & 1) == 0)
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
  st_emptyGroupSpecifier = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
  [v4 addObject:st_emptyGroupSpecifier];

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
  lastObject = [v4 lastObject];
  v13 = *MEMORY[0x277D3FD80];
  v14 = MEMORY[0x277CBEC38];
  [lastObject setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];

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
  lastObject2 = [v4 lastObject];
  [lastObject2 setObject:v14 forKeyedSubscript:v13];

  lastObject3 = [v4 lastObject];
  [(STContentPrivacyListController *)self setContentRestrictionsSpecifier:lastObject3];

  if (_os_feature_enabled_impl())
  {
    v20 = [v6 localizedStringForKey:@"AADC_SiriAndIntelligenceRestrictionsSpecifierName" value:&stru_28766E5A8 table:v27];
    v21 = [(STContentPrivacyListController *)self _topLevelSpecifierWithAction:sel_showSiriAndIntelligenceRestrictions_ name:v20];
    [v21 setIdentifier:@"SIRI_AND_INTELLIGENCE_RESTRICTIONS"];
    [v4 addObject:v21];
    lastObject4 = [v4 lastObject];
    [lastObject4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v13];
  }

  _privacySpecifiers = [(STContentPrivacyListController *)self _privacySpecifiers];
  [v4 addObjectsFromArray:_privacySpecifiers];

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
  bOOLValue = [v11 BOOLValue];

  v39 = v10;
  v13 = [(STContentPrivacyListController *)self getItemSpecifierValue:v10];
  bOOLValue2 = [v13 BOOLValue];

  if (bOOLValue != bOOLValue2)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInt:bOOLValue & bOOLValue2];
    [(STContentPrivacyListController *)self setItemSpecifierValueForUIOnly:v15 specifier:v9];
  }

  [v3 addObject:v9];
  v16 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"application.store" key:@"allowAppRemoval"];
  [v3 addObject:v16];

  v17 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"application.store" key:@"allowInAppPurchases"];
  [v3 addObject:v17];

  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];

  v40 = v9;
  if ([viewModel isLocalDevice] && (v21 = MEMORY[0x277CF0300], objc_msgSend(MEMORY[0x277CB8F48], "ams_sharedAccountStore"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "ams_activeiTunesAccount"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "username"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "formattedUsernameFromUsername:", v24), v25 = objc_claimAutoreleasedReturnValue(), v24, v23, v22, v25))
  {
    v26 = [v5 localizedStringForKey:@"RequirePasswordDetailText" value:&stru_28766E5A8 table:v4];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:v26, v25];
  }

  else
  {
    v27 = [v5 localizedStringForKey:@"RequirePasswordNoUserDetailText" value:&stru_28766E5A8 table:v4];
  }

  v38 = v27;
  v28 = [viewModel visibleRestrictionWithConfiguration:@"application.store" key:@"forceITunesStorePasswordEntry"];
  v29 = [v5 localizedStringForKey:@"RequirePasswordLabel" value:&stru_28766E5A8 table:v4];
  v30 = [(STContentPrivacyListController *)self radioGroupSpecifierWithName:v29 footerText:v27 item:v28];
  [v3 addObject:v30];
  [v5 localizedStringForKey:@"AlwaysRequireSpecifierName" value:&stru_28766E5A8 table:v4];
  v32 = v31 = v4;
  [(STContentPrivacyListController *)self defaultRadioItemSpecifierWithGroup:v30 name:v32 value:MEMORY[0x277CBEC38]];
  v33 = v37 = viewModel;
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

  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];

  v41 = viewModel;
  if ([viewModel isLocalDevice] && (v23 = MEMORY[0x277CF0300], objc_msgSend(MEMORY[0x277CB8F48], "ams_sharedAccountStore"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "ams_activeiTunesAccount"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "username"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "formattedUsernameFromUsername:", v26), v27 = objc_claimAutoreleasedReturnValue(), v26, v25, v24, v27))
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

- (id)groupSpecifierWithConfiguration:(id)configuration key:(id)key footerText:(id)text radio:(BOOL)radio
{
  radioCopy = radio;
  textCopy = text;
  keyCopy = key;
  configurationCopy = configuration;
  v13 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v14 = +[STScreenTimeSettingsUIBundle bundle];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  v18 = [viewModel visibleRestrictionWithConfiguration:configurationCopy key:keyCopy];

  v19 = MEMORY[0x277D3FAD8];
  uiLabel = [v18 uiLabel];
  v21 = [v14 localizedStringForKey:uiLabel value:&stru_28766E5A8 table:v13];
  v22 = [v19 groupSpecifierWithName:v21];

  [v22 setObject:v18 forKeyedSubscript:0x287672648];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:radioCopy];
  [v22 setObject:v23 forKeyedSubscript:*MEMORY[0x277D3FFE8]];

  if (textCopy)
  {
    [v22 setObject:textCopy forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  return v22;
}

- (id)_privacySpecifiers
{
  v49 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v5 = +[STScreenTimeSettingsUIBundle bundle];
  v6 = [v5 localizedStringForKey:@"PrivacySpecifierName" value:&stru_28766E5A8 table:v4];
  v7 = [(STContentPrivacyListController *)self radioGroupSpecifierWithName:v6 footerText:0 item:0];
  [array addObject:v7];

  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];

  if ([viewModel isLocalDevice])
  {
    v11 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:0x287672628 key:0x287672768];
    [array addObject:v11];

    v12 = objc_opt_class();
    lastObject = [array lastObject];
    [lastObject setDetailControllerClass:v12];

    v14 = [(STContentPrivacyListController *)self tccSpecifierWithCapabilityKey:0x2876727A8 id:*MEMORY[0x277D401E0]];
    [array addObject:v14];

    v15 = [(STContentPrivacyListController *)self tccSpecifierWithCapabilityKey:0x2876727E8 id:*MEMORY[0x277D401D0]];
    [array addObject:v15];

    v16 = [(STContentPrivacyListController *)self tccSpecifierWithCapabilityKey:0x287672868 id:*MEMORY[0x277D40220]];
    [array addObject:v16];

    v17 = [(STContentPrivacyListController *)self tccSpecifierWithCapabilityKey:0x287672848 id:*MEMORY[0x277D40218]];
    [array addObject:v17];

    v18 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"system.icloud" key:@"allowFindMyFriendsModification"];
    [array addObject:v18];

    v19 = [(STContentPrivacyListController *)self tccSpecifierWithCapabilityKey:0x2876727C8 id:*MEMORY[0x277D401C8]];
    [array addObject:v19];

    v20 = [(STContentPrivacyListController *)self tccSpecifierWithCapabilityKey:0x287672828 id:*MEMORY[0x277D40200]];
    [array addObject:v20];

    v21 = [(STContentPrivacyListController *)self tccSpecifierWithCapabilityKey:0x287672888 id:*MEMORY[0x277D40228]];
    [array addObject:v21];

    v22 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:0x287672628 key:0x287672748];
    [array addObject:v22];

    v23 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"system.web.tracking" key:@"forceLimitAdTracking"];
    [array addObject:v23];

    v24 = objc_opt_class();
    lastObject2 = [array lastObject];
    [lastObject2 setDetailControllerClass:v24];

    lastObject3 = [array lastObject];
    [lastObject3 setObject:@"USER_TRACKING" forKeyedSubscript:*MEMORY[0x277D3FFB8]];

    [(STContentPrivacyListController *)self tccSpecifierWithCapabilityKey:0x287672808 id:*MEMORY[0x277D401F8]];
  }

  else
  {
    [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"system.icloud" key:@"allowFindMyFriendsModification"];
  }
  v27 = ;
  [array addObject:v27];

  coordinator2 = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator2 = [coordinator2 contentPrivacyCoordinator];
  areRestrictionsEditable = [contentPrivacyCoordinator2 areRestrictionsEditable];

  if ((areRestrictionsEditable & 1) == 0)
  {
    v43 = viewModel;
    v31 = v6;
    v32 = v5;
    v33 = v4;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v34 = array;
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
    viewModel = v43;
  }

  v41 = [array copy];

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
  lastObject = [v3 lastObject];
  [lastObject setObject:v10 forKeyedSubscript:*MEMORY[0x277D40118]];

  v12 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:0x2876725E8 key:0x2876726C8];
  [v3 addObject:v12];

  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  isLocalDevice = [viewModel isLocalDevice];

  if (isLocalDevice)
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
  lastObject2 = [v3 lastObject];
  v22 = *MEMORY[0x277D3FED0];
  [lastObject2 setObject:v20 forKeyedSubscript:*MEMORY[0x277D3FED0]];

  v23 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"system.tvprovider" key:@"allowTVProviderModification"];
  [v3 addObject:v23];

  v24 = [v5 localizedStringForKey:@"AADC_TVProviderSpecifierTitle" value:&stru_28766E5A8 table:v4];
  lastObject3 = [v3 lastObject];
  [lastObject3 setObject:v24 forKeyedSubscript:v22];

  v26 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:@"application.settings" key:@"allowAutomaticAppUpdatesModification"];
  [v3 addObject:v26];

  v27 = [v5 localizedStringForKey:@"AADC_BackgroundAppActivitiesSpecifierTitle" value:&stru_28766E5A8 table:v4];
  lastObject4 = [v3 lastObject];
  [lastObject4 setObject:v27 forKeyedSubscript:v22];

  coordinator2 = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator2 = [coordinator2 contentPrivacyCoordinator];
  LOBYTE(v22) = [contentPrivacyCoordinator2 areRestrictionsEditable];

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

- (void)_viewProfilesAndDeviceManagement:(id)management
{
  v3 = objc_alloc(MEMORY[0x277CBEBC0]);
  v5 = [v3 initWithString:*MEMORY[0x277D264C8]];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v5 withOptions:0];
}

- (void)showiTunesPurchasesRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  v7 = objc_opt_new();
  coordinator = [(STPINListViewController *)self coordinator];
  [v7 setCoordinator:coordinator];

  [v7 setContentPrivacyController:self];
  [v7 setParentController:self];
  rootController = [(STContentPrivacyListController *)self rootController];
  [v7 setRootController:rootController];

  [v7 setSpecifier:restrictionsCopy];
  [(STContentPrivacyListController *)self showController:v7 animate:1];
}

- (void)showAllowedAppsRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  v7 = objc_opt_new();
  coordinator = [(STPINListViewController *)self coordinator];
  [v7 setCoordinator:coordinator];

  [v7 setParentController:self];
  rootController = [(STContentPrivacyListController *)self rootController];
  [v7 setRootController:rootController];

  [v7 setSpecifier:restrictionsCopy];
  [(STContentPrivacyListController *)self showController:v7 animate:1];
}

- (void)showMediaRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  contentRestrictionsSpecifier = [(STContentPrivacyListController *)self contentRestrictionsSpecifier];
  [contentRestrictionsSpecifier st_startSpinner];

  isEligibleForAppDistribution = [(STContentPrivacyListController *)self isEligibleForAppDistribution];
  coordinator = [(STPINListViewController *)self coordinator];
  viewModel = [coordinator viewModel];
  v9 = [viewModel me];
  dsid = [v9 dsid];

  v11 = [objc_alloc(MEMORY[0x277D4BA48]) initWithUnrated:isEligibleForAppDistribution userDSID:dsid];
  v12 = MEMORY[0x277D4BA40];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__STContentPrivacyListController_showMediaRestrictions___block_invoke;
  v14[3] = &unk_279B7D310;
  v14[4] = self;
  v15 = restrictionsCopy;
  v13 = restrictionsCopy;
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

- (void)showSiriAndIntelligenceRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  v5 = [STContentPrivacySiriAndIntelligenceRestrictionsDetailController alloc];
  coordinator = [(STPINListViewController *)self coordinator];
  v8 = [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)v5 initWithRootViewModelCoordinator:coordinator];

  [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)v8 setParentController:self];
  rootController = [(STContentPrivacyListController *)self rootController];
  [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)v8 setRootController:rootController];

  [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)v8 setSpecifier:restrictionsCopy];
  [(STContentPrivacyListController *)self showController:v8 animate:1];
}

- (id)_buttonActionSpecifierWithAction:(SEL)action name:(id)name
{
  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:2 edit:0];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];

  if (![viewModel restrictionsEnabled] || (objc_msgSend(viewModel, "shouldAllowEditing") & 1) == 0)
  {
    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  }

  [v6 setButtonAction:action];

  return v6;
}

- (id)_topLevelSpecifierWithAction:(SEL)action name:(id)name
{
  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:2 edit:0];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];

  if (![viewModel restrictionsEnabled] || (objc_msgSend(viewModel, "shouldAllowEditing") & 1) == 0)
  {
    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  }

  [v6 setControllerLoadAction:action];

  return v6;
}

- (id)getRestrictionsEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  v7 = [v3 numberWithBool:{objc_msgSend(viewModel, "restrictionsEnabled")}];

  return v7;
}

- (void)setRestrictionsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  coordinator = [(STPINListViewController *)self coordinator];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__STContentPrivacyListController_setRestrictionsEnabled_specifier___block_invoke;
  aBlock[3] = &unk_279B7CC18;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  if ([coordinator isPasscodeEnabled] && (objc_msgSend(coordinator, "hasAlreadyEnteredPINForSession") & 1) == 0)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__STContentPrivacyListController_setRestrictionsEnabled_specifier___block_invoke_315;
    v11[3] = &unk_279B7D338;
    v12 = coordinator;
    v13 = enabledCopy;
    selfCopy = self;
    v15 = v9;
    [(STPINListViewController *)self showPINSheet:specifierCopy completion:v11];

    contentPrivacyCoordinator = v12;
  }

  else
  {
    contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
    [contentPrivacyCoordinator saveContentPrivacyEnabled:objc_msgSend(enabledCopy completionHandler:{"BOOLValue"), v9}];
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

- (id)getItemSpecifierValue:(id)value
{
  v4 = [value objectForKeyedSubscript:0x287672648];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];

  valuesByRestriction = [viewModel valuesByRestriction];
  v9 = [valuesByRestriction objectForKeyedSubscript:v4];

  v10 = [viewModel defaultValueForRestriction:v4];
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

- (void)setItemSpecifierValueForUIOnly:(id)only specifier:(id)specifier
{
  onlyCopy = only;
  v11 = [specifier objectForKeyedSubscript:0x287672648];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];

  valuesByRestriction = [viewModel valuesByRestriction];
  [valuesByRestriction setObject:onlyCopy forKeyedSubscript:v11];
}

- (void)setItemSpecifierValue:(id)value specifier:(id)specifier
{
  specifierCopy = specifier;
  valueCopy = value;
  v8 = [specifierCopy objectForKeyedSubscript:0x287672648];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__STContentPrivacyListController_setItemSpecifierValue_specifier___block_invoke;
  v13[3] = &unk_279B7D360;
  v14 = v8;
  selfCopy = self;
  v16 = specifierCopy;
  v11 = specifierCopy;
  v12 = v8;
  [contentPrivacyCoordinator saveRestrictionValue:valueCopy forItem:v12 completionHandler:v13];
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

- (id)defaultRadioItemSpecifierWithGroup:(id)group name:(id)name value:(id)value
{
  groupCopy = group;
  valueCopy = value;
  v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:3 edit:0];
  v11 = [groupCopy objectForKeyedSubscript:0x287672648];
  [v10 setEditPaneClass:{+[STDevicePINFactory devicePINPaneForPlatform](STDevicePINFactory, "devicePINPaneForPlatform")}];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [v10 setObject:v13 forKeyedSubscript:*MEMORY[0x277D400B8]];

  [v10 setObject:&unk_28769D0E8 forKeyedSubscript:*MEMORY[0x277D401C0]];
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
  coordinator = [(STPINListViewController *)self coordinator];
  [v10 setObject:coordinator forKeyedSubscript:0x287675C48];

  [v10 setObject:v11 forKeyedSubscript:0x287672648];
  [v10 setObject:valueCopy forKeyedSubscript:*MEMORY[0x277D401A8]];
  coordinator2 = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator2 contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];

  if (![viewModel restrictionsEnabled] || (objc_msgSend(viewModel, "shouldAllowEditing") & 1) == 0)
  {
    [v10 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  }

  v18 = [(STContentPrivacyListController *)self getItemSpecifierValue:v10];
  if ([valueCopy isEqualToNumber:v18])
  {
    [groupCopy setObject:v10 forKeyedSubscript:*MEMORY[0x277D40090]];
  }

  return v10;
}

- (id)defaultLinkListSpecifierWithItem:(id)item
{
  v26[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v6 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  uiLabel = [itemCopy uiLabel];
  v9 = [v7 localizedStringForKey:uiLabel value:&stru_28766E5A8 table:v6];

  v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v9 target:self set:sel_setItemSpecifierValue_specifier_ get:sel_getItemSpecifierValue_ detail:objc_opt_class() cell:2 edit:0];
  coordinator = [(STPINListViewController *)self coordinator];
  [v10 setObject:coordinator forKeyedSubscript:0x287675C48];

  restrictionType = [itemCopy restrictionType];
  if (restrictionType == 1)
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
    v13 = restrictionType;
    if (restrictionType)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"STContentPrivacyListController.m" lineNumber:775 description:{@"Unimplemented type %d", v13}];

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

  [v10 setObject:itemCopy forKeyedSubscript:0x287672648];
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
  [v10 setValues:v17 titles:v16];
  coordinator2 = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator2 contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];

  if (![viewModel restrictionsEnabled] || (objc_msgSend(viewModel, "shouldAllowEditing") & 1) == 0)
  {
    [v10 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  }

  return v10;
}

- (id)defaultLinkListSpecifierWithConfiguration:(id)configuration key:(id)key
{
  keyCopy = key;
  configurationCopy = configuration;
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  v11 = [viewModel visibleRestrictionWithConfiguration:configurationCopy key:keyCopy];

  v12 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithItem:v11];

  return v12;
}

- (id)tccSpecifierWithCapabilityKey:(id)key id:(id)id
{
  keyCopy = key;
  idCopy = id;
  v8 = [(STContentPrivacyListController *)self defaultLinkListSpecifierWithConfiguration:0x287672628 key:keyCopy];
  if ([keyCopy isEqualToString:0x287672848])
  {
    v9 = sel__showPhotosDetailControllerWithAuthentication_;
LABEL_5:
    [v8 setButtonAction:v9];
    goto LABEL_9;
  }

  if ([keyCopy isEqualToString:0x2876727E8])
  {
    v9 = sel__showCalendarDetailControllerWithAuthentication_;
    goto LABEL_5;
  }

  if ([keyCopy isEqualToString:0x2876727A8])
  {
    _os_feature_enabled_impl();
  }

  [v8 setDetailControllerClass:objc_opt_class()];
LABEL_9:
  [v8 setObject:keyCopy forKeyedSubscript:@"capability"];
  [v8 setObject:idCopy forKeyedSubscript:*MEMORY[0x277D3FFB8]];

  return v8;
}

- (void)_showPhotosDetailControllerWithAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  [(STContentPrivacyListController *)self _showDetailControllerWithAuthenticationForBundleID:@"com.apple.mobileslideshow" detailControllerClass:objc_opt_class() specifier:authenticationCopy];
}

- (void)_showCalendarDetailControllerWithAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  [(STContentPrivacyListController *)self _showDetailControllerWithAuthenticationForBundleID:@"com.apple.mobilecal" detailControllerClass:objc_opt_class() specifier:authenticationCopy];
}

- (void)_showDetailControllerWithAuthenticationForBundleID:(id)d detailControllerClass:(Class)class specifier:(id)specifier
{
  dCopy = d;
  specifierCopy = specifier;
  v11 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:dCopy];
  mEMORY[0x277CEBE98] = [MEMORY[0x277CEBE98] sharedGuard];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __117__STContentPrivacyListController__showDetailControllerWithAuthenticationForBundleID_detailControllerClass_specifier___block_invoke;
  v15[3] = &unk_279B7D3B0;
  classCopy = class;
  v20 = a2;
  v16 = specifierCopy;
  selfCopy = self;
  v18 = dCopy;
  v13 = dCopy;
  v14 = specifierCopy;
  [mEMORY[0x277CEBE98] authenticateForSubject:v11 completion:v15];
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

- (id)radioGroupSpecifierWithName:(id)name footerText:(id)text item:(id)item
{
  textCopy = text;
  itemCopy = item;
  v9 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:name];
  [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FFE8]];
  if (textCopy)
  {
    [v9 setObject:textCopy forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  if (itemCopy)
  {
    [v9 setObject:itemCopy forKeyedSubscript:0x287672648];
  }

  return v9;
}

- (void)dealloc
{
  coordinator = [(STPINListViewController *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.isLoaded" context:@"KVOContextContentPrivacyListController"];

  v4.receiver = self;
  v4.super_class = STContentPrivacyListController;
  [(STListViewController *)&v4 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STPINListViewController *)self coordinator];
  v6 = coordinator;
  if (coordinator == coordinatorCopy)
  {
    v7.receiver = self;
    v7.super_class = STContentPrivacyListController;
    [(STPINListViewController *)&v7 setCoordinator:coordinatorCopy];
  }

  else
  {
    [coordinator removeObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.isLoaded" context:@"KVOContextContentPrivacyListController"];
    v7.receiver = self;
    v7.super_class = STContentPrivacyListController;
    [(STPINListViewController *)&v7 setCoordinator:coordinatorCopy];
    [coordinatorCopy addObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.isLoaded" options:1 context:@"KVOContextContentPrivacyListController"];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (context == @"KVOContextContentPrivacyListController")
  {
    pathCopy = path;
    [(STPINListViewController *)self coordinator];

    v13 = [pathCopy isEqualToString:@"contentPrivacyCoordinator.viewModel.isLoaded"];
    if (v13)
    {
      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null = [MEMORY[0x277CBEB68] null];

      if (v14 == null)
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
    pathCopy2 = path;
    [(STListViewController *)&v16 observeValueForKeyPath:pathCopy2 ofObject:object change:changeCopy context:context];
  }
}

- (void)_isLoadedDidChange:(BOOL)change
{
  if (change)
  {
    [(STContentPrivacyListController *)self reloadSpecifiers];
    specifierIDPendingPush = [(STContentPrivacyListController *)self specifierIDPendingPush];
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

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = [lCopy objectForKey:@"path"];
  v9 = [@"CONTENT_RESTRICTIONS/APP_RATING" isEqualToString:v8];

  if (v9)
  {
    [(STContentPrivacyListController *)self setContentRestrictionAdditionalURL:@"APP_RATING"];
  }

  v10.receiver = self;
  v10.super_class = STContentPrivacyListController;
  [(STContentPrivacyListController *)&v10 handleURL:lCopy withCompletion:completionCopy];
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