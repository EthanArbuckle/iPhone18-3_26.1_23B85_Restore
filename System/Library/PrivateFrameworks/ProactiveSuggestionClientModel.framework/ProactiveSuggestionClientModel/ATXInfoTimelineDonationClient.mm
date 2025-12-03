@interface ATXInfoTimelineDonationClient
+ (id)sharedInstance;
- (id)_init;
- (void)timelineDidReloadForWidget:(id)widget parentApp:(id)app withEntries:(id)entries completion:(id)completion;
@end

@implementation ATXInfoTimelineDonationClient

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7 != -1)
  {
    +[ATXInfoTimelineDonationClient sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_0;

  return v3;
}

void __47__ATXInfoTimelineDonationClient_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[ATXInfoTimelineDonationClient alloc] _init];
  v2 = sharedInstance__pasExprOnceResult_0;
  sharedInstance__pasExprOnceResult_0 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = ATXInfoTimelineDonationClient;
  v2 = [(ATXInfoTimelineDonationClient *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69C5DA0]);
    v4 = ATXInfoSuggestionXPCInterface();
    v5 = __atxlog_handle_timeline();
    v6 = [v3 initWithServiceName:@"com.apple.proactive.infoSuggestion.xpc" allowlistedServerInterface:v4 allowlistedClientInterface:0 serverInitiatedRequestHandler:0 interruptionHandler:&__block_literal_global_13_1 invalidationHandler:&__block_literal_global_16 logHandle:v5];
    xpcClientHelper = v2->_xpcClientHelper;
    v2->_xpcClientHelper = v6;
  }

  return v2;
}

void __38__ATXInfoTimelineDonationClient__init__block_invoke()
{
  v0 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_DEFAULT, "ATXInfoTimelineDonationClient: xpc connection interrupted.", v1, 2u);
  }
}

void __38__ATXInfoTimelineDonationClient__init__block_invoke_14()
{
  v0 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_DEFAULT, "ATXInfoTimelineDonationClient: xpc connection invalidated.", v1, 2u);
  }
}

- (void)timelineDidReloadForWidget:(id)widget parentApp:(id)app withEntries:(id)entries completion:(id)completion
{
  widgetCopy = widget;
  appCopy = app;
  entriesCopy = entries;
  completionCopy = completion;
  if ([MEMORY[0x1E698AFE8] widgetSuggestionsEnabled])
  {
    xpcClientHelper = self->_xpcClientHelper;
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __93__ATXInfoTimelineDonationClient_timelineDidReloadForWidget_parentApp_withEntries_completion___block_invoke;
    v25 = &unk_1E86A43B0;
    v15 = widgetCopy;
    v26 = v15;
    v16 = completionCopy;
    v27 = v16;
    v17 = [(_PASXPCClientHelper *)xpcClientHelper remoteObjectProxyWithErrorHandler:&v22];
    [v17 timelineDidReloadForWidget:v15 parentApp:appCopy withEntries:entriesCopy completion:{v16, v22, v23, v24, v25}];
  }

  else if (completionCopy)
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v18 errorWithDomain:v20 code:-1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v21);
  }
}

void __93__ATXInfoTimelineDonationClient_timelineDidReloadForWidget_parentApp_withEntries_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __93__ATXInfoTimelineDonationClient_timelineDidReloadForWidget_parentApp_withEntries_completion___block_invoke_cold_1(a1, v3, v4);
  }

  (*(*(a1 + 40) + 16))();
}

void __93__ATXInfoTimelineDonationClient_timelineDidReloadForWidget_parentApp_withEntries_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_ERROR, "ATXInfoTimelineDonationClient: Error reloading timeline for widget %@ - %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end