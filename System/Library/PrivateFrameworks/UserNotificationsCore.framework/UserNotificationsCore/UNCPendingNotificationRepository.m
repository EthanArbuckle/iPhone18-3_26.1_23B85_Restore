@interface UNCPendingNotificationRepository
- (UNCPendingNotificationRepository)initWithDataStoreRepository:(id)a3 observable:(id)a4 librarian:(id)a5;
- (UNCPendingNotificationRepository)initWithDirectory:(id)a3 librarian:(id)a4 repositoryProtectionStrategy:(id)a5;
- (id)_queue_pendingNotificationDictionariesForBundleIdentifier:(id)a3;
- (id)_queue_pendingNotificationRecordsForBundleIdentifier:(id)a3;
- (id)allBundleIdentifiers;
- (id)pendingNotificationRecordsForBundleIdentifier:(id)a3;
- (void)_queue_notificationSourcesDidUninstall:(id)a3;
- (void)_queue_notifyObserversOfChangesFrom:(id)a3 to:(id)a4 forBundleIdentifier:(id)a5;
- (void)_queue_setPendingNotificationDictionaries:(id)a3 forBundleIdentifier:(id)a4;
- (void)_queue_setPendingNotificationRecords:(id)a3 forBundleIdentifier:(id)a4;
- (void)addObserver:(id)a3 forBundleIdentifier:(id)a4;
- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)a3;
- (void)notificationSourcesDidUninstall:(id)a3;
- (void)removeObserver:(id)a3 forBundleIdentifier:(id)a4;
- (void)removeStoreForBundleIdentifier:(id)a3;
- (void)setPendingNotificationRecords:(id)a3 forBundleIdentifier:(id)a4;
@end

@implementation UNCPendingNotificationRepository

- (UNCPendingNotificationRepository)initWithDirectory:(id)a3 librarian:(id)a4 repositoryProtectionStrategy:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[UNCKeyedDataStoreRepository alloc] initWithDirectory:v10 fileName:@"PendingNotifications" pathExtension:@"plist" librarian:v9 repositoryProtectionStrategy:v8 objectIdentifierKey:0 maxObjectsPerKey:[(UNCPendingNotificationRepository *)self _maxObjectsPerKey]];

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("com.apple.usernotificationsserver.PendingNotificationRepository.observable", v12);

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create("com.apple.usernotificationsserver.PendingNotificationRepository.call-out", v14);

  v16 = [[UNCKeyedObservable alloc] initWithQueue:v13 callOutQueue:v15];
  v17 = [(UNCPendingNotificationRepository *)self initWithDataStoreRepository:v11 observable:v16 librarian:v9];

  return v17;
}

- (UNCPendingNotificationRepository)initWithDataStoreRepository:(id)a3 observable:(id)a4 librarian:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = UNCPendingNotificationRepository;
  v12 = [(UNCPendingNotificationRepository *)&v17 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.usernotificationsserver.PendingNotificationRepository", v13);
    queue = v12->_queue;
    v12->_queue = v14;

    objc_storeStrong(&v12->_repository, a3);
    objc_storeStrong(&v12->_observable, a4);
    objc_storeStrong(&v12->_librarian, a5);
  }

  return v12;
}

- (void)addObserver:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__UNCPendingNotificationRepository_addObserver_forBundleIdentifier___block_invoke;
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
  block[2] = __71__UNCPendingNotificationRepository_removeObserver_forBundleIdentifier___block_invoke;
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

- (id)pendingNotificationRecordsForBundleIdentifier:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
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

- (void)setPendingNotificationRecords:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__UNCPendingNotificationRepository_setPendingNotificationRecords_forBundleIdentifier___block_invoke;
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
  v7[2] = __68__UNCPendingNotificationRepository_notificationSourcesDidUninstall___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)removeStoreForBundleIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__UNCPendingNotificationRepository_removeStoreForBundleIdentifier___block_invoke;
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
  block[2] = __80__UNCPendingNotificationRepository_contentProtectionStateChangedForFirstUnlock___block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)_queue_pendingNotificationDictionariesForBundleIdentifier:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UNCKeyedDataStoreRepository *)self->_repository objectsForKey:v4];
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
    v12 = v4;
    v13 = 2048;
    v14 = [v6 count];
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Load %ld pending notification dictionaries", &v11, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_queue_setPendingNotificationDictionaries:(id)a3 forBundleIdentifier:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v11 = 138543618;
    v12 = v7;
    v13 = 2048;
    v14 = [v6 count];
    _os_log_impl(&dword_1DA7A9000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Save %ld pending notification dictionaries", &v11, 0x16u);
  }

  [(UNCKeyedDataStoreRepository *)self->_repository setObjects:v6 forKey:v7];

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_queue_pendingNotificationRecordsForBundleIdentifier:(id)a3
{
  v3 = [(UNCPendingNotificationRepository *)self _queue_pendingNotificationDictionariesForBundleIdentifier:a3];
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

- (void)_queue_setPendingNotificationRecords:(id)a3 forBundleIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(UNCPendingNotificationRepository *)self _queue_pendingNotificationDictionariesForBundleIdentifier:v6];
  v8 = [v7 bs_map:UNSDictionaryToNotificationRecord];
  if ((UNEqualObjects() & 1) == 0 && ([v8 count] || objc_msgSend(v10, "count")))
  {
    v9 = [v10 bs_map:UNSNotificationRecordToDictionary];
    [(UNCPendingNotificationRepository *)self _queue_setPendingNotificationDictionaries:v9 forBundleIdentifier:v6];
    [(UNCPendingNotificationRepository *)self _queue_notifyObserversOfChangesFrom:v8 to:v10 forBundleIdentifier:v6];
  }
}

- (void)_queue_notifyObserversOfChangesFrom:(id)a3 to:(id)a4 forBundleIdentifier:(id)a5
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v40 = a4;
  v42 = a5;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v7;
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
        v16 = [v15 identifier];
        v17 = [v16 length];

        if (v17)
        {
          v18 = [v15 identifier];
          [v9 setObject:v15 forKey:v18];
        }

        else
        {
          v18 = [UNSNotificationRecordRemoveUpdate updateWithNotificationRecord:v15 shouldSync:0];
          [v8 addObject:v18];
          v19 = *v13;
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v62 = v42;
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
  v20 = v40;
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
        v26 = [v25 identifier];
        v27 = [v9 bs_takeObjectForKey:v26];

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
        [v8 addObject:v28];

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
  v30 = [v9 allValues];
  v31 = [v30 countByEnumeratingWithState:&v47 objects:v59 count:16];
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
          objc_enumerationMutation(v30);
        }

        v35 = [UNSNotificationRecordRemoveUpdate updateWithNotificationRecord:*(*(&v47 + 1) + 8 * k) shouldSync:0, v40];
        [v8 addObject:v35];
      }

      v32 = [v30 countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v32);
  }

  observable = self->_observable;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __95__UNCPendingNotificationRepository__queue_notifyObserversOfChangesFrom_to_forBundleIdentifier___block_invoke;
  v44[3] = &unk_1E85D7050;
  v44[4] = self;
  v45 = v8;
  v46 = v42;
  v37 = v42;
  v38 = v8;
  [(UNCKeyedObservable *)observable notifyObserversKey:v37 usingBlock:v44];

  v39 = *MEMORY[0x1E69E9840];
}

- (void)_queue_notificationSourcesDidUninstall:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
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
          objc_enumerationMutation(v4);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) bundleIdentifier];
        v12 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          v20 = v11;
          _os_log_impl(&dword_1DA7A9000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remove all pending notification dictionaries", buf, 0xCu);
        }

        [(UNCKeyedDataStoreRepository *)self->_repository removeStoreForKey:v11];

        ++v10;
      }

      while (v7 != v10);
      v7 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end