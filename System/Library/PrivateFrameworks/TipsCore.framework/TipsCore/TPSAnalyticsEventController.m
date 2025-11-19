@interface TPSAnalyticsEventController
+ (id)sharedInstance;
- (OS_dispatch_queue)analyticsQueue;
- (TPSAnalyticsDataProvider)dataProvider;
- (_TPSXPCConnection)xpcConnection;
- (void)_destroyXPCConnection;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)logAnalyticsEvent:(id)a3;
- (void)logAnalyticsEventFromTipsd:(id)a3;
- (void)logAnalyticsEvents:(id)a3;
- (void)logAnalyticsEventsFromTipsd:(id)a3;
- (void)sendToCoreAnalytics:(id)a3 eventName:(id)a4;
@end

@implementation TPSAnalyticsEventController

+ (id)sharedInstance
{
  if (sharedInstance_predicate_7 != -1)
  {
    +[TPSAnalyticsEventController sharedInstance];
  }

  v3 = sharedInstance_gTPSAnalyticsController;

  return v3;
}

uint64_t __45__TPSAnalyticsEventController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(TPSAnalyticsEventController);
  v1 = sharedInstance_gTPSAnalyticsController;
  sharedInstance_gTPSAnalyticsController = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (OS_dispatch_queue)analyticsQueue
{
  if (analyticsQueue_onceToken != -1)
  {
    [TPSAnalyticsEventController analyticsQueue];
  }

  v3 = analyticsQueue_gAnalyticsQueue;

  return v3;
}

void __45__TPSAnalyticsEventController_analyticsQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.tipsd.analyticsQueue", v2);
  v1 = analyticsQueue_gAnalyticsQueue;
  analyticsQueue_gAnalyticsQueue = v0;
}

- (void)logAnalyticsEventFromTipsd:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  [(TPSAnalyticsEventController *)self logAnalyticsEventsFromTipsd:v6, v8, v9];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)logAnalyticsEventsFromTipsd:(id)a3
{
  v4 = a3;
  v5 = [(TPSAnalyticsEventController *)self analyticsQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__TPSAnalyticsEventController_logAnalyticsEventsFromTipsd___block_invoke;
  v7[3] = &unk_1E8101390;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __59__TPSAnalyticsEventController_logAnalyticsEventsFromTipsd___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = [*(a1 + 40) dataProvider];
        [v7 setDataProvider:v8];

        v9 = [*(a1 + 40) analyticsQueue];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __59__TPSAnalyticsEventController_logAnalyticsEventsFromTipsd___block_invoke_2;
        v12[3] = &unk_1E8101390;
        v10 = *(a1 + 40);
        v12[4] = v7;
        v12[5] = v10;
        dispatch_async(v9, v12);

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __59__TPSAnalyticsEventController_logAnalyticsEventsFromTipsd___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) mutableAnalyticsEventRepresentation];
  [*v2 persistKeys];
  if (v3)
  {
    v4 = +[TPSLogger analytics];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __59__TPSAnalyticsEventController_logAnalyticsEventsFromTipsd___block_invoke_2_cold_1(v2, v4);
    }

    v5 = [*v2 deliveryInfoVersion];
    [v3 setObject:v5 forKeyedSubscript:@"rules_version"];

    v6 = +[TPSLogger analytics];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __59__TPSAnalyticsEventController_logAnalyticsEventsFromTipsd___block_invoke_2_cold_2(v2, v3, v6);
    }

    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) eventName];
    [v7 sendToCoreAnalytics:v3 eventName:v8];
  }
}

- (void)logAnalyticsEvent:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if ([TPSCommonDefines callerIsTipsdWithSource:@"Analytics"])
    {
      [(TPSAnalyticsEventController *)self logAnalyticsEventFromTipsd:v4];
    }

    else
    {
      v5 = self;
      objc_sync_enter(v5);
      v6 = [(TPSAnalyticsEventController *)v5 xpcConnection];
      v7 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_10];

      if (v7)
      {
        [v7 logAnalyticsEvent:v4];
      }

      objc_sync_exit(v5);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __49__TPSAnalyticsEventController_logAnalyticsEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[TPSLogger analytics];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __49__TPSAnalyticsEventController_logAnalyticsEvent___block_invoke_cold_1();
  }
}

- (void)logAnalyticsEvents:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = +[TPSLogger analytics];
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEBUG))
    {
      [TPSAnalyticsEventController logAnalyticsEvents:];
    }

    goto LABEL_9;
  }

  if (![TPSCommonDefines callerIsTipsdWithSource:@"Analytics"])
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(TPSAnalyticsEventController *)v5 xpcConnection];
    v7 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_12];

    if (v7)
    {
      [v7 logAnalyticsEvents:v4];
    }

    objc_sync_exit(v5);
LABEL_9:

    goto LABEL_10;
  }

  [(TPSAnalyticsEventController *)self logAnalyticsEventsFromTipsd:v4];
LABEL_10:
}

void __50__TPSAnalyticsEventController_logAnalyticsEvents___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[TPSLogger analytics];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __49__TPSAnalyticsEventController_logAnalyticsEvent___block_invoke_cold_1();
  }
}

- (void)sendToCoreAnalytics:(id)a3 eventName:(id)a4
{
  v5 = a3;
  v4 = v5;
  AnalyticsSendEventLazy();
}

- (_TPSXPCConnection)xpcConnection
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_xpcConnection)
  {
    v3 = [[_TPSXPCConnection alloc] initWithMachServiceName:@"com.apple.tipsd" options:4096];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    [(_TPSXPCConnection *)v2->_xpcConnection setExportedObject:v2];
    [(_TPSXPCConnection *)v2->_xpcConnection resume];
  }

  objc_sync_exit(v2);

  v5 = v2->_xpcConnection;

  return v5;
}

- (void)_destroyXPCConnection
{
  obj = self;
  objc_sync_enter(obj);
  [(_TPSXPCConnection *)obj->_xpcConnection invalidate];
  xpcConnection = obj->_xpcConnection;
  obj->_xpcConnection = 0;

  objc_sync_exit(obj);
}

- (void)connectionInvalidated
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)connectionInterrupted
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (TPSAnalyticsDataProvider)dataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);

  return WeakRetained;
}

void __59__TPSAnalyticsEventController_logAnalyticsEventsFromTipsd___block_invoke_2_cold_1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*a1 eventName];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(&dword_1C00A7000, a2, OS_LOG_TYPE_DEBUG, "logging analytics event: %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __59__TPSAnalyticsEventController_logAnalyticsEventsFromTipsd___block_invoke_2_cold_2(id *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*a1 eventName];
  OUTLINED_FUNCTION_1_2();
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_1C00A7000, a3, OS_LOG_TYPE_DEBUG, "event: %@ \n dictionary: %@", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)logAnalyticsEvent:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1C00A7000, log, OS_LOG_TYPE_DEBUG, "XPCConnection exception calling logEvent to proxy: %@", buf, 0xCu);
}

void __49__TPSAnalyticsEventController_logAnalyticsEvent___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)logAnalyticsEvents:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logAnalyticsEvents:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end