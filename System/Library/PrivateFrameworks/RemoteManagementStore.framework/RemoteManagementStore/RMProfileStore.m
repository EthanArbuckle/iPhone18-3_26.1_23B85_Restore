@interface RMProfileStore
+ (id)profileStoreForOwner:(id)a3;
+ (id)profileStoreForOwner:(id)a3 scope:(int64_t)a4;
- (BOOL)_removeDeclarationKeysForPayload:(id)a3 error:(id *)a4;
- (BOOL)_saveDeclarationKeysForPayload:(id)a3 keys:(id)a4 error:(id *)a5;
- (RMProfileStore)initWithOwner:(id)a3 scope:(int64_t)a4;
- (id)_createStoreReturningError:(id *)a3;
- (id)_metadataKeyForPayload:(id)a3;
- (id)_newDeclarationsMap:(id)a3 error:(id *)a4;
- (id)_oldDeclarationKeysForPayload:(id)a3 store:(id)a4 error:(id *)a5;
- (void)_applyDeclarationsForPayload:(id)a3 declarations:(id)a4 completionHandler:(id)a5;
- (void)_findObserverStoreWithCompletionHandler:(id)a3;
- (void)_findProviderStoreWithCompletionHandler:(id)a3;
- (void)_removeDeclarationsForPayload:(id)a3 completionHandler:(id)a4;
- (void)declarationIdentifiersForProfilePayloadIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)installProfile:(id)a3 declarations:(id)a4 completionHandler:(id)a5;
- (void)observerStoreWithCompletionHandler:(id)a3;
- (void)providerStoreWithCompletionHandler:(id)a3;
- (void)removeProfile:(id)a3 completionHandler:(id)a4;
@end

@implementation RMProfileStore

+ (id)profileStoreForOwner:(id)a3
{
  v3 = MEMORY[0x277D45F68];
  v4 = a3;
  v5 = [v3 currentManagedDevice];
  v6 = [v5 isSharediPad];

  v7 = [[RMProfileStore alloc] initWithOwner:v4 scope:v6 ^ 1u];

  return v7;
}

+ (id)profileStoreForOwner:(id)a3 scope:(int64_t)a4
{
  v5 = a3;
  v6 = [[RMProfileStore alloc] initWithOwner:v5 scope:a4];

  return v6;
}

- (RMProfileStore)initWithOwner:(id)a3 scope:(int64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = RMProfileStore;
  v7 = [(RMProfileStore *)&v13 init];
  if (v7)
  {
    v8 = [v6 copy];
    ownerIdentifier = v7->_ownerIdentifier;
    v7->_ownerIdentifier = v8;

    v7->_scope = a4;
    v10 = dispatch_queue_create("RMProfileStore", 0);
    workQueue = v7->_workQueue;
    v7->_workQueue = v10;
  }

  return v7;
}

- (void)providerStoreWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(RMProfileStore *)self providerStore];

  if (v5)
  {
    v6 = [(RMProfileStore *)self providerStore];
    v4[2](v4, v6, 0);
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__RMProfileStore_providerStoreWithCompletionHandler___block_invoke;
    v7[3] = &unk_279B05BF0;
    v7[4] = self;
    v8 = v4;
    [(RMProfileStore *)self _findProviderStoreWithCompletionHandler:v7];
  }
}

void __53__RMProfileStore_providerStoreWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    v5();
    return;
  }

  [*(a1 + 32) setProviderStore:a2];
  v6 = [*(a1 + 32) providerStore];

  if (v6)
  {
LABEL_8:
    v11 = *(a1 + 40);
    v12 = [*(a1 + 32) providerStore];
    (*(v11 + 16))(v11, v12, 0);

    return;
  }

  v7 = *(a1 + 32);
  v14 = 0;
  v8 = [v7 _createStoreReturningError:&v14];
  v9 = v14;
  [*(a1 + 32) setProviderStore:v8];

  v10 = [*(a1 + 32) providerStore];

  if (v10)
  {

    goto LABEL_8;
  }

  v13 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    __53__RMProfileStore_providerStoreWithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)installProfile:(id)a3 declarations:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [RMProfileStore installProfile:v8 declarations:v9 completionHandler:?];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__RMProfileStore_installProfile_declarations_completionHandler___block_invoke;
  v15[3] = &unk_279B05C40;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  [(RMProfileStore *)self providerStoreWithCompletionHandler:v15];
}

void __64__RMProfileStore_installProfile_declarations_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__RMProfileStore_installProfile_declarations_completionHandler___block_invoke_2;
  v11[3] = &unk_279B05C18;
  v8 = a1[4];
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v17 = a1[7];
  v15 = a1[5];
  v16 = a1[6];
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

uint64_t __64__RMProfileStore_installProfile_declarations_completionHandler___block_invoke_2(void *a1)
{
  if (a1[4])
  {
    v2 = a1[5];
    v3 = a1[7];
    v4 = a1[8];
    v5 = a1[9];

    return [v2 _applyDeclarationsForPayload:v3 declarations:v4 completionHandler:v5];
  }

  else
  {
    v7 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __64__RMProfileStore_installProfile_declarations_completionHandler___block_invoke_2_cold_1(a1);
    }

    v8 = a1[6];
    return (*(a1[9] + 16))();
  }
}

- (void)removeProfile:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [RMProfileStore removeProfile:completionHandler:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__RMProfileStore_removeProfile_completionHandler___block_invoke;
  v11[3] = &unk_279B05C90;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [(RMProfileStore *)self providerStoreWithCompletionHandler:v11];
}

void __50__RMProfileStore_removeProfile_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RMProfileStore_removeProfile_completionHandler___block_invoke_2;
  block[3] = &unk_279B05C68;
  v8 = a1[4];
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v16 = a1[6];
  v15 = a1[5];
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __50__RMProfileStore_removeProfile_completionHandler___block_invoke_2(void *a1)
{
  if (a1[4])
  {
    v2 = a1[5];
    v3 = a1[7];
    v4 = a1[8];

    return [v2 _removeDeclarationsForPayload:v3 completionHandler:v4];
  }

  else
  {
    v6 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __50__RMProfileStore_removeProfile_completionHandler___block_invoke_2_cold_1(a1);
    }

    v7 = a1[6];
    return (*(a1[8] + 16))();
  }
}

- (void)observerStoreWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(RMProfileStore *)self observerStore];

  if (v5)
  {
    v6 = [(RMProfileStore *)self observerStore];
    v4[2](v4, v6, 0);
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__RMProfileStore_observerStoreWithCompletionHandler___block_invoke;
    v7[3] = &unk_279B05BC0;
    v7[4] = self;
    v8 = v4;
    [(RMProfileStore *)self _findObserverStoreWithCompletionHandler:v7];
  }
}

void __53__RMProfileStore_observerStoreWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    [*(a1 + 32) setObserverStore:a2];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) observerStore];
    (*(v6 + 16))(v6, v7, 0);
  }
}

- (void)declarationIdentifiersForProfilePayloadIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke;
  v10[3] = &unk_279B05CB8;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(RMProfileStore *)self observerStoreWithCompletionHandler:v10];
}

void __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke_2;
  block[3] = &unk_279B05C68;
  v8 = a1[4];
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v16 = a1[6];
  v15 = a1[5];
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v3 = *(a1 + 56);
    v4 = [v3 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v30;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v30 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v29 + 1) + 8 * i);
          v9 = *(a1 + 40);
          v10 = [v9 observerStore];
          v28 = 0;
          v11 = [v9 _oldDeclarationKeysForPayload:v8 store:v10 error:&v28];
          v12 = v28;

          if (v12)
          {
            v20 = [MEMORY[0x277D45F58] profileStore];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke_2_cold_1();
            }

            (*(*(a1 + 64) + 16))();
            goto LABEL_21;
          }

          v13 = [v11 allObjects];
          [v2 addObjectsFromArray:v13];
        }

        v5 = [v3 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v12 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v2, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v2;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v24 + 1) + 8 * j) declarationIdentifier];
          [v12 addObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v16);
    }

    (*(*(a1 + 64) + 16))();
LABEL_21:
  }

  else
  {
    v21 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke_2_cold_2(a1);
    }

    v22 = *(a1 + 48);
    (*(*(a1 + 64) + 16))();
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_findProviderStoreWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [RMProfileStore _findProviderStoreWithCompletionHandler:];
  }

  v6 = [(RMProfileStore *)self scope];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__RMProfileStore__findProviderStoreWithCompletionHandler___block_invoke;
  v8[3] = &unk_279B05CE0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [RMProviderStore storesWithScope:v6 completionHandler:v8];
}

void __58__RMProfileStore__findProviderStoreWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v20 = v6;
      v21 = v5;
      v10 = *v23;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          if ([v12 type] == 2)
          {
            v13 = [v12 metadataValueForKey:@"RMProfileStoreIdentifier" error:0];
            v14 = [*(a1 + 32) ownerIdentifier];
            v15 = [v13 isEqualToString:v14];

            if (v15)
            {
              v16 = v12;

              goto LABEL_17;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v16 = 0;
LABEL_17:
      v6 = v20;
      v5 = v21;
    }

    else
    {
      v16 = 0;
    }

    v18 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __58__RMProfileStore__findProviderStoreWithCompletionHandler___block_invoke_cold_1(v16);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v17 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __58__RMProfileStore__findProviderStoreWithCompletionHandler___block_invoke_cold_2(a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_findObserverStoreWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [RMProfileStore _findObserverStoreWithCompletionHandler:];
  }

  v6 = [(RMProfileStore *)self scope];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__RMProfileStore__findObserverStoreWithCompletionHandler___block_invoke;
  v8[3] = &unk_279B05CE0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [RMObserverStore storesWithScope:v6 completionHandler:v8];
}

void __58__RMProfileStore__findObserverStoreWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v17 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __58__RMProfileStore__findObserverStoreWithCompletionHandler___block_invoke_cold_3(a1);
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_24;
  }

  v25 = v6;
  v26 = v5;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v9)
  {
LABEL_12:

LABEL_20:
    v20 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __58__RMProfileStore__findObserverStoreWithCompletionHandler___block_invoke_cold_2(a1);
    }

    v21 = MEMORY[0x277D45F40];
    v22 = *(a1 + 40);
    v18 = [*(a1 + 32) ownerIdentifier];
    v23 = [v21 createManagementSourceNotFoundErrorWithIdentifier:v18];
    (*(v22 + 16))(v22, 0, v23);

    goto LABEL_23;
  }

  v10 = v9;
  v11 = *v28;
LABEL_4:
  v12 = 0;
  while (1)
  {
    if (*v28 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v27 + 1) + 8 * v12);
    if ([v13 type] != 2)
    {
      goto LABEL_10;
    }

    v14 = [v13 metadataValueForKey:@"RMProfileStoreIdentifier" error:0];
    v15 = [*(a1 + 32) ownerIdentifier];
    v16 = [v14 isEqualToString:v15];

    if (v16)
    {
      break;
    }

LABEL_10:
    if (v10 == ++v12)
    {
      v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v10)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v18 = v13;

  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    __58__RMProfileStore__findObserverStoreWithCompletionHandler___block_invoke_cold_1(v18);
  }

  (*(*(a1 + 40) + 16))();
LABEL_23:
  v7 = v25;
  v5 = v26;

LABEL_24:
  v24 = *MEMORY[0x277D85DE8];
}

- (id)_createStoreReturningError:(id *)a3
{
  v5 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [RMProfileStore _createStoreReturningError:];
  }

  v6 = objc_opt_new();
  v38 = 0;
  v39[0] = &v38;
  v39[1] = 0x3032000000;
  v39[2] = __Block_byref_object_copy__2;
  v39[3] = __Block_byref_object_dispose__2;
  v40 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v37 = 0;
  v7 = [(RMProfileStore *)self scope];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __45__RMProfileStore__createStoreReturningError___block_invoke;
  v28[3] = &unk_279B05D08;
  v30 = &v38;
  v31 = &v32;
  v8 = v6;
  v29 = v8;
  [RMProviderStore createStoreWithType:2 scope:v7 defaultToInteractive:0 dataSeparated:0 options:0 completionHandler:v28];
  [v8 waitForCompletion];
  if (*(v39[0] + 40))
  {
    v9 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [RMProfileStore _createStoreReturningError:v39];
    }

    if (a3 && (v10 = *(v39[0] + 40)) != 0)
    {
      v11 = 0;
      *a3 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = v33[5];
    v13 = [(RMProfileStore *)self ownerIdentifier];
    v27 = 0;
    v14 = [v12 setMetadataValue:v13 forKey:@"RMProfileStoreIdentifier" error:&v27];
    v15 = v27;

    if (v14)
    {
      v11 = v33[5];
    }

    else
    {
      v16 = [MEMORY[0x277D45F58] profileStore];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [RMProfileStore _createStoreReturningError:];
      }

      v17 = objc_opt_new();
      v18 = [v33[5] identifier];
      v19 = [(RMProfileStore *)self scope];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __45__RMProfileStore__createStoreReturningError___block_invoke_26;
      v24[3] = &unk_279B05D30;
      v26 = &v38;
      v20 = v17;
      v25 = v20;
      [RMProviderStore removeStoreWithIdentifier:v18 scope:v19 completionHandler:v24];

      [v20 waitForCompletion];
      if (*(v39[0] + 40))
      {
        v21 = [MEMORY[0x277D45F58] profileStore];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [RMProfileStore _createStoreReturningError:v39];
        }
      }

      if (a3 && v15)
      {
        v22 = v15;
        *a3 = v15;
      }

      v11 = 0;
    }
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v11;
}

void __45__RMProfileStore__createStoreReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  [*(a1 + 32) complete];
}

void __45__RMProfileStore__createStoreReturningError___block_invoke_26(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) complete];
}

- (void)_applyDeclarationsForPayload:(id)a3 declarations:(id)a4 completionHandler:(id)a5
{
  v105 = *MEMORY[0x277D85DE8];
  v57 = a3;
  v59 = a4;
  v58 = a5;
  v7 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [RMProfileStore _applyDeclarationsForPayload:v59 declarations:? completionHandler:?];
  }

  v64 = objc_opt_new();
  v96 = 0;
  v63 = [(RMProfileStore *)self _newDeclarationsMap:v59 error:&v96];
  v8 = v96;
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [RMProfileStore _applyDeclarationsForPayload:declarations:completionHandler:];
    }

    v58[2](v58, v9);
  }

  else
  {
    v11 = MEMORY[0x277CBEB98];
    v12 = [v63 allKeys];
    v56 = [v11 setWithArray:v12];

    v13 = [(RMProfileStore *)self providerStore];
    v95 = 0;
    v55 = [(RMProfileStore *)self _oldDeclarationKeysForPayload:v57 store:v13 error:&v95];
    v9 = v95;

    if (v9)
    {
      v14 = [MEMORY[0x277D45F58] profileStore];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke_2_cold_1();
      }

      v58[2](v58, v9);
    }

    else
    {
      v65 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v56, "count")}];
      v94 = 0;
      v92 = 0;
      v93 = 0;
      [RMStoreDeclarationKey synchronizeOldKeys:v55 newKeys:v56 returningUnchangedKeys:&v94 returningApplyKeys:&v93 returningRemoveKeys:&v92];
      v54 = v94;
      v15 = v93;
      v53 = v92;
      v16 = [MEMORY[0x277D45F58] profileStore];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [RMProfileStore _applyDeclarationsForPayload:v15 declarations:? completionHandler:?];
      }

      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      obj = v15;
      v17 = [obj countByEnumeratingWithState:&v88 objects:v104 count:16];
      if (v17)
      {
        v61 = *v89;
        do
        {
          v18 = 0;
          do
          {
            if (*v89 != v61)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v88 + 1) + 8 * v18);
            v20 = objc_autoreleasePoolPush();
            v21 = [v19 applyKey];
            v22 = MEMORY[0x277D46018];
            v23 = [v63 objectForKeyedSubscript:v21];
            v24 = [v22 loadData:v23 serializationType:1 error:0];

            v25 = objc_opt_new();
            v82 = 0;
            v83 = &v82;
            v84 = 0x3032000000;
            v85 = __Block_byref_object_copy__2;
            v86 = __Block_byref_object_dispose__2;
            v87 = 0;
            v26 = [MEMORY[0x277D45F58] profileStore];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              v27 = [v24 declarationIdentifier];
              [(RMProfileStore *)v27 _applyDeclarationsForPayload:v102 declarations:&v103 completionHandler:v26];
            }

            v28 = [(RMProfileStore *)self providerStore];
            v78[0] = MEMORY[0x277D85DD0];
            v78[1] = 3221225472;
            v78[2] = __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke;
            v78[3] = &unk_279B05D58;
            v29 = v24;
            v79 = v29;
            v81 = &v82;
            v30 = v25;
            v80 = v30;
            [v28 saveDeclaration:v29 completionHandler:v78];

            [v30 waitForCompletion];
            if (v83[5])
            {
              v31 = [MEMORY[0x277D45F58] profileStore];
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v35 = [v21 declarationIdentifier];
                *buf = 138543618;
                v99 = v35;
                v100 = 2114;
                v101 = 0;
                _os_log_error_impl(&dword_261E36000, v31, OS_LOG_TYPE_ERROR, "Failed to save declaration %{public}@: %{public}@", buf, 0x16u);
              }

              v32 = [v21 declarationIdentifier];
              [v64 addObject:v32];

              v33 = [v19 replaceKey];
              LOBYTE(v32) = v33 == 0;

              if ((v32 & 1) == 0)
              {
                v34 = [v19 replaceKey];
                [v65 addObject:v34];
              }
            }

            else
            {
              [v65 addObject:v21];
            }

            _Block_object_dispose(&v82, 8);
            objc_autoreleasePoolPop(v20);
            ++v18;
          }

          while (v17 != v18);
          v17 = [obj countByEnumeratingWithState:&v88 objects:v104 count:16];
        }

        while (v17);
      }

      [v65 unionSet:v54];
      v36 = [MEMORY[0x277D45F58] profileStore];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [RMProfileStore _applyDeclarationsForPayload:v53 declarations:? completionHandler:?];
      }

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v62 = v53;
      v37 = [v62 countByEnumeratingWithState:&v74 objects:v97 count:16];
      if (v37)
      {
        v38 = *v75;
        do
        {
          v39 = 0;
          do
          {
            if (*v75 != v38)
            {
              objc_enumerationMutation(v62);
            }

            v40 = *(*(&v74 + 1) + 8 * v39);
            v41 = objc_autoreleasePoolPush();
            v42 = objc_opt_new();
            v82 = 0;
            v83 = &v82;
            v84 = 0x3032000000;
            v85 = __Block_byref_object_copy__2;
            v86 = __Block_byref_object_dispose__2;
            v87 = 0;
            v43 = [(RMProfileStore *)self providerStore];
            v44 = [v40 declarationIdentifier];
            v71[0] = MEMORY[0x277D85DD0];
            v71[1] = 3221225472;
            v71[2] = __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_32;
            v71[3] = &unk_279B05D58;
            v71[4] = v40;
            v73 = &v82;
            v45 = v42;
            v72 = v45;
            [v43 deleteDeclarationWithIdentifier:v44 completionHandler:v71];

            [v45 waitForCompletion];
            if (v83[5])
            {
              v46 = [MEMORY[0x277D45F58] profileStore];
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                v48 = [v40 declarationIdentifier];
                *buf = 138543618;
                v99 = v48;
                v100 = 2114;
                v101 = 0;
                _os_log_error_impl(&dword_261E36000, v46, OS_LOG_TYPE_ERROR, "Failed to delete declaration %{public}@: %{public}@", buf, 0x16u);
              }

              v47 = [v40 declarationIdentifier];
              [v64 addObject:v47];

              [v65 addObject:v40];
            }

            _Block_object_dispose(&v82, 8);
            objc_autoreleasePoolPop(v41);
            ++v39;
          }

          while (v37 != v39);
          v37 = [v62 countByEnumeratingWithState:&v74 objects:v97 count:16];
        }

        while (v37);
      }

      v70 = 0;
      [(RMProfileStore *)self _saveDeclarationKeysForPayload:v57 keys:v65 error:&v70];
      v49 = v70;
      if (v49)
      {
        v50 = [MEMORY[0x277D45F58] profileStore];
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          [RMProfileStore _applyDeclarationsForPayload:declarations:completionHandler:];
        }
      }

      v51 = [(RMProfileStore *)self providerStore];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_33;
      v67[3] = &unk_279B05808;
      v9 = v49;
      v68 = v9;
      v69 = v58;
      [v51 applyChangesWithCompletionHandler:v67];
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

void __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_cold_1(a1);
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  [*(a1 + 40) complete];
}

void __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_32(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_32_cold_1(a1);
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  [*(a1 + 40) complete];
}

void __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_33_cold_1(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_removeDeclarationsForPayload:(id)a3 completionHandler:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v27 = a4;
  v5 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [RMProfileStore _removeDeclarationsForPayload:completionHandler:];
  }

  v31 = objc_opt_new();
  v6 = [(RMProfileStore *)self providerStore];
  v51 = 0;
  v26 = [(RMProfileStore *)self _oldDeclarationKeysForPayload:v28 store:v6 error:&v51];
  v7 = v51;

  if (!v7)
  {
    v30 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v26, "count")}];
    v9 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [RMProfileStore _removeDeclarationsForPayload:v26 completionHandler:?];
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v26;
    v10 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v10)
    {
      v11 = *v48;
      do
      {
        v12 = 0;
        do
        {
          if (*v48 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v47 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          v15 = objc_opt_new();
          v41 = 0;
          v42 = &v41;
          v43 = 0x3032000000;
          v44 = __Block_byref_object_copy__2;
          v45 = __Block_byref_object_dispose__2;
          v46 = 0;
          v16 = [(RMProfileStore *)self providerStore];
          v17 = [v13 declarationIdentifier];
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __66__RMProfileStore__removeDeclarationsForPayload_completionHandler___block_invoke;
          v38[3] = &unk_279B05D58;
          v38[4] = v13;
          v40 = &v41;
          v18 = v15;
          v39 = v18;
          [v16 deleteDeclarationWithIdentifier:v17 completionHandler:v38];

          [v18 waitForCompletion];
          if (v42[5])
          {
            v19 = [MEMORY[0x277D45F58] profileStore];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v21 = [v13 declarationIdentifier];
              *buf = 138543618;
              v53 = v21;
              v54 = 2114;
              v55 = 0;
              _os_log_error_impl(&dword_261E36000, v19, OS_LOG_TYPE_ERROR, "Failed to delete declaration %{public}@: %{public}@", buf, 0x16u);
            }

            v20 = [v13 declarationIdentifier];
            [v31 addObject:v20];

            [v30 addObject:v13];
          }

          _Block_object_dispose(&v41, 8);
          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v10);
    }

    if ([v30 count])
    {
      v36 = 0;
      [(RMProfileStore *)self _saveDeclarationKeysForPayload:v28 keys:v30 error:&v36];
      v22 = v36;
      if (v22)
      {
        v23 = [MEMORY[0x277D45F58] profileStore];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [RMProfileStore _applyDeclarationsForPayload:declarations:completionHandler:];
        }

LABEL_27:
      }
    }

    else
    {
      v37 = 0;
      [(RMProfileStore *)self _removeDeclarationKeysForPayload:v28 error:&v37];
      v22 = v37;
      if (v22)
      {
        v23 = [MEMORY[0x277D45F58] profileStore];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [RMProfileStore _removeDeclarationsForPayload:completionHandler:];
        }

        goto LABEL_27;
      }
    }

    v24 = [(RMProfileStore *)self providerStore];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __66__RMProfileStore__removeDeclarationsForPayload_completionHandler___block_invoke_34;
    v33[3] = &unk_279B05808;
    v7 = v22;
    v34 = v7;
    v35 = v27;
    [v24 applyChangesWithCompletionHandler:v33];

    goto LABEL_29;
  }

  v8 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke_2_cold_1();
  }

  (*(v27 + 2))(v27, v7);
LABEL_29:

  v25 = *MEMORY[0x277D85DE8];
}

void __66__RMProfileStore__removeDeclarationsForPayload_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_32_cold_1(a1);
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  [*(a1 + 40) complete];
}

void __66__RMProfileStore__removeDeclarationsForPayload_completionHandler___block_invoke_34(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_33_cold_1(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_newDeclarationsMap:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v23 = a4;
    obj = v8;
    v11 = *v27;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v26 + 1) + 8 * v12);
      v14 = objc_autoreleasePoolPush();
      v25 = 0;
      v15 = [MEMORY[0x277D46018] loadData:v13 serializationType:1 error:&v25];
      v16 = v25;
      if (v16)
      {
        break;
      }

      v17 = [(RMProfileStore *)self providerStore];
      v18 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:@"ProfileSubscriber" store:v17 declaration:v15];

      [v7 setObject:v13 forKey:v18];
      objc_autoreleasePoolPop(v14);
      if (v10 == ++v12)
      {
        v8 = obj;
        v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v19 = v16;

    objc_autoreleasePoolPop(v14);
    v8 = obj;

    if (v23)
    {
      v20 = v19;
      v7 = 0;
      *v23 = v20;
      v19 = v20;
      goto LABEL_12;
    }

    v7 = 0;
  }

  else
  {
LABEL_9:
    v19 = 0;
    v20 = v8;
LABEL_12:
  }

  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_oldDeclarationKeysForPayload:(id)a3 store:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(RMProfileStore *)self _metadataKeyForPayload:a3];
  v31 = 0;
  v10 = [v8 metadataValueForKey:v9 error:&v31];
  v11 = v31;
  if (v11)
  {
    v12 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [RMProfileStore _oldDeclarationKeysForPayload:store:error:];
    }

    if (a5)
    {
      v13 = v11;
      *a5 = v11;
    }

    goto LABEL_23;
  }

  if (!v10)
  {
    v23 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [RMProfileStore _oldDeclarationKeysForPayload:store:error:];
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = [MEMORY[0x277D45F58] profileStore];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [RMProfileStore _oldDeclarationKeysForPayload:store:error:];
    }

LABEL_22:

LABEL_23:
    v22 = objc_opt_new();
    goto LABEL_24;
  }

  v26 = v8;
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = v10;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [RMStoreDeclarationKey newDeclarationKey:*(*(&v27 + 1) + 8 * i)];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v17);
  }

  v21 = [MEMORY[0x277D45F58] profileStore];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [RMProfileStore _oldDeclarationKeysForPayload:store:error:];
  }

  v22 = [MEMORY[0x277CBEB98] setWithArray:v14];

  v8 = v26;
LABEL_24:

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)_saveDeclarationKeysForPayload:(id)a3 keys:(id)a4 error:(id *)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v27 + 1) + 8 * v15) key];
        [v10 addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  v17 = [(RMProfileStore *)self _metadataKeyForPayload:v8];
  v18 = [(RMProfileStore *)self providerStore];
  v26 = 0;
  v19 = [v18 setMetadataValue:v10 forKey:v17 error:&v26];
  v20 = v26;

  v21 = [MEMORY[0x277D45F58] profileStore];
  v22 = v21;
  if (v19)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [RMProfileStore _saveDeclarationKeysForPayload:keys:error:];
    }
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [RMProfileStore _saveDeclarationKeysForPayload:keys:error:];
    }

    if (a5 && v20)
    {
      v23 = v20;
      *a5 = v20;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_removeDeclarationKeysForPayload:(id)a3 error:(id *)a4
{
  v6 = [(RMProfileStore *)self _metadataKeyForPayload:a3];
  v7 = [(RMProfileStore *)self providerStore];
  v14 = 0;
  v8 = [v7 setMetadataValue:0 forKey:v6 error:&v14];
  v9 = v14;

  v10 = [MEMORY[0x277D45F58] profileStore];
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [RMProfileStore _removeDeclarationKeysForPayload:error:];
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [RMProfileStore _removeDeclarationKeysForPayload:error:];
    }

    if (a4 && v9)
    {
      v12 = v9;
      *a4 = v9;
    }
  }

  return v8;
}

- (id)_metadataKeyForPayload:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v4 = [v3 DMCSHA256Hash];
  v5 = [v4 DMCHexString];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"RMProfileStore", v5];

  return v6;
}

void __53__RMProfileStore_providerStoreWithCompletionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Failed to create provider store: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)installProfile:(uint64_t)a1 declarations:(void *)a2 completionHandler:.cold.1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [a2 count];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __64__RMProfileStore_installProfile_declarations_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) ownerIdentifier];
  v3 = *(a1 + 48);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeProfile:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __50__RMProfileStore_removeProfile_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) ownerIdentifier];
  v3 = *(a1 + 48);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Failed to get old declaration keys: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __87__RMProfileStore_declarationIdentifiersForProfilePayloadIdentifiers_completionHandler___block_invoke_2_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) ownerIdentifier];
  v3 = *(a1 + 48);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_findProviderStoreWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__RMProfileStore__findProviderStoreWithCompletionHandler___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __58__RMProfileStore__findProviderStoreWithCompletionHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_3_0(a1) ownerIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_findObserverStoreWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__RMProfileStore__findObserverStoreWithCompletionHandler___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __58__RMProfileStore__findObserverStoreWithCompletionHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_3_0(a1) ownerIdentifier];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __58__RMProfileStore__findObserverStoreWithCompletionHandler___block_invoke_cold_3(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_3_0(a1) ownerIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_createStoreReturningError:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_createStoreReturningError:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 40);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3(&dword_261E36000, v2, v3, "Failed to create provider store: %{public}@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_createStoreReturningError:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Failed to set provider store metadata: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_createStoreReturningError:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 40);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3(&dword_261E36000, v2, v3, "Failed to remove provider store: %{public}@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_applyDeclarationsForPayload:(void *)a1 declarations:completionHandler:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_applyDeclarationsForPayload:declarations:completionHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Failed to build declaration map: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_applyDeclarationsForPayload:(void *)a1 declarations:completionHandler:.cold.4(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_applyDeclarationsForPayload:(void *)a3 declarations:(os_log_t)log completionHandler:.cold.5(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_debug_impl(&dword_261E36000, log, OS_LOG_TYPE_DEBUG, "Saving declaration %{public}@", buf, 0xCu);
}

- (void)_applyDeclarationsForPayload:(void *)a1 declarations:completionHandler:.cold.6(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_applyDeclarationsForPayload:declarations:completionHandler:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Failed to save declaration manifest: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_3_0(a1) declarationIdentifier];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_32_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_3_0(a1) declarationIdentifier];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __78__RMProfileStore__applyDeclarationsForPayload_declarations_completionHandler___block_invoke_33_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3(&dword_261E36000, v2, v3, "Failed to apply declarations: %{public}@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_removeDeclarationsForPayload:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_removeDeclarationsForPayload:(void *)a1 completionHandler:.cold.3(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_removeDeclarationsForPayload:completionHandler:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Failed to remove declaration manifest: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_oldDeclarationKeysForPayload:store:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4(&dword_261E36000, v0, v1, "Failed to read declaration manifest for key %{public}@: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_oldDeclarationKeysForPayload:store:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Invalid saved declaration manifest for key %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_oldDeclarationKeysForPayload:store:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_oldDeclarationKeysForPayload:store:error:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_saveDeclarationKeysForPayload:keys:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4(&dword_261E36000, v0, v1, "Failed to save declaration manifest for key %{public}@: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_saveDeclarationKeysForPayload:keys:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_removeDeclarationKeysForPayload:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4(&dword_261E36000, v0, v1, "Failed to remove declaration manifest for key %{public}@: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_removeDeclarationKeysForPayload:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end