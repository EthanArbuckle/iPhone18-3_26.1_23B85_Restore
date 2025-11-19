@interface TSSourceAutoReconnectTransferFlow
- (TSSourceAutoReconnectTransferFlow)init;
- (id)nextViewControllerFrom:(id)a3;
- (void)firstViewController:(id)a3;
- (void)proxSetupAuthEventUpdate:(id)a3;
- (void)transferEventUpdate:(id)a3;
@end

@implementation TSSourceAutoReconnectTransferFlow

- (TSSourceAutoReconnectTransferFlow)init
{
  v7.receiver = self;
  v7.super_class = TSSourceAutoReconnectTransferFlow;
  v2 = [(TSSIMSetupFlow *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CC37B0]);
    v4 = [v3 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v2->_ctClient;
    v2->_ctClient = v4;

    [(CoreTelephonyClient *)v2->_ctClient setDelegate:v2];
  }

  return v2;
}

- (void)firstViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    ctClient = self->_ctClient;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__TSSourceAutoReconnectTransferFlow_firstViewController___block_invoke;
    v6[3] = &unk_279B442A0;
    objc_copyWeak(&v8, &location);
    v6[4] = self;
    v7 = v4;
    [(CoreTelephonyClient *)ctClient isPreSharedKeyForReconnectionPresent:0 completion:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __57__TSSourceAutoReconnectTransferFlow_firstViewController___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __57__TSSourceAutoReconnectTransferFlow_firstViewController___block_invoke_cold_1(v6);
    }

    goto LABEL_7;
  }

  if ((a2 & 1) == 0)
  {
LABEL_7:
    (*(*(a1 + 40) + 16))();
    goto LABEL_8;
  }

  [*(a1 + 32) setIdleTimerDisabled:1];
  v5 = objc_alloc_init(TSSourceAutoReconnectWaitingViewController);
  [(TSSourceAutoReconnectWaitingViewController *)v5 setDelegate:*(a1 + 32)];
  [*(a1 + 32) setTopViewController:v5];
  (*(*(a1 + 40) + 16))();

LABEL_8:
}

- (id)nextViewControllerFrom:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && self->_isTransferCompleted)
  {
    v6 = objc_alloc_init(TSSourceAutoReconnectTransferredViewController);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)transferEventUpdate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v4;
    v13 = 2080;
    v14 = "[TSSourceAutoReconnectTransferFlow transferEventUpdate:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "transfer event : %@ @%s", &v11, 0x16u);
  }

  v6 = [v4 objectForKey:@"kTransferConfirmation"];

  if (v6)
  {
    v7 = [(TSSIMSetupFlow *)self topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      self->_isTransferCompleted = 1;
      v9 = [(TSSIMSetupFlow *)self topViewController];
      [(TSSIMSetupFlow *)self viewControllerDidComplete:v9];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)proxSetupAuthEventUpdate:(id)a3
{
  v5 = [TSUtilities skEventFromDictionary:a3];
  if ([v5 eventType] == 41)
  {
    [(TSSIMSetupFlow *)self setIdleTimerDisabled:0];
    v4 = [(TSSIMSetupFlow *)self topViewController];
    [(TSSIMSetupFlow *)self viewControllerDidComplete:v4];
  }
}

void __57__TSSourceAutoReconnectTransferFlow_firstViewController___block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSSourceAutoReconnectTransferFlow firstViewController:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]invalid self @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end