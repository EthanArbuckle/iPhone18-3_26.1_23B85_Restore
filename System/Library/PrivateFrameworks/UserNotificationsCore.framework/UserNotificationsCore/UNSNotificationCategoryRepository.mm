@interface UNSNotificationCategoryRepository
- (UNSNotificationCategoryRepository)initWithDataStoreRepository:(id)repository observable:(id)observable;
- (UNSNotificationCategoryRepository)initWithDirectory:(id)directory librarian:(id)librarian repositoryProtectionStrategy:(id)strategy;
- (id)_queue_categoriesForBundleIdentifier:(id)identifier;
- (id)allBundleIdentifiers;
- (id)categoriesForBundleIdentifier:(id)identifier;
- (id)categoryWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (void)_queue_notificationSourcesDidUninstall:(id)uninstall;
- (void)_queue_setCategories:(id)categories forBundleIdentifier:(id)identifier;
- (void)addObserver:(id)observer forBundleIdentifier:(id)identifier;
- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)unlock;
- (void)notificationSourcesDidUninstall:(id)uninstall;
- (void)removeObserver:(id)observer forBundleIdentifier:(id)identifier;
- (void)setCategories:(id)categories forBundleIdentifier:(id)identifier;
@end

@implementation UNSNotificationCategoryRepository

- (UNSNotificationCategoryRepository)initWithDirectory:(id)directory librarian:(id)librarian repositoryProtectionStrategy:(id)strategy
{
  strategyCopy = strategy;
  librarianCopy = librarian;
  directoryCopy = directory;
  v11 = [[UNCKeyedDataStoreRepository alloc] initWithDirectory:directoryCopy fileName:@"Categories" pathExtension:@"plist" librarian:librarianCopy repositoryProtectionStrategy:strategyCopy objectIdentifierKey:0 maxObjectsPerKey:[(UNSNotificationCategoryRepository *)self _maxObjectsPerKey]];

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("com.apple.NotificationCategoryRepository.observable", v12);

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create("com.apple.NotificationCategoryRepository.call-out", v14);

  v16 = [[UNCKeyedObservable alloc] initWithQueue:v13 callOutQueue:v15];
  v17 = [(UNSNotificationCategoryRepository *)self initWithDataStoreRepository:v11 observable:v16];

  return v17;
}

- (UNSNotificationCategoryRepository)initWithDataStoreRepository:(id)repository observable:(id)observable
{
  repositoryCopy = repository;
  observableCopy = observable;
  v14.receiver = self;
  v14.super_class = UNSNotificationCategoryRepository;
  v9 = [(UNSNotificationCategoryRepository *)&v14 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.usernotificationsserver.NotificationCategoryRepository", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    objc_storeStrong(&v9->_repository, repository);
    objc_storeStrong(&v9->_observable, observable);
  }

  return v9;
}

- (void)addObserver:(id)observer forBundleIdentifier:(id)identifier
{
  observerCopy = observer;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__UNSNotificationCategoryRepository_addObserver_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = observerCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = observerCopy;
  dispatch_async(queue, block);
}

- (void)removeObserver:(id)observer forBundleIdentifier:(id)identifier
{
  observerCopy = observer;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__UNSNotificationCategoryRepository_removeObserver_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = observerCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = observerCopy;
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

- (id)categoriesForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
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

- (void)setCategories:(id)categories forBundleIdentifier:(id)identifier
{
  categoriesCopy = categories;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__UNSNotificationCategoryRepository_setCategories_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = categoriesCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = categoriesCopy;
  dispatch_async(queue, block);
}

- (void)notificationSourcesDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__UNSNotificationCategoryRepository_notificationSourcesDidUninstall___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = uninstallCopy;
  v6 = uninstallCopy;
  dispatch_sync(queue, v7);
}

- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)unlock
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__UNSNotificationCategoryRepository_contentProtectionStateChangedForFirstUnlock___block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)_queue_categoriesForBundleIdentifier:(id)identifier
{
  v3 = [(UNCKeyedDataStoreRepository *)self->_repository objectsForKey:identifier];
  v4 = [v3 bs_map:UNSDictionaryToNotificationCategoryRecord];

  return v4;
}

- (void)_queue_setCategories:(id)categories forBundleIdentifier:(id)identifier
{
  categoriesCopy = categories;
  identifierCopy = identifier;
  v8 = [(UNSNotificationCategoryRepository *)self _queue_categoriesForBundleIdentifier:identifierCopy];
  if ((UNEqualObjects() & 1) == 0)
  {
    v9 = [categoriesCopy bs_map:UNCNotificationCategoryRecordToDictionary];
    [(UNCKeyedDataStoreRepository *)self->_repository setObjects:v9 forKey:identifierCopy];
    observable = self->_observable;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__UNSNotificationCategoryRepository__queue_setCategories_forBundleIdentifier___block_invoke;
    v11[3] = &unk_1E85D6F98;
    v11[4] = self;
    v12 = identifierCopy;
    [(UNCKeyedObservable *)observable notifyObserversKey:v12 usingBlock:v11];
  }
}

- (id)categoryWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  if (identifierCopy)
  {
    v8 = [(UNSNotificationCategoryRepository *)self categoriesForBundleIdentifier:bundleIdentifierCopy];
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
          identifier = [v14 identifier];
          v16 = [identifierCopy isEqual:identifier];

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

- (void)_queue_notificationSourcesDidUninstall:(id)uninstall
{
  v16 = *MEMORY[0x1E69E9840];
  uninstallCopy = uninstall;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [uninstallCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(uninstallCopy);
        }

        bundleIdentifier = [*(*(&v11 + 1) + 8 * v8) bundleIdentifier];
        [(UNCKeyedDataStoreRepository *)self->_repository removeStoreForKey:bundleIdentifier];

        ++v8;
      }

      while (v6 != v8);
      v6 = [uninstallCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end