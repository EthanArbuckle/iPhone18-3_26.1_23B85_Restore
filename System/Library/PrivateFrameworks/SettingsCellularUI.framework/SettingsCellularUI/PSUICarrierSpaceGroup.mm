@interface PSUICarrierSpaceGroup
- (PSListController)listController;
- (PSSpecifier)groupSpecifier;
- (PSSpecifier)parentSpecifier;
- (PSUICarrierSpaceGroup)initWithListController:(id)controller groupSpecifier:(id)specifier parentSpecifier:(id)parentSpecifier ctClient:(id)client;
- (id)carrierServicesSpecifier;
- (id)cellularPlansSpecifier;
- (id)descriptionForPlans:(id)plans;
- (id)descriptionForUsage:(id)usage;
- (id)usageSpecifier;
- (void)agreePressed;
- (void)carrierSpaceChanged;
- (void)disagreeOrCancelPressed;
- (void)newCarrierNotification;
- (void)openURLWithSpecifier:(id)specifier;
- (void)prepareSpecifiers;
- (void)refreshSpecifiers;
- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response;
- (void)remoteUIController:(id)controller willPresentModalNavigationController:(id)navigationController;
- (void)setIsSubscriptionDataPreferred;
- (void)showConsentFlow:(id)flow;
- (void)showTermsAndConditions:(id)conditions consentFlowInfo:(id)info;
@end

@implementation PSUICarrierSpaceGroup

- (PSUICarrierSpaceGroup)initWithListController:(id)controller groupSpecifier:(id)specifier parentSpecifier:(id)parentSpecifier ctClient:(id)client
{
  controllerCopy = controller;
  specifierCopy = specifier;
  parentSpecifierCopy = parentSpecifier;
  clientCopy = client;
  v26.receiver = self;
  v26.super_class = PSUICarrierSpaceGroup;
  v14 = [(PSUICarrierSpaceGroup *)&v26 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_listController, controllerCopy);
    objc_storeWeak(&v15->_groupSpecifier, specifierCopy);
    v16 = objc_storeWeak(&v15->_parentSpecifier, parentSpecifierCopy);
    v17 = [parentSpecifierCopy propertyForKey:*MEMORY[0x277D40128]];
    subscriptionContext = v15->_subscriptionContext;
    v15->_subscriptionContext = v17;

    v19 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v15->_subscriptionContext];
    instance = [v19 instance];
    stringValue = [instance stringValue];
    instance = v15->_instance;
    v15->_instance = stringValue;

    objc_storeStrong(&v15->_ctClient, client);
    [(CoreTelephonyClient *)v15->_ctClient setDelegate:v15];
    [(PSUICarrierSpaceGroup *)v15 setIsSubscriptionDataPreferred];
    [(PSUICarrierSpaceGroup *)v15 prepareSpecifiers];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel_carrierSpaceChanged name:0x287737B98 object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v15 selector:sel_newCarrierNotification name:@"PSNewCarrierNotification" object:0];
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

  cellularPlansSpecifier = [(PSUICarrierSpaceGroup *)self cellularPlansSpecifier];
  if (cellularPlansSpecifier)
  {
    v5 = self->_specifersByID;
    identifier = [cellularPlansSpecifier identifier];
    [(NSDictionary *)v5 setValue:cellularPlansSpecifier forKey:identifier];
  }

  usageSpecifier = [(PSUICarrierSpaceGroup *)self usageSpecifier];
  v8 = usageSpecifier;
  if (usageSpecifier)
  {
    v9 = self->_specifersByID;
    identifier2 = [usageSpecifier identifier];
    [(NSDictionary *)v9 setValue:v8 forKey:identifier2];
  }

  carrierServicesSpecifier = [(PSUICarrierSpaceGroup *)self carrierServicesSpecifier];
  v12 = carrierServicesSpecifier;
  if (carrierServicesSpecifier)
  {
    v13 = self->_specifersByID;
    identifier3 = [carrierServicesSpecifier identifier];
    [(NSDictionary *)v13 setValue:v12 forKey:identifier3];
  }
}

- (id)carrierServicesSpecifier
{
  if (self->_isSubscriptionDataPreferred)
  {
    capabilities = [(PSUICarrierSpaceGroup *)self capabilities];
    if ([capabilities supportsApplications])
    {
      v4 = +[PSUICarrierSpaceManager sharedManager];
      appsInfo = [v4 appsInfo];
      appsList = [appsInfo appsList];
      v7 = [appsList count] != 0;
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
      getLogger = [(PSUICarrierSpaceGroup *)self getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 0;
        _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "My account specifier found. Returning My Account Specifier for Carrier Services.", v34, 2u);
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

      getLogger2 = [(PSUICarrierSpaceGroup *)self getLogger];
      v27 = os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (v27)
        {
          *v33 = 0;
          _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "MMS Info Specifier found. Returning MMS Info specifier for Carrier Services.", v33, 2u);
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
          _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "No specifier found for Carrier Services.", v32, 2u);
        }
      }
    }
  }

  else
  {
    getLogger3 = [(PSUICarrierSpaceGroup *)self getLogger];
    if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, getLogger3, OS_LOG_TYPE_DEFAULT, "Carrier services or apps available. Returning PSLinkListCell specifier for Carrier Services.", buf, 2u);
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
  capabilities = [v3 capabilities];
  [(PSUICarrierSpaceGroup *)self setCapabilities:capabilities];

  hasUserConsent = [v3 hasUserConsent];
  capabilities2 = [(PSUICarrierSpaceGroup *)self capabilities];
  if ([capabilities2 supportsPlans])
  {
    if (hasUserConsent)
    {
      plansInfo = [v3 plansInfo];
      planGroupsList = [plansInfo planGroupsList];
      v9 = [planGroupsList count];

      if (!v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    planChangeIsRestricted = [v3 planChangeIsRestricted];
    v12 = [(PSUICarrierSpaceGroup *)self descriptionForPlans:0];
    v13 = [v12 length];

    if (!planChangeIsRestricted || v13)
    {
      v14 = planChangeIsRestricted | ~hasUserConsent;
      if (planChangeIsRestricted)
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

      if ((hasUserConsent & 1) == 0)
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
  capabilities = [v3 capabilities];
  [(PSUICarrierSpaceGroup *)self setCapabilities:capabilities];

  hasUserConsent = [v3 hasUserConsent];
  capabilities2 = [(PSUICarrierSpaceGroup *)self capabilities];
  if ([capabilities2 supportsUsage])
  {
    if ((hasUserConsent & 1) == 0)
    {

      v10 = 0;
      goto LABEL_10;
    }

    usageInfo = [v3 usageInfo];
    accountMetrics = [usageInfo accountMetrics];
    v9 = [accountMetrics count];

    if (v9)
    {
      v10 = objc_opt_class();
LABEL_10:
      v12 = MEMORY[0x277D3FAD8];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"USAGE" value:&stru_287733598 table:@"CarrierSpace"];
      v11 = [v12 preferenceSpecifierNamed:v14 target:self set:0 get:sel_descriptionForUsage_ detail:v10 cell:2 edit:0];

      if ((hasUserConsent & 1) == 0)
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
  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  activeDataSubscriptionContext = [mEMORY[0x277D4D868] activeDataSubscriptionContext];

  if (!self->_subscriptionContext)
  {
    getLogger = [(PSUICarrierSpaceGroup *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Subscription is not set", buf, 2u);
    }

    goto LABEL_11;
  }

  if (activeDataSubscriptionContext)
  {
    uuid = [activeDataSubscriptionContext uuid];
    uuid2 = [(CTXPCServiceSubscriptionContext *)self->_subscriptionContext uuid];
    v7 = [uuid isEqual:uuid2];

    if (v7)
    {
      self->_isSubscriptionDataPreferred = 1;
      getLogger = [(PSUICarrierSpaceGroup *)self getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v9 = "Subscription is data preferred";
        v10 = &v12;
LABEL_10:
        _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
      }
    }

    else
    {
      getLogger = [(PSUICarrierSpaceGroup *)self getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
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
  getLogger = [(PSUICarrierSpaceGroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PSUICarrierSpaceGroup newCarrierNotification]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s reloading specifiers", &v5, 0xCu);
  }

  [(PSUICarrierSpaceGroup *)self refreshSpecifiers];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)descriptionForPlans:(id)plans
{
  v3 = +[PSUICarrierSpaceManager sharedManager];
  hasUserConsent = [v3 hasUserConsent];

  if (!hasUserConsent)
  {
    planLabel = &stru_287733598;
    goto LABEL_13;
  }

  v5 = +[PSUICarrierSpaceManager sharedManager];
  subscribedPlanOptions = [v5 subscribedPlanOptions];
  subscribedDomesticPlanOptions = [v5 subscribedDomesticPlanOptions];
  if ([subscribedPlanOptions count])
  {
    if ([subscribedPlanOptions count] == 1)
    {
      v8 = subscribedPlanOptions;
    }

    else
    {
      if ([subscribedDomesticPlanOptions count] != 1)
      {
        v11 = MEMORY[0x277CCACA8];
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = [v10 localizedStringForKey:@"%@_PLANS" value:&stru_287733598 table:@"CarrierSpace"];
        v13 = MEMORY[0x277CCABB8];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(subscribedPlanOptions, "count")}];
        v15 = [v13 localizedStringFromNumber:v14 numberStyle:1];
        planLabel = [v11 stringWithFormat:v12, v15];

        goto LABEL_11;
      }

      v8 = subscribedDomesticPlanOptions;
    }

    v10 = [v8 objectAtIndexedSubscript:0];
    planLabel = [v10 planLabel];
LABEL_11:

    goto LABEL_12;
  }

  planLabel = &stru_287733598;
LABEL_12:

LABEL_13:

  return planLabel;
}

- (id)descriptionForUsage:(id)usage
{
  v3 = +[PSUICarrierSpaceManager sharedManager];
  hasUserConsent = [v3 hasUserConsent];

  if (hasUserConsent)
  {
    v5 = +[PSUICarrierSpaceManager sharedManager];
    planMetrics = [v5 planMetrics];
    if ([planMetrics count] == 1)
    {
      v7 = [planMetrics objectAtIndexedSubscript:0];
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
  getLogger = [(PSUICarrierSpaceGroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PSUICarrierSpaceGroup carrierSpaceChanged]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s reloading specifiers", &v5, 0xCu);
  }

  [(PSUICarrierSpaceGroup *)self refreshSpecifiers];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)showConsentFlow:(id)flow
{
  flowCopy = flow;
  getLogger = [(PSUICarrierSpaceGroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Showing carrier space consent flow", buf, 2u);
  }

  v6 = +[PSUICarrierSpaceManager sharedManager];
  userConsentFlowInfo = [v6 userConsentFlowInfo];

  webURL = [userConsentFlowInfo webURL];
  if ([webURL length])
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
    v18 = userConsentFlowInfo;
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

- (void)showTermsAndConditions:(id)conditions consentFlowInfo:(id)info
{
  conditionsCopy = conditions;
  infoCopy = info;
  getLogger = [(PSUICarrierSpaceGroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Showing carrier terms and conditions", buf, 2u);
  }

  webURL = [infoCopy webURL];
  if ([webURL length])
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:webURL];
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
    [(RemoteUIController *)self->_remoteUIController setHostViewController:conditionsCopy];
    v15 = self->_remoteUIController;
    v16 = +[PSUICarrierSpaceManager getNSURLSessionConfiguration];
    [(RemoteUIController *)v15 setSessionConfiguration:v16];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    LODWORD(v16) = [currentDevice sf_isInternalInstall];

    if (v16)
    {
      loader = [(RemoteUIController *)self->_remoteUIController loader];
      [loader setAllowNonSecureHTTP:1];
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
    postData = [infoCopy postData];
    v23 = [postData dataUsingEncoding:4];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __64__PSUICarrierSpaceGroup_showTermsAndConditions_consentFlowInfo___block_invoke_66;
    v25[3] = &unk_279BAA348;
    v25[4] = self;
    getLogger2 = v10;
    v26 = getLogger2;
    [(RemoteUIController *)v21 loadURL:getLogger2 postBody:v23 completion:v25];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  else
  {
    getLogger2 = [(PSUICarrierSpaceGroup *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "No carrier space consent url", buf, 2u);
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

- (void)openURLWithSpecifier:(id)specifier
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [specifier propertyForKey:@"url"];
  v5 = [v3 URLWithString:v4];

  [*MEMORY[0x277D76620] openURL:v5 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (void)agreePressed
{
  getLogger = [(PSUICarrierSpaceGroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Agree pressed", v9, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_listController);
  navigationController = [WeakRetained navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];

  v6 = objc_loadWeakRetained(&self->_listController);
  navigationController2 = [v6 navigationController];
  v8 = [navigationController2 popViewControllerAnimated:0];
}

- (void)disagreeOrCancelPressed
{
  getLogger = [(PSUICarrierSpaceGroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Disagree or cancel pressed", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_listController);
  navigationController = [WeakRetained navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)remoteUIController:(id)controller willPresentModalNavigationController:(id)navigationController
{
  v5 = MEMORY[0x277D751E0];
  navigationControllerCopy = navigationController;
  v9 = [[v5 alloc] initWithBarButtonSystemItem:1 target:self action:sel_disagreeOrCancelPressed];
  topViewController = [navigationControllerCopy topViewController];

  navigationItem = [topViewController navigationItem];
  [navigationItem setLeftBarButtonItem:v9 animated:0];
}

- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response
{
  v4 = [response statusCode] == 200;
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