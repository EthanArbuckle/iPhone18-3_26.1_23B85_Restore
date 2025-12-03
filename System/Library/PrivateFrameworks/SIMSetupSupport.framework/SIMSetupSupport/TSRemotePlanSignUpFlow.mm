@interface TSRemotePlanSignUpFlow
- (TSRemotePlanSignUpFlow)initWithRemotePlanWebsheetContext:(id)context;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)from;
- (void)accountCancelled;
- (void)accountPendingRelease;
- (void)dealloc;
- (void)didPurchasePlanSuccessfullyWithEid:(id)eid imei:(id)imei meid:(id)meid iccid:(id)iccid alternateSDMP:(id)p state:(id)state;
- (void)didTransferPlanSuccessfullyWithEid:(id)eid imei:(id)imei meid:(id)meid iccid:(id)iccid srcIccid:(id)srcIccid alternateSDMP:(id)p state:(id)state;
- (void)firstViewController:(id)controller;
@end

@implementation TSRemotePlanSignUpFlow

- (TSRemotePlanSignUpFlow)initWithRemotePlanWebsheetContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TSRemotePlanSignUpFlow;
  v5 = [(TSSIMSetupFlow *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(TSRemotePlanSignUpFlow *)v5 setRemotePlanWebsheetContext:contextCopy];
    v7 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v7 assertUserInPurchaseFlowStartOver:0 caller:v6];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[TSUserInPurchaseFlowAssertion sharedInstance];
  [v3 deassertUserInPurchaseFlowWithForce:0 caller:self];

  v4.receiver = self;
  v4.super_class = TSRemotePlanSignUpFlow;
  [(TSRemotePlanSignUpFlow *)&v4 dealloc];
}

- (id)firstViewController
{
  v3 = [TSCellularSetupLoadingViewController alloc];
  remotePlanWebsheetContext = [(TSRemotePlanSignUpFlow *)self remotePlanWebsheetContext];
  v5 = [(TSCellularSetupLoadingViewController *)v3 initWithRemotePlanWebsheetContext:remotePlanWebsheetContext isRemotePlan:1];

  [(TSCellularSetupLoadingViewController *)v5 setDelegate:self];
  [(TSSIMSetupFlow *)self setTopViewController:v5];

  return v5;
}

- (void)firstViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (controllerCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__TSRemotePlanSignUpFlow_firstViewController___block_invoke;
    v6[3] = &unk_279B45058;
    v6[4] = self;
    v7 = controllerCopy;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __46__TSRemotePlanSignUpFlow_firstViewController___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) firstViewController];
  (*(v1 + 16))(v1, v2);
}

- (id)nextViewControllerFrom:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [TSWebsheetViewController alloc];
    remotePlanWebsheetContext = [(TSRemotePlanSignUpFlow *)self remotePlanWebsheetContext];
    carrierName = [remotePlanWebsheetContext carrierName];
    v8 = [(TSWebsheetViewController *)v5 initForRemotePlan:1 carrierName:carrierName viewController:fromCopy];

    [v8 setCallbackDelegate:self];
    v9 = v8;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__TSRemotePlanSignUpFlow_nextViewControllerFrom___block_invoke;
    v12[3] = &unk_279B44490;
    v13 = fromCopy;
    v14 = v9;
    v10 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __49__TSRemotePlanSignUpFlow_nextViewControllerFrom___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 postdata];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CF96C0]];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  v6 = dispatch_time(0, 500000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__TSRemotePlanSignUpFlow_nextViewControllerFrom___block_invoke_2;
  block[3] = &unk_279B44700;
  v11 = v5;
  v9 = v2;
  v10 = *(a1 + 40);
  v7 = v2;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

void __49__TSRemotePlanSignUpFlow_nextViewControllerFrom___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  v3 = [*(a1 + 32) carrierURL];
  v4 = [*(a1 + 32) postdata];
  v5 = [TSURLRequestFactory requestWithType:v2 URL:v3 postdata:v4];

  if (([*(a1 + 32) isProcessCanceled] & 1) == 0)
  {
    [*(a1 + 40) loadRequest:v5 completion:0];
  }
}

- (void)didPurchasePlanSuccessfullyWithEid:(id)eid imei:(id)imei meid:(id)meid iccid:(id)iccid alternateSDMP:(id)p state:(id)state
{
  v12 = MEMORY[0x277CF96D8];
  pCopy = p;
  iccidCopy = iccid;
  meidCopy = meid;
  imeiCopy = imei;
  eidCopy = eid;
  sharedManager = [v12 sharedManager];
  [sharedManager didPurchaseRemotePlanForEid:eidCopy imei:imeiCopy meid:meidCopy iccid:iccidCopy alternateSmdpFqdn:pCopy completion:&__block_literal_global_18];
}

void __97__TSRemotePlanSignUpFlow_didPurchasePlanSuccessfullyWithEid_imei_meid_iccid_alternateSDMP_state___block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = _TSLogDomain();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[TSRemotePlanSignUpFlow didPurchasePlanSuccessfullyWithEid:imei:meid:iccid:alternateSDMP:state:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v0, OS_LOG_TYPE_DEFAULT, "Callback after purchase @%s", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)didTransferPlanSuccessfullyWithEid:(id)eid imei:(id)imei meid:(id)meid iccid:(id)iccid srcIccid:(id)srcIccid alternateSDMP:(id)p state:(id)state
{
  eidCopy = eid;
  imeiCopy = imei;
  meidCopy = meid;
  iccidCopy = iccid;
  pCopy = p;
  v17 = [state isEqualToString:@"pending-profile-release"];
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v19 = mEMORY[0x277CF96D8];
  if (v17)
  {
    [mEMORY[0x277CF96D8] pendingReleaseRemotePlan];
  }

  else
  {
    [mEMORY[0x277CF96D8] didPurchaseRemotePlanForEid:eidCopy imei:imeiCopy meid:meidCopy iccid:iccidCopy alternateSmdpFqdn:pCopy completion:&__block_literal_global_35];
  }
}

void __106__TSRemotePlanSignUpFlow_didTransferPlanSuccessfullyWithEid_imei_meid_iccid_srcIccid_alternateSDMP_state___block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = _TSLogDomain();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[TSRemotePlanSignUpFlow didTransferPlanSuccessfullyWithEid:imei:meid:iccid:srcIccid:alternateSDMP:state:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v0, OS_LOG_TYPE_DEFAULT, "Callback after transfer @%s", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)accountCancelled
{
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  [mEMORY[0x277CF96D8] didCancelRemotePlan];
}

- (void)accountPendingRelease
{
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  [mEMORY[0x277CF96D8] pendingReleaseRemotePlan];
}

@end