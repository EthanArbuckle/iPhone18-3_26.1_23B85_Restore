@interface TUConversationProviderManager
- (TUConversationProviderManager)init;
- (TUConversationProviderManager)initWithDataSource:(id)source;
- (void)conversationProviderForIdentifier:(id)identifier completionHandler:(id)handler;
- (void)dealloc;
- (void)doesHandle:(id)handle correspondToConversationProvider:(id)provider completionHandler:(id)handler;
- (void)generatePseudonymHandleForConversationProvider:(id)provider expiryDuration:(double)duration URI:(id)i completionHandler:(id)handler;
- (void)registerConversationProviderForConfiguration:(id)configuration completionHandler:(id)handler;
- (void)registerForCallbacksForProvider:(id)provider completionHandler:(id)handler;
- (void)renewPseudonymHandle:(id)handle forConversationProvider:(id)provider expirationDate:(id)date completionHandler:(id)handler;
- (void)revokePseudonymHandle:(id)handle forConversationProvider:(id)provider completionHandler:(id)handler;
@end

@implementation TUConversationProviderManager

- (TUConversationProviderManager)init
{
  v3 = objc_alloc_init(TUConversationProviderManagerXPCClient);
  v4 = [(TUConversationProviderManager *)self initWithDataSource:v3];

  return v4;
}

- (TUConversationProviderManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = TUConversationProviderManager;
  v6 = [(TUConversationProviderManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

- (void)dealloc
{
  dataSource = [(TUConversationProviderManager *)self dataSource];
  [dataSource invalidate];

  v4.receiver = self;
  v4.super_class = TUConversationProviderManager;
  [(TUConversationProviderManager *)&v4 dealloc];
}

- (void)registerForCallbacksForProvider:(id)provider completionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  handlerCopy = handler;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = providerCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "providerIdentifier: %@", &v11, 0xCu);
  }

  dataSource = [(TUConversationProviderManager *)self dataSource];
  [dataSource registerForCallbacksForProvider:providerCopy completionHandler:handlerCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)registerConversationProviderForConfiguration:(id)configuration completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  handlerCopy = handler;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = configurationCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "configuration: %@", buf, 0xCu);
  }

  v9 = [[TUConversationProvider alloc] initWithConfiguration:configurationCopy];
  dataSource = [(TUConversationProviderManager *)self dataSource];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__TUConversationProviderManager_registerConversationProviderForConfiguration_completionHandler___block_invoke;
  v14[3] = &unk_1E7425568;
  v15 = v9;
  v16 = handlerCopy;
  v11 = v9;
  v12 = handlerCopy;
  [dataSource registerConversationProvider:v11 completionHandler:v14];

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

- (void)conversationProviderForIdentifier:(id)identifier completionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "identifier: %@", &v11, 0xCu);
  }

  dataSource = [(TUConversationProviderManager *)self dataSource];
  [dataSource conversationProviderForIdentifier:identifierCopy completionHandler:handlerCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)generatePseudonymHandleForConversationProvider:(id)provider expiryDuration:(double)duration URI:(id)i completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  iCopy = i;
  handlerCopy = handler;
  v13 = TUDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = providerCopy;
    v18 = 2048;
    durationCopy = duration;
    v20 = 2112;
    v21 = iCopy;
    _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "provider: %@ expiryDuration: %f uri: %@", &v16, 0x20u);
  }

  dataSource = [(TUConversationProviderManager *)self dataSource];
  [dataSource generatePseudonymHandleForConversationProvider:providerCopy expiryDuration:iCopy URI:handlerCopy completionHandler:duration];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)renewPseudonymHandle:(id)handle forConversationProvider:(id)provider expirationDate:(id)date completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  providerCopy = provider;
  dateCopy = date;
  handlerCopy = handler;
  v14 = TUDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412802;
    v18 = handleCopy;
    v19 = 2112;
    v20 = providerCopy;
    v21 = 2112;
    v22 = dateCopy;
    _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, "pseudonymHandle: %@ provider: %@ expirationDate: %@", &v17, 0x20u);
  }

  dataSource = [(TUConversationProviderManager *)self dataSource];
  [dataSource renewPseudonymHandle:handleCopy forConversationProvider:providerCopy expirationDate:dateCopy completionHandler:handlerCopy];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)revokePseudonymHandle:(id)handle forConversationProvider:(id)provider completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  providerCopy = provider;
  handlerCopy = handler;
  v11 = TUDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = handleCopy;
    v16 = 2112;
    v17 = providerCopy;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "pseudonymHandle: %@ provider: %@", &v14, 0x16u);
  }

  dataSource = [(TUConversationProviderManager *)self dataSource];
  [dataSource revokePseudonymHandle:handleCopy forConversationProvider:providerCopy completionHandler:handlerCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)doesHandle:(id)handle correspondToConversationProvider:(id)provider completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  providerCopy = provider;
  handlerCopy = handler;
  v11 = TUDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = handleCopy;
    v16 = 2112;
    v17 = providerCopy;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "handle: %@ provider: %@", &v14, 0x16u);
  }

  dataSource = [(TUConversationProviderManager *)self dataSource];
  [dataSource doesHandle:handleCopy correspondToConversationProvider:providerCopy completionHandler:handlerCopy];

  v13 = *MEMORY[0x1E69E9840];
}

@end