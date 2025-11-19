@interface STConcretePersistentStoreChangeHandler
- (STConcretePersistentStoreChangeHandler)initWithPersistentContainer:(id)a3;
- (id)persistentHistoryTokenForStore:(id)a3;
- (void)handlePersistentStoreCoordinatorStoresDidChange:(id)a3;
- (void)handleRemotePersistentStoreDidChange:(id)a3 inContext:(id)a4;
- (void)savePersistentHistoryToken:(id)a3 forStore:(id)a4;
@end

@implementation STConcretePersistentStoreChangeHandler

- (STConcretePersistentStoreChangeHandler)initWithPersistentContainer:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STConcretePersistentStoreChangeHandler;
  v5 = [(STConcretePersistentStoreChangeHandler *)&v13 init];
  persistentContainer = v5->_persistentContainer;
  v5->_persistentContainer = v4;
  v7 = v4;

  v8 = objc_opt_new();
  lastPersistentHistoryTokenByStoreIdentifier = v5->_lastPersistentHistoryTokenByStoreIdentifier;
  v5->_lastPersistentHistoryTokenByStoreIdentifier = v8;

  v10 = objc_opt_new();
  lastPersistentHistoryTokenByStoreIdentifierLock = v5->_lastPersistentHistoryTokenByStoreIdentifierLock;
  v5->_lastPersistentHistoryTokenByStoreIdentifierLock = v10;

  return v5;
}

- (void)handleRemotePersistentStoreDidChange:(id)a3 inContext:(id)a4
{
  v6 = a4;
  v7 = [a3 userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E695D4B8]];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__STConcretePersistentStoreChangeHandler_handleRemotePersistentStoreDidChange_inContext___block_invoke;
  v11[3] = &unk_1E7CE7230;
  v11[4] = self;
  v12 = v8;
  v13 = v6;
  v9 = v6;
  v10 = v8;
  [v9 performBlockAndWait:v11];
}

void __89__STConcretePersistentStoreChangeHandler_handleRemotePersistentStoreDidChange_inContext___block_invoke(uint64_t a1)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) persistentContainer];
  v3 = [v2 persistentStoreCoordinator];
  v4 = [v3 persistentStoreForIdentifier:*(a1 + 40)];

  if (v4)
  {
    v5 = [*(a1 + 32) persistentHistoryTokenForStore:v4];
    v6 = [MEMORY[0x1E695D698] fetchHistoryAfterToken:v5];
    v37[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    [v6 setAffectedStores:v7];

    [v6 setResultType:5];
    v8 = *(a1 + 48);
    v34 = 0;
    v9 = [v8 executeRequest:v6 error:&v34];
    v10 = v34;
    v11 = v10;
    if (v9)
    {
      v23 = v10;
      v24 = v9;
      v25 = v6;
      v26 = v4;
      [v9 result];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = v33 = 0u;
      v29 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v29)
      {
        v28 = *v31;
        do
        {
          v12 = 0;
          v13 = v5;
          do
          {
            if (*v31 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v30 + 1) + 8 * v12);
            v15 = objc_autoreleasePoolPush();
            v5 = [v14 token];

            v16 = MEMORY[0x1E695D628];
            v17 = [v14 objectIDNotification];
            v18 = [v17 userInfo];
            v19 = [*(a1 + 32) persistentContainer];
            v20 = [v19 viewContext];
            v35 = v20;
            v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
            [v16 mergeChangesFromRemoteContextSave:v18 intoContexts:v21];

            objc_autoreleasePoolPop(v15);
            ++v12;
            v13 = v5;
          }

          while (v29 != v12);
          v29 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v29);
      }

      v6 = v25;
      v4 = v26;
      v11 = v23;
      v9 = v24;
    }

    [*(a1 + 32) savePersistentHistoryToken:v5 forStore:v4];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)handlePersistentStoreCoordinatorStoresDidChange:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v29 = [(STConcretePersistentStoreChangeHandler *)self persistentContainer];
  v4 = [v29 persistentStoreCoordinator];
  obj = self->_lastPersistentHistoryTokenByStoreIdentifierLock;
  objc_sync_enter(obj);
  v5 = [(STConcretePersistentStoreChangeHandler *)self lastPersistentHistoryTokenByStoreIdentifier];
  v30 = [v28 userInfo];
  [v30 objectForKeyedSubscript:*MEMORY[0x1E695D2C8]];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v6 = v36 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v7)
  {
    v8 = *v36;
    do
    {
      v9 = 0;
      do
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v40 = *(*(&v35 + 1) + 8 * v9);
        v10 = v40;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:{1, obj}];
        v12 = [v4 currentPersistentHistoryTokenFromStores:v11];

        v13 = [v10 identifier];
        [v5 setObject:v12 forKeyedSubscript:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v7);
  }

  [v30 objectForKeyedSubscript:*MEMORY[0x1E695D478]];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v14 = v32 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v15)
  {
    v16 = *v32;
    do
    {
      v17 = 0;
      do
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = [*(*(&v31 + 1) + 8 * v17) identifier];
        [v5 removeObjectForKey:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v15);
  }

  v19 = [v30 objectForKeyedSubscript:*MEMORY[0x1E695D4C0]];
  if ([v19 count] >= 2)
  {
    v20 = [v19 objectAtIndexedSubscript:0];
    v21 = [v19 objectAtIndexedSubscript:1];
    v22 = [v20 identifier];
    v23 = [v5 objectForKeyedSubscript:v22];
    v24 = [v21 identifier];
    [v5 setObject:v23 forKeyedSubscript:v24];

    v25 = [v20 identifier];
    [v5 removeObjectForKey:v25];
  }

  objc_sync_exit(obj);
  v26 = *MEMORY[0x1E69E9840];
}

- (id)persistentHistoryTokenForStore:(id)a3
{
  v4 = a3;
  v5 = self->_lastPersistentHistoryTokenByStoreIdentifierLock;
  objc_sync_enter(v5);
  v6 = [(STConcretePersistentStoreChangeHandler *)self lastPersistentHistoryTokenByStoreIdentifier];
  v7 = [v4 identifier];
  v8 = [v6 objectForKeyedSubscript:v7];

  objc_sync_exit(v5);

  return v8;
}

- (void)savePersistentHistoryToken:(id)a3 forStore:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = self->_lastPersistentHistoryTokenByStoreIdentifierLock;
  objc_sync_enter(v7);
  v8 = [(STConcretePersistentStoreChangeHandler *)self lastPersistentHistoryTokenByStoreIdentifier];
  v9 = [v6 identifier];
  [v8 setObject:v10 forKeyedSubscript:v9];

  objc_sync_exit(v7);
}

@end