@interface WFWorkflowStatusPresenter
- (BOOL)alertIsActive;
- (BOOL)alertIsLaunching;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (WFDialogAlertPresenterDelegate)delegate;
- (WFWorkflowStatusPresenter)init;
- (WFWorkflowStatusPresenterDelegate)statusPresenterDelegate;
- (void)activateAlertInMainSceneOfApplicationWithBundleIdentifier:(id)identifier;
- (void)deactivateAlert;
@end

@implementation WFWorkflowStatusPresenter

- (WFWorkflowStatusPresenterDelegate)statusPresenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_statusPresenterDelegate);

  return WeakRetained;
}

- (WFDialogAlertPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  queue = [(WFWorkflowStatusPresenter *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  queue2 = [(WFWorkflowStatusPresenter *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__WFWorkflowStatusPresenter_listener_shouldAcceptNewConnection___block_invoke;
  block[3] = &unk_278900198;
  v13 = connectionCopy;
  v14 = &v15;
  block[4] = self;
  v10 = connectionCopy;
  dispatch_sync(queue2, block);

  LOBYTE(connectionCopy) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return connectionCopy;
}

void __64__WFWorkflowStatusPresenter_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setLaunching:0];
  v2 = [*(a1 + 32) activeConnection];
  v3 = v2 == 0;

  v4 = getWFDialogLogObject();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 136315394;
      v22 = "[WFWorkflowStatusPresenter listener:shouldAcceptNewConnection:]_block_invoke";
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Accepting incoming connection as active: %@", buf, 0x16u);
    }

    [*(a1 + 32) setActiveConnection:*(a1 + 40)];
    objc_initWeak(buf, *(a1 + 32));
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __64__WFWorkflowStatusPresenter_listener_shouldAcceptNewConnection___block_invoke_169;
    v19[3] = &unk_278900170;
    objc_copyWeak(&v20, buf);
    [*(a1 + 40) setInvalidationHandler:v19];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __64__WFWorkflowStatusPresenter_listener_shouldAcceptNewConnection___block_invoke_2;
    v17 = &unk_278900170;
    objc_copyWeak(&v18, buf);
    [*(a1 + 40) setInterruptionHandler:&v14];
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:{&unk_284617288, v14, v15, v16, v17}];
    [*(a1 + 40) setRemoteObjectInterface:v8];

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2845F5EB8];
    [*(a1 + 40) setExportedInterface:v9];

    v10 = [*(a1 + 32) statusPresenterDelegate];
    [*(a1 + 40) setExportedObject:v10];

    [*(a1 + 40) resume];
    v11 = [*(a1 + 32) statusPresenterDelegate];
    v12 = [*(a1 + 40) remoteObjectProxy];
    [v11 statusPresenterDidConnectToService:v12];

    *(*(*(a1 + 48) + 8) + 24) = 1;
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) activeConnection];
      *buf = 136315394;
      v22 = "[WFWorkflowStatusPresenter listener:shouldAcceptNewConnection:]_block_invoke";
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_ERROR, "%s Not accepting new connections while one is already active: %@", buf, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __64__WFWorkflowStatusPresenter_listener_shouldAcceptNewConnection___block_invoke_169(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = getWFDialogLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[WFWorkflowStatusPresenter listener:shouldAcceptNewConnection:]_block_invoke";
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEBUG, "%s Connection to view service application was invalidated.", buf, 0xCu);
  }

  v3 = [WeakRetained queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__WFWorkflowStatusPresenter_listener_shouldAcceptNewConnection___block_invoke_170;
  block[3] = &unk_278900148;
  block[4] = WeakRetained;
  dispatch_async(v3, block);

  v4 = *MEMORY[0x277D85DE8];
}

void __64__WFWorkflowStatusPresenter_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = getWFDialogLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v7 = "[WFWorkflowStatusPresenter listener:shouldAcceptNewConnection:]_block_invoke_2";
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_ERROR, "%s Connection to view service application was interrupted", buf, 0xCu);
  }

  v3 = [WeakRetained queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__WFWorkflowStatusPresenter_listener_shouldAcceptNewConnection___block_invoke_171;
  block[3] = &unk_278900148;
  block[4] = WeakRetained;
  dispatch_async(v3, block);

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __64__WFWorkflowStatusPresenter_listener_shouldAcceptNewConnection___block_invoke_171(uint64_t a1)
{
  v2 = [*(a1 + 32) statusPresenterDelegate];
  [v2 statusPresenterDidDisconnect];

  v3 = *(a1 + 32);

  return [v3 setActiveConnection:0];
}

uint64_t __64__WFWorkflowStatusPresenter_listener_shouldAcceptNewConnection___block_invoke_170(uint64_t a1)
{
  v2 = [*(a1 + 32) statusPresenterDelegate];
  [v2 statusPresenterDidDisconnect];

  v3 = *(a1 + 32);

  return [v3 setActiveConnection:0];
}

- (void)deactivateAlert
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = getWFDialogLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[WFWorkflowStatusPresenter deactivateAlert]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_DEFAULT, "%s Deactivating alert", buf, 0xCu);
  }

  queue = [(WFWorkflowStatusPresenter *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WFWorkflowStatusPresenter_deactivateAlert__block_invoke;
  block[3] = &unk_278900148;
  block[4] = self;
  dispatch_async(queue, block);

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __44__WFWorkflowStatusPresenter_deactivateAlert__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeConnection];
  [v2 invalidate];

  [*(a1 + 32) setActiveConnection:0];
  v3 = *(a1 + 32);

  return [v3 setLaunching:0];
}

- (void)activateAlertInMainSceneOfApplicationWithBundleIdentifier:(id)identifier
{
  queue = [(WFWorkflowStatusPresenter *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__WFWorkflowStatusPresenter_activateAlertInMainSceneOfApplicationWithBundleIdentifier___block_invoke;
  block[3] = &unk_278900148;
  block[4] = self;
  dispatch_async(queue, block);
}

void __87__WFWorkflowStatusPresenter_activateAlertInMainSceneOfApplicationWithBundleIdentifier___block_invoke(uint64_t a1)
{
  v20[3] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setLaunching:1];
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) listener];
  v4 = [v3 endpoint];
  v5 = [v4 _endpoint];
  [v2 setObject:v5 forSetting:0];

  v6 = [objc_alloc(MEMORY[0x277CF0B58]) initWithInfo:v2 responder:0];
  v7 = MEMORY[0x277D0AD60];
  v8 = *MEMORY[0x277D0ABF0];
  v9 = MEMORY[0x277CBEC38];
  v20[0] = MEMORY[0x277CBEC38];
  v10 = *MEMORY[0x277D0ABD0];
  v19[0] = v8;
  v19[1] = v10;
  v18 = v6;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v19[2] = *MEMORY[0x277D67110];
  v20[1] = v11;
  v20[2] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v13 = [v7 optionsWithDictionary:v12];

  v14 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v15 = *MEMORY[0x277D7A2F0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__WFWorkflowStatusPresenter_activateAlertInMainSceneOfApplicationWithBundleIdentifier___block_invoke_2;
  v17[3] = &unk_278900120;
  v17[4] = *(a1 + 32);
  [v14 openApplication:v15 withOptions:v13 completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __87__WFWorkflowStatusPresenter_activateAlertInMainSceneOfApplicationWithBundleIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__WFWorkflowStatusPresenter_activateAlertInMainSceneOfApplicationWithBundleIdentifier___block_invoke_3;
  block[3] = &unk_2789000F8;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t __87__WFWorkflowStatusPresenter_activateAlertInMainSceneOfApplicationWithBundleIdentifier___block_invoke_3(uint64_t result)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!*(result + 32))
  {
    v1 = result;
    v2 = getWFDialogLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      v3 = *(v1 + 40);
      v5 = 136315394;
      v6 = "[WFWorkflowStatusPresenter activateAlertInMainSceneOfApplicationWithBundleIdentifier:]_block_invoke_3";
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_FAULT, "%s Unable to launch View Service application, error: %@", &v5, 0x16u);
    }

    result = [*(v1 + 48) setLaunching:0];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)alertIsActive
{
  selfCopy = self;
  queue = [(WFWorkflowStatusPresenter *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue2 = [(WFWorkflowStatusPresenter *)selfCopy queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__WFWorkflowStatusPresenter_alertIsActive__block_invoke;
  v6[3] = &unk_2789000D0;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(queue2, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

void __42__WFWorkflowStatusPresenter_alertIsActive__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeConnection];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (BOOL)alertIsLaunching
{
  selfCopy = self;
  queue = [(WFWorkflowStatusPresenter *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue2 = [(WFWorkflowStatusPresenter *)selfCopy queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__WFWorkflowStatusPresenter_alertIsLaunching__block_invoke;
  v6[3] = &unk_2789000D0;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(queue2, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

uint64_t __45__WFWorkflowStatusPresenter_alertIsLaunching__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isLaunching];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (WFWorkflowStatusPresenter)init
{
  v12.receiver = self;
  v12.super_class = WFWorkflowStatusPresenter;
  v2 = [(WFWorkflowStatusPresenter *)&v12 init];
  if (v2)
  {
    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    [(NSXPCListener *)anonymousListener setDelegate:v2];
    [(NSXPCListener *)anonymousListener resume];
    listener = v2->_listener;
    v2->_listener = anonymousListener;
    v5 = anonymousListener;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("com.apple.shortcuts.WFStatusPresenter-queue", v7);
    queue = v2->_queue;
    v2->_queue = v8;

    v10 = v2;
  }

  return v2;
}

@end