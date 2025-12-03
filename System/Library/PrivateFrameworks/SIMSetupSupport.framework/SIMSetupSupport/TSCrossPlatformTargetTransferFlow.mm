@interface TSCrossPlatformTargetTransferFlow
- (TSCrossPlatformTargetTransferFlow)init;
- (id)_firstViewController;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)from;
- (void)_showCancelAlert:(id)alert withMessage:(id)message;
- (void)firstViewController;
- (void)firstViewController:(id)controller;
- (void)handleCrossplatformSessionResponse:(id)response completion:(id)completion;
- (void)setCancelNavigationBarItems:(id)items;
- (void)transferEventUpdate:(id)update;
@end

@implementation TSCrossPlatformTargetTransferFlow

- (TSCrossPlatformTargetTransferFlow)init
{
  v9.receiver = self;
  v9.super_class = TSCrossPlatformTargetTransferFlow;
  v2 = [(TSSIMSetupFlow *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CC37B0]);
    v4 = [v3 initWithQueue:MEMORY[0x277D85CD0]];
    client = v2->_client;
    v2->_client = v4;

    [(CoreTelephonyClient *)v2->_client setDelegate:v2];
    v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v2 action:sel_userDidTapCancel];
    cancelButton = v2->_cancelButton;
    v2->_cancelButton = v6;

    v2->_noSIMOrNoEligibleSIMOnSource = 0;
  }

  return v2;
}

- (id)firstViewController
{
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(TSCrossPlatformTargetTransferFlow *)v2 firstViewController:v3];
  }

  return 0;
}

- (id)_firstViewController
{
  v3 = objc_alloc_init(CrossPlatformTransferSourceSelectionWarningViewController);
  [(CrossPlatformTransferSourceSelectionWarningViewController *)v3 setDelegate:self];
  [(TSSIMSetupFlow *)self setTopViewController:v3];

  return v3;
}

- (void)firstViewController:(id)controller
{
  controllerCopy = controller;
  objc_initWeak(&location, self);
  client = self->_client;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__TSCrossPlatformTargetTransferFlow_firstViewController___block_invoke;
  v7[3] = &unk_279B44DE0;
  v6 = controllerCopy;
  v8 = v6;
  objc_copyWeak(&v9, &location);
  [(CoreTelephonyClient *)client getCrossPlatformTransportSession:2 completion:v7];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

void __57__TSCrossPlatformTargetTransferFlow_firstViewController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      if (v5)
      {
        [WeakRetained setSession:v5];
        v10 = v9[14];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __57__TSCrossPlatformTargetTransferFlow_firstViewController___block_invoke_26;
        v29[3] = &unk_279B44828;
        objc_copyWeak(&v30, (a1 + 40));
        [v10 bootstrapPlanTransferForEndpoint:2 flowType:4 usingMessageSession:v5 completion:v29];
        v11 = *(a1 + 32);
        v12 = [v9 _firstViewController];
        (*(v11 + 16))(v11, v12);

        objc_destroyWeak(&v30);
LABEL_14:

        goto LABEL_15;
      }

      v13 = _TSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __57__TSCrossPlatformTargetTransferFlow_firstViewController___block_invoke_cold_1(v13, v21, v22, v23, v24, v25, v26, v27);
      }
    }

    else
    {
      v13 = _TSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __57__TSCrossPlatformTargetTransferFlow_firstViewController___block_invoke_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
      }
    }

    (*(*(a1 + 32) + 16))();
    goto LABEL_14;
  }

  v7 = _TSLogDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = v6;
    v33 = 2080;
    v34 = "[TSCrossPlatformTargetTransferFlow firstViewController:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "get cross platform transport session failed with error: %@ @%s", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_15:

  v28 = *MEMORY[0x277D85DE8];
}

void __57__TSCrossPlatformTargetTransferFlow_firstViewController___block_invoke_26(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = CTPlanTransferEndpointAsString();
      v9 = 2112;
      v10 = v3;
      v11 = 2080;
      v12 = "[TSCrossPlatformTargetTransferFlow firstViewController:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "bootstrap for: %s, failed with error: %@ @%s", &v7, 0x20u);
    }

    [WeakRetained attemptFailed];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)nextViewControllerFrom:(id)from
{
  v16[5] = *MEMORY[0x277D85DE8];
  fromCopy = from;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (self->_noSIMOrNoEligibleSIMOnSource)
    {
      initShowNoSIMForCrossPlatformTransfer = [[TSNoPlanForTransferViewController alloc] initShowNoSIMForCrossPlatformTransfer];
    }

    else
    {
      v7 = [TSSubFlowViewController alloc];
      v15[0] = @"FlowTypeKey";
      v15[1] = @"SkipActivatingPane";
      v8 = MEMORY[0x277CBEC38];
      v16[0] = &unk_287583B98;
      v16[1] = MEMORY[0x277CBEC38];
      v15[2] = @"Plans";
      selectedPlans = [(TSCrossPlatformTargetTransferFlow *)self selectedPlans];
      v16[2] = selectedPlans;
      v16[3] = v8;
      v15[3] = @"CrossPlatformTransferKey";
      v15[4] = @"MessageSessionKey";
      session = [(TSCrossPlatformTargetTransferFlow *)self session];
      v16[4] = session;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];
      navigationController = [(TSSIMSetupFlow *)self navigationController];
      initShowNoSIMForCrossPlatformTransfer = [(TSSubFlowViewController *)v7 initWithOptions:v11 navigationController:navigationController delegate:self];
    }
  }

  else
  {
    initShowNoSIMForCrossPlatformTransfer = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return initShowNoSIMForCrossPlatformTransfer;
}

- (void)handleCrossplatformSessionResponse:(id)response completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  completionCopy = completion;
  if ([responseCopy count])
  {
    firstObject = [responseCopy firstObject];
    remoteDisplayPlans = [firstObject remoteDisplayPlans];
    if ([remoteDisplayPlans count])
    {
      objc_storeStrong(&self->_selectedPlans, remoteDisplayPlans);
      topViewController = [(TSSIMSetupFlow *)self topViewController];
      [(TSSIMSetupFlow *)self viewControllerDidComplete:topViewController];

      v11 = objc_opt_new();
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v23 = firstObject;
      remoteDisplayPlans2 = [firstObject remoteDisplayPlans];
      v13 = [remoteDisplayPlans2 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v27;
        do
        {
          v16 = 0;
          do
          {
            if (*v27 != v15)
            {
              objc_enumerationMutation(remoteDisplayPlans2);
            }

            plan = [*(*(&v26 + 1) + 8 * v16) plan];
            [v11 addObject:plan];

            ++v16;
          }

          while (v14 != v16);
          v14 = [remoteDisplayPlans2 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v14);
      }

      v18 = [objc_alloc(MEMORY[0x277CC36F0]) initWithPlans:v11];
      client = self->_client;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __83__TSCrossPlatformTargetTransferFlow_handleCrossplatformSessionResponse_completion___block_invoke;
      v24[3] = &unk_279B44DB8;
      v25 = completionCopy;
      [(CoreTelephonyClient *)client installMultiplePlans:v18 completionHandler:v24];

      firstObject = v23;
    }

    else
    {
      v21 = _TSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v32 = "[TSCrossPlatformTargetTransferFlow handleCrossplatformSessionResponse:completion:]";
        _os_log_impl(&dword_262AA8000, v21, OS_LOG_TYPE_DEFAULT, "No remote plans in selection @%s", buf, 0xCu);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
    v20 = _TSLogDomain();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[TSCrossPlatformTargetTransferFlow handleCrossplatformSessionResponse:completion:]";
      _os_log_impl(&dword_262AA8000, v20, OS_LOG_TYPE_DEFAULT, "No SIM selected @%s", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __83__TSCrossPlatformTargetTransferFlow_handleCrossplatformSessionResponse_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __83__TSCrossPlatformTargetTransferFlow_handleCrossplatformSessionResponse_completion___block_invoke_2;
  v5[3] = &unk_279B453F0;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __83__TSCrossPlatformTargetTransferFlow_handleCrossplatformSessionResponse_completion___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __83__TSCrossPlatformTargetTransferFlow_handleCrossplatformSessionResponse_completion___block_invoke_2_cold_1(v2, v3);
    }

    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }
}

- (void)_showCancelAlert:(id)alert withMessage:(id)message
{
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:alert message:message preferredStyle:1];
  v6 = MEMORY[0x277D750F8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_28753DF48 table:@"Localizable"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__TSCrossPlatformTargetTransferFlow__showCancelAlert_withMessage___block_invoke;
  v13[3] = &unk_279B44B38;
  v13[4] = self;
  v9 = [v6 actionWithTitle:v8 style:1 handler:v13];
  [v5 addAction:v9];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__TSCrossPlatformTargetTransferFlow__showCancelAlert_withMessage___block_invoke_2;
  block[3] = &unk_279B44490;
  block[4] = self;
  v12 = v5;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__TSCrossPlatformTargetTransferFlow__showCancelAlert_withMessage___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 simSetupFlowCompleted:1];
}

void __66__TSCrossPlatformTargetTransferFlow__showCancelAlert_withMessage___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) topViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)setCancelNavigationBarItems:(id)items
{
  itemsCopy = items;
  v5 = +[TSUtilities isPad];
  navigationItem = [itemsCopy navigationItem];
  v7 = navigationItem;
  cancelButton = self->_cancelButton;
  if (v5)
  {
    [navigationItem setRightBarButtonItem:cancelButton];
  }

  else
  {
    [navigationItem setLeftBarButtonItem:cancelButton];
  }

  navigationItem2 = [itemsCopy navigationItem];

  [navigationItem2 setHidesBackButton:1 animated:0];
}

- (void)transferEventUpdate:(id)update
{
  v22 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = updateCopy;
    v20 = 2080;
    v21 = "[TSCrossPlatformTargetTransferFlow transferEventUpdate:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "transfer event : %@ @%s", &v18, 0x16u);
  }

  v6 = [updateCopy objectForKey:@"kCrossTransferEndpoint"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v6 isEqualToString:@"kTarget"])
      {
        v7 = [updateCopy objectForKey:@"kCrossTransferConnectFailReason"];

        if (v7)
        {
          v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          topViewController = [v8 localizedStringForKey:@"CROSSTRANSFER_CONN_FAIL_GENERAL" value:&stru_28753DF48 table:@"Localizable"];
          v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = [v10 localizedStringForKey:@"CROSSTRANSFER_CONN_FAIL_GENERAL_MSG" value:&stru_28753DF48 table:@"Localizable"];
          [(TSCrossPlatformTargetTransferFlow *)self _showCancelAlert:topViewController withMessage:v11];
        }

        else
        {
          v8 = [updateCopy objectForKey:@"kCrossTransferSessionError"];
          if (!v8)
          {
            goto LABEL_10;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_10;
          }

          integerValue = [v8 integerValue];
          switch(integerValue)
          {
            case 1:
              topViewController = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v10 = [topViewController localizedStringForKey:@"CROSSTRANSFER_USERCANCEL_TITLE" value:&stru_28753DF48 table:@"Localizable"];
              v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v15 = v14;
              v16 = @"CROSSTRANSFER_USERCANCEL_DETAIL";
              break;
            case 10:
              topViewController = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v10 = [topViewController localizedStringForKey:@"CROSSTRANSFER_SESSION_ERROR_CARRIER_LOCK" value:&stru_28753DF48 table:@"Localizable"];
              v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v15 = v14;
              v16 = @"CROSSTRANSFER_SESSION_ERROR_CARRIER_LOCK_MSG";
              break;
            case 13:
              topViewController = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v10 = [topViewController localizedStringForKey:@"CROSSTRANSFER_SESSION_ERROR_CARRIER_NOT_SUPPORT" value:&stru_28753DF48 table:@"Localizable"];
              v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v15 = v14;
              v16 = @"CROSSTRANSFER_SESSION_ERROR_CARRIER_NOT_SUPPORT_MSG";
              break;
            default:
              if ((integerValue & 0xFFFFFFFFFFFFFFFELL) == 2)
              {
                self->_noSIMOrNoEligibleSIMOnSource = 1;
                topViewController = [(TSSIMSetupFlow *)self topViewController];
                [(TSSIMSetupFlow *)self viewControllerDidComplete:topViewController];
              }

              else
              {
                topViewController = [(TSSIMSetupFlow *)self delegate];
                [topViewController simSetupFlowCompleted:3];
              }

              goto LABEL_9;
          }

          v17 = [v14 localizedStringForKey:v16 value:&stru_28753DF48 table:@"Localizable"];
          [(TSCrossPlatformTargetTransferFlow *)self _showCancelAlert:v10 withMessage:v17];
        }

LABEL_9:
LABEL_10:
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)firstViewController
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, self, a3, "[E]unimpletemented firstViewController @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __57__TSCrossPlatformTargetTransferFlow_firstViewController___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid message session @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __57__TSCrossPlatformTargetTransferFlow_firstViewController___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid self @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __83__TSCrossPlatformTargetTransferFlow_handleCrossplatformSessionResponse_completion___block_invoke_2_cold_1(id *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [*a1 localizedDescription];
  v5 = 138412546;
  v6 = v3;
  v7 = 2080;
  v8 = "[TSCrossPlatformTargetTransferFlow handleCrossplatformSessionResponse:completion:]_block_invoke_2";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]installMultiplePlans error=%@ @%s", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end