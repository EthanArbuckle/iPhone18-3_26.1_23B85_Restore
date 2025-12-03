@interface STAskForTimeResource
- (STAskForTimeResource)initWithResourceIdentifier:(id)identifier resourceDisplayName:(id)name usageType:(int64_t)type changeHandler:(id)handler;
- (void)_approveExceptionForRequest:(id)request withCompletionHandler:(id)handler;
- (void)approveAdditionalTime:(double)time completionHandler:(id)handler;
- (void)approveOneMoreMinuteWithCompletionHandler:(id)handler;
- (void)cancelOutstandingRequestsWithCompletion:(id)completion;
- (void)checkRequestForAdditionalTimeWithResponseHandler:(id)handler;
- (void)dealloc;
- (void)requestAdditionalTime:(double)time completionHandler:(id)handler;
@end

@implementation STAskForTimeResource

- (STAskForTimeResource)initWithResourceIdentifier:(id)identifier resourceDisplayName:(id)name usageType:(int64_t)type changeHandler:(id)handler
{
  identifierCopy = identifier;
  nameCopy = name;
  handlerCopy = handler;
  v32.receiver = self;
  v32.super_class = STAskForTimeResource;
  v13 = [(STAskForTimeResource *)&v32 init];
  if (v13)
  {
    v14 = objc_opt_new();
    askForTimeClient = v13->_askForTimeClient;
    v13->_askForTimeClient = v14;

    v16 = [[STAskForTimeRequest alloc] initWithUsageType:type requestedResourceIdentifier:identifierCopy];
    request = v13->_request;
    v13->_request = v16;

    [(STAskForTimeRequest *)v13->_request setResourceDisplayName:nameCopy];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_USER_INITIATED, 0);

    v20 = dispatch_queue_create("com.apple.ScreenTimeAgent.ask-callback", v19);
    out_token = 0;
    objc_initWeak(&location, v13);
    uTF8String = [@"AskForTimeMessageReceived" UTF8String];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __95__STAskForTimeResource_initWithResourceIdentifier_resourceDisplayName_usageType_changeHandler___block_invoke;
    handler[3] = &unk_1E7CE6DA8;
    objc_copyWeak(&v29, &location);
    v27 = identifierCopy;
    v22 = handlerCopy;
    v28 = v22;
    notify_register_dispatch(uTF8String, &out_token, v20, handler);
    v23 = _Block_copy(v22);
    changeHandler = v13->_changeHandler;
    v13->_changeHandler = v23;

    v13->_notificationToken = out_token;
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __95__STAskForTimeResource_initWithResourceIdentifier_resourceDisplayName_usageType_changeHandler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[STLog ask];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1B831F000, v3, OS_LOG_TYPE_DEFAULT, "Received callback for ask for time resource %{public}@", &v6, 0xCu);
  }

  [WeakRetained checkRequestForAdditionalTimeWithResponseHandler:*(a1 + 40)];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  notify_cancel(self->_notificationToken);
  v3.receiver = self;
  v3.super_class = STAskForTimeResource;
  [(STAskForTimeResource *)&v3 dealloc];
}

- (void)requestAdditionalTime:(double)time completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = +[STLog ask];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B831F000, v7, OS_LOG_TYPE_DEFAULT, "Requesting additional time %@", buf, 0xCu);
  }

  request = [(STAskForTimeResource *)self request];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  [request setTimeRequested:v9];

  askForTimeClient = [(STAskForTimeResource *)self askForTimeClient];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__STAskForTimeResource_requestAdditionalTime_completionHandler___block_invoke;
  v13[3] = &unk_1E7CE6CE8;
  v14 = handlerCopy;
  v11 = handlerCopy;
  [askForTimeClient sendAskForTimeRequest:request completionHandler:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __64__STAskForTimeResource_requestAdditionalTime_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog ask];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__STAskForTimeResource_requestAdditionalTime_completionHandler___block_invoke_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Send ask for time request succeeded", v7, 2u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)approveAdditionalTime:(double)time completionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = +[STLog ask];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B831F000, v7, OS_LOG_TYPE_DEFAULT, "Requesting additional time %@", &v11, 0xCu);
  }

  request = [(STAskForTimeResource *)self request];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  [request setTimeRequested:v9];

  [(STAskForTimeResource *)self _approveExceptionForRequest:request withCompletionHandler:handlerCopy];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)approveOneMoreMinuteWithCompletionHandler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = +[STLog ask];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Requesting one more minute %@", &v8, 0xCu);
  }

  request = [(STAskForTimeResource *)self request];
  [request setOneMoreMinute:1];
  [(STAskForTimeResource *)self _approveExceptionForRequest:request withCompletionHandler:handlerCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_approveExceptionForRequest:(id)request withCompletionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  askForTimeClient = [(STAskForTimeResource *)self askForTimeClient];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__STAskForTimeResource__approveExceptionForRequest_withCompletionHandler___block_invoke;
  v11[3] = &unk_1E7CE6DD0;
  v12 = requestCopy;
  v13 = handlerCopy;
  v11[4] = self;
  v9 = requestCopy;
  v10 = handlerCopy;
  [askForTimeClient approveExceptionForRequest:v9 completionHandler:v11];
}

void __74__STAskForTimeResource__approveExceptionForRequest_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog ask];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __74__STAskForTimeResource__approveExceptionForRequest_withCompletionHandler___block_invoke_cold_1(v3, v5);
    }

    v6 = 3;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Approval for more time succeeded", v10, 2u);
    }

    v6 = 4;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = [*(a1 + 32) changeHandler];
  v9 = [*(a1 + 40) timeRequested];
  (v8)[2](v8, v6, 0, v9, v3);
}

- (void)checkRequestForAdditionalTimeWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  request = [(STAskForTimeResource *)self request];
  askForTimeClient = [(STAskForTimeResource *)self askForTimeClient];
  requestedResourceIdentifier = [request requestedResourceIdentifier];
  usageType = [request usageType];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__STAskForTimeResource_checkRequestForAdditionalTimeWithResponseHandler___block_invoke;
  v10[3] = &unk_1E7CE6DF8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [askForTimeClient fetchLastResponseForRequestedResourceIdentifier:requestedResourceIdentifier usageType:usageType withCompletionHandler:v10];
}

- (void)cancelOutstandingRequestsWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

void __64__STAskForTimeResource_requestAdditionalTime_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Send ask for time request failed: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __74__STAskForTimeResource__approveExceptionForRequest_withCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Approval for more time failed: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end