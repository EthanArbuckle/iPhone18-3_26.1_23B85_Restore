@interface TSQRCodeScanFlow
- (TSQRCodeScanFlow)initWithBackButton:(BOOL)a3 plans:(id)a4;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)a3;
- (void)dealloc;
- (void)firstViewController:(id)a3;
- (void)handleError:(id)a3;
- (void)planItemsUpdated:(id)a3 planListError:(id)a4;
- (void)setCancelNavigationBarItems:(id)a3;
@end

@implementation TSQRCodeScanFlow

- (TSQRCodeScanFlow)initWithBackButton:(BOOL)a3 plans:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = TSQRCodeScanFlow;
  v8 = [(TSSIMSetupFlow *)&v13 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v8 action:sel_userDidTapCancel];
    cancelButton = v8->_cancelButton;
    v8->_cancelButton = v9;

    v8->_withBackButton = a3;
    v8->_confirmationCodeRequired = 0;
    v8->_userConsentType = 0;
    v8->_isPreinstallingViewControllerActive = 1;
    v8->_signupUserConsentResponse = 0;
    objc_storeStrong(&v8->_plans, a4);
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
  v5.super_class = TSQRCodeScanFlow;
  [(TSQRCodeScanFlow *)&v5 dealloc];
}

- (id)firstViewController
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = +[TSCellularPlanManagerCache sharedInstance];
  [v3 setDelegate:self];

  v4 = [[SSQRCodeIntroViewController alloc] initWithPlans:self->_plans withBackButton:self->_withBackButton];
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 2080;
    v11 = "[TSQRCodeScanFlow firstViewController]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "first view controller : %@ @%s", &v8, 0x16u);
  }

  [(SSQRCodeIntroViewController *)v4 setDelegate:self];
  [(TSSIMSetupFlow *)self setTopViewController:v4];
  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)firstViewController:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(TSQRCodeScanFlow *)self firstViewController];
    (*(a3 + 2))(v5, v6);
  }
}

- (id)nextViewControllerFrom:(id)a3
{
  v31[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[SSCellularPlanScanViewController alloc] initWithBackButton:1];
LABEL_3:
    v6 = v5;
    goto LABEL_33;
  }

  if ([TSUtilities isRegulatoryRestrictionActive:self->_planInstallError])
  {
    self->_isPreinstallingViewControllerActive = 0;
    v7 = [TSSubFlowViewController alloc];
    v30[0] = @"FlowTypeKey";
    v30[1] = @"SkipActivatingPane";
    v31[0] = &unk_287583A60;
    v31[1] = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    v9 = [(TSSIMSetupFlow *)self navigationController];
    v6 = [(TSSubFlowViewController *)v7 initWithOptions:v8 navigationController:v9 delegate:self];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __43__TSQRCodeScanFlow_nextViewControllerFrom___block_invoke;
    v25[3] = &unk_279B44578;
    v25[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v25);
    goto LABEL_33;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self->_confirmationCodeRequired)
      {
        v6 = [[SSConfirmationCodeViewController alloc] initAsMidOperationWithCarrierName:self->_name requireGeneralConsent:1];
        self->_confirmationCodeRequired = 0;
        goto LABEL_33;
      }

      v14 = [TSCellularPlanUserConsentViewController alloc];
      name = self->_name;
      v16 = self->_userConsentType != 0;
      userConsentType = 4;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v4 confirmationCode];
        v13 = [[TSCellularPlanUserConsentViewController alloc] initWithConfirmationCode:self->_name consentType:4 requireAdditionalConsent:self->_userConsentType != 0 confirmationCode:v10 acceptButtonTapped:0];
        goto LABEL_31;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = 0;
        goto LABEL_33;
      }

      if ([v4 consentType] != 4 || (self->_userConsentType & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
        self->_isPreinstallingViewControllerActive = 0;
        v20 = [TSSubFlowViewController alloc];
        v26[0] = @"FlowTypeKey";
        v26[1] = @"SkipActivatingPane";
        v27[0] = &unk_287583A60;
        v27[1] = MEMORY[0x277CBEC38];
        v26[2] = @"PlanSetupTypeKey";
        v27[2] = &unk_287583A90;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
        v22 = [(TSSIMSetupFlow *)self navigationController];
        v6 = [(TSSubFlowViewController *)v20 initWithOptions:v21 navigationController:v22 delegate:self];

        goto LABEL_33;
      }

      v14 = [TSCellularPlanUserConsentViewController alloc];
      name = self->_name;
      userConsentType = self->_userConsentType;
      v16 = 0;
    }

    v5 = [(TSCellularPlanUserConsentViewController *)v14 initWithName:name consentType:userConsentType requireAdditionalConsent:v16];
    goto LABEL_3;
  }

  v10 = v4;
  if (![v10 confirmationCodeRequired])
  {
    if (self->_confirmationCodeRequired)
    {
      v6 = [[SSConfirmationCodeViewController alloc] initAsMidOperationWithCarrierName:self->_name requireGeneralConsent:1];
      self->_confirmationCodeRequired = 0;
      goto LABEL_32;
    }

    if ([v10 isEnterManuallyTapped])
    {
      v13 = objc_alloc_init(SSCardManualEntryViewController);
    }

    else
    {
      if ([v10 transferViaQRCode])
      {
        if (![v10 transferViaQRCode])
        {
          v6 = 0;
          goto LABEL_32;
        }

        self->_isPreinstallingViewControllerActive = 0;
        v18 = [TSSubFlowViewController alloc];
        v28[0] = @"FlowTypeKey";
        v28[1] = @"SkipActivatingPane";
        v29[0] = &unk_287583A60;
        v29[1] = MEMORY[0x277CBEC38];
        v28[2] = @"PlanSetupTypeKey";
        v29[2] = &unk_287583A78;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
        v19 = [(TSSIMSetupFlow *)self navigationController];
        v6 = [(TSSubFlowViewController *)v18 initWithOptions:v12 navigationController:v19 delegate:self];

        goto LABEL_9;
      }

      v13 = [[TSCellularPlanUserConsentViewController alloc] initWithName:self->_name consentType:4 requireAdditionalConsent:self->_userConsentType != 0];
    }

LABEL_31:
    v6 = v13;
    goto LABEL_32;
  }

  v11 = [SSConfirmationCodeViewController alloc];
  v12 = [v10 fauxCardData];
  v6 = [(SSConfirmationCodeViewController *)v11 initWithCardData:v12];
LABEL_9:

LABEL_32:
LABEL_33:

  v23 = *MEMORY[0x277D85DE8];

  return v6;
}

void __43__TSQRCodeScanFlow_nextViewControllerFrom___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"install.failed" object:*(*(a1 + 32) + 136)];
}

- (void)setCancelNavigationBarItems:(id)a3
{
  v6 = a3;
  if (+[TSUtilities isPad])
  {
    if (+[TSUtilities inBuddy])
    {
      goto LABEL_6;
    }

    v4 = [v6 navigationItem];
    [v4 setRightBarButtonItem:self->_cancelButton];
  }

  else
  {
    v5 = [v6 navigationItem];
    [v5 setHidesBackButton:1 animated:0];

    v4 = [v6 navigationItem];
    [v4 setLeftBarButtonItem:self->_cancelButton];
  }

LABEL_6:
}

- (void)handleError:(id)a3
{
  v4 = a3;
  v5 = [TSUtilities getErrorTitleDetail:v4 forCarrier:self->_name];
  v6 = MEMORY[0x277D75110];
  v7 = [v5 objectForKeyedSubscript:@"ErrorHeader"];
  v8 = [v5 objectForKeyedSubscript:@"ErrorDetail"];
  v9 = [v6 alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  objc_initWeak(location, self);
  v10 = [v4 domain];
  if ([v10 isEqualToString:*MEMORY[0x277CF9680]])
  {
    v11 = [v4 code];

    if (v11 == 75)
    {
      v12 = MEMORY[0x277D750F8];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __32__TSQRCodeScanFlow_handleError___block_invoke;
      v46[3] = &unk_279B44550;
      objc_copyWeak(&v47, location);
      v15 = [v12 actionWithTitle:v14 style:1 handler:v46];
      [v9 addAction:v15];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __32__TSQRCodeScanFlow_handleError___block_invoke_2;
      block[3] = &unk_279B443D8;
      objc_copyWeak(&v45, location);
      v44 = v9;
      dispatch_async(MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v45);
      objc_destroyWeak(&v47);
      goto LABEL_12;
    }
  }

  else
  {
  }

  v16 = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v18 = MEMORY[0x277D750F8];
  if (isKindOfClass)
  {
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"TRY_AGAIN" value:&stru_28753DF48 table:@"Localizable"];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __32__TSQRCodeScanFlow_handleError___block_invoke_3;
    v40[3] = &unk_279B44FF0;
    v21 = &v42;
    objc_copyWeak(&v42, location);
    v41 = v16;
    v22 = [v18 actionWithTitle:v20 style:0 handler:v40];
    [v9 addAction:v22];

    if (+[TSUtilities inBuddy])
    {
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      [v23 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
    }

    else
    {
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      [v23 localizedStringForKey:@"CANCEL" value:&stru_28753DF48 table:@"Localizable"];
    }
    v27 = ;

    v28 = MEMORY[0x277D750F8];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __32__TSQRCodeScanFlow_handleError___block_invoke_4;
    v38[3] = &unk_279B44550;
    objc_copyWeak(&v39, location);
    v29 = [v28 actionWithTitle:v27 style:1 handler:v38];
    [v9 addAction:v29];

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __32__TSQRCodeScanFlow_handleError___block_invoke_5;
    v35[3] = &unk_279B443D8;
    objc_copyWeak(&v37, location);
    v36 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v35);

    objc_destroyWeak(&v37);
    objc_destroyWeak(&v39);
  }

  else
  {
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __32__TSQRCodeScanFlow_handleError___block_invoke_6;
    v33[3] = &unk_279B44550;
    v21 = &v34;
    objc_copyWeak(&v34, location);
    v26 = [v18 actionWithTitle:v25 style:1 handler:v33];
    [v9 addAction:v26];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __32__TSQRCodeScanFlow_handleError___block_invoke_7;
    v30[3] = &unk_279B443D8;
    objc_copyWeak(&v32, location);
    v31 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v30);

    objc_destroyWeak(&v32);
  }

  objc_destroyWeak(v21);

LABEL_12:
  objc_destroyWeak(location);
}

void __32__TSQRCodeScanFlow_handleError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained userDidTapCancel];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setPlanInstallError:0];
}

void __32__TSQRCodeScanFlow_handleError___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained topViewController];
  [v2 presentViewController:*(a1 + 32) animated:1 completion:0];
}

void __32__TSQRCodeScanFlow_handleError___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = *(a1 + 32);
    [v7 setPlanInstallError:0];
    v4 = [v3 navigationController];
    v5 = [v4 topViewController];

    if (v5 == v3)
    {
      [*(a1 + 32) startScanning];
      [v7 receivedResponseWithVC:v3];
    }

    else
    {
      [v3 setEntryPoint:1];
      v6 = objc_loadWeakRetained((a1 + 40));
      [v6 restartWith:*(a1 + 32)];
    }

    WeakRetained = v7;
  }
}

void __32__TSQRCodeScanFlow_handleError___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained userDidTapCancel];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setPlanInstallError:0];
}

void __32__TSQRCodeScanFlow_handleError___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained topViewController];
  [v2 presentViewController:*(a1 + 32) animated:1 completion:0];
}

void __32__TSQRCodeScanFlow_handleError___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = v5;
  if (isKindOfClass)
  {
    v8 = [v5 topViewController];

    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 setPlanInstallError:0];

    [v8 onError];
  }

  else
  {
    [v5 userDidTapCancel];

    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 setPlanInstallError:0];
  }
}

void __32__TSQRCodeScanFlow_handleError___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained topViewController];
  [v2 presentViewController:*(a1 + 32) animated:1 completion:0];
}

- (void)planItemsUpdated:(id)a3 planListError:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_planInstallError)
  {
    v9 = _TSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [TSQRCodeScanFlow planItemsUpdated:v9 planListError:?];
    }

    goto LABEL_4;
  }

  if (v7)
  {
    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TSQRCodeScanFlow planItemsUpdated:v8 planListError:v11];
    }

    v12 = [v8 domain];
    if ([v12 isEqualToString:*MEMORY[0x277CF9680]])
    {
      v13 = [v8 code];

      if (v13 == 19)
      {
        self->_confirmationCodeRequired = 1;
        goto LABEL_5;
      }
    }

    else
    {
    }

    v32 = [TSUtilities isRegulatoryRestrictionActive:v8];
    objc_storeStrong(&self->_planInstallError, a4);
    if (!v32)
    {
      [(TSQRCodeScanFlow *)self handleError:v8];
      goto LABEL_5;
    }

    goto LABEL_39;
  }

  if (v6)
  {
    if (self->_isPreinstallingViewControllerActive)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v14 = [v6 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v14)
      {
        v15 = v14;
        v33 = 98;
        v34 = 0;
        v16 = 0;
        v17 = *v36;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v36 != v17)
            {
              objc_enumerationMutation(v6);
            }

            v19 = *(*(&v35 + 1) + 8 * i);
            if ([v19 isInstalling])
            {
              v20 = [v19 plan];
              v21 = [v20 status];

              if (v21 != 6)
              {
                v22 = [v19 carrierName];
                v23 = [v22 copy];
                name = self->_name;
                self->_name = v23;

                v25 = [v19 iccid];
                v16 = [v25 length] != 0;

                v26 = _TSLogDomain();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  v27 = self->_name;
                  *buf = 138412546;
                  v40 = v27;
                  v41 = 2080;
                  v42 = "[TSQRCodeScanFlow planItemsUpdated:planListError:]";
                  _os_log_impl(&dword_262AA8000, v26, OS_LOG_TYPE_DEFAULT, "installing [%@] @%s", buf, 0x16u);
                }
              }
            }

            if (([v19 isSelected] & 1) == 0)
            {
              [v19 isInstalling];
            }
          }

          v15 = [v6 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v15);
        v8 = v34;
        if (v16)
        {
          v28 = +[TSCellularPlanManagerCache sharedInstance];
          v29 = [v28 calculateInstallConsentTextTypeFor:v6];

          if (v29 <= 2)
          {
            if (v29)
            {
              if (v29 == 1)
              {
                v30 = _TSLogDomain();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v40 = "[TSQRCodeScanFlow planItemsUpdated:planListError:]";
                  _os_log_impl(&dword_262AA8000, v30, OS_LOG_TYPE_DEFAULT, "disable not allowed @%s", buf, 0xCu);
                }

                v31 = 3;
              }

              else
              {
                if (v29 != 2)
                {
                  goto LABEL_35;
                }

                v30 = _TSLogDomain();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v40 = "[TSQRCodeScanFlow planItemsUpdated:planListError:]";
                  _os_log_impl(&dword_262AA8000, v30, OS_LOG_TYPE_DEFAULT, "delete not allowed @%s", buf, 0xCu);
                }

                v31 = 2;
              }

              goto LABEL_34;
            }
          }

          else if ((v29 - 3) >= 5)
          {
LABEL_35:
            if (*(&self->super.super.isa + v33) != 1)
            {
              goto LABEL_5;
            }

            *(&self->super.super.isa + v33) = 0;
LABEL_39:
            v9 = [(TSSIMSetupFlow *)self topViewController];
            [(TSSIMSetupFlow *)self viewControllerDidComplete:v9];
LABEL_4:

            goto LABEL_5;
          }

          v30 = _TSLogDomain();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v40 = "[TSQRCodeScanFlow planItemsUpdated:planListError:]";
            _os_log_impl(&dword_262AA8000, v30, OS_LOG_TYPE_DEFAULT, "Invalid consent @%s", buf, 0xCu);
          }

          v31 = 0;
LABEL_34:

          self->_userConsentType = v31;
          goto LABEL_35;
        }
      }
    }
  }

LABEL_5:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)planItemsUpdated:(uint64_t *)a1 planListError:(NSObject *)a2 .cold.1(uint64_t *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412546;
  v5 = v2;
  v6 = 2080;
  v7 = "[TSQRCodeScanFlow planItemsUpdated:planListError:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]received error already : %@ @%s", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)planItemsUpdated:(uint64_t)a1 planListError:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2080;
  v6 = "[TSQRCodeScanFlow planItemsUpdated:planListError:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]error: %@ @%s", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end