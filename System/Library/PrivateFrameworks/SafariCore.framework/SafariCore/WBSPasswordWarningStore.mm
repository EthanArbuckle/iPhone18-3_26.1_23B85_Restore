@interface WBSPasswordWarningStore
+ (WBSPasswordWarningStore)sharedStore;
- (id)_initWithBackingStoreURL:(id)a3;
- (id)_initWithDefaultBackingStore;
- (void)_addPersistentIdentifier:(id)a3 withLastWarningDate:(id)a4;
- (void)_loadStoreIfNecessary;
- (void)_saveStoreNow;
- (void)_saveStoreSoon;
- (void)addPersistentIdentifier:(id)a3;
- (void)clearStoreSynchronously;
- (void)getContainsPersistentIdentifier:(id)a3 completionHandler:(id)a4;
- (void)saveStoreSynchronously;
- (void)synchronousyClearIdentifiersAddedAfterDate:(id)a3;
@end

@implementation WBSPasswordWarningStore

- (id)_initWithBackingStoreURL:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WBSPasswordWarningStore;
  v5 = [(WBSPasswordWarningStore *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
    backingStoreURL = v5->_backingStoreURL;
    v5->_backingStoreURL = v6;

    v8 = dispatch_queue_create("com.apple.SafariShared.WBSPasswordWarningStoreQueue", 0);
    queue = v5->_queue;
    v5->_queue = v8;

    v10 = v5;
  }

  return v5;
}

- (id)_initWithDefaultBackingStore
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 safari_settingsDirectoryURL];
  v5 = [v4 URLByAppendingPathComponent:@"PasswordAuditing.plist" isDirectory:0];

  v6 = [(WBSPasswordWarningStore *)self _initWithBackingStoreURL:v5];
  return v6;
}

+ (WBSPasswordWarningStore)sharedStore
{
  if (+[WBSPasswordWarningStore sharedStore]::onceToken != -1)
  {
    +[WBSPasswordWarningStore sharedStore];
  }

  v3 = +[WBSPasswordWarningStore sharedStore]::sharedStore;

  return v3;
}

void __38__WBSPasswordWarningStore_sharedStore__block_invoke()
{
  v0 = [[WBSPasswordWarningStore alloc] _initWithDefaultBackingStore];
  v1 = +[WBSPasswordWarningStore sharedStore]::sharedStore;
  +[WBSPasswordWarningStore sharedStore]::sharedStore = v0;
}

- (void)_loadStoreIfNecessary
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self->_lastWarningDatesByPersistentIdentifier)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lastWarningDatesByPersistentIdentifier = self->_lastWarningDatesByPersistentIdentifier;
    self->_lastWarningDatesByPersistentIdentifier = v3;

    v21 = self;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:self->_backingStoreURL];
    v20 = v5;
    if (v5)
    {
      v19 = [v5 safari_arrayForKey:@"PasswordAuditWarnings"];
      if (v19)
      {
        v6 = [MEMORY[0x1E695DF00] date];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v7 = v19;
        v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v8)
        {
          v9 = 0;
          v10 = *v23;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v22 + 1) + 8 * i);
              v13 = [v12 safari_dataForKey:@"PersistentIdentifier"];
              v14 = [v12 safari_dateForKey:@"LastWarningDate"];
              v15 = v14;
              if (v13)
              {
                v16 = v14 == 0;
              }

              else
              {
                v16 = 1;
              }

              if (v16 || ([v6 timeIntervalSinceDate:v14], v17 > 7776000.0))
              {
                v9 = 1;
              }

              else
              {
                [(NSMutableDictionary *)v21->_lastWarningDatesByPersistentIdentifier setObject:v15 forKeyedSubscript:v13];
              }
            }

            v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v8);

          if (v9)
          {
            [(WBSPasswordWarningStore *)v21 _saveStoreSoon];
          }
        }

        else
        {
        }
      }

      v5 = v20;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_saveStoreSoon
{
  if (self->_backingStoreURL)
  {
    if (!self->_hasPendingChanges)
    {
      self->_hasPendingChanges = 1;
      operator new();
    }
  }
}

- (void)_saveStoreNow
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Failed to encode PasswordWarning store: %{public}@", buf, 0xCu);
}

void __40__WBSPasswordWarningStore__saveStoreNow__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v9[0] = @"PersistentIdentifier";
  v9[1] = @"LastWarningDate";
  v10[0] = v5;
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [*(a1 + 32) addObject:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)saveStoreSynchronously
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__WBSPasswordWarningStore_saveStoreSynchronously__block_invoke;
  block[3] = &unk_1E7CF0828;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)getContainsPersistentIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__WBSPasswordWarningStore_getContainsPersistentIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E7CF3B68;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __77__WBSPasswordWarningStore_getContainsPersistentIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E695E000] pm_defaults];
  v2 = [v5 BOOLForKey:@"EnablePasswordManagerDemoMode"];

  if (v2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    [*(a1 + 32) _loadStoreIfNecessary];
    v6 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
    if (v6)
    {
      v4 = [MEMORY[0x1E695DF00] date];
      [v4 timeIntervalSinceDate:v6];
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)_addPersistentIdentifier:(id)a3 withLastWarningDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__WBSPasswordWarningStore__addPersistentIdentifier_withLastWarningDate___block_invoke;
  block[3] = &unk_1E7CF0A38;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

uint64_t __72__WBSPasswordWarningStore__addPersistentIdentifier_withLastWarningDate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadStoreIfNecessary];
  [*(*(a1 + 32) + 40) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _saveStoreSoon];
}

- (void)addPersistentIdentifier:(id)a3
{
  v5 = a3;
  v4 = [MEMORY[0x1E695DF00] date];
  [(WBSPasswordWarningStore *)self _addPersistentIdentifier:v5 withLastWarningDate:v4];
}

- (void)clearStoreSynchronously
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WBSPasswordWarningStore_clearStoreSynchronously__block_invoke;
  block[3] = &unk_1E7CF0828;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __50__WBSPasswordWarningStore_clearStoreSynchronously__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(a1 + 32) + 24) = 1;
  v5 = *(a1 + 32);

  return [v5 _saveStoreNow];
}

- (void)synchronousyClearIdentifiersAddedAfterDate:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] distantPast];

  if (v5 == v4)
  {
    [(WBSPasswordWarningStore *)self clearStoreSynchronously];
  }

  else
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__WBSPasswordWarningStore_synchronousyClearIdentifiersAddedAfterDate___block_invoke;
    v7[3] = &unk_1E7CF0908;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(queue, v7);
  }
}

void __70__WBSPasswordWarningStore_synchronousyClearIdentifiersAddedAfterDate___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(*(a1 + 32) + 40);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __70__WBSPasswordWarningStore_synchronousyClearIdentifiersAddedAfterDate___block_invoke_2;
  v8 = &unk_1E7CF3B90;
  v9 = *(a1 + 40);
  v4 = v2;
  v10 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:&v5];
  [*(*(a1 + 32) + 40) removeObjectsForKeys:{v4, v5, v6, v7, v8}];
  *(*(a1 + 32) + 24) = 1;
  [*(a1 + 32) _saveStoreNow];
}

void __70__WBSPasswordWarningStore_synchronousyClearIdentifiersAddedAfterDate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 compare:*(a1 + 32)] == 1)
  {
    [*(a1 + 40) addObject:v6];
  }
}

@end