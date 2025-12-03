@interface TSPostMigrationFlow
- (TSPostMigrationFlow)initWithSession:(id)session sourceOSVersion:(id)version proximitySetupState:(unint64_t)state transferablePlanOnSource:(BOOL)source;
- (id)_createTargetProxFlowVC;
- (id)_createTransferCloudFlowVC;
- (id)_createTransferFlowVC;
- (id)_subFlowVcWithReconnectionCredentials:(BOOL)credentials;
- (id)nextViewControllerFrom:(id)from;
- (void)firstViewController:(id)controller;
- (void)prepareViewController:(id)controller completion:(id)completion;
- (void)startOverWithFirstViewController:(id)controller;
@end

@implementation TSPostMigrationFlow

- (TSPostMigrationFlow)initWithSession:(id)session sourceOSVersion:(id)version proximitySetupState:(unint64_t)state transferablePlanOnSource:(BOOL)source
{
  sessionCopy = session;
  versionCopy = version;
  v19.receiver = self;
  v19.super_class = TSPostMigrationFlow;
  v13 = [(TSSIMSetupFlow *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_session, session);
    objc_storeStrong(&v14->_sourceOSVersion, version);
    v14->_proximitySetupState = state;
    v14->_transferablePlanOnSource = source;
    v14->_isProxFlowShown = 0;
    v15 = objc_alloc(MEMORY[0x277CC37B0]);
    v16 = [v15 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v14->_ctClient;
    v14->_ctClient = v16;

    [(CoreTelephonyClient *)v14->_ctClient setDelegate:v14];
  }

  return v14;
}

- (void)firstViewController:(id)controller
{
  controllerCopy = controller;
  objc_initWeak(&location, self);
  ctClient = self->_ctClient;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__TSPostMigrationFlow_firstViewController___block_invoke;
  v7[3] = &unk_279B442E8;
  objc_copyWeak(&v9, &location);
  v6 = controllerCopy;
  v8 = v6;
  [(CoreTelephonyClient *)ctClient isPreSharedKeyForReconnectionPresent:0 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __43__TSPostMigrationFlow_firstViewController___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _subFlowVcWithReconnectionCredentials:a2];
    [v6 prepareViewController:v5 completion:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)nextViewControllerFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if ([fromCopy subFlowType] == 5 || objc_msgSend(fromCopy, "subFlowType") == 10002)
  {
    _createTransferCloudFlowVC = [(TSPostMigrationFlow *)self _createTransferCloudFlowVC];
  }

  else
  {
    _createTransferCloudFlowVC = 0;
  }

  v6 = _TSLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138413058;
    v10 = fromCopy;
    v11 = 2048;
    subFlowType = [fromCopy subFlowType];
    v13 = 2112;
    v14 = _createTransferCloudFlowVC;
    v15 = 2080;
    v16 = "[TSPostMigrationFlow nextViewControllerFrom:]";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "current view:%@, current sub flow type: %lu, next view:%@ @%s", &v9, 0x2Au);
  }

  v7 = *MEMORY[0x277D85DE8];

  return _createTransferCloudFlowVC;
}

- (void)startOverWithFirstViewController:(id)controller
{
  controllerCopy = controller;
  topViewController = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    topViewController2 = [(TSSIMSetupFlow *)self topViewController];
    subFlow = [topViewController2 subFlow];
    [subFlow startOverWithFirstViewController:controllerCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TSPostMigrationFlow;
    [(TSSIMSetupFlow *)&v9 startOverWithFirstViewController:controllerCopy];
  }
}

- (void)prepareViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v8 = completionCopy;
  if (controllerCopy)
  {
    [(TSSIMSetupFlow *)self setTopViewController:controllerCopy];
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__TSPostMigrationFlow_prepareViewController_completion___block_invoke;
    v9[3] = &unk_279B44310;
    objc_copyWeak(&v13, &location);
    v12 = v8;
    v10 = controllerCopy;
    selfCopy = self;
    [(TSSIMSetupFlow *)self maybePrepareNextDisplayViewController:v10 completion:v9];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __56__TSPostMigrationFlow_prepareViewController_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (!v6)
    {
      v5 = [*(a1 + 40) nextViewControllerFrom:*(a1 + 32)];
      if (v5)
      {
        [*(a1 + 40) prepareViewController:v5 completion:*(a1 + 48)];
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }

      goto LABEL_13;
    }

    if ([*(a1 + 32) subFlowType] == 5 || objc_msgSend(*(a1 + 32), "subFlowType") == 10002)
    {
      WeakRetained[97] = 1;
    }

    v4 = *(*(a1 + 48) + 16);
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);
  }

  v4();
LABEL_13:
}

- (id)_subFlowVcWithReconnectionCredentials:(BOOL)credentials
{
  credentialsCopy = credentials;
  v17 = *MEMORY[0x277D85DE8];
  v5 = +[TSCoreTelephonyClientCache sharedInstance];
  usingBootstrapDataService = [v5 usingBootstrapDataService];

  v7 = +[TSUtilities isWifiAvailable];
  v8 = _TSLogDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v15) = 67109634;
    DWORD1(v15) = usingBootstrapDataService;
    WORD4(v15) = 1024;
    *(&v15 + 10) = v7;
    HIWORD(v15) = 2080;
    v16 = "[TSPostMigrationFlow _subFlowVcWithReconnectionCredentials:]";
    _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "Using bootstrap: %d, on wifi:%d @%s", &v15, 0x18u);
  }

  sourceOSVersion = self->_sourceOSVersion;
  if (!sourceOSVersion || [TSUtilities compareProductVersion:sourceOSVersion toProductVersion:@"26.0"]== -1)
  {
    goto LABEL_14;
  }

  if (!v7 && (usingBootstrapDataService & 1) != 0)
  {
    v11 = _TSLogDomain();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:

      goto LABEL_14;
    }

    LODWORD(v15) = 136315138;
    *(&v15 + 4) = "[TSPostMigrationFlow _subFlowVcWithReconnectionCredentials:]";
    v12 = "Using bootstrap @%s";
LABEL_12:
    _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, v12, &v15, 0xCu);
    goto LABEL_13;
  }

  if (!self->_transferablePlanOnSource)
  {
LABEL_14:
    _createTransferCloudFlowVC = [(TSPostMigrationFlow *)self _createTransferCloudFlowVC];
    goto LABEL_15;
  }

  if (self->_session)
  {
    if (credentialsCopy)
    {
      [(CoreTelephonyClient *)self->_ctClient clearReconnectionCredentials:&__block_literal_global_0];
      _createTransferCloudFlowVC = [(TSPostMigrationFlow *)self _createTransferFlowVC];
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!credentialsCopy)
  {
    v11 = _TSLogDomain();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    LODWORD(v15) = 136315138;
    *(&v15 + 4) = "[TSPostMigrationFlow _subFlowVcWithReconnectionCredentials:]";
    v12 = "No reconnection credentials @%s";
    goto LABEL_12;
  }

  _createTransferCloudFlowVC = [(TSPostMigrationFlow *)self _createTargetProxFlowVC];
LABEL_15:
  v13 = *MEMORY[0x277D85DE8];

  return _createTransferCloudFlowVC;
}

- (id)_createTransferCloudFlowVC
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = [TSSubFlowViewController alloc];
  v12[0] = &unk_2875837D8;
  v11[0] = @"FlowTypeKey";
  v11[1] = @"ProximitySetupStateKey";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_proximitySetupState];
  v12[1] = v4;
  v11[2] = @"ProxPlansFilteredKey";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isProxFlowShown];
  v12[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  navigationController = [(TSSIMSetupFlow *)self navigationController];
  v8 = [(TSSubFlowViewController *)v3 initWithOptions:v6 navigationController:navigationController delegate:self];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_createTransferFlowVC
{
  v13[6] = *MEMORY[0x277D85DE8];
  v3 = [TSSubFlowViewController alloc];
  v12[0] = @"FlowTypeKey";
  v12[1] = @"MessageSessionKey";
  session = self->_session;
  v13[0] = &unk_2875837F0;
  v13[1] = session;
  v12[2] = @"HasTransferablePlan";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_transferablePlanOnSource];
  v13[2] = v5;
  v13[3] = MEMORY[0x277CBEC28];
  v12[3] = @"IsStandaloneProximityTransfer";
  v12[4] = @"TransferBackPlan";
  null = [MEMORY[0x277CBEB68] null];
  v12[5] = @"IsPostMigrationFlowKey";
  v13[4] = null;
  v13[5] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];
  navigationController = [(TSSIMSetupFlow *)self navigationController];
  v9 = [(TSSubFlowViewController *)v3 initWithOptions:v7 navigationController:navigationController delegate:self];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_createTargetProxFlowVC
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = [TSSubFlowViewController alloc];
  v11[0] = @"FlowTypeKey";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
  v12[0] = v4;
  v12[1] = MEMORY[0x277CBEC28];
  v11[1] = @"IsClientKey";
  v11[2] = @"TransferBackPlan";
  null = [MEMORY[0x277CBEB68] null];
  v11[3] = @"IsPostMigrationFlowKey";
  v12[2] = null;
  v12[3] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  navigationController = [(TSSIMSetupFlow *)self navigationController];
  v8 = [(TSSubFlowViewController *)v3 initWithOptions:v6 navigationController:navigationController delegate:self];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end