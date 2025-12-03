@interface PACoalescingIntervalTracker
- (PAAccessLogger)logger;
- (PACoalescingIntervalTracker)initWithLogger:(id)logger;
- (void)coalesce:(id)coalesce;
- (void)dealloc;
- (void)expireIntervalWithMatcher:(id)matcher state:(id)state;
- (void)invalidate;
@end

@implementation PACoalescingIntervalTracker

- (PAAccessLogger)logger
{
  WeakRetained = objc_loadWeakRetained(&self->_logger);

  return WeakRetained;
}

- (PACoalescingIntervalTracker)initWithLogger:(id)logger
{
  loggerCopy = logger;
  v10.receiver = self;
  v10.super_class = PACoalescingIntervalTracker;
  v5 = [(PACoalescingIntervalTracker *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_logger, loggerCopy);
    v6->_intervalEndTime = 60.0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    coalescingIntervals = v6->_coalescingIntervals;
    v6->_coalescingIntervals = dictionary;

    v6->_collectAssetIdentifiers = _os_feature_enabled_impl();
    v6->_loggingOptions = [loggerCopy options];
  }

  return v6;
}

- (void)coalesce:(id)coalesce
{
  v29 = *MEMORY[0x1E69E9840];
  coalesceCopy = coalesce;
  os_unfair_lock_lock(&self->_lock);
  v5 = [PAAccessMatcher coalescingMatcherForAccess:coalesceCopy];
  v6 = [(NSMutableDictionary *)self->_coalescingIntervals objectForKeyedSubscript:v5];
  if (self->_loggingOptions)
  {
    supportsSameMinuteAccessCountLogging = [coalesceCopy supportsSameMinuteAccessCountLogging];
  }

  else
  {
    supportsSameMinuteAccessCountLogging = 0;
  }

  assetIdentifiers = [coalesceCopy assetIdentifiers];
  if (_os_feature_enabled_impl() && ![assetIdentifiers count])
  {
    v9 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_injectedIdentifier length:8];
    ++self->_injectedIdentifier;
    v10 = [MEMORY[0x1E695DFD8] setWithObject:v9];

    assetIdentifiers = v10;
  }

  v11 = v6;
  if (!v6)
  {
    if (supportsSameMinuteAccessCountLogging)
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      date = [MEMORY[0x1E695DF00] date];
      v14 = [currentCalendar components:128 fromDate:date];

      second = [v14 second];
      logger = [(PACoalescingIntervalTracker *)self logger];
      v17 = [logger beginIntervalForAccess:coalesceCopy];

      v11 = [[PACoalescingIntervalState alloc] initWithInterval:v17 matcher:v5 tracker:self expiry:59.0 - second];
    }

    else
    {
      logger2 = [(PACoalescingIntervalTracker *)self logger];
      v14 = [logger2 beginIntervalForAccess:coalesceCopy];

      v11 = [[PACoalescingIntervalState alloc] initWithInterval:v14 matcher:v5 tracker:self];
    }

    [(NSMutableDictionary *)self->_coalescingIntervals setObject:v11 forKeyedSubscript:v5];
  }

  v19 = logger_1();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v23 = 138412802;
    v24 = coalesceCopy;
    v25 = 2112;
    v26 = v11;
    v27 = 1024;
    v28 = v6 == 0;
    _os_log_debug_impl(&dword_1DF25B000, v19, OS_LOG_TYPE_DEBUG, "Coalescing access=%@ into interval=%@ isNew=%d", &v23, 0x1Cu);
  }

  if (self->_collectAssetIdentifiers)
  {
    interval = [(PACoalescingIntervalState *)v11 interval];
    [interval recordAccessToAssetIdentifiers:assetIdentifiers withVisibilityState:0 accessEventCount:1];
  }

  if (supportsSameMinuteAccessCountLogging)
  {
    [(PACoalescingIntervalState *)v11 setAccessCount:[(PACoalescingIntervalState *)v11 accessCount]+ 1];
  }

  else
  {
    [(PACoalescingIntervalState *)v11 touch];
  }

  logger3 = [(PACoalescingIntervalTracker *)self logger];
  [logger3 notifyDidCoalesceAccess:coalesceCopy];

  os_unfair_lock_unlock(&self->_lock);
  v22 = *MEMORY[0x1E69E9840];
}

- (void)expireIntervalWithMatcher:(id)matcher state:(id)state
{
  matcherCopy = matcher;
  stateCopy = state;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_coalescingIntervals objectForKeyedSubscript:matcherCopy];
  v9 = logger_1();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PACoalescingIntervalTracker expireIntervalWithMatcher:v8 state:v9];
  }

  [(NSMutableDictionary *)self->_coalescingIntervals setObject:0 forKeyedSubscript:matcherCopy];
  interval = [v8 interval];
  [v8 timestampAdjustment];
  [interval endWithTimestampAdjustment:objc_msgSend(v8 accessCount:{"accessCount"), v11}];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_coalescingIntervals;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [(NSMutableDictionary *)self->_coalescingIntervals objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v6), v10];
        [v7 invalidate];

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  coalescingIntervals = self->_coalescingIntervals;
  self->_coalescingIntervals = 0;

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(PACoalescingIntervalTracker *)self invalidate];
  v3.receiver = self;
  v3.super_class = PACoalescingIntervalTracker;
  [(PACoalescingIntervalTracker *)&v3 dealloc];
}

- (void)expireIntervalWithMatcher:(uint64_t)a1 state:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1DF25B000, a2, OS_LOG_TYPE_DEBUG, "Ending idle coalescing interval=%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end