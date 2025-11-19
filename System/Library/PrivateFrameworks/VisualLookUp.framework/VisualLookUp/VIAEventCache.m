@interface VIAEventCache
- (VIAEventCache)initWithQueue:(id)a3;
- (VIAnalyticsTestingDelegate)testingDelegate;
- (id)_cachedEventsForBundleID:(id)a3;
- (id)cachedEventForBundleID:(id)a3 queryID:(unint64_t)a4;
- (void)cacheEvent:(id)a3;
@end

@implementation VIAEventCache

- (VIAEventCache)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = VIAEventCache;
  v6 = [(VIAEventCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = objc_opt_new();
    appToEventMap = v7->_appToEventMap;
    v7->_appToEventMap = v8;
  }

  return v7;
}

- (void)cacheEvent:(id)a3
{
  v31[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [v4 originatingApplication];
  v6 = [(VIAEventCache *)self _cachedEventsForBundleID:v5];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v4, "queryID")}];
  v8 = v7;
  if (v6)
  {
    v9 = [v6 objectForKeyedSubscript:v7];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    [v10 addObject:v4];
    v11 = [v10 copy];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v4, "queryID")}];
    [v6 setObject:v11 forKeyedSubscript:v12];

    v13 = v6;
    if ([v13 count] >= 0x65)
    {
      v14 = [v13 allKeys];
      v15 = [v14 sortedArrayUsingSelector:sel_compare_];
      v16 = [v15 firstObject];

      if (v16)
      {
        [v13 removeObjectForKey:v16];
      }
    }
  }

  else
  {
    v29 = v4;
    v30 = v7;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    v31[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v19 = [v18 mutableCopy];
    appToEventMap = self->_appToEventMap;
    v21 = [v4 originatingApplication];
    [(NSMutableDictionary *)appToEventMap setObject:v19 forKeyedSubscript:v21];
  }

  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);

  if (WeakRetained)
  {
    v23 = objc_loadWeakRetained(&self->_testingDelegate);
    v24 = [v4 feedback];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v4 originatingApplication];
    v28 = [(VIAEventCache *)self _cachedEventsForBundleID:v27];
    [v23 didCacheEventName:v26 currentCacheSize:{objc_msgSend(v28, "count")}];
  }
}

- (id)cachedEventForBundleID:(id)a3 queryID:(unint64_t)a4
{
  queue = self->_queue;
  v7 = a3;
  dispatch_assert_queue_V2(queue);
  v8 = [(NSMutableDictionary *)self->_appToEventMap objectForKeyedSubscript:v7];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = [v10 copy];

  return v11;
}

- (id)_cachedEventsForBundleID:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [(NSMutableDictionary *)self->_appToEventMap objectForKeyedSubscript:v5];

  return v6;
}

- (VIAnalyticsTestingDelegate)testingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);

  return WeakRetained;
}

@end