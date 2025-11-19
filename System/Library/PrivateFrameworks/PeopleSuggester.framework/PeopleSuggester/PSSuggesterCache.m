@interface PSSuggesterCache
@end

@implementation PSSuggesterCache

void __48___PSSuggesterCache_initWithMaxSuggestionCount___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[1]);
    os_unfair_lock_lock(v2 + 19);
    v4 = *&v2[14]._os_unfair_lock_opaque;
    v3 = *&v2[16]._os_unfair_lock_opaque;
    *&v2[14]._os_unfair_lock_opaque = v4 + 1;
    os_unfair_lock_unlock(v2 + 19);
    v5 = +[_PSLogging generalChannel];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v8 = 134218240;
        v9 = v4;
        v10 = 2048;
        v11 = v3;
        _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, "_PSSuggesterCache: Timer tick: Refreshing cache (ticks=%tu, fetches=%tu)", &v8, 0x16u);
      }

      [(os_unfair_lock_s *)v2 refetch];
    }

    else
    {
      if (v6)
      {
        v8 = 134218240;
        v9 = 0;
        v10 = 2048;
        v11 = v3;
        _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, "_PSSuggesterCache: Timer tick: Initial fetch (ticks=%tu, fetches=%tu)", &v8, 0x16u);
      }

      [(os_unfair_lock_s *)v2 performInitialFetchIfNeeded];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __58___PSSuggesterCache_defaultServiceWithMaxSuggestionCount___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[_PSSuggesterCache alloc] initWithMaxSuggestionCount:*(a1 + 32)];
  v4 = defaultServiceWithMaxSuggestionCount___pasExprOnceResult;
  defaultServiceWithMaxSuggestionCount___pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v2);
}

id __29___PSSuggesterCache__refetch__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [v2 reason];
  v5 = [v3 initWithFormat:@"%@\n%@", v4, @"Cached Suggestion"];
  [v2 setReason:v5];

  return v2;
}

@end