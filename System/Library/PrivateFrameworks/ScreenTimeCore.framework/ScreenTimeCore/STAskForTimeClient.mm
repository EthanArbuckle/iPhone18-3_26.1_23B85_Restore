@interface STAskForTimeClient
- (STAskForTimeClient)init;
- (void)_asynchronousProxyWithHandler:(id)handler;
- (void)_synchronousProxyWithHandler:(id)handler;
- (void)approveExceptionForRequest:(id)request completionHandler:(id)handler;
- (void)fetchLastResponseForRequestedResourceIdentifier:(id)identifier usageType:(int64_t)type withCompletionHandler:(id)handler;
- (void)handleAnswer:(int64_t)answer requestIdentifier:(id)identifier timeApproved:(id)approved completionHandler:(id)handler;
- (void)sendAskForTimeRequest:(id)request completionHandler:(id)handler;
@end

@implementation STAskForTimeClient

- (STAskForTimeClient)init
{
  v7.receiver = self;
  v7.super_class = STAskForTimeClient;
  v2 = [(STAskForTimeClient *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ScreenTimeAgent.ask-for-time" options:4096];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F305BA08];
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_xpcConnection resume];
  }

  return v2;
}

- (void)sendAskForTimeRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__STAskForTimeClient_sendAskForTimeRequest_completionHandler___block_invoke;
  v10[3] = &unk_1E7CE6C20;
  v11 = requestCopy;
  selfCopy = self;
  v13 = handlerCopy;
  v8 = handlerCopy;
  v9 = requestCopy;
  [(STAskForTimeClient *)self _asynchronousProxyWithHandler:v10];
}

void __62__STAskForTimeClient_sendAskForTimeRequest_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__STAskForTimeClient_sendAskForTimeRequest_completionHandler___block_invoke_2;
    v10[3] = &unk_1E7CE6BF8;
    v7 = a1[4];
    v8 = a1[6];
    v10[4] = a1[5];
    v11 = v8;
    [v5 sendAskForTimeRequest:v7 completionHandler:v10];
  }

  else
  {
    v9 = a1[6];
    if (v9)
    {
      (*(v9 + 16))(v9, v6);
    }
  }
}

- (void)approveExceptionForRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__STAskForTimeClient_approveExceptionForRequest_completionHandler___block_invoke;
  v10[3] = &unk_1E7CE6C20;
  v11 = requestCopy;
  selfCopy = self;
  v13 = handlerCopy;
  v8 = handlerCopy;
  v9 = requestCopy;
  [(STAskForTimeClient *)self _asynchronousProxyWithHandler:v10];
}

void __67__STAskForTimeClient_approveExceptionForRequest_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__STAskForTimeClient_approveExceptionForRequest_completionHandler___block_invoke_2;
    v10[3] = &unk_1E7CE6BF8;
    v7 = a1[4];
    v8 = a1[6];
    v10[4] = a1[5];
    v11 = v8;
    [v5 approveExceptionForRequest:v7 completionHandler:v10];
  }

  else
  {
    v9 = a1[6];
    if (v9)
    {
      (*(v9 + 16))(v9, v6);
    }
  }
}

- (void)fetchLastResponseForRequestedResourceIdentifier:(id)identifier usageType:(int64_t)type withCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__STAskForTimeClient_fetchLastResponseForRequestedResourceIdentifier_usageType_withCompletionHandler___block_invoke;
  v12[3] = &unk_1E7CE6C70;
  v13 = identifierCopy;
  selfCopy = self;
  v15 = handlerCopy;
  typeCopy = type;
  v10 = handlerCopy;
  v11 = identifierCopy;
  [(STAskForTimeClient *)self _asynchronousProxyWithHandler:v12];
}

void __102__STAskForTimeClient_fetchLastResponseForRequestedResourceIdentifier_usageType_withCompletionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __102__STAskForTimeClient_fetchLastResponseForRequestedResourceIdentifier_usageType_withCompletionHandler___block_invoke_2;
    v11[3] = &unk_1E7CE6C48;
    v7 = a1[4];
    v8 = a1[6];
    v9 = a1[7];
    v11[4] = a1[5];
    v12 = v8;
    [v5 fetchLastResponseForRequestedResourceIdentifier:v7 usageType:v9 withCompletionHandler:v11];
  }

  else
  {
    v10 = a1[6];
    if (v10)
    {
      (*(v10 + 16))(v10, 0, 0, v6);
    }
  }
}

- (void)handleAnswer:(int64_t)answer requestIdentifier:(id)identifier timeApproved:(id)approved completionHandler:(id)handler
{
  identifierCopy = identifier;
  approvedCopy = approved;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__STAskForTimeClient_handleAnswer_requestIdentifier_timeApproved_completionHandler___block_invoke;
  v16[3] = &unk_1E7CE6CC0;
  v20 = handlerCopy;
  answerCopy = answer;
  v17 = identifierCopy;
  v18 = approvedCopy;
  selfCopy = self;
  v13 = handlerCopy;
  v14 = approvedCopy;
  v15 = identifierCopy;
  [(STAskForTimeClient *)self _asynchronousProxyWithHandler:v16];
}

void __84__STAskForTimeClient_handleAnswer_requestIdentifier_timeApproved_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = a1[4];
    v8 = a1[5];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __84__STAskForTimeClient_handleAnswer_requestIdentifier_timeApproved_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7CE6C98;
    v9 = a1[7];
    v10 = a1[8];
    v12[4] = a1[6];
    v13 = v9;
    [v5 handleAnswer:v10 requestIdentifier:v7 timeApproved:v8 completionHandler:v12];
  }

  else
  {
    v11 = a1[7];
    if (v11)
    {
      (*(v11 + 16))();
    }
  }
}

- (void)_synchronousProxyWithHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(STAskForTimeClient *)self xpcConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__STAskForTimeClient__synchronousProxyWithHandler___block_invoke;
  v8[3] = &unk_1E7CE6CE8;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  v6[2](v6, v7, 0);
}

void __51__STAskForTimeClient__synchronousProxyWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog ask];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__STAskForTimeClient__synchronousProxyWithHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_asynchronousProxyWithHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(STAskForTimeClient *)self xpcConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__STAskForTimeClient__asynchronousProxyWithHandler___block_invoke;
  v8[3] = &unk_1E7CE6CE8;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
  v6[2](v6, v7, 0);
}

void __52__STAskForTimeClient__asynchronousProxyWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog ask];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__STAskForTimeClient__synchronousProxyWithHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __51__STAskForTimeClient__synchronousProxyWithHandler___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1B831F000, v0, OS_LOG_TYPE_ERROR, "Connection error from %{public}@: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

@end