@interface WFSpringBoardRemoteAlertPresenter
- (BOOL)alertIsActive;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (WFDialogAlertPresenterDelegate)delegate;
- (WFSpringBoardRemoteAlertPresenter)init;
- (void)activateAlertInMainSceneOfApplicationWithBundleIdentifier:(id)a3;
- (void)activateAlertWithPresentationTarget:(id)a3;
- (void)deactivateAlert;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation WFSpringBoardRemoteAlertPresenter

- (WFDialogAlertPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(WFSpringBoardRemoteAlertPresenter *)self activeConnection];

  v9 = getWFDialogLogObject();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[WFSpringBoardRemoteAlertPresenter listener:shouldAcceptNewConnection:]";
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Not accepting new connection since there is already an active one.", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[WFSpringBoardRemoteAlertPresenter listener:shouldAcceptNewConnection:]";
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s Setting activeConnection", buf, 0xCu);
    }

    [(WFSpringBoardRemoteAlertPresenter *)self setActiveConnection:v7];
    objc_initWeak(buf, self);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __72__WFSpringBoardRemoteAlertPresenter_listener_shouldAcceptNewConnection___block_invoke;
    v23[3] = &unk_278900170;
    objc_copyWeak(&v24, buf);
    [v7 setInvalidationHandler:v23];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __72__WFSpringBoardRemoteAlertPresenter_listener_shouldAcceptNewConnection___block_invoke_186;
    v21 = &unk_278900170;
    objc_copyWeak(&v22, buf);
    [v7 setInterruptionHandler:&v18];
    v11 = WFDialogXPCInterface();
    [v7 setRemoteObjectInterface:{v11, v18, v19, v20, v21}];

    v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2845F5BC8];
    [v7 setExportedInterface:v12];

    v13 = [(WFSpringBoardRemoteAlertPresenter *)self delegate];
    [v7 setExportedObject:v13];

    [v7 resume];
    v14 = [(WFSpringBoardRemoteAlertPresenter *)self delegate];
    v15 = [v7 remoteObjectProxy];
    [v14 dialogAlertPresenter:self didConnectToAlert:v15];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8 == 0;
}

void __72__WFSpringBoardRemoteAlertPresenter_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = getWFDialogLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[WFSpringBoardRemoteAlertPresenter listener:shouldAcceptNewConnection:]_block_invoke";
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEBUG, "%s Connection to dialog was invalidated.", &v5, 0xCu);
  }

  v3 = [WeakRetained delegate];
  [v3 dialogAlertPresenterDidDisconnectFromAlert:WeakRetained];

  [WeakRetained setActiveConnection:0];
  [WeakRetained setActiveHandle:0];

  v4 = *MEMORY[0x277D85DE8];
}

void __72__WFSpringBoardRemoteAlertPresenter_listener_shouldAcceptNewConnection___block_invoke_186(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = getWFDialogLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[WFSpringBoardRemoteAlertPresenter listener:shouldAcceptNewConnection:]_block_invoke";
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_ERROR, "%s Connection to dialog was interrupted", &v5, 0xCu);
  }

  v3 = [WeakRetained delegate];
  [v3 dialogAlertPresenterDidDisconnectFromAlert:WeakRetained];

  [WeakRetained setActiveConnection:0];
  [WeakRetained setActiveHandle:0];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = getWFDialogLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[WFSpringBoardRemoteAlertPresenter remoteAlertHandle:didInvalidateWithError:]";
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Remote alert did invalidate with error: %{public}@", &v12, 0x16u);
  }

  v7 = [(WFSpringBoardRemoteAlertPresenter *)self deactivateTimer];

  if (v7)
  {
    v8 = [(WFSpringBoardRemoteAlertPresenter *)self deactivateTimer];
    dispatch_source_cancel(v8);

    deactivateTimer = self->_deactivateTimer;
    self->_deactivateTimer = 0;
  }

  [(WFSpringBoardRemoteAlertPresenter *)self setActiveHandle:0];
  v10 = [(WFSpringBoardRemoteAlertPresenter *)self delegate];
  [v10 dialogAlertPresenterDidInvalidateAlert:self];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = getWFDialogLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[WFSpringBoardRemoteAlertPresenter remoteAlertHandleDidDeactivate:]";
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_DEBUG, "%s Remote alert did deactivate", buf, 0xCu);
  }

  v5 = dispatch_get_global_queue(0, 0);
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v5);

  deactivateTimer = self->_deactivateTimer;
  self->_deactivateTimer = v6;
  v8 = v6;

  dispatch_source_set_timer(v8, 0, 0xBEBC200uLL, 0xBEBC200uLL);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __68__WFSpringBoardRemoteAlertPresenter_remoteAlertHandleDidDeactivate___block_invoke;
  handler[3] = &unk_278900148;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_resume(v8);

  v9 = *MEMORY[0x277D85DE8];
}

void __68__WFSpringBoardRemoteAlertPresenter_remoteAlertHandleDidDeactivate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dialogAlertPresenterDidDeactivateAlert:*(a1 + 32)];

  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = getWFDialogLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[WFSpringBoardRemoteAlertPresenter remoteAlertHandleDidActivate:]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_DEBUG, "%s Remote alert did activate", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)deactivateAlert
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = getWFDialogLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[WFSpringBoardRemoteAlertPresenter deactivateAlert]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_DEFAULT, "%s Dismissing remote alert", &v7, 0xCu);
  }

  v4 = [(WFSpringBoardRemoteAlertPresenter *)self activeConnection];
  [v4 invalidate];

  v5 = [(WFSpringBoardRemoteAlertPresenter *)self activeHandle];
  [v5 invalidate];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)activateAlertWithPresentationTarget:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D66BC0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setPresentationTarget:v5];

  v7 = [(WFSpringBoardRemoteAlertPresenter *)self activeHandle];
  if (v7 && (v8 = v7, -[WFSpringBoardRemoteAlertPresenter activeHandle](self, "activeHandle"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isActive], v9, v8, (v10 & 1) == 0))
  {
    v17 = getWFDialogLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "[WFSpringBoardRemoteAlertPresenter activateAlertWithPresentationTarget:]";
      _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_INFO, "%s Reactivating existing remote alert", &v20, 0xCu);
    }

    v18 = [(WFSpringBoardRemoteAlertPresenter *)self activeHandle];
    [v18 activateWithContext:v6];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:@"com.apple.shortcuts.runtime" viewControllerClassName:@"WFRemoteAlertViewController"];
    v12 = objc_alloc_init(MEMORY[0x277D66BD0]);
    v13 = [(WFSpringBoardRemoteAlertPresenter *)self listener];
    v14 = [v13 endpoint];
    v15 = [v14 _endpoint];
    [v12 setXpcEndpoint:v15];

    v16 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v11 configurationContext:v12];
    [v16 addObserver:self];
    [v16 activateWithContext:v6];
    [(WFSpringBoardRemoteAlertPresenter *)self setActiveHandle:v16];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)activateAlertInMainSceneOfApplicationWithBundleIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFDialogLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315138;
    v19 = "[WFSpringBoardRemoteAlertPresenter activateAlertInMainSceneOfApplicationWithBundleIdentifier:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEBUG, "%s Requesting remote alert activation", &v18, 0xCu);
  }

  v6 = [MEMORY[0x277D79F18] currentDevice];
  v7 = [v6 idiom];

  if (![v4 length] || v7 == 1)
  {
    [(WFSpringBoardRemoteAlertPresenter *)self activateAlertWithPresentationTarget:0];
  }

  else
  {
    v8 = MEMORY[0x277D46FA8];
    v9 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:v4];
    v10 = [MEMORY[0x277D46FB0] descriptor];
    v11 = [v8 statesForPredicate:v9 withDescriptor:v10 error:0];
    v12 = [v11 firstObject];

    if (v12 && ([v12 isRunning] & 1) != 0)
    {
      v13 = [v12 process];
      v14 = [v13 pid];

      v15 = [MEMORY[0x277CF0CD0] processHandleForPID:v14];
      v16 = [objc_alloc(MEMORY[0x277D66C08]) initWithTargetProcess:v15];
      [(WFSpringBoardRemoteAlertPresenter *)self activateAlertWithPresentationTarget:v16];
    }

    else
    {
      [(WFSpringBoardRemoteAlertPresenter *)self activateAlertWithPresentationTarget:0];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)alertIsActive
{
  v3 = [(WFSpringBoardRemoteAlertPresenter *)self activeHandle];
  if (v3)
  {
    v4 = [(WFSpringBoardRemoteAlertPresenter *)self activeHandle];
    v5 = [v4 isActive];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (WFSpringBoardRemoteAlertPresenter)init
{
  v7.receiver = self;
  v7.super_class = WFSpringBoardRemoteAlertPresenter;
  v2 = [(WFSpringBoardRemoteAlertPresenter *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAE98] anonymousListener];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v5 = v2;
  }

  return v2;
}

@end