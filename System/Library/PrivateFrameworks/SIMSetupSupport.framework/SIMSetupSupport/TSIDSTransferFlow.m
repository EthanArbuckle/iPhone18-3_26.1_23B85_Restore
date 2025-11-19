@interface TSIDSTransferFlow
- (TSIDSTransferFlow)init;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)a3;
- (void)firstViewController:(id)a3;
- (void)handleTransferringWatchdogExpiry;
- (void)transferEventUpdate:(id)a3;
@end

@implementation TSIDSTransferFlow

- (TSIDSTransferFlow)init
{
  v8.receiver = self;
  v8.super_class = TSIDSTransferFlow;
  v2 = [(TSSIMSetupFlow *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CC37B0]);
    v4 = [v3 initWithQueue:MEMORY[0x277D85CD0]];
    client = v2->_client;
    v2->_client = v4;

    [(CoreTelephonyClient *)v2->_client setDelegate:v2];
  }

  v7.receiver = v2;
  v7.super_class = TSIDSTransferFlow;
  return [(TSSIMSetupFlow *)&v7 init];
}

- (id)firstViewController
{
  v3 = [TSIDSSimTransferringViewController alloc];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"PRXCARD_TRANSFERRING_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"PRXCARD_TRANSFERRING_SUBTITLE" value:&stru_28753DF48 table:@"Localizable"];
  v8 = [(TSIDSSimTransferringViewController *)v3 initWithTitle:v5 subtitle:v7];

  [(TSIDSSimTransferringViewController *)v8 setDelegate:self];
  [(TSSIMSetupFlow *)self setTopViewController:v8];
  if (!self->_transferringWatchDogTimer)
  {
    v9 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_handleTransferringWatchdogExpiry selector:0 userInfo:0 repeats:120.0];
    transferringWatchDogTimer = self->_transferringWatchDogTimer;
    self->_transferringWatchDogTimer = v9;
  }

  return v8;
}

- (void)firstViewController:(id)a3
{
  v5 = a3;
  v6 = [(TSIDSTransferFlow *)self firstViewController];
  (*(a3 + 2))(v5, v6);
}

- (id)nextViewControllerFrom:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) == 0 || ([v4 isSecureIntentFailed])
    {
      v7 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v5 = [(TSIDSTransferFlow *)self secureIntentProxCard];

  if (!v5)
  {
LABEL_7:
    v6 = [[TSPRXSIMTransferCompleteViewController alloc] initWithoutTargetSyncAndSelectedPlansCount:self->_selectedTransferPlansCount];
    goto LABEL_8;
  }

  v6 = [(TSIDSTransferFlow *)self secureIntentProxCard];
LABEL_8:
  v7 = v6;
LABEL_9:

  return v7;
}

- (void)handleTransferringWatchdogExpiry
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[TSIDSTransferFlow handleTransferringWatchdogExpiry]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "handle 2 min transferring watchdog timer expired @%s", &v8, 0xCu);
  }

  v4 = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(TSSIMSetupFlow *)self topViewController];
    [(TSSIMSetupFlow *)self viewControllerDidComplete:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __131__TSIDSTransferFlow_launchSecureIntentUI_descriptors_isLocalConvertFlow_isSecureIntentRequired_isDtoEvaluationRequired_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setSecureIntentProxCard:v3];

    v6 = objc_loadWeakRetained((a1 + 40));
    v5 = [v6 topViewController];
    [v6 viewControllerDidComplete:v5];
  }
}

- (void)transferEventUpdate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v4;
    v16 = 2080;
    v17 = "[TSIDSTransferFlow transferEventUpdate:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "transfer event : %@ @%s", &v14, 0x16u);
  }

  v6 = [v4 objectForKey:@"kSelectedTransferPlansCount"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_selectedTransferPlansCount = [v6 unsignedIntValue];
    }
  }

  v7 = [v4 objectForKey:@"kTransferInformationSent"];

  if (v7)
  {
    [(CoreTelephonyClient *)self->_client setDelegate:0];
    v8 = [(TSSIMSetupFlow *)self topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v10 = [(TSSIMSetupFlow *)self topViewController];
      [(TSSIMSetupFlow *)self viewControllerDidComplete:v10];
    }
  }

  v11 = [v4 objectForKey:@"UpdateProxCardVisibility"];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v11 BOOLValue])
      {
        v12 = _TSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [TSIDSTransferFlow transferEventUpdate:v12];
        }
      }

      else
      {
        v12 = [(TSSIMSetupFlow *)self topViewController];
        [(TSSIMSetupFlow *)self viewControllerDidComplete:v12];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)transferEventUpdate:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSIDSTransferFlow transferEventUpdate:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Unexpected transferEventUpdate for resuming prox card @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end