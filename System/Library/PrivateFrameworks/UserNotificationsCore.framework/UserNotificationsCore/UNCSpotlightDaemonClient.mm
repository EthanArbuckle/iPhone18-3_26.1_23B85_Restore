@interface UNCSpotlightDaemonClient
+ (id)sharedInstance;
- (UNCSpotlightDaemonClient)init;
- (uint64_t)init;
- (void)addObserver:(id)a3;
- (void)provideDataForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)provideFileURLForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)reindexAllItemsForBundleID:(id)a3 protectionClass:(id)a4 acknowledgementHandler:(id)a5;
- (void)reindexItemsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 acknowledgementHandler:(id)a6;
- (void)searchableItemsDidUpdate:(id)a3 mask:(int64_t)a4;
@end

@implementation UNCSpotlightDaemonClient

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[UNCSpotlightDaemonClient sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __42__UNCSpotlightDaemonClient_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(UNCSpotlightDaemonClient);

  return MEMORY[0x1EEE66BB8]();
}

- (UNCSpotlightDaemonClient)init
{
  v10.receiver = self;
  v10.super_class = UNCSpotlightDaemonClient;
  v2 = [(UNCSpotlightDaemonClient *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = v2;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v6 = getSpotlightDaemonClientRegisterSymbolLoc_ptr;
    v19 = getSpotlightDaemonClientRegisterSymbolLoc_ptr;
    if (!getSpotlightDaemonClientRegisterSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __getSpotlightDaemonClientRegisterSymbolLoc_block_invoke;
      v14 = &unk_1E85D6DE8;
      v15 = &v16;
      __getSpotlightDaemonClientRegisterSymbolLoc_block_invoke(buf);
      v6 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    if (!v6)
    {
      v9 = [UNCSpotlightDaemonClient init];
      _Block_object_dispose(&v16, 8);
      _Unwind_Resume(v9);
    }

    v6(@"com.apple.corespotlight.daemon.notifications", v5);

    v7 = *MEMORY[0x1E69833A8];
    if (os_log_type_enabled(*MEMORY[0x1E69833A8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "Registered as Spotlight client", buf, 2u);
    }
  }

  return v2;
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers addObject:v5];
  objc_sync_exit(v4);
}

- (void)provideDataForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  if (a8)
  {
    (*(a8 + 2))(a8, 0, 0);
  }
}

- (void)provideFileURLForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  if (a8)
  {
    (*(a8 + 2))(a8, 0, 0);
  }
}

- (void)reindexAllItemsForBundleID:(id)a3 protectionClass:(id)a4 acknowledgementHandler:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5);
  }
}

- (void)reindexItemsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 acknowledgementHandler:(id)a6
{
  if (a6)
  {
    (*(a6 + 2))(a6);
  }
}

- (void)searchableItemsDidUpdate:(id)a3 mask:(int64_t)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28 = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v5)
  {
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = MEMORY[0x1E696AEC0];
        v10 = objc_opt_class();
        v11 = [v8 uniqueIdentifier];
        v12 = [v8 attributeSet];
        v13 = [v12 summarizationStatus];
        v14 = [v8 attributeSet];
        v15 = [v9 stringWithFormat:@"<%@:%p, %@, %d, %d>", v10, v8, v11, v13, objc_msgSend(v14, "urgencyStatus")];
        [v28 addObject:v15];
      }

      v5 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v5);
  }

  v16 = MEMORY[0x1E69833A8];
  v17 = *MEMORY[0x1E69833A8];
  if (os_log_type_enabled(*MEMORY[0x1E69833A8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v39 = a4;
    v40 = 2112;
    v41 = v28;
    _os_log_impl(&dword_1DA7A9000, v17, OS_LOG_TYPE_DEFAULT, "SpotlightDaemonClient searchableItemsDidUpdate: %lu, %@", buf, 0x16u);
  }

  if (a4)
  {
    v18 = self->_observers;
    objc_sync_enter(v18);
    if ([(NSHashTable *)self->_observers count])
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v19 = self->_observers;
      v20 = [(NSHashTable *)v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v20)
      {
        v21 = *v30;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v29 + 1) + 8 * j) searchableItemsDidUpdate:obj];
          }

          v20 = [(NSHashTable *)v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v20);
      }
    }

    else
    {
      v23 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        [UNCSpotlightDaemonClient searchableItemsDidUpdate:v23 mask:?];
      }
    }

    objc_sync_exit(v18);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (uint64_t)init
{
  dlerror();
  v0 = abort_report_np();
  return [UNCSpotlightDaemonClient searchableItemsDidUpdate:v0 mask:?];
}

@end