@interface PPQuickTypeBroker
+ (id)sharedInstance;
- (PPQuickTypeBroker)init;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)hibernateWithCompletion:(id)completion;
- (void)quickTypeItemsWithLanguageModelingTokens:(id)tokens localeIdentifier:(id)identifier recipients:(id)recipients bundleIdentifier:(id)bundleIdentifier limit:(unint64_t)limit completion:(id)completion;
- (void)quickTypeItemsWithQuery:(id)query limit:(unint64_t)limit completion:(id)completion;
- (void)recentQuickTypeItemsForRecipients:(id)recipients completion:(id)completion;
- (void)registerFeedback:(id)feedback completion:(id)completion;
- (void)warmUpWithCompletion:(id)completion;
@end

@implementation PPQuickTypeBroker

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PPQuickTypeBroker_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken8 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken8, block);
  }

  v2 = sharedInstance__pasExprOnceResult_211;

  return v2;
}

- (id)forwardingTargetForSelector:(SEL)selector
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

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  completionCopy = completion;
  feedbackCopy = feedback;
  if ([feedbackCopy isMapped])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPQuickTypeBroker.m" lineNumber:117 description:@"You cannot send mapped feedback on named entities. Please use PPFeedback to create the feedback for named entities."];
  }

  clientIdentifier = [(PPQuickTypeBroker *)self clientIdentifier];
  v10 = [clientIdentifier length];

  if (!v10)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPQuickTypeBroker.m" lineNumber:118 description:{@"The clientIdentifier property must be set on the %@ in order to send feedback.", v17}];
  }

  clientIdentifier2 = [(PPQuickTypeBroker *)self clientIdentifier];
  [feedbackCopy setClientIdentifier:clientIdentifier2];

  _remoteObjectProxy = [(PPQuickTypeBroker *)self _remoteObjectProxy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__PPQuickTypeBroker_registerFeedback_completion___block_invoke;
  v18[3] = &unk_1E77F7D98;
  v18[4] = self;
  v19 = completionCopy;
  v13 = completionCopy;
  [_remoteObjectProxy registerFeedback:feedbackCopy completion:v18];
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

- (void)hibernateWithCompletion:(id)completion
{
  completionCopy = completion;
  _remoteObjectProxy = [(PPQuickTypeBroker *)self _remoteObjectProxy];
  [_remoteObjectProxy hibernateWithCompletion:completionCopy];
}

- (void)warmUpWithCompletion:(id)completion
{
  completionCopy = completion;
  _remoteObjectProxy = [(PPQuickTypeBroker *)self _remoteObjectProxy];
  [_remoteObjectProxy warmUpWithCompletion:completionCopy];
}

- (void)recentQuickTypeItemsForRecipients:(id)recipients completion:(id)completion
{
  completionCopy = completion;
  recipientsCopy = recipients;
  _remoteObjectProxy = [(PPQuickTypeBroker *)self _remoteObjectProxy];
  [_remoteObjectProxy recentQuickTypeItemsForRecipients:recipientsCopy completion:completionCopy];
}

- (void)quickTypeItemsWithLanguageModelingTokens:(id)tokens localeIdentifier:(id)identifier recipients:(id)recipients bundleIdentifier:(id)bundleIdentifier limit:(unint64_t)limit completion:(id)completion
{
  tokensCopy = tokens;
  identifierCopy = identifier;
  recipientsCopy = recipients;
  bundleIdentifierCopy = bundleIdentifier;
  completionCopy = completion;
  if (!tokensCopy)
  {
    goto LABEL_7;
  }

  v19 = [tokensCopy objectForKeyedSubscript:@"type"];
  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = v19;
  v21 = [tokensCopy objectForKeyedSubscript:@"type"];
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
    completionCopy[2](completionCopy, MEMORY[0x1E695E0F0], v24);
  }

  else
  {
LABEL_7:
    _remoteObjectProxy = [(PPQuickTypeBroker *)self _remoteObjectProxy];
    [_remoteObjectProxy quickTypeItemsWithLanguageModelingTokens:tokensCopy localeIdentifier:identifierCopy recipients:recipientsCopy bundleIdentifier:bundleIdentifierCopy limit:limit completion:completionCopy];
  }
}

- (void)quickTypeItemsWithQuery:(id)query limit:(unint64_t)limit completion:(id)completion
{
  completionCopy = completion;
  queryCopy = query;
  _remoteObjectProxy = [(PPQuickTypeBroker *)self _remoteObjectProxy];
  [_remoteObjectProxy quickTypeItemsWithQuery:queryCopy limit:limit completion:completionCopy];
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