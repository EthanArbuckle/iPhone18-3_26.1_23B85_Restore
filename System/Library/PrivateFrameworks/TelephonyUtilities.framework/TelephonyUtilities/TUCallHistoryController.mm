@interface TUCallHistoryController
+ (TUCallHistoryController)callHistoryControllerWithCoalescingStrategy:(unint64_t)strategy options:(unint64_t)options;
+ (TUCallHistoryController)sharedController;
+ (id)sharedControllerWithCoalescingStrategy:(unint64_t)strategy options:(unint64_t)options;
+ (void)sharedController;
- (BOOL)canLoadOlderRecentCalls;
- (NSArray)recentCalls;
- (NSOperationQueue)searchQueue;
- (TUCallHistoryController)init;
- (TUCallHistoryController)initWithCoalescingStrategy:(unint64_t)strategy options:(unint64_t)options dataSource:(id)source shouldUpdateMetadataCache:(BOOL)cache;
- (id)_callHistoryCoalescingStrategyForCoalescingStrategy:(unint64_t)strategy;
- (id)callHistoryManagerInitializationDispatchBlock;
- (id)callHistoryManagerLoadOlderRecentCallsDispatchBlock;
- (id)callHistoryManagerRecentCallsDispatchBlock;
- (id)callsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size;
- (id)recentCallsWithPredicate:(id)predicate;
- (int64_t)callHistoryControllerCallHistoryFetchLimit;
- (unint64_t)coalescingStrategy;
- (unint64_t)options;
- (unint64_t)unreadCallCount;
- (void)_updateCallHistoryManagerUsingCurrentOptions;
- (void)boostQualityOfService;
- (void)callHistoryDatabaseChanged:(id)changed;
- (void)cancelSearchFetchOperations;
- (void)dealloc;
- (void)deleteAllRecentCalls;
- (void)deleteRecentCall:(id)call;
- (void)deleteRecentCalls:(id)calls;
- (void)dispatcherDidFinishBoost:(id)boost;
- (void)loadDispatchQueue;
- (void)loadOlderRecentCalls;
- (void)markRecentAudioCallsAsRead;
- (void)markRecentCallsAsReadWithPredicate:(id)predicate;
- (void)markRecentVideoCallsAsRead;
- (void)markUnreadRecentCallsAsReadWithPredicate:(id)predicate;
- (void)providersChangedForProviderManager:(id)manager;
- (void)setCallHistoryManager:(id)manager;
- (void)setCoalescingStrategy:(unint64_t)strategy;
- (void)setOptions:(unint64_t)options;
- (void)setPreFetchingPredicate:(id)predicate;
- (void)setRecentCalls:(id)calls;
- (void)setUnreadCallCount:(unint64_t)count;
- (void)updateReminderUUID:(id)d forRecentCall:(id)call;
@end

@implementation TUCallHistoryController

- (void)loadDispatchQueue
{
  dispatcher = [(TUCallHistoryController *)self dispatcher];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__TUCallHistoryController_loadDispatchQueue__block_invoke;
  v8[3] = &unk_1E7424950;
  v8[4] = self;
  [dispatcher dispatchAsynchronousBlock:v8];

  dispatcher2 = [(TUCallHistoryController *)self dispatcher];
  callHistoryManagerInitializationDispatchBlock = [(TUCallHistoryController *)self callHistoryManagerInitializationDispatchBlock];
  [dispatcher2 dispatchAsynchronousBlock:callHistoryManagerInitializationDispatchBlock];

  dispatcher3 = [(TUCallHistoryController *)self dispatcher];
  callHistoryManagerRecentCallsDispatchBlock = [(TUCallHistoryController *)self callHistoryManagerRecentCallsDispatchBlock];
  [dispatcher3 dispatchAsynchronousBlock:callHistoryManagerRecentCallsDispatchBlock];
}

- (id)callHistoryManagerRecentCallsDispatchBlock
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__TUCallHistoryController_callHistoryManagerRecentCallsDispatchBlock__block_invoke;
  aBlock[3] = &unk_1E7424950;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = _Block_copy(v2);

  return v3;
}

void __44__TUCallHistoryController_loadDispatchQueue__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) callProviderManager];
  v2 = [v3 providersPassingTest:&__block_literal_global_9];
  [*(a1 + 32) setThirdPartyCallProviders:v2];
}

- (id)callHistoryManagerInitializationDispatchBlock
{
  coalescingStrategy = self->_coalescingStrategy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__TUCallHistoryController_callHistoryManagerInitializationDispatchBlock__block_invoke;
  v6[3] = &unk_1E7425340;
  v6[4] = self;
  v6[5] = coalescingStrategy;
  v3 = _Block_copy(v6);
  v4 = _Block_copy(v3);

  return v4;
}

void __72__TUCallHistoryController_callHistoryManagerInitializationDispatchBlock__block_invoke(uint64_t a1)
{
  v2 = CUTWeakLinkClass();
  if (v2)
  {
    v3 = v2;
    v8 = getkCHCoalescingStrategyRecents();
    v4 = objc_alloc_init(v3);
    [*(a1 + 32) setCallHistoryManager:v4];

    v5 = [*(a1 + 32) _callHistoryCoalescingStrategyForCoalescingStrategy:*(a1 + 40)];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v8;
    }

    v7 = [*(a1 + 32) callHistoryManager];
    [v7 setCoalescingStrategy:v6];

    [*(a1 + 32) _updateCallHistoryManagerUsingCurrentOptions];
  }
}

void __69__TUCallHistoryController_callHistoryManagerRecentCallsDispatchBlock__block_invoke(uint64_t a1)
{
  v2 = +[TUCallCapabilities supportsDisplayingFaceTimeAudioCalls];
  v3 = TUDefaultLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Call History supports displaying FaceTime Audio calls", buf, 2u);
    }

    v5 = [*(a1 + 32) callHistoryManager];
    v6 = [v5 recentCalls];
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Call History does not support displaying FaceTime Audio calls", buf, 2u);
    }

    v5 = getkCHServiceProviderFaceTime();
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"!(mediaType == %@ && serviceProvider == %@)", &unk_1F09C5E18, v5];
    v8 = [*(a1 + 32) callHistoryManager];
    v6 = [v8 recentCallsWithPredicate:v7];
  }

  v9 = [*(a1 + 32) callHistoryControllerCallHistoryFetchLimit];
  v10 = [v6 count];
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = [v6 subarrayWithRange:{0, v11}];
  [*(a1 + 32) setRecentCalls:v12];
  v13 = [*(a1 + 32) metadataPreCachedOptions];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1 + 32) + 24)];
  v15 = [v13 containsObject:v14];

  if ((v15 & 1) == 0)
  {
    v16 = [*(a1 + 32) metadataPreCachedOptions];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1 + 32) + 24)];
    [v16 addObject:v17];

    if ([*(a1 + 32) shouldUpdateMetadataCache])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__TUCallHistoryController_callHistoryManagerRecentCallsDispatchBlock__block_invoke_64;
      block[3] = &unk_1E7424950;
      v21 = v12;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  v18 = [getCHRecentCallClass() predicateForCallsWithStatusRead:0];
  v19 = [*(a1 + 32) callHistoryManager];
  [*(a1 + 32) setUnreadCallCount:{objc_msgSend(v19, "callCountWithPredicate:", v18)}];
}

- (NSArray)recentCalls
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__TUCallHistoryController_recentCalls__block_invoke;
  v7[3] = &unk_1E7425318;
  v7[4] = self;
  v7[5] = &v8;
  v3 = _Block_copy(v7);
  dispatcher = [(TUCallHistoryController *)self dispatcher];
  [dispatcher dispatchSynchronousBlock:v3];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)_updateCallHistoryManagerUsingCurrentOptions
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCHLimitServiceProviderKey(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"TUCallHistoryController.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

- (int64_t)callHistoryControllerCallHistoryFetchLimit
{
  featureFlags = [(TUCallHistoryController *)self featureFlags];
  if ([featureFlags increaseCallHistoryEnabled])
  {
    v3 = 2000;
  }

  else
  {
    v3 = 100;
  }

  return v3;
}

- (unint64_t)unreadCallCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  simpleIvarDispatcher = [(TUCallHistoryController *)self simpleIvarDispatcher];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__TUCallHistoryController_unreadCallCount__block_invoke;
  v6[3] = &unk_1E7425318;
  v6[4] = self;
  v6[5] = &v7;
  [simpleIvarDispatcher dispatchSynchronousBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (NSOperationQueue)searchQueue
{
  searchQueue = self->_searchQueue;
  if (!searchQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v5 = self->_searchQueue;
    self->_searchQueue = v4;

    [(NSOperationQueue *)self->_searchQueue setMaxConcurrentOperationCount:1];
    searchQueue = self->_searchQueue;
  }

  return searchQueue;
}

- (BOOL)canLoadOlderRecentCalls
{
  featureFlags = [(TUCallHistoryController *)self featureFlags];
  if ([featureFlags increaseCallHistoryEnabled])
  {
    callHistoryManager = [(TUCallHistoryController *)self callHistoryManager];
    canLoadOlderRecentCalls = [callHistoryManager canLoadOlderRecentCalls];
  }

  else
  {
    canLoadOlderRecentCalls = 0;
  }

  return canLoadOlderRecentCalls;
}

- (void)loadOlderRecentCalls
{
  dispatcher = [(TUCallHistoryController *)self dispatcher];
  callHistoryManagerLoadOlderRecentCallsDispatchBlock = [(TUCallHistoryController *)self callHistoryManagerLoadOlderRecentCallsDispatchBlock];
  [dispatcher dispatchAsynchronousBlock:callHistoryManagerLoadOlderRecentCallsDispatchBlock];
}

- (id)callHistoryManagerLoadOlderRecentCallsDispatchBlock
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__TUCallHistoryController_callHistoryManagerLoadOlderRecentCallsDispatchBlock__block_invoke;
  aBlock[3] = &unk_1E7424950;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = _Block_copy(v2);

  return v3;
}

void __78__TUCallHistoryController_callHistoryManagerLoadOlderRecentCallsDispatchBlock__block_invoke(uint64_t a1)
{
  v2 = +[TUCallCapabilities supportsDisplayingFaceTimeAudioCalls];
  v3 = TUDefaultLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Call History supports displaying FaceTime Audio calls", buf, 2u);
    }

    v5 = [*(a1 + 32) callHistoryManager];
    v6 = [v5 loadOlderRecentCalls];
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Call History does not support displaying FaceTime Audio calls", buf, 2u);
    }

    v5 = getkCHServiceProviderFaceTime();
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"!(mediaType == %@ && serviceProvider == %@)", &unk_1F09C5E18, v5];
    v8 = [*(a1 + 32) callHistoryManager];
    v6 = [v8 loadOlderRecentCallsWithPredicate:v7];
  }

  v9 = [*(a1 + 32) callHistoryControllerCallHistoryFetchLimit];
  v10 = [v6 count];
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = [v6 subarrayWithRange:{0, v11}];
  [*(a1 + 32) setRecentCalls:v12];
  v13 = [*(a1 + 32) metadataPreCachedOptions];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1 + 32) + 24)];
  v15 = [v13 containsObject:v14];

  if ((v15 & 1) == 0)
  {
    v16 = [*(a1 + 32) metadataPreCachedOptions];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1 + 32) + 24)];
    [v16 addObject:v17];

    if ([*(a1 + 32) shouldUpdateMetadataCache])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78__TUCallHistoryController_callHistoryManagerLoadOlderRecentCallsDispatchBlock__block_invoke_66;
      block[3] = &unk_1E7424950;
      v21 = v12;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  v18 = [getCHRecentCallClass() predicateForCallsWithStatusRead:0];
  v19 = [*(a1 + 32) callHistoryManager];
  [*(a1 + 32) setUnreadCallCount:{objc_msgSend(v19, "callCountWithPredicate:", v18)}];
}

+ (TUCallHistoryController)sharedController
{
  v5 = gSharedCallHistoryInstance;
  if (gSharedCallHistoryInstance)
  {
  }

  else
  {
    v7[1] = v2;
    v8 = v3;
    +[(TUCallHistoryController *)a2];
    v5 = v7[0];
  }

  return v5;
}

+ (id)sharedControllerWithCoalescingStrategy:(unint64_t)strategy options:(unint64_t)options
{
  v5 = gSharedCallHistoryInstance;
  if (!gSharedCallHistoryInstance)
  {
    v6 = [self callHistoryControllerWithCoalescingStrategy:strategy options:options];
    v7 = gSharedCallHistoryInstance;
    gSharedCallHistoryInstance = v6;

    v5 = gSharedCallHistoryInstance;
  }

  return v5;
}

+ (TUCallHistoryController)callHistoryControllerWithCoalescingStrategy:(unint64_t)strategy options:(unint64_t)options
{
  v6 = objc_opt_class();

  return [v6 callHistoryControllerWithCoalescingStrategy:strategy options:options shouldUpdateMetadataCache:1];
}

- (TUCallHistoryController)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is not available for use. To create an object instance use the designated initializer.", "-[TUCallHistoryController init]"];
  NSLog(&cfstr_TuassertionFai.isa, v4);

  if (_TUAssertShouldCrashApplication())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TUCallHistoryController.m" lineNumber:147 description:{@"%s is not available for use. To create an object instance use the designated initializer.", "-[TUCallHistoryController init]"}];
  }

  return 0;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TUCallHistoryController;
  [(TUCallHistoryController *)&v4 dealloc];
}

- (unint64_t)coalescingStrategy
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__TUCallHistoryController_coalescingStrategy__block_invoke;
  v7[3] = &unk_1E7425318;
  v7[4] = self;
  v7[5] = &v8;
  v3 = _Block_copy(v7);
  dispatcher = [(TUCallHistoryController *)self dispatcher];
  [dispatcher dispatchSynchronousBlock:v3];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)setCoalescingStrategy:(unint64_t)strategy
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__TUCallHistoryController_setCoalescingStrategy___block_invoke;
  v6[3] = &unk_1E7425340;
  v6[4] = self;
  v6[5] = strategy;
  v4 = _Block_copy(v6);
  dispatcher = [(TUCallHistoryController *)self dispatcher];
  [dispatcher dispatchAsynchronousBlock:v4];
}

void __49__TUCallHistoryController_setCoalescingStrategy___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 16) != v3)
  {
    *(v2 + 16) = v3;
    v5 = [*(a1 + 32) _callHistoryCoalescingStrategyForCoalescingStrategy:*(a1 + 40)];
    v6 = [*(a1 + 32) callHistoryManager];
    [v6 setCoalescingStrategy:v5];

    v7 = [*(a1 + 32) callHistoryManagerRecentCallsDispatchBlock];
    v7[2]();
  }
}

- (unint64_t)options
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__TUCallHistoryController_options__block_invoke;
  v7[3] = &unk_1E7425318;
  v7[4] = self;
  v7[5] = &v8;
  v3 = _Block_copy(v7);
  dispatcher = [(TUCallHistoryController *)self dispatcher];
  [dispatcher dispatchSynchronousBlock:v3];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)setOptions:(unint64_t)options
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__TUCallHistoryController_setOptions___block_invoke;
  v6[3] = &unk_1E7425340;
  v6[4] = self;
  v6[5] = options;
  v4 = _Block_copy(v6);
  dispatcher = [(TUCallHistoryController *)self dispatcher];
  [dispatcher dispatchAsynchronousBlock:v4];
}

void __38__TUCallHistoryController_setOptions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 24) != v3)
  {
    *(v2 + 24) = v3;
    [*(a1 + 32) _updateCallHistoryManagerUsingCurrentOptions];
    v5 = [*(a1 + 32) callHistoryManagerRecentCallsDispatchBlock];
    v5[2]();
  }
}

- (void)cancelSearchFetchOperations
{
  searchQueue = [(TUCallHistoryController *)self searchQueue];
  [searchQueue cancelAllOperations];
}

- (void)setPreFetchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = objc_alloc_init(MEMORY[0x1E696AAE0]);
  objc_initWeak(&location, v5);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __51__TUCallHistoryController_setPreFetchingPredicate___block_invoke;
  v11 = &unk_1E7425368;
  objc_copyWeak(&v14, &location);
  selfCopy = self;
  v6 = predicateCopy;
  v13 = v6;
  [v5 addExecutionBlock:&v8];
  v7 = [(TUCallHistoryController *)self searchQueue:v8];
  [v7 addOperation:v5];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __51__TUCallHistoryController_setPreFetchingPredicate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && ![WeakRetained isCancelled])
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (*(v6 + 32) == v7)
    {
      goto LABEL_7;
    }

    *(v6 + 32) = v7;
    v8 = [*(a1 + 32) callHistoryManager];
    [v8 setPreFetchingPredicate:*(a1 + 40)];

    v5 = objc_loadWeakRetained((a1 + 48));
    if (v5 && ![v5 isCancelled])
    {
      v9 = TUDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Setting the recent calls as operation is running", v10, 2u);
      }

      v4 = [*(a1 + 32) callHistoryManagerRecentCallsDispatchBlock];
      (*(v4 + 16))();
    }

    else
    {
      v4 = TUDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "No need to set the recent calls as this operation is already cancelled because of new fetchPredicate", v11, 2u);
      }
    }
  }

  else
  {
    v4 = TUDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring fetching of recent calls as this operation is cancelled", buf, 2u);
    }

    v5 = v3;
  }

  v3 = v5;
LABEL_7:
}

- (void)setRecentCalls:(id)calls
{
  callsCopy = calls;
  if (self->_recentCalls != callsCopy)
  {
    objc_storeStrong(&self->_recentCalls, calls);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__TUCallHistoryController_setRecentCalls___block_invoke;
    block[3] = &unk_1E7424950;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __42__TUCallHistoryController_setRecentCalls___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TUCallHistoryControllerRecentCallsDidChangeNotification" object:*(a1 + 32) userInfo:0];
}

- (void)setUnreadCallCount:(unint64_t)count
{
  simpleIvarDispatcher = [(TUCallHistoryController *)self simpleIvarDispatcher];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__TUCallHistoryController_setUnreadCallCount___block_invoke;
  v6[3] = &unk_1E7425340;
  v6[4] = self;
  v6[5] = count;
  [simpleIvarDispatcher dispatchAsynchronousBlock:v6];
}

void __46__TUCallHistoryController_setUnreadCallCount___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(v3 + 48) != v4)
  {
    block[5] = v1;
    block[6] = v2;
    *(v3 + 48) = v4;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__TUCallHistoryController_setUnreadCallCount___block_invoke_2;
    block[3] = &unk_1E7424950;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __46__TUCallHistoryController_setUnreadCallCount___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TUCallHistoryControllerUnreadCallCountDidChangeNotification" object:*(a1 + 32) userInfo:0];
}

- (void)boostQualityOfService
{
  dispatcher = [(TUCallHistoryController *)self dispatcher];
  [dispatcher boostQualityOfService];
}

- (void)deleteAllRecentCalls
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__TUCallHistoryController_deleteAllRecentCalls__block_invoke;
  aBlock[3] = &unk_1E7424950;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  dispatcher = [(TUCallHistoryController *)self dispatcher];
  [dispatcher dispatchAsynchronousBlock:v3];
}

void __47__TUCallHistoryController_deleteAllRecentCalls__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryManager];
  [v2 clearDatabase];

  v3 = [*(a1 + 32) dataSource];
  [v3 allCallHistoryDeleted];
}

- (void)deleteRecentCall:(id)call
{
  callCopy = call;
  v5 = callCopy;
  if (callCopy)
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __44__TUCallHistoryController_deleteRecentCall___block_invoke;
    v11 = &unk_1E7424898;
    selfCopy = self;
    v13 = callCopy;
    v6 = _Block_copy(&v8);
    v7 = [(TUCallHistoryController *)self dispatcher:v8];
    [v7 dispatchAsynchronousBlock:v6];
  }
}

void __44__TUCallHistoryController_deleteRecentCall___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryManager];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) callHistoryManager];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObject:*(a1 + 40)];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__TUCallHistoryController_deleteRecentCall___block_invoke_2;
    v7[3] = &unk_1E7424898;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v6;
    [v4 deleteCalls:v5 withCompletion:v7];
  }
}

void __44__TUCallHistoryController_deleteRecentCall___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) dataSource];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObject:*(a1 + 40)];
  [v3 recentCallsDeleted:v2];
}

- (void)deleteRecentCalls:(id)calls
{
  callsCopy = calls;
  if ([callsCopy count])
  {
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __45__TUCallHistoryController_deleteRecentCalls___block_invoke;
    v10 = &unk_1E7424898;
    selfCopy = self;
    v12 = callsCopy;
    v5 = _Block_copy(&v7);
    v6 = [(TUCallHistoryController *)self dispatcher:v7];
    [v6 dispatchAsynchronousBlock:v5];
  }
}

void __45__TUCallHistoryController_deleteRecentCalls___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryManager];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) callHistoryManager];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__TUCallHistoryController_deleteRecentCalls___block_invoke_2;
    v6[3] = &unk_1E7424898;
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v5;
    [v4 deleteCalls:v7 withCompletion:v6];
  }
}

void __45__TUCallHistoryController_deleteRecentCalls___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  [v2 recentCallsDeleted:*(a1 + 40)];
}

- (void)markUnreadRecentCallsAsReadWithPredicate:(id)predicate
{
  v11[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v5 = MEMORY[0x1E695DF70];
  v6 = [getCHRecentCallClass() predicateForCallsWithStatusRead:0];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [v5 arrayWithArray:v7];

  if (predicateCopy)
  {
    [v8 addObject:predicateCopy];
  }

  v9 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v8];
  [(TUCallHistoryController *)self markRecentCallsAsReadWithPredicate:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)markRecentVideoCallsAsRead
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = [getCHRecentCallClass() predicateForCallsWithStatusRead:0];
  v8[0] = v3;
  v4 = [getCHRecentCallClass() predicateForCallsWithMediaType:2];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v5];
  [(TUCallHistoryController *)self markRecentCallsAsReadWithPredicate:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)markRecentAudioCallsAsRead
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = [getCHRecentCallClass() predicateForCallsWithStatusRead:0];
  v8[0] = v3;
  v4 = [getCHRecentCallClass() predicateForCallsWithMediaType:1];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v5];
  [(TUCallHistoryController *)self markRecentCallsAsReadWithPredicate:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)markRecentCallsAsReadWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __62__TUCallHistoryController_markRecentCallsAsReadWithPredicate___block_invoke;
  v11 = &unk_1E7424898;
  selfCopy = self;
  v13 = predicateCopy;
  v5 = predicateCopy;
  v6 = _Block_copy(&v8);
  v7 = [(TUCallHistoryController *)self dispatcher:v8];
  [v7 dispatchAsynchronousBlock:v6];
}

void __62__TUCallHistoryController_markRecentCallsAsReadWithPredicate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryManager];
  [v2 setRead:1 forCallsWithPredicate:*(a1 + 40) completion:0];
}

- (void)updateReminderUUID:(id)d forRecentCall:(id)call
{
  dCopy = d;
  callCopy = call;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__TUCallHistoryController_updateReminderUUID_forRecentCall___block_invoke;
  aBlock[3] = &unk_1E7424FD8;
  aBlock[4] = self;
  v13 = dCopy;
  v14 = callCopy;
  v8 = callCopy;
  v9 = dCopy;
  v10 = _Block_copy(aBlock);
  dispatcher = [(TUCallHistoryController *)self dispatcher];
  [dispatcher dispatchAsynchronousBlock:v10];
}

void __60__TUCallHistoryController_updateReminderUUID_forRecentCall___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryManager];
  [v2 updateReminderUUID:*(a1 + 40) forRecentCall:*(a1 + 48)];
}

- (id)recentCallsWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__TUCallHistoryController_recentCallsWithPredicate___block_invoke;
  aBlock[3] = &unk_1E7425390;
  v12 = &v13;
  aBlock[4] = self;
  v5 = predicateCopy;
  v11 = v5;
  v6 = _Block_copy(aBlock);
  dispatcher = [(TUCallHistoryController *)self dispatcher];
  [dispatcher dispatchSynchronousBlock:v6];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __52__TUCallHistoryController_recentCallsWithPredicate___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) callHistoryManager];
  v2 = [v5 recentCallsWithPredicate:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)callsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size
{
  predicateCopy = predicate;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = 0;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __69__TUCallHistoryController_callsWithPredicate_limit_offset_batchSize___block_invoke;
  v19 = &unk_1E74253B8;
  v22 = &v26;
  selfCopy = self;
  v11 = predicateCopy;
  v21 = v11;
  limitCopy = limit;
  offsetCopy = offset;
  sizeCopy = size;
  v12 = _Block_copy(&v16);
  v13 = [(TUCallHistoryController *)self dispatcher:v16];
  [v13 dispatchSynchronousBlock:v12];

  v14 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v14;
}

void __69__TUCallHistoryController_callsWithPredicate_limit_offset_batchSize___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) callHistoryManager];
  v2 = [v5 callsWithPredicate:*(a1 + 40) limit:*(a1 + 56) offset:*(a1 + 64) batchSize:*(a1 + 72)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (TUCallHistoryController)initWithCoalescingStrategy:(unint64_t)strategy options:(unint64_t)options dataSource:(id)source shouldUpdateMetadataCache:(BOOL)cache
{
  sourceCopy = source;
  v34.receiver = self;
  v34.super_class = TUCallHistoryController;
  v12 = [(TUCallHistoryController *)&v34 init];
  if (v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v14 bundleIdentifier];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v13 stringWithFormat:@"%@.%@", bundleIdentifier, v17];

    v19 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v12->_featureFlags;
    v12->_featureFlags = v19;

    v12->_coalescingStrategy = strategy;
    v21 = [TUDispatcher dispatcherWithIdentifier:v18];
    dispatcher = v12->_dispatcher;
    v12->_dispatcher = v21;

    v23 = [v18 stringByAppendingString:@"_simpleIvarAccess"];
    v24 = [TUDispatcher dispatcherWithIdentifier:v23];
    simpleIvarDispatcher = v12->_simpleIvarDispatcher;
    v12->_simpleIvarDispatcher = v24;

    v12->_options = options;
    v26 = objc_opt_new();
    metadataPreCachedOptions = v12->_metadataPreCachedOptions;
    v12->_metadataPreCachedOptions = v26;

    v12->_shouldUpdateMetadataCache = cache;
    v28 = objc_alloc_init(TUCallProviderManager);
    callProviderManager = v12->_callProviderManager;
    v12->_callProviderManager = v28;

    v30 = v12->_callProviderManager;
    dispatchQueue = [(TUDispatcher *)v12->_dispatcher dispatchQueue];
    [(TUCallProviderManager *)v30 addDelegate:v12 queue:dispatchQueue];

    objc_storeStrong(&v12->_dataSource, source);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel_dispatcherDidFinishBoost_ name:@"TUDispatcherDidFinishBoostQualityOfServiceNotification" object:v12->_dispatcher];
    [(TUCallHistoryController *)v12 loadDispatchQueue];
  }

  return v12;
}

- (void)setCallHistoryManager:(id)manager
{
  managerCopy = manager;
  if (self->_callHistoryManager != managerCopy)
  {
    objc_storeStrong(&self->_callHistoryManager, manager);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v6 = getkCallHistoryDatabaseChangedNotificationSymbolLoc_ptr;
    v17 = getkCallHistoryDatabaseChangedNotificationSymbolLoc_ptr;
    if (!getkCallHistoryDatabaseChangedNotificationSymbolLoc_ptr)
    {
      v7 = CallHistoryLibrary();
      v15[3] = dlsym(v7, "kCallHistoryDatabaseChangedNotification");
      getkCallHistoryDatabaseChangedNotificationSymbolLoc_ptr = v15[3];
      v6 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (!v6)
    {
      [TUCallHistoryController setCallHistoryManager:];
    }

    v8 = *v6;
    callHistoryManager = self->_callHistoryManager;
    v10 = MEMORY[0x1E696AD88];
    v11 = v8;
    defaultCenter = [v10 defaultCenter];
    v13 = defaultCenter;
    if (callHistoryManager)
    {
      [defaultCenter addObserver:self selector:sel_callHistoryDatabaseChanged_ name:v11 object:0];
    }

    else
    {
      [defaultCenter removeObserver:self name:v11 object:0];
    }
  }
}

void __69__TUCallHistoryController_callHistoryManagerRecentCallsDispatchBlock__block_invoke_64(uint64_t a1)
{
  v2 = +[TUMetadataClientController sharedInstance];
  [v2 updateMetadataForRecentCalls:*(a1 + 32)];
}

void __78__TUCallHistoryController_callHistoryManagerLoadOlderRecentCallsDispatchBlock__block_invoke_66(uint64_t a1)
{
  v2 = +[TUMetadataClientController sharedInstance];
  [v2 updateMetadataForRecentCalls:*(a1 + 32)];
}

- (id)_callHistoryCoalescingStrategyForCoalescingStrategy:(unint64_t)strategy
{
  v4 = getkCHCoalescingStrategyRecents();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v5 = getkCHCoalescingStrategyCollapseIfEqualSymbolLoc_ptr;
  v22 = getkCHCoalescingStrategyCollapseIfEqualSymbolLoc_ptr;
  if (!getkCHCoalescingStrategyCollapseIfEqualSymbolLoc_ptr)
  {
    v6 = CallHistoryLibrary();
    v20[3] = dlsym(v6, "kCHCoalescingStrategyCollapseIfEqual");
    getkCHCoalescingStrategyCollapseIfEqualSymbolLoc_ptr = v20[3];
    v5 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v5)
  {
    [TUCallHistoryController _callHistoryCoalescingStrategyForCoalescingStrategy:];
  }

  v7 = *v5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v8 = getkCHCoalescingStrategyFaceTimeRecentsSymbolLoc_ptr;
  v22 = getkCHCoalescingStrategyFaceTimeRecentsSymbolLoc_ptr;
  if (!getkCHCoalescingStrategyFaceTimeRecentsSymbolLoc_ptr)
  {
    v9 = CallHistoryLibrary();
    v20[3] = dlsym(v9, "kCHCoalescingStrategyFaceTimeRecents");
    getkCHCoalescingStrategyFaceTimeRecentsSymbolLoc_ptr = v20[3];
    v8 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v8)
  {
    [TUCallHistoryController _callHistoryCoalescingStrategyForCoalescingStrategy:];
  }

  v10 = *v8;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v11 = getkCHCoalescingStrategyCollapseIfEqualContactsSymbolLoc_ptr;
  v22 = getkCHCoalescingStrategyCollapseIfEqualContactsSymbolLoc_ptr;
  if (!getkCHCoalescingStrategyCollapseIfEqualContactsSymbolLoc_ptr)
  {
    v12 = CallHistoryLibrary();
    v20[3] = dlsym(v12, "kCHCoalescingStrategyCollapseIfEqualContacts");
    getkCHCoalescingStrategyCollapseIfEqualContactsSymbolLoc_ptr = v20[3];
    v11 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v11)
  {
    [TUCallHistoryController _callHistoryCoalescingStrategyForCoalescingStrategy:];
  }

  v13 = *v11;
  v14 = v13;
  v15 = 0;
  if (strategy > 2)
  {
    v16 = v10;
    if (strategy != 3)
    {
      if (strategy != 4)
      {
        goto LABEL_18;
      }

      v16 = v13;
    }

LABEL_17:
    v15 = v16;
    goto LABEL_18;
  }

  v16 = v4;
  if (strategy == 1)
  {
    goto LABEL_17;
  }

  v16 = v7;
  if (strategy == 2)
  {
    goto LABEL_17;
  }

LABEL_18:
  v17 = v15;

  return v15;
}

- (void)callHistoryDatabaseChanged:(id)changed
{
  v11 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = changedCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v9, 0xCu);
  }

  dispatcher = [(TUCallHistoryController *)self dispatcher];
  callHistoryManagerRecentCallsDispatchBlock = [(TUCallHistoryController *)self callHistoryManagerRecentCallsDispatchBlock];
  [dispatcher dispatchAsynchronousBlock:callHistoryManagerRecentCallsDispatchBlock];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dispatcherDidFinishBoost:(id)boost
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__TUCallHistoryController_dispatcherDidFinishBoost___block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __52__TUCallHistoryController_dispatcherDidFinishBoost___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TUCallHistoryControllerDidFinishBoostNotification" object:*(a1 + 32)];
}

- (void)providersChangedForProviderManager:(id)manager
{
  v13 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = managerCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  dispatcher = [(TUCallHistoryController *)self dispatcher];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__TUCallHistoryController_providersChangedForProviderManager___block_invoke;
  v9[3] = &unk_1E7424898;
  v9[4] = self;
  v10 = managerCopy;
  v7 = managerCopy;
  [dispatcher dispatchAsynchronousBlock:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __62__TUCallHistoryController_providersChangedForProviderManager___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 24) & 8) != 0)
  {
    v6 = [*(a1 + 40) providersPassingTest:&__block_literal_global_73];
    v3 = [*(a1 + 32) thirdPartyCallProviders];
    v4 = [v3 isEqualToArray:v6];

    if ((v4 & 1) == 0)
    {
      [*(a1 + 32) setThirdPartyCallProviders:v6];
      [*(a1 + 32) _updateCallHistoryManagerUsingCurrentOptions];
      v5 = [*(a1 + 32) callHistoryManagerRecentCallsDispatchBlock];
      v5[2]();
    }
  }
}

+ (void)sharedController
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"TUCallHistoryController.m" lineNumber:117 description:@"The controller should have been initialized with sharedControllerWithCoalescingStrategy: before attempting to access the instance with the sharedController convenience method"];

  *a3 = gSharedCallHistoryInstance;
}

- (void)setCallHistoryManager:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCallHistoryDatabaseChangedNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUCallHistoryController.m" lineNumber:28 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_callHistoryCoalescingStrategyForCoalescingStrategy:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCHCoalescingStrategyCollapseIfEqualContacts(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUCallHistoryController.m" lineNumber:37 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_callHistoryCoalescingStrategyForCoalescingStrategy:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCHCoalescingStrategyFaceTimeRecents(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUCallHistoryController.m" lineNumber:36 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_callHistoryCoalescingStrategyForCoalescingStrategy:.cold.3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCHCoalescingStrategyCollapseIfEqual(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUCallHistoryController.m" lineNumber:35 description:{@"%s", dlerror()}];

  __break(1u);
}

@end