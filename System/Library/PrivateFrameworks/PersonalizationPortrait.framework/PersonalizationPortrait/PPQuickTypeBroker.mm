@interface PPQuickTypeBroker
+ (id)sharedInstance;
- (PPQuickTypeBroker)init;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)hibernateWithCompletion:(id)a3;
- (void)quickTypeItemsWithLanguageModelingTokens:(id)a3 localeIdentifier:(id)a4 recipients:(id)a5 bundleIdentifier:(id)a6 limit:(unint64_t)a7 completion:(id)a8;
- (void)quickTypeItemsWithQuery:(id)a3 limit:(unint64_t)a4 completion:(id)a5;
- (void)recentQuickTypeItemsForRecipients:(id)a3 completion:(id)a4;
- (void)registerFeedback:(id)a3 completion:(id)a4;
- (void)warmUpWithCompletion:(id)a3;
@end

@implementation PPQuickTypeBroker

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PPQuickTypeBroker_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__pasOnceToken8 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken8, block);
  }

  v2 = sharedInstance__pasExprOnceResult_211;

  return v2;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  clientFeedbackHelper = self->_clientFeedbackHelper;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_clientFeedbackHelper;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)registerFeedback:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  if ([v8 isMapped])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PPQuickTypeBroker.m" lineNumber:117 description:@"You cannot send mapped feedback on named entities. Please use PPFeedback to create the feedback for named entities."];
  }

  v9 = [(PPQuickTypeBroker *)self clientIdentifier];
  v10 = [v9 length];

  if (!v10)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v15 handleFailureInMethod:a2 object:self file:@"PPQuickTypeBroker.m" lineNumber:118 description:{@"The clientIdentifier property must be set on the %@ in order to send feedback.", v17}];
  }

  v11 = [(PPQuickTypeBroker *)self clientIdentifier];
  [v8 setClientIdentifier:v11];

  v12 = [(PPQuickTypeBroker *)self _remoteObjectProxy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__PPQuickTypeBroker_registerFeedback_completion___block_invoke;
  v18[3] = &unk_1E77F7D98;
  v18[4] = self;
  v19 = v7;
  v13 = v7;
  [v12 registerFeedback:v8 completion:v18];
}

void __49__PPQuickTypeBroker_registerFeedback_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = pp_xpc_client_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_1A7FD3000, v7, OS_LOG_TYPE_ERROR, "Error from _remoteObjectProxy %@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)hibernateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PPQuickTypeBroker *)self _remoteObjectProxy];
  [v5 hibernateWithCompletion:v4];
}

- (void)warmUpWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PPQuickTypeBroker *)self _remoteObjectProxy];
  [v5 warmUpWithCompletion:v4];
}

- (void)recentQuickTypeItemsForRecipients:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PPQuickTypeBroker *)self _remoteObjectProxy];
  [v8 recentQuickTypeItemsForRecipients:v7 completion:v6];
}

- (void)quickTypeItemsWithLanguageModelingTokens:(id)a3 localeIdentifier:(id)a4 recipients:(id)a5 bundleIdentifier:(id)a6 limit:(unint64_t)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if (!v14)
  {
    goto LABEL_7;
  }

  v19 = [v14 objectForKeyedSubscript:@"type"];
  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = v19;
  v21 = [v14 objectForKeyedSubscript:@"type"];
  v22 = [v21 isEqualToString:@"photosharing"];

  if (v22)
  {
    v23 = pp_xpc_client_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&dword_1A7FD3000, v23, OS_LOG_TYPE_INFO, "ignoring quickTypeItemsWithLanguageModelingTokens call for photosharing", v26, 2u);
    }

    v24 = objc_opt_new();
    v18[2](v18, MEMORY[0x1E695E0F0], v24);
  }

  else
  {
LABEL_7:
    v25 = [(PPQuickTypeBroker *)self _remoteObjectProxy];
    [v25 quickTypeItemsWithLanguageModelingTokens:v14 localeIdentifier:v15 recipients:v16 bundleIdentifier:v17 limit:a7 completion:v18];
  }
}

- (void)quickTypeItemsWithQuery:(id)a3 limit:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PPQuickTypeBroker *)self _remoteObjectProxy];
  [v10 quickTypeItemsWithQuery:v9 limit:a4 completion:v8];
}

- (PPQuickTypeBroker)init
{
  v21.receiver = self;
  v21.super_class = PPQuickTypeBroker;
  v2 = [(PPQuickTypeBroker *)&v21 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B55CF8];
    v4 = objc_autoreleasePoolPush();
    v5 = objc_alloc(MEMORY[0x1E695DFD8]);
    v6 = objc_opt_class();
    v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v4);
    [v3 setClasses:v7 forSelector:sel_quickTypeItemsWithQuery_limit_completion_ argumentIndex:0 ofReply:1];

    v8 = objc_autoreleasePoolPush();
    v9 = objc_alloc(MEMORY[0x1E695DFD8]);
    v10 = objc_opt_class();
    v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v8);
    [v3 setClasses:v11 forSelector:sel_quickTypeItemsWithLanguageModelingTokens_localeIdentifier_recipients_bundleIdentifier_limit_completion_ argumentIndex:0 ofReply:1];

    v12 = objc_autoreleasePoolPush();
    v13 = objc_alloc(MEMORY[0x1E695DFD8]);
    v14 = objc_opt_class();
    v15 = [v13 initWithObjects:{v14, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v12);
    [v3 setClasses:v15 forSelector:sel_recentQuickTypeItemsForRecipients_completion_ argumentIndex:0 ofReply:1];

    v16 = [[PPXPCClientHelper alloc] initWithServiceName:@"com.apple.proactive.PersonalizationPortrait.QuickType" allowedServerInterface:v3 allowedClientInterface:0 clientExportedObject:0 interruptionHandler:&__block_literal_global_201 invalidationHandler:&__block_literal_global_88];
    clientHelper = v2->_clientHelper;
    v2->_clientHelper = v16;

    v18 = [[PPClientFeedbackHelper alloc] initWithParentObject:v2];
    clientFeedbackHelper = v2->_clientFeedbackHelper;
    v2->_clientFeedbackHelper = v18;
  }

  return v2;
}

void __35__PPQuickTypeBroker_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_211;
  sharedInstance__pasExprOnceResult_211 = v4;

  objc_autoreleasePoolPop(v2);
}

@end