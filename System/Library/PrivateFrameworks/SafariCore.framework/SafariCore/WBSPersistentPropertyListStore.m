@interface WBSPersistentPropertyListStore
- (WBSPersistentPropertyListStore)initWithBackingStoreURL:(id)a3 fileResourceValues:(id)a4;
- (id)_dataRepresentation;
- (id)_existingSavedData;
- (id)_objectForKey:(id)a3 ofClass:(Class)a4;
- (id)allKeys;
- (id)arrayForKey:(id)a3;
- (id)dataForKey:(id)a3;
- (id)dateForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)numberForKey:(id)a3;
- (id)objectForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (void)_dataRepresentation;
- (void)_existingSavedData;
- (void)_loadDataIfNecessary;
- (void)_prepareEmptyStore;
- (void)clearStoreSynchronously;
- (void)saveAndCloseStoreSynchronously;
- (void)saveStoreSynchronously;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation WBSPersistentPropertyListStore

- (void)_loadDataIfNecessary
{
  if (!self->_store)
  {
    v3 = [(WBSPersistentPropertyListStore *)self _existingSavedData];
    store = self->_store;
    self->_store = v3;

    if (!self->_store)
    {
      goto LABEL_8;
    }

    validateLoadedStoreHandler = self->_validateLoadedStoreHandler;
    if (validateLoadedStoreHandler)
    {
      v6 = validateLoadedStoreHandler[2]();
      if (([v6 isEqual:self->_store] & 1) == 0)
      {
        v7 = [v6 mutableCopy];
        v8 = self->_store;
        self->_store = v7;

        [(WBSCoalescedAsynchronousWriter *)self->_writer scheduleWrite];
      }

      if (!self->_store)
      {
LABEL_8:

        [(WBSPersistentPropertyListStore *)self _prepareEmptyStore];
      }
    }
  }
}

- (id)_existingSavedData
{
  if (self->_backingStoreURL)
  {
    v3 = objc_alloc(MEMORY[0x1E695DEF0]);
    backingStoreURL = self->_backingStoreURL;
    v15 = 0;
    v5 = [v3 initWithContentsOfURL:backingStoreURL options:0 error:&v15];
    v6 = v15;
    v7 = v6;
    if (v5)
    {
      v14 = 0;
      v8 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:&v14];
      v9 = v14;

      if (v8)
      {
        v10 = [v8 mutableCopy];
      }

      else
      {
        v12 = WBS_LOG_CHANNEL_PREFIXPasswords();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(WBSPersistentPropertyListStore *)v12 _existingSavedData];
        }

        v10 = 0;
      }
    }

    else
    {
      if (([v6 safari_matchesErrorDomain:*MEMORY[0x1E696A250] andCode:260] & 1) == 0)
      {
        v11 = WBS_LOG_CHANNEL_PREFIXPasswords();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(WBSPersistentPropertyListStore *)v11 _existingSavedData];
        }
      }

      v10 = 0;
      v9 = v7;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)allKeys
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__WBSPersistentPropertyListStore_allKeys__block_invoke;
  v5[3] = &unk_1E7CF1FA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__WBSPersistentPropertyListStore_allKeys__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadDataIfNecessary];
  v2 = [*(*(a1 + 32) + 24) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (WBSPersistentPropertyListStore)initWithBackingStoreURL:(id)a3 fileResourceValues:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = WBSPersistentPropertyListStore;
  v8 = [(WBSPersistentPropertyListStore *)&v22 init];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.SafariShared.WBSPersistentPropertyListStore", 0);
    queue = v8->_queue;
    v8->_queue = v9;

    if (v6)
    {
      objc_initWeak(&location, v8);
      v11 = [v6 copy];
      backingStoreURL = v8->_backingStoreURL;
      v8->_backingStoreURL = v11;

      v13 = [WBSCoalescedAsynchronousWriter alloc];
      v14 = v8->_queue;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __77__WBSPersistentPropertyListStore_initWithBackingStoreURL_fileResourceValues___block_invoke;
      v19[3] = &unk_1E7CF3CE0;
      objc_copyWeak(&v20, &location);
      v15 = [(WBSCoalescedAsynchronousWriter *)v13 initWithName:@"WBSPersistentPropertyListStore" fileURL:v6 dataSourceQueue:v14 dataSourceBlock:v19 fileResourceValues:v7];
      writer = v8->_writer;
      v8->_writer = v15;

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    v17 = v8;
  }

  return v8;
}

id __77__WBSPersistentPropertyListStore_initWithBackingStoreURL_fileResourceValues___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _dataRepresentation];

  return v2;
}

- (void)_prepareEmptyStore
{
  createEmptyStoreHandler = self->_createEmptyStoreHandler;
  if (createEmptyStoreHandler)
  {
    v4 = createEmptyStoreHandler[2](createEmptyStoreHandler, a2);
    v5 = [v4 mutableCopy];
    store = self->_store;
    self->_store = v5;

    if ([(NSMutableDictionary *)self->_store count])
    {
      writer = self->_writer;

      [(WBSCoalescedAsynchronousWriter *)writer scheduleWrite];
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_store;
    self->_store = v8;
  }
}

- (id)_dataRepresentation
{
  store = self->_store;
  v7 = 0;
  v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:store format:200 options:0 error:&v7];
  v4 = v7;
  if (!v3)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSPersistentPropertyListStore *)v5 _dataRepresentation];
    }
  }

  return v3;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__WBSPersistentPropertyListStore_objectForKey___block_invoke;
  block[3] = &unk_1E7CF2D98;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __47__WBSPersistentPropertyListStore_objectForKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadDataIfNecessary];
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_objectForKey:(id)a3 ofClass:(Class)a4
{
  v4 = [(WBSPersistentPropertyListStore *)self objectForKey:a3];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = [(WBSPersistentPropertyListStore *)self _objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)numberForKey:(id)a3
{
  v4 = a3;
  v5 = [(WBSPersistentPropertyListStore *)self _objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)dataForKey:(id)a3
{
  v4 = a3;
  v5 = [(WBSPersistentPropertyListStore *)self _objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)dateForKey:(id)a3
{
  v4 = a3;
  v5 = [(WBSPersistentPropertyListStore *)self _objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = [(WBSPersistentPropertyListStore *)self _objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [(WBSPersistentPropertyListStore *)self _objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__WBSPersistentPropertyListStore_setObject_forKey___block_invoke;
  block[3] = &unk_1E7CF2308;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(queue, block);
}

void __51__WBSPersistentPropertyListStore_setObject_forKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadDataIfNecessary];
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 isEqual:*(a1 + 48)];

  if ((v3 & 1) == 0)
  {
    [*(*(a1 + 32) + 24) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
    v4 = *(*(a1 + 32) + 32);

    [v4 scheduleWrite];
  }
}

- (void)saveStoreSynchronously
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__WBSPersistentPropertyListStore_saveStoreSynchronously__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __56__WBSPersistentPropertyListStore_saveStoreSynchronously__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) scheduleWrite];
  v2 = *(*(a1 + 32) + 32);

  return [v2 performScheduledWriteSynchronously];
}

- (void)clearStoreSynchronously
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__WBSPersistentPropertyListStore_clearStoreSynchronously__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __57__WBSPersistentPropertyListStore_clearStoreSynchronously__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _prepareEmptyStore];
  [*(*(a1 + 32) + 32) scheduleWrite];
  v2 = *(*(a1 + 32) + 32);

  return [v2 performScheduledWriteSynchronously];
}

- (void)saveAndCloseStoreSynchronously
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__WBSPersistentPropertyListStore_saveAndCloseStoreSynchronously__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_existingSavedData
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "Failed to read backing store: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_dataRepresentation
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "Failed to encode backing store: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

@end