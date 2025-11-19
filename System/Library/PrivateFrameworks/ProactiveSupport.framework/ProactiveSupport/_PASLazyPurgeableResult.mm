@interface _PASLazyPurgeableResult
- (_PASLazyPurgeableResult)initWithBlock:(id)a3 idleTimeout:(double)a4;
- (id)result;
- (id)resultIfAvailable;
- (void)dealloc;
@end

@implementation _PASLazyPurgeableResult

- (id)result
{
  v2 = atomic_load(&self->_nil);
  if (v2)
  {
    v3 = 0;
    goto LABEL_18;
  }

  pthread_mutex_lock(&self->super._lock);
  if (self->super._data)
  {
    goto LABEL_13;
  }

  WeakRetained = objc_loadWeakRetained(&self->_weakData);
  data = self->super._data;
  self->super._data = WeakRetained;

  if (self->super._data)
  {
LABEL_7:
    v10 = atomic_load(&self->_nil);
    if (v10)
    {
      __assert_rtn("[_PASLazyPurgeableResult _createDispatchSources]", "_PASCachedResult.m", 167, "!atomic_load(&_nil)");
    }

    if (_createDispatchSources__pasOnceToken4 != -1)
    {
      dispatch_once(&_createDispatchSources__pasOnceToken4, &__block_literal_global_2922);
    }

    v11 = _createDispatchSources__pasExprOnceResult;
    v12 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 0x30uLL, v11);
    memoryPressureSource = self->_memoryPressureSource;
    self->_memoryPressureSource = v12;

    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __49___PASLazyPurgeableResult__createDispatchSources__block_invoke_2;
    v19[3] = &unk_1E77F22C0;
    objc_copyWeak(&v20, &location);
    v14 = MEMORY[0x1AC566DD0](v19);
    dispatch_source_set_event_handler(self->_memoryPressureSource, v14);
    dispatch_resume(self->_memoryPressureSource);
    if ((*&self->_idleTimeout & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v11);
      idleTimeoutSource = self->_idleTimeoutSource;
      self->_idleTimeoutSource = v15;

      dispatch_source_set_event_handler(self->_idleTimeoutSource, v14);
      dispatch_resume(self->_idleTimeoutSource);
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);

LABEL_13:
    if ((*&self->_idleTimeout & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v17 = self->_idleTimeoutSource;
      if (!v17)
      {
        __assert_rtn("[_PASLazyPurgeableResult result]", "_PASCachedResult.m", 234, "_idleTimeoutSource");
      }

      dispatch_suspend(v17);
      dispatch_source_set_timer(self->_idleTimeoutSource, [_PASDispatch dispatchTimeWithSecondsFromNow:self->_idleTimeout], 0xFFFFFFFFFFFFFFFFLL, fmin(self->_idleTimeout * 1000000000.0, 1.0e10));
      dispatch_resume(self->_idleTimeoutSource);
    }

    v3 = self->super._data;
    goto LABEL_17;
  }

  v7 = objc_autoreleasePoolPush();
  v3 = (*(self->super._block + 2))();
  objc_autoreleasePoolPop(v7);
  if (v3)
  {
    v8 = self->super._data;
    self->super._data = v3;
    v9 = v3;

    objc_storeWeak(&self->_weakData, self->super._data);
    goto LABEL_7;
  }

  atomic_store(1u, &self->_nil);
LABEL_17:
  pthread_mutex_unlock(&self->super._lock);
LABEL_18:

  return v3;
}

- (id)resultIfAvailable
{
  v2 = atomic_load(&self->_nil);
  if (v2)
  {
    WeakRetained = 0;
  }

  else
  {
    pthread_mutex_lock(&self->super._lock);
    WeakRetained = objc_loadWeakRetained(&self->_weakData);
    pthread_mutex_unlock(&self->super._lock);
  }

  return WeakRetained;
}

- (void)dealloc
{
  pthread_mutex_lock(&self->super._lock);
  memoryPressureSource = self->_memoryPressureSource;
  if (memoryPressureSource)
  {
    dispatch_source_cancel(memoryPressureSource);
  }

  idleTimeoutSource = self->_idleTimeoutSource;
  if (idleTimeoutSource)
  {
    dispatch_source_cancel(idleTimeoutSource);
  }

  pthread_mutex_unlock(&self->super._lock);
  v5.receiver = self;
  v5.super_class = _PASLazyPurgeableResult;
  [(_PASLazyResult *)&v5 dealloc];
}

- (_PASLazyPurgeableResult)initWithBlock:(id)a3 idleTimeout:(double)a4
{
  v6.receiver = self;
  v6.super_class = _PASLazyPurgeableResult;
  result = [(_PASLazyResult *)&v6 _initWithBlock:a3];
  if (result)
  {
    atomic_store(0, &result->_nil);
    result->_idleTimeout = a4;
  }

  return result;
}

@end