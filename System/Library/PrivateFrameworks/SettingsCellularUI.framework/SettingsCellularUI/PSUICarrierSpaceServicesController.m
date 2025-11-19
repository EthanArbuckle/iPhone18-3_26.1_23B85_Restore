@interface PSUICarrierSpaceServicesController
- (BOOL)shouldShowMoreApps;
- (PSUICarrierSpaceServicesController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)primaryAppSpecifier;
- (id)specifiers;
- (void)carrierSpaceChanged;
- (void)launchMyAccountInSafari:(id)a3;
- (void)launchMyAccountInWebView:(id)a3;
- (void)moreAppsTapped:(id)a3;
- (void)simStatusChanged;
@end

@implementation PSUICarrierSpaceServicesController

- (void)simStatusChanged
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICarrierSpaceServicesController *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[PSUICarrierSpaceServicesController simStatusChanged]";
    v11 = 2112;
    v12 = 0x287737BB8;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s received notification %@", &v9, 0x16u);
  }

  v4 = [MEMORY[0x277D4D868] sharedInstance];
  v5 = [v4 isSIMMissing];

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD10]));
    v7 = [WeakRetained popViewControllerAnimated:1];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)carrierSpaceChanged
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICarrierSpaceServicesController *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[PSUICarrierSpaceServicesController carrierSpaceChanged]";
    v7 = 2112;
    v8 = 0x287737B98;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s received notification: %@", &v5, 0x16u);
  }

  [(PSUICarrierSpaceServicesController *)self reloadSpecifiers];
  v4 = *MEMORY[0x277D85DE8];
}

- (PSUICarrierSpaceServicesController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = PSUICarrierSpaceServicesController;
  v4 = [(PSUICarrierSpaceServicesController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v4 selector:sel_simStatusChanged name:0x287737BB8 object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v4 selector:sel_carrierSpaceChanged name:0x287737B98 object:0];
  }

  return v4;
}

- (id)specifiers
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(PSUICarrierSpaceServicesController *)self getLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v48 = "[PSUICarrierSpaceServicesController specifiers]";
      _os_log_debug_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEBUG, "%s: loading carrier services specifiers", buf, 0xCu);
    }

    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CARRIER_APP_GROUP"];
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"MORE_APPS_FROM_CARRIER_%@" value:&stru_287733598 table:@"CarrierSpaceServices"];
    v10 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
    v11 = [v10 activeDataCarrierName];
    v12 = [v7 stringWithFormat:v9, v11];

    v45 = v12;
    v13 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:13 edit:0];
    [v13 setButtonAction:sel_moreAppsTapped_];
    [v13 setIdentifier:@"MORE_APPS_FROM_CARRIER"];
    v44 = v13;
    v46 = v6;
    v14 = [MEMORY[0x277CBEB18] arrayWithObjects:{v6, v13, 0}];
    v15 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:*MEMORY[0x277D40128]];
    v16 = +[PSUICarrierServicesSpecifierCache sharedInstance];
    v17 = [v16 specifiers:v15];

    v18 = [(PSUICarrierSpaceServicesController *)self getLogger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v17 count];
      *buf = 136315394;
      v48 = "[PSUICarrierSpaceServicesController specifiers]";
      v49 = 2048;
      v50 = v19;
      _os_log_impl(&dword_2658DE000, v18, OS_LOG_TYPE_DEFAULT, "%s detected %lu service code specifiers", buf, 0x16u);
    }

    v20 = [v14 specifierForID:@"MORE_APPS_FROM_CARRIER"];
    [v14 ps_insertObjectsFromArray:v17 afterObject:v20];

    v21 = [MEMORY[0x277D4D868] sharedInstance];
    v22 = [v21 activeDataSubscriptionContext];

    v23 = [v15 slotID];
    v43 = v22;
    if (v23 != [v22 slotID])
    {
      v31 = v17;
      v32 = [v14 specifierForID:@"CARRIER_APP_GROUP"];
      [v14 removeObject:v32];

      v25 = [v14 specifierForID:@"MORE_APPS_FROM_CARRIER"];
      [v14 removeObject:v25];
LABEL_21:

      v34 = MEMORY[0x277CCACA8];
      v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v36 = [v35 localizedStringForKey:@"%@_CARRIER_SERVICES" value:&stru_287733598 table:@"CarrierSpaceServices"];
      v37 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
      v38 = [v37 carrierName:v15];
      v39 = [v34 stringWithFormat:v36, v38];
      [(PSUICarrierSpaceServicesController *)self setTitle:v39];

      [MEMORY[0x277D4D878] logSpecifiers:v14 origin:@"[PSUICarrierSpaceServicesController specifiers] end"];
      v40 = *(&self->super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.isa + v3) = v14;

      v4 = *(&self->super.super.super.super.super.isa + v3);
      goto LABEL_22;
    }

    v24 = [v14 specifierForID:@"MY_ACCOUNT"];
    v25 = v24;
    if (v24)
    {
      [v24 setHostController:self];
    }

    v26 = [(PSUICarrierSpaceServicesController *)self primaryAppSpecifier];
    v27 = [(PSUICarrierSpaceServicesController *)self getLogger];
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      if (v28)
      {
        *buf = 136315138;
        v48 = "[PSUICarrierSpaceServicesController specifiers]";
        _os_log_impl(&dword_2658DE000, v27, OS_LOG_TYPE_DEFAULT, "%s carrier app provided: adding app install cell", buf, 0xCu);
      }

      v29 = [v14 specifierForID:@"CARRIER_APP_GROUP"];
      [v14 ps_insertObject:v26 afterObject:v29];

      if ([(PSUICarrierSpaceServicesController *)self shouldShowMoreApps])
      {
        goto LABEL_20;
      }

      v30 = [(PSUICarrierSpaceServicesController *)self getLogger];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v48 = "[PSUICarrierSpaceServicesController specifiers]";
        _os_log_impl(&dword_2658DE000, v30, OS_LOG_TYPE_DEFAULT, "%s carrier more apps URL not provided: hiding More Apps button", buf, 0xCu);
      }
    }

    else
    {
      if (v28)
      {
        *buf = 136315138;
        v48 = "[PSUICarrierSpaceServicesController specifiers]";
        _os_log_impl(&dword_2658DE000, v27, OS_LOG_TYPE_DEFAULT, "%s carrier app not provided: hiding app install cell and More Apps button", buf, 0xCu);
      }

      v30 = [v14 specifierForID:@"CARRIER_APP_GROUP"];
      [v14 removeObject:v30];
    }

    v33 = [v14 specifierForID:@"MORE_APPS_FROM_CARRIER"];
    [v14 removeObject:v33];

LABEL_20:
    v31 = v17;

    goto LABEL_21;
  }

LABEL_22:
  v41 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)primaryAppSpecifier
{
  v3 = +[PSUICarrierSpaceManager sharedManager];
  v4 = [v3 carrierAppInstallController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__PSUICarrierSpaceServicesController_primaryAppSpecifier__block_invoke;
  v7[3] = &unk_279BAA468;
  v7[4] = self;
  v5 = [v4 specifierWithDescriptionParameters:0 completion:v7];

  return v5;
}

void __57__PSUICarrierSpaceServicesController_primaryAppSpecifier__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __57__PSUICarrierSpaceServicesController_primaryAppSpecifier__block_invoke_2;
  v2[3] = &unk_279BAAAF0;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __57__PSUICarrierSpaceServicesController_primaryAppSpecifier__block_invoke_2(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) reloadSpecifiers];
  }

  return result;
}

- (void)launchMyAccountInWebView:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a3 propertyForKey:@"MY_ACCOUNT_URL"];
  v5 = [(PSUICarrierSpaceServicesController *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Launch my account in web view pressed: %@", &v11, 0xCu);
  }

  v6 = [[PSUICarrierSpaceMyAccountWebViewController alloc] initWithURLString:v4];
  myAccountWebViewController = self->_myAccountWebViewController;
  self->_myAccountWebViewController = v6;

  v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_myAccountWebViewController];
  navCon = self->_navCon;
  self->_navCon = v8;

  [(PSUICarrierSpaceServicesController *)self presentViewController:self->_navCon animated:1 completion:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)launchMyAccountInSafari:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEBC0];
  v5 = [a3 propertyForKey:@"MY_ACCOUNT_URL"];
  v6 = [v4 URLWithString:v5];

  v7 = [(PSUICarrierSpaceServicesController *)self getLogger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "Launch my account in safari pressed: %@", &v11, 0xCu);
  }

  v8 = *MEMORY[0x277D76620];
  v9 = objc_opt_new();
  [v8 openURL:v6 options:v9 completionHandler:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldShowMoreApps
{
  v2 = +[PSUICarrierSpaceManager sharedManager];
  v3 = [v2 carrierAppInstallController];
  v4 = [v3 moreAppsAvailable];

  return v4;
}

- (void)moreAppsTapped:(id)a3
{
  v3 = a3;
  v5 = +[PSUICarrierSpaceManager sharedManager];
  v4 = [v5 carrierAppInstallController];
  [v4 moreAppsButtonTapped:v3];
}

@end