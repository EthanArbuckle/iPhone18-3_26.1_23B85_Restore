@interface PACoalescingIntervalTracker
- (PAAccessLogger)logger;
- (PACoalescingIntervalTracker)initWithLogger:(id)a3;
- (void)coalesce:(id)a3;
- (void)dealloc;
- (void)expireIntervalWithMatcher:(id)a3 state:(id)a4;
- (void)invalidate;
@end

@implementation PACoalescingIntervalTracker

- (PAAccessLogger)logger
{
  WeakRetained = objc_loadWeakRetained(&self->_logger);

  return WeakRetained;
}

- (PACoalescingIntervalTracker)initWithLogger:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PACoalescingIntervalTracker;
  v5 = [(PACoalescingIntervalTracker *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_logger, v4);
    v6->_intervalEndTime = 60.0;
    v7 = [MEMORY[0x1E695DF90] dictionary];
    coalescingIntervals = v6->_coalescingIntervals;
    v6->_coalescingIntervals = v7;

    v6->_collectAssetIdentifiers = _os_feature_enabled_impl();
    v6->_loggingOptions = [v4 options];
  }

  return v6;
}

- (void)coalesce:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [PAAccessMatcher coalescingMatcherForAccess:v4];
  v6 = [(NSMutableDictionary *)self->_coalescingIntervals objectForKeyedSubscript:v5];
  if (self->_loggingOptions)
  {
    v7 = [v4 supportsSameMinuteAccessCountLogging];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 assetIdentifiers];
  if (_os_feature_enabled_impl() && ![v8 count])
  {
    v9 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_injectedIdentifier length:8];
    ++self->_injectedIdentifier;
    v10 = [MEMORY[0x1E695DFD8] setWithObject:v9];

    v8 = v10;
  }

  v11 = v6;
  if (!v6)
  {
    if (v7)
    {
      v12 = [MEMORY[0x1E695DEE8] currentCalendar];
      v13 = [MEMORY[0x1E695DF00] date];
      v14 = [v12 components:128 fromDate:v13];

      v15 = [v14 second];
      v16 = [(PACoalescingIntervalTracker *)self logger];
      v17 = [v16 beginIntervalForAccess:v4];

      v11 = [[PACoalescingIntervalState alloc] initWithInterval:v17 matcher:v5 tracker:self expiry:59.0 - v15];
    }

    else
    {
      v18 = [(PACoalescingIntervalTracker *)self logger];
      v14 = [v18 beginIntervalForAccess:v4];

      v11 = [[PACoalescingIntervalState alloc] initWithInterval:v14 matcher:v5 tracker:self];
    }

    [(NSMutableDictionary *)self->_coalescingIntervals setObject:v11 forKeyedSubscript:v5];
  }

  v19 = logger_1();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v23 = 138412802;
    v24 = v4;
    v25 = 2112;
    v26 = v11;
    v27 = 1024;
    v28 = v6 == 0;
    _os_log_debug_impl(&dword_1DF25B000, v19, OS_LOG_TYPE_DEBUG, "Coalescing access=%@ into interval=%@ isNew=%d", &v23, 0x1Cu);
  }

  if (self->_collectAssetIdentifiers)
  {
    v20 = [(PACoalescingIntervalState *)v11 interval];
    [v20 recordAccessToAssetIdentifiers:v8 withVisibilityState:0 accessEventCount:1];
  }

  if (v7)
  {
    [(PACoalescingIntervalState *)v11 setAccessCount:[(PACoalescingIntervalState *)v11 accessCount]+ 1];
  }

  else
  {
    [(PACoalescingIntervalState *)v11 touch];
  }

  v21 = [(PACoalescingIntervalTracker *)self logger];
  [v21 notifyDidCoalesceAccess:v4];

  os_unfair_lock_unlock(&self->_lock);
  v22 = *MEMORY[0x1E69E9840];
}

- (void)expireIntervalWithMatcher:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_coalescingIntervals objectForKeyedSubscript:v6];
  v9 = logger_1();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PACoalescingIntervalTracker expireIntervalWithMatcher:v8 state:v9];
  }

  [(NSMutableDictionary *)self->_coalescingIntervals setObject:0 forKeyedSubscript:v6];
  v10 = [v8 interval];
  [v8 timestampAdjustment];
  [v10 endWithTimestampAdjustment:objc_msgSend(v8 accessCount:{"accessCount"), v11}];

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