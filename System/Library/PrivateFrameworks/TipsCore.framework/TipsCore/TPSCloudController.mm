@interface TPSCloudController
+ (id)sharedInstance;
- (BOOL)isHintDisplayedForContentID:(id)d;
- (TPSCloudController)init;
- (id)_listDisplayContentIDs;
- (void)_clearDisplayedContentIDs;
- (void)checkForUpdates;
- (void)dealloc;
- (void)hintDisplayedForContentID:(id)d;
- (void)registerForNotifications:(id)notifications;
- (void)updateKVStoreItems:(id)items;
@end

@implementation TPSCloudController

+ (id)sharedInstance
{
  if (sharedInstance_predicate != -1)
  {
    +[TPSCloudController sharedInstance];
  }

  v3 = sharedInstance_gTPSCloudController;

  return v3;
}

uint64_t __36__TPSCloudController_sharedInstance__block_invoke()
{
  sharedInstance_gTPSCloudController = objc_alloc_init(TPSCloudController);

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  defaultStore = [MEMORY[0x1E696AFB8] defaultStore];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E696A9E8] object:defaultStore];

  v5.receiver = self;
  v5.super_class = TPSCloudController;
  [(TPSCloudController *)&v5 dealloc];
}

- (TPSCloudController)init
{
  v9.receiver = self;
  v9.super_class = TPSCloudController;
  v2 = [(TPSCloudController *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.tipsd.cloudQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [MEMORY[0x1E695DFA8] set];
    displayedContentIDs = v2->_displayedContentIDs;
    v2->_displayedContentIDs = v6;

    [(TPSCloudController *)v2 checkForUpdates];
  }

  return v2;
}

- (void)checkForUpdates
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__TPSCloudController_checkForUpdates__block_invoke;
  block[3] = &unk_1E8101340;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __37__TPSCloudController_checkForUpdates__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AFB8] defaultStore];
  [v2 synchronize];
  v3 = [v2 objectForKey:@"TPSDCloudHintDisplayed"];
  v4 = [MEMORY[0x1E695DFA8] setWithArray:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;

  if (v3)
  {
    v7 = +[TPSLogger daemon];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1C00A7000, v7, OS_LOG_TYPE_DEFAULT, "Current cloud identifiers %@", &v10, 0xCu);
    }
  }

  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v8 setObject:v3 forKey:@"TPSDCloudHintDisplayed"];
  [v8 synchronize];

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isHintDisplayedForContentID:(id)d
{
  dCopy = d;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__TPSCloudController_isHintDisplayedForContentID___block_invoke;
  v7[3] = &unk_1E8101368;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue, v7);
  LOBYTE(self) = [v9[5] containsObject:dCopy];
  _Block_object_dispose(&v8, 8);

  return self;
}

- (void)hintDisplayedForContentID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__TPSCloudController_hintDisplayedForContentID___block_invoke;
  v7[3] = &unk_1E8101390;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(queue, v7);
}

void __48__TPSCloudController_hintDisplayedForContentID___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  [v2 addObject:*(a1 + 40)];
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [*(*(a1 + 32) + 24) allObjects];
  [v6 setValue:v7 forKey:@"TPSDCloudHintDisplayed"];

  [v6 synchronize];
  v8 = [MEMORY[0x1E696AFB8] defaultStore];
  [*(a1 + 32) registerForNotifications:v8];
  v9 = [*(*(a1 + 32) + 24) allObjects];
  v10 = +[TPSLogger daemon];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_1C00A7000, v10, OS_LOG_TYPE_DEFAULT, "Synchronizing displayed content IDs to KVS store: %@", &v12, 0xCu);
  }

  [v8 setArray:v9 forKey:@"TPSDCloudHintDisplayed"];
  [v8 synchronize];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_listDisplayContentIDs
{
  defaultStore = [MEMORY[0x1E696AFB8] defaultStore];
  [defaultStore synchronize];
  dictionaryRepresentation = [defaultStore dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)_clearDisplayedContentIDs
{
  v14 = *MEMORY[0x1E69E9840];
  defaultStore = [MEMORY[0x1E696AFB8] defaultStore];
  v3 = +[TPSLogger daemon];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(defaultStore, "synchronize")}];
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_1C00A7000, v3, OS_LOG_TYPE_DEFAULT, "Synchronizing: %@", &v12, 0xCu);
  }

  dictionaryRepresentation = [defaultStore dictionaryRepresentation];
  v6 = +[TPSLogger daemon];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = dictionaryRepresentation;
    _os_log_impl(&dword_1C00A7000, v6, OS_LOG_TYPE_DEFAULT, "Current state: %@", &v12, 0xCu);
  }

  [defaultStore setArray:MEMORY[0x1E695E0F0] forKey:@"TPSDCloudHintDisplayed"];
  v7 = +[TPSLogger daemon];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(defaultStore, "synchronize")}];
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_1C00A7000, v7, OS_LOG_TYPE_DEFAULT, "Saving: %@", &v12, 0xCu);
  }

  v9 = +[TPSLogger daemon];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    dictionaryRepresentation2 = [defaultStore dictionaryRepresentation];
    v12 = 138412290;
    v13 = dictionaryRepresentation2;
    _os_log_impl(&dword_1C00A7000, v9, OS_LOG_TYPE_DEFAULT, "After state: %@", &v12, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)registerForNotifications:(id)notifications
{
  if (!self->_registered)
  {
    v4 = MEMORY[0x1E696AD88];
    notificationsCopy = notifications;
    defaultCenter = [v4 defaultCenter];
    [defaultCenter addObserver:self selector:sel_updateKVStoreItems_ name:*MEMORY[0x1E696A9E8] object:notificationsCopy];

    self->_registered = 1;
  }
}

- (void)updateKVStoreItems:(id)items
{
  itemsCopy = items;
  v5 = [TPSAnalyticsEventDaemonActive eventWithReason:@"cloudSync" alreadyRunning:1];
  [v5 log];

  userInfo = [itemsCopy userInfo];

  v7 = [userInfo objectForKey:*MEMORY[0x1E696A9D8]];
  v8 = v7;
  if (v7 && [v7 integerValue] <= 1)
  {
    queue = self->_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__TPSCloudController_updateKVStoreItems___block_invoke;
    v10[3] = &unk_1E8101390;
    v11 = userInfo;
    selfCopy = self;
    dispatch_sync(queue, v10);
  }
}

void __41__TPSCloudController_updateKVStoreItems___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x1E696A9E0]];
  v3 = [MEMORY[0x1E696AFB8] defaultStore];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v3 objectForKey:{v10, v17}];
        [v4 setObject:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [v4 synchronize];
  v12 = [v3 objectForKey:@"TPSDCloudHintDisplayed"];
  v13 = [MEMORY[0x1E695DFA8] setWithArray:v12];
  v14 = *(a1 + 40);
  v15 = *(v14 + 24);
  *(v14 + 24) = v13;

  v16 = *MEMORY[0x1E69E9840];
}

@end