@interface PSUICarrierSpacePlansController
- (PSUICarrierSpacePlansController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)detailForPlanOption:(id)a3;
- (id)specifiers;
- (id)stringFromGroupCategory:(int64_t)a3;
- (void)carrierSpaceChanged;
- (void)dismissPlanDetail;
- (void)moreDetailsButtonTapped:(id)a3;
- (void)remoteUIController:(id)a3 willPresentModalNavigationController:(id)a4;
- (void)simStatusChanged;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation PSUICarrierSpacePlansController

- (void)simStatusChanged
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICarrierSpacePlansController *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[PSUICarrierSpacePlansController simStatusChanged]";
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
  v3 = [(PSUICarrierSpacePlansController *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[PSUICarrierSpacePlansController carrierSpaceChanged]";
    v7 = 2112;
    v8 = 0x287737B98;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s received notification: %@", &v5, 0x16u);
  }

  [(PSUICarrierSpacePlansController *)self reloadSpecifiers];
  v4 = *MEMORY[0x277D85DE8];
}

- (PSUICarrierSpacePlansController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = PSUICarrierSpacePlansController;
  v8 = [(PSUICarrierSpacePlansController *)&v18 initWithNibName:v6 bundle:v7];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.preferences.carrier_space_plans_queue", 0);
    carrierSpaceQueue = v8->_carrierSpaceQueue;
    v8->_carrierSpaceQueue = v9;

    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v11 = _MergedGlobals_1_4;
    v23 = _MergedGlobals_1_4;
    if (!_MergedGlobals_1_4)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __getCTCarrierSpaceClientClass_block_invoke_0;
      v19[3] = &unk_279BA9F68;
      v19[4] = &v20;
      __getCTCarrierSpaceClientClass_block_invoke_0(v19);
      v11 = v21[3];
    }

    v12 = v11;
    _Block_object_dispose(&v20, 8);
    v13 = [[v11 alloc] initWithQueue:v8->_carrierSpaceQueue];
    carrierSpaceClient = v8->_carrierSpaceClient;
    v8->_carrierSpaceClient = v13;

    [(CTCarrierSpaceClient *)v8->_carrierSpaceClient setDelegate:v8];
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v8 selector:sel_simStatusChanged name:0x287737BB8 object:0];

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v8 selector:sel_carrierSpaceChanged name:0x287737B98 object:0];
  }

  return v8;
}

- (id)specifiers
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v46 = *MEMORY[0x277D3FC48];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"PLANS" value:&stru_287733598 table:@"CarrierSpacePlans"];
    [(PSUICarrierSpacePlansController *)self setTitle:v5];

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    +[PSUICarrierSpaceManager sharedManager];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v45 = v61 = 0u;
    v7 = [v45 plansInfo];
    v8 = [v7 planGroupsList];

    obj = v8;
    v49 = [v8 countByEnumeratingWithState:&v58 objects:v65 count:16];
    if (v49)
    {
      v48 = *v59;
      v53 = *MEMORY[0x277D3FE58];
      v52 = *MEMORY[0x277D3FD68];
      do
      {
        v9 = 0;
        do
        {
          if (*v59 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v50 = v9;
          v10 = *(*(&v58 + 1) + 8 * v9);
          v11 = MEMORY[0x277D3FAD8];
          v12 = -[PSUICarrierSpacePlansController stringFromGroupCategory:](self, "stringFromGroupCategory:", [v10 planCategory]);
          v13 = [v11 groupSpecifierWithName:v12];
          [v6 addObject:v13];

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v51 = [v10 groupOptionsList];
          v14 = [v51 countByEnumeratingWithState:&v54 objects:v64 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v55;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                v18 = v6;
                if (*v55 != v16)
                {
                  objc_enumerationMutation(v51);
                }

                v19 = *(*(&v54 + 1) + 8 * i);
                v20 = MEMORY[0x277D3FAD8];
                v21 = [v19 planLabel];
                v22 = [v20 preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:0 cell:4 edit:0];

                [v22 setProperty:objc_opt_class() forKey:v53];
                v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v19, "planPurchasable")}];
                [v22 setProperty:v23 forKey:0x2877360D8];

                v24 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v19, "planStatus") == 1}];
                [v22 setProperty:v24 forKey:0x2877360F8];

                v25 = [v19 planLabel];
                [v22 setProperty:v25 forKey:0x287736118];

                v26 = [(PSUICarrierSpacePlansController *)self detailForPlanOption:v19];
                [v22 setProperty:v26 forKey:0x287736138];

                v27 = [v19 planId];
                [v22 setIdentifier:v27];

                v28 = [v19 planDetailsURL];
                v29 = [v28 length];

                if (v29)
                {
                  [v22 setProperty:&unk_2877491A0 forKey:v52];
                }

                else
                {
                  [v22 removePropertyForKey:v52];
                }

                [v22 setProperty:v19 forKey:@"PSUICarrierSpacePlanKey"];
                v6 = v18;
                [v18 addObject:v22];
                v30 = [(PSUICarrierSpacePlansController *)self getLogger];
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v63 = v19;
                  _os_log_impl(&dword_2658DE000, v30, OS_LOG_TYPE_DEFAULT, "Creating specifier for plan: %@", buf, 0xCu);
                }
              }

              v15 = [v51 countByEnumeratingWithState:&v54 objects:v64 count:16];
            }

            while (v15);
          }

          v9 = v50 + 1;
        }

        while (v50 + 1 != v49);
        v49 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
      }

      while (v49);
    }

    v31 = [v45 plansInfo];
    v32 = [v31 morePlansURL];
    v33 = [v32 length];

    if (v33)
    {
      v34 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
      v35 = [v34 activeDataCarrierName];

      v36 = MEMORY[0x277CCACA8];
      v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v38 = [v37 localizedStringForKey:@"MORE_PLANS_FROM_CARRRIER%@" value:&stru_287733598 table:@"CarrierSpacePlans"];
      v39 = [v36 stringWithFormat:v38, v35];

      v40 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      [v6 addObject:v40];
      v41 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v39 target:self set:0 get:0 detail:0 cell:13 edit:0];
      [v41 setButtonAction:sel_moreDetailsButtonTapped_];
      [v6 addObject:v41];
    }

    [MEMORY[0x277D4D878] logSpecifiers:v6 origin:@"[PSUICarrierSpacePlansController specifiers] end"];
    v42 = *(&self->super.super.super.super.super.isa + v46);
    *(&self->super.super.super.super.super.isa + v46) = v6;

    v3 = *(&self->super.super.super.super.super.isa + v46);
  }

  v43 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)moreDetailsButtonTapped:(id)a3
{
  v4 = +[PSUICarrierSpaceManager sharedManager];
  v5 = [v4 plansInfo];
  v6 = [v5 morePlansURL];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [MEMORY[0x277D75128] sharedApplication];
    v9 = MEMORY[0x277CBEBC0];
    v10 = [v4 plansInfo];
    v11 = [v10 morePlansURL];
    v12 = [v9 URLWithString:v11];
    [v8 openURL:v12 options:MEMORY[0x277CBEC10] completionHandler:0];
  }

  else
  {
    v8 = [(PSUICarrierSpacePlansController *)self getLogger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_2658DE000, v8, OS_LOG_TYPE_ERROR, "More plans button tapped, but no plans url present.", v13, 2u);
    }
  }
}

- (id)detailForPlanOption:(id)a3
{
  v3 = a3;
  v4 = [v3 planValue];
  if ([v3 planStatus] == 1)
  {
    if (v4 && [(__CFString *)v4 length])
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"PLAN%@_CURRENT_SUBSCRIPTION";
LABEL_9:
      v9 = [v6 localizedStringForKey:v8 value:&stru_287733598 table:@"CarrierSpacePlans"];
      [v5 stringWithFormat:v9, v4];
      v14 = LABEL_17:;

      goto LABEL_18;
    }

    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v11;
    v12 = @"CURRENT_SUBSCRIPTION";
    goto LABEL_16;
  }

  if ([v3 planStatus] == 2)
  {
    if (v4 && [(__CFString *)v4 length])
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"PLAN%@_IN_PROGRESS";
      goto LABEL_9;
    }

    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v11;
    v12 = @"IN_PROGRESS";
LABEL_16:
    v9 = [v11 localizedStringForKey:v12 value:&stru_287733598 table:@"CarrierSpacePlans"];
    [v10 stringWithFormat:v9, v16];
    goto LABEL_17;
  }

  v13 = &stru_287733598;
  if (v4 && [(__CFString *)v4 length])
  {
    v13 = v4;
  }

  v14 = v13;
LABEL_18:

  return v14;
}

- (id)stringFromGroupCategory:(int64_t)a3
{
  switch(a3)
  {
    case 3:
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v4 = v9;
      v10 = @"INTERNATIONAL_ROAMING_PLANS";
      goto LABEL_7;
    case 2:
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v4 = v9;
      v10 = @"ROAMING_PLANS";
LABEL_7:
      v8 = [v9 localizedStringForKey:v10 value:&stru_287733598 table:@"CarrierSpacePlans"];
      goto LABEL_8;
    case 1:
      v3 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
      v4 = [v3 activeDataCarrierName];

      v5 = MEMORY[0x277CCACA8];
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"DOMESTIC_PLANS_FROM_%@CARRIER" value:&stru_287733598 table:@"CarrierSpacePlans"];
      v8 = [v5 stringWithFormat:v7, v4];

LABEL_8:
      goto LABEL_10;
  }

  v8 = &stru_287733598;
LABEL_10:

  return v8;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PSUICarrierSpacePlansController *)self specifierAtIndex:[(PSUICarrierSpacePlansController *)self indexForIndexPath:v7]];
  v9 = [v8 propertyForKey:@"PSUICarrierSpacePlanKey"];
  v10 = [v9 planDetailsURL];
  v11 = [v10 length];

  if (v11)
  {
    v12 = MEMORY[0x277CBEBC0];
    v13 = [v9 planDetailsURL];
    v14 = [v12 URLWithString:v13];

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v15 = qword_28156A648;
    v31 = qword_28156A648;
    if (!qword_28156A648)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v33 = __getRemoteUIControllerClass_block_invoke_0;
      v34 = &unk_279BA9F68;
      v35 = &v28;
      __getRemoteUIControllerClass_block_invoke_0(&buf);
      v15 = v29[3];
    }

    v16 = v15;
    _Block_object_dispose(&v28, 8);
    v17 = objc_alloc_init(v15);
    remoteUIController = self->_remoteUIController;
    self->_remoteUIController = v17;

    [(RemoteUIController *)self->_remoteUIController setDelegate:self];
    [(RemoteUIController *)self->_remoteUIController setHostViewController:self];
    v19 = self->_remoteUIController;
    v20 = +[PSUICarrierSpaceManager getNSURLSessionConfiguration];
    [(RemoteUIController *)v19 setSessionConfiguration:v20];

    v21 = [MEMORY[0x277D75418] currentDevice];
    LODWORD(v19) = [v21 sf_isInternalInstall];

    if (v19)
    {
      v22 = [(RemoteUIController *)self->_remoteUIController loader];
      [v22 setAllowNonSecureHTTP:1];
    }

    v23 = self->_remoteUIController;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __86__PSUICarrierSpacePlansController_tableView_accessoryButtonTappedForRowWithIndexPath___block_invoke;
    v26[3] = &unk_279BAA348;
    v26[4] = self;
    v27 = v14;
    v24 = v14;
    [(RemoteUIController *)v23 loadURL:v24 postBody:0 completion:v26];
  }

  else
  {
    v24 = [(PSUICarrierSpacePlansController *)self getLogger];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_2658DE000, v24, OS_LOG_TYPE_DEFAULT, "No plan detail url for plan: %@", &buf, 0xCu);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __86__PSUICarrierSpacePlansController_tableView_accessoryButtonTappedForRowWithIndexPath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
      _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "Could not load plan detail url: %@, success: %@, error: %@", &v10, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = PSUICarrierSpacePlansController;
  v6 = a4;
  [(PSUICarrierSpacePlansController *)&v13 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(PSUICarrierSpacePlansController *)self indexForIndexPath:v6];

  v8 = [(PSUICarrierSpacePlansController *)self specifierAtIndex:v7];
  v9 = [v8 propertyForKey:@"PSUICarrierSpacePlanKey"];
  if ([v9 planPurchasable])
  {
    v10 = [v8 identifier];
    [(PSUICarrierSpacePlansController *)self highlightSpecifierWithID:v10];

    carrierSpaceClient = self->_carrierSpaceClient;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__PSUICarrierSpacePlansController_tableView_didSelectRowAtIndexPath___block_invoke;
    v12[3] = &unk_279BA9DF0;
    v12[4] = self;
    [(CTCarrierSpaceClient *)carrierSpaceClient purchasePlan:v9 completion:v12];
  }
}

void __69__PSUICarrierSpacePlansController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) getLogger];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138412290;
      v12 = v3;
      v6 = "Plan purchase finished with error: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

  else if (v5)
  {
    *buf = 0;
    v6 = "Plan purchase finished";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__PSUICarrierSpacePlansController_tableView_didSelectRowAtIndexPath___block_invoke_64;
  block[3] = &unk_279BA9D58;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dismissPlanDetail
{
  v2 = [(PSUICarrierSpacePlansController *)self navigationController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)remoteUIController:(id)a3 willPresentModalNavigationController:(id)a4
{
  v5 = MEMORY[0x277D751E0];
  v6 = a4;
  v9 = [[v5 alloc] initWithBarButtonSystemItem:0 target:self action:sel_dismissPlanDetail];
  v7 = [v6 topViewController];

  v8 = [v7 navigationItem];
  [v8 setRightBarButtonItem:v9 animated:0];
}

@end