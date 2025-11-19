@interface PSUIAddCellularPlanSpecifier
- (PSListController)hostController;
- (PSUIAddCellularPlanSpecifier)initWithHostController:(id)a3 isEmbeddedInCarrierList:(BOOL)a4 planManager:(id)a5;
- (UIViewController)firstViewController;
- (UIViewController)presentedController;
- (void)_showWifiAlert;
- (void)addCellularPlanCellPressed:(id)a3;
- (void)cellularPlanChanged;
- (void)setUpeSIMNeeded;
- (void)simSetupFlowCompleted:(unint64_t)a3;
@end

@implementation PSUIAddCellularPlanSpecifier

- (PSUIAddCellularPlanSpecifier)initWithHostController:(id)a3 isEmbeddedInCarrierList:(BOOL)a4 planManager:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v6)
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = @"CELLULAR_CHOOSE_NETWORK_OTHER";
    v12 = [v10 localizedStringForKey:@"CELLULAR_CHOOSE_NETWORK_OTHER" value:&stru_287733598 table:@"Cellular"];
    v13 = 3;
  }

  else
  {
    v14 = +[PSUICellularPlanManagerCache sharedInstance];
    v15 = [v14 planItems];
    v16 = [v15 count];

    v10 = [MEMORY[0x277D75418] currentDevice];
    if ([v10 sf_isiPad])
    {
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = v17;
      v19 = @"ADD_CELLULAR_PLAN";
      v20 = @"Gemini-Gemini";
    }

    else
    {
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = v17;
      if (v16 <= 0)
      {
        v19 = @"SETUP_CELLULAR";
      }

      else
      {
        v19 = @"ADD_ESIM";
      }

      v20 = @"Cellular";
    }

    v12 = [v17 localizedStringForKey:v19 value:&stru_287733598 table:v20];

    v11 = @"ADD_CELLULAR_PLAN";
    v13 = 13;
  }

  v33.receiver = self;
  v33.super_class = PSUIAddCellularPlanSpecifier;
  v21 = [(PSUIAddCellularPlanSpecifier *)&v33 initWithName:v12 target:0 set:0 get:0 detail:0 cell:v13 edit:0];
  v22 = v21;
  if (v21)
  {
    [(PSUIAddCellularPlanSpecifier *)v21 setIdentifier:v11];
    [(PSUIAddCellularPlanSpecifier *)v22 setTarget:v22];
    [(PSUIAddCellularPlanSpecifier *)v22 setButtonAction:sel_addCellularPlanCellPressed_];
    objc_storeWeak(&v22->_hostController, v8);
    objc_storeStrong(&v22->_planManager, a5);
    v22->_isRequestingOngoing = 0;
    v22->_isEmbeddedInCarrierList = v6;
    v23 = objc_alloc(MEMORY[0x277CC37B0]);
    v24 = [v23 initWithQueue:MEMORY[0x277D85CD0]];
    coreTelephonyClient = v22->_coreTelephonyClient;
    v22->_coreTelephonyClient = v24;

    [(CoreTelephonyClient *)v22->_coreTelephonyClient setDelegate:v22];
    [(PSUIAddCellularPlanSpecifier *)v22 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    WeakRetained = objc_loadWeakRetained(&v22->_hostController);
    v27 = [WeakRetained table];
    v28 = objc_opt_class();
    v29 = +[(PSTableCell *)_TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell];
    [v27 registerClass:v28 forCellReuseIdentifier:v29];
  }

  v30 = [MEMORY[0x277CCAB98] defaultCenter];
  [v30 addObserver:v22 selector:sel_setUpeSIMNeeded name:@"PSUICellularPlanSetUpNeeded" object:0];

  v31 = [MEMORY[0x277CCAB98] defaultCenter];
  [v31 addObserver:v22 selector:sel_cellularPlanChanged name:@"PSUICellularPlanChanged" object:0];

  return v22;
}

- (void)setUpeSIMNeeded
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [(PSUIAddCellularPlanSpecifier *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = @"PSUICellularPlanSetUpNeeded";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Received notification %@", &v5, 0xCu);
  }

  [(PSUIAddCellularPlanSpecifier *)self addCellularPlanCellPressed:self];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)addCellularPlanCellPressed:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUIAddCellularPlanSpecifier *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[PSUIAddCellularPlanSpecifier addCellularPlanCellPressed:]";
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (self->_isRequestingOngoing || self->_flow && (WeakRetained = objc_loadWeakRetained(&self->_hostController), [WeakRetained presentedViewController], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 == 0, v7, WeakRetained, !v8))
  {
    v9 = [(PSUIAddCellularPlanSpecifier *)self getLogger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "duplicate request to launch SimSetupSupport", buf, 2u);
    }
  }

  else
  {
    self->_isRequestingOngoing = 1;
    objc_initWeak(buf, self);
    coreTelephonyClient = self->_coreTelephonyClient;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__PSUIAddCellularPlanSpecifier_addCellularPlanCellPressed___block_invoke;
    v12[3] = &unk_279BAAD20;
    objc_copyWeak(&v14, buf);
    v12[4] = self;
    v13 = v4;
    [(CoreTelephonyClient *)coreTelephonyClient getTravelInfoForIccid:&stru_287733598 completion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __59__PSUIAddCellularPlanSpecifier_addCellularPlanCellPressed___block_invoke(id *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (+[SettingsCellularUtils noDataConnectivityAvailableWithBSRecommendationCheck:](SettingsCellularUtils, "noDataConnectivityAvailableWithBSRecommendationCheck:", [v3 isUserTraveling]))
    {
      v5 = [a1[4] getLogger];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [MEMORY[0x277D75418] currentDevice];
        v7 = [v6 sf_isiPhone];
        v8 = "iPad";
        if (v7)
        {
          v8 = "iPhone";
        }

        *buf = 136315138;
        v29 = v8;
        _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Data connectivity is not available to set up eSIM(s) on %s", buf, 0xCu);
      }

      [a1[4] _showWifiAlert];
      *(WeakRetained + 232) = 0;
    }

    else
    {
      if ([v3 isUserTraveling] && (+[PSUICellularPlanManagerCache sharedInstance](PSUICellularPlanManagerCache, "sharedInstance"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isBootstrapRecommended"), v9, v10))
      {
        v26[0] = *MEMORY[0x277D49548];
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:22];
        v26[1] = *MEMORY[0x277D49550];
        v27[0] = v11;
        v27[1] = MEMORY[0x277CBEC38];
        v12 = MEMORY[0x277CBEAC0];
        v13 = v27;
        v14 = v26;
        v15 = 2;
      }

      else
      {
        v24 = *MEMORY[0x277D49548];
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:3];
        v25 = v11;
        v12 = MEMORY[0x277CBEAC0];
        v13 = &v25;
        v14 = &v24;
        v15 = 1;
      }

      v16 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:v15];

      [a1[5] setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__PSUIAddCellularPlanSpecifier_addCellularPlanCellPressed___block_invoke_40;
      block[3] = &unk_279BA9D58;
      block[4] = a1[4];
      dispatch_async(MEMORY[0x277D85CD0], block);
      v17 = [MEMORY[0x277D49530] flowWithOptions:v16];
      v18 = *(WeakRetained + 33);
      *(WeakRetained + 33) = v17;

      [*(WeakRetained + 33) setDelegate:a1[4]];
      v19 = *(WeakRetained + 33);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __59__PSUIAddCellularPlanSpecifier_addCellularPlanCellPressed___block_invoke_2;
      v22[3] = &unk_279BAAA40;
      v20 = a1[4];
      v22[4] = WeakRetained;
      v22[5] = v20;
      [v19 firstViewController:v22];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __59__PSUIAddCellularPlanSpecifier_addCellularPlanCellPressed___block_invoke_40(uint64_t a1)
{
  v2 = [*(a1 + 32) hostController];
  [v2 reloadSpecifier:*(a1 + 32)];
}

void __59__PSUIAddCellularPlanSpecifier_addCellularPlanCellPressed___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setFirstViewController:v4];
  v5 = [*(a1 + 32) hostController];
  v6 = [v5 isModalInPresentation];

  v7 = [*(a1 + 40) getLogger];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = [*(a1 + 32) hostController];
      v10 = [*(a1 + 32) hostController];
      v11 = [v10 navigationController];
      v12 = [*(a1 + 32) flow];
      *buf = 138412802;
      v26 = v9;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "presented inline. host:%@, nc:%@, flow:%@", buf, 0x20u);
    }

    v13 = [*(a1 + 32) hostController];
    [v13 showController:v4 animate:1];

    v14 = [*(a1 + 32) hostController];
    v15 = [v14 presentedViewController];
    [*(a1 + 32) setPresentedController:v15];
  }

  else
  {
    if (v8)
    {
      v16 = [*(a1 + 32) hostController];
      v17 = [*(a1 + 32) hostController];
      v18 = [v17 navigationController];
      v19 = [*(a1 + 32) flow];
      *buf = 138412802;
      v26 = v16;
      v27 = 2112;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "present in sheet. host:%@, nc:%@, flow:%@", buf, 0x20u);
    }

    v14 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v4];
    [v14 setModalPresentationStyle:2];
    v20 = [*(a1 + 40) getLogger];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v14;
      _os_log_impl(&dword_2658DE000, v20, OS_LOG_TYPE_DEFAULT, "presented vc: %@", buf, 0xCu);
    }

    [*(a1 + 32) setPresentedController:v14];
    v15 = [*(a1 + 32) hostController];
    [v15 presentViewController:v14 animated:1 completion:0];
  }

  [*(a1 + 32) setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  v21 = [*(a1 + 32) hostController];
  [v21 reloadSpecifier:*(a1 + 32)];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __59__PSUIAddCellularPlanSpecifier_addCellularPlanCellPressed___block_invoke_44;
  v23[3] = &unk_279BA9D30;
  v24 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  dispatch_async(MEMORY[0x277D85CD0], v23);
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __59__PSUIAddCellularPlanSpecifier_addCellularPlanCellPressed___block_invoke_44(uint64_t a1)
{
  v2 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658DE000, v2, OS_LOG_TYPE_DEFAULT, "firstViewController is returned and reset isRequestingOngoing", v4, 2u);
  }

  return [*(a1 + 40) setIsRequestingOngoing:0];
}

- (void)cellularPlanChanged
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(PSUIAddCellularPlanSpecifier *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[PSUIAddCellularPlanSpecifier cellularPlanChanged]";
    v16 = 2112;
    v17 = @"PSUICellularPlanChanged";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s received notification %@", &v14, 0x16u);
  }

  if ([(PSUIAddCellularPlanSpecifier *)self isEmbeddedInCarrierList])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"CELLULAR_CHOOSE_NETWORK_OTHER" value:&stru_287733598 table:@"Cellular"];
    [(PSUIAddCellularPlanSpecifier *)self setName:v5];
  }

  else
  {
    v6 = +[PSUICellularPlanManagerCache sharedInstance];
    v7 = [v6 planItems];
    v8 = [v7 count];

    v4 = [MEMORY[0x277D75418] currentDevice];
    if ([v4 sf_isiPad])
    {
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = v9;
      v10 = @"ADD_CELLULAR_PLAN";
      v11 = @"Gemini-Gemini";
    }

    else
    {
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = v9;
      if (v8 <= 0)
      {
        v10 = @"SETUP_CELLULAR";
      }

      else
      {
        v10 = @"ADD_ESIM";
      }

      v11 = @"Cellular";
    }

    v12 = [v9 localizedStringForKey:v10 value:&stru_287733598 table:v11];
    [(PSUIAddCellularPlanSpecifier *)self setName:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)simSetupFlowCompleted:(unint64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [(PSUIAddCellularPlanSpecifier *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = self;
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "finish activation flow. self:%@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__PSUIAddCellularPlanSpecifier_simSetupFlowCompleted___block_invoke;
  v6[3] = &unk_279BAA050;
  objc_copyWeak(&v7, buf);
  v6[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__PSUIAddCellularPlanSpecifier_simSetupFlowCompleted___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [WeakRetained hostController];
      v5 = [WeakRetained hostController];
      v6 = [v5 navigationController];
      v7 = [WeakRetained flow];
      v12 = 138412802;
      v13 = v4;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "dismiss view controller. host:%@, nc:%@, flow:%@", &v12, 0x20u);
    }

    v8 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [WeakRetained presentedController];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "presented vc:%@", &v12, 0xCu);
    }

    v10 = [WeakRetained presentedController];
    [v10 dismissViewControllerAnimated:1 completion:0];

    [WeakRetained setFlow:0];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v12) = 0;
    _os_log_error_impl(&dword_2658DE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "specifier is invalid. CANNOT dismiss UI", &v12, 2u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_showWifiAlert
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"NOT_CONNECTED_TO_INTERNET" value:&stru_287733598 table:@"Gemini-Gemini"];

  v5 = [MEMORY[0x277D75418] currentDevice];
  LODWORD(v3) = [v5 sf_isiPhone];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v3)
  {
    v8 = @"TURN_ON_WIFI_TO_SETUP_ESIM";
  }

  else
  {
    v8 = @"TURN_ON_WIFI_TO_SETUP_ESIM_IPAD";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_287733598 table:@"Gemini-Gemini"];

  v10 = [MEMORY[0x277D75110] alertControllerWithTitle:v4 message:v9 preferredStyle:1];
  v11 = [MEMORY[0x277D75418] currentDevice];
  if ([v11 sf_isChinaRegionCellularDevice])
  {
    v12 = @"CHOOSE_WLAN";
  }

  else
  {
    v12 = @"CHOOSE_WIFI";
  }

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:v12 value:&stru_287733598 table:@"Gemini-Gemini"];

  v15 = [MEMORY[0x277D750F8] actionWithTitle:v14 style:0 handler:&__block_literal_global_25];
  [v10 addAction:v15];
  v16 = MEMORY[0x277D750F8];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"CANCEL" value:&stru_287733598 table:@"Gemini-Gemini"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __46__PSUIAddCellularPlanSpecifier__showWifiAlert__block_invoke_2;
  v21[3] = &unk_279BA9E70;
  v21[4] = self;
  v19 = [v16 actionWithTitle:v18 style:1 handler:v21];

  [v10 addAction:v19];
  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  [WeakRetained presentViewController:v10 animated:1 completion:0];
}

void __46__PSUIAddCellularPlanSpecifier__showWifiAlert__block_invoke()
{
  v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=WIFI"];
  [v1 openSensitiveURL:v0 withOptions:0];
}

void __46__PSUIAddCellularPlanSpecifier__showWifiAlert__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2658DE000, v1, OS_LOG_TYPE_DEFAULT, "user canceled setting up eSIM", v2, 2u);
  }
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

- (UIViewController)firstViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_firstViewController);

  return WeakRetained;
}

- (UIViewController)presentedController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedController);

  return WeakRetained;
}

@end