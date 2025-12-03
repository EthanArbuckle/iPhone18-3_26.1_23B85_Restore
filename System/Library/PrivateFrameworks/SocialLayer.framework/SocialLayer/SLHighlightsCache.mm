@interface SLHighlightsCache
+ (id)highlightFetchQueue;
+ (id)highlightQueryHandlerQueue;
+ (id)sharedCache;
+ (id)userInitiatedHighlightFetchQueue;
- (NSArray)highlights;
- (NSString)appIdentifier;
- (OS_dispatch_group)initialFetchGroup;
- (SLHighlightsCache)init;
- (SLInteractionHandler)interactionHandler;
- (id)_updateHighlightsWithPreviousUpdateBlock:(id)block debounceInterval:(unint64_t)interval;
- (id)clientUpdateHighlightsBlock;
- (id)currentDelegates;
- (id)systemUpdateHighlightsBlock;
- (void)_fetchAndUpdateHighlightsImmediately;
- (void)_leaveInitialFetchGroupIfNecessary;
- (void)_notifyDelegatesWithNotificationType:(int64_t)type withHighlights:(id)highlights;
- (void)_registerNotifications;
- (void)_updateHighlightsForSystemNotification;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)didDeleteHighlightsOrAttributions;
- (void)fetchHighlightsWithLimit:(unint64_t)limit reason:(id)reason variant:(id)variant completionBlock:(id)block;
- (void)fetchHighlightsWithLimit:(unint64_t)limit variant:(id)variant completionBlock:(id)block;
- (void)interactionHandler;
- (void)removeDelegate:(id)delegate;
- (void)runAfterInitialFetch:(id)fetch onQueue:(id)queue;
- (void)setClientUpdateHighlightsBlock:(id)block;
- (void)setHighlights:(id)highlights;
- (void)setInitialFetchGroup:(id)group;
- (void)setSystemUpdateHighlightsBlock:(id)block;
- (void)updateHighlights;
@end

@implementation SLHighlightsCache

+ (id)sharedCache
{
  WeakRetained = objc_loadWeakRetained(&sSharedCache);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(SLHighlightsCache);
    objc_storeWeak(&sSharedCache, WeakRetained);
  }

  return WeakRetained;
}

- (SLHighlightsCache)init
{
  v19.receiver = self;
  v19.super_class = SLHighlightsCache;
  v2 = [(SLHighlightsCache *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v2->_notificationTokenRefreshHighlights = -1;
    v2->_notificationTokenDeleteHighlights = -1;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.SocialLayer.PropertyQueue", v4);
    threadSafePropertyQueue = v3->_threadSafePropertyQueue;
    v3->_threadSafePropertyQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    highlightsCache = v3->_highlightsCache;
    v3->_highlightsCache = v7;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v3->_delegates;
    v3->_delegates = weakObjectsHashTable;

    v11 = dispatch_group_create();
    initialFetchGroup = v3->_initialFetchGroup;
    v3->_initialFetchGroup = v11;

    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create("com.apple.SocialLayer.InitialFetchWaitingQueue", v13);
    initialFetchWaitingQueue = v3->_initialFetchWaitingQueue;
    v3->_initialFetchWaitingQueue = v14;

    dispatch_group_enter(v3->_initialFetchGroup);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__SLHighlightsCache_init__block_invoke;
    block[3] = &unk_278925D90;
    v18 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return v3;
}

- (void)_fetchAndUpdateHighlightsImmediately
{
  objc_initWeak(&location, self);
  highlights = [(SLHighlightsCache *)self highlights];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__SLHighlightsCache__fetchAndUpdateHighlightsImmediately__block_invoke;
  v5[3] = &unk_278926660;
  objc_copyWeak(&v7, &location);
  v4 = highlights;
  v6 = v4;
  [(SLHighlightsCache *)self fetchHighlightsWithLimit:0x7FFFFFFFFFFFFFFFLL reason:0 variant:0 completionBlock:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)updateHighlights
{
  v3 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "_updateHighlights for client: ", v6, 2u);
  }

  clientUpdateHighlightsBlock = [(SLHighlightsCache *)self clientUpdateHighlightsBlock];
  v5 = [(SLHighlightsCache *)self _updateHighlightsWithPreviousUpdateBlock:clientUpdateHighlightsBlock debounceInterval:0];
  [(SLHighlightsCache *)self setClientUpdateHighlightsBlock:v5];
}

- (id)clientUpdateHighlightsBlock
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__46;
  v11 = __Block_byref_object_dispose__47;
  v12 = 0;
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SLHighlightsCache_clientUpdateHighlightsBlock__block_invoke;
  v6[3] = &unk_278925D18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(threadSafePropertyQueue, v6);

  v4 = _Block_copy(v8[5]);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __48__SLHighlightsCache_clientUpdateHighlightsBlock__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 40));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __40__SLHighlightsCache_highlightFetchQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.SocialLayer.HighlightFetchQueue", v2);
  v1 = highlightFetchQueue_queue;
  highlightFetchQueue_queue = v0;
}

+ (id)highlightFetchQueue
{
  if (highlightFetchQueue_onceToken != -1)
  {
    +[SLHighlightsCache highlightFetchQueue];
  }

  v3 = highlightFetchQueue_queue;

  return v3;
}

- (NSArray)highlights
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__8;
  v7[4] = __Block_byref_object_dispose__8;
  appIdentifier = [(SLHighlightsCache *)self appIdentifier];
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SLHighlightsCache_highlights__block_invoke;
  block[3] = &unk_2789266D8;
  block[4] = self;
  block[5] = &v9;
  block[6] = v7;
  dispatch_sync(threadSafePropertyQueue, block);

  v4 = v10[5];
  _Block_object_dispose(v7, 8);

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (NSString)appIdentifier
{
  appIdentifier = [(SLInteractionHandler *)self->_interactionHandler appIdentifier];
  if (appIdentifier)
  {
    appIdentifier2 = [(SLInteractionHandler *)self->_interactionHandler appIdentifier];
  }

  else
  {
    appIdentifier2 = @"highlights";
  }

  return appIdentifier2;
}

void __31__SLHighlightsCache_highlights__block_invoke(void *a1)
{
  v2 = MEMORY[0x277CBEA60];
  v6 = [*(a1[4] + 24) objectForKey:*(*(a1[6] + 8) + 40)];
  v3 = [v2 arrayWithArray:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)currentDelegates
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__SLHighlightsCache_currentDelegates__block_invoke;
  v6[3] = &unk_278925D18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(threadSafePropertyQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __37__SLHighlightsCache_currentDelegates__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) delegates];
  v2 = [v6 allObjects];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (SLInteractionHandler)interactionHandler
{
  interactionHandler = self->_interactionHandler;
  if (!interactionHandler)
  {
    currentDelegates = [(SLHighlightsCache *)self currentDelegates];
    firstObject = [currentDelegates firstObject];

    if (objc_opt_respondsToSelector())
    {
      appIdentifierForHighlightsCache = [firstObject appIdentifierForHighlightsCache];
      v7 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [SLHighlightsCache interactionHandler];
      }

      if ([appIdentifierForHighlightsCache length])
      {
        v8 = [[SLInteractionHandler alloc] initWithAppIdentifier:appIdentifierForHighlightsCache];
      }

      else
      {
        v8 = objc_alloc_init(SLInteractionHandler);
      }

      v9 = self->_interactionHandler;
      self->_interactionHandler = v8;
    }

    interactionHandler = self->_interactionHandler;
  }

  return interactionHandler;
}

+ (id)highlightQueryHandlerQueue
{
  if (highlightQueryHandlerQueue_onceToken != -1)
  {
    +[SLHighlightsCache highlightQueryHandlerQueue];
  }

  v3 = highlightQueryHandlerQueue_queue;

  return v3;
}

void __47__SLHighlightsCache_highlightQueryHandlerQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.SocialLayer.HighlightQueryHandlerQueue", v2);
  v1 = highlightQueryHandlerQueue_queue;
  highlightQueryHandlerQueue_queue = v0;
}

- (void)_leaveInitialFetchGroupIfNecessary
{
  initialFetchGroup = [(SLHighlightsCache *)self initialFetchGroup];
  if (initialFetchGroup)
  {
    v4 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_INFO, "Leaving initial fetch group to invoke callbacks waiting on the first fetch.", v5, 2u);
    }

    dispatch_group_leave(initialFetchGroup);
    [(SLHighlightsCache *)self setInitialFetchGroup:0];
  }
}

- (OS_dispatch_group)initialFetchGroup
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SLHighlightsCache_initialFetchGroup__block_invoke;
  v6[3] = &unk_278925D18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(threadSafePropertyQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __57__SLHighlightsCache__fetchAndUpdateHighlightsImmediately__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained highlights];
  if (v3)
  {
    v4 = v3;
    v5 = [WeakRetained highlights];
    v6 = [v5 isEqualToArray:*(a1 + 32)];

    if ((v6 & 1) == 0)
    {
      v7 = [WeakRetained currentDelegates];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          v11 = 0;
          do
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * v11);
            if (objc_opt_respondsToSelector())
            {
              [v12 legacyDidAddHighlights];
              v13 = SLFrameworkLogHandle();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v22 = v12;
                _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_DEFAULT, "legacyDidAddHighlights: delegate: %@", buf, 0xCu);
              }
            }

            else
            {
              v13 = SLFrameworkLogHandle();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                __57__SLHighlightsCache__fetchAndUpdateHighlightsImmediately__block_invoke_cold_1(&v15, v16);
              }
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
        }

        while (v9);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_registerNotifications
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277D85DE8];
}

+ (id)userInitiatedHighlightFetchQueue
{
  if (userInitiatedHighlightFetchQueue_onceToken != -1)
  {
    +[SLHighlightsCache userInitiatedHighlightFetchQueue];
  }

  v3 = userInitiatedHighlightFetchQueue_queue;

  return v3;
}

void __53__SLHighlightsCache_userInitiatedHighlightFetchQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.SocialLayer.UserInitiatedHighlightFetchQueue", v2);
  v1 = userInitiatedHighlightFetchQueue_queue;
  userInitiatedHighlightFetchQueue_queue = v0;
}

void __43__SLHighlightsCache__registerNotifications__block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_231772000, v1, OS_LOG_TYPE_DEFAULT, "_updateHighlights for SLSocialHighlightsRefreshedNotification: ", v3, 2u);
  }

  v2 = objc_loadWeakRetained(&to);
  [v2 _updateHighlightsForSystemNotification];

  objc_destroyWeak(&to);
}

- (void)_updateHighlightsForSystemNotification
{
  v3 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "_updateHighlightsForSystemNotification: ", v6, 2u);
  }

  systemUpdateHighlightsBlock = [(SLHighlightsCache *)self systemUpdateHighlightsBlock];
  v5 = [(SLHighlightsCache *)self _updateHighlightsWithPreviousUpdateBlock:systemUpdateHighlightsBlock debounceInterval:5];
  [(SLHighlightsCache *)self setSystemUpdateHighlightsBlock:v5];
}

- (id)systemUpdateHighlightsBlock
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__46;
  v11 = __Block_byref_object_dispose__47;
  v12 = 0;
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SLHighlightsCache_systemUpdateHighlightsBlock__block_invoke;
  v6[3] = &unk_278925D18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(threadSafePropertyQueue, v6);

  v4 = _Block_copy(v8[5]);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __48__SLHighlightsCache_systemUpdateHighlightsBlock__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 48));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)runAfterInitialFetch:(id)fetch onQueue:(id)queue
{
  fetchCopy = fetch;
  queueCopy = queue;
  objc_initWeak(&location, self);
  initialFetchWaitingQueue = [(SLHighlightsCache *)self initialFetchWaitingQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__SLHighlightsCache_runAfterInitialFetch_onQueue___block_invoke;
  v11[3] = &unk_278926638;
  objc_copyWeak(&v14, &location);
  v12 = queueCopy;
  v13 = fetchCopy;
  v9 = fetchCopy;
  v10 = queueCopy;
  dispatch_async(initialFetchWaitingQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __50__SLHighlightsCache_runAfterInitialFetch_onQueue___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained initialFetchGroup];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (v3)
  {
    v4 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v24 = "[SLHighlightsCache runAfterInitialFetch:onQueue:]_block_invoke";
      _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_INFO, "%s Waiting on initial fetch group before running target block.", buf, 0xCu);
    }

    v5 = [WeakRetained initialFetchGroup];
    v6 = dispatch_time(0, 3000000000);
    v7 = dispatch_group_wait(v5, v6);

    if (v7)
    {
      *(v20 + 24) = 1;
    }

    v8 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      if (*(v20 + 24))
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      *buf = 136315394;
      v24 = "[SLHighlightsCache runAfterInitialFetch:onQueue:]_block_invoke";
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_231772000, v8, OS_LOG_TYPE_INFO, "%s Finished waiting on initial fetch group, and invoking target block. didTimeout: %@", buf, 0x16u);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __50__SLHighlightsCache_runAfterInitialFetch_onQueue___block_invoke_28;
    v17[3] = &unk_278926610;
    v10 = v18;
    v11 = *(a1 + 32);
    v18[0] = *(a1 + 40);
    v18[1] = &v19;
    v12 = v17;
  }

  else
  {
    v13 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __50__SLHighlightsCache_runAfterInitialFetch_onQueue___block_invoke_cold_1();
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __50__SLHighlightsCache_runAfterInitialFetch_onQueue___block_invoke_30;
    v15[3] = &unk_278926610;
    v10 = v16;
    v11 = *(a1 + 32);
    v16[0] = *(a1 + 40);
    v16[1] = &v19;
    v12 = v15;
  }

  dispatch_async(v11, v12);

  _Block_object_dispose(&v19, 8);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__SLHighlightsCache_addDelegate___block_invoke;
  v7[3] = &unk_278925CF0;
  v8 = delegateCopy;
  selfCopy = self;
  v6 = delegateCopy;
  dispatch_barrier_sync(threadSafePropertyQueue, v7);
}

uint64_t __33__SLHighlightsCache_addDelegate___block_invoke(uint64_t a1)
{
  v2 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __33__SLHighlightsCache_addDelegate___block_invoke_cold_1(a1);
  }

  return [*(*(a1 + 40) + 56) addObject:*(a1 + 32)];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SLHighlightsCache_removeDelegate___block_invoke;
  v7[3] = &unk_278925CF0;
  v8 = delegateCopy;
  selfCopy = self;
  v6 = delegateCopy;
  dispatch_barrier_sync(threadSafePropertyQueue, v7);
}

uint64_t __36__SLHighlightsCache_removeDelegate___block_invoke(uint64_t a1)
{
  v2 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __36__SLHighlightsCache_removeDelegate___block_invoke_cold_1(a1);
  }

  return [*(*(a1 + 40) + 56) removeObject:*(a1 + 32)];
}

void __43__SLHighlightsCache__registerNotifications__block_invoke_37(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_231772000, v1, OS_LOG_TYPE_DEFAULT, "_updateHighlights for SLScreenTimeConversationDidObserveChangesNotification: ", v3, 2u);
  }

  v2 = objc_loadWeakRetained(&to);
  [v2 _updateHighlightsForSystemNotification];

  objc_destroyWeak(&to);
}

void __43__SLHighlightsCache__registerNotifications__block_invoke_39(uint64_t a1)
{
  v2 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v2, OS_LOG_TYPE_DEFAULT, "SLHighlightsCache notify_register_dispatch: com.apple.spotlight.SyndicatedContentDeleted observed.", buf, 2u);
  }

  objc_copyWeak(&to, (a1 + 32));
  v3 = objc_loadWeakRetained(&to);
  [v3 didDeleteHighlightsOrAttributions];

  objc_destroyWeak(&to);
}

- (id)_updateHighlightsWithPreviousUpdateBlock:(id)block debounceInterval:(unint64_t)interval
{
  blockCopy = block;
  v7 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SLHighlightsCache _updateHighlightsWithPreviousUpdateBlock:debounceInterval:];
  }

  v8 = _Block_copy(blockCopy);
  v9 = v8;
  if (v8)
  {
    dispatch_block_cancel(v8);
  }

  v10 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_DEFAULT, "_updateHighlightsWithPreviousUpdateBlock: ", buf, 2u);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__SLHighlightsCache__updateHighlightsWithPreviousUpdateBlock_debounceInterval___block_invoke;
  block[3] = &unk_278925C50;
  objc_copyWeak(&v17, buf);
  v11 = dispatch_block_create(0, block);
  v12 = dispatch_time(0, 1000000000 * interval);
  v13 = +[SLHighlightsCache highlightFetchQueue];
  dispatch_after(v12, v13, v11);

  v14 = _Block_copy(v11);
  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  return v14;
}

void __79__SLHighlightsCache__updateHighlightsWithPreviousUpdateBlock_debounceInterval___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchAndUpdateHighlightsImmediately];
}

- (void)didDeleteHighlightsOrAttributions
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__SLHighlightsCache_didDeleteHighlightsOrAttributions__block_invoke(uint64_t a1, uint64_t a2)
{
  v60 = *MEMORY[0x277D85DE8];
  if (a2)
  {
LABEL_44:
    v43 = *MEMORY[0x277D85DE8];
    return;
  }

  v3 = [*(a1 + 32) highlights];
  v4 = [v3 count];

  if (v4)
  {
    v5 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __54__SLHighlightsCache_didDeleteHighlightsOrAttributions__block_invoke_cold_1();
    }

    v6 = objc_alloc(MEMORY[0x277CBEB38]);
    v7 = [*(a1 + 32) highlights];
    v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

    v9 = objc_alloc(MEMORY[0x277CBEB38]);
    v10 = [*(a1 + 32) highlights];
    v11 = [v9 initWithCapacity:{objc_msgSend(v10, "count")}];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v12 = *(a1 + 40);
    v13 = [v12 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v54;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v54 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v53 + 1) + 8 * i);
          v18 = [v17 identifier];
          [v8 setObject:v17 forKey:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v14);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v19 = [*(a1 + 32) highlights];
    v20 = [v19 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v50;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v50 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v49 + 1) + 8 * j);
          v25 = [v24 identifier];
          [v11 setObject:v24 forKey:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v21);
    }

    v26 = a1;

    v44 = v11;
    v27 = [v11 allKeys];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v28 = [v8 allKeys];
    v29 = [v28 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v46;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v46 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v45 + 1) + 8 * k);
          v34 = [v27 containsObject:v33];
          v35 = [v8 objectForKey:v33];
          if (v34)
          {
            v36 = [v44 objectForKey:v33];
            if (([v35 isEqual:v36] & 1) == 0)
            {
              *(*(*(v26 + 56) + 8) + 24) = 1;
            }
          }

          else
          {
            [*(*(*(v26 + 48) + 8) + 40) addObject:v35];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v30);
    }

    v37 = [*(*(*(v26 + 48) + 8) + 40) count];
    v38 = SLFrameworkLogHandle();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG);
    if (v37)
    {
      if (v39)
      {
        __54__SLHighlightsCache_didDeleteHighlightsOrAttributions__block_invoke_cold_2(v26 + 48);
      }

      [*(v26 + 32) _notifyDelegatesWithNotificationType:2 withHighlights:*(*(*(v26 + 48) + 8) + 40)];
    }

    else
    {
      if (v39)
      {
        __54__SLHighlightsCache_didDeleteHighlightsOrAttributions__block_invoke_cold_3();
      }
    }

    if (*(*(*(v26 + 56) + 8) + 24) == 1)
    {
      [*(v26 + 32) _notifyDelegatesWithNotificationType:1 withHighlights:0];
    }

    goto LABEL_44;
  }

  v40 = *(a1 + 32);
  v41 = *(a1 + 40);
  v42 = *MEMORY[0x277D85DE8];

  [v40 _notifyDelegatesWithNotificationType:2 withHighlights:v41];
}

- (void)_notifyDelegatesWithNotificationType:(int64_t)type withHighlights:(id)highlights
{
  v49 = *MEMORY[0x277D85DE8];
  highlightsCopy = highlights;
  currentDelegates = [(SLHighlightsCache *)self currentDelegates];
  v8 = currentDelegates;
  switch(type)
  {
    case 2:
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v22 = [currentDelegates countByEnumeratingWithState:&v30 objects:v46 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v31;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v31 != v24)
            {
              objc_enumerationMutation(v8);
            }

            v26 = *(*(&v30 + 1) + 8 * i);
            if (v26 && (v27 = *(*(&v30 + 1) + 8 * i), (objc_opt_respondsToSelector() & 1) != 0))
            {
              [v26 legacyDidRemoveHighlights:highlightsCopy];
            }

            else
            {
              v28 = SLFrameworkLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                [SLHighlightsCache _notifyDelegatesWithNotificationType:v41 withHighlights:?];
              }
            }
          }

          v23 = [v8 countByEnumeratingWithState:&v30 objects:v46 count:16];
        }

        while (v23);
      }

      break;
    case 1:
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v16 = [currentDelegates countByEnumeratingWithState:&v34 objects:v47 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v35;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v35 != v18)
            {
              objc_enumerationMutation(v8);
            }

            v20 = *(*(&v34 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v20 legacyDidAddHighlights];
            }

            else
            {
              v21 = SLFrameworkLogHandle();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                __57__SLHighlightsCache__fetchAndUpdateHighlightsImmediately__block_invoke_cold_1(&v40, v41);
              }
            }
          }

          v17 = [v8 countByEnumeratingWithState:&v34 objects:v47 count:16];
        }

        while (v17);
      }

      break;
    case 0:
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v9 = [currentDelegates countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v43;
        do
        {
          for (k = 0; k != v10; ++k)
          {
            if (*v43 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v42 + 1) + 8 * k);
            v14 = SLFrameworkLogHandle();
            v15 = v14;
            if (v13)
            {
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
              {
                [SLHighlightsCache _notifyDelegatesWithNotificationType:v41 withHighlights:?];
              }

              [v13 highlightsChanged];
            }

            else
            {
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                [SLHighlightsCache _notifyDelegatesWithNotificationType:v39 withHighlights:?];
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v10);
      }

      break;
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)setInitialFetchGroup:(id)group
{
  groupCopy = group;
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SLHighlightsCache_setInitialFetchGroup___block_invoke;
  v7[3] = &unk_278925CF0;
  v7[4] = self;
  v8 = groupCopy;
  v6 = groupCopy;
  dispatch_barrier_sync(threadSafePropertyQueue, v7);
}

- (void)setClientUpdateHighlightsBlock:(id)block
{
  blockCopy = block;
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SLHighlightsCache_setClientUpdateHighlightsBlock___block_invoke;
  v7[3] = &unk_2789266B0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_barrier_sync(threadSafePropertyQueue, v7);
}

uint64_t __52__SLHighlightsCache_setClientUpdateHighlightsBlock___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setSystemUpdateHighlightsBlock:(id)block
{
  blockCopy = block;
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SLHighlightsCache_setSystemUpdateHighlightsBlock___block_invoke;
  v7[3] = &unk_2789266B0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_barrier_sync(threadSafePropertyQueue, v7);
}

uint64_t __52__SLHighlightsCache_setSystemUpdateHighlightsBlock___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setHighlights:(id)highlights
{
  highlightsCopy = highlights;
  highlights = [(SLHighlightsCache *)self highlights];
  v6 = [highlightsCopy isEqualToArray:highlights];

  if ((v6 & 1) == 0)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__8;
    v12[4] = __Block_byref_object_dispose__8;
    appIdentifier = [(SLHighlightsCache *)self appIdentifier];
    threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__SLHighlightsCache_setHighlights___block_invoke;
    block[3] = &unk_278926700;
    block[4] = self;
    v10 = highlightsCopy;
    v11 = v12;
    dispatch_barrier_sync(threadSafePropertyQueue, block);

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__SLHighlightsCache_setHighlights___block_invoke_2;
    v8[3] = &unk_278925D90;
    v8[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v8);

    _Block_object_dispose(v12, 8);
  }
}

void __35__SLHighlightsCache_setHighlights___block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  v3 = [MEMORY[0x277CBEA60] arrayWithArray:a1[5]];
  [v2 setObject:v3 forKey:*(*(a1[6] + 8) + 40)];
}

- (void)fetchHighlightsWithLimit:(unint64_t)limit variant:(id)variant completionBlock:(id)block
{
  v14 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  variantCopy = variant;
  v10 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    limitCopy = limit;
    _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_DEFAULT, "Fetching highlights with limit: %lu", &v12, 0xCu);
  }

  [(SLHighlightsCache *)self fetchHighlightsWithLimit:limit reason:0 variant:variantCopy completionBlock:blockCopy];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)fetchHighlightsWithLimit:(unint64_t)limit reason:(id)reason variant:(id)variant completionBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  variantCopy = variant;
  blockCopy = block;
  v13 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    limitCopy = limit;
    _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_DEFAULT, "Fetching highlights with limit: %lu", buf, 0xCu);
  }

  if ([reasonCopy isEqualToString:@"deleteHighlights"])
  {
    +[SLHighlightsCache userInitiatedHighlightFetchQueue];
  }

  else
  {
    +[SLHighlightsCache highlightFetchQueue];
  }
  v14 = ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SLHighlightsCache_fetchHighlightsWithLimit_reason_variant_completionBlock___block_invoke;
  block[3] = &unk_278926750;
  v20 = variantCopy;
  selfCopy = self;
  v23 = blockCopy;
  limitCopy2 = limit;
  v22 = reasonCopy;
  v15 = blockCopy;
  v16 = reasonCopy;
  v17 = variantCopy;
  dispatch_async(v14, block);

  v18 = *MEMORY[0x277D85DE8];
}

void __77__SLHighlightsCache_fetchHighlightsWithLimit_reason_variant_completionBlock___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (![v2 length])
  {
    v3 = *MEMORY[0x277D3A740];

    v2 = v3;
  }

  v4 = [*(a1 + 40) interactionHandler];
  v5 = *(a1 + 64);
  v6 = *(a1 + 48);
  v19 = 0;
  v7 = [v4 fetchInteractionsWithLimit:v5 reason:v6 variant:v2 error:&v19];
  v8 = v19;

  if (v7)
  {
    v9 = +[SLHighlightsCache highlightQueryHandlerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__SLHighlightsCache_fetchHighlightsWithLimit_reason_variant_completionBlock___block_invoke_2;
    block[3] = &unk_278926728;
    block[4] = *(a1 + 40);
    v16 = v7;
    v18 = *(a1 + 56);
    v17 = v8;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = [v8 localizedDescription];
      v13 = *(a1 + 64);
      v14 = *(a1 + 32);
      *buf = 138412802;
      v21 = v12;
      v22 = 2048;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      _os_log_error_impl(&dword_231772000, v10, OS_LOG_TYPE_ERROR, "Failed to obtain results due to %@. Limit: %lu, Variant: %@", buf, 0x20u);
    }
  }

  [*(a1 + 40) _leaveInitialFetchGroupIfNecessary];

  v11 = *MEMORY[0x277D85DE8];
}

void __77__SLHighlightsCache_fetchHighlightsWithLimit_reason_variant_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 40);
  [*(a1 + 32) setHighlights:*(a1 + 40)];
  v3 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __77__SLHighlightsCache_fetchHighlightsWithLimit_reason_variant_completionBlock___block_invoke_2_cold_1(v2);
  }

  if (*(a1 + 56))
  {
    v4 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __77__SLHighlightsCache_fetchHighlightsWithLimit_reason_variant_completionBlock___block_invoke_2_cold_2();
    }

    v5 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
  }
}

- (void)dealloc
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__SLHighlightsCache_runAfterInitialFetch_onQueue___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __33__SLHighlightsCache_addDelegate___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __36__SLHighlightsCache_removeDelegate___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)interactionHandler
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateHighlightsWithPreviousUpdateBlock:debounceInterval:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__SLHighlightsCache_didDeleteHighlightsOrAttributions__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__SLHighlightsCache_didDeleteHighlightsOrAttributions__block_invoke_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(*(*a1 + 8) + 40) count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_3(&dword_231772000, v1, v2, "SLHighlightsCache didDeleteHighlightsOrAttributions: Notify delegates of deletion of %lu highlights", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __54__SLHighlightsCache_didDeleteHighlightsOrAttributions__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__SLHighlightsCache_fetchHighlightsWithLimit_reason_variant_completionBlock___block_invoke_2_cold_1(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*a1 count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_3(&dword_231772000, v1, v2, "Got %tu results from InteractionHandler", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __77__SLHighlightsCache_fetchHighlightsWithLimit_reason_variant_completionBlock___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end