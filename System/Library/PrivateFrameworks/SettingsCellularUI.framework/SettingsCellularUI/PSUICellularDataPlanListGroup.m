@interface PSUICellularDataPlanListGroup
+ (id)groupWithListController:(id)a3 groupSpecifier:(id)a4;
- (PSListController)listController;
- (PSSpecifier)groupSpecifier;
- (PSUICellularDataPlanListGroup)initWithListController:(id)a3 groupSpecifier:(id)a4;
- (UIViewController)firstViewController;
- (id)_populateAliasesFromDataPlans:(id)a3;
- (id)specifiers;
- (void)_infoSymbolTapped:(id)a3;
- (void)_showSpinner:(BOOL)a3;
- (void)_showWifiAlert;
- (void)addNewPlanPressed:(id)a3;
- (void)listController:(id)a3 didSelectSpecifier:(id)a4;
- (void)selectPlanWithSpecifier:(id)a3;
- (void)setUpPendingTransferPlanSpecifiers:(id)a3;
- (void)simSetupFlowCompleted:(unint64_t)a3;
- (void)turnOnLocationServicesPressed:(id)a3;
@end

@implementation PSUICellularDataPlanListGroup

+ (id)groupWithListController:(id)a3 groupSpecifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[PSUICellularDataPlanListGroup key];
  v8 = +[SSFlowHostCache sharedInstance];
  v9 = [v8 objectForKey:v7];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = [[PSUICellularDataPlanListGroup alloc] initWithListController:v5 groupSpecifier:v6];
  }

  v11 = v10;

  return v11;
}

- (PSUICellularDataPlanListGroup)initWithListController:(id)a3 groupSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PSUICellularDataPlanListGroup;
  v8 = [(PSUICellularDataPlanListGroup *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_listController, v6);
    objc_storeWeak(&v9->_groupSpecifier, v7);
  }

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 addObserver:v9 selector:sel__infoSymbolTapped_ name:@"PSDataPlanInfoSymbolTappedNotification" object:0];

  return v9;
}

- (void)turnOnLocationServicesPressed:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUICellularDataPlanListGroup *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 URL];
    v10 = 136315394;
    v11 = "[PSUICellularDataPlanListGroup turnOnLocationServicesPressed:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v10, 0x16u);
  }

  v7 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v8 = [v4 URL];
  [v7 openSensitiveURL:v8 withOptions:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)specifiers
{
  v100 = *MEMORY[0x277D85DE8];
  v84 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = +[PSUICellularPlanManagerCache sharedInstance];
  v80 = [v2 planItems];

  v3 = [(PSUICellularDataPlanListGroup *)self _populateAliasesFromDataPlans:v80];
  v4 = [MEMORY[0x277D4D868] sharedInstance];
  v79 = [v4 subscriptionsInUse];

  if ([v79 count])
  {
    v83 = [v79 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = [MEMORY[0x277D4D868] sharedInstance];
    v6 = [v5 subscriptionContexts];
    v83 = [v6 objectAtIndexedSubscript:0];
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v3;
  v7 = [obj countByEnumeratingWithState:&v86 objects:v99 count:16];
  if (v7)
  {
    v8 = *v87;
    v9 = *MEMORY[0x277D3FE58];
    v10 = *MEMORY[0x277D3FE70];
    v11 = *MEMORY[0x277D40128];
    v81 = *MEMORY[0x277D40090];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v87 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v86 + 1) + 8 * i);
        v14 = MEMORY[0x277D3FAD8];
        v15 = [v13 item];
        v16 = [v15 name];
        v17 = [v14 preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:3 edit:0];

        [v17 setProperty:objc_opt_class() forKey:v9];
        v18 = [v13 item];
        v19 = [PSUICellularPlanUniversalReference referenceFromPlanItem:v18];
        [v17 setProperty:v19 forKey:v10];

        [v17 setProperty:v83 forKey:v11];
        [v17 setUserInfo:v13];
        v20 = [v13 item];
        LODWORD(v19) = [v20 isSelected];

        if (v19)
        {
          [v84 insertObject:v17 atIndex:0];
          WeakRetained = objc_loadWeakRetained(&self->_groupSpecifier);
          [WeakRetained setProperty:v17 forKey:v81];
        }

        else
        {
          [v84 addObject:v17];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v86 objects:v99 count:16];
    }

    while (v7);
  }

  if (+[SettingsCellularUtils shouldShowPendingTransferPlanOnPad])
  {
    [(PSUICellularDataPlanListGroup *)self setUpPendingTransferPlanSpecifiers:v84];
  }

  v22 = +[PSUICellularPlanManagerCache sharedInstance];
  v23 = [v22 shouldShowAddPlan];

  if (v23)
  {
    v24 = MEMORY[0x277D3FAD8];
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"CELLULAR_PLAN_NEW" value:&stru_287733598 table:@"Cellular"];
    v27 = [v24 preferenceSpecifierNamed:v26 target:self set:0 get:0 detail:0 cell:13 edit:0];
    addNewPlanSpecifier = self->_addNewPlanSpecifier;
    self->_addNewPlanSpecifier = v27;

    [(PSSpecifier *)self->_addNewPlanSpecifier setIdentifier:@"CELLULAR_PLAN_NEW"];
    [(PSSpecifier *)self->_addNewPlanSpecifier setButtonAction:sel_addNewPlanPressed_];
    [v84 addObject:self->_addNewPlanSpecifier];
    v29 = +[PSUICellularPlanManagerCache sharedInstance];
    LODWORD(v25) = [v29 isSingleActivationCodeFlowSupported];

    if (v25)
    {
      v95 = 0;
      v96 = &v95;
      v97 = 0x2020000000;
      v30 = getCLCopyAppsUsingLocationSymbolLoc_ptr_0;
      v98 = getCLCopyAppsUsingLocationSymbolLoc_ptr_0;
      if (!getCLCopyAppsUsingLocationSymbolLoc_ptr_0)
      {
        *buf = MEMORY[0x277D85DD0];
        v91 = 3221225472;
        v92 = __getCLCopyAppsUsingLocationSymbolLoc_block_invoke_0;
        v93 = &unk_279BA9F68;
        v94 = &v95;
        v31 = CoreLocationLibrary_0();
        v32 = dlsym(v31, "CLCopyAppsUsingLocation");
        *(v94[1] + 24) = v32;
        getCLCopyAppsUsingLocationSymbolLoc_ptr_0 = *(v94[1] + 24);
        v30 = v96[3];
      }

      _Block_object_dispose(&v95, 8);
      if (!v30)
      {
        dlerror();
        abort_report_np();
        __break(1u);
      }

      v33 = v30();
      v34 = [v33 objectForKey:@"/System/Library/Frameworks/CoreTelephony.framework"];
      v35 = [getCLLocationManagerClass_0() locationServicesEnabled];
      if (v35 & [getCLLocationManagerClass_0() isEntityAuthorizedForLocationDictionary:v34])
      {
        v36 = objc_loadWeakRetained(&self->_groupSpecifier);
        v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v38 = [v37 localizedStringForKey:@"CELLULAR_SETUP_DATA_COLLECTION_DISCLOSURE" value:&stru_287733598 table:@"Cellular"];
        [v36 setProperty:v38 forKey:*MEMORY[0x277D3FF88]];
      }

      else
      {
        v39 = [(PSUICellularDataPlanListGroup *)self getLogger];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2658DE000, v39, OS_LOG_TYPE_DEFAULT, "Cellular: Location Services off", buf, 2u);
        }

        if (v35)
        {
          v40 = @"prefs:root=Privacy&path=LOCATION/SYSTEM_SERVICES";
        }

        else
        {
          v40 = @"prefs:root=Privacy&path=LOCATION";
        }

        v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v36 = [v41 localizedStringForKey:@"TURN_ON_LOCATION_SERVICES_FAUX_CARD_SCANNER_FOOTER_HYPERLINK_SUBSTRING" value:&stru_287733598 table:@"Cellular"];

        v42 = MEMORY[0x277CCACA8];
        v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v44 = [v43 localizedStringForKey:@"TURN_ON_LOCATION_SERVICES_FAUX_CARD_SCANNER_FOOTER_%@" value:&stru_287733598 table:@"Cellular"];
        v37 = [v42 stringWithFormat:v44, v36];

        v45 = objc_loadWeakRetained(&self->_groupSpecifier);
        v46 = objc_opt_class();
        v47 = NSStringFromClass(v46);
        [v45 setProperty:v47 forKey:*MEMORY[0x277D3FF48]];

        v48 = objc_loadWeakRetained(&self->_groupSpecifier);
        [v48 setProperty:v37 forKey:*MEMORY[0x277D3FF70]];

        v49 = objc_loadWeakRetained(&self->_groupSpecifier);
        v102.location = [v37 rangeOfString:v36];
        v50 = NSStringFromRange(v102);
        [v49 setProperty:v50 forKey:*MEMORY[0x277D3FF58]];

        v51 = objc_loadWeakRetained(&self->_groupSpecifier);
        v52 = [MEMORY[0x277CBEBC0] URLWithString:v40];
        [v51 setProperty:v52 forKey:*MEMORY[0x277D3FF78]];

        v53 = objc_loadWeakRetained(&self->_groupSpecifier);
        v54 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
        [v53 setProperty:v54 forKey:*MEMORY[0x277D3FF68]];

        v55 = objc_loadWeakRetained(&self->_groupSpecifier);
        [v55 setProperty:@"turnOnLocationServicesPressed:" forKey:*MEMORY[0x277D3FF50]];

        v38 = objc_loadWeakRetained(&self->_groupSpecifier);
        [v38 setProperty:v37 forKey:*MEMORY[0x277D3FF88]];
      }
    }

    else
    {
      v33 = objc_loadWeakRetained(&self->_groupSpecifier);
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v36 = [v34 localizedStringForKey:@"CELLULAR_SETUP_DATA_COLLECTION_DISCLOSURE" value:&stru_287733598 table:@"Cellular"];
      [v33 setProperty:v36 forKey:*MEMORY[0x277D3FF88]];
    }
  }

  v56 = [MEMORY[0x277D75418] currentDevice];
  v57 = [v56 userInterfaceIdiom];

  if ((v57 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v58 = +[PSUICellularPlanManagerCache sharedInstance];
    v59 = [v58 isAnyLocalFlowTypeSupported];

    if ((v59 & 1) == 0)
    {
      v60 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v61 = [v60 localizedStringForKey:@"LEARN_MORE" value:&stru_287733598 table:@"Cellular"];

      v62 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v63 = [v62 localizedStringForKey:@"APPLE_SIM_MESSAGE" value:&stru_287733598 table:@"Cellular"];
      v64 = [v63 stringByAppendingString:@"\n"];
      v65 = [v64 stringByAppendingString:v61];

      v66 = objc_loadWeakRetained(&self->_groupSpecifier);
      [v66 setProperty:v65 forKey:*MEMORY[0x277D3FF70]];

      v67 = objc_loadWeakRetained(&self->_groupSpecifier);
      v103.location = [v65 rangeOfString:v61];
      v68 = NSStringFromRange(v103);
      [v67 setProperty:v68 forKey:*MEMORY[0x277D3FF58]];

      v69 = objc_loadWeakRetained(&self->_groupSpecifier);
      v70 = objc_opt_class();
      v71 = NSStringFromClass(v70);
      [v69 setProperty:v71 forKey:*MEMORY[0x277D3FF48]];

      v72 = objc_loadWeakRetained(&self->_groupSpecifier);
      v73 = MEMORY[0x277CBEBC0];
      v74 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v75 = [v74 localizedStringForKey:@"APPLE_SIM_LEARN_MORE_URL" value:&stru_287733598 table:@"Cellular"];
      v76 = [v73 URLWithString:v75];
      [v72 setProperty:v76 forKey:*MEMORY[0x277D3FF78]];
    }
  }

  v77 = *MEMORY[0x277D85DE8];

  return v84;
}

- (void)setUpPendingTransferPlanSpecifiers:(id)a3
{
  v3 = a3;
  v5 = [[PSUIPlanPendingTransferListGroup alloc] initWithListController:0 groupSpecifier:0];
  v4 = [(PSUIPlanPendingTransferListGroup *)v5 specifiers];
  [v3 addObjectsFromArray:v4];
}

- (void)listController:(id)a3 didSelectSpecifier:(id)a4
{
  v11 = 0;
  v6 = a3;
  [v6 getGroup:&v11 row:0 ofSpecifier:a4];
  v7 = [v6 specifierAtIndex:{objc_msgSend(v6, "indexOfGroup:", v11)}];

  v8 = [v7 propertyForKey:*MEMORY[0x277D3FFE8]];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = [v7 propertyForKey:*MEMORY[0x277D40090]];
    [(PSUICellularDataPlanListGroup *)self selectPlanWithSpecifier:v10];
  }
}

- (void)addNewPlanPressed:(id)a3
{
  v29[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[PSUICellularPlanManagerCache sharedInstance];
  v6 = [v5 isCarrierItemFlowSupported];

  if (v6)
  {
    v7 = _os_feature_enabled_impl();
    v8 = objc_alloc(MEMORY[0x277D757A0]);
    v9 = off_279BA9320;
    if (!v7)
    {
      v9 = off_279BA9330;
    }

    v10 = objc_alloc_init(*v9);
    v11 = [v8 initWithRootViewController:v10];

    [v11 setModalPresentationStyle:2];
    v12 = [(PSUICellularDataPlanListGroup *)self listController];
    [v12 presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    v13 = [(PSUICellularDataPlanListGroup *)self getLogger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "CarrierItemFlow is not supported.", &buf, 2u);
    }

    if (!self->_flow || (-[PSUICellularDataPlanListGroup listController](self, "listController"), v14 = objc_claimAutoreleasedReturnValue(), [v14 presentedViewController], v15 = objc_claimAutoreleasedReturnValue(), v16 = v15 == 0, v15, v14, v16))
    {
      if ([SettingsCellularUtils noDataConnectivityAvailableWithBSRecommendationCheck:0])
      {
        v18 = [(PSUICellularDataPlanListGroup *)self getLogger];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_2658DE000, v18, OS_LOG_TYPE_DEFAULT, "Data connectivity is not available to set up eSIM(s) on iPad", &buf, 2u);
        }

        [(PSUICellularDataPlanListGroup *)self _showWifiAlert];
      }

      else
      {
        [v4 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
        [(PSUICellularDataPlanListGroup *)self _showSpinner:1];
        v28 = *MEMORY[0x277D49548];
        v19 = [MEMORY[0x277CCABB0] numberWithInteger:3];
        v29[0] = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];

        v21 = [MEMORY[0x277D49530] flowWithOptions:v20];
        flow = self->_flow;
        self->_flow = v21;

        [(TSSIMSetupFlow *)self->_flow setDelegate:self];
        objc_initWeak(&buf, self);
        v23 = self->_flow;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __51__PSUICellularDataPlanListGroup_addNewPlanPressed___block_invoke;
        v25[3] = &unk_279BA9EC8;
        objc_copyWeak(&v26, &buf);
        v25[4] = self;
        [(TSSIMSetupFlow *)v23 firstViewController:v25];
        objc_destroyWeak(&v26);
        objc_destroyWeak(&buf);
      }
    }

    else
    {
      v17 = [(PSUICellularDataPlanListGroup *)self getLogger];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_2658DE000, v17, OS_LOG_TYPE_ERROR, "Duplicate request to launch SimSetupSupport", &buf, 2u);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __51__PSUICellularDataPlanListGroup_addNewPlanPressed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setFirstViewController:v3];
    v6 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
    [v6 setModalPresentationStyle:2];
    v7 = [v5 listController];
    [v7 presentViewController:v6 animated:1 completion:0];

    [*(a1 + 32) _showSpinner:0];
    v8 = +[SSFlowHostCache sharedInstance];
    v9 = +[PSUICellularDataPlanListGroup key];
    [v8 setObject:v5 forKey:v9];
  }

  else
  {
    v6 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2658DE000, v6, OS_LOG_TYPE_ERROR, "Invalid PSUICellularDataPlanListGroup", v10, 2u);
    }
  }
}

- (void)selectPlanWithSpecifier:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 item];
  v6 = [(PSUICellularDataPlanListGroup *)self getLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[PSUICellularDataPlanListGroup selectPlanWithSpecifier:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "%s selected plan %@", &v9, 0x16u);
  }

  v7 = +[PSUICellularPlanManagerCache sharedInstance];
  [v7 setSelectedPlanItem:v5];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)simSetupFlowCompleted:(unint64_t)a3
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PSUICellularDataPlanListGroup_simSetupFlowCompleted___block_invoke;
  block[3] = &unk_279BAA050;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __55__PSUICellularDataPlanListGroup_simSetupFlowCompleted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v3 = [*(a1 + 32) addNewPlanSpecifier];
    [v3 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];

    v4 = objc_loadWeakRetained((*(a1 + 32) + 40));
    v5 = [v4 navigationController];
    [v5 dismissViewControllerAnimated:1 completion:0];

    v6 = objc_loadWeakRetained((*(a1 + 32) + 40));
    v7 = [*(a1 + 32) addNewPlanSpecifier];
    [v6 reloadSpecifier:v7];

    v8 = *(a1 + 32);
    v9 = *(v8 + 56);
    *(v8 + 56) = 0;

    v10 = +[SSFlowHostCache sharedInstance];
    v11 = +[PSUICellularDataPlanListGroup key];
    [v10 removeObjectForKey:v11];

    WeakRetained = v12;
  }
}

- (void)_showSpinner:(BOOL)a3
{
  v3 = a3;
  if (!self->_spinner)
  {
    v7 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = self->_spinner;
    self->_spinner = v7;

    v9 = [(PSUICellularDataPlanListGroup *)self addNewPlanSpecifier];
    v10 = [v9 propertyForKey:*MEMORY[0x277D40148]];
    v11 = [v10 accessoryView];
    originAccessoryView = self->_originAccessoryView;
    self->_originAccessoryView = v11;

    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    [(UIActivityIndicatorView *)self->_spinner stopAnimating];
    v13 = [(PSUICellularDataPlanListGroup *)self addNewPlanSpecifier];
    v14 = [v13 propertyForKey:*MEMORY[0x277D40148]];
    [v14 setAccessoryView:self->_originAccessoryView];

    goto LABEL_6;
  }

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [(PSUICellularDataPlanListGroup *)self addNewPlanSpecifier];
  v6 = [v5 propertyForKey:*MEMORY[0x277D40148]];
  [v6 setAccessoryView:self->_spinner];

  [(UIActivityIndicatorView *)self->_spinner startAnimating];
LABEL_6:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PSUICellularDataPlanListGroup__showSpinner___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__PSUICellularDataPlanListGroup__showSpinner___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v2 = [*(a1 + 32) addNewPlanSpecifier];
  [WeakRetained reloadSpecifier:v2];
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

  v15 = [MEMORY[0x277D750F8] actionWithTitle:v14 style:0 handler:&__block_literal_global_8];
  [v10 addAction:v15];
  v16 = MEMORY[0x277D750F8];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"CANCEL" value:&stru_287733598 table:@"Gemini-Gemini"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __47__PSUICellularDataPlanListGroup__showWifiAlert__block_invoke_2;
  v21[3] = &unk_279BA9E70;
  v21[4] = self;
  v19 = [v16 actionWithTitle:v18 style:1 handler:v21];

  [v10 addAction:v19];
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  [WeakRetained presentViewController:v10 animated:1 completion:0];
}

void __47__PSUICellularDataPlanListGroup__showWifiAlert__block_invoke()
{
  v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=WIFI"];
  [v1 openSensitiveURL:v0 withOptions:0];
}

void __47__PSUICellularDataPlanListGroup__showWifiAlert__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2658DE000, v1, OS_LOG_TYPE_DEFAULT, "user canceled setting up eSIM", v2, 2u);
  }
}

- (void)_infoSymbolTapped:(id)a3
{
  v4 = [a3 object];
  if (v4)
  {
    v7 = v4;
    v5 = [[PSUIDataPlanDetailsController alloc] initWithParentSpecifier:v4];
    [(PSUIDataPlanDetailsController *)v5 setSpecifier:v7];
    v6 = [(PSUICellularDataPlanListGroup *)self listController];
    [v6 showController:v5 animate:1];
  }

  MEMORY[0x2821F96F8]();
}

- (id)_populateAliasesFromDataPlans:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v69;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v69 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v68 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 length];

        if (v11)
        {
          v12 = [v9 name];
        }

        else
        {
          v13 = [v9 type];
          v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v15 = v14;
          if (v13)
          {
            v16 = @"CARRIER";
          }

          else
          {
            v16 = @"CELLULAR_PLAN_STATUS_SIM_CARD";
          }

          v12 = [v14 localizedStringForKey:v16 value:&stru_287733598 table:@"Cellular"];
        }

        v17 = [v4 objectForKeyedSubscript:v12];

        if (!v17)
        {
          v18 = [MEMORY[0x277CBEB18] array];
          [v4 setObject:v18 forKeyedSubscript:v12];
        }

        v19 = [v4 objectForKeyedSubscript:v12];
        [v19 addObject:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
    }

    while (v6);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v20 = v4;
  v21 = [v20 countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v65;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v65 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [v20 objectForKeyedSubscript:*(*(&v64 + 1) + 8 * j)];
        [v25 sortUsingComparator:&__block_literal_global_127];
      }

      v22 = [v20 countByEnumeratingWithState:&v64 objects:v74 count:16];
    }

    while (v22);
  }

  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v27 = v20;
  v28 = [v27 countByEnumeratingWithState:&v60 objects:v73 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v61;
    v51 = *v61;
    v52 = v27;
    do
    {
      v31 = 0;
      v53 = v29;
      do
      {
        if (*v61 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v60 + 1) + 8 * v31);
        v33 = [v27 objectForKeyedSubscript:v32];
        v34 = [v33 count];

        if (v34 == 1)
        {
          v35 = [SCCellularPlanItem alloc];
          v36 = [v27 objectForKeyedSubscript:v32];
          v37 = [v36 objectAtIndexedSubscript:0];
          v38 = [(SCCellularPlanItem *)v35 initWithAlias:v37 alias:v32];

          [v26 addObject:v38];
        }

        else
        {
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v38 = [v27 objectForKeyedSubscript:v32];
          v39 = [(SCCellularPlanItem *)v38 countByEnumeratingWithState:&v56 objects:v72 count:16];
          if (v39)
          {
            v40 = v39;
            v55 = v31;
            v41 = *v57;
            v42 = 1;
            do
            {
              v43 = 0;
              v44 = v42;
              do
              {
                if (*v57 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v45 = *(*(&v56 + 1) + 8 * v43);
                v42 = (v44 + 1);
                v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %d", v32, v44];
                v47 = [[SCCellularPlanItem alloc] initWithAlias:v45 alias:v46];
                [v26 addObject:v47];

                ++v43;
                v44 = v42;
              }

              while (v40 != v43);
              v40 = [(SCCellularPlanItem *)v38 countByEnumeratingWithState:&v56 objects:v72 count:16];
            }

            while (v40);
            v30 = v51;
            v27 = v52;
            v29 = v53;
            v31 = v55;
          }
        }

        ++v31;
      }

      while (v31 != v29);
      v29 = [v27 countByEnumeratingWithState:&v60 objects:v73 count:16];
    }

    while (v29);
  }

  v48 = [v26 copy];
  v49 = *MEMORY[0x277D85DE8];

  return v48;
}

uint64_t __63__PSUICellularDataPlanListGroup__populateAliasesFromDataPlans___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 compare:v6];
  return v7;
}

- (PSSpecifier)groupSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_groupSpecifier);

  return WeakRetained;
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

- (UIViewController)firstViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_firstViewController);

  return WeakRetained;
}

@end