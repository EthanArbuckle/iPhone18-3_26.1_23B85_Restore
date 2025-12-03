@interface WFSpringBoardRemoteAlertPresenter
- (BOOL)alertIsActive;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (WFDialogAlertPresenterDelegate)delegate;
- (WFSpringBoardRemoteAlertPresenter)init;
- (void)activateAlertInMainSceneOfApplicationWithBundleIdentifier:(id)identifier;
- (void)activateAlertWithPresentationTarget:(id)target;
- (void)deactivateAlert;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation WFSpringBoardRemoteAlertPresenter

- (WFDialogAlertPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v27 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  activeConnection = [(WFSpringBoardRemoteAlertPresenter *)self activeConnection];

  v9 = getWFDialogLogObject();
  v10 = v9;
  if (activeConnection)
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

    [(WFSpringBoardRemoteAlertPresenter *)self setActiveConnection:connectionCopy];
    objc_initWeak(buf, self);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __72__WFSpringBoardRemoteAlertPresenter_listener_shouldAcceptNewConnection___block_invoke;
    v23[3] = &unk_278900170;
    objc_copyWeak(&v24, buf);
    [connectionCopy setInvalidationHandler:v23];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __72__WFSpringBoardRemoteAlertPresenter_listener_shouldAcceptNewConnection___block_invoke_186;
    v21 = &unk_278900170;
    objc_copyWeak(&v22, buf);
    [connectionCopy setInterruptionHandler:&v18];
    v11 = WFDialogXPCInterface();
    [connectionCopy setRemoteObjectInterface:{v11, v18, v19, v20, v21}];

    v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2845F5BC8];
    [connectionCopy setExportedInterface:v12];

    delegate = [(WFSpringBoardRemoteAlertPresenter *)self delegate];
    [connectionCopy setExportedObject:delegate];

    [connectionCopy resume];
    delegate2 = [(WFSpringBoardRemoteAlertPresenter *)self delegate];
    remoteObjectProxy = [connectionCopy remoteObjectProxy];
    [delegate2 dialogAlertPresenter:self didConnectToAlert:remoteObjectProxy];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  v16 = *MEMORY[0x277D85DE8];
  return activeConnection == 0;
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

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = getWFDialogLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[WFSpringBoardRemoteAlertPresenter remoteAlertHandle:didInvalidateWithError:]";
    v14 = 2114;
    v15 = errorCopy;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Remote alert did invalidate with error: %{public}@", &v12, 0x16u);
  }

  deactivateTimer = [(WFSpringBoardRemoteAlertPresenter *)self deactivateTimer];

  if (deactivateTimer)
  {
    deactivateTimer2 = [(WFSpringBoardRemoteAlertPresenter *)self deactivateTimer];
    dispatch_source_cancel(deactivateTimer2);

    deactivateTimer = self->_deactivateTimer;
    self->_deactivateTimer = 0;
  }

  [(WFSpringBoardRemoteAlertPresenter *)self setActiveHandle:0];
  delegate = [(WFSpringBoardRemoteAlertPresenter *)self delegate];
  [delegate dialogAlertPresenterDidInvalidateAlert:self];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
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

- (void)remoteAlertHandleDidActivate:(id)activate
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

  activeConnection = [(WFSpringBoardRemoteAlertPresenter *)self activeConnection];
  [activeConnection invalidate];

  activeHandle = [(WFSpringBoardRemoteAlertPresenter *)self activeHandle];
  [activeHandle invalidate];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)activateAlertWithPresentationTarget:(id)target
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D66BC0];
  targetCopy = target;
  v6 = objc_alloc_init(v4);
  [v6 setPresentationTarget:targetCopy];

  activeHandle = [(WFSpringBoardRemoteAlertPresenter *)self activeHandle];
  if (activeHandle && (v8 = activeHandle, -[WFSpringBoardRemoteAlertPresenter activeHandle](self, "activeHandle"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isActive], v9, v8, (v10 & 1) == 0))
  {
    v17 = getWFDialogLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "[WFSpringBoardRemoteAlertPresenter activateAlertWithPresentationTarget:]";
      _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_INFO, "%s Reactivating existing remote alert", &v20, 0xCu);
    }

    activeHandle2 = [(WFSpringBoardRemoteAlertPresenter *)self activeHandle];
    [activeHandle2 activateWithContext:v6];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:@"com.apple.shortcuts.runtime" viewControllerClassName:@"WFRemoteAlertViewController"];
    v12 = objc_alloc_init(MEMORY[0x277D66BD0]);
    listener = [(WFSpringBoardRemoteAlertPresenter *)self listener];
    endpoint = [listener endpoint];
    _endpoint = [endpoint _endpoint];
    [v12 setXpcEndpoint:_endpoint];

    v16 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v11 configurationContext:v12];
    [v16 addObserver:self];
    [v16 activateWithContext:v6];
    [(WFSpringBoardRemoteAlertPresenter *)self setActiveHandle:v16];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)activateAlertInMainSceneOfApplicationWithBundleIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = getWFDialogLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315138;
    v19 = "[WFSpringBoardRemoteAlertPresenter activateAlertInMainSceneOfApplicationWithBundleIdentifier:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEBUG, "%s Requesting remote alert activation", &v18, 0xCu);
  }

  currentDevice = [MEMORY[0x277D79F18] currentDevice];
  idiom = [currentDevice idiom];

  if (![identifierCopy length] || idiom == 1)
  {
    [(WFSpringBoardRemoteAlertPresenter *)self activateAlertWithPresentationTarget:0];
  }

  else
  {
    v8 = MEMORY[0x277D46FA8];
    v9 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:identifierCopy];
    descriptor = [MEMORY[0x277D46FB0] descriptor];
    v11 = [v8 statesForPredicate:v9 withDescriptor:descriptor error:0];
    firstObject = [v11 firstObject];

    if (firstObject && ([firstObject isRunning] & 1) != 0)
    {
      process = [firstObject process];
      v14 = [process pid];

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
  activeHandle = [(WFSpringBoardRemoteAlertPresenter *)self activeHandle];
  if (activeHandle)
  {
    activeHandle2 = [(WFSpringBoardRemoteAlertPresenter *)self activeHandle];
    isActive = [activeHandle2 isActive];
  }

  else
  {
    isActive = 0;
  }

  return isActive;
}

- (WFSpringBoardRemoteAlertPresenter)init
{
  v7.receiver = self;
  v7.super_class = WFSpringBoardRemoteAlertPresenter;
  v2 = [(WFSpringBoardRemoteAlertPresenter *)&v7 init];
  if (v2)
  {
    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    listener = v2->_listener;
    v2->_listener = anonymousListener;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v5 = v2;
  }

  return v2;
}

@end