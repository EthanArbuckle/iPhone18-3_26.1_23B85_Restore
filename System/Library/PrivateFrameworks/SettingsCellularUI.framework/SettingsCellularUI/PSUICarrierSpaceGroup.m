@interface PSUICarrierSpaceGroup
- (PSListController)listController;
- (PSSpecifier)groupSpecifier;
- (PSSpecifier)parentSpecifier;
- (PSUICarrierSpaceGroup)initWithListController:(id)a3 groupSpecifier:(id)a4 parentSpecifier:(id)a5 ctClient:(id)a6;
- (id)carrierServicesSpecifier;
- (id)cellularPlansSpecifier;
- (id)descriptionForPlans:(id)a3;
- (id)descriptionForUsage:(id)a3;
- (id)usageSpecifier;
- (void)agreePressed;
- (void)carrierSpaceChanged;
- (void)disagreeOrCancelPressed;
- (void)newCarrierNotification;
- (void)openURLWithSpecifier:(id)a3;
- (void)prepareSpecifiers;
- (void)refreshSpecifiers;
- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4;
- (void)remoteUIController:(id)a3 willPresentModalNavigationController:(id)a4;
- (void)setIsSubscriptionDataPreferred;
- (void)showConsentFlow:(id)a3;
- (void)showTermsAndConditions:(id)a3 consentFlowInfo:(id)a4;
@end

@implementation PSUICarrierSpaceGroup

- (PSUICarrierSpaceGroup)initWithListController:(id)a3 groupSpecifier:(id)a4 parentSpecifier:(id)a5 ctClient:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = PSUICarrierSpaceGroup;
  v14 = [(PSUICarrierSpaceGroup *)&v26 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_listController, v10);
    objc_storeWeak(&v15->_groupSpecifier, v11);
    v16 = objc_storeWeak(&v15->_parentSpecifier, v12);
    v17 = [v12 propertyForKey:*MEMORY[0x277D40128]];
    subscriptionContext = v15->_subscriptionContext;
    v15->_subscriptionContext = v17;

    v19 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v15->_subscriptionContext];
    v20 = [v19 instance];
    v21 = [v20 stringValue];
    instance = v15->_instance;
    v15->_instance = v21;

    objc_storeStrong(&v15->_ctClient, a6);
    [(CoreTelephonyClient *)v15->_ctClient setDelegate:v15];
    [(PSUICarrierSpaceGroup *)v15 setIsSubscriptionDataPreferred];
    [(PSUICarrierSpaceGroup *)v15 prepareSpecifiers];
    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    [v23 addObserver:v15 selector:sel_carrierSpaceChanged name:0x287737B98 object:0];

    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    [v24 addObserver:v15 selector:sel_newCarrierNotification name:@"PSNewCarrierNotification" object:0];
  }

  return v15;
}

- (void)refreshSpecifiers
{
  [(PSUICarrierSpaceGroup *)self prepareSpecifiers];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PSUICarrierSpaceGroup_refreshSpecifiers__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __42__PSUICarrierSpaceGroup_refreshSpecifiers__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) listController];
  [v1 reloadSpecifiers];
}

- (void)prepareSpecifiers
{
  v3 = objc_opt_new();
  specifersByID = self->_specifersByID;
  self->_specifersByID = v3;

  v15 = [(PSUICarrierSpaceGroup *)self cellularPlansSpecifier];
  if (v15)
  {
    v5 = self->_specifersByID;
    v6 = [v15 identifier];
    [(NSDictionary *)v5 setValue:v15 forKey:v6];
  }

  v7 = [(PSUICarrierSpaceGroup *)self usageSpecifier];
  v8 = v7;
  if (v7)
  {
    v9 = self->_specifersByID;
    v10 = [v7 identifier];
    [(NSDictionary *)v9 setValue:v8 forKey:v10];
  }

  v11 = [(PSUICarrierSpaceGroup *)self carrierServicesSpecifier];
  v12 = v11;
  if (v11)
  {
    v13 = self->_specifersByID;
    v14 = [v11 identifier];
    [(NSDictionary *)v13 setValue:v12 forKey:v14];
  }
}

- (id)carrierServicesSpecifier
{
  if (self->_isSubscriptionDataPreferred)
  {
    v3 = [(PSUICarrierSpaceGroup *)self capabilities];
    if ([v3 supportsApplications])
    {
      v4 = +[PSUICarrierSpaceManager sharedManager];
      v5 = [v4 appsInfo];
      v6 = [v5 appsList];
      v7 = [v6 count] != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
  v9 = [v8 carrierServices:self->_subscriptionContext];
  v10 = [v9 count];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = !v7;
  }

  if (v11)
  {
    v17 = [PSUIMyAccountSpecifier alloc];
    subscriptionContext = self->_subscriptionContext;
    v19 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
    v20 = [(PSUIMyAccountSpecifier *)v17 initWithContext:subscriptionContext cbCache:v19];

    if (v20)
    {
      v21 = [(PSUICarrierSpaceGroup *)self getLogger];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 0;
        _os_log_impl(&dword_2658DE000, v21, OS_LOG_TYPE_DEFAULT, "My account specifier found. Returning My Account Specifier for Carrier Services.", v34, 2u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_listController);
      [(PSUIMyAccountSpecifier *)v20 setHostController:WeakRetained];

      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"CARRIER_SERVICES" value:&stru_287733598 table:@"CarrierSpace"];
      [(PSUIMyAccountSpecifier *)v20 setName:v24];

      [(PSUIMyAccountSpecifier *)v20 setIdentifier:@"PSCarrierSpaceCarrierServicesSpecifierKey"];
      v16 = v20;
    }

    else
    {
      v25 = +[PSUICarrierServicesSpecifierCache sharedInstance];
      v16 = [v25 mmsInfoSpecifierWithTarget:self context:self->_subscriptionContext];

      v26 = [(PSUICarrierSpaceGroup *)self getLogger];
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (v27)
        {
          *v33 = 0;
          _os_log_impl(&dword_2658DE000, v26, OS_LOG_TYPE_DEFAULT, "MMS Info Specifier found. Returning MMS Info specifier for Carrier Services.", v33, 2u);
        }

        v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v29 = [v28 localizedStringForKey:@"CARRIER_SERVICES" value:&stru_287733598 table:@"CarrierSpace"];
        [(PSUIMyAccountSpecifier *)v16 setName:v29];

        [(PSUIMyAccountSpecifier *)v16 setIdentifier:@"PSCarrierSpaceCarrierServicesSpecifierKey"];
        v30 = v16;
      }

      else
      {
        if (v27)
        {
          *v32 = 0;
          _os_log_impl(&dword_2658DE000, v26, OS_LOG_TYPE_DEFAULT, "No specifier found for Carrier Services.", v32, 2u);
        }
      }
    }
  }

  else
  {
    v12 = [(PSUICarrierSpaceGroup *)self getLogger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, v12, OS_LOG_TYPE_DEFAULT, "Carrier services or apps available. Returning PSLinkListCell specifier for Carrier Services.", buf, 2u);
    }

    v13 = MEMORY[0x277D3FAD8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"CARRIER_SERVICES" value:&stru_287733598 table:@"CarrierSpace"];
    v16 = [v13 preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [(PSUIMyAccountSpecifier *)v16 setIdentifier:@"PSCarrierSpaceCarrierServicesSpecifierKey"];
    [(PSUIMyAccountSpecifier *)v16 setProperty:self->_subscriptionContext forKey:*MEMORY[0x277D40128]];
  }

  return v16;
}

- (id)cellularPlansSpecifier
{
  if (!self->_isSubscriptionDataPreferred)
  {
    v10 = 0;
    goto LABEL_22;
  }

  v3 = +[PSUICarrierSpaceManager sharedManager];
  v4 = [v3 capabilities];
  [(PSUICarrierSpaceGroup *)self setCapabilities:v4];

  v5 = [v3 hasUserConsent];
  v6 = [(PSUICarrierSpaceGroup *)self capabilities];
  if ([v6 supportsPlans])
  {
    if (v5)
    {
      v7 = [v3 plansInfo];
      v8 = [v7 planGroupsList];
      v9 = [v8 count];

      if (!v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v11 = [v3 planChangeIsRestricted];
    v12 = [(PSUICarrierSpaceGroup *)self descriptionForPlans:0];
    v13 = [v12 length];

    if (!v11 || v13)
    {
      v14 = v11 | ~v5;
      if (v11)
      {
        v15 = 4;
      }

      else
      {
        v15 = 2;
      }

      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = objc_opt_class();
        v15 = 2;
      }

      v17 = MEMORY[0x277D3FAD8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"PLANS" value:&stru_287733598 table:@"CarrierSpace"];
      v10 = [v17 preferenceSpecifierNamed:v19 target:self set:0 get:sel_descriptionForPlans_ detail:v16 cell:v15 edit:0];

      if ((v5 & 1) == 0)
      {
        [v10 setButtonAction:sel_showConsentFlow_];
        [v10 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
      }

      [v10 setIdentifier:@"PSCarrierSpaceCellularPlansSpeciferKey"];
      goto LABEL_21;
    }
  }

  else
  {
  }

LABEL_11:
  v10 = 0;
LABEL_21:

LABEL_22:

  return v10;
}

- (id)usageSpecifier
{
  if (!self->_isSubscriptionDataPreferred)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v3 = +[PSUICarrierSpaceManager sharedManager];
  v4 = [v3 capabilities];
  [(PSUICarrierSpaceGroup *)self setCapabilities:v4];

  v5 = [v3 hasUserConsent];
  v6 = [(PSUICarrierSpaceGroup *)self capabilities];
  if ([v6 supportsUsage])
  {
    if ((v5 & 1) == 0)
    {

      v10 = 0;
      goto LABEL_10;
    }

    v7 = [v3 usageInfo];
    v8 = [v7 accountMetrics];
    v9 = [v8 count];

    if (v9)
    {
      v10 = objc_opt_class();
LABEL_10:
      v12 = MEMORY[0x277D3FAD8];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"USAGE" value:&stru_287733598 table:@"CarrierSpace"];
      v11 = [v12 preferenceSpecifierNamed:v14 target:self set:0 get:sel_descriptionForUsage_ detail:v10 cell:2 edit:0];

      if ((v5 & 1) == 0)
      {
        [v11 setButtonAction:sel_showConsentFlow_];
        [v11 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
      }

      [v11 setIdentifier:@"PSCarrierSpaceUsageSpecifierKey"];
      goto LABEL_13;
    }
  }

  else
  {
  }

  v11 = 0;
LABEL_13:

LABEL_14:

  return v11;
}

- (void)setIsSubscriptionDataPreferred
{
  v3 = [MEMORY[0x277D4D868] sharedInstance];
  v4 = [v3 activeDataSubscriptionContext];

  if (!self->_subscriptionContext)
  {
    v8 = [(PSUICarrierSpaceGroup *)self getLogger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2658DE000, v8, OS_LOG_TYPE_ERROR, "Subscription is not set", buf, 2u);
    }

    goto LABEL_11;
  }

  if (v4)
  {
    v5 = [v4 uuid];
    v6 = [(CTXPCServiceSubscriptionContext *)self->_subscriptionContext uuid];
    v7 = [v5 isEqual:v6];

    if (v7)
    {
      self->_isSubscriptionDataPreferred = 1;
      v8 = [(PSUICarrierSpaceGroup *)self getLogger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v9 = "Subscription is data preferred";
        v10 = &v12;
LABEL_10:
        _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
      }
    }

    else
    {
      v8 = [(PSUICarrierSpaceGroup *)self getLogger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        v9 = "Subscription is not data preferred";
        v10 = &v11;
        goto LABEL_10;
      }
    }

LABEL_11:
  }
}

- (void)newCarrierNotification
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICarrierSpaceGroup *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PSUICarrierSpaceGroup newCarrierNotification]";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s reloading specifiers", &v5, 0xCu);
  }

  [(PSUICarrierSpaceGroup *)self refreshSpecifiers];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)descriptionForPlans:(id)a3
{
  v3 = +[PSUICarrierSpaceManager sharedManager];
  v4 = [v3 hasUserConsent];

  if (!v4)
  {
    v9 = &stru_287733598;
    goto LABEL_13;
  }

  v5 = +[PSUICarrierSpaceManager sharedManager];
  v6 = [v5 subscribedPlanOptions];
  v7 = [v5 subscribedDomesticPlanOptions];
  if ([v6 count])
  {
    if ([v6 count] == 1)
    {
      v8 = v6;
    }

    else
    {
      if ([v7 count] != 1)
      {
        v11 = MEMORY[0x277CCACA8];
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = [v10 localizedStringForKey:@"%@_PLANS" value:&stru_287733598 table:@"CarrierSpace"];
        v13 = MEMORY[0x277CCABB8];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
        v15 = [v13 localizedStringFromNumber:v14 numberStyle:1];
        v9 = [v11 stringWithFormat:v12, v15];

        goto LABEL_11;
      }

      v8 = v7;
    }

    v10 = [v8 objectAtIndexedSubscript:0];
    v9 = [v10 planLabel];
LABEL_11:

    goto LABEL_12;
  }

  v9 = &stru_287733598;
LABEL_12:

LABEL_13:

  return v9;
}

- (id)descriptionForUsage:(id)a3
{
  v3 = +[PSUICarrierSpaceManager sharedManager];
  v4 = [v3 hasUserConsent];

  if (v4)
  {
    v5 = +[PSUICarrierSpaceManager sharedManager];
    v6 = [v5 planMetrics];
    if ([v6 count] == 1)
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      v8 = [v5 descriptionForPlanMetrics:v7];
    }

    else
    {
      v8 = &stru_287733598;
    }
  }

  else
  {
    v8 = &stru_287733598;
  }

  return v8;
}

- (void)carrierSpaceChanged
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICarrierSpaceGroup *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PSUICarrierSpaceGroup carrierSpaceChanged]";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s reloading specifiers", &v5, 0xCu);
  }

  [(PSUICarrierSpaceGroup *)self refreshSpecifiers];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)showConsentFlow:(id)a3
{
  v4 = a3;
  v5 = [(PSUICarrierSpaceGroup *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Showing carrier space consent flow", buf, 2u);
  }

  v6 = +[PSUICarrierSpaceManager sharedManager];
  v7 = [v6 userConsentFlowInfo];

  v8 = [v7 webURL];
  if ([v8 length])
  {
    v9 = [PSUICarrierSpaceOptInSplashScreen alloc];
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    v11 = [(PSUICarrierSpaceOptInSplashScreen *)v9 initWithParent:WeakRetained];
    optInSplashScreen = self->_optInSplashScreen;
    self->_optInSplashScreen = v11;

    objc_initWeak(buf, self);
    objc_initWeak(&location, self->_optInSplashScreen);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __41__PSUICarrierSpaceGroup_showConsentFlow___block_invoke;
    v17 = &unk_279BAA2F8;
    objc_copyWeak(&v19, buf);
    objc_copyWeak(&v20, &location);
    v18 = v7;
    [(PSUICarrierSpaceOptInSplashScreen *)self->_optInSplashScreen setContinueButtonAction:&v14];
    v13 = objc_loadWeakRetained(&self->_listController);
    [v13 showController:self->_optInSplashScreen animate:{1, v14, v15, v16, v17}];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }
}

void __41__PSUICarrierSpaceGroup_showConsentFlow___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained showTermsAndConditions:v2 consentFlowInfo:*(a1 + 32)];
}

- (void)showTermsAndConditions:(id)a3 consentFlowInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PSUICarrierSpaceGroup *)self getLogger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "Showing carrier terms and conditions", buf, 2u);
  }

  v9 = [v7 webURL];
  if ([v9 length])
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    v36 = 0;
    v37 = &v36;
    v38 = 0x2050000000;
    v11 = _MergedGlobals_67;
    v39 = _MergedGlobals_67;
    if (!_MergedGlobals_67)
    {
      *buf = MEMORY[0x277D85DD0];
      v32 = 3221225472;
      v33 = __getRemoteUIControllerClass_block_invoke;
      v34 = &unk_279BA9F68;
      v35 = &v36;
      __getRemoteUIControllerClass_block_invoke(buf);
      v11 = v37[3];
    }

    v12 = v11;
    _Block_object_dispose(&v36, 8);
    v13 = objc_alloc_init(v11);
    remoteUIController = self->_remoteUIController;
    self->_remoteUIController = v13;

    [(RemoteUIController *)self->_remoteUIController setDelegate:self];
    [(RemoteUIController *)self->_remoteUIController setHostViewController:v6];
    v15 = self->_remoteUIController;
    v16 = +[PSUICarrierSpaceManager getNSURLSessionConfiguration];
    [(RemoteUIController *)v15 setSessionConfiguration:v16];

    v17 = [MEMORY[0x277D75418] currentDevice];
    LODWORD(v16) = [v17 sf_isInternalInstall];

    if (v16)
    {
      v18 = [(RemoteUIController *)self->_remoteUIController loader];
      [v18 setAllowNonSecureHTTP:1];
    }

    objc_initWeak(buf, self);
    v19 = self->_remoteUIController;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __64__PSUICarrierSpaceGroup_showTermsAndConditions_consentFlowInfo___block_invoke;
    v29[3] = &unk_279BAA320;
    v29[4] = self;
    objc_copyWeak(&v30, buf);
    [(RemoteUIController *)v19 setHandlerForElementName:@"agree" handler:v29];
    v20 = self->_remoteUIController;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __64__PSUICarrierSpaceGroup_showTermsAndConditions_consentFlowInfo___block_invoke_65;
    v27[3] = &unk_279BAA320;
    v27[4] = self;
    objc_copyWeak(&v28, buf);
    [(RemoteUIController *)v20 setHandlerForElementName:@"disagree" handler:v27];
    v21 = self->_remoteUIController;
    v22 = [v7 postData];
    v23 = [v22 dataUsingEncoding:4];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __64__PSUICarrierSpaceGroup_showTermsAndConditions_consentFlowInfo___block_invoke_66;
    v25[3] = &unk_279BAA348;
    v25[4] = self;
    v24 = v10;
    v26 = v24;
    [(RemoteUIController *)v21 loadURL:v24 postBody:v23 completion:v25];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  else
  {
    v24 = [(PSUICarrierSpaceGroup *)self getLogger];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, v24, OS_LOG_TYPE_DEFAULT, "No carrier space consent url", buf, 2u);
    }
  }
}

void __64__PSUICarrierSpaceGroup_showTermsAndConditions_consentFlowInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658DE000, v2, OS_LOG_TYPE_DEFAULT, "Agree pressed for carrier terms and conditions", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained agreePressed];

  v4 = +[PSUICarrierSpaceManager sharedManager];
  [v4 setUserConsent:1];
}

void __64__PSUICarrierSpaceGroup_showTermsAndConditions_consentFlowInfo___block_invoke_65(uint64_t a1)
{
  v2 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658DE000, v2, OS_LOG_TYPE_DEFAULT, "Disagree pressed for carrier terms and conditions", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained disagreeOrCancelPressed];

  v4 = +[PSUICarrierSpaceManager sharedManager];
  [v4 setUserConsent:0];
}

void __64__PSUICarrierSpaceGroup_showTermsAndConditions_consentFlowInfo___block_invoke_66(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CCABB0] numberWithBool:a2];
      v10 = 138412802;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "Could not load consent url: %@, success: %@, error: %@", &v10, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)openURLWithSpecifier:(id)a3
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [a3 propertyForKey:@"url"];
  v5 = [v3 URLWithString:v4];

  [*MEMORY[0x277D76620] openURL:v5 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (void)agreePressed
{
  v3 = [(PSUICarrierSpaceGroup *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Agree pressed", v9, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_listController);
  v5 = [WeakRetained navigationController];
  [v5 dismissViewControllerAnimated:1 completion:0];

  v6 = objc_loadWeakRetained(&self->_listController);
  v7 = [v6 navigationController];
  v8 = [v7 popViewControllerAnimated:0];
}

- (void)disagreeOrCancelPressed
{
  v3 = [(PSUICarrierSpaceGroup *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Disagree or cancel pressed", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_listController);
  v5 = [WeakRetained navigationController];
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)remoteUIController:(id)a3 willPresentModalNavigationController:(id)a4
{
  v5 = MEMORY[0x277D751E0];
  v6 = a4;
  v9 = [[v5 alloc] initWithBarButtonSystemItem:1 target:self action:sel_disagreeOrCancelPressed];
  v7 = [v6 topViewController];

  v8 = [v7 navigationItem];
  [v8 setLeftBarButtonItem:v9 animated:0];
}

- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4
{
  v4 = [a4 statusCode] == 200;
  v5 = +[PSUICarrierSpaceManager sharedManager];
  [v5 userConsentAcknowledged:v4];
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

- (PSSpecifier)groupSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_groupSpecifier);

  return WeakRetained;
}

- (PSSpecifier)parentSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSpecifier);

  return WeakRetained;
}

@end