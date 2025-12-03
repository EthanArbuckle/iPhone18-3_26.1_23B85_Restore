@interface PABasicAssetIdentifierPool
- (PABasicAssetIdentifierPool)initWithMaxPoolSize:(unint64_t)size autoDrainInterval:(double)interval onQueue:(id)queue delegate:(id)delegate;
- (void)addAssetIdentifiers:(id)identifiers accessEventCount:(unint64_t)count;
- (void)dealloc;
- (void)drainPool;
- (void)invalidate;
- (void)setVisibilityState:(int64_t)state;
@end

@implementation PABasicAssetIdentifierPool

- (PABasicAssetIdentifierPool)initWithMaxPoolSize:(unint64_t)size autoDrainInterval:(double)interval onQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = PABasicAssetIdentifierPool;
  v13 = [(PABasicAssetIdentifierPool *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14->_maxPoolSize = size;
    v14->_autoDrainInterval = interval;
    objc_storeStrong(&v14->_queue, queue);
    v15 = v14;
  }

  return v14;
}

- (void)dealloc
{
  [(PABasicAssetIdentifierPool *)self invalidate];
  v3.receiver = self;
  v3.super_class = PABasicAssetIdentifierPool;
  [(PABasicAssetIdentifierPool *)&v3 dealloc];
}

- (void)invalidate
{
  drainTimer = self->_drainTimer;
  if (drainTimer)
  {
    dispatch_source_cancel(drainTimer);
    v4 = self->_drainTimer;
    self->_drainTimer = 0;
  }

  assetIdentifiers = self->_assetIdentifiers;
  self->_assetIdentifiers = 0;
}

- (void)addAssetIdentifiers:(id)identifiers accessEventCount:(unint64_t)count
{
  v30 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  self->_eventCount += count;
  if ([identifiersCopy count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = identifiersCopy;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        v11 = 0;
        do
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          self->_assetIdentifierPoolSize += [*(*(&v25 + 1) + 8 * v11++) length];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    assetIdentifiers = self->_assetIdentifiers;
    if (assetIdentifiers)
    {
      [(NSMutableSet *)assetIdentifiers unionSet:v7];
    }

    else
    {
      v13 = [v7 mutableCopy];
      v14 = self->_assetIdentifiers;
      self->_assetIdentifiers = v13;
    }

    if (self->_assetIdentifierPoolSize <= self->_maxPoolSize)
    {
      if (!self->_drainTimer)
      {
        autoDrainInterval = self->_autoDrainInterval;
        if (fabs(autoDrainInterval) != INFINITY)
        {
          objc_initWeak(&location, self);
          v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
          drainTimer = self->_drainTimer;
          self->_drainTimer = v16;

          v18 = self->_drainTimer;
          v19 = dispatch_time(0, (autoDrainInterval * 1000000000.0));
          dispatch_source_set_timer(v18, v19, 0xFFFFFFFFFFFFFFFFLL, (autoDrainInterval * 1000000000.0) >> 2);
          v20 = self->_drainTimer;
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __67__PABasicAssetIdentifierPool_addAssetIdentifiers_accessEventCount___block_invoke;
          v22[3] = &unk_1E86ABD58;
          objc_copyWeak(&v23, &location);
          dispatch_source_set_event_handler(v20, v22);
          dispatch_activate(self->_drainTimer);
          objc_destroyWeak(&v23);
          objc_destroyWeak(&location);
        }
      }
    }

    else
    {
      [(PABasicAssetIdentifierPool *)self drainPool];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __67__PABasicAssetIdentifierPool_addAssetIdentifiers_accessEventCount___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained drainPool];
}

- (void)drainPool
{
  if ([(NSMutableSet *)self->_assetIdentifiers count]|| self->_eventCount)
  {
    v3 = [(NSMutableSet *)self->_assetIdentifiers copy];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    v6 = v5;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained recordAccessToAssetIdentifiers:v6 withVisibilityState:self->_visibilityState accessEventCount:self->_eventCount];
  }

  assetIdentifiers = self->_assetIdentifiers;
  self->_assetIdentifiers = 0;

  self->_assetIdentifierPoolSize = 0;
  self->_eventCount = 0;
  drainTimer = self->_drainTimer;
  if (drainTimer)
  {
    dispatch_source_cancel(drainTimer);
    drainTimer = self->_drainTimer;
  }

  self->_drainTimer = 0;
}

- (void)setVisibilityState:(int64_t)state
{
  if (self->_stateMonitoringEstablished)
  {
    [(PABasicAssetIdentifierPool *)self drainPool];
  }

  else
  {
    self->_stateMonitoringEstablished = 1;
  }

  self->_visibilityState = state;
}

@end