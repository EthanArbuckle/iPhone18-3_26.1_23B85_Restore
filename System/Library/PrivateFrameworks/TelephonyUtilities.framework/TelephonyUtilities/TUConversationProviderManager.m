@interface TUConversationProviderManager
- (TUConversationProviderManager)init;
- (TUConversationProviderManager)initWithDataSource:(id)a3;
- (void)conversationProviderForIdentifier:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)doesHandle:(id)a3 correspondToConversationProvider:(id)a4 completionHandler:(id)a5;
- (void)generatePseudonymHandleForConversationProvider:(id)a3 expiryDuration:(double)a4 URI:(id)a5 completionHandler:(id)a6;
- (void)registerConversationProviderForConfiguration:(id)a3 completionHandler:(id)a4;
- (void)registerForCallbacksForProvider:(id)a3 completionHandler:(id)a4;
- (void)renewPseudonymHandle:(id)a3 forConversationProvider:(id)a4 expirationDate:(id)a5 completionHandler:(id)a6;
- (void)revokePseudonymHandle:(id)a3 forConversationProvider:(id)a4 completionHandler:(id)a5;
@end

@implementation TUConversationProviderManager

- (TUConversationProviderManager)init
{
  v3 = objc_alloc_init(TUConversationProviderManagerXPCClient);
  v4 = [(TUConversationProviderManager *)self initWithDataSource:v3];

  return v4;
}

- (TUConversationProviderManager)initWithDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUConversationProviderManager;
  v6 = [(TUConversationProviderManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(TUConversationProviderManager *)self dataSource];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = TUConversationProviderManager;
  [(TUConversationProviderManager *)&v4 dealloc];
}

- (void)registerForCallbacksForProvider:(id)a3 completionHandler:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "providerIdentifier: %@", &v11, 0xCu);
  }

  v9 = [(TUConversationProviderManager *)self dataSource];
  [v9 registerForCallbacksForProvider:v6 completionHandler:v7];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)registerConversationProviderForConfiguration:(id)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "configuration: %@", buf, 0xCu);
  }

  v9 = [[TUConversationProvider alloc] initWithConfiguration:v6];
  v10 = [(TUConversationProviderManager *)self dataSource];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__TUConversationProviderManager_registerConversationProviderForConfiguration_completionHandler___block_invoke;
  v14[3] = &unk_1E7425568;
  v15 = v9;
  v16 = v7;
  v11 = v9;
  v12 = v7;
  [v10 registerConversationProvider:v11 completionHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __96__TUConversationProviderManager_registerConversationProviderForConfiguration_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 32));
  }
}

- (void)conversationProviderForIdentifier:(id)a3 completionHandler:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "identifier: %@", &v11, 0xCu);
  }

  v9 = [(TUConversationProviderManager *)self dataSource];
  [v9 conversationProviderForIdentifier:v6 completionHandler:v7];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)generatePseudonymHandleForConversationProvider:(id)a3 expiryDuration:(double)a4 URI:(id)a5 completionHandler:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = TUDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = v10;
    v18 = 2048;
    v19 = a4;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "provider: %@ expiryDuration: %f uri: %@", &v16, 0x20u);
  }

  v14 = [(TUConversationProviderManager *)self dataSource];
  [v14 generatePseudonymHandleForConversationProvider:v10 expiryDuration:v11 URI:v12 completionHandler:a4];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)renewPseudonymHandle:(id)a3 forConversationProvider:(id)a4 expirationDate:(id)a5 completionHandler:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = TUDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412802;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, "pseudonymHandle: %@ provider: %@ expirationDate: %@", &v17, 0x20u);
  }

  v15 = [(TUConversationProviderManager *)self dataSource];
  [v15 renewPseudonymHandle:v10 forConversationProvider:v11 expirationDate:v12 completionHandler:v13];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)revokePseudonymHandle:(id)a3 forConversationProvider:(id)a4 completionHandler:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = TUDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "pseudonymHandle: %@ provider: %@", &v14, 0x16u);
  }

  v12 = [(TUConversationProviderManager *)self dataSource];
  [v12 revokePseudonymHandle:v8 forConversationProvider:v9 completionHandler:v10];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)doesHandle:(id)a3 correspondToConversationProvider:(id)a4 completionHandler:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = TUDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "handle: %@ provider: %@", &v14, 0x16u);
  }

  v12 = [(TUConversationProviderManager *)self dataSource];
  [v12 doesHandle:v8 correspondToConversationProvider:v9 completionHandler:v10];

  v13 = *MEMORY[0x1E69E9840];
}

@end