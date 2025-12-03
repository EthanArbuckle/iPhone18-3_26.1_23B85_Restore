@interface UNCPendingNotificationRepository
- (UNCPendingNotificationRepository)initWithDataStoreRepository:(id)repository observable:(id)observable librarian:(id)librarian;
- (UNCPendingNotificationRepository)initWithDirectory:(id)directory librarian:(id)librarian repositoryProtectionStrategy:(id)strategy;
- (id)_queue_pendingNotificationDictionariesForBundleIdentifier:(id)identifier;
- (id)_queue_pendingNotificationRecordsForBundleIdentifier:(id)identifier;
- (id)allBundleIdentifiers;
- (id)pendingNotificationRecordsForBundleIdentifier:(id)identifier;
- (void)_queue_notificationSourcesDidUninstall:(id)uninstall;
- (void)_queue_notifyObserversOfChangesFrom:(id)from to:(id)to forBundleIdentifier:(id)identifier;
- (void)_queue_setPendingNotificationDictionaries:(id)dictionaries forBundleIdentifier:(id)identifier;
- (void)_queue_setPendingNotificationRecords:(id)records forBundleIdentifier:(id)identifier;
- (void)addObserver:(id)observer forBundleIdentifier:(id)identifier;
- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)unlock;
- (void)notificationSourcesDidUninstall:(id)uninstall;
- (void)removeObserver:(id)observer forBundleIdentifier:(id)identifier;
- (void)removeStoreForBundleIdentifier:(id)identifier;
- (void)setPendingNotificationRecords:(id)records forBundleIdentifier:(id)identifier;
@end

@implementation UNCPendingNotificationRepository

- (UNCPendingNotificationRepository)initWithDirectory:(id)directory librarian:(id)librarian repositoryProtectionStrategy:(id)strategy
{
  strategyCopy = strategy;
  librarianCopy = librarian;
  directoryCopy = directory;
  v11 = [[UNCKeyedDataStoreRepository alloc] initWithDirectory:directoryCopy fileName:@"PendingNotifications" pathExtension:@"plist" librarian:librarianCopy repositoryProtectionStrategy:strategyCopy objectIdentifierKey:0 maxObjectsPerKey:[(UNCPendingNotificationRepository *)self _maxObjectsPerKey]];

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("com.apple.usernotificationsserver.PendingNotificationRepository.observable", v12);

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create("com.apple.usernotificationsserver.PendingNotificationRepository.call-out", v14);

  v16 = [[UNCKeyedObservable alloc] initWithQueue:v13 callOutQueue:v15];
  v17 = [(UNCPendingNotificationRepository *)self initWithDataStoreRepository:v11 observable:v16 librarian:librarianCopy];

  return v17;
}

- (UNCPendingNotificationRepository)initWithDataStoreRepository:(id)repository observable:(id)observable librarian:(id)librarian
{
  repositoryCopy = repository;
  observableCopy = observable;
  librarianCopy = librarian;
  v17.receiver = self;
  v17.super_class = UNCPendingNotificationRepository;
  v12 = [(UNCPendingNotificationRepository *)&v17 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.usernotificationsserver.PendingNotificationRepository", v13);
    queue = v12->_queue;
    v12->_queue = v14;

    objc_storeStrong(&v12->_repository, repository);
    objc_storeStrong(&v12->_observable, observable);
    objc_storeStrong(&v12->_librarian, librarian);
  }

  return v12;
}

- (void)addObserver:(id)observer forBundleIdentifier:(id)identifier
{
  observerCopy = observer;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__UNCPendingNotificationRepository_addObserver_forBundleIdentifier___block_invoke;
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
  block[2] = __71__UNCPendingNotificationRepository_removeObserver_forBundleIdentifier___block_invoke;
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
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__UNCPendingNotificationRepository_allBundleIdentifiers__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __56__UNCPendingNotificationRepository_allBundleIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)pendingNotificationRecordsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__UNCPendingNotificationRepository_pendingNotificationRecordsForBundleIdentifier___block_invoke;
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

uint64_t __82__UNCPendingNotificationRepository_pendingNotificationRecordsForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_pendingNotificationRecordsForBundleIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setPendingNotificationRecords:(id)records forBundleIdentifier:(id)identifier
{
  recordsCopy = records;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__UNCPendingNotificationRepository_setPendingNotificationRecords_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = recordsCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = recordsCopy;
  dispatch_async(queue, block);
}

- (void)notificationSourcesDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__UNCPendingNotificationRepository_notificationSourcesDidUninstall___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = uninstallCopy;
  v6 = uninstallCopy;
  dispatch_sync(queue, v7);
}

- (void)removeStoreForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__UNCPendingNotificationRepository_removeStoreForBundleIdentifier___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(queue, v7);
}

- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)unlock
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__UNCPendingNotificationRepository_contentProtectionStateChangedForFirstUnlock___block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)_queue_pendingNotificationDictionariesForBundleIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(UNCKeyedDataStoreRepository *)self->_repository objectsForKey:identifierCopy];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v11 = 138543618;
    v12 = identifierCopy;
    v13 = 2048;
    v14 = [v6 count];
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Load %ld pending notification dictionaries", &v11, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_queue_setPendingNotificationDictionaries:(id)dictionaries forBundleIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  identifierCopy = identifier;
  v8 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v11 = 138543618;
    v12 = identifierCopy;
    v13 = 2048;
    v14 = [dictionariesCopy count];
    _os_log_impl(&dword_1DA7A9000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Save %ld pending notification dictionaries", &v11, 0x16u);
  }

  [(UNCKeyedDataStoreRepository *)self->_repository setObjects:dictionariesCopy forKey:identifierCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_queue_pendingNotificationRecordsForBundleIdentifier:(id)identifier
{
  v3 = [(UNCPendingNotificationRepository *)self _queue_pendingNotificationDictionariesForBundleIdentifier:identifier];
  v4 = [v3 bs_map:UNSDictionaryToNotificationRecord];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (void)_queue_setPendingNotificationRecords:(id)records forBundleIdentifier:(id)identifier
{
  recordsCopy = records;
  identifierCopy = identifier;
  v7 = [(UNCPendingNotificationRepository *)self _queue_pendingNotificationDictionariesForBundleIdentifier:identifierCopy];
  v8 = [v7 bs_map:UNSDictionaryToNotificationRecord];
  if ((UNEqualObjects() & 1) == 0 && ([v8 count] || objc_msgSend(recordsCopy, "count")))
  {
    v9 = [recordsCopy bs_map:UNSNotificationRecordToDictionary];
    [(UNCPendingNotificationRepository *)self _queue_setPendingNotificationDictionaries:v9 forBundleIdentifier:identifierCopy];
    [(UNCPendingNotificationRepository *)self _queue_notifyObserversOfChangesFrom:v8 to:recordsCopy forBundleIdentifier:identifierCopy];
  }
}

- (void)_queue_notifyObserversOfChangesFrom:(id)from to:(id)to forBundleIdentifier:(id)identifier
{
  v66 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  identifierCopy = identifier;
  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = fromCopy;
  v10 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v56;
    v13 = MEMORY[0x1E6983378];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v56 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v55 + 1) + 8 * i);
        identifier = [v15 identifier];
        v17 = [identifier length];

        if (v17)
        {
          identifier2 = [v15 identifier];
          [dictionary setObject:v15 forKey:identifier2];
        }

        else
        {
          identifier2 = [UNSNotificationRecordRemoveUpdate updateWithNotificationRecord:v15 shouldSync:0];
          [array addObject:identifier2];
          v19 = *v13;
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v62 = identifierCopy;
            v63 = 2112;
            v64 = v15;
            _os_log_error_impl(&dword_1DA7A9000, v19, OS_LOG_TYPE_ERROR, "[%{public}@] An invalid notification record was present in the pending notifications store (no identifier present), record=%@", buf, 0x16u);
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v11);
  }

  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v51 = 0u;
  v20 = toCopy;
  v21 = [v20 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v52;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v52 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v51 + 1) + 8 * j);
        identifier3 = [v25 identifier];
        v27 = [dictionary bs_takeObjectForKey:identifier3];

        if (v27)
        {
          if ([v25 isEqual:v27])
          {
            goto LABEL_22;
          }

          v28 = [UNSNotificationRecordReplaceUpdate updateWithNotificationRecord:v25 replacedNotificationRecord:v27 shouldRepost:1];
        }

        else
        {
          v28 = [UNSNotificationRecordAddUpdate updateWithNotificationRecord:v25 shouldSync:1];
        }

        v29 = v28;
        [array addObject:v28];

LABEL_22:
      }

      v22 = [v20 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v22);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  allValues = [dictionary allValues];
  v31 = [allValues countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v48;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(allValues);
        }

        toCopy = [UNSNotificationRecordRemoveUpdate updateWithNotificationRecord:*(*(&v47 + 1) + 8 * k) shouldSync:0, toCopy];
        [array addObject:toCopy];
      }

      v32 = [allValues countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v32);
  }

  observable = self->_observable;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __95__UNCPendingNotificationRepository__queue_notifyObserversOfChangesFrom_to_forBundleIdentifier___block_invoke;
  v44[3] = &unk_1E85D7050;
  v44[4] = self;
  v45 = array;
  v46 = identifierCopy;
  v37 = identifierCopy;
  v38 = array;
  [(UNCKeyedObservable *)observable notifyObserversKey:v37 usingBlock:v44];

  v39 = *MEMORY[0x1E69E9840];
}

- (void)_queue_notificationSourcesDidUninstall:(id)uninstall
{
  v22 = *MEMORY[0x1E69E9840];
  uninstallCopy = uninstall;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [uninstallCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v16;
    v9 = MEMORY[0x1E6983378];
    *&v6 = 138543362;
    v14 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(uninstallCopy);
        }

        bundleIdentifier = [*(*(&v15 + 1) + 8 * v10) bundleIdentifier];
        v12 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          v20 = bundleIdentifier;
          _os_log_impl(&dword_1DA7A9000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remove all pending notification dictionaries", buf, 0xCu);
        }

        [(UNCKeyedDataStoreRepository *)self->_repository removeStoreForKey:bundleIdentifier];

        ++v10;
      }

      while (v7 != v10);
      v7 = [uninstallCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end