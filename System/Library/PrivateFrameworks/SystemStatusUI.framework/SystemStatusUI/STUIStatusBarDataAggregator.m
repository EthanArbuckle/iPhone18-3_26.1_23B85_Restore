@interface STUIStatusBarDataAggregator
+ (void)initialize;
- (NSSet)coalescedEntryKeys;
- (STUIStatusBarDataAggregator)initWithUpdateBlock:(id)a3;
- (id)_updatedDataFromData:(id)a3 delayedKeys:(id)a4;
- (id)beginDelayingUpdatesForEntryKeys:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_coalescedUpdateForEntryKeys:(id)a3;
- (void)_updateForCoalescedKeysWithData:(id)a3;
- (void)_updateForDelayedKeysWithData:(id)a3;
- (void)_updateForOverlayWithData:(id)a3;
- (void)_updateFromPendingUpdatesForKeys:(id)a3 block:(id)a4;
- (void)beginCoalescingUpdatesForEntryKeys:(id)a3 delay:(double)a4;
- (void)dealloc;
- (void)endCoalescingUpdatesForEntryKeys:(id)a3;
- (void)endDelayingUpdates:(id)a3;
- (void)updateWithData:(id)a3;
@end

@implementation STUIStatusBarDataAggregator

- (id)succinctDescription
{
  v2 = [(STUIStatusBarDataAggregator *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureHandle invalidate];
  v3.receiver = self;
  v3.super_class = STUIStatusBarDataAggregator;
  [(STUIStatusBarDataAggregator *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCA940]);
    v3 = _statusBarDelayedDataEntryKeys;
    _statusBarDelayedDataEntryKeys = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

- (STUIStatusBarDataAggregator)initWithUpdateBlock:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = STUIStatusBarDataAggregator;
  v5 = [(STUIStatusBarDataAggregator *)&v19 init];
  [(STUIStatusBarDataAggregator *)v5 setUpdateBlock:v4];
  v6 = objc_alloc_init(MEMORY[0x277CCA940]);
  [(STUIStatusBarDataAggregator *)v5 setDelayedKeys:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(STUIStatusBarDataAggregator *)v5 setPendingUpdates:v7];

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(STUIStatusBarDataAggregator *)v5 setCoalescedKeys:v8];

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(STUIStatusBarDataAggregator *)v5 setCoalescedTimers:v9];

  v10 = MEMORY[0x277CCACA8];
  v11 = [(STUIStatusBarDataAggregator *)v5 succinctDescription];
  v12 = [v10 stringWithFormat:@"SystemStatusUI - StatusBar - %@", v11];

  objc_initWeak(&location, v5);
  v13 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v17, &location);
  v14 = BSLogAddStateCaptureBlockWithTitle();
  stateCaptureHandle = v5->_stateCaptureHandle;
  v5->_stateCaptureHandle = v14;

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v5;
}

id __51__STUIStatusBarDataAggregator_initWithUpdateBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (void)updateWithData:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (!self->_dataClass)
  {
    v5 = objc_opt_class();
    dataClass = self->_dataClass;
    self->_dataClass = v5;

    v4 = v7;
  }

  [(STUIStatusBarDataAggregator *)self _updateForOverlayWithData:v4];
}

- (id)_updatedDataFromData:(id)a3 delayedKeys:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = v7;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v6 valueForKey:v13];
          if (v14)
          {
            v15 = [STUIStatusBarDataAggregatorUpdate updateWithEntry:v14];
            [(NSMutableDictionary *)self->_pendingUpdates setObject:v15 forKeyedSubscript:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v16 = [v6 dataByRemovingEntriesForKeys:v8];
    if ([v16 isEmpty])
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    v7 = v19;
  }

  else
  {
    v17 = v6;
  }

  return v17;
}

- (void)_updateFromPendingUpdatesForKeys:(id)a3 block:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v6;
  v8 = [v6 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v26 = v7;
    v10 = 0;
    v11 = 0;
    v12 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)self->_pendingUpdates objectForKeyedSubscript:v14, v26];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 animated];
          if (v17)
          {
            v18 = v10;
          }

          else
          {
            v18 = v11;
          }

          if (!v18)
          {
            v19 = v17;
            v20 = objc_alloc_init(MEMORY[0x277D6BA20]);
            v18 = v20;
            if (v19)
            {
              v10 = v20;
            }

            else
            {
              v11 = v20;
            }
          }

          v21 = [v16 entry];
          [v18 setEntry:v21 forKey:v14];

          [(NSMutableDictionary *)self->_pendingUpdates setObject:0 forKeyedSubscript:v14];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v9);
    v7 = v26;
    if (v11)
    {
      v22 = _STUIStatusBar_Log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v36 = v11;
        _os_log_impl(&dword_26C4DD000, v22, OS_LOG_TYPE_DEBUG, "performing pending non-animated updates with data: %@", buf, 0xCu);
      }

      v23 = MEMORY[0x277D75D18];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __70__STUIStatusBarDataAggregator__updateFromPendingUpdatesForKeys_block___block_invoke;
      v28[3] = &unk_279D38F28;
      v30 = v26;
      v29 = v11;
      [v23 performWithoutAnimation:v28];
    }

    if (v10)
    {
      v24 = _STUIStatusBar_Log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v36 = v10;
        _os_log_impl(&dword_26C4DD000, v24, OS_LOG_TYPE_DEBUG, "performing pending animated updates with data: %@", buf, 0xCu);
      }

      v25 = [v10 immutableCopy];
      (v26)[2](v26, v25);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }
}

void __70__STUIStatusBarDataAggregator__updateFromPendingUpdatesForKeys_block___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) immutableCopy];
  (*(v1 + 16))(v1, v2);
}

- (void)_updateForOverlayWithData:(id)a3
{
  v4 = [a3 dataByApplyingOverlay:self->_overlayData];
  [(STUIStatusBarDataAggregator *)self _updateForDelayedKeysWithData:v4];
}

- (void)_updateForDelayedKeysWithData:(id)a3
{
  delayedKeys = self->_delayedKeys;
  v7 = a3;
  if ([(NSCountedSet *)delayedKeys count])
  {
    v5 = [(STUIStatusBarDataAggregator *)self _updatedDataFromData:v7 delayedKeys:self->_delayedKeys];

    if (v5)
    {
      [(STUIStatusBarDataAggregator *)self _updateForCoalescedKeysWithData:v5];
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    [(STUIStatusBarDataAggregator *)self _updateForCoalescedKeysWithData:v7];
    v6 = v7;
  }
}

- (id)beginDelayingUpdatesForEntryKeys:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _STUIStatusBar_Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&dword_26C4DD000, v5, OS_LOG_TYPE_DEBUG, "begin delaying updates for %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        [(NSCountedSet *)self->_delayedKeys addObject:v10];
        [_statusBarDelayedDataEntryKeys addObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  objc_initWeak(buf, self);
  v11 = [STUIStatusBarDataAggregatorUpdateDelayToken alloc];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__STUIStatusBarDataAggregator_beginDelayingUpdatesForEntryKeys___block_invoke;
  v14[3] = &unk_279D38F50;
  objc_copyWeak(&v15, buf);
  v12 = [(STUIStatusBarDataAggregatorUpdateDelayToken *)v11 initWithEntryKeys:v6 timeout:v14 timeoutBlock:5.0];
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  return v12;
}

void __64__STUIStatusBarDataAggregator_beginDelayingUpdatesForEntryKeys___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v4 && WeakRetained)
  {
    [WeakRetained endDelayingUpdates:v4];
  }
}

- (void)endDelayingUpdates:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (([v5 isInvalidated] & 1) == 0)
    {
      [v5 invalidate];
      v6 = [MEMORY[0x277CBEB58] setWithSet:self->_delayedKeys];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = [v5 delayedKeys];
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            [(NSCountedSet *)self->_delayedKeys removeObject:v12];
            [_statusBarDelayedDataEntryKeys removeObject:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
        }

        while (v9);
      }

      v13 = _STUIStatusBar_Log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v5 delayedKeys];
        delayedKeys = self->_delayedKeys;
        *buf = 138412546;
        v22 = v14;
        v23 = 2112;
        v24 = delayedKeys;
        _os_log_impl(&dword_26C4DD000, v13, OS_LOG_TYPE_DEBUG, "end delaying updates for %@, remaining keys: %@", buf, 0x16u);
      }

      [v6 minusSet:self->_delayedKeys];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __50__STUIStatusBarDataAggregator_endDelayingUpdates___block_invoke;
      v16[3] = &unk_279D38F78;
      v16[4] = self;
      [(STUIStatusBarDataAggregator *)self _updateFromPendingUpdatesForKeys:v6 block:v16];
    }
  }
}

- (void)_updateForCoalescedKeysWithData:(id)a3
{
  v4 = a3;
  if ([(NSMutableDictionary *)self->_coalescedKeys count])
  {
    v5 = [(STUIStatusBarDataAggregator *)self coalescedEntryKeys];
    v6 = [(STUIStatusBarDataAggregator *)self _updatedDataFromData:v4 delayedKeys:v5];

    coalescedKeys = self->_coalescedKeys;
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __63__STUIStatusBarDataAggregator__updateForCoalescedKeysWithData___block_invoke;
    v13 = &unk_279D38FC8;
    v14 = v4;
    v15 = self;
    [(NSMutableDictionary *)coalescedKeys enumerateKeysAndObjectsUsingBlock:&v10];
    if (v6)
    {
      v8 = [(STUIStatusBarDataAggregator *)self updateBlock:v10];
      (v8)[2](v8, v6);
    }
  }

  else
  {
    v9 = [(STUIStatusBarDataAggregator *)self updateBlock];
    (v9)[2](v9, v4);
  }
}

void __63__STUIStatusBarDataAggregator__updateForCoalescedKeysWithData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) valueForKey:v5];
  if (v7)
  {
    objc_initWeak(&location, *(a1 + 40));
    v8 = MEMORY[0x277CBEBB8];
    [v6 doubleValue];
    v10 = v9;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __63__STUIStatusBarDataAggregator__updateForCoalescedKeysWithData___block_invoke_2;
    v13[3] = &unk_279D38FA0;
    objc_copyWeak(&v14, &location);
    v13[4] = v5;
    v11 = [v8 scheduledTimerWithTimeInterval:0 repeats:v13 block:v10];
    v12 = [*(*(a1 + 40) + 56) objectForKeyedSubscript:v5];
    [v12 invalidate];

    [*(*(a1 + 40) + 56) setObject:v11 forKeyedSubscript:v5];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __63__STUIStatusBarDataAggregator__updateForCoalescedKeysWithData___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
  [WeakRetained _coalescedUpdateForEntryKeys:v2];
}

- (void)_coalescedUpdateForEntryKeys:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(STUIStatusBarDataAggregator *)self updateBlock];
  [(STUIStatusBarDataAggregator *)self _updateFromPendingUpdatesForKeys:v4 block:v5];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_coalescedTimers objectForKeyedSubscript:v11, v13];
        [v12 invalidate];

        [(NSMutableDictionary *)self->_coalescedTimers setObject:0 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)beginCoalescingUpdatesForEntryKeys:(id)a3 delay:(double)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_coalescedKeys objectForKeyedSubscript:v11];

        if (!v12)
        {
          v13 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
          [(NSMutableDictionary *)self->_coalescedKeys setObject:v13 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)endCoalescingUpdatesForEntryKeys:(id)a3
{
  v4 = a3;
  v7 = [v4 mutableCopy];
  [v7 minusSet:self->_delayedKeys];
  [(STUIStatusBarDataAggregator *)self _coalescedUpdateForEntryKeys:v7];
  coalescedKeys = self->_coalescedKeys;
  v6 = [v4 allObjects];

  [(NSMutableDictionary *)coalescedKeys removeObjectsForKeys:v6];
}

- (NSSet)coalescedEntryKeys
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSMutableDictionary *)self->_coalescedKeys allKeys];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarDataAggregator *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(STUIStatusBarDataAggregator *)self succinctDescriptionBuilder];
  [v5 setActiveMultilinePrefix:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__STUIStatusBarDataAggregator_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279D38150;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __69__STUIStatusBarDataAggregator_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) delayedKeys];
  v4 = [v3 allObjects];
  [v2 appendArraySection:v4 withName:@"delayedKeys" skipIfEmpty:1];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) coalescedKeys];
  v6 = [v7 allKeys];
  [v5 appendArraySection:v6 withName:@"coalescedKeys" skipIfEmpty:1];
}

@end