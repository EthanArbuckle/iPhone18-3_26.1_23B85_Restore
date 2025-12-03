@interface RMSubscriberStore
+ (RMSubscriberStore)storeWithIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler;
+ (void)storeForStoreDeclarationKeyString:(id)string scope:(int64_t)scope completionHandler:(id)handler;
+ (void)storesWithScope:(int64_t)scope completionHandler:(id)handler;
+ (void)subscribedStoreConfigurationsVisibleUIWithScope:(int64_t)scope configurationTypes:(id)types completionHandler:(id)handler;
+ (void)subscribedStoreDeclarationsWithScope:(int64_t)scope configurationTypes:(id)types completionHandler:(id)handler;
+ (void)unassignAssets:(id)assets scope:(int64_t)scope completionHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStore:(id)store;
- (BOOL)isValidStatusItem:(id)item;
- (id)_reasonsFromErrorWithFirstReason:(id)reason error:(id)error;
- (void)_removeStatusForDeclarationIdentifier:(id)identifier declarationServerToken:(id)token completionHandler:(id)handler;
- (void)_writeStatusForDeclaration:(id)declaration validity:(BOOL)validity reasons:(id)reasons completionHandler:(id)handler;
- (void)assetCannotBeDeserialized:(id)deserialized error:(id)error completionHandler:(id)handler;
- (void)assetCannotBeDownloaded:(id)downloaded error:(id)error completionHandler:(id)handler;
- (void)assetCannotBeVerified:(id)verified error:(id)error completionHandler:(id)handler;
- (void)assetEncounteredInternalError:(id)error error:(id)a4 completionHandler:(id)handler;
- (void)certificatePersistentRefForAssetKey:(id)key completionHandler:(id)handler;
- (void)certificateStatusWithCompletionHandler:(id)handler;
- (void)configurationCannotBeDeserialized:(id)deserialized error:(id)error completionHandler:(id)handler;
- (void)configurationFailedAlreadyPresent:(id)present completionHandler:(id)handler;
- (void)configurationFailedToApply:(id)apply error:(id)error completionHandler:(id)handler;
- (void)configurationIsInvalid:(id)invalid error:(id)error completionHandler:(id)handler;
- (void)configurationNotSupported:(id)supported error:(id)error completionHandler:(id)handler;
- (void)publishStatus:(id)status completionHandler:(id)handler;
- (void)resolveAsset:(id)asset completionHandler:(id)handler;
@end

@implementation RMSubscriberStore

+ (RMSubscriberStore)storeWithIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v9 = [RMStoreXPCProxy newConnectionWithScope:scope];
  [v9 resume];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__RMSubscriberStore_storeWithIdentifier_scope_completionHandler___block_invoke;
  v19[3] = &unk_279B05310;
  v10 = handlerCopy;
  v20 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v19];
  v12 = [RMStoreXPCConnection storeXPCConnection:v9];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__RMSubscriberStore_storeWithIdentifier_scope_completionHandler___block_invoke_3;
  v16[3] = &unk_279B05360;
  v17 = v12;
  v18 = v10;
  v13 = v12;
  v14 = v10;
  [v11 subscriberStoreWithIdentifier:identifierCopy completionHandler:v16];

  return result;
}

void __65__RMSubscriberStore_storeWithIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __63__RMObserverStore_storeWithIdentifier_scope_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __65__RMSubscriberStore_storeWithIdentifier_scope_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
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
  v15[2] = __55__RMSubscriberStore_storesWithScope_completionHandler___block_invoke;
  v15[3] = &unk_279B05310;
  v7 = handlerCopy;
  v16 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v15];
  v9 = [RMStoreXPCConnection storeXPCConnection:v6];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__RMSubscriberStore_storesWithScope_completionHandler___block_invoke_5;
  v12[3] = &unk_279B053B0;
  v13 = v9;
  v14 = v7;
  v10 = v9;
  v11 = v7;
  [v8 subscriberStoresWithCompletionHandler:v12];
}

void __55__RMSubscriberStore_storesWithScope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __63__RMObserverStore_storeWithIdentifier_scope_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __55__RMSubscriberStore_storesWithScope_completionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
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

+ (void)storeForStoreDeclarationKeyString:(id)string scope:(int64_t)scope completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  v10 = [RMStoreDeclarationKey newDeclarationKey:stringCopy];
  if ([v10 isValid])
  {
    storeIdentifier = [v10 storeIdentifier];
    [self storeWithIdentifier:storeIdentifier scope:scope completionHandler:handlerCopy];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMSubscriberStore storeForStoreDeclarationKeyString:scope:completionHandler:];
    }

    createInternalError = [MEMORY[0x277D45F40] createInternalError];
    (*(handlerCopy + 2))(handlerCopy, 0, createInternalError);
  }
}

+ (void)subscribedStoreDeclarationsWithScope:(int64_t)scope configurationTypes:(id)types completionHandler:(id)handler
{
  handlerCopy = handler;
  typesCopy = types;
  v9 = [RMStoreXPCProxy newConnectionWithScope:scope];
  [v9 resume];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __95__RMSubscriberStore_subscribedStoreDeclarationsWithScope_configurationTypes_completionHandler___block_invoke;
  v18[3] = &unk_279B05310;
  v10 = handlerCopy;
  v19 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v18];
  v12 = [RMStoreXPCConnection storeXPCConnection:v9];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __95__RMSubscriberStore_subscribedStoreDeclarationsWithScope_configurationTypes_completionHandler___block_invoke_9;
  v15[3] = &unk_279B06008;
  v16 = v12;
  v17 = v10;
  v13 = v12;
  v14 = v10;
  [v11 subscribedStoreDeclarationsWithTypes:typesCopy completionHandler:v15];
}

void __95__RMSubscriberStore_subscribedStoreDeclarationsWithScope_configurationTypes_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __95__RMSubscriberStore_subscribedStoreDeclarationsWithScope_configurationTypes_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __95__RMSubscriberStore_subscribedStoreDeclarationsWithScope_configurationTypes_completionHandler___block_invoke_9(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __95__RMSubscriberStore_subscribedStoreDeclarationsWithScope_configurationTypes_completionHandler___block_invoke_9_cold_1();
    }

    v10 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Fetched stores and declarations", buf, 2u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v17 + 1) + 8 * i) setXpcConnection:{*(a1 + 32), v17}];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v13);
    }

    v10 = *(*(a1 + 40) + 16);
  }

  v10();

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)subscribedStoreConfigurationsVisibleUIWithScope:(int64_t)scope configurationTypes:(id)types completionHandler:(id)handler
{
  handlerCopy = handler;
  typesCopy = types;
  v9 = [RMStoreXPCProxy newConnectionWithScope:scope];
  [v9 resume];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __106__RMSubscriberStore_subscribedStoreConfigurationsVisibleUIWithScope_configurationTypes_completionHandler___block_invoke;
  v18[3] = &unk_279B05310;
  v10 = handlerCopy;
  v19 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v18];
  v12 = [RMStoreXPCConnection storeXPCConnection:v9];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __106__RMSubscriberStore_subscribedStoreConfigurationsVisibleUIWithScope_configurationTypes_completionHandler___block_invoke_11;
  v15[3] = &unk_279B06008;
  v16 = v12;
  v17 = v10;
  v13 = v12;
  v14 = v10;
  [v11 subscribedStoreConfigurationsVisibleUIWithTypes:typesCopy completionHandler:v15];
}

void __106__RMSubscriberStore_subscribedStoreConfigurationsVisibleUIWithScope_configurationTypes_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __106__RMSubscriberStore_subscribedStoreConfigurationsVisibleUIWithScope_configurationTypes_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __106__RMSubscriberStore_subscribedStoreConfigurationsVisibleUIWithScope_configurationTypes_completionHandler___block_invoke_11(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __106__RMSubscriberStore_subscribedStoreConfigurationsVisibleUIWithScope_configurationTypes_completionHandler___block_invoke_11_cold_1();
    }

    v10 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Fetched stores and configurations with visible UI", buf, 2u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v17 + 1) + 8 * i) setXpcConnection:{*(a1 + 32), v17}];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v13);
    }

    v10 = *(*(a1 + 40) + 16);
  }

  v10();

  v16 = *MEMORY[0x277D85DE8];
}

- (void)resolveAsset:(id)asset completionHandler:(id)handler
{
  assetCopy = asset;
  handlerCopy = handler;
  xpcConnection = [(RMBaseStore *)self xpcConnection];
  connection = [xpcConnection connection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__RMSubscriberStore_resolveAsset_completionHandler___block_invoke;
  v19[3] = &unk_279B05310;
  v10 = handlerCopy;
  v20 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v19];

  if ([assetCopy resolveAs] != 1)
  {
LABEL_6:
    identifier = [(RMBaseStore *)self identifier];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__RMSubscriberStore_resolveAsset_completionHandler___block_invoke_13;
    v17[3] = &unk_279B06030;
    v17[4] = self;
    v18 = v10;
    [v11 resolveAsset:assetCopy storeIdentifier:identifier completionHandler:v17];

    createInternalError = v18;
    goto LABEL_7;
  }

  v12 = MEMORY[0x277D45F70];
  downloadURL = [assetCopy downloadURL];
  v14 = [v12 tokenForURL:downloadURL];

  if (v14)
  {
    [assetCopy addExtensionToken:v14];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [RMSubscriberStore resolveAsset:assetCopy completionHandler:?];
    }

    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RMSubscriberStore resolveAsset:completionHandler:];
  }

  createInternalError = [MEMORY[0x277D45F40] createInternalError];
  (*(v10 + 2))(v10, 0, createInternalError);
LABEL_7:
}

void __52__RMSubscriberStore_resolveAsset_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __52__RMSubscriberStore_resolveAsset_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __52__RMSubscriberStore_resolveAsset_completionHandler___block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __52__RMSubscriberStore_resolveAsset_completionHandler___block_invoke_13_cold_1();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Resolved asset", v8, 2u);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
  [*(a1 + 32) xpcConnection];
}

+ (void)unassignAssets:(id)assets scope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  assetsCopy = assets;
  v9 = [RMStoreXPCProxy newConnectionWithScope:scope];
  [v9 resume];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__RMSubscriberStore_unassignAssets_scope_completionHandler___block_invoke;
  v17[3] = &unk_279B05310;
  v10 = handlerCopy;
  v18 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__RMSubscriberStore_unassignAssets_scope_completionHandler___block_invoke_15;
  v14[3] = &unk_279B051D0;
  v15 = v9;
  v16 = v10;
  v12 = v9;
  v13 = v10;
  [v11 unassignAssets:assetsCopy completionHandler:v14];
}

void __60__RMSubscriberStore_unassignAssets_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __60__RMSubscriberStore_unassignAssets_scope_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __60__RMSubscriberStore_unassignAssets_scope_completionHandler___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __60__RMSubscriberStore_unassignAssets_scope_completionHandler___block_invoke_15_cold_1();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unassigned assets", v4, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)assetCannotBeDeserialized:(id)deserialized error:(id)error completionHandler:(id)handler
{
  v8 = MEMORY[0x277D46048];
  handlerCopy = handler;
  errorCopy = error;
  deserializedCopy = deserialized;
  v12 = [v8 reasonWithCode:@"Error.AssetCannotBeDeserialized" description:@"Asset cannot be deserialized" underlyingError:errorCopy];
  v13 = [(RMSubscriberStore *)self _reasonsFromErrorWithFirstReason:v12 error:errorCopy];

  [(RMSubscriberStore *)self _writeStatusForDeclaration:deserializedCopy validity:0 reasons:v13 completionHandler:handlerCopy];
}

- (void)assetCannotBeDownloaded:(id)downloaded error:(id)error completionHandler:(id)handler
{
  v8 = MEMORY[0x277D46048];
  handlerCopy = handler;
  errorCopy = error;
  downloadedCopy = downloaded;
  v12 = [v8 reasonWithCode:@"Error.AssetCannotBeDownloaded" description:@"Asset cannot be downloaded" underlyingError:errorCopy];
  v13 = [(RMSubscriberStore *)self _reasonsFromErrorWithFirstReason:v12 error:errorCopy];

  [(RMSubscriberStore *)self _writeStatusForDeclaration:downloadedCopy validity:0 reasons:v13 completionHandler:handlerCopy];
}

- (void)assetCannotBeVerified:(id)verified error:(id)error completionHandler:(id)handler
{
  v8 = MEMORY[0x277D46048];
  handlerCopy = handler;
  errorCopy = error;
  verifiedCopy = verified;
  v12 = [v8 reasonWithCode:@"Error.AssetCannotBeVerified" description:@"Asset cannot be verified" underlyingError:errorCopy];
  v13 = [(RMSubscriberStore *)self _reasonsFromErrorWithFirstReason:v12 error:errorCopy];

  [(RMSubscriberStore *)self _writeStatusForDeclaration:verifiedCopy validity:0 reasons:v13 completionHandler:handlerCopy];
}

- (void)assetEncounteredInternalError:(id)error error:(id)a4 completionHandler:(id)handler
{
  v8 = MEMORY[0x277D46048];
  handlerCopy = handler;
  v10 = a4;
  errorCopy = error;
  v12 = [v8 reasonWithCode:@"Error.AssetEncounteredInternalError" description:@"Asset encountered an internal error" underlyingError:v10];
  v13 = [(RMSubscriberStore *)self _reasonsFromErrorWithFirstReason:v12 error:v10];

  [(RMSubscriberStore *)self _writeStatusForDeclaration:errorCopy validity:0 reasons:v13 completionHandler:handlerCopy];
}

- (void)configurationCannotBeDeserialized:(id)deserialized error:(id)error completionHandler:(id)handler
{
  v8 = MEMORY[0x277D46048];
  handlerCopy = handler;
  errorCopy = error;
  deserializedCopy = deserialized;
  v12 = [v8 reasonWithCode:@"Error.ConfigurationCannotBeDeserialized" description:@"Configuration cannot be deserialized" underlyingError:errorCopy];
  v13 = [(RMSubscriberStore *)self _reasonsFromErrorWithFirstReason:v12 error:errorCopy];

  [(RMSubscriberStore *)self _writeStatusForDeclaration:deserializedCopy validity:0 reasons:v13 completionHandler:handlerCopy];
}

- (void)configurationFailedToApply:(id)apply error:(id)error completionHandler:(id)handler
{
  v8 = MEMORY[0x277D46048];
  handlerCopy = handler;
  errorCopy = error;
  applyCopy = apply;
  v12 = [v8 reasonWithCode:@"Error.ConfigurationCannotBeApplied" description:@"Configuration cannot be applied" underlyingError:errorCopy];
  v13 = [(RMSubscriberStore *)self _reasonsFromErrorWithFirstReason:v12 error:errorCopy];

  [(RMSubscriberStore *)self _writeStatusForDeclaration:applyCopy validity:0 reasons:v13 completionHandler:handlerCopy];
}

- (void)configurationFailedAlreadyPresent:(id)present completionHandler:(id)handler
{
  v6 = MEMORY[0x277D46048];
  handlerCopy = handler;
  presentCopy = present;
  v9 = [v6 reasonWithCode:@"Error.ConfigurationAlreadyPresent" description:@"Configuration cannot be applied as another is already present" underlyingError:0];
  v10 = [(RMSubscriberStore *)self _reasonsFromErrorWithFirstReason:v9 error:0];

  [(RMSubscriberStore *)self _writeStatusForDeclaration:presentCopy validity:0 reasons:v10 completionHandler:handlerCopy];
}

- (void)configurationIsInvalid:(id)invalid error:(id)error completionHandler:(id)handler
{
  v8 = MEMORY[0x277D46048];
  handlerCopy = handler;
  errorCopy = error;
  invalidCopy = invalid;
  v12 = [v8 reasonWithCode:@"Error.ConfigurationIsInvalid" description:@"Configuration is invalid" underlyingError:errorCopy];
  v13 = [(RMSubscriberStore *)self _reasonsFromErrorWithFirstReason:v12 error:errorCopy];

  [(RMSubscriberStore *)self _writeStatusForDeclaration:invalidCopy validity:0 reasons:v13 completionHandler:handlerCopy];
}

- (void)configurationNotSupported:(id)supported error:(id)error completionHandler:(id)handler
{
  v8 = MEMORY[0x277D46048];
  handlerCopy = handler;
  errorCopy = error;
  supportedCopy = supported;
  v12 = [v8 reasonWithCode:@"Error.ConfigurationNotSupported" description:@"Configuration not supported" underlyingError:errorCopy];
  v13 = [(RMSubscriberStore *)self _reasonsFromErrorWithFirstReason:v12 error:errorCopy];

  [(RMSubscriberStore *)self _writeStatusForDeclaration:supportedCopy validity:0 reasons:v13 completionHandler:handlerCopy];
}

- (void)certificatePersistentRefForAssetKey:(id)key completionHandler:(id)handler
{
  handlerCopy = handler;
  keyCopy = key;
  xpcConnection = [(RMBaseStore *)self xpcConnection];
  connection = [xpcConnection connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__RMSubscriberStore_certificatePersistentRefForAssetKey_completionHandler___block_invoke;
  v16[3] = &unk_279B05310;
  v10 = handlerCopy;
  v17 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v16];

  identifier = [(RMBaseStore *)self identifier];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__RMSubscriberStore_certificatePersistentRefForAssetKey_completionHandler___block_invoke_71;
  v14[3] = &unk_279B053D8;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v11 certificatePersistentRefForAssetKey:keyCopy storeIdentifier:identifier completionHandler:v14];
}

void __75__RMSubscriberStore_certificatePersistentRefForAssetKey_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __75__RMSubscriberStore_certificatePersistentRefForAssetKey_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __75__RMSubscriberStore_certificatePersistentRefForAssetKey_completionHandler___block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __75__RMSubscriberStore_certificatePersistentRefForAssetKey_completionHandler___block_invoke_71_cold_1();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Fetched certificate  persistent ref", v8, 2u);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
  [*(a1 + 32) xpcConnection];
}

- (void)certificateStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(RMBaseStore *)self xpcConnection];
  connection = [xpcConnection connection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__RMSubscriberStore_certificateStatusWithCompletionHandler___block_invoke;
  v13[3] = &unk_279B05310;
  v7 = handlerCopy;
  v14 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v13];

  identifier = [(RMBaseStore *)self identifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__RMSubscriberStore_certificateStatusWithCompletionHandler___block_invoke_73;
  v11[3] = &unk_279B06058;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v8 certificateStatusWithStoreIdentifier:identifier completionHandler:v11];
}

void __60__RMSubscriberStore_certificateStatusWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __60__RMSubscriberStore_certificateStatusWithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __60__RMSubscriberStore_certificateStatusWithCompletionHandler___block_invoke_73(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __60__RMSubscriberStore_certificateStatusWithCompletionHandler___block_invoke_73_cold_1();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Fetched certificate status", v8, 2u);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
  [*(a1 + 32) xpcConnection];
}

void __69__RMSubscriberStore_setConfigurationUI_visible_ui_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __69__RMSubscriberStore_setConfigurationUI_visible_ui_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __69__RMSubscriberStore_setConfigurationUI_visible_ui_completionHandler___block_invoke_75(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __69__RMSubscriberStore_setConfigurationUI_visible_ui_completionHandler___block_invoke_75_cold_1();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __69__RMSubscriberStore_setConfigurationUI_visible_ui_completionHandler___block_invoke_75_cold_2(a1);
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) xpcConnection];
}

- (void)publishStatus:(id)status completionHandler:(id)handler
{
  handlerCopy = handler;
  statusCopy = status;
  xpcConnection = [(RMBaseStore *)self xpcConnection];
  connection = [xpcConnection connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__RMSubscriberStore_publishStatus_completionHandler___block_invoke;
  v16[3] = &unk_279B05310;
  v10 = handlerCopy;
  v17 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v16];

  identifier = [(RMBaseStore *)self identifier];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__RMSubscriberStore_publishStatus_completionHandler___block_invoke_76;
  v14[3] = &unk_279B051D0;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v11 publishStatusWithStoreIdentifier:identifier status:statusCopy completionHandler:v14];
}

void __53__RMSubscriberStore_publishStatus_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __69__RMSubscriberStore_setConfigurationUI_visible_ui_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __53__RMSubscriberStore_publishStatus_completionHandler___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __53__RMSubscriberStore_publishStatus_completionHandler___block_invoke_76_cold_1();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __53__RMSubscriberStore_publishStatus_completionHandler___block_invoke_76_cold_2();
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) xpcConnection];
}

- (BOOL)isValidStatusItem:(id)item
{
  v4 = MEMORY[0x277D46038];
  itemCopy = item;
  LOBYTE(self) = [itemCopy isSupportedForPlatform:objc_msgSend(v4 scope:"currentPlatform") enrollmentType:{-[RMBaseStore scope](self, "scope"), -[RMBaseStore type](self, "type")}];

  return self;
}

- (id)_reasonsFromErrorWithFirstReason:(id)reason error:(id)error
{
  reasonCopy = reason;
  errorCopy = error;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v8 = v7;
  if (reasonCopy)
  {
    [v7 addObject:reasonCopy];
  }

  if (errorCopy)
  {
    userInfo = [errorCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:@"RMModelStatusReasons"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 addObject:v10];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 addObjectsFromArray:v10];
      }
    }
  }

  return v8;
}

- (void)_writeStatusForDeclaration:(id)declaration validity:(BOOL)validity reasons:(id)reasons completionHandler:(id)handler
{
  validityCopy = validity;
  handlerCopy = handler;
  reasonsCopy = reasons;
  declarationCopy = declaration;
  xpcConnection = [(RMBaseStore *)self xpcConnection];
  connection = [xpcConnection connection];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __83__RMSubscriberStore__writeStatusForDeclaration_validity_reasons_completionHandler___block_invoke;
  v26[3] = &unk_279B05310;
  v13 = handlerCopy;
  v27 = v13;
  v14 = [connection remoteObjectProxyWithErrorHandler:v26];

  identifier = [(RMBaseStore *)self identifier];
  declarationType = [declarationCopy declarationType];
  declarationIdentifier = [declarationCopy declarationIdentifier];
  declarationServerToken = [declarationCopy declarationServerToken];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __83__RMSubscriberStore__writeStatusForDeclaration_validity_reasons_completionHandler___block_invoke_81;
  v24[3] = &unk_279B051D0;
  v24[4] = self;
  v25 = v13;
  v21 = v13;
  [v14 writeStatusWithStoreIdentifier:identifier declarationType:declarationType declarationIdentifier:declarationIdentifier declarationServerToken:declarationServerToken sourceIdentifier:bundleIdentifier validity:validityCopy reasons:reasonsCopy completionHandler:v24];
}

void __83__RMSubscriberStore__writeStatusForDeclaration_validity_reasons_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __83__RMSubscriberStore__writeStatusForDeclaration_validity_reasons_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __83__RMSubscriberStore__writeStatusForDeclaration_validity_reasons_completionHandler___block_invoke_81(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __83__RMSubscriberStore__writeStatusForDeclaration_validity_reasons_completionHandler___block_invoke_81_cold_1();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __83__RMSubscriberStore__writeStatusForDeclaration_validity_reasons_completionHandler___block_invoke_81_cold_2();
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) xpcConnection];
}

- (void)_removeStatusForDeclarationIdentifier:(id)identifier declarationServerToken:(id)token completionHandler:(id)handler
{
  handlerCopy = handler;
  tokenCopy = token;
  identifierCopy = identifier;
  xpcConnection = [(RMBaseStore *)self xpcConnection];
  connection = [xpcConnection connection];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __100__RMSubscriberStore__removeStatusForDeclarationIdentifier_declarationServerToken_completionHandler___block_invoke;
  v21[3] = &unk_279B05310;
  v13 = handlerCopy;
  v22 = v13;
  v14 = [connection remoteObjectProxyWithErrorHandler:v21];

  identifier = [(RMBaseStore *)self identifier];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __100__RMSubscriberStore__removeStatusForDeclarationIdentifier_declarationServerToken_completionHandler___block_invoke_82;
  v19[3] = &unk_279B051D0;
  v19[4] = self;
  v20 = v13;
  v18 = v13;
  [v14 removeStatusWithStoreIdentifier:identifier declarationIdentifier:identifierCopy declarationServerToken:tokenCopy sourceIdentifier:bundleIdentifier completionHandler:v19];
}

void __100__RMSubscriberStore__removeStatusForDeclarationIdentifier_declarationServerToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __100__RMSubscriberStore__removeStatusForDeclarationIdentifier_declarationServerToken_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __100__RMSubscriberStore__removeStatusForDeclarationIdentifier_declarationServerToken_completionHandler___block_invoke_82(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __100__RMSubscriberStore__removeStatusForDeclarationIdentifier_declarationServerToken_completionHandler___block_invoke_82_cold_1();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __100__RMSubscriberStore__removeStatusForDeclarationIdentifier_declarationServerToken_completionHandler___block_invoke_82_cold_2();
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) xpcConnection];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMSubscriberStore *)self isEqualToStore:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToStore:(id)store
{
  v4.receiver = self;
  v4.super_class = RMSubscriberStore;
  return [(RMBaseStore *)&v4 isEqualToStore:store];
}

+ (void)storeForStoreDeclarationKeyString:scope:completionHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "declarationKey is invalid: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __95__RMSubscriberStore_subscribedStoreDeclarationsWithScope_configurationTypes_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while fetching stores and declarations: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __95__RMSubscriberStore_subscribedStoreDeclarationsWithScope_configurationTypes_completionHandler___block_invoke_9_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to fetch stores and declarations: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __106__RMSubscriberStore_subscribedStoreConfigurationsVisibleUIWithScope_configurationTypes_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while fetching stores and configurations with missing UI: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __106__RMSubscriberStore_subscribedStoreConfigurationsVisibleUIWithScope_configurationTypes_completionHandler___block_invoke_11_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to fetch stores and configurations with visible UI: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)resolveAsset:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 downloadURL];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)resolveAsset:completionHandler:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v2[0] = 67109120;
  v2[1] = v0;
  _os_log_error_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to issue sandbox extension for file: %d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

void __52__RMSubscriberStore_resolveAsset_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while resolving asset: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__RMSubscriberStore_resolveAsset_completionHandler___block_invoke_13_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to resolve: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__RMSubscriberStore_unassignAssets_scope_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while unassigning assets: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__RMSubscriberStore_unassignAssets_scope_completionHandler___block_invoke_15_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to unassign assets: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__RMSubscriberStore_certificatePersistentRefForAssetKey_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while fetching certificate persistent ref: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__RMSubscriberStore_certificatePersistentRefForAssetKey_completionHandler___block_invoke_71_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to fetch certificate persistent ref: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__RMSubscriberStore_certificateStatusWithCompletionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while fetching certificate status: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__RMSubscriberStore_certificateStatusWithCompletionHandler___block_invoke_73_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to fetch certificate status: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __69__RMSubscriberStore_setConfigurationUI_visible_ui_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while publishing status: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __69__RMSubscriberStore_setConfigurationUI_visible_ui_completionHandler___block_invoke_75_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Could not set configuration UI: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __69__RMSubscriberStore_setConfigurationUI_visible_ui_completionHandler___block_invoke_75_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) declarationIdentifier];
  v9 = [*(a1 + 32) declarationServerToken];
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __53__RMSubscriberStore_publishStatus_completionHandler___block_invoke_76_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Could not publish status: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __83__RMSubscriberStore__writeStatusForDeclaration_validity_reasons_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while writing status: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __83__RMSubscriberStore__writeStatusForDeclaration_validity_reasons_completionHandler___block_invoke_81_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Could not write status: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __100__RMSubscriberStore__removeStatusForDeclarationIdentifier_declarationServerToken_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while removing status: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __100__RMSubscriberStore__removeStatusForDeclarationIdentifier_declarationServerToken_completionHandler___block_invoke_82_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Could not remove status: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

@end