@interface SBSRemoteAlertHandle
+ (SBSRemoteAlertHandleClient)defaultHandleClient;
+ (id)handleWithConfiguration:(id)a3;
+ (id)lookupHandlesForDefinition:(id)a3 creatingIfNone:(BOOL)a4 configurationContext:(id)a5;
+ (id)newHandleWithDefinition:(id)a3 configurationContext:(id)a4;
- (BOOL)isActive;
- (BOOL)isValid;
- (id)_initWithHandleID:(id)a3 handleClient:(id)a4;
- (void)_didActivate;
- (void)_didDeactivate;
- (void)_invalidateWithError:(id)a3 shouldInvalidateHandleClient:(BOOL)a4;
- (void)activateWithContext:(id)a3;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation SBSRemoteAlertHandle

- (id)_initWithHandleID:(id)a3 handleClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SBSRemoteAlertHandle;
  v8 = [(SBSRemoteAlertHandle *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    Serial = BSDispatchQueueCreateSerial();
    calloutSerialQueue = v9->_calloutSerialQueue;
    v9->_calloutSerialQueue = Serial;

    objc_storeWeak(&v9->_handleClient, v7);
    v12 = [v6 copy];
    handleID = v9->_handleID;
    v9->_handleID = v12;

    v9->_lock_valid = 1;
  }

  return v9;
}

+ (id)lookupHandlesForDefinition:(id)a3 creatingIfNone:(BOOL)a4 configurationContext:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [SBSRemoteAlertHandle lookupHandlesForDefinition:a2 creatingIfNone:a1 configurationContext:?];
    if (v11)
    {
      goto LABEL_5;
    }
  }

  if (v6)
  {
    v11 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  }

LABEL_5:
  v12 = [a1 defaultHandleClient];
  v13 = [v12 remoteAlertHandlesForDefinition:v9 allowsCreation:v6 configurationContext:v11];

  return v13;
}

+ (id)newHandleWithDefinition:(id)a3 configurationContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [SBSRemoteAlertHandle newHandleWithDefinition:a2 configurationContext:a1];
  }

  v9 = [a1 defaultHandleClient];
  v10 = [v9 createRemoteAlertHandleWithDefinition:v7 configurationContext:v8];

  return v10;
}

- (void)registerObserver:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_observers = self->_lock_observers;
  if (!lock_observers)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:1];
    v6 = self->_lock_observers;
    self->_lock_observers = v5;

    lock_observers = self->_lock_observers;
  }

  [(NSHashTable *)lock_observers addObject:v7];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:v4];

  if (![(NSHashTable *)self->_lock_observers count])
  {
    lock_observers = self->_lock_observers;
    self->_lock_observers = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)activateWithContext:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_handleClient);
  [WeakRetained activateRemoteAlertHandle:self withContext:v4];
}

- (BOOL)isActive
{
  os_unfair_lock_lock(&self->_lock);
  lock_active = self->_lock_active;
  os_unfair_lock_unlock(&self->_lock);
  return lock_active;
}

- (BOOL)isValid
{
  os_unfair_lock_lock(&self->_lock);
  lock_valid = self->_lock_valid;
  os_unfair_lock_unlock(&self->_lock);
  return lock_valid;
}

- (void)_didActivate
{
  calloutSerialQueue = self->_calloutSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SBSRemoteAlertHandle__didActivate__block_invoke;
  block[3] = &unk_1E735F9D0;
  block[4] = self;
  dispatch_async(calloutSerialQueue, block);
}

void __36__SBSRemoteAlertHandle__didActivate__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 12);
  *(v2 + 12) = 1;
  v4 = *(a1 + 32);
  if (v3)
  {

    os_unfair_lock_unlock((v4 + 8));
  }

  else
  {
    v5 = [*(v4 + 16) copy];
    os_unfair_lock_unlock((*(a1 + 32) + 8));
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v11 remoteAlertHandleDidActivate:{*(a1 + 32), v12}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_didDeactivate
{
  calloutSerialQueue = self->_calloutSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SBSRemoteAlertHandle__didDeactivate__block_invoke;
  block[3] = &unk_1E735F9D0;
  block[4] = self;
  dispatch_async(calloutSerialQueue, block);
}

void __38__SBSRemoteAlertHandle__didDeactivate__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 12);
  *(v2 + 12) = 0;
  v4 = *(a1 + 32);
  if (v3 == 1)
  {
    v5 = [*(v4 + 16) copy];
    os_unfair_lock_unlock((*(a1 + 32) + 8));
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v11 remoteAlertHandleDidDeactivate:{*(a1 + 32), v12}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else
  {

    os_unfair_lock_unlock((v4 + 8));
  }
}

+ (SBSRemoteAlertHandleClient)defaultHandleClient
{
  v2 = sDefaultHandleClient;
  if (!sDefaultHandleClient)
  {
    if (defaultHandleClient_sOnceToken != -1)
    {
      +[SBSRemoteAlertHandle defaultHandleClient];
    }

    v2 = sDefaultXPCHandleClient;
  }

  v3 = v2;

  return v3;
}

uint64_t __43__SBSRemoteAlertHandle_defaultHandleClient__block_invoke()
{
  sDefaultXPCHandleClient = objc_alloc_init(SBSRemoteAlertHandleXPCClient);

  return MEMORY[0x1EEE66BB8]();
}

- (void)_invalidateWithError:(id)a3 shouldInvalidateHandleClient:(BOOL)a4
{
  v6 = a3;
  calloutSerialQueue = self->_calloutSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__SBSRemoteAlertHandle__invalidateWithError_shouldInvalidateHandleClient___block_invoke;
  block[3] = &unk_1E73603C8;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(calloutSerialQueue, block);
}

void __74__SBSRemoteAlertHandle__invalidateWithError_shouldInvalidateHandleClient___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 12);
  v4 = *(v2 + 13);
  if ((v3 & 1) != 0 || *(v2 + 13))
  {
    v5 = [*(v2 + 16) copy];
  }

  else
  {
    v5 = 0;
  }

  *(*(a1 + 32) + 12) = 0;
  *(*(a1 + 32) + 13) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  if (v3)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v11 remoteAlertHandleDidDeactivate:*(a1 + 32)];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }
  }

  if (v4)
  {
    if (*(a1 + 48) == 1)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
      [WeakRetained invalidateRemoteAlertHandle:*(a1 + 32)];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v19 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v18 remoteAlertHandle:*(a1 + 32) didInvalidateWithError:{*(a1 + 40), v19}];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v15);
    }
  }
}

+ (id)handleWithConfiguration:(id)a3
{
  v3 = [a1 newHandleWithDefinition:a3 configurationContext:0];

  return v3;
}

+ (void)lookupHandlesForDefinition:(uint64_t)a1 creatingIfNone:(uint64_t)a2 configurationContext:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSRemoteAlertHandle.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"definition"}];
}

+ (void)newHandleWithDefinition:(uint64_t)a1 configurationContext:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSRemoteAlertHandle.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"definition"}];
}

@end