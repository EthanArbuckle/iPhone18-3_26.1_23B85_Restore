@interface ICSDataclassDetailSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (BOOL)_shouldShowDriveGroupSpecifiers;
- (BOOL)_supportsCellular;
- (BOOL)isDataclassLDMDisabled;
- (Class)_cloudMessageDetailControllerClass;
- (ICSDataclassDetailSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4;
- (NSArray)specifiers;
- (id)_cellularDataGroupSpecifiers;
- (id)_fetchNumberOfAppsSyncingToDrive:(id)a3;
- (id)_fetchStorageUsed:(id)a3;
- (id)_headerGroupSpecifiers;
- (id)_iconForDataclass:(id)a3;
- (id)_loadHealthSpecifierProvider;
- (id)_specifierAttributedLink;
- (id)_specifierForHealth;
- (id)_specifierSubTitle;
- (id)_specifierSwitchState:(id)a3;
- (id)_specifierTitle;
- (id)_storageUsedGroupSpecifiers;
- (id)_switchSpecifierWithTitle:(id)a3;
- (id)_syncingToDriveGroupSpecifiers;
- (id)_toggleValue:(id)a3;
- (id)account;
- (id)loadSpecifierProviderWithClassName:(id)a3 inBundle:(id)a4;
- (id)ubiquityProviderGetAccountOperationsHelper;
- (void)_fetchStorageUsedAndRefreshSpecifier;
- (void)_pushCellularSettingsView:(id)a3;
- (void)_setValue:(id)a3 forSpecifier:(id)a4;
- (void)_setupAppsSyncingToDriveSpecifier:(id)a3;
- (void)_setupStorageUsedSpecifier:(id)a3;
- (void)_storageUsedWasTapped:(id)a3;
- (void)dealloc;
- (void)presenterWillDisappear;
- (void)setDataclass:(id)a3;
- (void)setSpecifiers:(id)a3;
- (void)ubiquityProviderShowViewController:(id)a3;
@end

@implementation ICSDataclassDetailSpecifierProvider

- (ICSDataclassDetailSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = ICSDataclassDetailSpecifierProvider;
  v9 = [(ICSDataclassDetailSpecifierProvider *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, a3);
    objc_storeWeak(&v10->_presenter, v8);
    *&v10->_isStorageUsedRequestInProgress = 0xFFFFFFFF00000000;
    v11 = [_TtC14iCloudSettings22ICSAnalyticsController alloc];
    v12 = [v7 accounts];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];
    v14 = [(ICSAnalyticsController *)v11 initWithAccount:v13];
    analyticsController = v10->_analyticsController;
    v10->_analyticsController = v14;

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v10 selector:sel__fetchStorageUsedAndRefreshSpecifier name:*MEMORY[0x277D7F2C0] object:0];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICSDataclassDetailSpecifierProvider;
  [(ICSDataclassDetailSpecifierProvider *)&v4 dealloc];
}

- (void)setDataclass:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_dataclass, a3);
  if ([(NSString *)self->_dataclass isEqualToString:*MEMORY[0x277CB89A0]])
  {
    v5 = [(ICSDataclassDetailSpecifierProvider *)self _loadHealthSpecifierProvider];
    healthSpecifierProvider = self->_healthSpecifierProvider;
    self->_healthSpecifierProvider = v5;
  }
}

- (id)account
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (void)setSpecifiers:(id)a3
{
  v4 = a3;
  appCloudStorage = self->_appCloudStorage;
  self->_appCloudStorage = 0;

  specifiers = self->_specifiers;
  self->_specifiers = v4;
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    if (self->_dataclass)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v5 = [(ICSDataclassDetailSpecifierProvider *)self _headerGroupSpecifiers];
      [v4 addObjectsFromArray:v5];

      v6 = [(ICSDataclassDetailSpecifierProvider *)self _storageUsedGroupSpecifiers];
      [v4 addObjectsFromArray:v6];

      if ([(NSString *)self->_dataclass isEqualToString:*MEMORY[0x277CB8A58]])
      {
        v7 = [(ICSDataclassDetailSpecifierProvider *)self account];
        v8 = [v7 isEnabledForDataclass:self->_dataclass];

        if (v8)
        {
          v9 = [(ICSDataclassDetailSpecifierProvider *)self _syncingToDriveGroupSpecifiers];
          [v4 addObjectsFromArray:v9];

          v10 = [(ICSDataclassDetailSpecifierProvider *)self _cellularDataGroupSpecifiers];
          [v4 addObjectsFromArray:v10];
        }
      }

      v11 = [v4 copy];
      v12 = self->_specifiers;
      self->_specifiers = v11;

      specifiers = self->_specifiers;
    }

    else
    {
      specifiers = 0;
    }
  }

  return specifiers;
}

- (void)presenterWillDisappear
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = LogSubsystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ICSDataclassDetailSpecifierProvider presenterWillDisappear]";
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  manageStorageController = self->_manageStorageController;
  if (manageStorageController)
  {
    [(ICSManageStorageDrilldownController *)manageStorageController cancelLoading];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_headerGroupSpecifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DATACLASS_HEADER_GROUP"];
  [v3 addObject:v4];

  v5 = MEMORY[0x277D3FAD8];
  v6 = [(ICSDataclassDetailSpecifierProvider *)self _specifierTitle];
  v7 = [v5 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:-1 edit:0];

  v8 = [MEMORY[0x277D75C80] currentTraitCollection];
  v9 = [v8 pe_isSettingsFeatureDescriptionCellSupported];

  if (!v9)
  {
    [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    v15 = [(ICSDataclassDetailSpecifierProvider *)self _specifierTitle];
    [v7 setProperty:v15 forKey:*MEMORY[0x277D40170]];

    v16 = [(ICSDataclassDetailSpecifierProvider *)self _specifierSubTitle];
    [v7 setProperty:v16 forKey:*MEMORY[0x277D40160]];

    v17 = [(ICSDataclassDetailSpecifierProvider *)self _specifierAttributedLink];
    [v7 setProperty:v17 forKey:@"AAUIDataclassAttributedLink"];

    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"LEARN_MORE" value:&stru_288487370 table:@"Localizable-AppleID"];
    [v7 setObject:v19 forKeyedSubscript:@"AAUIDataclassAttributedLinkText"];

    [v7 setProperty:&unk_28849FD28 forKey:*MEMORY[0x277D3FD78]];
    v10 = [(ICSDataclassDetailSpecifierProvider *)self _iconForDataclass:self->_dataclass];
    [v7 setProperty:v10 forKey:*MEMORY[0x277D3FFC0]];
    goto LABEL_9;
  }

  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v10 = [MEMORY[0x277D3FAD8] acui_typedIconIdentifierForDataclass:self->_dataclass];
  v11 = [MEMORY[0x277D3FAD8] acui_applicationBundleIdentifierForDataclass:self->_dataclass];
  v12 = v11;
  if (v11)
  {
    v13 = MEMORY[0x277D40008];
    v14 = v11;
LABEL_7:
    [v7 setProperty:v14 forKey:*v13];
    goto LABEL_8;
  }

  if (v10)
  {
    v13 = MEMORY[0x277D3FFD8];
    v14 = v10;
    goto LABEL_7;
  }

LABEL_8:
  v20 = [(ICSDataclassDetailSpecifierProvider *)self _specifierSubTitle];
  v21 = [(ICSDataclassDetailSpecifierProvider *)self _specifierAttributedLink];
  v22 = MEMORY[0x277CCACA8];
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"LEARN_MORE_PLACARD" value:&stru_288487370 table:@"Localizable-iCloud"];
  v25 = [v22 stringWithFormat:@"[%@](%@)", v24, v21];

  v26 = [MEMORY[0x277CCACA8] stringWithFormat:v20, v25];
  [v7 setProperty:v26 forKey:*MEMORY[0x277D40160]];

LABEL_9:
  [v3 addObject:v7];
  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v28 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"DATACLASS_CELL_TITLE"];
  v29 = [v27 localizedStringForKey:v28 value:&stru_288487370 table:@"Localizable-AppleID"];

  if ([(NSString *)self->_dataclass isEqualToString:*MEMORY[0x277CB8A58]])
  {
    v30 = [[ICSUbiquitySpecifierProvider alloc] initWithAccountManager:self->_accountManager];
    ubiquitySpecifierProvider = self->_ubiquitySpecifierProvider;
    self->_ubiquitySpecifierProvider = v30;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [(ICSUbiquitySpecifierProvider *)self->_ubiquitySpecifierProvider setDelegate:WeakRetained];

    [(ICSUbiquitySpecifierProvider *)self->_ubiquitySpecifierProvider setUbiquityDelegate:self];
    v33 = [(ICSUbiquitySpecifierProvider *)self->_ubiquitySpecifierProvider ubiquityDataclassSwitchSpecifier];
    if (!v33)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v34 = *MEMORY[0x277CB89A0];
  if ([(NSString *)self->_dataclass isEqualToString:*MEMORY[0x277CB89A0]])
  {
    v33 = [(ICSDataclassDetailSpecifierProvider *)self _specifierForHealth];
    [v33 setName:v29];
    if (!v33)
    {
LABEL_14:
      v34 = *MEMORY[0x277CB89A0];
      goto LABEL_15;
    }

LABEL_17:
    [v33 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
    [v3 addObject:v33];

    goto LABEL_18;
  }

LABEL_15:
  if (![(NSString *)self->_dataclass isEqualToString:v34])
  {
    v33 = [(ICSDataclassDetailSpecifierProvider *)self _switchSpecifierWithTitle:v29];
    if (v33)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  v35 = [v3 copy];

  return v35;
}

- (id)_switchSpecifierWithTitle:(id)a3
{
  v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:a3 target:self set:sel__setValue_forSpecifier_ get:sel__toggleValue_ detail:0 cell:6 edit:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICSDataclassDetailSpecifierProvider isDataclassLDMDisabled](self, "isDataclassLDMDisabled") ^ 1}];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [v4 setObject:self->_dataclass forKeyedSubscript:*MEMORY[0x277D3FFB8]];
  [v4 setObject:self->_dataclass forKeyedSubscript:@"com.apple.accountsui.dataclass"];

  return v4;
}

- (BOOL)isDataclassLDMDisabled
{
  v3 = [MEMORY[0x277D243A8] shared];
  v4 = [v3 enabled];

  return v4 && [(NSString *)self->_dataclass isEqualToString:*MEMORY[0x277CB9160]];
}

- (id)_iconForDataclass:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D3FAD8] acui_typedIconIdentifierForDataclass:v3];
  if (v4)
  {
    v5 = [ICSDefaultIconLoader graphicIconWithIdentifier:v4 size:120.0, 120.0];
  }

  else
  {
    v6 = [MEMORY[0x277D3FAD8] acui_applicationBundleIdentifierForDataclass:v3];
    if (v6)
    {
      v7 = [ICSDefaultIconLoader iconWithBundleId:v6 size:120.0, 120.0];
    }

    else
    {
      v8 = LogSubsystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ICSDataclassDetailSpecifierProvider *)v3 _iconForDataclass:v8];
      }

      v7 = objc_alloc_init(MEMORY[0x277D755B8]);
    }

    v5 = v7;
  }

  return v5;
}

- (id)_storageUsedGroupSpecifiers
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"STORAGE_USED" value:&stru_288487370 table:@"Localizable-AppleID"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:sel__fetchStorageUsed_ detail:0 cell:-1 edit:0];

  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  [(ICSDataclassDetailSpecifierProvider *)self _setupStorageUsedSpecifier:v6];
  v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DATACLASS_STORAGE_USED_GROUP"];
  v11[0] = v7;
  v11[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_setupStorageUsedSpecifier:(id)a3
{
  v4 = a3;
  appCloudStorage = self->_appCloudStorage;
  if (appCloudStorage)
  {
    v6 = [(ICQAppCloudStorage *)appCloudStorage storageUsed];
    v7 = [v6 longLongValue];

    if (v7 < 1)
    {
      [v4 setCellType:4];
      [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
      [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FEA8]];
    }

    else
    {
      [v4 setCellType:2];
      [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
      [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FEA8]];
      if ([(NSString *)self->_dataclass isEqualToString:*MEMORY[0x277CB89D8]])
      {
        [v4 setDetailControllerClass:{-[ICSDataclassDetailSpecifierProvider _cloudMessageDetailControllerClass](self, "_cloudMessageDetailControllerClass")}];
      }

      else
      {
        if ([(NSString *)self->_dataclass isEqualToString:*MEMORY[0x277CB89A0]])
        {
          v12 = 0;
          v13 = &v12;
          v14 = 0x2050000000;
          v9 = getHKHealthManageStorageViewControllerClass_softClass;
          v15 = getHKHealthManageStorageViewControllerClass_softClass;
          if (!getHKHealthManageStorageViewControllerClass_softClass)
          {
            v11[0] = MEMORY[0x277D85DD0];
            v11[1] = 3221225472;
            v11[2] = __getHKHealthManageStorageViewControllerClass_block_invoke;
            v11[3] = &unk_27A6664B0;
            v11[4] = &v12;
            __getHKHealthManageStorageViewControllerClass_block_invoke(v11);
            v9 = v13[3];
          }

          v10 = v9;
          _Block_object_dispose(&v12, 8);
          [v4 setDetailControllerClass:v9];
        }

        [v4 setButtonAction:sel__storageUsedWasTapped_];
      }
    }
  }

  else
  {
    [v4 setCellType:2];
    [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:!self->_storageUsedRequestDidError];
    [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277D3FEA8]];
  }
}

- (void)_setupAppsSyncingToDriveSpecifier:(id)a3
{
  v4 = a3;
  numberOfAppsSyncingToDrive = self->_numberOfAppsSyncingToDrive;
  v8 = v4;
  if (numberOfAppsSyncingToDrive < 1)
  {
    v6 = *MEMORY[0x277D3FF38];
    if (numberOfAppsSyncingToDrive)
    {
      [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v6];
      [v8 setCellType:2];
      v7 = [MEMORY[0x277CCABB0] numberWithInt:!self->_appsSyncingToDriveRequestDidError];
      [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FEA8]];
    }

    else
    {
      [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v6];
      [v8 setCellType:4];
      [v8 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FEA8]];
      [v8 setDetailControllerClass:0];
    }
  }

  else
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    [v8 setCellType:2];
    [v8 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FEA8]];
  }
}

- (id)_syncingToDriveGroupSpecifiers
{
  v11[2] = *MEMORY[0x277D85DE8];
  if ([(ICSDataclassDetailSpecifierProvider *)self _shouldShowDriveGroupSpecifiers])
  {
    v3 = MEMORY[0x277D3FAD8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"APPS_SYNCING_TO_DRIVE_SPECIFIER_NAME" value:&stru_288487370 table:@"Localizable-AppleID"];
    v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:sel__fetchNumberOfAppsSyncingToDrive_ detail:objc_opt_class() cell:2 edit:0];

    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    [(ICSDataclassDetailSpecifierProvider *)self _setupAppsSyncingToDriveSpecifier:v6];
    [v6 setObject:self->_accountManager forKeyedSubscript:@"icloudAccountManager"];
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DATACLASS_DRIVE_GROUP"];
    v11[0] = v7;
    v11[1] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_shouldShowDriveGroupSpecifiers
{
  v3 = [(AIDAAccountManager *)self->_accountManager accounts];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  v5 = [MEMORY[0x277CEC7A0] sharedManager];
  if ([v5 shouldShowDataclass:self->_dataclass forAccount:v4])
  {
    v6 = [v4 aa_isAccountClass:*MEMORY[0x277CEC688]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_cellularDataGroupSpecifiers
{
  v15[2] = *MEMORY[0x277D85DE8];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v6 = LogSubsystem();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v11 = "Drive Cellular feature flag disabled";
LABEL_11:
    _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
    goto LABEL_12;
  }

  if (![(ICSDataclassDetailSpecifierProvider *)self _supportsCellular])
  {
    v6 = LogSubsystem();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v11 = "Device does not support cellular, hiding cellular data group specifier";
    goto LABEL_11;
  }

  if ([(ICSDataclassDetailSpecifierProvider *)self _shouldShowDriveGroupSpecifiers])
  {
    v3 = MEMORY[0x277D3FAD8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"DRIVE_CELLULAR_LINK_SPECIFIER_NAME" value:&stru_288487370 table:@"Localizable-AppleID"];
    v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:2 edit:0];

    [v6 setButtonAction:sel__pushCellularSettingsView_];
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DATACLASS_CELLULAR_GROUP"];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"DRIVE_CELLULAR_LINK_SPECIFIER_FOOTER" value:&stru_288487370 table:@"Localizable-AppleID"];
    [v7 setProperty:v9 forKey:*MEMORY[0x277D3FF88]];

    v15[0] = v7;
    v15[1] = v6;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

    goto LABEL_13;
  }

  v6 = LogSubsystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v11 = "Account is not primary, skipping cellular data group specifier";
    goto LABEL_11;
  }

LABEL_12:
  v10 = MEMORY[0x277CBEBF8];
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_pushCellularSettingsView:(id)a3
{
  v4 = LogSubsystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Pushing cellular settings view", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__ICSDataclassDetailSpecifierProvider__pushCellularSettingsView___block_invoke;
    block[3] = &unk_27A666198;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v6 = LogSubsystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICSDataclassDetailSpecifierProvider _pushCellularSettingsView:v6];
    }
  }
}

void __65__ICSDataclassDetailSpecifierProvider__pushCellularSettingsView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [ICSDriveCellularViewPresenter presentFrom:WeakRetained accountManager:*(*(a1 + 32) + 8)];
}

- (BOOL)_supportsCellular
{
  v2 = [MEMORY[0x277CEC7B8] currentInfo];
  v3 = [v2 hasCellularCapability];

  return v3;
}

- (id)_toggleValue:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) != 0 && (v7 = objc_loadWeakRetained(&self->_delegate), v8 = [v7 specifierProvider:self isDataclassAvailableForSpecifier:v4], v7, v8))
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = [(ICSDataclassDetailSpecifierProvider *)self account];
    v11 = [v9 numberWithBool:{objc_msgSend(v10, "isEnabledForDataclass:", self->_dataclass)}];
  }

  else
  {
    v11 = MEMORY[0x277CBEC28];
  }

  return v11;
}

- (id)_specifierTitle
{
  v2 = [ICSDataclassHelper localizedTitleForDataclass:self->_dataclass];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v5 localizedStringForKey:@"UNDEFINED_DATACLASS" value:&stru_288487370 table:@"Localizable-AppleID"];
  }

  return v4;
}

- (id)_specifierSubTitle
{
  v3 = [(ICSDataclassDetailSpecifierProvider *)self account];
  v4 = [v3 ams_securityLevel];

  dataclass = self->_dataclass;
  v6 = [(ICSDataclassDetailSpecifierProvider *)self account];
  v7 = [ICSDataclassHelper localizedSubTitleForDataclass:dataclass idmsAccount:v6 securityLevel:v4];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"UNDEFINED_DATACLASS" value:&stru_288487370 table:@"Localizable-AppleID"];
  }

  return v8;
}

- (id)_specifierAttributedLink
{
  v2 = [ICSDataclassHelper attributedLinkForDataclass:self->_dataclass];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v5 localizedStringForKey:@"UNDEFINED_DATACLASS" value:&stru_288487370 table:@"Localizable-AppleID"];
  }

  return v4;
}

- (id)_fetchNumberOfAppsSyncingToDrive:(id)a3
{
  v4 = a3;
  if (self->_appsSyncingToDrive)
  {
    v5 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%d", self->_numberOfAppsSyncingToDrive];
  }

  else
  {
    if (!self->_isAppsSyncingToDriveRequestInProgress && !self->_appsSyncingToDriveRequestDidError)
    {
      self->_isAppsSyncingToDriveRequestInProgress = 1;
      v6 = objc_alloc(MEMORY[0x277D7F338]);
      v7 = [(ICSDataclassDetailSpecifierProvider *)self account];
      v8 = [v6 initWithAccount:v7];

      [v8 setShouldIgnoreCache:1];
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __72__ICSDataclassDetailSpecifierProvider__fetchNumberOfAppsSyncingToDrive___block_invoke;
      v14[3] = &unk_27A666438;
      v14[4] = self;
      v15 = v9;
      v16 = v10;
      v17 = v4;
      v11 = v10;
      v12 = v9;
      [v8 fetchAppsSyncingToiCloudDriveWithCompletion:v14];
    }

    v5 = 0;
  }

  return v5;
}

void __72__ICSDataclassDetailSpecifierProvider__fetchNumberOfAppsSyncingToDrive___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  *(*(a1 + 32) + 65) = 0;
  if (v7)
  {
    *(*(a1 + 32) + 67) = 1;
  }

  else if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 32), a2);
    v8 = [v6 apps];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__ICSDataclassDetailSpecifierProvider__fetchNumberOfAppsSyncingToDrive___block_invoke_2;
    v13[3] = &unk_27A666148;
    v14 = *(a1 + 40);
    [v8 enumerateObjectsUsingBlock:v13];

    v9 = *(a1 + 48);
    v10 = [*(*(a1 + 32) + 48) appsUsingUbiquity];
    [v9 addObjectsFromArray:v10];

    [*(a1 + 48) intersectSet:*(a1 + 40)];
    *(*(a1 + 32) + 68) = [*(a1 + 48) count];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ICSDataclassDetailSpecifierProvider__fetchNumberOfAppsSyncingToDrive___block_invoke_3;
  block[3] = &unk_27A666410;
  block[4] = *(a1 + 32);
  v12 = *(a1 + 56);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __72__ICSDataclassDetailSpecifierProvider__fetchNumberOfAppsSyncingToDrive___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 containerID];
  [v3 addObject:v5];

  v6 = *(a1 + 32);
  v7 = [v4 bundleIds];

  [v6 addObjectsFromArray:v7];
}

void __72__ICSDataclassDetailSpecifierProvider__fetchNumberOfAppsSyncingToDrive___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _setupAppsSyncingToDriveSpecifier:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained reloadSpecifierForProvider:*(a1 + 32) identifier:@"DATACLASS_DRIVE_GROUP"];
}

- (id)_fetchStorageUsed:(id)a3
{
  v4 = a3;
  appCloudStorage = self->_appCloudStorage;
  if (appCloudStorage)
  {
    v6 = [(ICQAppCloudStorage *)appCloudStorage storageUsed];
    [v6 longLongValue];

    v7 = NSLocalizedFileSizeDescription();
  }

  else
  {
    if (!self->_isStorageUsedRequestInProgress && !self->_storageUsedRequestDidError)
    {
      self->_isStorageUsedRequestInProgress = 1;
      self->_storageUsedRequestDidError = 0;
      v8 = objc_alloc(MEMORY[0x277D7F338]);
      v9 = [(ICSDataclassDetailSpecifierProvider *)self account];
      v10 = [v8 initWithAccount:v9];

      [v10 setShouldIgnoreCache:1];
      v11 = [MEMORY[0x277CEC7A0] sharedManager];
      v12 = [v11 appBundleIdentifierForDataclass:self->_dataclass];

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __57__ICSDataclassDetailSpecifierProvider__fetchStorageUsed___block_invoke;
      v14[3] = &unk_27A666460;
      v14[4] = self;
      v15 = v4;
      [v10 fetchStorageByApp:v12 completion:v14];
    }

    v7 = 0;
  }

  return v7;
}

void __57__ICSDataclassDetailSpecifierProvider__fetchStorageUsed___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = LogSubsystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __57__ICSDataclassDetailSpecifierProvider__fetchStorageUsed___block_invoke_cold_1(v6, v7, v8);
  }

  *(*(a1 + 32) + 64) = 0;
  v9 = *(a1 + 32);
  if (v7)
  {
    *(v9 + 66) = 1;
  }

  else
  {
    objc_storeStrong((v9 + 24), a2);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__ICSDataclassDetailSpecifierProvider__fetchStorageUsed___block_invoke_152;
  v11[3] = &unk_27A666410;
  v10 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v10;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __57__ICSDataclassDetailSpecifierProvider__fetchStorageUsed___block_invoke_152(uint64_t a1)
{
  [*(a1 + 32) _setupStorageUsedSpecifier:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained reloadSpecifierForProvider:*(a1 + 32) identifier:@"DATACLASS_STORAGE_USED_GROUP"];
}

- (void)_fetchStorageUsedAndRefreshSpecifier
{
  v3 = LogSubsystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "_fetchStorageUsedAndRefreshSpecifier", v8, 2u);
  }

  specifiers = self->_specifiers;
  if (specifiers)
  {
    v5 = [(NSArray *)specifiers specifierForID:@"DATACLASS_STORAGE_USED_GROUP"];
    if (v5)
    {
      appCloudStorage = self->_appCloudStorage;
      self->_appCloudStorage = 0;

      v7 = [(ICSDataclassDetailSpecifierProvider *)self _fetchStorageUsed:v5];
    }
  }
}

- (void)_setValue:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3FFB8]];
  v9 = [v8 isEqualToString:*MEMORY[0x277CB89A0]];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = WeakRetained;
  if (v9)
  {
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __62__ICSDataclassDetailSpecifierProvider__setValue_forSpecifier___block_invoke;
      v17 = &unk_27A666488;
      v18 = v7;
      v19 = v6;
      [v13 validateDataclassAccessForProvider:self specifier:v18 completion:&v14];
    }
  }

  else
  {
    [WeakRetained specifierProvider:self dataclassSwitchStateDidChange:v6 withSpecifier:v7];
  }

  -[ICSAnalyticsController sendToggleEventForDataclassID:actionType:enabled:](self->_analyticsController, "sendToggleEventForDataclassID:actionType:enabled:", v8, 0, [v6 BOOLValue]);
}

uint64_t __62__ICSDataclassDetailSpecifierProvider__setValue_forSpecifier___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) ics_performSuperSetterWithValue:*(result + 40)];
  }

  return result;
}

- (void)_storageUsedWasTapped:(id)a3
{
  v4 = a3;
  manageStorageController = self->_manageStorageController;
  v13 = v4;
  if (!manageStorageController)
  {
    v6 = [MEMORY[0x277CEC7A0] sharedManager];
    v7 = [v6 appBundleIdentifierForDataclass:self->_dataclass];

    v8 = [ICSManageStorageDrilldownController alloc];
    v9 = [(ICSDataclassDetailSpecifierProvider *)self account];
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    v11 = [(ICSManageStorageDrilldownController *)v8 initWithAppBundleID:v7 account:v9 presentingController:WeakRetained];
    v12 = self->_manageStorageController;
    self->_manageStorageController = v11;

    v4 = v13;
    manageStorageController = self->_manageStorageController;
  }

  [(ICSManageStorageDrilldownController *)manageStorageController beginLoadingForSpecifier:v4];
}

- (id)_specifierForHealth
{
  v3 = [(AAUISpecifierProvider *)self->_healthSpecifierProvider specifiers];
  v4 = [v3 firstObject];

  [v4 ics_overrideAccessorsWithTarget:self getter:sel__specifierSwitchState_ setter:sel__setValue_forSpecifier_];

  return v4;
}

- (id)_specifierSwitchState:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained specifierProvider:self isDataclassAvailableForSpecifier:v4])
  {
    v6 = [v4 ics_performSuperGetter];
  }

  else
  {
    v6 = MEMORY[0x277CBEC28];
  }

  return v6;
}

- (id)_loadHealthSpecifierProvider
{
  v3 = [MEMORY[0x277CCA8D8] ics_loadBundle:@"HealthDataclassOwnerPlugin.bundle" atPath:@"System/Library/Accounts/DataclassOwners"];
  v4 = [(ICSDataclassDetailSpecifierProvider *)self loadSpecifierProviderWithClassName:@"HKHealthDataclassSpecifierProvider" inBundle:v3];

  return v4;
}

- (id)loadSpecifierProviderWithClassName:(id)a3 inBundle:(id)a4
{
  v5 = NSClassFromString(a3);
  if ([(objc_class *)v5 conformsToProtocol:&unk_2884BC2B8])
  {
    v6 = [[v5 alloc] initWithAccountManager:self->_accountManager];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [v6 setDelegate:WeakRetained];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (Class)_cloudMessageDetailControllerClass
{
  v2 = [MEMORY[0x277CCA8D8] ics_loadBundle:@"CKStoragePlugin.bundle" atPath:@"System/Library/PreferenceBundles/StoragePlugins"];

  return NSClassFromString(&cfstr_Ckcloudmessage.isa);
}

- (id)ubiquityProviderGetAccountOperationsHelper
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_loadWeakRetained(&self->_presenter);
    v6 = [v5 accountOperationsHelper];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)ubiquityProviderShowViewController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained specifierProvider:self showViewController:v4];
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_iconForDataclass:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_275819000, a2, OS_LOG_TYPE_ERROR, "Missing icon for dataclass %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __57__ICSDataclassDetailSpecifierProvider__fetchStorageUsed___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_275819000, log, OS_LOG_TYPE_DEBUG, "Fetched storage used: %@, error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end