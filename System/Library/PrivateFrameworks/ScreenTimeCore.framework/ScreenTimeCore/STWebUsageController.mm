@interface STWebUsageController
- (STWebUsageController)init;
- (void)_asynchronousProxyWithHandler:(id)handler;
- (void)dealloc;
- (void)deleteAllWebHistoryForApplication:(id)application completionHandler:(id)handler;
- (void)deleteAllWebHistoryForApplication:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteWebHistoryDuringInterval:(id)interval application:(id)application completionHandler:(id)handler;
- (void)deleteWebHistoryDuringInterval:(id)interval application:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteWebHistoryForDomain:(id)domain application:(id)application completionHandler:(id)handler;
- (void)deleteWebHistoryForDomain:(id)domain application:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteWebHistoryForURL:(id)l application:(id)application completionHandler:(id)handler;
- (void)deleteWebHistoryForURL:(id)l application:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteWebHistoryForURLs:(id)ls application:(id)application completionHandler:(id)handler;
- (void)deleteWebHistoryForURLs:(id)ls application:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation STWebUsageController

- (STWebUsageController)init
{
  v6.receiver = self;
  v6.super_class = STWebUsageController;
  v2 = [(STWebUsageController *)&v6 init];
  if (v2)
  {
    v3 = +[STScreenTimeAgentPrivateConnection newConnection];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    [(NSXPCConnection *)v2->_xpcConnection resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = STWebUsageController;
  [(STWebUsageController *)&v3 dealloc];
}

- (void)deleteWebHistoryForURL:(id)l application:(id)application completionHandler:(id)handler
{
  lCopy = l;
  applicationCopy = application;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__STWebUsageController_deleteWebHistoryForURL_application_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE80A0;
  v15 = lCopy;
  v16 = applicationCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = handlerCopy;
  v12 = applicationCopy;
  v13 = lCopy;
  [(STWebUsageController *)self _asynchronousProxyWithHandler:v14];
}

void __77__STWebUsageController_deleteWebHistoryForURL_application_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = a1[4];
    v8 = a1[5];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__STWebUsageController_deleteWebHistoryForURL_application_completionHandler___block_invoke_2;
    v11[3] = &unk_1E7CE6BF8;
    v9 = a1[7];
    v11[4] = a1[6];
    v12 = v9;
    [v5 deleteWebHistoryForURL:v7 webApplication:v8 replyHandler:v11];
  }

  else
  {
    v10 = a1[7];
    if (v10)
    {
      (*(v10 + 16))(v10, v6);
    }
  }
}

uint64_t __77__STWebUsageController_deleteWebHistoryForURL_application_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteWebHistoryForURLs:(id)ls application:(id)application completionHandler:(id)handler
{
  lsCopy = ls;
  applicationCopy = application;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__STWebUsageController_deleteWebHistoryForURLs_application_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE80A0;
  v15 = lsCopy;
  v16 = applicationCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = handlerCopy;
  v12 = applicationCopy;
  v13 = lsCopy;
  [(STWebUsageController *)self _asynchronousProxyWithHandler:v14];
}

void __78__STWebUsageController_deleteWebHistoryForURLs_application_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = a1[4];
    v8 = a1[5];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__STWebUsageController_deleteWebHistoryForURLs_application_completionHandler___block_invoke_2;
    v11[3] = &unk_1E7CE6BF8;
    v9 = a1[7];
    v11[4] = a1[6];
    v12 = v9;
    [v5 deleteWebHistoryForURLs:v7 webApplication:v8 replyHandler:v11];
  }

  else
  {
    v10 = a1[7];
    if (v10)
    {
      (*(v10 + 16))(v10, v6);
    }
  }
}

uint64_t __78__STWebUsageController_deleteWebHistoryForURLs_application_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteWebHistoryForDomain:(id)domain application:(id)application completionHandler:(id)handler
{
  domainCopy = domain;
  applicationCopy = application;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__STWebUsageController_deleteWebHistoryForDomain_application_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE80A0;
  v15 = domainCopy;
  v16 = applicationCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = handlerCopy;
  v12 = applicationCopy;
  v13 = domainCopy;
  [(STWebUsageController *)self _asynchronousProxyWithHandler:v14];
}

void __80__STWebUsageController_deleteWebHistoryForDomain_application_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = a1[4];
    v8 = a1[5];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80__STWebUsageController_deleteWebHistoryForDomain_application_completionHandler___block_invoke_2;
    v11[3] = &unk_1E7CE6BF8;
    v9 = a1[7];
    v11[4] = a1[6];
    v12 = v9;
    [v5 deleteWebHistoryForDomain:v7 webApplication:v8 replyHandler:v11];
  }

  else
  {
    v10 = a1[7];
    if (v10)
    {
      (*(v10 + 16))(v10, v6);
    }
  }
}

uint64_t __80__STWebUsageController_deleteWebHistoryForDomain_application_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteWebHistoryDuringInterval:(id)interval application:(id)application completionHandler:(id)handler
{
  intervalCopy = interval;
  applicationCopy = application;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__STWebUsageController_deleteWebHistoryDuringInterval_application_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE80A0;
  v15 = intervalCopy;
  v16 = applicationCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = handlerCopy;
  v12 = applicationCopy;
  v13 = intervalCopy;
  [(STWebUsageController *)self _asynchronousProxyWithHandler:v14];
}

void __85__STWebUsageController_deleteWebHistoryDuringInterval_application_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = a1[4];
    v8 = a1[5];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__STWebUsageController_deleteWebHistoryDuringInterval_application_completionHandler___block_invoke_2;
    v11[3] = &unk_1E7CE6BF8;
    v9 = a1[7];
    v11[4] = a1[6];
    v12 = v9;
    [v5 deleteWebHistoryDuringInterval:v7 webApplication:v8 replyHandler:v11];
  }

  else
  {
    v10 = a1[7];
    if (v10)
    {
      (*(v10 + 16))(v10, v6);
    }
  }
}

uint64_t __85__STWebUsageController_deleteWebHistoryDuringInterval_application_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteAllWebHistoryForApplication:(id)application completionHandler:(id)handler
{
  applicationCopy = application;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__STWebUsageController_deleteAllWebHistoryForApplication_completionHandler___block_invoke;
  v10[3] = &unk_1E7CE80C8;
  v11 = applicationCopy;
  selfCopy = self;
  v13 = handlerCopy;
  v8 = handlerCopy;
  v9 = applicationCopy;
  [(STWebUsageController *)self _asynchronousProxyWithHandler:v10];
}

void __76__STWebUsageController_deleteAllWebHistoryForApplication_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__STWebUsageController_deleteAllWebHistoryForApplication_completionHandler___block_invoke_2;
    v10[3] = &unk_1E7CE6BF8;
    v7 = a1[4];
    v8 = a1[6];
    v10[4] = a1[5];
    v11 = v8;
    [v5 deleteAllWebApplicationHistory:v7 replyHandler:v10];
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

uint64_t __76__STWebUsageController_deleteAllWebHistoryForApplication_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteWebHistoryForURL:(id)l application:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler
{
  lCopy = l;
  applicationCopy = application;
  identifierCopy = identifier;
  handlerCopy = handler;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __95__STWebUsageController_deleteWebHistoryForURL_application_profileIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_1E7CE80F0;
  v19 = lCopy;
  v20 = applicationCopy;
  v21 = identifierCopy;
  selfCopy = self;
  v23 = handlerCopy;
  v14 = handlerCopy;
  v15 = identifierCopy;
  v16 = applicationCopy;
  v17 = lCopy;
  [(STWebUsageController *)self _asynchronousProxyWithHandler:v18];
}

void __95__STWebUsageController_deleteWebHistoryForURL_application_profileIdentifier_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = a1[4];
    v8 = a1[5];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __95__STWebUsageController_deleteWebHistoryForURL_application_profileIdentifier_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7CE6BF8;
    v9 = a1[6];
    v10 = a1[8];
    v12[4] = a1[7];
    v13 = v10;
    [v5 deleteWebHistoryForURL:v7 webApplication:v8 profileIdentifier:v9 replyHandler:v12];
  }

  else
  {
    v11 = a1[8];
    if (v11)
    {
      (*(v11 + 16))(v11, v6);
    }
  }
}

uint64_t __95__STWebUsageController_deleteWebHistoryForURL_application_profileIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteWebHistoryForURLs:(id)ls application:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler
{
  lsCopy = ls;
  applicationCopy = application;
  identifierCopy = identifier;
  handlerCopy = handler;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__STWebUsageController_deleteWebHistoryForURLs_application_profileIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_1E7CE80F0;
  v19 = lsCopy;
  v20 = applicationCopy;
  v21 = identifierCopy;
  selfCopy = self;
  v23 = handlerCopy;
  v14 = handlerCopy;
  v15 = identifierCopy;
  v16 = applicationCopy;
  v17 = lsCopy;
  [(STWebUsageController *)self _asynchronousProxyWithHandler:v18];
}

void __96__STWebUsageController_deleteWebHistoryForURLs_application_profileIdentifier_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = a1[4];
    v8 = a1[5];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __96__STWebUsageController_deleteWebHistoryForURLs_application_profileIdentifier_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7CE6BF8;
    v9 = a1[6];
    v10 = a1[8];
    v12[4] = a1[7];
    v13 = v10;
    [v5 deleteWebHistoryForURLs:v7 webApplication:v8 profileIdentifier:v9 replyHandler:v12];
  }

  else
  {
    v11 = a1[8];
    if (v11)
    {
      (*(v11 + 16))(v11, v6);
    }
  }
}

uint64_t __96__STWebUsageController_deleteWebHistoryForURLs_application_profileIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteWebHistoryForDomain:(id)domain application:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler
{
  domainCopy = domain;
  applicationCopy = application;
  identifierCopy = identifier;
  handlerCopy = handler;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __98__STWebUsageController_deleteWebHistoryForDomain_application_profileIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_1E7CE80F0;
  v19 = domainCopy;
  v20 = applicationCopy;
  v21 = identifierCopy;
  selfCopy = self;
  v23 = handlerCopy;
  v14 = handlerCopy;
  v15 = identifierCopy;
  v16 = applicationCopy;
  v17 = domainCopy;
  [(STWebUsageController *)self _asynchronousProxyWithHandler:v18];
}

void __98__STWebUsageController_deleteWebHistoryForDomain_application_profileIdentifier_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = a1[4];
    v8 = a1[5];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __98__STWebUsageController_deleteWebHistoryForDomain_application_profileIdentifier_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7CE6BF8;
    v9 = a1[6];
    v10 = a1[8];
    v12[4] = a1[7];
    v13 = v10;
    [v5 deleteWebHistoryForDomain:v7 webApplication:v8 profileIdentifier:v9 replyHandler:v12];
  }

  else
  {
    v11 = a1[8];
    if (v11)
    {
      (*(v11 + 16))(v11, v6);
    }
  }
}

uint64_t __98__STWebUsageController_deleteWebHistoryForDomain_application_profileIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteWebHistoryDuringInterval:(id)interval application:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler
{
  intervalCopy = interval;
  applicationCopy = application;
  identifierCopy = identifier;
  handlerCopy = handler;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __103__STWebUsageController_deleteWebHistoryDuringInterval_application_profileIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_1E7CE80F0;
  v19 = intervalCopy;
  v20 = applicationCopy;
  v21 = identifierCopy;
  selfCopy = self;
  v23 = handlerCopy;
  v14 = handlerCopy;
  v15 = identifierCopy;
  v16 = applicationCopy;
  v17 = intervalCopy;
  [(STWebUsageController *)self _asynchronousProxyWithHandler:v18];
}

void __103__STWebUsageController_deleteWebHistoryDuringInterval_application_profileIdentifier_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = a1[4];
    v8 = a1[5];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __103__STWebUsageController_deleteWebHistoryDuringInterval_application_profileIdentifier_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7CE6BF8;
    v9 = a1[6];
    v10 = a1[8];
    v12[4] = a1[7];
    v13 = v10;
    [v5 deleteWebHistoryDuringInterval:v7 webApplication:v8 profileIdentifier:v9 replyHandler:v12];
  }

  else
  {
    v11 = a1[8];
    if (v11)
    {
      (*(v11 + 16))(v11, v6);
    }
  }
}

uint64_t __103__STWebUsageController_deleteWebHistoryDuringInterval_application_profileIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteAllWebHistoryForApplication:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler
{
  applicationCopy = application;
  identifierCopy = identifier;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __94__STWebUsageController_deleteAllWebHistoryForApplication_profileIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE80A0;
  v15 = applicationCopy;
  v16 = identifierCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = handlerCopy;
  v12 = identifierCopy;
  v13 = applicationCopy;
  [(STWebUsageController *)self _asynchronousProxyWithHandler:v14];
}

void __94__STWebUsageController_deleteAllWebHistoryForApplication_profileIdentifier_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = a1[4];
    v8 = a1[5];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __94__STWebUsageController_deleteAllWebHistoryForApplication_profileIdentifier_completionHandler___block_invoke_2;
    v11[3] = &unk_1E7CE6BF8;
    v9 = a1[7];
    v11[4] = a1[6];
    v12 = v9;
    [v5 deleteAllWebApplicationHistory:v7 profileIdentifier:v8 replyHandler:v11];
  }

  else
  {
    v10 = a1[7];
    if (v10)
    {
      (*(v10 + 16))(v10, v6);
    }
  }
}

uint64_t __94__STWebUsageController_deleteAllWebHistoryForApplication_profileIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_asynchronousProxyWithHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(STWebUsageController *)self xpcConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__STWebUsageController__asynchronousProxyWithHandler___block_invoke;
  v8[3] = &unk_1E7CE6CE8;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
  v6[2](v6, v7, 0);
}

void __54__STWebUsageController__asynchronousProxyWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog ask];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__STWebUsageController__asynchronousProxyWithHandler___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __54__STWebUsageController__asynchronousProxyWithHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = @"com.apple.ScreenTimeAgent.private";
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Connection error from %{public}@: %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end