@interface STConcretePersistentStoreChangeHandler
- (STConcretePersistentStoreChangeHandler)initWithPersistentContainer:(id)container;
- (id)persistentHistoryTokenForStore:(id)store;
- (void)handlePersistentStoreCoordinatorStoresDidChange:(id)change;
- (void)handleRemotePersistentStoreDidChange:(id)change inContext:(id)context;
- (void)savePersistentHistoryToken:(id)token forStore:(id)store;
@end

@implementation STConcretePersistentStoreChangeHandler

- (STConcretePersistentStoreChangeHandler)initWithPersistentContainer:(id)container
{
  containerCopy = container;
  v13.receiver = self;
  v13.super_class = STConcretePersistentStoreChangeHandler;
  v5 = [(STConcretePersistentStoreChangeHandler *)&v13 init];
  persistentContainer = v5->_persistentContainer;
  v5->_persistentContainer = containerCopy;
  v7 = containerCopy;

  v8 = objc_opt_new();
  lastPersistentHistoryTokenByStoreIdentifier = v5->_lastPersistentHistoryTokenByStoreIdentifier;
  v5->_lastPersistentHistoryTokenByStoreIdentifier = v8;

  v10 = objc_opt_new();
  lastPersistentHistoryTokenByStoreIdentifierLock = v5->_lastPersistentHistoryTokenByStoreIdentifierLock;
  v5->_lastPersistentHistoryTokenByStoreIdentifierLock = v10;

  return v5;
}

- (void)handleRemotePersistentStoreDidChange:(id)change inContext:(id)context
{
  contextCopy = context;
  userInfo = [change userInfo];
  v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695D4B8]];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__STConcretePersistentStoreChangeHandler_handleRemotePersistentStoreDidChange_inContext___block_invoke;
  v11[3] = &unk_1E7CE7230;
  v11[4] = self;
  v12 = v8;
  v13 = contextCopy;
  v9 = contextCopy;
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

- (void)handlePersistentStoreCoordinatorStoresDidChange:(id)change
{
  v42 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  persistentContainer = [(STConcretePersistentStoreChangeHandler *)self persistentContainer];
  persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];
  obj = self->_lastPersistentHistoryTokenByStoreIdentifierLock;
  objc_sync_enter(obj);
  lastPersistentHistoryTokenByStoreIdentifier = [(STConcretePersistentStoreChangeHandler *)self lastPersistentHistoryTokenByStoreIdentifier];
  userInfo = [changeCopy userInfo];
  [userInfo objectForKeyedSubscript:*MEMORY[0x1E695D2C8]];
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
        v12 = [persistentStoreCoordinator currentPersistentHistoryTokenFromStores:v11];

        identifier = [v10 identifier];
        [lastPersistentHistoryTokenByStoreIdentifier setObject:v12 forKeyedSubscript:identifier];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v7);
  }

  [userInfo objectForKeyedSubscript:*MEMORY[0x1E695D478]];
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

        identifier2 = [*(*(&v31 + 1) + 8 * v17) identifier];
        [lastPersistentHistoryTokenByStoreIdentifier removeObjectForKey:identifier2];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v15);
  }

  v19 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695D4C0]];
  if ([v19 count] >= 2)
  {
    v20 = [v19 objectAtIndexedSubscript:0];
    v21 = [v19 objectAtIndexedSubscript:1];
    identifier3 = [v20 identifier];
    v23 = [lastPersistentHistoryTokenByStoreIdentifier objectForKeyedSubscript:identifier3];
    identifier4 = [v21 identifier];
    [lastPersistentHistoryTokenByStoreIdentifier setObject:v23 forKeyedSubscript:identifier4];

    identifier5 = [v20 identifier];
    [lastPersistentHistoryTokenByStoreIdentifier removeObjectForKey:identifier5];
  }

  objc_sync_exit(obj);
  v26 = *MEMORY[0x1E69E9840];
}

- (id)persistentHistoryTokenForStore:(id)store
{
  storeCopy = store;
  v5 = self->_lastPersistentHistoryTokenByStoreIdentifierLock;
  objc_sync_enter(v5);
  lastPersistentHistoryTokenByStoreIdentifier = [(STConcretePersistentStoreChangeHandler *)self lastPersistentHistoryTokenByStoreIdentifier];
  identifier = [storeCopy identifier];
  v8 = [lastPersistentHistoryTokenByStoreIdentifier objectForKeyedSubscript:identifier];

  objc_sync_exit(v5);

  return v8;
}

- (void)savePersistentHistoryToken:(id)token forStore:(id)store
{
  tokenCopy = token;
  storeCopy = store;
  v7 = self->_lastPersistentHistoryTokenByStoreIdentifierLock;
  objc_sync_enter(v7);
  lastPersistentHistoryTokenByStoreIdentifier = [(STConcretePersistentStoreChangeHandler *)self lastPersistentHistoryTokenByStoreIdentifier];
  identifier = [storeCopy identifier];
  [lastPersistentHistoryTokenByStoreIdentifier setObject:tokenCopy forKeyedSubscript:identifier];

  objc_sync_exit(v7);
}

@end