@interface UNSNotificationCategoryRepository
- (UNSNotificationCategoryRepository)initWithDataStoreRepository:(id)a3 observable:(id)a4;
- (UNSNotificationCategoryRepository)initWithDirectory:(id)a3 librarian:(id)a4 repositoryProtectionStrategy:(id)a5;
- (id)_queue_categoriesForBundleIdentifier:(id)a3;
- (id)allBundleIdentifiers;
- (id)categoriesForBundleIdentifier:(id)a3;
- (id)categoryWithIdentifier:(id)a3 bundleIdentifier:(id)a4;
- (void)_queue_notificationSourcesDidUninstall:(id)a3;
- (void)_queue_setCategories:(id)a3 forBundleIdentifier:(id)a4;
- (void)addObserver:(id)a3 forBundleIdentifier:(id)a4;
- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)a3;
- (void)notificationSourcesDidUninstall:(id)a3;
- (void)removeObserver:(id)a3 forBundleIdentifier:(id)a4;
- (void)setCategories:(id)a3 forBundleIdentifier:(id)a4;
@end

@implementation UNSNotificationCategoryRepository

- (UNSNotificationCategoryRepository)initWithDirectory:(id)a3 librarian:(id)a4 repositoryProtectionStrategy:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[UNCKeyedDataStoreRepository alloc] initWithDirectory:v10 fileName:@"Categories" pathExtension:@"plist" librarian:v9 repositoryProtectionStrategy:v8 objectIdentifierKey:0 maxObjectsPerKey:[(UNSNotificationCategoryRepository *)self _maxObjectsPerKey]];

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("com.apple.NotificationCategoryRepository.observable", v12);

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create("com.apple.NotificationCategoryRepository.call-out", v14);

  v16 = [[UNCKeyedObservable alloc] initWithQueue:v13 callOutQueue:v15];
  v17 = [(UNSNotificationCategoryRepository *)self initWithDataStoreRepository:v11 observable:v16];

  return v17;
}

- (UNSNotificationCategoryRepository)initWithDataStoreRepository:(id)a3 observable:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = UNSNotificationCategoryRepository;
  v9 = [(UNSNotificationCategoryRepository *)&v14 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.usernotificationsserver.NotificationCategoryRepository", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    objc_storeStrong(&v9->_repository, a3);
    objc_storeStrong(&v9->_observable, a4);
  }

  return v9;
}

- (void)addObserver:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__UNSNotificationCategoryRepository_addObserver_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)removeObserver:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__UNSNotificationCategoryRepository_removeObserver_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (id)allBundleIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__UNSNotificationCategoryRepository_allBundleIdentifiers__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __57__UNSNotificationCategoryRepository_allBundleIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)categoriesForBundleIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__UNSNotificationCategoryRepository_categoriesForBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F48;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __67__UNSNotificationCategoryRepository_categoriesForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_categoriesForBundleIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setCategories:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__UNSNotificationCategoryRepository_setCategories_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)notificationSourcesDidUninstall:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__UNSNotificationCategoryRepository_notificationSourcesDidUninstall___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__UNSNotificationCategoryRepository_contentProtectionStateChangedForFirstUnlock___block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)_queue_categoriesForBundleIdentifier:(id)a3
{
  v3 = [(UNCKeyedDataStoreRepository *)self->_repository objectsForKey:a3];
  v4 = [v3 bs_map:UNSDictionaryToNotificationCategoryRecord];

  return v4;
}

- (void)_queue_setCategories:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UNSNotificationCategoryRepository *)self _queue_categoriesForBundleIdentifier:v7];
  if ((UNEqualObjects() & 1) == 0)
  {
    v9 = [v6 bs_map:UNCNotificationCategoryRecordToDictionary];
    [(UNCKeyedDataStoreRepository *)self->_repository setObjects:v9 forKey:v7];
    observable = self->_observable;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__UNSNotificationCategoryRepository__queue_setCategories_forBundleIdentifier___block_invoke;
    v11[3] = &unk_1E85D6F98;
    v11[4] = self;
    v12 = v7;
    [(UNCKeyedObservable *)observable notifyObserversKey:v12 usingBlock:v11];
  }
}

- (id)categoryWithIdentifier:(id)a3 bundleIdentifier:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(UNSNotificationCategoryRepository *)self categoriesForBundleIdentifier:v7];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 identifier];
          v16 = [v6 isEqual:v15];

          if (v16)
          {
            v17 = v14;

            v11 = v17;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)_queue_notificationSourcesDidUninstall:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) bundleIdentifier];
        [(UNCKeyedDataStoreRepository *)self->_repository removeStoreForKey:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end