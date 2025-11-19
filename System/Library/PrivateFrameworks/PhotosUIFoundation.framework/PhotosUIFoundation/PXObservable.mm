@interface PXObservable
- (PXObservable)init;
- (void)_applyPendingChanges;
- (void)_didChange;
- (void)_observersQueue_copyChangeObserversForWriteIfNeeded;
- (void)_publishChanges;
- (void)_setHasObservers:(BOOL)a3;
- (void)_willChange;
- (void)copyLogConfigurationFrom:(id)a3;
- (void)enumerateObserversUsingBlock:(id)a3;
- (void)performChanges:(id)a3;
- (void)registerChangeObserver:(id)a3 context:(void *)a4;
- (void)setLog:(id)a3;
- (void)unregisterChangeObserver:(id)a3 context:(void *)a4;
@end

@implementation PXObservable

- (PXObservable)init
{
  v6.receiver = self;
  v6.super_class = PXObservable;
  v2 = [(PXObservable *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.photosuifoundation.observable.internal-queue", 0);
    observersQueue = v2->_observersQueue;
    v2->_observersQueue = v3;

    v2->_currentChange = 0;
    [(PXObservable *)v2 setLog:0];
    v2->_logContext = v2;
  }

  return v2;
}

- (void)_observersQueue_copyChangeObserversForWriteIfNeeded
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_observersQueue_shouldCopyChangeObserversOnWrite)
  {
    v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [(NSMapTable *)self->_observersQueue_changeObserversWithContexts keyEnumerator];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [(NSMapTable *)self->_observersQueue_changeObserversWithContexts objectForKey:v9];
          v11 = [v10 copy];

          [(NSMapTable *)v3 setObject:v11 forKey:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    observersQueue_changeObserversWithContexts = self->_observersQueue_changeObserversWithContexts;
    self->_observersQueue_changeObserversWithContexts = v3;

    self->_observersQueue_shouldCopyChangeObserversOnWrite = 0;
  }
}

- (void)_willChange
{
  nestedChanges = self->_nestedChanges;
  if (!nestedChanges)
  {
    [(PXObservable *)self willPerformChanges];
    nestedChanges = self->_nestedChanges;
  }

  self->_nestedChanges = nestedChanges + 1;
}

- (void)_didChange
{
  nestedChanges = self->_nestedChanges;
  if (nestedChanges == 1)
  {
    [(PXObservable *)self didPerformChanges];
    nestedChanges = self->_nestedChanges;
  }

  v4 = nestedChanges - 1;
  self->_nestedChanges = v4;
  if (!v4)
  {
    if ([(PXObservable *)self shouldNotifyObserversAfterApplyingChangeBlocks])
    {
      [(PXObservable *)self _publishChanges];
      currentChange = self->_currentChange;
      self->_currentChange = 0;
      [(PXObservable *)self didPublishChanges:currentChange];
    }

    [(PXObservable *)self didEndChangeHandling];

    [(PXObservable *)self _applyPendingChanges];
  }
}

- (void)_publishChanges
{
  currentChange = self->_currentChange;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__PXObservable__publishChanges__block_invoke;
  v3[3] = &unk_1E7BB5E30;
  v3[4] = self;
  v3[5] = currentChange;
  [(PXObservable *)self enumerateObserversUsingBlock:v3];
}

- (void)_applyPendingChanges
{
  numAppliedPendingChanges = self->_numAppliedPendingChanges;
  self->_numAppliedPendingChanges = numAppliedPendingChanges + 1;
  if (numAppliedPendingChanges >= 39)
  {
    v5 = PXAssertGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B3F73000, v5, OS_LOG_TYPE_ERROR, "Change depth limit almost reached", buf, 2u);
    }

    if (self->_numAppliedPendingChanges >= 50)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PXObservable.m" lineNumber:257 description:{@"Change depth limit reached (%ld), this indicates infinite state ping-ponging, investigate the stack trace and figure out why the observable doesn't reach a stable state. Typically because two observers are trying to set different new values in response to the same change.", 50}];
    }
  }

  pendingChangeBlocks = self->_pendingChangeBlocks;
  if (pendingChangeBlocks)
  {
    v7 = pendingChangeBlocks;
    v8 = self->_pendingChangeBlocks;
    self->_pendingChangeBlocks = 0;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__PXObservable__applyPendingChanges__block_invoke;
    v11[3] = &unk_1E7BB69B0;
    v12 = v7;
    v9 = v7;
    [(PXObservable *)self performChanges:v11];
  }

  --self->_numAppliedPendingChanges;
}

void __36__PXObservable__applyPendingChanges__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_setHasObservers:(BOOL)a3
{
  if (self->_hasObservers != a3)
  {
    self->_hasObservers = a3;
    [(PXObservable *)self hasObserversDidChange];
  }
}

- (void)enumerateObserversUsingBlock:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  isEnumeratingObservers = self->_isEnumeratingObservers;
  self->_isEnumeratingObservers = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__5212;
  v29 = __Block_byref_object_dispose__5213;
  v30 = 0;
  observersQueue = self->_observersQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PXObservable_enumerateObserversUsingBlock___block_invoke;
  block[3] = &unk_1E7BB7800;
  block[4] = self;
  block[5] = &v25;
  dispatch_sync(observersQueue, block);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v26[5] keyEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v31 count:16];
  v8 = v7;
  if (v7)
  {
    v9 = *v20;
    v16 = v7;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v19 + 1) + 8 * v10);
      v12 = [v26[5] objectForKey:v11];
      v13 = 0;
      while (v13 < [v12 count])
      {
        v4[2](v4, v11, [v12 pointerAtIndex:v13++], &v23);
        if (v23 == 1)
        {

          goto LABEL_13;
        }
      }

      v14 = v23;

      if (v14)
      {
        break;
      }

      if (++v10 == v16)
      {
        v16 = [v6 countByEnumeratingWithState:&v19 objects:v31 count:16];
        if (v16)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_13:

  v15 = self->_observersQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __45__PXObservable_enumerateObserversUsingBlock___block_invoke_2;
  v18[3] = &unk_1E7BB8880;
  v18[4] = self;
  dispatch_sync(v15, v18);
  self->_isEnumeratingObservers = isEnumeratingObservers;
  [(PXObservable *)self _setHasObservers:v8 != 0];
  _Block_object_dispose(&v25, 8);
}

- (void)unregisterChangeObserver:(id)a3 context:(void *)a4
{
  v6 = a3;
  observersQueue = self->_observersQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PXObservable_unregisterChangeObserver_context___block_invoke;
  block[3] = &unk_1E7BB7F20;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(observersQueue, block);
}

uint64_t __49__PXObservable_unregisterChangeObserver_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _observersQueue_copyChangeObserversForWriteIfNeeded];
  v7 = [*(*(a1 + 32) + 64) objectForKey:*(a1 + 40)];
  v2 = [v7 count];
  v3 = v7;
  if (v2)
  {
    v4 = v2;
    v5 = 0;
    while (1)
    {
      v2 = [v3 pointerAtIndex:v5];
      if (v2 == *(a1 + 48))
      {
        break;
      }

      ++v5;
      v3 = v7;
      if (v4 == v5)
      {
        goto LABEL_7;
      }
    }

    v2 = [v7 removePointerAtIndex:v5];
    v3 = v7;
  }

LABEL_7:
  if (v3)
  {
    v2 = [v3 count];
    v3 = v7;
    if (!v2)
    {
      v2 = [*(*(a1 + 32) + 64) removeObjectForKey:*(a1 + 40)];
      v3 = v7;
    }
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (void)registerChangeObserver:(id)a3 context:(void *)a4
{
  v6 = a3;
  observersQueue = self->_observersQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PXObservable_registerChangeObserver_context___block_invoke;
  block[3] = &unk_1E7BB7F20;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(observersQueue, block);
  if (v8)
  {
    [(PXObservable *)self _setHasObservers:1];
  }
}

void __47__PXObservable_registerChangeObserver_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _observersQueue_copyChangeObserversForWriteIfNeeded];
  v2 = [*(*(a1 + 32) + 64) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v12 = v2;
    v6 = [v2 count];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = v12;
      while (1)
      {
        v10 = [v9 pointerAtIndex:v8];
        v11 = *(a1 + 48);
        if (v10 == v11)
        {
          break;
        }

        ++v8;
        v9 = v12;
        if (v7 == v8)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v11 = *(a1 + 48);
LABEL_14:
      [v12 addPointer:v11];
    }
  }

  else
  {
    if (!*(*(a1 + 32) + 64))
    {
      v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v4 = *(a1 + 32);
      v5 = *(v4 + 64);
      *(v4 + 64) = v3;
    }

    v12 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:256];
    [v12 addPointer:*(a1 + 48)];
    [*(*(a1 + 32) + 64) setObject:v12 forKey:*(a1 + 40)];
  }
}

- (void)performChanges:(id)a3
{
  v5 = a3;
  v14 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXObservable.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"changeBlock != nil"}];

    v5 = 0;
  }

  if (self->_isEnumeratingObservers)
  {
    pendingChangeBlocks = self->_pendingChangeBlocks;
    if (pendingChangeBlocks)
    {
      v7 = [v5 copy];
      [(NSMutableArray *)pendingChangeBlocks addObject:v7];
    }

    else
    {
      v9 = MEMORY[0x1E695DF70];
      v10 = [v5 copy];
      v11 = [v9 arrayWithObject:v10];
      v12 = self->_pendingChangeBlocks;
      self->_pendingChangeBlocks = v11;
    }
  }

  else
  {
    [(PXObservable *)self _willChange];
    v8 = [(PXObservable *)self mutableChangeObject];
    v14[2](v14, v8);

    [(PXObservable *)self _didChange];
  }
}

- (void)copyLogConfigurationFrom:(id)a3
{
  v4 = a3;
  v5 = [v4 log];
  [(PXObservable *)self setLog:v5];

  v6 = [v4 logContext];

  [(PXObservable *)self setLogContext:v6];
}

- (void)setLog:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = *MEMORY[0x1E69BDDA0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v4 = os_log_create(v5, [v7 UTF8String]);
  }

  log = self->_log;
  self->_log = v4;
}

@end