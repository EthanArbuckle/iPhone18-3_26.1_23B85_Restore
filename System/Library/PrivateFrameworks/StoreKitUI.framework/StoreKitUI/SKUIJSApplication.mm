@interface SKUIJSApplication
- (BOOL)isRunningTests;
- (BOOL)pageRenderMetricsEnabled;
- (SKUIApplicationController)applicationController;
- (SKUIJSApplication)initWithAppContext:(id)context applicationController:(id)controller;
- (void)launchComplete:(id)complete;
- (void)launchFailed;
- (void)sendDocumentMessage:(id)message :(id)a4 :(id)a5;
@end

@implementation SKUIJSApplication

- (SKUIJSApplication)initWithAppContext:(id)context applicationController:(id)controller
{
  contextCopy = context;
  controllerCopy = controller;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIJSApplication initWithAppContext:applicationController:];
  }

  v11.receiver = self;
  v11.super_class = SKUIJSApplication;
  v8 = [(IKJSObject *)&v11 initWithAppContext:contextCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_applicationController, controllerCopy);
  }

  return v9;
}

- (BOOL)pageRenderMetricsEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__SKUIJSApplication_pageRenderMetricsEnabled__block_invoke;
  v4[3] = &unk_2781F8608;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(MEMORY[0x277D85CD0], v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __45__SKUIJSApplication_pageRenderMetricsEnabled__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) applicationController];
  v2 = [v3 options];
  *(*(*(a1 + 40) + 8) + 24) = [v2 pageRenderMetricsEnabled];
}

- (void)launchFailed
{
  applicationController = [(SKUIJSApplication *)self applicationController];
  [applicationController performSelectorOnMainThread:sel_showErrorViewForLaunchFailure withObject:0 waitUntilDone:0];
}

- (void)launchComplete:(id)complete
{
  completeCopy = complete;
  applicationController = [(SKUIJSApplication *)self applicationController];
  [applicationController performSelectorOnMainThread:sel__jsLaunchFinishedWithLaunchMetrics_ withObject:completeCopy waitUntilDone:0];
}

- (void)sendDocumentMessage:(id)message :(id)a4 :(id)a5
{
  v7 = a4;
  v8 = a5;
  appBridge = [message appBridge];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = appBridge;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__SKUIJSApplication_sendDocumentMessage_::__block_invoke;
    block[3] = &unk_2781F8680;
    v12 = v10;
    v13 = v7;
    v14 = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __43__SKUIJSApplication_sendDocumentMessage_::__block_invoke(void *a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = a1[4];
  v3 = a1[5];
  v7[0] = @"SKUIDocumentMessageNameKey";
  v7[1] = @"SKUIDocumentMessagePayloadKey";
  v5 = a1[6];
  v8[0] = v3;
  v8[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 postNotificationName:@"SKUIAppDocumentDidSendMessageNotification" object:v4 userInfo:v6];
}

- (BOOL)isRunningTests
{
  v2 = MEMORY[0x277D85CD0];
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SKUIJSApplication_isRunningTests__block_invoke;
  block[3] = &unk_2781FA3E0;
  block[4] = &v5;
  dispatch_sync(v2, block);

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __35__SKUIJSApplication_isRunningTests__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  *(*(*(a1 + 32) + 8) + 24) = [v2 launchedToTest];
}

- (SKUIApplicationController)applicationController
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationController);

  return WeakRetained;
}

- (void)initWithAppContext:applicationController:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIJSApplication initWithAppContext:applicationController:]";
}

@end