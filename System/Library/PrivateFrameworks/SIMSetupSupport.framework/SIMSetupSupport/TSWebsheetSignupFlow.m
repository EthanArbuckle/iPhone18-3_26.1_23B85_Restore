@interface TSWebsheetSignupFlow
- (TSWebsheetSignupFlow)init;
- (TSWebsheetSignupFlow)initWithIccid:(id)a3;
- (TSWebsheetSignupFlow)initWithPlan:(id)a3;
- (TSWebsheetSignupFlow)initWithRequestType:(unint64_t)a3 skipIntroPaneForWebsheetFlow:(BOOL)a4 websheetURL:(id)a5 postdata:(id)a6;
- (id)firstViewController;
- (id)getWebsheetViewController;
- (id)nextViewControllerFrom:(id)a3;
- (unint64_t)_translateRequestType:(id)a3;
- (void)_createURLRequest:(id)a3;
- (void)accountCancelled;
- (void)accountPendingRelease;
- (void)dealloc;
- (void)didPurchasePlanSuccessfullyWithCarrier:(id)a3 mnc:(id)a4 gid1:(id)a5 gid2:(id)a6 state:(id)a7;
- (void)didPurchasePlanSuccessfullyWithEid:(id)a3 imei:(id)a4 meid:(id)a5 iccid:(id)a6 alternateSDMP:(id)a7 state:(id)a8;
- (void)didTransferPlanSuccessfullyWithEid:(id)a3 imei:(id)a4 meid:(id)a5 iccid:(id)a6 srcIccid:(id)a7 alternateSDMP:(id)a8 state:(id)a9;
- (void)firstViewController:(id)a3;
@end

@implementation TSWebsheetSignupFlow

- (TSWebsheetSignupFlow)init
{
  v7.receiver = self;
  v7.super_class = TSWebsheetSignupFlow;
  v2 = [(TSSIMSetupFlow *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:0];
    client = v2->_client;
    v2->_client = v3;

    v5 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v5 assertUserInPurchaseFlowStartOver:0 caller:v2];
  }

  return v2;
}

- (TSWebsheetSignupFlow)initWithRequestType:(unint64_t)a3 skipIntroPaneForWebsheetFlow:(BOOL)a4 websheetURL:(id)a5 postdata:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  v13 = [(TSWebsheetSignupFlow *)self init];
  if (v13)
  {
    v14 = _TSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315650;
      v20 = [v11 UTF8String];
      v21 = 2112;
      v22 = v12;
      v23 = 2080;
      v24 = "[TSWebsheetSignupFlow initWithRequestType:skipIntroPaneForWebsheetFlow:websheetURL:postdata:]";
      _os_log_impl(&dword_262AA8000, v14, OS_LOG_TYPE_DEFAULT, "websheet: [%s] %@ @%s", &v19, 0x20u);
    }

    plan = v13->_plan;
    v13->_plan = 0;

    iccid = v13->_iccid;
    v13->_iccid = 0;

    objc_storeStrong(&v13->_websheetURL, a5);
    objc_storeStrong(&v13->_postdata, a6);
    v13->_requestType = a3;
    v13->_skipIntroPaneForWebsheetFlow = a4;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

- (TSWebsheetSignupFlow)initWithPlan:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(TSWebsheetSignupFlow *)self init];
  if (v6)
  {
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2080;
      v15 = "[TSWebsheetSignupFlow initWithPlan:]";
      _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "Websheet flow: %@ @%s", &v12, 0x16u);
    }

    objc_storeStrong(&v6->_plan, a3);
    iccid = v6->_iccid;
    v6->_iccid = 0;

    websheetURL = v6->_websheetURL;
    v6->_websheetURL = 0;

    v6->_skipIntroPaneForWebsheetFlow = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (TSWebsheetSignupFlow)initWithIccid:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(TSWebsheetSignupFlow *)self init];
  if (v6)
  {
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2080;
      v15 = "[TSWebsheetSignupFlow initWithIccid:]";
      _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "Websheet flow: ICCID %@ @%s", &v12, 0x16u);
    }

    plan = v6->_plan;
    v6->_plan = 0;

    objc_storeStrong(&v6->_iccid, a3);
    websheetURL = v6->_websheetURL;
    v6->_websheetURL = 0;

    v6->_skipIntroPaneForWebsheetFlow = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  v3 = +[TSUserInPurchaseFlowAssertion sharedInstance];
  [v3 deassertUserInPurchaseFlowWithForce:0 caller:self];

  v4.receiver = self;
  v4.super_class = TSWebsheetSignupFlow;
  [(TSWebsheetSignupFlow *)&v4 dealloc];
}

- (id)firstViewController
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_skipIntroPaneForWebsheetFlow)
  {
    v3 = [(TSWebsheetSignupFlow *)self getWebsheetViewController];
  }

  else
  {
    v3 = [[TSAddCellularPlanViewController alloc] initWithType:2 allowDismiss:1];
    [(TSAddCellularPlanViewController *)v3 setDelegate:self];
  }

  [(TSSIMSetupFlow *)self setTopViewController:v3];

  return v3;
}

- (void)firstViewController:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(TSWebsheetSignupFlow *)self firstViewController];
    (*(a3 + 2))(v5, v6);
  }
}

- (id)nextViewControllerFrom:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [[TSWebsheetViewController alloc] initForRemotePlan:0 carrierName:0 skipUIDismissal:0];
    [v6 setCallbackDelegate:self];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__TSWebsheetSignupFlow_nextViewControllerFrom___block_invoke;
    v9[3] = &unk_279B45B28;
    v7 = v6;
    v10 = v7;
    [(TSWebsheetSignupFlow *)self _createURLRequest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __47__TSWebsheetSignupFlow_nextViewControllerFrom___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__TSWebsheetSignupFlow_nextViewControllerFrom___block_invoke_2;
  v5[3] = &unk_279B44490;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

- (id)getWebsheetViewController
{
  v3 = [[TSWebsheetViewController alloc] initForRemotePlan:0 carrierName:0 skipUIDismissal:0];
  [v3 setDelegate:self];
  [v3 setCallbackDelegate:self];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__TSWebsheetSignupFlow_getWebsheetViewController__block_invoke;
  v6[3] = &unk_279B45B28;
  v4 = v3;
  v7 = v4;
  [(TSWebsheetSignupFlow *)self _createURLRequest:v6];

  return v4;
}

void __49__TSWebsheetSignupFlow_getWebsheetViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__TSWebsheetSignupFlow_getWebsheetViewController__block_invoke_2;
  v5[3] = &unk_279B44490;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

- (void)didPurchasePlanSuccessfullyWithEid:(id)a3 imei:(id)a4 meid:(id)a5 iccid:(id)a6 alternateSDMP:(id)a7 state:(id)a8
{
  v11 = a8;
  v12 = a7;
  v13 = a6;
  v14 = a3;
  v15 = +[TSCellularPlanManagerCache sharedInstance];
  [v15 didPurchasePlanForEid:v14 iccid:v13 smdpURL:v12 state:v11];
}

- (void)didPurchasePlanSuccessfullyWithCarrier:(id)a3 mnc:(id)a4 gid1:(id)a5 gid2:(id)a6 state:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = +[TSCellularPlanManagerCache sharedInstance];
  [v16 didPurchasePlanForCarrier:v15 mnc:v14 gid1:v13 gid2:v12 state:v11];
}

- (void)didTransferPlanSuccessfullyWithEid:(id)a3 imei:(id)a4 meid:(id)a5 iccid:(id)a6 srcIccid:(id)a7 alternateSDMP:(id)a8 state:(id)a9
{
  v13 = a9;
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a3;
  v18 = +[TSCellularPlanManagerCache sharedInstance];
  [v18 didTransferPlanForEid:v17 iccid:v16 srcIccid:v15 smdpURL:v14 state:v13];
}

- (void)accountCancelled
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]not supported @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)accountPendingRelease
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]not supported @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_createURLRequest:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_websheetURL)
  {
    requestType = self->_requestType;
    v7 = [MEMORY[0x277CBEBC0] URLWithString:?];
    v8 = [TSURLRequestFactory requestWithType:requestType URL:v7 postdata:self->_postdata];
    (v5)[2](v5, v8);

    goto LABEL_8;
  }

  plan = self->_plan;
  if (plan)
  {
    client = self->_client;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __42__TSWebsheetSignupFlow__createURLRequest___block_invoke;
    v24[3] = &unk_279B45B50;
    v24[4] = self;
    v25 = v4;
    [(CoreTelephonyClient *)client websheetInfoForPlan:plan completion:v24];
    v11 = v25;
LABEL_7:

    goto LABEL_8;
  }

  iccid = self->_iccid;
  if (iccid)
  {
    v13 = self->_client;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __42__TSWebsheetSignupFlow__createURLRequest___block_invoke_2;
    v22[3] = &unk_279B45B50;
    v22[4] = self;
    v23 = v4;
    [(CoreTelephonyClient *)v13 websheetInfoForIccid:iccid completion:v22];
    v11 = v23;
    goto LABEL_7;
  }

  v14 = _TSLogDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(TSWebsheetSignupFlow *)v14 _createURLRequest:v15, v16, v17, v18, v19, v20, v21];
  }

  v5[2](v5, 0);
LABEL_8:
}

void __42__TSWebsheetSignupFlow__createURLRequest___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v14 = a2;
  v9 = a3;
  v10 = *(a1 + 40);
  if (a5)
  {
    (*(v10 + 16))(*(a1 + 40), 0);
  }

  else
  {
    v11 = [*(a1 + 32) _translateRequestType:a4];
    v12 = [MEMORY[0x277CBEBC0] URLWithString:v14];
    v13 = [TSURLRequestFactory requestWithType:v11 URL:v12 postdata:v9];
    (*(v10 + 16))(v10, v13);
  }
}

void __42__TSWebsheetSignupFlow__createURLRequest___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v14 = a2;
  v9 = a3;
  v10 = *(a1 + 40);
  if (a5)
  {
    (*(v10 + 16))(*(a1 + 40), 0);
  }

  else
  {
    v11 = [*(a1 + 32) _translateRequestType:a4];
    v12 = [MEMORY[0x277CBEBC0] URLWithString:v14];
    v13 = [TSURLRequestFactory requestWithType:v11 URL:v12 postdata:v9];
    (*(v10 + 16))(v10, v13);
  }
}

- (unint64_t)_translateRequestType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"buddyml"])
  {
    v4 = 5;
  }

  else
  {
    v4 = [v3 isEqualToString:@"websheet"];
  }

  return v4;
}

- (void)_createURLRequest:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Missing required parameters @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end