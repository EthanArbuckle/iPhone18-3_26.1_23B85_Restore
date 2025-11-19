@interface TSCarrierSignupFlow
- (TSCarrierSignupFlow)initWithPlan:(id)a3;
- (TSCarrierSignupFlow)initWithPlan:(id)a3 queriableFirstViewController:(BOOL)a4 hostViewController:(id)a5;
- (id)_getSFSafariViewControllerWithURL:(id)a3;
- (id)_handleCarrierInfoWithUrl:(id)a3 postdata:(id)a4 type:(id)a5 error:(id)a6;
- (id)nextViewControllerFrom:(id)a3;
- (void)dealloc;
- (void)didPurchasePlanSuccessfullyWithCarrier:(id)a3 mnc:(id)a4 gid1:(id)a5 gid2:(id)a6 state:(id)a7;
- (void)didPurchasePlanSuccessfullyWithEid:(id)a3 imei:(id)a4 meid:(id)a5 iccid:(id)a6 alternateSDMP:(id)a7 state:(id)a8;
- (void)safariViewControllerDidFinish:(id)a3;
- (void)showFirstViewControllerWithHostController:(id)a3 completion:(id)a4;
- (void)startTimer:(int64_t)a3;
- (void)viewControllerDidComplete:(id)a3;
@end

@implementation TSCarrierSignupFlow

- (TSCarrierSignupFlow)initWithPlan:(id)a3 queriableFirstViewController:(BOOL)a4 hostViewController:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!+[TSUtilities isPad])
  {
    v17 = _TSLogDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [TSCarrierSignupFlow initWithPlan:v17 queriableFirstViewController:? hostViewController:?];
    }

    goto LABEL_10;
  }

  if (!v9)
  {
    v17 = _TSLogDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [TSCarrierSignupFlow initWithPlan:queriableFirstViewController:hostViewController:];
    }

LABEL_10:

    v16 = 0;
    goto LABEL_11;
  }

  v19.receiver = self;
  v19.super_class = TSCarrierSignupFlow;
  v11 = [(TSSIMSetupFlow *)&v19 init];
  if (v11)
  {
    v12 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v12 assertUserInPurchaseFlowStartOver:0 caller:v11];

    objc_storeStrong(&v11->_hostViewController, a5);
    v11->_isQueriableFirstViewController = a4;
    v13 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:0];
    client = v11->_client;
    v11->_client = v13;

    objc_storeStrong(&v11->_plan, a3);
    postdata = v11->_postdata;
    v11->_postdata = 0;
  }

  self = v11;
  v16 = self;
LABEL_11:

  return v16;
}

- (TSCarrierSignupFlow)initWithPlan:(id)a3
{
  v20[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!+[TSUtilities isPad])
  {
    v15 = _TSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [TSCarrierSignupFlow initWithPlan:v15];
    }

    goto LABEL_10;
  }

  if (!v5)
  {
    v15 = _TSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [TSCarrierSignupFlow initWithPlan:];
    }

LABEL_10:

    v14 = 0;
    goto LABEL_11;
  }

  v18.receiver = self;
  v18.super_class = TSCarrierSignupFlow;
  v6 = [(TSSIMSetupFlow *)&v18 init];
  if (v6)
  {
    v7 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v7 assertUserInPurchaseFlowStartOver:0 caller:v6];

    v6->_isQueriableFirstViewController = 0;
    v8 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:0];
    client = v6->_client;
    v6->_client = v8;

    objc_storeStrong(&v6->_plan, a3);
    postdata = v6->_postdata;
    v6->_postdata = 0;

    v19[0] = @"FlowTypeKey";
    v19[1] = @"SkipActivatingPane";
    v20[0] = &unk_287583820;
    v20[1] = MEMORY[0x277CBEC28];
    v19[2] = @"DelayStartActivatingTimer";
    v20[2] = &unk_287583838;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
    v12 = [TSSIMSetupFlow flowWithOptions:v11];
    subFlow = v6->_subFlow;
    v6->_subFlow = v12;
  }

  self = v6;
  v14 = self;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)dealloc
{
  v3 = +[TSUserInPurchaseFlowAssertion sharedInstance];
  [v3 deassertUserInPurchaseFlowWithForce:0 caller:self];

  v4.receiver = self;
  v4.super_class = TSCarrierSignupFlow;
  [(TSCarrierSignupFlow *)&v4 dealloc];
}

- (void)showFirstViewControllerWithHostController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_initWeak(&location, self);
    client = self->_client;
    plan = self->_plan;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__TSCarrierSignupFlow_showFirstViewControllerWithHostController_completion___block_invoke;
    v11[3] = &unk_279B44A00;
    objc_copyWeak(&v15, &location);
    v14 = v7;
    v12 = v6;
    v13 = self;
    [(CoreTelephonyClient *)client websheetInfoForPlan:plan completion:v11];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TSCarrierSignupFlow showFirstViewControllerWithHostController:completion:];
    }

    (*(v7 + 2))(v7, 0);
  }
}

void __76__TSCarrierSignupFlow_showFirstViewControllerWithHostController_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    v15 = [WeakRetained _handleCarrierInfoWithUrl:v9 postdata:v10 type:v11 error:v12];
    if (v15)
    {
      objc_storeStrong(v14 + 14, a3);
      if ([v11 isEqualToString:@"buddyml"])
      {
        if ([*(a1 + 32) isInModalPresentation])
        {
          v16 = [*(a1 + 32) navigationController];
        }

        else
        {
          v16 = [objc_alloc(MEMORY[0x277D757A0]) initWithNibName:0 bundle:0];
          [v16 setModalInPresentation:1];
          [v16 setModalPresentationStyle:2];
        }

        v23 = [[TSBuddyMLController alloc] initWithHostController:v16];
        v24 = v14[15];
        v14[15] = v23;

        [v14[15] setDelegate:v14];
        v25 = v14[15];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __76__TSCarrierSignupFlow_showFirstViewControllerWithHostController_completion___block_invoke_3;
        v35[3] = &unk_279B44988;
        v35[4] = v14;
        v36 = *(a1 + 32);
        v26 = *(a1 + 48);
        v37 = v16;
        v38 = v26;
        v21 = v16;
        [v25 loadRequest:v15 completion:v35];

        v22 = v36;
        goto LABEL_12;
      }

      if ([v11 isEqualToString:@"Lite"])
      {
        v18 = *(a1 + 40);
        v19 = [v15 URL];
        v20 = [v18 _getSFSafariViewControllerWithURL:v19];

        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __76__TSCarrierSignupFlow_showFirstViewControllerWithHostController_completion___block_invoke_5;
        v31[3] = &unk_279B449B0;
        v34 = *(a1 + 48);
        v32 = *(a1 + 32);
        v33 = v20;
        v21 = v20;
        dispatch_async(MEMORY[0x277D85CD0], v31);

        v22 = v34;
LABEL_12:

LABEL_15:
        goto LABEL_16;
      }

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __76__TSCarrierSignupFlow_showFirstViewControllerWithHostController_completion___block_invoke_6;
      v27[3] = &unk_279B449D8;
      v27[4] = v14;
      v28 = v15;
      v29 = *(a1 + 32);
      v30 = *(a1 + 48);
      dispatch_async(MEMORY[0x277D85CD0], v27);

      v17 = v28;
    }

    else
    {
      [v14 showLoadFailureAlert:*(a1 + 32) error:v12];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76__TSCarrierSignupFlow_showFirstViewControllerWithHostController_completion___block_invoke_2;
      block[3] = &unk_279B44938;
      v40 = *(a1 + 48);
      dispatch_async(MEMORY[0x277D85CD0], block);
      v17 = v40;
    }

    goto LABEL_15;
  }

  (*(*(a1 + 48) + 16))();
LABEL_16:
}

void __76__TSCarrierSignupFlow_showFirstViewControllerWithHostController_completion___block_invoke_3(id *a1, char a2)
{
  if (a2)
  {
    v3 = a1[6];
    v4 = [a1[5] navigationController];

    if (v3 != v4)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76__TSCarrierSignupFlow_showFirstViewControllerWithHostController_completion___block_invoke_4;
      block[3] = &unk_279B44960;
      v7 = a1[5];
      v8 = a1[6];
      v9 = a1[7];
      dispatch_async(MEMORY[0x277D85CD0], block);

      return;
    }

    v5 = *(a1[7] + 2);
  }

  else
  {
    [a1[4] showLoadFailureAlert:a1[5] error:0];
    v5 = *(a1[7] + 2);
  }

  v5();
}

uint64_t __76__TSCarrierSignupFlow_showFirstViewControllerWithHostController_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) presentViewController:*(a1 + 40) animated:1 completion:0];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __76__TSCarrierSignupFlow_showFirstViewControllerWithHostController_completion___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  if ([*(a1 + 32) isInModalPresentation])
  {
    v2 = [*(a1 + 32) navigationController];
    [v2 setNavigationBarHidden:1 animated:0];

    v3 = [*(a1 + 32) navigationController];
    [v3 pushViewController:*(a1 + 40) animated:1];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:*(a1 + 40)];
    [v3 setModalPresentationStyle:2];
    [v3 setNavigationBarHidden:1 animated:0];
    [*(a1 + 32) presentViewController:v3 animated:1 completion:0];
  }
}

void __76__TSCarrierSignupFlow_showFirstViewControllerWithHostController_completion___block_invoke_6(uint64_t a1)
{
  v2 = [[TSWebsheetViewController alloc] initForRemotePlan:0 carrierName:0 skipUIDismissal:1];
  [v2 setDelegate:*(a1 + 32)];
  [v2 setCallbackDelegate:*(a1 + 32)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__TSCarrierSignupFlow_showFirstViewControllerWithHostController_completion___block_invoke_7;
  v6[3] = &unk_279B44988;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = *(a1 + 56);
  v8 = v2;
  v9 = v4;
  v5 = v2;
  [v5 loadRequest:v3 completion:v6];
}

void __76__TSCarrierSignupFlow_showFirstViewControllerWithHostController_completion___block_invoke_7(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    (*(*(a1 + 56) + 16))();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__TSCarrierSignupFlow_showFirstViewControllerWithHostController_completion___block_invoke_8;
    block[3] = &unk_279B44688;
    block[4] = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    [*(a1 + 32) showLoadFailureAlert:*(a1 + 40) error:0];
    v4 = *(*(a1 + 56) + 16);

    v4();
  }
}

void __76__TSCarrierSignupFlow_showFirstViewControllerWithHostController_completion___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) setTopViewController:*(a1 + 40)];
  if ([*(a1 + 48) isInModalPresentation])
  {
    v2 = [*(a1 + 48) navigationController];
    [v2 pushViewController:*(a1 + 40) animated:1];
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:*(a1 + 40)];
    [v2 setModalPresentationStyle:2];
    [*(a1 + 48) presentViewController:v2 animated:1 completion:0];
  }
}

- (id)nextViewControllerFrom:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(TSBuddyMLController *)self->_buddyMLController url];
    if (v5)
    {
      v6 = v5;
      v7 = [(TSBuddyMLController *)self->_buddyMLController type];
      v8 = [v7 isEqualToString:@"Lite"];

      if (v8)
      {
        v9 = [(TSCarrierSignupFlow *)self _getSFSafariViewControllerWithURL:v6];
      }

      else
      {
        v9 = [[TSWebsheetViewController alloc] initForRemotePlan:0 carrierName:0 skipUIDismissal:1];
        [(TSSubFlowViewController *)v9 setDelegate:self];
        [(TSSubFlowViewController *)v9 setCallbackDelegate:self];
        v13 = [TSURLRequestFactory requestWithType:1 URL:v6 postdata:self->_postdata];
        [(TSSubFlowViewController *)v9 loadRequest:v13 completion:0];
      }

      goto LABEL_12;
    }

    [(TSSIMSetupFlow *)self showLoadFailureAlert:v4 error:0];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 dismissCause] == 3)
    {
      v10 = [TSSubFlowViewController alloc];
      subFlow = self->_subFlow;
      v12 = [(TSSIMSetupFlow *)self navigationController];
      v9 = [(TSSubFlowViewController *)v10 initWithFlow:subFlow navigationController:v12 delegate:self];

      goto LABEL_12;
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (void)viewControllerDidComplete:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = [v4 dismissCause];
  if (v5)
  {
    if (v5 == 1)
    {
      [(TSSIMSetupFlow *)self endFlowGracefully:3];
      goto LABEL_6;
    }

LABEL_5:
    v6.receiver = self;
    v6.super_class = TSCarrierSignupFlow;
    [(TSSIMSetupFlow *)&v6 viewControllerDidComplete:v4];
    goto LABEL_6;
  }

  if (!self->_buddyMLController && !self->_isQueriableFirstViewController)
  {
    [(TSSIMSetupFlow *)self userDidTapCancel];
  }

LABEL_6:
}

- (void)startTimer:(int64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    subFlow = self->_subFlow;
    v8 = 138412546;
    v9 = subFlow;
    v10 = 2080;
    v11 = "[TSCarrierSignupFlow startTimer:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "start timer on subflow %@ @%s", &v8, 0x16u);
  }

  [(TSSIMSetupFlow *)self->_subFlow startTimer:a3];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)didPurchasePlanSuccessfullyWithEid:(id)a3 imei:(id)a4 meid:(id)a5 iccid:(id)a6 alternateSDMP:(id)a7 state:(id)a8
{
  v11 = a8;
  v12 = a7;
  v13 = a6;
  v15 = [TSUtilities getByteRepresentationOf:a3];
  v14 = [MEMORY[0x277CF96D8] sharedManager];
  [v14 didPurchasePlanForCsn:v15 iccid:v13 profileServer:v12 state:v11];
}

- (void)didPurchasePlanSuccessfullyWithCarrier:(id)a3 mnc:(id)a4 gid1:(id)a5 gid2:(id)a6 state:(id)a7
{
  v11 = MEMORY[0x277CF96D8];
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v11 sharedManager];
  [v17 didPurchasePlanForCarrier:v16 mnc:v15 gid1:v14 gid2:v13 state:v12];
}

- (void)safariViewControllerDidFinish:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__TSCarrierSignupFlow_safariViewControllerDidFinish___block_invoke;
  v6[3] = &unk_279B44490;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __53__TSCarrierSignupFlow_safariViewControllerDidFinish___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TSCarrierSignupFlow safariViewControllerDidFinish:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v2, OS_LOG_TYPE_DEFAULT, "safariViewController did finish @%s", &v7, 0xCu);
  }

  v3 = *(*(a1 + 32) + 96);
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(*(a1 + 32) + 96) userDidExitWebsheetFlowForPlan:*(*(a1 + 32) + 104)];
  }

  result = [*(a1 + 32) viewControllerDidComplete:*(a1 + 40)];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_handleCarrierInfoWithUrl:(id)a3 postdata:(id)a4 type:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v14 = _TSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [TSCarrierSignupFlow _handleCarrierInfoWithUrl:v13 postdata:v14 type:? error:?];
    }

LABEL_12:

    v17 = 0;
    goto LABEL_13;
  }

  if (!v10 || ![v10 length])
  {
    v14 = _TSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [TSCarrierSignupFlow _handleCarrierInfoWithUrl:? postdata:? type:? error:?];
    }

    goto LABEL_12;
  }

  if (v11 && [v11 count])
  {
    if ([v12 isEqualToString:@"websheet"])
    {
      v15 = [MEMORY[0x277CBEBC0] URLWithString:v10];
      v16 = 1;
    }

    else if ([v12 isEqualToString:@"buddyml"])
    {
      v15 = [MEMORY[0x277CBEBC0] URLWithString:v10];
      v16 = 5;
    }

    else if ([v12 isEqualToString:@"entitlements"])
    {
      v15 = [MEMORY[0x277CBEBC0] URLWithString:v10];
      v16 = 2;
    }

    else
    {
      if (![v12 isEqualToString:@"Lite"])
      {
        v14 = _TSLogDomain();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [TSCarrierSignupFlow _handleCarrierInfoWithUrl:v12 postdata:self type:v14 error:?];
        }

        goto LABEL_12;
      }

      v15 = [MEMORY[0x277CBEBC0] URLWithString:v10];
      v16 = 6;
    }

    v17 = [TSURLRequestFactory requestWithType:v16 URL:v15 postdata:v11];
  }

  else
  {
    v19 = _TSLogDomain();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [TSCarrierSignupFlow _handleCarrierInfoWithUrl:postdata:type:error:];
    }

    v20 = MEMORY[0x277CCAB70];
    v21 = [MEMORY[0x277CBEBC0] URLWithString:v10];
    v17 = [v20 requestWithURL:v21];

    [v17 _setNonAppInitiated:1];
  }

LABEL_13:

  return v17;
}

- (id)_getSFSafariViewControllerWithURL:(id)a3
{
  v4 = MEMORY[0x277CDB708];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setEntersReaderIfAvailable:0];
  [v6 _setEphemeral:1];
  if (objc_opt_respondsToSelector())
  {
    [v6 set_isBeingUsedForCellularServiceBootstrap:1];
  }

  v7 = [objc_alloc(MEMORY[0x277CDB700]) initWithURL:v5 configuration:v6];

  [v7 setDelegate:self];
  [v7 _setShowingLinkPreview:0];
  [v7 _setShowingLinkPreviewWithMinimalUI:0];
  [v7 setDismissButtonStyle:0];

  return v7;
}

- (void)initWithPlan:(os_log_t)log queriableFirstViewController:hostViewController:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSCarrierSignupFlow initWithPlan:queriableFirstViewController:hostViewController:]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]WARNING: Creating flow for unsupported hardware - unexpected behaviour will be seen @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithPlan:queriableFirstViewController:hostViewController:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithPlan:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSCarrierSignupFlow initWithPlan:]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]WARNING: Creating flow for unsupported hardware - unexpected behaviour will be seen @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithPlan:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)showFirstViewControllerWithHostController:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleCarrierInfoWithUrl:(NSObject *)a3 postdata:type:error:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  *v4 = 138412802;
  *&v4[4] = *(a1 + 104);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  *&v4[22] = 2080;
  OUTLINED_FUNCTION_1_0(&dword_262AA8000, a2, a3, "[E]Signup info for: %@ failed: %@ @%s", *v4, *&v4[8], *&v4[16], "[TSCarrierSignupFlow _handleCarrierInfoWithUrl:postdata:type:error:]");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_handleCarrierInfoWithUrl:(NSObject *)a3 postdata:type:error:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  *v4 = 138412802;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = *(a2 + 104);
  *&v4[22] = 2080;
  OUTLINED_FUNCTION_1_0(&dword_262AA8000, a2, a3, "[E]invalid request type: %@ for %@ @%s", *v4, *&v4[8], *&v4[16], "[TSCarrierSignupFlow _handleCarrierInfoWithUrl:postdata:type:error:]");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_handleCarrierInfoWithUrl:postdata:type:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleCarrierInfoWithUrl:(uint64_t)a1 postdata:type:error:.cold.4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 104);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end