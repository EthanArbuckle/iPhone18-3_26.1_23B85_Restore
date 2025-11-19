@interface TSSIMSetupPublicApiInstallFlow
- (TSSIMSetupPublicApiInstallFlow)initWithAppName:(id)a3 requireSetup:(BOOL)a4 skipGeneralInstallConsent:(BOOL)a5;
- (id)_firstViewController;
- (id)_validCarrierName;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)a3;
- (void)_alertConsentWithCompletion:(id)a3;
- (void)_displayUserConsentAlert:(id)a3;
- (void)_maybeShowPreinstallConsentOnViewController:(id)a3;
- (void)dealloc;
- (void)firstViewController:(id)a3;
- (void)planItemsUpdated:(id)a3 planListError:(id)a4;
- (void)setCancelNavigationBarItems:(id)a3;
- (void)userDidTapCancel;
@end

@implementation TSSIMSetupPublicApiInstallFlow

- (TSSIMSetupPublicApiInstallFlow)initWithAppName:(id)a3 requireSetup:(BOOL)a4 skipGeneralInstallConsent:(BOOL)a5
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = TSSIMSetupPublicApiInstallFlow;
  v8 = [(TSSIMSetupFlow *)&v13 init];
  if (v8)
  {
    v9 = [v7 copy];
    installName = v8->_installName;
    v8->_installName = v9;

    v8->_userConsentType = 0;
    v8->_signupConsentResponse = 0;
    v8->_skipGeneralInstallConsent = a5;
    v11 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v11 assertUserInPurchaseFlowStartOver:0 caller:v8];
  }

  return v8;
}

- (void)dealloc
{
  v3 = +[TSUserInPurchaseFlowAssertion sharedInstance];
  [v3 deassertUserInPurchaseFlowWithForce:0 caller:self];

  v4 = +[TSCellularPlanManagerCache sharedInstance];
  [v4 resetDelegate:self];

  v5.receiver = self;
  v5.super_class = TSSIMSetupPublicApiInstallFlow;
  [(TSSIMSetupPublicApiInstallFlow *)&v5 dealloc];
}

- (id)firstViewController
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = +[TSCellularPlanManagerCache sharedInstance];
  [v3 setDelegate:self];

  self->_isPreinstallingViewControllerActive = 1;
  v4 = [[TSCellularPlanUserConsentViewController alloc] initWithName:self->_installName consentType:1 requireAdditionalConsent:0];
  [(TSCellularPlanUserConsentViewController *)v4 setDelegate:self];
  [(TSSIMSetupPublicApiInstallFlow *)self _maybeShowPreinstallConsentOnViewController:v4];
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 2080;
    v11 = "[TSSIMSetupPublicApiInstallFlow firstViewController]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "first view: %@ @%s", &v8, 0x16u);
  }

  [(TSSIMSetupFlow *)self setTopViewController:v4];
  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)firstViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __54__TSSIMSetupPublicApiInstallFlow_firstViewController___block_invoke;
    v5[3] = &unk_279B44EE8;
    v6 = v4;
    objc_copyWeak(&v7, &location);
    [(TSSIMSetupPublicApiInstallFlow *)self _displayUserConsentAlert:v5];
    objc_destroyWeak(&v7);

    objc_destroyWeak(&location);
  }
}

void __54__TSSIMSetupPublicApiInstallFlow_firstViewController___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained _firstViewController];
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 userDidTapCancel];

    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (id)nextViewControllerFrom:(id)a3
{
  v30[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([TSUtilities isRegulatoryRestrictionActive:self->_planInstallError])
  {
    self->_isPreinstallingViewControllerActive = 0;
    v5 = [TSSubFlowViewController alloc];
    v29[0] = @"FlowTypeKey";
    v29[1] = @"SkipActivatingPane";
    v30[0] = &unk_287583B68;
    v30[1] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v7 = [(TSSIMSetupFlow *)self navigationController];
    v8 = [(TSSubFlowViewController *)v5 initWithOptions:v6 navigationController:v7 delegate:self];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __57__TSSIMSetupPublicApiInstallFlow_nextViewControllerFrom___block_invoke;
    v22[3] = &unk_279B44578;
    v22[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v22);
    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v4;
      if ([v9 consentType] == 1 && self->_confirmationCodeRequired)
      {
        v8 = [[SSConfirmationCodeViewController alloc] initAsMidOperationWithCarrierName:self->_carrierName requireGeneralConsent:1];
        self->_confirmationCodeRequired = 0;
LABEL_29:

        goto LABEL_30;
      }

      if ([v9 consentType] == 4 && (self->_userConsentType & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v16 = [[TSCellularPlanUserConsentViewController alloc] initWithName:self->_carrierName consentType:self->_userConsentType requireAdditionalConsent:0];
LABEL_27:
        v8 = v16;
        goto LABEL_29;
      }

      self->_isPreinstallingViewControllerActive = 0;
      v14 = [MEMORY[0x277CBEB68] null];
      if (self->_skipGeneralInstallConsent && [(NSString *)self->_installName length])
      {
        v17 = self->_installName;

        v14 = v17;
      }

      v18 = [TSSubFlowViewController alloc];
      v25[0] = @"FlowTypeKey";
      v25[1] = @"SkipActivatingPane";
      v26[0] = &unk_287583B68;
      v26[1] = MEMORY[0x277CBEC38];
      v25[2] = @"PlanSetupTypeKey";
      v25[3] = @"CarrierNameKey";
      v26[2] = &unk_287583B80;
      v26[3] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
      v19 = [(TSSIMSetupFlow *)self navigationController];
      v8 = [(TSSubFlowViewController *)v18 initWithOptions:v15 navigationController:v19 delegate:self];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = 0;
          goto LABEL_30;
        }

        v9 = [v4 confirmationCode];
        v16 = [[TSCellularPlanUserConsentViewController alloc] initWithConfirmationCode:self->_carrierName consentType:4 requireAdditionalConsent:self->_userConsentType != 0 confirmationCode:v9 acceptButtonTapped:0];
        goto LABEL_27;
      }

      v9 = v4;
      if (+[TSUtilities isPad](TSUtilities, "isPad") || [v9 subFlowType] != 16)
      {
        v8 = 0;
        goto LABEL_29;
      }

      v13 = [TSSubFlowViewController alloc];
      v23 = @"FlowTypeKey";
      v24 = &unk_287583B80;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v15 = [(TSSIMSetupFlow *)self navigationController];
      v8 = [(TSSubFlowViewController *)v13 initWithOptions:v14 navigationController:v15 delegate:self];
    }

    goto LABEL_29;
  }

  if (self->_confirmationCodeRequired)
  {
    v8 = [[SSConfirmationCodeViewController alloc] initAsMidOperationWithCarrierName:self->_carrierName requireGeneralConsent:1];
    self->_confirmationCodeRequired = 0;
  }

  else if (self->_skipGeneralInstallConsent)
  {
    self->_isPreinstallingViewControllerActive = 0;
    v10 = [TSSubFlowViewController alloc];
    v27[0] = @"FlowTypeKey";
    v27[1] = @"SkipActivatingPane";
    v28[0] = &unk_287583B68;
    v28[1] = MEMORY[0x277CBEC38];
    v27[2] = @"PlanSetupTypeKey";
    v28[2] = &unk_287583B80;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
    v12 = [(TSSIMSetupFlow *)self navigationController];
    v8 = [(TSSubFlowViewController *)v10 initWithOptions:v11 navigationController:v12 delegate:self];
  }

  else
  {
    v8 = [[TSCellularPlanUserConsentViewController alloc] initWithName:self->_carrierName consentType:4 requireAdditionalConsent:self->_userConsentType != 0];
  }

LABEL_30:

  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

void __57__TSSIMSetupPublicApiInstallFlow_nextViewControllerFrom___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"transfer.failed" object:*(*(a1 + 32) + 104)];
}

- (void)setCancelNavigationBarItems:(id)a3
{
  v3 = [a3 navigationItem];
  [v3 setHidesBackButton:1 animated:0];
}

- (void)userDidTapCancel
{
  v3 = [(TSSIMSetupFlow *)self topViewController];
  if (!v3 || (v4 = v3, [(TSSIMSetupFlow *)self topViewController], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, v4, (isKindOfClass & 1) != 0))
  {
    v7 = +[TSCellularPlanManagerCache sharedInstance];
    [v7 resumePlanProvisioning:0 userConsent:0];
  }

  v8.receiver = self;
  v8.super_class = TSSIMSetupPublicApiInstallFlow;
  [(TSSIMSetupFlow *)&v8 userDidTapCancel];
}

- (void)planItemsUpdated:(id)a3 planListError:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_planInstallError)
  {
    v9 = _TSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [TSSIMSetupPublicApiInstallFlow planItemsUpdated:v9 planListError:?];
    }

    goto LABEL_44;
  }

  if (v7)
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TSSIMSetupPublicApiInstallFlow planItemsUpdated:v8 planListError:v10];
    }

    v11 = [v8 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CF9680]])
    {
      v12 = v8;
      v13 = [v8 code];

      if (v13 == 19)
      {
        self->_confirmationCodeRequired = 1;
LABEL_43:
        v8 = v12;
        goto LABEL_44;
      }
    }

    else
    {
      v12 = v8;
    }

    v33 = [TSUtilities isRegulatoryRestrictionActive:v12];
    objc_storeStrong(&self->_planInstallError, a4);
    if (v33)
    {
      v34 = [(TSSIMSetupFlow *)self topViewController];
      [(TSSIMSetupFlow *)self viewControllerDidComplete:v34];
    }

    else
    {
      v34 = [TSUtilities getErrorTitleDetail:v12 forCarrier:self->_carrierName];
      v35 = MEMORY[0x277D75110];
      v36 = [v34 objectForKeyedSubscript:@"ErrorHeader"];
      v37 = [v34 objectForKeyedSubscript:@"ErrorDetail"];
      v38 = [v35 alertControllerWithTitle:v36 message:v37 preferredStyle:1];

      v39 = MEMORY[0x277D750F8];
      v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v41 = [v40 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __65__TSSIMSetupPublicApiInstallFlow_planItemsUpdated_planListError___block_invoke;
      v53[3] = &unk_279B44B38;
      v53[4] = self;
      v42 = [v39 actionWithTitle:v41 style:1 handler:v53];
      [v38 addAction:v42];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__TSSIMSetupPublicApiInstallFlow_planItemsUpdated_planListError___block_invoke_2;
      block[3] = &unk_279B44490;
      block[4] = self;
      v52 = v38;
      v43 = v38;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    goto LABEL_43;
  }

  if (v6)
  {
    if (self->_isPreinstallingViewControllerActive)
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v14 = [v6 countByEnumeratingWithState:&v47 objects:v58 count:16];
      if (v14)
      {
        v15 = v14;
        v46 = 0;
        v16 = 0;
        v17 = 0;
        v18 = *v48;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v48 != v18)
            {
              objc_enumerationMutation(v6);
            }

            v20 = *(*(&v47 + 1) + 8 * i);
            if ([v20 isInstalling])
            {
              v21 = [v20 plan];
              v22 = [v21 status];

              if (v22 != 6)
              {
                v23 = [v20 carrierName];
                v24 = [v23 copy];
                carrierName = self->_carrierName;
                self->_carrierName = v24;

                v26 = [v20 iccid];
                v17 = [v26 length] != 0;

                v27 = _TSLogDomain();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  v28 = self->_carrierName;
                  *buf = 138412546;
                  v55 = v28;
                  v56 = 2080;
                  v57 = "[TSSIMSetupPublicApiInstallFlow planItemsUpdated:planListError:]";
                  _os_log_impl(&dword_262AA8000, v27, OS_LOG_TYPE_DEFAULT, "installing [%@] @%s", buf, 0x16u);
                }
              }
            }

            if (([v20 isSelected] & 1) != 0 || objc_msgSend(v20, "isInstalling"))
            {
              ++v16;
            }
          }

          v15 = [v6 countByEnumeratingWithState:&v47 objects:v58 count:16];
        }

        while (v15);
        if (v16 >= 2)
        {
          self->_requireSetup = 1;
        }

        v8 = v46;
        if (v17)
        {
          v29 = +[TSCellularPlanManagerCache sharedInstance];
          v30 = [v29 calculateInstallConsentTextTypeFor:v6];

          if (v30 > 2)
          {
            if ((v30 - 3) >= 3)
            {
              goto LABEL_50;
            }
          }

          else if (v30)
          {
            if (v30 == 1)
            {
              v31 = _TSLogDomain();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v55 = "[TSSIMSetupPublicApiInstallFlow planItemsUpdated:planListError:]";
                _os_log_impl(&dword_262AA8000, v31, OS_LOG_TYPE_DEFAULT, "disable not allowed @%s", buf, 0xCu);
              }

              v32 = 3;
            }

            else
            {
              if (v30 != 2)
              {
                goto LABEL_50;
              }

              v31 = _TSLogDomain();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v55 = "[TSSIMSetupPublicApiInstallFlow planItemsUpdated:planListError:]";
                _os_log_impl(&dword_262AA8000, v31, OS_LOG_TYPE_DEFAULT, "delete not allowed @%s", buf, 0xCu);
              }

              v32 = 2;
            }

            goto LABEL_49;
          }

          v31 = _TSLogDomain();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v55 = "[TSSIMSetupPublicApiInstallFlow planItemsUpdated:planListError:]";
            _os_log_impl(&dword_262AA8000, v31, OS_LOG_TYPE_DEFAULT, "Invalid consent @%s", buf, 0xCu);
          }

          v32 = 0;
LABEL_49:

          self->_userConsentType = v32;
LABEL_50:
          if (self->_isPreinstallingViewControllerActive)
          {
            self->_isPreinstallingViewControllerActive = 0;
            v45 = [(TSSIMSetupFlow *)self topViewController];
            [(TSSIMSetupFlow *)self viewControllerDidComplete:v45];
          }
        }
      }
    }
  }

LABEL_44:

  v44 = *MEMORY[0x277D85DE8];
}

void __65__TSSIMSetupPublicApiInstallFlow_planItemsUpdated_planListError___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) topViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)_maybeShowPreinstallConsentOnViewController:(id)a3
{
  v4 = a3;
  v5 = +[TSCellularPlanManagerCache sharedInstance];
  v6 = [v5 planItems];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__TSSIMSetupPublicApiInstallFlow__maybeShowPreinstallConsentOnViewController___block_invoke;
  v12[3] = &unk_279B45338;
  v12[4] = self;
  v7 = [TSUtilities preinstallPPRAlertControllerWithItems:v6 completion:v12];
  if (v7)
  {
    v8 = dispatch_time(0, 250000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__TSSIMSetupPublicApiInstallFlow__maybeShowPreinstallConsentOnViewController___block_invoke_2;
    block[3] = &unk_279B44490;
    v10 = v4;
    v11 = v7;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
  }
}

uint64_t __78__TSSIMSetupPublicApiInstallFlow__maybeShowPreinstallConsentOnViewController___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 32);
      v3 = 2;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v2 = *(result + 32);
      v3 = 1;
    }

    *(v2 + 160) = v3;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return [*(result + 32) userDidTapCancel];
    }
  }

  else
  {
    *(*(result + 32) + 160) = 0;
  }

  return result;
}

- (void)_alertConsentWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ACTIVATE_NEW_ESIM_ALERT_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ACTIVATE_NEW_ESIM_ALERT_DETAIL" value:&stru_28753DF48 table:@"Localizable"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CANCEL" value:&stru_28753DF48 table:@"Localizable"];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"ACTIVATE" value:&stru_28753DF48 table:@"Localizable"];

  v12 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__TSSIMSetupPublicApiInstallFlow__alertConsentWithCompletion___block_invoke;
  block[3] = &unk_279B45388;
  v19 = v5;
  v20 = v7;
  v21 = v11;
  v22 = v9;
  v23 = v3;
  v13 = v3;
  v14 = v9;
  v15 = v11;
  v16 = v7;
  v17 = v5;
  dispatch_async(v12, block);
}

void __62__TSSIMSetupPublicApiInstallFlow__alertConsentWithCompletion___block_invoke(uint64_t a1)
{
  v7 = 0;
  v2 = CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0, &v7);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__TSSIMSetupPublicApiInstallFlow__alertConsentWithCompletion___block_invoke_2;
  block[3] = &unk_279B45360;
  v6 = v2;
  v4 = *(a1 + 64);
  v5 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __62__TSSIMSetupPublicApiInstallFlow__alertConsentWithCompletion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 48);
  if (*(a1 + 48))
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __62__TSSIMSetupPublicApiInstallFlow__alertConsentWithCompletion___block_invoke_2_cold_1(v2, v3);
    }

LABEL_9:
    result = (*(*(a1 + 32) + 16))();
    v7 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (*(a1 + 40))
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v11 = 134218242;
      v12 = v5;
      v13 = 2080;
      v14 = "[TSSIMSetupPublicApiInstallFlow _alertConsentWithCompletion:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "response flags = %lu @%s", &v11, 0x16u);
    }

    goto LABEL_9;
  }

  v8 = *(a1 + 32);
  v9 = *(*(a1 + 32) + 16);
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

- (void)_displayUserConsentAlert:(id)a3
{
  v7 = a3;
  installName = self->_installName;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CAMERA" value:&stru_28753DF48 table:@"Localizable"];
  LODWORD(installName) = [(NSString *)installName isEqualToString:v6];

  if (installName && ![TSUtilities openPrefsURL:@"prefs:root=MOBILE_DATA_SETTINGS_ID&path=CELLULAR"])
  {
    v7[2](v7, 0);
  }

  else
  {
    [(TSSIMSetupPublicApiInstallFlow *)self _alertConsentWithCompletion:v7];
  }
}

- (id)_firstViewController
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = +[TSCellularPlanManagerCache sharedInstance];
  [v3 setDelegate:self];

  self->_isPreinstallingViewControllerActive = 1;
  v4 = objc_alloc_init(SSUserConsentViewController);
  [(SSUserConsentViewController *)v4 setDelegate:self];
  [(TSSIMSetupPublicApiInstallFlow *)self _maybeShowPreinstallConsentOnViewController:v4];
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 2080;
    v11 = "[TSSIMSetupPublicApiInstallFlow _firstViewController]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "first view: %@ @%s", &v8, 0x16u);
  }

  [(TSSIMSetupFlow *)self setTopViewController:v4];
  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_validCarrierName
{
  v3 = [(TSSIMSetupPublicApiInstallFlow *)self _isFollowUpInstall];
  v4 = &OBJC_IVAR___TSSIMSetupPublicApiInstallFlow__carrierName;
  if (v3)
  {
    v4 = &OBJC_IVAR___TSSIMSetupPublicApiInstallFlow__installName;
  }

  v5 = *(&self->super.super.isa + *v4);

  return v5;
}

- (void)planItemsUpdated:(os_log_t)log planListError:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSSIMSetupPublicApiInstallFlow planItemsUpdated:planListError:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]received error already @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)planItemsUpdated:(uint64_t)a1 planListError:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2080;
  v6 = "[TSSIMSetupPublicApiInstallFlow planItemsUpdated:planListError:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]error: %@ @%s", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __62__TSSIMSetupPublicApiInstallFlow__alertConsentWithCompletion___block_invoke_2_cold_1(int *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4[0] = 67109378;
  v4[1] = v2;
  v5 = 2080;
  v6 = "[TSSIMSetupPublicApiInstallFlow _alertConsentWithCompletion:]_block_invoke_2";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]present notification failed:%d @%s", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end