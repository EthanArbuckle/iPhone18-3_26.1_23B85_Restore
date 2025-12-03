@interface RMStatusPublisherDelegate
+ (id)sharedDelegateWithPublisherClass:(Class)class;
- (RMStatusPublisherDelegate)initWithPublisherClass:(Class)class;
- (id)_filterSupportedStatus:(id)status store:(id)store unsupported:(id)unsupported;
- (void)fetchStatusForStatusKeys:(id)keys store:(id)store completionHandler:(id)handler;
@end

@implementation RMStatusPublisherDelegate

+ (id)sharedDelegateWithPublisherClass:(Class)class
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RMStatusPublisherDelegate_sharedDelegateWithPublisherClass___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  block[4] = class;
  if (sharedDelegateWithPublisherClass__onceToken != -1)
  {
    dispatch_once(&sharedDelegateWithPublisherClass__onceToken, block);
  }

  v3 = sharedDelegateWithPublisherClass__delegate;

  return v3;
}

uint64_t __62__RMStatusPublisherDelegate_sharedDelegateWithPublisherClass___block_invoke(uint64_t a1)
{
  sharedDelegateWithPublisherClass__delegate = [[RMStatusPublisherDelegate alloc] initWithPublisherClass:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

- (RMStatusPublisherDelegate)initWithPublisherClass:(Class)class
{
  v15.receiver = self;
  v15.super_class = RMStatusPublisherDelegate;
  v4 = [(RMStatusPublisherDelegate *)&v15 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_publisherClass, class);
    v6 = dispatch_queue_create("com.apple.rmstore.publisher", 0);
    publisherQueue = v5->_publisherQueue;
    v5->_publisherQueue = v6;

    v8 = MEMORY[0x277D45F78];
    v9 = MEMORY[0x277CCACA8];
    v10 = NSStringFromClass([(RMStatusPublisherDelegate *)v5 publisherClass]);
    v11 = [v9 stringWithFormat:@"Shared lock for %@", v10];
    v12 = [v8 newSharedLockWithDescription:v11];
    fetchLock = v5->_fetchLock;
    v5->_fetchLock = v12;
  }

  return v5;
}

- (void)fetchStatusForStatusKeys:(id)keys store:(id)store completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  storeCopy = store;
  handlerCopy = handler;
  v11 = self->_fetchLock;
  [(RMSharedLock *)v11 lock];
  v12 = NSStringFromClass([(RMStatusPublisherDelegate *)self publisherClass]);
  statusPublisherDelegate = [MEMORY[0x277D45F58] statusPublisherDelegate];
  if (os_log_type_enabled(statusPublisherDelegate, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v33 = v12;
    v34 = 2114;
    v35 = keysCopy;
    _os_log_impl(&dword_261E36000, statusPublisherDelegate, OS_LOG_TYPE_DEFAULT, "Publisher %{public}@ starting processing status keys: %{public}@", buf, 0x16u);
  }

  v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v15 = [(RMStatusPublisherDelegate *)self _filterSupportedStatus:keysCopy store:storeCopy unsupported:v14];
  if ([v14 count])
  {
    statusPublisherDelegate2 = [MEMORY[0x277D45F58] statusPublisherDelegate];
    if (os_log_type_enabled(statusPublisherDelegate2, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [v14 allKeys];
      *buf = 138543618;
      v33 = v12;
      v34 = 2114;
      v35 = allKeys;
      _os_log_impl(&dword_261E36000, statusPublisherDelegate2, OS_LOG_TYPE_DEFAULT, "Publisher %{public}@ unsupported status keys: %{public}@", buf, 0x16u);
    }
  }

  if ([v15 count])
  {
    [(RMStatusPublisherDelegate *)self publisherClass];
    v18 = objc_opt_new();
    publisherQueue = [(RMStatusPublisherDelegate *)self publisherQueue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __78__RMStatusPublisherDelegate_fetchStatusForStatusKeys_store_completionHandler___block_invoke;
    v23[3] = &unk_279B05E20;
    v24 = v18;
    v25 = v15;
    v26 = storeCopy;
    v27 = v12;
    v28 = keysCopy;
    v29 = v14;
    v31 = handlerCopy;
    v30 = v11;
    statusPublisherDelegate4 = v18;
    dispatch_async(publisherQueue, v23);
  }

  else
  {
    statusPublisherDelegate3 = [MEMORY[0x277D45F58] statusPublisherDelegate];
    if (os_log_type_enabled(statusPublisherDelegate3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = v12;
      _os_log_impl(&dword_261E36000, statusPublisherDelegate3, OS_LOG_TYPE_DEFAULT, "Publisher %{public}@ has no valid status keys to process", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, v14, 0);
    [(RMSharedLock *)v11 unlock];
    statusPublisherDelegate4 = [MEMORY[0x277D45F58] statusPublisherDelegate];
    if (os_log_type_enabled(statusPublisherDelegate4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261E36000, statusPublisherDelegate4, OS_LOG_TYPE_DEFAULT, "Fetching complete.", buf, 2u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __78__RMStatusPublisherDelegate_fetchStatusForStatusKeys_store_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__RMStatusPublisherDelegate_fetchStatusForStatusKeys_store_completionHandler___block_invoke_2;
  v11[3] = &unk_279B05DF8;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v14 = *(a1 + 88);
  v8 = *(a1 + 80);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v12 = v10;
  v13 = v9;
  [v2 queryForStatusWithKeyPaths:v3 store:v4 completionHandler:v11];
}

void __78__RMStatusPublisherDelegate_fetchStatusForStatusKeys_store_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D45F58];
  v6 = a3;
  v7 = a2;
  v8 = [v5 statusPublisherDelegate];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v14 = 138543618;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_261E36000, v8, OS_LOG_TYPE_DEFAULT, "Publisher %{public}@ finished processing status keys: %{public}@", &v14, 0x16u);
  }

  [*(a1 + 48) addEntriesFromDictionary:v7];
  v11 = *(a1 + 48);
  (*(*(a1 + 64) + 16))();

  [*(a1 + 56) unlock];
  v12 = [MEMORY[0x277D45F58] statusPublisherDelegate];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_261E36000, v12, OS_LOG_TYPE_DEFAULT, "Fetching complete.", &v14, 2u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_filterSupportedStatus:(id)status store:(id)store unsupported:(id)unsupported
{
  v27 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  storeCopy = store;
  unsupportedCopy = unsupported;
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(statusCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = statusCopy;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [MEMORY[0x277D46040] stubObjectForStatusItemType:v15];
        if (v16)
        {
          if ([storeCopy isValidStatusItem:v16])
          {
            [v21 addObject:v15];
            goto LABEL_12;
          }

          v17 = [MEMORY[0x277D45F40] createDisallowedStatusValueErrorWithKeyPath:v15];
        }

        else
        {
          v17 = [MEMORY[0x277D45F40] createUnsupportedStatusValueErrorWithKeyPath:v15];
        }

        v18 = v17;
        [unsupportedCopy setObject:v17 forKeyedSubscript:v15];

LABEL_12:
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v21;
}

@end