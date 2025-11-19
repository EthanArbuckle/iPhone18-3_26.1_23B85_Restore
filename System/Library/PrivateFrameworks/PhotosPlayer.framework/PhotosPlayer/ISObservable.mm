@interface ISObservable
- (ISObservable)init;
- (void)_applyPendingChanges;
- (void)_didChange;
- (void)_observersQueue_copyChangeObserversForWriteIfNeeded;
- (void)_publishChanges;
- (void)_setHasObservers:(BOOL)a3;
- (void)_willChange;
- (void)enumerateObserversUsingBlock:(id)a3;
- (void)performChanges:(id)a3;
- (void)registerChangeObserver:(id)a3 context:(void *)a4;
- (void)unregisterChangeObserver:(id)a3 context:(void *)a4;
@end

@implementation ISObservable

- (void)_observersQueue_copyChangeObserversForWriteIfNeeded
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_observersQueue_shouldCopyChangeObserversOnWrite)
  {
    v3 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [(NSMapTable *)self->_observersQueue_changeObserversWithContexts keyEnumerator];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [(NSMapTable *)self->_observersQueue_changeObserversWithContexts objectForKey:v9];
          v11 = [v10 copy];

          [(NSMapTable *)v3 setObject:v11 forKey:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    observersQueue_changeObserversWithContexts = self->_observersQueue_changeObserversWithContexts;
    self->_observersQueue_changeObserversWithContexts = v3;

    self->_observersQueue_shouldCopyChangeObserversOnWrite = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_applyPendingChanges
{
  numAppliedPendingChanges = self->_numAppliedPendingChanges;
  self->_numAppliedPendingChanges = numAppliedPendingChanges + 1;
  if (numAppliedPendingChanges >= 39)
  {
    v4 = ISGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E667000, v4, OS_LOG_TYPE_DEFAULT, "Change depth limit almost reached", buf, 2u);
    }
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  pendingChangesQueue = self->_pendingChangesQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__ISObservable__applyPendingChanges__block_invoke;
  block[3] = &unk_279A2A4B0;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(pendingChangesQueue, block);
  if (*(v9 + 5))
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__ISObservable__applyPendingChanges__block_invoke_2;
    v6[3] = &unk_279A29CD0;
    v6[4] = buf;
    [(ISObservable *)self performChanges:v6];
  }

  --self->_numAppliedPendingChanges;
  _Block_object_dispose(buf, 8);
}

void __36__ISObservable__applyPendingChanges__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

void __36__ISObservable__applyPendingChanges__block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_publishChanges
{
  currentChange = self->_currentChange;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __31__ISObservable__publishChanges__block_invoke;
  v3[3] = &unk_279A29CA8;
  v3[4] = self;
  v3[5] = currentChange;
  [(ISObservable *)self enumerateObserversUsingBlock:v3];
}

- (void)_didChange
{
  nestedChanges = self->_nestedChanges;
  if (nestedChanges == 1)
  {
    [(ISObservable *)self didPerformChanges];
    nestedChanges = self->_nestedChanges;
  }

  v4 = nestedChanges - 1;
  self->_nestedChanges = v4;
  if (!v4)
  {
    if (self->_currentChange)
    {
      [(ISObservable *)self _publishChanges];
      [(ISObservable *)self didPublishChanges];
      self->_currentChange = 0;
    }

    [(ISObservable *)self _applyPendingChanges];
  }
}

- (void)_willChange
{
  nestedChanges = self->_nestedChanges;
  if (!nestedChanges)
  {
    [(ISObservable *)self willPerformChanges];
    nestedChanges = self->_nestedChanges;
  }

  self->_nestedChanges = nestedChanges + 1;
}

- (void)_setHasObservers:(BOOL)a3
{
  if (self->_hasObservers != a3)
  {
    self->_hasObservers = a3;
    [(ISObservable *)self hasObserversDidChange];
  }
}

- (void)enumerateObserversUsingBlock:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  isEnumeratingObservers = self->_isEnumeratingObservers;
  self->_isEnumeratingObservers = 1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  observersQueue = self->_observersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ISObservable_enumerateObserversUsingBlock___block_invoke;
  block[3] = &unk_279A2A4B0;
  block[4] = self;
  block[5] = &v26;
  dispatch_sync(observersQueue, block);
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v27[5] keyEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v32 count:16];
  v8 = v7;
  if (v7)
  {
    v9 = *v21;
    v17 = v7;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v20 + 1) + 8 * v10);
      v12 = [v27[5] objectForKey:v11];
      v13 = 0;
      while (v13 < [v12 count])
      {
        v4[2](v4, v11, [v12 pointerAtIndex:v13++], &v24);
        if (v24 == 1)
        {

          goto LABEL_13;
        }
      }

      v14 = v24;

      if (v14)
      {
        break;
      }

      if (++v10 == v17)
      {
        v17 = [v6 countByEnumeratingWithState:&v20 objects:v32 count:16];
        if (v17)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_13:

  v15 = self->_observersQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __45__ISObservable_enumerateObserversUsingBlock___block_invoke_2;
  v19[3] = &unk_279A2A180;
  v19[4] = self;
  dispatch_sync(v15, v19);
  self->_isEnumeratingObservers = isEnumeratingObservers;
  [(ISObservable *)self _setHasObservers:v8 != 0];
  _Block_object_dispose(&v26, 8);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)unregisterChangeObserver:(id)a3 context:(void *)a4
{
  v6 = a3;
  observersQueue = self->_observersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ISObservable_unregisterChangeObserver_context___block_invoke;
  block[3] = &unk_279A29F10;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(observersQueue, block);
}

uint64_t __49__ISObservable_unregisterChangeObserver_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _observersQueue_copyChangeObserversForWriteIfNeeded];
  v7 = [*(*(a1 + 32) + 72) objectForKey:*(a1 + 40)];
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
      v2 = [*(*(a1 + 32) + 72) removeObjectForKey:*(a1 + 40)];
      v3 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)registerChangeObserver:(id)a3 context:(void *)a4
{
  v6 = a3;
  observersQueue = self->_observersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ISObservable_registerChangeObserver_context___block_invoke;
  block[3] = &unk_279A29F10;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(observersQueue, block);
  if (v8)
  {
    [(ISObservable *)self _setHasObservers:1];
  }
}

void __47__ISObservable_registerChangeObserver_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _observersQueue_copyChangeObserversForWriteIfNeeded];
  v2 = [*(*(a1 + 32) + 72) objectForKey:*(a1 + 40)];
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
    if (!*(*(a1 + 32) + 72))
    {
      v3 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v4 = *(a1 + 32);
      v5 = *(v4 + 72);
      *(v4 + 72) = v3;
    }

    v12 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:256];
    [v12 addPointer:*(a1 + 48)];
    [*(*(a1 + 32) + 72) setObject:v12 forKey:*(a1 + 40)];
  }
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_isEnumeratingObservers)
  {
    pendingChangesQueue = self->_pendingChangesQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __31__ISObservable_performChanges___block_invoke;
    v8[3] = &unk_279A29EA8;
    v8[4] = self;
    v9 = v4;
    dispatch_async(pendingChangesQueue, v8);
  }

  else
  {
    [(ISObservable *)self _willChange];
    v7 = [(ISObservable *)self mutableChangeObject];
    (v5)[2](v5, v7);

    [(ISObservable *)self _didChange];
  }
}

void __31__ISObservable_performChanges___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    v7 = [*(a1 + 40) copy];
    [v2 addObject:?];
  }

  else
  {
    v3 = MEMORY[0x277CBEB18];
    v7 = [*(a1 + 40) copy];
    v4 = [v3 arrayWithObject:?];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;
  }
}

- (ISObservable)init
{
  v8.receiver = self;
  v8.super_class = ISObservable;
  v2 = [(ISObservable *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.photosplayer.observable.internal-queue", 0);
    observersQueue = v2->_observersQueue;
    v2->_observersQueue = v3;

    v5 = dispatch_queue_create("com.apple.photosplayer.observable.pending-change-queue", 0);
    pendingChangesQueue = v2->_pendingChangesQueue;
    v2->_pendingChangesQueue = v5;

    v2->_currentChange = 0;
  }

  return v2;
}

@end