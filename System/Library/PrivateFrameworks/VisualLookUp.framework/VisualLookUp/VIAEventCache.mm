@interface VIAEventCache
- (VIAEventCache)initWithQueue:(id)queue;
- (VIAnalyticsTestingDelegate)testingDelegate;
- (id)_cachedEventsForBundleID:(id)d;
- (id)cachedEventForBundleID:(id)d queryID:(unint64_t)iD;
- (void)cacheEvent:(id)event;
@end

@implementation VIAEventCache

- (VIAEventCache)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = VIAEventCache;
  v6 = [(VIAEventCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_opt_new();
    appToEventMap = v7->_appToEventMap;
    v7->_appToEventMap = v8;
  }

  return v7;
}

- (void)cacheEvent:(id)event
{
  v31[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dispatch_assert_queue_V2(self->_queue);
  originatingApplication = [eventCopy originatingApplication];
  v6 = [(VIAEventCache *)self _cachedEventsForBundleID:originatingApplication];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(eventCopy, "queryID")}];
  v8 = v7;
  if (v6)
  {
    v9 = [v6 objectForKeyedSubscript:v7];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    [v10 addObject:eventCopy];
    v11 = [v10 copy];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(eventCopy, "queryID")}];
    [v6 setObject:v11 forKeyedSubscript:v12];

    v13 = v6;
    if ([v13 count] >= 0x65)
    {
      allKeys = [v13 allKeys];
      v15 = [allKeys sortedArrayUsingSelector:sel_compare_];
      firstObject = [v15 firstObject];

      if (firstObject)
      {
        [v13 removeObjectForKey:firstObject];
      }
    }
  }

  else
  {
    v29 = eventCopy;
    v30 = v7;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    v31[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v19 = [v18 mutableCopy];
    appToEventMap = self->_appToEventMap;
    originatingApplication2 = [eventCopy originatingApplication];
    [(NSMutableDictionary *)appToEventMap setObject:v19 forKeyedSubscript:originatingApplication2];
  }

  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);

  if (WeakRetained)
  {
    v23 = objc_loadWeakRetained(&self->_testingDelegate);
    feedback = [eventCopy feedback];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    originatingApplication3 = [eventCopy originatingApplication];
    v28 = [(VIAEventCache *)self _cachedEventsForBundleID:originatingApplication3];
    [v23 didCacheEventName:v26 currentCacheSize:{objc_msgSend(v28, "count")}];
  }
}

- (id)cachedEventForBundleID:(id)d queryID:(unint64_t)iD
{
  queue = self->_queue;
  dCopy = d;
  dispatch_assert_queue_V2(queue);
  v8 = [(NSMutableDictionary *)self->_appToEventMap objectForKeyedSubscript:dCopy];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:iD];
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = [v10 copy];

  return v11;
}

- (id)_cachedEventsForBundleID:(id)d
{
  queue = self->_queue;
  dCopy = d;
  dispatch_assert_queue_V2(queue);
  v6 = [(NSMutableDictionary *)self->_appToEventMap objectForKeyedSubscript:dCopy];

  return v6;
}

- (VIAnalyticsTestingDelegate)testingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);

  return WeakRetained;
}

@end