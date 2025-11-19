@interface _PSSuggesterCache
+ (id)defaultServiceWithMaxSuggestionCount:(id)a3;
- (_PSSuggesterCache)initWithMaxSuggestionCount:(id)a3;
- (id)description;
- (id)getCachedContext;
- (id)getCachedSuggestionsAndSessionID:(id *)a3;
- (void)_refetch;
- (void)backgroundRefetch;
- (void)performInitialFetchIfNeeded;
- (void)refetch;
@end

@implementation _PSSuggesterCache

- (_PSSuggesterCache)initWithMaxSuggestionCount:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = _PSSuggesterCache;
  v5 = [(_PSSuggesterCache *)&v31 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple._PSSuggesterCache.queue", v6);
    v8 = *(v5 + 1);
    *(v5 + 1) = v7;

    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, *(v5 + 1));
    v10 = *(v5 + 2);
    *(v5 + 2) = v9;

    *(v5 + 9) = 0;
    v11 = dispatch_group_create();
    v12 = *(v5 + 11);
    *(v5 + 11) = v11;

    *(v5 + 7) = 0;
    *(v5 + 8) = 0;
    v13 = +[_PSSuggesterConfiguration defaultConfiguration];
    [v13 setMaximumNumberOfSuggestions:{objc_msgSend(v4, "integerValue")}];
    v14 = [[_PSSuggester alloc] initWithDaemonUsingConfiguration:v13];
    v15 = *(v5 + 3);
    *(v5 + 3) = v14;

    v16 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v16 addObserver:v5 selector:sel_backgroundRefetch name:@"_CDInteractionStoreRecordedShareSheetInteractionNotification" object:0];

    v17 = +[_PSConfig defaultConfig];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v17 objectForKeyedSubscript:v19];
    v21 = [v20 objectForKeyedSubscript:@"cacheUpdateInterval"];
    [v21 doubleValue];
    v23 = v22 * 1000000000.0;

    v24 = *(v5 + 2);
    v25 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v24, v25, v23, 0xDF8475800uLL);
    objc_initWeak(&location, v5);
    v26 = *(v5 + 2);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __48___PSSuggesterCache_initWithMaxSuggestionCount___block_invoke;
    v28[3] = &unk_1E7C25710;
    objc_copyWeak(&v29, &location);
    dispatch_source_set_event_handler(v26, v28);
    dispatch_resume(*(v5 + 2));
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v5;
}

+ (id)defaultServiceWithMaxSuggestionCount:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___PSSuggesterCache_defaultServiceWithMaxSuggestionCount___block_invoke;
  block[3] = &unk_1E7C24268;
  v10 = v3;
  v4 = defaultServiceWithMaxSuggestionCount___pasOnceToken9;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&defaultServiceWithMaxSuggestionCount___pasOnceToken9, block);
  }

  v6 = defaultServiceWithMaxSuggestionCount___pasExprOnceResult;
  v7 = defaultServiceWithMaxSuggestionCount___pasExprOnceResult;

  return v6;
}

- (void)backgroundRefetch
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___PSSuggesterCache_backgroundRefetch__block_invoke;
  block[3] = &unk_1E7C24268;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)performInitialFetchIfNeeded
{
  os_unfair_lock_lock(&self->_lock);
  cachedPeopleSuggestions = self->_cachedPeopleSuggestions;
  os_unfair_lock_unlock(&self->_lock);
  if (!cachedPeopleSuggestions)
  {

    [(_PSSuggesterCache *)self refetch];
  }
}

- (void)refetch
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  dispatch_group_enter(self->_queuedRefetchGroup);
  if (atomic_exchange(&self->_hasQueuedRefetch._Value, 1u))
  {
    dispatch_group_leave(self->_queuedRefetchGroup);
    while (1)
    {
      queuedRefetchGroup = self->_queuedRefetchGroup;
      v5 = dispatch_time(0, 50000000);
      if (!dispatch_group_wait(queuedRefetchGroup, v5))
      {
        break;
      }

      os_unfair_lock_lock(&self->_refetchLock);
      os_unfair_lock_unlock(&self->_refetchLock);
    }

    p_refetchLock = &self->_refetchLock;
    os_unfair_lock_lock(&self->_refetchLock);
  }

  else
  {
    p_refetchLock = &self->_refetchLock;
    os_unfair_lock_lock(&self->_refetchLock);
    dispatch_group_leave(self->_queuedRefetchGroup);
    atomic_store(0, &self->_hasQueuedRefetch);
    [(_PSSuggesterCache *)self _refetch];
  }

  os_unfair_lock_unlock(p_refetchLock);
}

- (void)_refetch
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_refetchLock);
  v3 = [MEMORY[0x1E69C5D08] isClassCLocked];
  v4 = +[_PSLogging generalChannel];
  v5 = os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1B5ED1000, &v4->super, OS_LOG_TYPE_DEFAULT, "_PSSuggesterCache: Not refetching suggestions due to Class C lock.", &v18, 2u);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1B5ED1000, &v4->super, OS_LOG_TYPE_DEFAULT, "_PSSuggesterCache: Refetching suggestions", &v18, 2u);
    }

    v4 = objc_alloc_init(_PSPredictionContext);
    [(_PSPredictionContext *)v4 setIsFallbackFetch:1];
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [v6 UUIDString];
    [(_PSPredictionContext *)v4 setSessionID:v7];

    v8 = [(_PSSuggester *)self->_suggester suggestInteractionsFromContext:v4];
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_cachedContext, v4);
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(_PSPredictionContext *)v4 sessionID];
      v18 = 138412547;
      v19 = v10;
      v20 = 2113;
      v21 = v8;
      _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_DEFAULT, "_PSSuggesterCache: fetched suggestions with sessionID %@: %{private}@", &v18, 0x16u);
    }

    v11 = [v8 _pas_mappedArrayWithTransform:&__block_literal_global_21];
    cachedPeopleSuggestions = self->_cachedPeopleSuggestions;
    self->_cachedPeopleSuggestions = v11;

    v13 = [(_PSPredictionContext *)v4 sessionID];
    cachedSessionID = self->_cachedSessionID;
    self->_cachedSessionID = v13;

    ++self->_fetches;
    v15 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_cachedPeopleSuggestions;
      v18 = 138412290;
      v19 = v16;
      _os_log_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_DEFAULT, "_PSSuggesterCache: updated _cachedPeopleSuggestions: %@", &v18, 0xCu);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)getCachedSuggestionsAndSessionID:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_cachedPeopleSuggestions;
  if (a3)
  {
    objc_storeStrong(a3, self->_cachedSessionID);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)getCachedContext
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_cachedContext;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)description
{
  v3 = os_unfair_lock_trylock(&self->_lock);
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v3)
  {
    cachedSessionID = self->_cachedSessionID;
    v6 = [v4 initWithFormat:@"<_PSSuggesterCache %p> cachedSuggestions: %@, cachedSessionID: %@, cachedContext: %@", self, self->_cachedPeopleSuggestions, cachedSessionID, self->_cachedContext];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = [v4 initWithFormat:@"<_PSSuggesterCache %p> (trylock failed in -[_PSSuggesterCache description])", self];
  }

  return v6;
}

@end