@interface PPQuickTypeServerHandler
- (PPQuickTypeServerHandler)init;
- (void)hibernateWithCompletion:(id)completion;
- (void)quickTypeItemsWithLanguageModelingTokens:(id)tokens localeIdentifier:(id)identifier recipients:(id)recipients bundleIdentifier:(id)bundleIdentifier limit:(unint64_t)limit completion:(id)completion;
- (void)quickTypeItemsWithQuery:(id)query limit:(unint64_t)limit completion:(id)completion;
- (void)recentQuickTypeItemsForRecipients:(id)recipients completion:(id)completion;
- (void)registerFeedback:(id)feedback completion:(id)completion;
- (void)warmUpWithCompletion:(id)completion;
@end

@implementation PPQuickTypeServerHandler

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  completionCopy = completion;
  feedbackCopy = feedback;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPQuickTypeServer: registerFeedback", v9, 2u);
  }

  v8 = +[PPLocalQuickTypeBroker sharedInstance];
  [v8 registerFeedback:feedbackCopy completion:completionCopy];
}

- (void)hibernateWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPQuickTypeServer: hibernate", v6, 2u);
  }

  v5 = +[PPLocalQuickTypeBroker sharedInstance];
  [v5 hibernateWithCompletion:completionCopy];
}

- (void)warmUpWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPQuickTypeServer: warmUp", v6, 2u);
  }

  v5 = +[PPLocalQuickTypeBroker sharedInstance];
  [v5 warmUpWithCompletion:completionCopy];
}

- (void)recentQuickTypeItemsForRecipients:(id)recipients completion:(id)completion
{
  completionCopy = completion;
  recipientsCopy = recipients;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPQuickTypeServer: recentQuickTypeItemsForRecipients", v9, 2u);
  }

  v8 = +[PPLocalQuickTypeBroker sharedInstance];
  [v8 recentQuickTypeItemsForRecipients:recipientsCopy completion:completionCopy];
}

- (void)quickTypeItemsWithLanguageModelingTokens:(id)tokens localeIdentifier:(id)identifier recipients:(id)recipients bundleIdentifier:(id)bundleIdentifier limit:(unint64_t)limit completion:(id)completion
{
  completionCopy = completion;
  bundleIdentifierCopy = bundleIdentifier;
  recipientsCopy = recipients;
  identifierCopy = identifier;
  tokensCopy = tokens;
  v18 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPQuickTypeServer: quickTypeItemsWithLanguageModelingTokens", v20, 2u);
  }

  v19 = +[PPLocalQuickTypeBroker sharedInstance];
  [v19 quickTypeItemsWithLanguageModelingTokens:tokensCopy localeIdentifier:identifierCopy recipients:recipientsCopy bundleIdentifier:bundleIdentifierCopy limit:limit completion:completionCopy];
}

- (void)quickTypeItemsWithQuery:(id)query limit:(unint64_t)limit completion:(id)completion
{
  completionCopy = completion;
  queryCopy = query;
  v9 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPQuickTypeServer: quickTypeItemsWithQuery", v11, 2u);
  }

  v10 = +[PPLocalQuickTypeBroker sharedInstance];
  [v10 quickTypeItemsWithQuery:queryCopy limit:limit completion:completionCopy];
}

- (PPQuickTypeServerHandler)init
{
  v3.receiver = self;
  v3.super_class = PPQuickTypeServerHandler;
  return [(PPQuickTypeServerHandler *)&v3 init];
}

@end