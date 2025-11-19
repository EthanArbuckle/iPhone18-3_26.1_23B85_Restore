@interface STWebUsageController
- (STWebUsageController)init;
- (void)_asynchronousProxyWithHandler:(id)a3;
- (void)dealloc;
- (void)deleteAllWebHistoryForApplication:(id)a3 completionHandler:(id)a4;
- (void)deleteAllWebHistoryForApplication:(id)a3 profileIdentifier:(id)a4 completionHandler:(id)a5;
- (void)deleteWebHistoryDuringInterval:(id)a3 application:(id)a4 completionHandler:(id)a5;
- (void)deleteWebHistoryDuringInterval:(id)a3 application:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6;
- (void)deleteWebHistoryForDomain:(id)a3 application:(id)a4 completionHandler:(id)a5;
- (void)deleteWebHistoryForDomain:(id)a3 application:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6;
- (void)deleteWebHistoryForURL:(id)a3 application:(id)a4 completionHandler:(id)a5;
- (void)deleteWebHistoryForURL:(id)a3 application:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6;
- (void)deleteWebHistoryForURLs:(id)a3 application:(id)a4 completionHandler:(id)a5;
- (void)deleteWebHistoryForURLs:(id)a3 application:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6;
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

- (void)deleteWebHistoryForURL:(id)a3 application:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__STWebUsageController_deleteWebHistoryForURL_application_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE80A0;
  v15 = v8;
  v16 = v9;
  v17 = self;
  v18 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
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

- (void)deleteWebHistoryForURLs:(id)a3 application:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__STWebUsageController_deleteWebHistoryForURLs_application_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE80A0;
  v15 = v8;
  v16 = v9;
  v17 = self;
  v18 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
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

- (void)deleteWebHistoryForDomain:(id)a3 application:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__STWebUsageController_deleteWebHistoryForDomain_application_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE80A0;
  v15 = v8;
  v16 = v9;
  v17 = self;
  v18 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
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

- (void)deleteWebHistoryDuringInterval:(id)a3 application:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__STWebUsageController_deleteWebHistoryDuringInterval_application_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE80A0;
  v15 = v8;
  v16 = v9;
  v17 = self;
  v18 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
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

- (void)deleteAllWebHistoryForApplication:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__STWebUsageController_deleteAllWebHistoryForApplication_completionHandler___block_invoke;
  v10[3] = &unk_1E7CE80C8;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)deleteWebHistoryForURL:(id)a3 application:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __95__STWebUsageController_deleteWebHistoryForURL_application_profileIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_1E7CE80F0;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = self;
  v23 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
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

- (void)deleteWebHistoryForURLs:(id)a3 application:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__STWebUsageController_deleteWebHistoryForURLs_application_profileIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_1E7CE80F0;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = self;
  v23 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
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

- (void)deleteWebHistoryForDomain:(id)a3 application:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __98__STWebUsageController_deleteWebHistoryForDomain_application_profileIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_1E7CE80F0;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = self;
  v23 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
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

- (void)deleteWebHistoryDuringInterval:(id)a3 application:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __103__STWebUsageController_deleteWebHistoryDuringInterval_application_profileIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_1E7CE80F0;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = self;
  v23 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
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

- (void)deleteAllWebHistoryForApplication:(id)a3 profileIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __94__STWebUsageController_deleteAllWebHistoryForApplication_profileIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE80A0;
  v15 = v8;
  v16 = v9;
  v17 = self;
  v18 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
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

- (void)_asynchronousProxyWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(STWebUsageController *)self xpcConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__STWebUsageController__asynchronousProxyWithHandler___block_invoke;
  v8[3] = &unk_1E7CE6CE8;
  v9 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
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