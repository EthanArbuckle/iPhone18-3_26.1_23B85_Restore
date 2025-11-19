@interface ATXInfoSuggestionFeedbackClient
+ (id)sharedInstance;
- (id)_init;
@end

@implementation ATXInfoSuggestionFeedbackClient

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2 != -1)
  {
    +[ATXInfoSuggestionFeedbackClient sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult;

  return v3;
}

void __49__ATXInfoSuggestionFeedbackClient_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[ATXInfoSuggestionFeedbackClient alloc] _init];
  v2 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = ATXInfoSuggestionFeedbackClient;
  v2 = [(ATXInfoSuggestionFeedbackClient *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69C5DA0]);
    v4 = ATXInfoSuggestionXPCInterface();
    v5 = __atxlog_handle_gi();
    v6 = [v3 initWithServiceName:@"com.apple.proactive.infoSuggestion.xpc" allowlistedServerInterface:v4 allowlistedClientInterface:0 serverInitiatedRequestHandler:0 interruptionHandler:&__block_literal_global_7 invalidationHandler:&__block_literal_global_10 logHandle:v5];
    xpcClientHelper = v2->_xpcClientHelper;
    v2->_xpcClientHelper = v6;
  }

  return v2;
}

void __40__ATXInfoSuggestionFeedbackClient__init__block_invoke()
{
  v0 = __atxlog_handle_gi();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_DEFAULT, "ATXInfoSuggestionFeedbackClient: xpc connection interrupted.", v1, 2u);
  }
}

void __40__ATXInfoSuggestionFeedbackClient__init__block_invoke_8()
{
  v0 = __atxlog_handle_gi();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_DEFAULT, "ATXInfoSuggestionFeedbackClient: xpc connection invalidated.", v1, 2u);
  }
}

void __86__ATXInfoSuggestionFeedbackClient_suggestionDismissed_isDismissalLongTerm_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __86__ATXInfoSuggestionFeedbackClient_suggestionDismissed_isDismissalLongTerm_completion___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __98__ATXInfoSuggestionFeedbackClient_stackDidRotateProactivelyForInfoSuggestion_isStalenessRotation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __98__ATXInfoSuggestionFeedbackClient_stackDidRotateProactivelyForInfoSuggestion_isStalenessRotation___block_invoke_cold_1(v2, v3);
  }
}

void __86__ATXInfoSuggestionFeedbackClient_suggestionDismissed_isDismissalLongTerm_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "ATXInfoSuggestionFeedbackClient: Error recording suggestion dismissed - %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __98__ATXInfoSuggestionFeedbackClient_stackDidRotateProactivelyForInfoSuggestion_isStalenessRotation___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "ATXInfoSuggestionFeedbackClient: Error getting remote object proxy to record stack rotation - %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end