@interface TSCrossPlatformSourceAuthFlow
- (TSCrossPlatformSourceAuthFlow)initWithCode:(id)a3;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)a3;
- (void)_connectToDevice:(id)a3 completion:(id)a4;
- (void)_findEligiblePlans:(id)a3;
- (void)_showCancelAlert:(id)a3 withMessage:(id)a4;
- (void)firstViewController;
- (void)firstViewController:(id)a3;
- (void)onCodeDetected:(id)a3 completion:(id)a4;
- (void)transferEventUpdate:(id)a3;
- (void)viewControllerDidComplete:(id)a3;
@end

@implementation TSCrossPlatformSourceAuthFlow

- (TSCrossPlatformSourceAuthFlow)initWithCode:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TSCrossPlatformSourceAuthFlow;
  v6 = [(TSSIMSetupFlow *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CC37B0]);
    v8 = [v7 initWithQueue:MEMORY[0x277D85CD0]];
    client = v6->_client;
    v6->_client = v8;

    [(CoreTelephonyClient *)v6->_client setDelegate:v6];
    objc_storeStrong(&v6->dctCode, a3);
  }

  return v6;
}

- (id)firstViewController
{
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(TSCrossPlatformSourceAuthFlow *)v2 firstViewController:v3];
  }

  return 0;
}

- (void)firstViewController:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(CrossPlatformTransferIntroViewController);
    [(TSSIMSetupFlow *)self setTopViewController:v5];
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = objc_opt_class();
      v18 = 2080;
      v19 = "[TSCrossPlatformSourceAuthFlow firstViewController:]";
      v7 = v17;
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "first view - %@ @%s", &v16, 0x16u);
    }

    v4[2](v4, v5);
  }

  else
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(&v5->super.super.super.super.super.super, OS_LOG_TYPE_ERROR))
    {
      [(TSCrossPlatformSourceAuthFlow *)&v5->super.super.super.super.super.super firstViewController:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)nextViewControllerFrom:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!self->_didProcessDCTCode)
    {
      v10 = objc_alloc_init(SSCrossPlatformScanViewController);
      [(SSScanViewController *)v10 setQrcodeDelegate:self];
      goto LABEL_14;
    }

    v5 = [TSSubFlowViewController alloc];
    v22[0] = @"FlowTypeKey";
    v22[1] = @"IsSourceKey";
    v23[0] = &unk_287583DF0;
    v23[1] = MEMORY[0x277CBEC38];
    v6 = MEMORY[0x277CBEAC0];
    v7 = v23;
    v8 = v22;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v4;
    if ([v9 isEnterManuallyTapped])
    {
      v10 = objc_alloc_init(CrossPlatformManualDetailsViewController);
      [(SSCrossPlatformScanViewController *)v10 setDctDelegate:self];
    }

    else
    {
      v13 = [TSSubFlowViewController alloc];
      v20[0] = @"FlowTypeKey";
      v20[1] = @"IsSourceKey";
      v21[0] = &unk_287583DF0;
      v21[1] = MEMORY[0x277CBEC38];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v15 = [v9 navigationController];
      v10 = [(TSSubFlowViewController *)v13 initWithOptions:v14 navigationController:v15 delegate:self];
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [TSSubFlowViewController alloc];
    v18[0] = @"FlowTypeKey";
    v18[1] = @"IsSourceKey";
    v19[0] = &unk_287583DF0;
    v19[1] = MEMORY[0x277CBEC38];
    v6 = MEMORY[0x277CBEAC0];
    v7 = v19;
    v8 = v18;
LABEL_10:
    v11 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:2];
    v12 = [v4 navigationController];
    v10 = [(TSSubFlowViewController *)v5 initWithOptions:v11 navigationController:v12 delegate:self];

    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)viewControllerDidComplete:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->dctCode)
  {
    objc_initWeak(&location, self);
    dctCode = self->dctCode;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__TSCrossPlatformSourceAuthFlow_viewControllerDidComplete___block_invoke;
    v7[3] = &unk_279B444B8;
    objc_copyWeak(&v10, &location);
    v8 = v4;
    v9 = self;
    [(TSCrossPlatformSourceAuthFlow *)self onCodeDetected:dctCode completion:v7];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TSCrossPlatformSourceAuthFlow;
    [(TSSIMSetupFlow *)&v6 viewControllerDidComplete:v4];
  }
}

void __59__TSCrossPlatformSourceAuthFlow_viewControllerDidComplete___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setDidProcessDCTCode:a2];

  if (a2)
  {
    v5 = *(a1 + 32);
    v14.receiver = *(a1 + 40);
    v14.super_class = TSCrossPlatformSourceAuthFlow;
    objc_msgSendSuper2(&v14, sel_viewControllerDidComplete_, v5);
  }

  else
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __59__TSCrossPlatformSourceAuthFlow_viewControllerDidComplete___block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

- (void)transferEventUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"kCrossTransferConnectFailReason"];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = [v4 objectForKeyedSubscript:@"kIsCodeError"];
    if ([v7 BOOLValue])
    {
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"SOURCE_SCAN_AUTH_QRCODE_ERROR_TITLE" value:&stru_28753DF48 table:@"Localizable"];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"SOURCE_SCAN_AUTH_QRCODE_ERROR_BODY" value:&stru_28753DF48 table:@"Localizable"];
      [(TSCrossPlatformSourceAuthFlow *)self _showCancelAlert:v9 withMessage:v11];
    }

    goto LABEL_8;
  }

  if ([v5 integerValue] != 20)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v7 localizedStringForKey:@"CROSSTRANSFER_CONN_FAIL_GENERAL" value:&stru_28753DF48 table:@"Localizable"];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CROSSTRANSFER_CONN_FAIL_GENERAL_MSG" value:&stru_28753DF48 table:@"Localizable"];
    [(TSCrossPlatformSourceAuthFlow *)self _showCancelAlert:v12 withMessage:v14];

LABEL_8:
    goto LABEL_9;
  }

  v6 = [(TSSIMSetupFlow *)self topViewController];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__TSCrossPlatformSourceAuthFlow_transferEventUpdate___block_invoke;
  v15[3] = &unk_279B44B38;
  v15[4] = self;
  [TSFlowHelper showBluetoothOffAlertForCrossPlatformTransfer:v6 withCloseHandler:v15];

LABEL_9:
}

- (void)onCodeDetected:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__TSCrossPlatformSourceAuthFlow_onCodeDetected_completion___block_invoke;
    v17[3] = &unk_279B45B00;
    v17[4] = self;
    v19 = v7;
    v18 = v6;
    [(TSCrossPlatformSourceAuthFlow *)self _findEligiblePlans:v17];
  }

  else
  {
    v9 = _TSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(TSCrossPlatformSourceAuthFlow *)v9 onCodeDetected:v10 completion:v11, v12, v13, v14, v15, v16];
    }
  }
}

void __59__TSCrossPlatformSourceAuthFlow_onCodeDetected_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a2 == 2)
  {
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"CROSSPLATFORM_INELIGIBLE_DEVICE_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"CROSSPLATFORM_INELIGIBLE_DEVICE_MESSAGE" value:&stru_28753DF48 table:@"Localizable"];
    [v3 _showCancelAlert:v13 withMessage:v16];

    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[TSCrossPlatformSourceAuthFlow onCodeDetected:completion:]_block_invoke";
      goto LABEL_7;
    }
  }

  else
  {
    if (a2 != 1)
    {
      v17 = v3[12];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __59__TSCrossPlatformSourceAuthFlow_onCodeDetected_completion___block_invoke_71;
      v22[3] = &unk_279B45AD8;
      v18 = *(a1 + 48);
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v24 = v18;
      v22[4] = v19;
      v23 = v20;
      [v17 activateCrossPlatformTransport:1 completion:v22];

      goto LABEL_10;
    }

    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"NO_ELIGIBLE_SIMS_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"NO_ELIGIBLE_SIMS_MESSAGE" value:&stru_28753DF48 table:@"Localizable"];
    [v3 _showCancelAlert:v6 withMessage:v9];

    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[TSCrossPlatformSourceAuthFlow onCodeDetected:completion:]_block_invoke";
LABEL_7:
      _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "device has no capable cross platform transfer plans @%s", buf, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_10:
  v21 = *MEMORY[0x277D85DE8];
}

void __59__TSCrossPlatformSourceAuthFlow_onCodeDetected_completion___block_invoke_71(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__TSCrossPlatformSourceAuthFlow_onCodeDetected_completion___block_invoke_71_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) _connectToDevice:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)_connectToDevice:(id)a3 completion:(id)a4
{
  v6 = a4;
  client = self->_client;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__TSCrossPlatformSourceAuthFlow__connectToDevice_completion___block_invoke;
  v9[3] = &unk_279B44DB8;
  v10 = v6;
  v8 = v6;
  [(CoreTelephonyClient *)client connectCrossPlatformTransportWithCode:a3 completion:v9];
}

void __61__TSCrossPlatformSourceAuthFlow__connectToDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__TSCrossPlatformSourceAuthFlow__connectToDevice_completion___block_invoke_cold_1();
    }

    v5 = *(*(a1 + 32) + 16);
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);
  }

  v5();
}

- (void)_showCancelAlert:(id)a3 withMessage:(id)a4
{
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v6 = MEMORY[0x277D750F8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_28753DF48 table:@"Localizable"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__TSCrossPlatformSourceAuthFlow__showCancelAlert_withMessage___block_invoke;
  v13[3] = &unk_279B44B38;
  v13[4] = self;
  v9 = [v6 actionWithTitle:v8 style:1 handler:v13];
  [v5 addAction:v9];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__TSCrossPlatformSourceAuthFlow__showCancelAlert_withMessage___block_invoke_2;
  block[3] = &unk_279B44490;
  block[4] = self;
  v12 = v5;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__TSCrossPlatformSourceAuthFlow__showCancelAlert_withMessage___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 simSetupFlowCompleted:1];
}

void __62__TSCrossPlatformSourceAuthFlow__showCancelAlert_withMessage___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) topViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)_findEligiblePlans:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[TSCellularPlanManagerCache sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__TSCrossPlatformSourceAuthFlow__findEligiblePlans___block_invoke;
  v7[3] = &unk_279B45180;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 planItemsWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__TSCrossPlatformSourceAuthFlow__findEligiblePlans___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([v3 count] && objc_msgSend(v3, "indexOfObjectPassingTest:", &__block_literal_global_28) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v3 indexOfObjectPassingTest:&__block_literal_global_84];
      v5 = *(*(a1 + 32) + 16);
    }

    else
    {
      v5 = *(*(a1 + 32) + 16);
    }

    v5();
  }

  else
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __52__TSCrossPlatformSourceAuthFlow__findEligiblePlans___block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

uint64_t __52__TSCrossPlatformSourceAuthFlow__findEligiblePlans___block_invoke_81(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isSelected];
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t __52__TSCrossPlatformSourceAuthFlow__findEligiblePlans___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 supportedTransferOption];
  if ((v5 & 4) != 0)
  {
    *a4 = 1;
  }

  return (v5 >> 2) & 1;
}

- (void)firstViewController
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]unimplemented - please use async version @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)firstViewController:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]missing completion @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __59__TSCrossPlatformSourceAuthFlow_viewControllerDidComplete___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]failed to verify dct code @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)onCodeDetected:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]missing completion @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __59__TSCrossPlatformSourceAuthFlow_onCodeDetected_completion___block_invoke_71_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[TSCrossPlatformSourceAuthFlow onCodeDetected:completion:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]activate transport failed : %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __61__TSCrossPlatformSourceAuthFlow__connectToDevice_completion___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[TSCrossPlatformSourceAuthFlow _connectToDevice:completion:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]connect with code failed : %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __52__TSCrossPlatformSourceAuthFlow__findEligiblePlans___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid self @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end