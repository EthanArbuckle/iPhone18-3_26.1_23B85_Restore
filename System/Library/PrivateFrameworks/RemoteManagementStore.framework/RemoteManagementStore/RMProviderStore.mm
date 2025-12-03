@interface RMProviderStore
+ (RMProviderStore)storeWithIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler;
+ (void)removeStoreWithIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler;
+ (void)storesWithScope:(int64_t)scope completionHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStore:(id)store;
- (BOOL)setMetadataValue:(id)value forKey:(id)key error:(id *)error;
- (void)applyChangesWithCompletionHandler:(id)handler;
- (void)deleteDeclarationWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)linkStoreToProfileIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier completionHandler:(id)handler;
- (void)saveDeclaration:(id)declaration completionHandler:(id)handler;
@end

@implementation RMProviderStore

void __106__RMProviderStore_createStoreWithType_scope_defaultToInteractive_dataSeparated_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __106__RMProviderStore_createStoreWithType_scope_defaultToInteractive_dataSeparated_options_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __106__RMProviderStore_createStoreWithType_scope_defaultToInteractive_dataSeparated_options_completionHandler___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __106__RMProviderStore_createStoreWithType_scope_defaultToInteractive_dataSeparated_options_completionHandler___block_invoke_18_cold_1();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Created store", v8, 2u);
    }

    [v5 setXpcConnection:*(a1 + 32)];
    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

+ (void)removeStoreWithIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v9 = [RMStoreXPCProxy newConnectionWithScope:scope];
  [v9 resume];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__RMProviderStore_removeStoreWithIdentifier_scope_completionHandler___block_invoke;
  v17[3] = &unk_279B05310;
  v10 = handlerCopy;
  v18 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__RMProviderStore_removeStoreWithIdentifier_scope_completionHandler___block_invoke_20;
  v14[3] = &unk_279B05808;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [v11 removeStoreWithIdentifier:identifierCopy completionHandler:v14];
}

void __69__RMProviderStore_removeStoreWithIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __106__RMProviderStore_createStoreWithType_scope_defaultToInteractive_dataSeparated_options_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __69__RMProviderStore_removeStoreWithIdentifier_scope_completionHandler___block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __69__RMProviderStore_removeStoreWithIdentifier_scope_completionHandler___block_invoke_20_cold_1();
    }

    v4 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Removed store", v5, 2u);
    }

    v4 = *(*(a1 + 40) + 16);
  }

  v4();
}

+ (RMProviderStore)storeWithIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v9 = [RMStoreXPCProxy newConnectionWithScope:scope];
  [v9 resume];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__RMProviderStore_storeWithIdentifier_scope_completionHandler___block_invoke;
  v19[3] = &unk_279B05310;
  v10 = handlerCopy;
  v20 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v19];
  v12 = [RMStoreXPCConnection storeXPCConnection:v9];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__RMProviderStore_storeWithIdentifier_scope_completionHandler___block_invoke_21;
  v16[3] = &unk_279B05BF0;
  v17 = v12;
  v18 = v10;
  v13 = v12;
  v14 = v10;
  [v11 providerStoreWithIdentifier:identifierCopy completionHandler:v16];

  return result;
}

void __63__RMProviderStore_storeWithIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __63__RMObserverStore_storeWithIdentifier_scope_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __63__RMProviderStore_storeWithIdentifier_scope_completionHandler___block_invoke_21(uint64_t a1, void *a2, void *a3)
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
  v15[2] = __53__RMProviderStore_storesWithScope_completionHandler___block_invoke;
  v15[3] = &unk_279B05310;
  v7 = handlerCopy;
  v16 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v15];
  v9 = [RMStoreXPCConnection storeXPCConnection:v6];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__RMProviderStore_storesWithScope_completionHandler___block_invoke_22;
  v12[3] = &unk_279B053B0;
  v13 = v9;
  v14 = v7;
  v10 = v9;
  v11 = v7;
  [v8 providerStoresWithCompletionHandler:v12];
}

void __53__RMProviderStore_storesWithScope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __63__RMObserverStore_storeWithIdentifier_scope_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __53__RMProviderStore_storesWithScope_completionHandler___block_invoke_22(uint64_t a1, void *a2, void *a3)
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

- (void)applyChangesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(RMBaseStore *)self xpcConnection];
  connection = [xpcConnection connection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__RMProviderStore_applyChangesWithCompletionHandler___block_invoke;
  v13[3] = &unk_279B05310;
  v7 = handlerCopy;
  v14 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v13];

  identifier = [(RMBaseStore *)self identifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__RMProviderStore_applyChangesWithCompletionHandler___block_invoke_24;
  v11[3] = &unk_279B051D0;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v8 applyChangesForStoreIdentifier:identifier completionHandler:v11];
}

void __53__RMProviderStore_applyChangesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __53__RMProviderStore_applyChangesWithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __53__RMProviderStore_applyChangesWithCompletionHandler___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __53__RMProviderStore_applyChangesWithCompletionHandler___block_invoke_24_cold_1();
    }

    v4 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Applied changes for store", v5, 2u);
    }

    v4 = *(*(a1 + 40) + 16);
  }

  v4();
  [*(a1 + 32) xpcConnection];
}

- (void)deleteDeclarationWithIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  xpcConnection = [(RMBaseStore *)self xpcConnection];
  connection = [xpcConnection connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__RMProviderStore_deleteDeclarationWithIdentifier_completionHandler___block_invoke;
  v16[3] = &unk_279B05310;
  v10 = handlerCopy;
  v17 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v16];

  identifier = [(RMBaseStore *)self identifier];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__RMProviderStore_deleteDeclarationWithIdentifier_completionHandler___block_invoke_25;
  v14[3] = &unk_279B051D0;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v11 deleteDeclarationWithIdentifier:identifierCopy storeIdentifier:identifier completionHandler:v14];
}

void __69__RMProviderStore_deleteDeclarationWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __69__RMProviderStore_deleteDeclarationWithIdentifier_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __69__RMProviderStore_deleteDeclarationWithIdentifier_completionHandler___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __69__RMProviderStore_deleteDeclarationWithIdentifier_completionHandler___block_invoke_25_cold_1();
    }

    v4 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Deleted declaration", v5, 2u);
    }

    v4 = *(*(a1 + 40) + 16);
  }

  v4();
  [*(a1 + 32) xpcConnection];
}

- (void)saveDeclaration:(id)declaration completionHandler:(id)handler
{
  handlerCopy = handler;
  declarationCopy = declaration;
  xpcConnection = [(RMBaseStore *)self xpcConnection];
  connection = [xpcConnection connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__RMProviderStore_saveDeclaration_completionHandler___block_invoke;
  v16[3] = &unk_279B05310;
  v10 = handlerCopy;
  v17 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v16];

  identifier = [(RMBaseStore *)self identifier];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__RMProviderStore_saveDeclaration_completionHandler___block_invoke_26;
  v14[3] = &unk_279B051D0;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v11 saveDeclaration:declarationCopy storeIdentifier:identifier completionHandler:v14];
}

void __53__RMProviderStore_saveDeclaration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __53__RMProviderStore_saveDeclaration_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __53__RMProviderStore_saveDeclaration_completionHandler___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __53__RMProviderStore_saveDeclaration_completionHandler___block_invoke_26_cold_1();
    }

    v4 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Saved declaration", v5, 2u);
    }

    v4 = *(*(a1 + 40) + 16);
  }

  v4();
  [*(a1 + 32) xpcConnection];
}

- (void)linkStoreToProfileIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier completionHandler:(id)handler
{
  handlerCopy = handler;
  accountIdentifierCopy = accountIdentifier;
  identifierCopy = identifier;
  xpcConnection = [(RMBaseStore *)self xpcConnection];
  connection = [xpcConnection connection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __84__RMProviderStore_linkStoreToProfileIdentifier_accountIdentifier_completionHandler___block_invoke;
  v19[3] = &unk_279B05310;
  v13 = handlerCopy;
  v20 = v13;
  v14 = [connection remoteObjectProxyWithErrorHandler:v19];

  identifier = [(RMBaseStore *)self identifier];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__RMProviderStore_linkStoreToProfileIdentifier_accountIdentifier_completionHandler___block_invoke_27;
  v17[3] = &unk_279B051D0;
  v17[4] = self;
  v18 = v13;
  v16 = v13;
  [v14 linkStoreIdentifier:identifier profileIdentifier:identifierCopy accountIdentifier:accountIdentifierCopy completionHandler:v17];
}

void __84__RMProviderStore_linkStoreToProfileIdentifier_accountIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __84__RMProviderStore_linkStoreToProfileIdentifier_accountIdentifier_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __84__RMProviderStore_linkStoreToProfileIdentifier_accountIdentifier_completionHandler___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __84__RMProviderStore_linkStoreToProfileIdentifier_accountIdentifier_completionHandler___block_invoke_27_cold_1();
    }

    v4 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Linked store", v5, 2u);
    }

    v4 = *(*(a1 + 40) + 16);
  }

  v4();
  [*(a1 + 32) xpcConnection];
}

- (BOOL)setMetadataValue:(id)value forKey:(id)key error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  xpcConnection = [(RMBaseStore *)self xpcConnection];
  connection = [xpcConnection connection];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __49__RMProviderStore_setMetadataValue_forKey_error___block_invoke;
  v22[3] = &unk_279B05448;
  v12 = keyCopy;
  v23 = v12;
  v13 = [connection synchronousRemoteObjectProxyWithErrorHandler:v22];

  v19 = 0;
  v20[0] = &v19;
  v20[1] = 0x3032000000;
  v20[2] = __Block_byref_object_copy__3;
  v20[3] = __Block_byref_object_dispose__3;
  v21 = 0;
  identifier = [(RMBaseStore *)self identifier];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __49__RMProviderStore_setMetadataValue_forKey_error___block_invoke_28;
  v18[3] = &unk_279B05DB0;
  v18[4] = &v19;
  [v13 setMetadataValue:valueCopy forKey:v12 storeIdentifier:identifier completionHandler:v18];

  v15 = *(v20[0] + 40);
  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RMProviderStore setMetadataValue:v12 forKey:v20 error:?];
      if (!error)
      {
        goto LABEL_8;
      }
    }

    else if (!error)
    {
      goto LABEL_8;
    }

    v16 = *(v20[0] + 40);
    if (v16)
    {
      *error = v16;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [RMProviderStore setMetadataValue:forKey:error:];
  }

LABEL_8:
  _Block_object_dispose(&v19, 8);

  return v15 == 0;
}

void __49__RMProviderStore_setMetadataValue_forKey_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __49__RMProviderStore_setMetadataValue_forKey_error___block_invoke_cold_1(a1, a2);
  }
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMProviderStore *)self isEqualToStore:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToStore:(id)store
{
  v4.receiver = self;
  v4.super_class = RMProviderStore;
  return [(RMBaseStore *)&v4 isEqualToStore:store];
}

void __106__RMProviderStore_createStoreWithType_scope_defaultToInteractive_dataSeparated_options_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while creating store: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __106__RMProviderStore_createStoreWithType_scope_defaultToInteractive_dataSeparated_options_completionHandler___block_invoke_18_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to create store: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __69__RMProviderStore_removeStoreWithIdentifier_scope_completionHandler___block_invoke_20_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to remove store: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__RMProviderStore_applyChangesWithCompletionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while applying changes for store: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__RMProviderStore_applyChangesWithCompletionHandler___block_invoke_24_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to apply changes for store: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __69__RMProviderStore_deleteDeclarationWithIdentifier_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while deleting declaration: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __69__RMProviderStore_deleteDeclarationWithIdentifier_completionHandler___block_invoke_25_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to delete declaration: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__RMProviderStore_saveDeclaration_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while saving declaration: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__RMProviderStore_saveDeclaration_completionHandler___block_invoke_26_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to save declaration: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __84__RMProviderStore_linkStoreToProfileIdentifier_accountIdentifier_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while linking store: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __84__RMProviderStore_linkStoreToProfileIdentifier_accountIdentifier_completionHandler___block_invoke_27_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to link store: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setMetadataValue:(uint64_t)a1 forKey:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_5();
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to set metadata key %{public}@: %{public}@", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setMetadataValue:forKey:error:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Set metadata key %{public}@: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __49__RMProviderStore_setMetadataValue_forKey_error___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138543618;
  v5 = v2;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed XPC connection while setting metadata key %{public}@: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end