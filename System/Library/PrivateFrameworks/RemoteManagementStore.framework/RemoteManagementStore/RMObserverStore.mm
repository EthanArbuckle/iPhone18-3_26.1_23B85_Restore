@interface RMObserverStore
+ (void)storeWithIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler;
+ (void)storesWithScope:(int64_t)scope completionHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStore:(id)store;
- (void)displayPropertiesForConfigurationsWithCompletionHandler:(id)handler;
- (void)displayableProfileConfigurationsWithCompletionHandler:(id)handler;
@end

@implementation RMObserverStore

+ (void)storeWithIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v9 = [RMStoreXPCProxy newConnectionWithScope:scope];
  [v9 resume];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__RMObserverStore_storeWithIdentifier_scope_completionHandler___block_invoke;
  v18[3] = &unk_279B05310;
  v10 = handlerCopy;
  v19 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v18];
  v12 = [RMStoreXPCConnection storeXPCConnection:v9];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__RMObserverStore_storeWithIdentifier_scope_completionHandler___block_invoke_3;
  v15[3] = &unk_279B05BC0;
  v16 = v12;
  v17 = v10;
  v13 = v12;
  v14 = v10;
  [v11 observerStoreWithIdentifier:identifierCopy completionHandler:v15];
}

void __63__RMObserverStore_storeWithIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __63__RMObserverStore_storeWithIdentifier_scope_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __63__RMObserverStore_storeWithIdentifier_scope_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __63__RMObserverStore_storeWithIdentifier_scope_completionHandler___block_invoke_3_cold_1();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Fetched store", v8, 2u);
    }

    [v5 setXpcConnection:*(a1 + 32)];
    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

+ (void)storesWithScope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [RMStoreXPCProxy newConnectionWithScope:scope];
  [v6 resume];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__RMObserverStore_storesWithScope_completionHandler___block_invoke;
  v15[3] = &unk_279B05310;
  v7 = handlerCopy;
  v16 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v15];
  v9 = [RMStoreXPCConnection storeXPCConnection:v6];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__RMObserverStore_storesWithScope_completionHandler___block_invoke_5;
  v12[3] = &unk_279B053B0;
  v13 = v9;
  v14 = v7;
  v10 = v9;
  v11 = v7;
  [v8 observerStoresWithCompletionHandler:v12];
}

void __53__RMObserverStore_storesWithScope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __53__RMObserverStore_storesWithScope_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __53__RMObserverStore_storesWithScope_completionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __53__RMObserverStore_storesWithScope_completionHandler___block_invoke_5_cold_1();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Fetched stores", buf, 2u);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * i) setXpcConnection:{*(a1 + 32), v14}];
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v10);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();

  v13 = *MEMORY[0x277D85DE8];
}

- (void)displayPropertiesForConfigurationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(RMBaseStore *)self xpcConnection];
  connection = [xpcConnection connection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__RMObserverStore_displayPropertiesForConfigurationsWithCompletionHandler___block_invoke;
  v13[3] = &unk_279B05310;
  v7 = handlerCopy;
  v14 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v13];

  identifier = [(RMBaseStore *)self identifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__RMObserverStore_displayPropertiesForConfigurationsWithCompletionHandler___block_invoke_7;
  v11[3] = &unk_279B053B0;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v8 configurationUIsForStoreIdentifier:identifier completionHandler:v11];
}

void __75__RMObserverStore_displayPropertiesForConfigurationsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __75__RMObserverStore_displayPropertiesForConfigurationsWithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __75__RMObserverStore_displayPropertiesForConfigurationsWithCompletionHandler___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __75__RMObserverStore_displayPropertiesForConfigurationsWithCompletionHandler___block_invoke_7_cold_1();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = [v5 count];
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Fetched configuration UIs: %lu", &v9, 0xCu);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
  [*(a1 + 32) xpcConnection];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)displayableProfileConfigurationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(RMBaseStore *)self xpcConnection];
  connection = [xpcConnection connection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__RMObserverStore_displayableProfileConfigurationsWithCompletionHandler___block_invoke;
  v13[3] = &unk_279B05310;
  v7 = handlerCopy;
  v14 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v13];

  identifier = [(RMBaseStore *)self identifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__RMObserverStore_displayableProfileConfigurationsWithCompletionHandler___block_invoke_8;
  v11[3] = &unk_279B053B0;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v8 displayableProfileConfigurationsForStoreIdentifier:identifier completionHandler:v11];
}

void __73__RMObserverStore_displayableProfileConfigurationsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __73__RMObserverStore_displayableProfileConfigurationsWithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __73__RMObserverStore_displayableProfileConfigurationsWithCompletionHandler___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __73__RMObserverStore_displayableProfileConfigurationsWithCompletionHandler___block_invoke_8_cold_1();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = [v5 count];
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Fetched profile configurations: %lu", &v9, 0xCu);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
  [*(a1 + 32) xpcConnection];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMObserverStore *)self isEqualToStore:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToStore:(id)store
{
  v4.receiver = self;
  v4.super_class = RMObserverStore;
  return [(RMBaseStore *)&v4 isEqualToStore:store];
}

void __63__RMObserverStore_storeWithIdentifier_scope_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while fetching store: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__RMObserverStore_storeWithIdentifier_scope_completionHandler___block_invoke_3_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to fetch store: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__RMObserverStore_storesWithScope_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while fetching stores: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__RMObserverStore_storesWithScope_completionHandler___block_invoke_5_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to fetch stores: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__RMObserverStore_displayPropertiesForConfigurationsWithCompletionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while fetching configuration UIs: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__RMObserverStore_displayPropertiesForConfigurationsWithCompletionHandler___block_invoke_7_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to fetch configuration UIs: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__RMObserverStore_displayableProfileConfigurationsWithCompletionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while fetching profile configurations: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__RMObserverStore_displayableProfileConfigurationsWithCompletionHandler___block_invoke_8_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to fetch profile configurations: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

@end