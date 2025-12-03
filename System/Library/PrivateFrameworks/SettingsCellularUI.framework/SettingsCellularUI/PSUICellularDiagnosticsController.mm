@interface PSUICellularDiagnosticsController
- (PSUICellularDiagnosticsController)init;
- (id)getAppViewSpecifier:(id)specifier diagSubCode:(id)code;
- (id)initAppInstallViewSpecifier:(id)specifier;
- (id)specifiers;
- (void)learnMoreLinkTapped;
@end

@implementation PSUICellularDiagnosticsController

- (PSUICellularDiagnosticsController)init
{
  v6.receiver = self;
  v6.super_class = PSUICellularDiagnosticsController;
  v2 = [(PSUICellularDiagnosticsController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(PSUICellularDiagnosticsController *)v2 set_appLockupViewNotAvailable:0];
    appViewSpecifier = v3->_appViewSpecifier;
    v3->_appViewSpecifier = 0;
  }

  return v3;
}

- (id)initAppInstallViewSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v9.receiver = self;
  v9.super_class = PSUICellularDiagnosticsController;
  v6 = [(PSUICellularDiagnosticsController *)&v9 init];
  p_isa = &v6->super.super.super.super.super.isa;
  if (v6)
  {
    [(PSUICellularDiagnosticsController *)v6 set_appLockupViewNotAvailable:1];
    objc_storeStrong(p_isa + 182, specifier);
  }

  return p_isa;
}

- (id)getAppViewSpecifier:(id)specifier diagSubCode:(id)code
{
  v23 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  codeCopy = code;
  getLogger = [(PSUICellularDiagnosticsController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[PSUICellularDiagnosticsController getAppViewSpecifier:diagSubCode:]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  appViewSpecifier = self->_appViewSpecifier;
  if (appViewSpecifier)
  {
    v10 = appViewSpecifier;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    _appLockupViewNotAvailable = [(PSUICellularDiagnosticsController *)selfCopy _appLockupViewNotAvailable];
    objc_sync_exit(selfCopy);

    if (_appLockupViewNotAvailable)
    {
      v10 = 0;
    }

    else
    {
      getLogger2 = [(PSUICellularDiagnosticsController *)selfCopy getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v22 = "[PSUICellularDiagnosticsController getAppViewSpecifier:diagSubCode:]";
        _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s create new app view", buf, 0xCu);
      }

      objc_initWeak(buf, selfCopy);
      v14 = [PSUIAppInstallLockupViewSpecifier alloc];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __69__PSUICellularDiagnosticsController_getAppViewSpecifier_diagSubCode___block_invoke;
      v19[3] = &unk_279BA9F40;
      objc_copyWeak(&v20, buf);
      v19[4] = selfCopy;
      v15 = [(PSUIAppInstallLockupViewSpecifier *)v14 initWithFailureHandler:v19 diagCode:specifierCopy diagSubCode:codeCopy OpenAppURL:@"applesupport://getsupport.apple.com/?caller=settings.cellular" appId:@"1130498044" AnalyticsEventForApp:0x2877399D8];
      v16 = self->_appViewSpecifier;
      self->_appViewSpecifier = v15;

      v10 = self->_appViewSpecifier;
      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

void __69__PSUICellularDiagnosticsController_getAppViewSpecifier_diagSubCode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__PSUICellularDiagnosticsController_getAppViewSpecifier_diagSubCode___block_invoke_2;
  block[3] = &unk_279BA9F18;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __69__PSUICellularDiagnosticsController_getAppViewSpecifier_diagSubCode___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [a1[4] domain];
    v4 = [v3 isEqualToString:*MEMORY[0x277CCA738]];

    if ((v4 & 1) == 0)
    {
      v5 = WeakRetained;
      objc_sync_enter(v5);
      v6 = [a1[5] getLogger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_error_impl(&dword_2658DE000, v6, OS_LOG_TYPE_ERROR, "LockupView is not available", v7, 2u);
      }

      [v5 set_appLockupViewNotAvailable:1];
      objc_sync_exit(v5);

      [v5 reloadSpecifiers];
    }
  }
}

- (id)specifiers
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v51 = *MEMORY[0x277D3FC48];
    v4 = MEMORY[0x277CBEB18];
    v53.receiver = self;
    v53.super_class = PSUICellularDiagnosticsController;
    specifiers = [(PSUICellularDiagnosticsController *)&v53 specifiers];
    v6 = [v4 arrayWithArray:specifiers];

    v7 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]);
    v52 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CELLULAR_DIAGNOSTICS_RESULT_GROUP"];
    [v6 addObject:?];
    v8 = +[PSUIDeviceWiFiState sharedInstance];
    isConnectedOverWiFi = [v8 isConnectedOverWiFi];

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "getDiagnosticsDetailsCode")}];
    [(PSUICellularDiagnosticsController *)self set_diagCode:v10];

    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "getDiagnosticsDetailsSubCode")}];
    [(PSUICellularDiagnosticsController *)self set_diagSubCode:v11];

    v50 = v7;
    if (isConnectedOverWiFi)
    {
      _diagCode = [(PSUICellularDiagnosticsController *)self _diagCode];
      _diagSubCode = [(PSUICellularDiagnosticsController *)self _diagSubCode];
      v14 = [(PSUICellularDiagnosticsController *)self getAppViewSpecifier:_diagCode diagSubCode:_diagSubCode];

      if (v14)
      {
        v15 = MEMORY[0x277CCACA8];
        getDiagnosticsStatusDescription = [v7 getDiagnosticsStatusDescription];
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"CELLULAR_DIAGNOSTICS_RECOMMEND_RUN_DIAGNOSTICS" value:&stru_287733598 table:@"Cellular"];
        getDiagnosticsStatusDescription2 = [v15 stringWithFormat:@"%@ %@", getDiagnosticsStatusDescription, v18];
      }

      else
      {
        getDiagnosticsStatusDescription2 = [v7 getDiagnosticsStatusDescription];
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      sf_isChinaRegionCellularDevice = [currentDevice sf_isChinaRegionCellularDevice];

      v22 = MEMORY[0x277CCACA8];
      getDiagnosticsStatusDescription3 = [v7 getDiagnosticsStatusDescription];
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = v24;
      if (sf_isChinaRegionCellularDevice)
      {
        v26 = @"CELLULAR_DIAGNOSTICS_RECOMMEND_NO_WLAN";
      }

      else
      {
        v26 = @"CELLULAR_DIAGNOSTICS_RECOMMEND_NO_WIFI";
      }

      v27 = [v24 localizedStringForKey:v26 value:&stru_287733598 table:@"Cellular"];
      getDiagnosticsStatusDescription2 = [v22 stringWithFormat:@"%@\n%@", getDiagnosticsStatusDescription3, v27];

      v14 = 0;
    }

    v28 = [objc_alloc(MEMORY[0x277D3FAD8]) initWithName:0 target:0 set:0 get:0 detail:0 cell:3 edit:0];
    [v28 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"CELLULAR_DIAGNOSTICS_MESSAGE_TITLE" value:&stru_287733598 table:@"Cellular"];
    [v28 setProperty:v30 forKey:0x287736958];

    [v28 setProperty:getDiagnosticsStatusDescription2 forKey:0x287736978];
    [v6 ps_addSpecifier:v28 toGroup:v52];
    getLogger = [(PSUICellularDiagnosticsController *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      v32 = "No";
      v55 = "[PSUICellularDiagnosticsController specifiers]";
      if (isConnectedOverWiFi)
      {
        v33 = "Yes";
      }

      else
      {
        v33 = "No";
      }

      *buf = 136315650;
      v57 = v33;
      v56 = 2080;
      if (v14)
      {
        v32 = "Yes";
      }

      v58 = 2080;
      v59 = v32;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s Wifi: %s, AppView: %s", buf, 0x20u);
    }

    v34 = MEMORY[0x277D3FAD8];
    if (v14)
    {
      v35 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CELLULAR_DIAGNOSTICS_ACTION_GROUP"];
      [v6 addObject:v35];
      v36 = MEMORY[0x277D3FAD8];
      v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v38 = [v37 localizedStringForKey:@"CELLULAR_DIAGNOSTICS_RUN" value:&stru_287733598 table:@"Cellular"];
      v39 = [v36 preferenceSpecifierNamed:v38 target:self set:0 get:0 detail:0 cell:4 edit:0];

      [v6 ps_addSpecifier:v39 toGroup:v35];
      v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v41 = [v40 localizedStringForKey:@"CELLULAR_DIAGNOSTICS_APP_DESCRIPTION" value:&stru_287733598 table:@"Cellular"];
      [v35 setProperty:v41 forKey:*MEMORY[0x277D3FF88]];

      [v6 ps_addSpecifier:v14 toGroup:v35];
    }

    else
    {
      v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v43 = [v42 localizedStringForKey:@"CELLULAR_DIAGNOSTICS_LEARN_MORE" value:&stru_287733598 table:@"Cellular"];
      v35 = [v34 preferenceSpecifierNamed:v43 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v35 setButtonAction:sel_learnMoreLinkTapped];
      [v6 addObject:v35];
    }

    if (v6)
    {
      v44 = [v6 copy];
      v45 = *(&self->super.super.super.super.super.isa + v51);
      *(&self->super.super.super.super.super.isa + v51) = v44;
    }

    v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v47 = [v46 localizedStringForKey:@"CELLULAR_DIAGNOSTICS_PAGE_TITLE" value:&stru_287733598 table:@"Cellular"];
    [(PSUICellularDiagnosticsController *)self setTitle:v47];

    v3 = *(&self->super.super.super.super.super.isa + v51);
  }

  v48 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)learnMoreLinkTapped
{
  v21[3] = *MEMORY[0x277D85DE8];
  v21[0] = @"OpenMoreLink";
  v20[0] = 0x2877399F8;
  v20[1] = 0x287739A18;
  _diagCode = [(PSUICellularDiagnosticsController *)self _diagCode];
  v21[1] = _diagCode;
  v20[2] = 0x287739A38;
  _diagSubCode = [(PSUICellularDiagnosticsController *)self _diagSubCode];
  v21[2] = _diagSubCode;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v6 = @"com.apple.Preferences.TelephonyCellularDiagnostics";
  v7 = v5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v8 = _MergedGlobals_1;
  v19 = _MergedGlobals_1;
  if (!_MergedGlobals_1)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __getAnalyticsSendEventSymbolLoc_block_invoke;
    v15[3] = &unk_279BA9F68;
    v15[4] = &v16;
    __getAnalyticsSendEventSymbolLoc_block_invoke(v15);
    v8 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v8)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v8(v6, v7);

  v9 = *MEMORY[0x277D76620];
  v10 = MEMORY[0x277CBEBC0];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"CELLULAR_DIAGNOSTICS_LEARN_MORE_LINK" value:&stru_287733598 table:@"Cellular"];
  v13 = [v10 URLWithString:v12];
  [v9 openURL:v13 options:MEMORY[0x277CBEC10] completionHandler:0];

  v14 = *MEMORY[0x277D85DE8];
}

@end