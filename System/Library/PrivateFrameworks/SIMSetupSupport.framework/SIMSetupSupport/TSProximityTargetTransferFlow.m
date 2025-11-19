@interface TSProximityTargetTransferFlow
- (TSProximityTargetTransferFlow)initWithTransferBackPlan:(id)a3 isPostMigrationFlow:(BOOL)a4;
- (id)_firstViewController;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)a3;
- (void)_beginAdvertising:(id)a3;
- (void)_endAdvertising;
- (void)_handleSKEvent:(id)a3;
- (void)_maybeSubmitAutoReconnectionDetails;
- (void)_startBackgroundTask;
- (void)_stopBackgroundTask;
- (void)appBackgrounded;
- (void)appForegrounded;
- (void)attemptFailed;
- (void)dealloc;
- (void)firstViewController;
- (void)firstViewController:(id)a3;
- (void)setCancelNavigationBarItems:(id)a3;
- (void)userDidTapCancel;
@end

@implementation TSProximityTargetTransferFlow

- (TSProximityTargetTransferFlow)initWithTransferBackPlan:(id)a3 isPostMigrationFlow:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = TSProximityTargetTransferFlow;
  v8 = [(TSSIMSetupFlow *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v8 action:sel_userDidTapCancel];
    cancelButton = v8->_cancelButton;
    v8->_cancelButton = v9;

    v8->_backgroundTask = *MEMORY[0x277D767B0];
    objc_storeStrong(&v8->_transferBackPlan, a3);
    v8->_isAuthenticationCompleted = 0;
    v8->_isPostMigrationFlow = a4;
  }

  return v8;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[TSProximityTargetTransferFlow dealloc]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "end target proximity flow @%s", buf, 0xCu);
  }

  [(TSProximityTargetTransferFlow *)self _stopBackgroundTask];
  [(TSProximityTargetTransferFlow *)self _endAdvertising];
  v5.receiver = self;
  v5.super_class = TSProximityTargetTransferFlow;
  [(TSProximityTargetTransferFlow *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)firstViewController
{
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(TSProximityTargetTransferFlow *)v2 firstViewController];
  }

  return 0;
}

- (void)firstViewController:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__TSProximityTargetTransferFlow_firstViewController___block_invoke;
  v6[3] = &unk_279B45270;
  v5 = v4;
  v7 = v5;
  objc_copyWeak(&v8, &location);
  [(TSProximityTargetTransferFlow *)self _beginAdvertising:v6];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void __53__TSProximityTargetTransferFlow_firstViewController___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v3;
      v11 = 2080;
      v12 = "[TSProximityTargetTransferFlow firstViewController:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "activate bt server failed : %@ @%s", &v9, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained _firstViewController];
    (*(v5 + 16))(v5, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)nextViewControllerFrom:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && self->_isAuthenticationCompleted)
    {
      v6 = [(SSProximityDevice *)self->_btServer templateSession];
      v5 = [(TSProximityTargetTransferFlow *)self _createTransferSubFlowVcWithSession:v6 isPostmigrationFlow:self->_isPostMigrationFlow];

      if (v5)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

  if (![(NSString *)self->_pin length]|| (v5 = [[TSProximityPINCodeViewController alloc] initWithPIN:self->_pin]) == 0)
  {
LABEL_10:
    [(TSProximityTargetTransferFlow *)self _endAdvertising];
    [(TSProximityTargetTransferFlow *)self _stopBackgroundTask];
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (void)userDidTapCancel
{
  [(TSProximityTargetTransferFlow *)self _endAdvertising];
  v3.receiver = self;
  v3.super_class = TSProximityTargetTransferFlow;
  [(TSSIMSetupFlow *)&v3 userDidTapCancel];
}

- (void)attemptFailed
{
  [(TSProximityTargetTransferFlow *)self _endAdvertising];
  v3.receiver = self;
  v3.super_class = TSProximityTargetTransferFlow;
  [(TSSIMSetupFlow *)&v3 attemptFailed];
}

- (void)appForegrounded
{
  v6.receiver = self;
  v6.super_class = TSProximityTargetTransferFlow;
  [(TSSIMSetupFlow *)&v6 appForegrounded];
  if (![(TSSIMSetupFlow *)self isFlowFinished]&& !self->_btServer)
  {
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __48__TSProximityTargetTransferFlow_appForegrounded__block_invoke;
    v3[3] = &unk_279B44828;
    objc_copyWeak(&v4, &location);
    [(TSProximityTargetTransferFlow *)self _beginAdvertising:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __48__TSProximityTargetTransferFlow_appForegrounded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__TSProximityTargetTransferFlow_appForegrounded__block_invoke_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _endAdvertising];

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 attemptFailed];
  }
}

- (void)appBackgrounded
{
  v5.receiver = self;
  v5.super_class = TSProximityTargetTransferFlow;
  [(TSSIMSetupFlow *)&v5 appBackgrounded];
  v3 = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(TSProximityTargetTransferFlow *)self _endAdvertising];
  }
}

- (void)_beginAdvertising:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [SSProximityDevice alloc];
  v6 = [(SSProximityDevice *)v5 initWithQueue:MEMORY[0x277D85CD0] endpoint:2 remoteInfo:0];
  btServer = self->_btServer;
  self->_btServer = v6;

  objc_initWeak(&location, self);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __51__TSProximityTargetTransferFlow__beginAdvertising___block_invoke;
  v13 = &unk_279B45A38;
  objc_copyWeak(&v14, &location);
  [(SSProximityDevice *)self->_btServer setEventHandler:&v10];
  v8 = _TSLogDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[TSProximityTargetTransferFlow _beginAdvertising:]";
    _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "activate server @%s", buf, 0xCu);
  }

  self->_waitingStartTime = CFAbsoluteTimeGetCurrent();
  [(SSProximityDevice *)self->_btServer activateUsingPreSharedKey:self->_isPostMigrationFlow completion:v4, v10, v11, v12, v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  v9 = *MEMORY[0x277D85DE8];
}

void __51__TSProximityTargetTransferFlow__beginAdvertising___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSKEvent:v3];
}

- (void)_endAdvertising
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[TSProximityTargetTransferFlow _endAdvertising]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "invalidate server @%s", &v6, 0xCu);
  }

  [(SSProximityDevice *)self->_btServer invalidate:0];
  [(SSProximityDevice *)self->_btServer setEventHandler:0];
  btServer = self->_btServer;
  self->_btServer = 0;

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleSKEvent:(id)a3
{
  *&v26[13] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = v4;
    v25 = 2080;
    *v26 = "[TSProximityTargetTransferFlow _handleSKEvent:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "receive SKEvent:%@ @%s", &v23, 0x16u);
  }

  v6 = [v4 eventType];
  if (v6 == 140)
  {
    v17 = [v4 error];

    if (!v17 && !self->_isAuthenticationCompleted)
    {
      self->_isAuthenticationCompleted = 1;
      v18 = [(TSSIMSetupFlow *)self topViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v20 = [(TSSIMSetupFlow *)self topViewController];
        [v20 connectionEstablished];
      }

      [(TSProximityTargetTransferFlow *)self _maybeSubmitAutoReconnectionDetails];
      v7 = [(TSSIMSetupFlow *)self topViewController];
      [(TSSIMSetupFlow *)self viewControllerDidComplete:v7];
      goto LABEL_22;
    }
  }

  else if (v6 == 110)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v4;
      v8 = _TSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v7 password];
        v10 = [v7 passwordType];
        v23 = 138412802;
        v24 = v9;
        v25 = 1024;
        *v26 = v10;
        v26[2] = 2080;
        *&v26[3] = "[TSProximityTargetTransferFlow _handleSKEvent:]";
        _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "pairing code:%@, type:%d @%s", &v23, 0x1Cu);
      }

      v11 = [v7 password];
      pin = self->_pin;
      self->_pin = v11;

      v13 = [(TSSIMSetupFlow *)self topViewController];
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();

      v15 = [(TSSIMSetupFlow *)self topViewController];
      v16 = v15;
      if (v14)
      {
        [v15 updatePIN:self->_pin];
      }

      else
      {
        objc_opt_class();
        v21 = objc_opt_isKindOfClass();

        if (v21)
        {
          v16 = [(TSSIMSetupFlow *)self topViewController];
          [(TSSIMSetupFlow *)self viewControllerDidComplete:v16];
        }

        else
        {
          v16 = _TSLogDomain();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [(TSProximityTargetTransferFlow *)self _handleSKEvent:v16];
          }
        }
      }
    }

    else
    {
      v7 = _TSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(TSProximityTargetTransferFlow *)v4 _handleSKEvent:v7];
      }
    }

LABEL_22:
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)setCancelNavigationBarItems:(id)a3
{
  v4 = a3;
  v5 = +[TSUtilities isPad];
  v6 = [v4 navigationItem];
  v7 = v6;
  cancelButton = self->_cancelButton;
  if (v5)
  {
    [v6 setRightBarButtonItem:cancelButton];
  }

  else
  {
    [v6 setLeftBarButtonItem:cancelButton];
  }

  v9 = [v4 navigationItem];

  [v9 setHidesBackButton:1 animated:0];
}

- (id)_firstViewController
{
  v14 = *MEMORY[0x277D85DE8];
  [(TSProximityTargetTransferFlow *)self _startBackgroundTask];
  if (self->_isPostMigrationFlow)
  {
    v3 = objc_alloc_init(TSTargetReconnectWaitingViewController);
  }

  else
  {
    v4 = [TSProximityWaitingViewController alloc];
    btServer = self->_btServer;
    v6 = [self->_transferBackPlan phoneNumber];
    v3 = [(TSProximityWaitingViewController *)v4 initWithBTServer:btServer transferBackPhoneNumber:v6];
  }

  [(TSTargetReconnectWaitingViewController *)v3 setDelegate:self];
  [(TSSIMSetupFlow *)self setTopViewController:v3];
  v7 = _TSLogDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v3;
    v12 = 2080;
    v13 = "[TSProximityTargetTransferFlow _firstViewController]";
    _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "first view controller : %@ @%s", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_startBackgroundTask
{
  if (*MEMORY[0x277D767B0] == self->_backgroundTask)
  {
    objc_initWeak(&location, self);
    v3 = [MEMORY[0x277D75128] sharedApplication];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __53__TSProximityTargetTransferFlow__startBackgroundTask__block_invoke;
    v4[3] = &unk_279B44400;
    objc_copyWeak(&v5, &location);
    self->_backgroundTask = [v3 beginBackgroundTaskWithExpirationHandler:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __53__TSProximityTargetTransferFlow__startBackgroundTask__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TSProximityTargetTransferFlow _startBackgroundTask]_block_invoke";
    _os_log_impl(&dword_262AA8000, v2, OS_LOG_TYPE_DEFAULT, "background task expired @%s", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopBackgroundTask];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_stopBackgroundTask
{
  v2 = *MEMORY[0x277D767B0];
  if (*MEMORY[0x277D767B0] != self->_backgroundTask)
  {
    v4 = [MEMORY[0x277D75128] sharedApplication];
    [v4 endBackgroundTask:self->_backgroundTask];

    self->_backgroundTask = v2;
  }
}

- (void)_maybeSubmitAutoReconnectionDetails
{
  if (self->_isPostMigrationFlow)
  {
    v3 = CFAbsoluteTimeGetCurrent() - self->_waitingStartTime;
    v5 = +[TSCoreTelephonyClientCache sharedInstance];
    v4 = [objc_alloc(MEMORY[0x277CC3608]) initWithSuccess:1 skipped:0 duration:v3];
    [v5 submitAutoReconnectionDetails:v4];
  }
}

- (void)firstViewController
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSProximityTargetTransferFlow firstViewController]";
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_createTransferSubFlowVcWithSession:(os_log_t)log isPostmigrationFlow:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSProximityTargetTransferFlow _createTransferSubFlowVcWithSession:isPostmigrationFlow:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]invalid template session @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __48__TSProximityTargetTransferFlow_appForegrounded__block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[TSProximityTargetTransferFlow appForegrounded]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]bt advertising failed : %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_handleSKEvent:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v5[0] = 67109634;
  v5[1] = [a1 eventType];
  v6 = 2112;
  v7 = a1;
  v8 = 2080;
  v9 = "[TSProximityTargetTransferFlow _handleSKEvent:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]invalid SKEvent class for event : %d : %@ @%s", v5, 0x1Cu);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_handleSKEvent:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 topViewController];
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v6 = "[TSProximityTargetTransferFlow _handleSKEvent:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]unexpect top view controller : %@ @%s", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end