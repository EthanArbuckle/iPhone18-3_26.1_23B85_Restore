@interface SBSSystemNotesPresentationHandle
- (SBSSystemNotesPresentationConfiguration)requestedConfiguration;
- (SBSSystemNotesPresentationHandle)initWithConfiguration:(id)configuration;
- (SBSSystemNotesPresentationHandle)initWithConfiguration:(id)configuration client:(id)client;
- (int64_t)presentationMode;
- (void)_invalidateWithError:(id)error locally:(BOOL)locally;
- (void)activate;
- (void)addObserver:(id)observer;
- (void)configuration:(id)configuration didChangeToPresentationMode:(id)mode;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation SBSSystemNotesPresentationHandle

- (SBSSystemNotesPresentationHandle)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = objc_alloc_init(SBSSystemNotesPresentationClientToServerProxy);
  v6 = [(SBSSystemNotesPresentationHandle *)self initWithConfiguration:configurationCopy client:v5];

  return v6;
}

- (SBSSystemNotesPresentationHandle)initWithConfiguration:(id)configuration client:(id)client
{
  configurationCopy = configuration;
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = SBSSystemNotesPresentationHandle;
  v8 = [(SBSSystemNotesPresentationHandle *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    *&v8->_lock_state = xmmword_191729630;
    v10 = [configurationCopy copy];
    configuration = v9->_configuration;
    v9->_configuration = v10;

    objc_storeStrong(&v9->_handleClient, client);
    Serial = BSDispatchQueueCreateSerial();
    calloutSerialQueue = v9->_calloutSerialQueue;
    v9->_calloutSerialQueue = Serial;

    [(SBSSystemNotesPresentationClientToServerProxy *)v9->_handleClient setDelegate:v9];
  }

  return v9;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_state == 1)
  {
    [(SBSSystemNotesPresentationHandle *)self invalidate];
  }

  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = SBSSystemNotesPresentationHandle;
  [(SBSSystemNotesPresentationHandle *)&v3 dealloc];
}

- (void)activate
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBSSystemNotesPresentationHandle.m" lineNumber:66 description:@"attempting to activate a SBSSystemNotesPresentationHandle multiple times"];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  lock_observers = self->_lock_observers;
  if (!lock_observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v6 = self->_lock_observers;
    self->_lock_observers = weakObjectsHashTable;

    lock_observers = self->_lock_observers;
  }

  [(NSHashTable *)lock_observers addObject:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:observerCopy];

  if (![(NSHashTable *)self->_lock_observers count])
  {
    lock_observers = self->_lock_observers;
    self->_lock_observers = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)presentationMode
{
  os_unfair_lock_lock(&self->_lock);
  lock_presentationMode = self->_lock_presentationMode;
  os_unfair_lock_unlock(&self->_lock);
  return lock_presentationMode;
}

- (SBSSystemNotesPresentationConfiguration)requestedConfiguration
{
  v2 = [(SBSSystemNotesPresentationConfiguration *)self->_configuration copy];

  return v2;
}

- (void)configuration:(id)configuration didChangeToPresentationMode:(id)mode
{
  integerValue = [mode integerValue];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_presentationMode = integerValue;
  os_unfair_lock_unlock(&self->_lock);
  calloutSerialQueue = self->_calloutSerialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__SBSSystemNotesPresentationHandle_configuration_didChangeToPresentationMode___block_invoke;
  v7[3] = &unk_1E735F0D0;
  v7[4] = self;
  v7[5] = integerValue;
  dispatch_async(calloutSerialQueue, v7);
}

void __78__SBSSystemNotesPresentationHandle_configuration_didChangeToPresentationMode___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(*(a1 + 32) + 32) copy];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 systemNotesPresentationHandle:*(a1 + 32) didChangePresentationMode:{*(a1 + 40), v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_invalidateWithError:(id)error locally:(BOOL)locally
{
  locallyCopy = locally;
  v16 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  if (!locallyCopy && !self->_lock_state)
  {
    [SBSSystemNotesPresentationHandle _invalidateWithError:a2 locally:self];
  }

  lock_state = self->_lock_state;
  self->_lock_state = 2;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_state != 2)
  {
    v9 = SBLogSystemNotes();
    v10 = v9;
    if (errorCopy)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(SBSSystemNotesPresentationHandle *)self _invalidateWithError:errorCopy locally:v10];
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_19169D000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ invalidating", buf, 0xCu);
    }

    if (locallyCopy)
    {
      [(SBSSystemNotesPresentationClientToServerProxy *)self->_handleClient invalidate];
    }

    calloutSerialQueue = self->_calloutSerialQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__SBSSystemNotesPresentationHandle__invalidateWithError_locally___block_invoke;
    v12[3] = &unk_1E735F7F0;
    v12[4] = self;
    v13 = errorCopy;
    dispatch_async(calloutSerialQueue, v12);
  }
}

void __65__SBSSystemNotesPresentationHandle__invalidateWithError_locally___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(*(a1 + 32) + 32) copy];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 systemNotesPresentationHandle:*(a1 + 32) didInvalidateWithError:{*(a1 + 40), v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_invalidateWithError:(uint64_t)a1 locally:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSSystemNotesPresentationHandle.m" lineNumber:137 description:@"server called back with invalidation but we're only in Initialized state"];
}

- (void)_invalidateWithError:(os_log_t)log locally:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_19169D000, log, OS_LOG_TYPE_ERROR, "%{public}@ invalidating with error: %{public}@", &v3, 0x16u);
}

@end