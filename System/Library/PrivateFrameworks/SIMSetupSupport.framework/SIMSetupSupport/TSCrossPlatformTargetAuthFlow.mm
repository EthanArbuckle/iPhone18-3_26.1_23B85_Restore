@interface TSCrossPlatformTargetAuthFlow
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)from;
- (void)backButtonClicked:(id)clicked;
- (void)deactiveCrossPlatformTransport;
- (void)firstViewController;
- (void)firstViewController:(id)controller;
- (void)showQRCodePane:(id)pane;
- (void)transferEventUpdate:(id)update;
- (void)userDidTapCancel;
- (void)viewControllerDidComplete:(id)complete;
@end

@implementation TSCrossPlatformTargetAuthFlow

- (id)firstViewController
{
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [TSCrossPlatformTargetAuthFlow firstViewController];
  }

  return 0;
}

- (void)firstViewController:(id)controller
{
  v13 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (controllerCopy)
  {
    v5 = +[DCTCodeManager shared];
    [v5 setCode:0];

    v6 = objc_alloc_init(CrossPlatformTargetQRCodeWarningViewController);
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = objc_opt_class();
      v11 = 2080;
      v12 = "[TSCrossPlatformTargetAuthFlow firstViewController:]";
      _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "first view - %@ @%s", &v9, 0x16u);
    }

    [(CrossPlatformTargetQRCodeWarningViewController *)v6 setDelegate:self];
    [(TSSIMSetupFlow *)self setTopViewController:v6];
    controllerCopy[2](controllerCopy, v6);
  }

  else
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(&v6->super.super.super.super.super.super, OS_LOG_TYPE_ERROR))
    {
      [TSCrossPlatformTargetAuthFlow firstViewController:];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)showQRCodePane:(id)pane
{
  paneCopy = pane;
  objc_initWeak(&location, self);
  client = self->_client;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__TSCrossPlatformTargetAuthFlow_showQRCodePane___block_invoke;
  v7[3] = &unk_279B44E30;
  objc_copyWeak(&v9, &location);
  v6 = paneCopy;
  v8 = v6;
  [(CoreTelephonyClient *)client activateCrossPlatformTransport:2 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __48__TSCrossPlatformTargetAuthFlow_showQRCodePane___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (!v3)
    {
      v7 = *(WeakRetained + 12);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __48__TSCrossPlatformTargetAuthFlow_showQRCodePane___block_invoke_23;
      v8[3] = &unk_279B44E08;
      objc_copyWeak(&v10, (a1 + 40));
      v9 = *(a1 + 32);
      [v7 getDCTCode:v8];

      objc_destroyWeak(&v10);
      goto LABEL_8;
    }

    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __48__TSCrossPlatformTargetAuthFlow_showQRCodePane___block_invoke_cold_1(v3, v6);
    }
  }

  (*(*(a1 + 32) + 16))();
LABEL_8:
}

void __48__TSCrossPlatformTargetAuthFlow_showQRCodePane___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = _TSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __48__TSCrossPlatformTargetAuthFlow_showQRCodePane___block_invoke_23_cold_1();
      }
    }

    else
    {
      if ([v5 length])
      {
        v10 = +[DCTCodeManager shared];
        [v10 setCode:v5];

        v9 = *(*(a1 + 32) + 16);
        goto LABEL_7;
      }

      v8 = _TSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __48__TSCrossPlatformTargetAuthFlow_showQRCodePane___block_invoke_23_cold_2();
      }
    }
  }

  v9 = *(*(a1 + 32) + 16);
LABEL_7:
  v9();
}

- (void)backButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(TSCrossPlatformTargetAuthFlow *)self deactiveCrossPlatformTransport];
  }
}

- (void)deactiveCrossPlatformTransport
{
  v3 = +[DCTCodeManager shared];
  [v3 setCode:0];

  client = self->_client;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__TSCrossPlatformTargetAuthFlow_deactiveCrossPlatformTransport__block_invoke;
  v5[3] = &unk_279B44638;
  v5[4] = self;
  [(CoreTelephonyClient *)client deactivateCrossPlatformTransport:2 completion:v5];
}

void __63__TSCrossPlatformTargetAuthFlow_deactiveCrossPlatformTransport__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  *(v4 + 96) = 0;

  if (v3)
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __63__TSCrossPlatformTargetAuthFlow_deactiveCrossPlatformTransport__block_invoke_cold_1();
    }
  }
}

- (void)userDidTapCancel
{
  [(TSCrossPlatformTargetAuthFlow *)self deactiveCrossPlatformTransport];
  v3.receiver = self;
  v3.super_class = TSCrossPlatformTargetAuthFlow;
  [(TSSIMSetupFlow *)&v3 userDidTapCancel];
}

- (id)nextViewControllerFrom:(id)from
{
  v18[2] = *MEMORY[0x277D85DE8];
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(CrossPlatformTransferAuthQRCodeViewController);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = fromCopy;
      if ([v6 isOtherButtonTapped])
      {
        v5 = objc_alloc_init(CrossPlatformShowManualDetailsViewController);
      }

      else
      {
        v10 = [TSSubFlowViewController alloc];
        v17[0] = @"FlowTypeKey";
        v17[1] = @"IsSourceKey";
        v18[0] = &unk_287583A48;
        v18[1] = MEMORY[0x277CBEC28];
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
        navigationController = [v6 navigationController];
        v5 = [(TSSubFlowViewController *)v10 initWithOptions:v11 navigationController:navigationController delegate:self];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [TSSubFlowViewController alloc];
        v15[0] = @"FlowTypeKey";
        v15[1] = @"IsSourceKey";
        v16[0] = &unk_287583A48;
        v16[1] = MEMORY[0x277CBEC28];
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
        navigationController2 = [fromCopy navigationController];
        v5 = [(TSSubFlowViewController *)v7 initWithOptions:v8 navigationController:navigationController2 delegate:self];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)viewControllerDidComplete:(id)complete
{
  completeCopy = complete;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || (+[DCTCodeManager shared](DCTCodeManager, "shared"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 hasCode], v5, (v6) || self->_client)
  {
    v10.receiver = self;
    v10.super_class = TSCrossPlatformTargetAuthFlow;
    [(TSSIMSetupFlow *)&v10 viewControllerDidComplete:completeCopy];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CC37B0]);
    v8 = [v7 initWithQueue:MEMORY[0x277D85CD0]];
    client = self->_client;
    self->_client = v8;

    [(CoreTelephonyClient *)self->_client setDelegate:self];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__TSCrossPlatformTargetAuthFlow_viewControllerDidComplete___block_invoke;
    v11[3] = &unk_279B44E58;
    v12 = completeCopy;
    selfCopy = self;
    [(TSCrossPlatformTargetAuthFlow *)self showQRCodePane:v11];
  }
}

id __59__TSCrossPlatformTargetAuthFlow_viewControllerDidComplete___block_invoke(id result, int a2)
{
  if (a2)
  {
    v2 = *(result + 4);
    v3.receiver = *(result + 5);
    v3.super_class = TSCrossPlatformTargetAuthFlow;
    return objc_msgSendSuper2(&v3, sel_viewControllerDidComplete_, v2);
  }

  return result;
}

- (void)transferEventUpdate:(id)update
{
  v44 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = updateCopy;
    v42 = 2080;
    v43 = "[TSCrossPlatformTargetAuthFlow transferEventUpdate:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "transfer event : %@ @%s", buf, 0x16u);
  }

  v6 = [updateCopy objectForKey:@"kCrossTransferEndpoint"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v6 isEqualToString:@"kTarget"])
      {
        v7 = [updateCopy objectForKey:@"kCrossTransferConnected"];
        if (!v7)
        {
          v8 = [updateCopy objectForKey:@"kCrossTransferDCTCode"];
          if (v8)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = v8;
              v11 = +[DCTCodeManager shared];
              [v11 setCode:v10];

              topViewController = [(TSSIMSetupFlow *)self topViewController];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                topViewController2 = [(TSSIMSetupFlow *)self topViewController];
                [(TSCrossPlatformTargetAuthFlow *)self viewControllerDidComplete:topViewController2];
              }
            }
          }

          topViewController5 = [updateCopy objectForKey:@"kCrossTransferConnectFailReason"];
          if (topViewController5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [topViewController5 integerValue] == 20)
          {
            topViewController3 = [(TSSIMSetupFlow *)self topViewController];
            v39[0] = MEMORY[0x277D85DD0];
            v39[1] = 3221225472;
            v39[2] = __53__TSCrossPlatformTargetAuthFlow_transferEventUpdate___block_invoke;
            v39[3] = &unk_279B44B38;
            v39[4] = self;
            [TSFlowHelper showBluetoothOffAlertForCrossPlatformTransfer:topViewController3 withCloseHandler:v39];
          }

          else
          {
            v17 = [updateCopy objectForKey:@"kCrossTransferTimeout"];
            if (v17)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v34 = MEMORY[0x277D75110];
                v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v19 = [v18 localizedStringForKey:@"CROSSTRANSFER_TIMEOUT_TITLE" value:&stru_28753DF48 table:@"Localizable"];
                v20 = +[TSUtilities isGreenTeaCapable];
                v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v22 = v21;
                if (v20)
                {
                  v23 = @"CROSSTRANSFER_TIMEOUT_DETAIL_WLAN";
                }

                else
                {
                  v23 = @"CROSSTRANSFER_TIMEOUT_DETAIL_WIFI";
                }

                v24 = [v21 localizedStringForKey:v23 value:&stru_28753DF48 table:@"Localizable"];
                v35 = [v34 alertControllerWithTitle:v19 message:v24 preferredStyle:1];

                v25 = MEMORY[0x277D750F8];
                v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v27 = [v26 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
                v38[0] = MEMORY[0x277D85DD0];
                v38[1] = 3221225472;
                v38[2] = __53__TSCrossPlatformTargetAuthFlow_transferEventUpdate___block_invoke_2;
                v38[3] = &unk_279B44B38;
                v38[4] = self;
                v28 = [v25 actionWithTitle:v27 style:1 handler:v38];
                [v35 addAction:v28];

                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __53__TSCrossPlatformTargetAuthFlow_transferEventUpdate___block_invoke_3;
                block[3] = &unk_279B44490;
                block[4] = self;
                v37 = v35;
                v29 = v35;
                dispatch_async(MEMORY[0x277D85CD0], block);
              }
            }
          }

          goto LABEL_30;
        }

        v8 = v7;
        if ([v7 BOOLValue])
        {
          topViewController4 = [(TSSIMSetupFlow *)self topViewController];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

LABEL_27:
            v32 = _TSLogDomain();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v41 = "[TSCrossPlatformTargetAuthFlow transferEventUpdate:]";
              _os_log_impl(&dword_262AA8000, v32, OS_LOG_TYPE_DEFAULT, "Target cross transfer devices connected @%s", buf, 0xCu);
            }

            topViewController5 = [(TSSIMSetupFlow *)self topViewController];
            [(TSCrossPlatformTargetAuthFlow *)self viewControllerDidComplete:topViewController5];
LABEL_30:

            goto LABEL_31;
          }

          topViewController6 = [(TSSIMSetupFlow *)self topViewController];
          objc_opt_class();
          v31 = objc_opt_isKindOfClass();

          if (v31)
          {
            goto LABEL_27;
          }
        }

LABEL_31:
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __53__TSCrossPlatformTargetAuthFlow_transferEventUpdate___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) topViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)firstViewController
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)firstViewController:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__TSCrossPlatformTargetAuthFlow_showQRCodePane___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = 136315650;
  v6 = CTPlanTransferEndpointAsString();
  v7 = 2112;
  v8 = a1;
  v9 = 2080;
  v10 = "[TSCrossPlatformTargetAuthFlow showQRCodePane:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]activate transport for %s failed with error: %@ @%s", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

void __48__TSCrossPlatformTargetAuthFlow_showQRCodePane___block_invoke_23_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__TSCrossPlatformTargetAuthFlow_showQRCodePane___block_invoke_23_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__TSCrossPlatformTargetAuthFlow_deactiveCrossPlatformTransport__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end