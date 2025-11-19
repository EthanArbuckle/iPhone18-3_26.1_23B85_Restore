@interface SBDisplayReferenceModeMonitor
+ (BOOL)canAddObserverForDisplayWithConfiguration:(id)a3;
- (BOOL)_shouldNotifyObserversOfReferenceModeStatusChangeForDisplay:(id)a3;
- (id)_configurationForDisplay:(id)a3;
- (id)_observersForDisplay:(id)a3;
- (int64_t)_cachedStatusForDisplay:(id)a3;
- (int64_t)_referenceModeStatusForDisplay:(id)a3;
- (int64_t)referenceModeStatusForDisplayWithConfiguration:(id)a3;
- (void)_addObserver:(id)a3 forDisplay:(id)a4;
- (void)_enumerateObserversOfDisplay:(id)a3 usingBlock:(id)a4;
- (void)_removeCachedStatusForDisplay:(id)a3;
- (void)_removeObserver:(id)a3 forDisplay:(id)a4;
- (void)_setCachedStatus:(int64_t)a3 forDisplay:(id)a4;
- (void)_setConfig:(id)a3 forDisplay:(id)a4;
- (void)_startObservingDisplayIfNeeded:(id)a3;
- (void)_stopObservingDisplay:(id)a3;
- (void)addReferenceModeStatusObserver:(id)a3 forDisplayWithConfiguration:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeReferenceModeStatusObserver:(id)a3 forDisplayWithConfiguration:(id)a4;
@end

@implementation SBDisplayReferenceModeMonitor

+ (BOOL)canAddObserverForDisplayWithConfiguration:(id)a3
{
  v3 = [a3 sb_referenceModeObserverUniqueIdentifier];
  v4 = v3 != 0;

  return v4;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableSet *)self->_observedDisplays copy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
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

        [(SBDisplayReferenceModeMonitor *)self _stopObservingDisplay:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = SBDisplayReferenceModeMonitor;
  [(SBDisplayReferenceModeMonitor *)&v9 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([(NSMutableSet *)self->_observedDisplays containsObject:v11])
  {
    v13 = v11;
    if ([(SBDisplayReferenceModeMonitor *)self _shouldNotifyObserversOfReferenceModeStatusChangeForDisplay:v13])
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __80__SBDisplayReferenceModeMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v15[3] = &unk_2783BF868;
      v15[4] = self;
      v16 = v13;
      [(SBDisplayReferenceModeMonitor *)self _enumerateObserversOfDisplay:v16 usingBlock:v15];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SBDisplayReferenceModeMonitor;
    [(SBDisplayReferenceModeMonitor *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

uint64_t __80__SBDisplayReferenceModeMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  [a2 displayReferenceModeStatusDidChangeForDisplayWithConfiguration:? newStatus:?];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v6 _setCachedStatus:a4 forDisplay:v7];
}

- (void)addReferenceModeStatusObserver:(id)a3 forDisplayWithConfiguration:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (!v8)
  {
    [SBDisplayReferenceModeMonitor addReferenceModeStatusObserver:forDisplayWithConfiguration:];
  }

  if (![SBDisplayReferenceModeMonitor canAddObserverForDisplayWithConfiguration:v6])
  {
    [SBDisplayReferenceModeMonitor addReferenceModeStatusObserver:forDisplayWithConfiguration:];
  }

  v7 = [(SBDisplayReferenceModeMonitor *)self _displayForConfiguration:v6];
  if (v7)
  {
    [(SBDisplayReferenceModeMonitor *)self _addObserver:v8 forDisplay:v7];
    [(SBDisplayReferenceModeMonitor *)self _startObservingDisplayIfNeeded:v7];
    [(SBDisplayReferenceModeMonitor *)self _setConfig:v6 forDisplay:v7];
  }
}

- (void)removeReferenceModeStatusObserver:(id)a3 forDisplayWithConfiguration:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (!v10)
  {
    [SBDisplayReferenceModeMonitor removeReferenceModeStatusObserver:forDisplayWithConfiguration:];
  }

  if (![SBDisplayReferenceModeMonitor canAddObserverForDisplayWithConfiguration:v6])
  {
    [SBDisplayReferenceModeMonitor removeReferenceModeStatusObserver:forDisplayWithConfiguration:];
  }

  v7 = [(SBDisplayReferenceModeMonitor *)self _displayForConfiguration:v6];
  [(SBDisplayReferenceModeMonitor *)self _removeObserver:v10 forDisplay:v7];
  v8 = [(SBDisplayReferenceModeMonitor *)self _observersForDisplay:v7];
  v9 = [v8 count];

  if (!v9)
  {
    [(SBDisplayReferenceModeMonitor *)self _stopObservingDisplay:v7];
  }
}

- (int64_t)referenceModeStatusForDisplayWithConfiguration:(id)a3
{
  v4 = a3;
  if (![SBDisplayReferenceModeMonitor canAddObserverForDisplayWithConfiguration:v4])
  {
    [SBDisplayReferenceModeMonitor referenceModeStatusForDisplayWithConfiguration:];
  }

  v5 = [(SBDisplayReferenceModeMonitor *)self _displayForConfiguration:v4];
  displayToCachedStatus = self->_displayToCachedStatus;
  v7 = [v5 sb_referenceModeObserverUniqueIdentifier];
  v8 = [(NSMutableDictionary *)displayToCachedStatus objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [(SBDisplayReferenceModeMonitor *)self _cachedStatusForDisplay:v5];
  }

  else
  {
    v9 = [(SBDisplayReferenceModeMonitor *)self _referenceModeStatusForDisplay:v5];
  }

  v10 = v9;

  return v10;
}

- (BOOL)_shouldNotifyObserversOfReferenceModeStatusChangeForDisplay:(id)a3
{
  v4 = a3;
  v5 = [(SBDisplayReferenceModeMonitor *)self _cachedStatusForDisplay:v4];
  v6 = [(SBDisplayReferenceModeMonitor *)self _referenceModeStatusForDisplay:v4];

  return v5 != v6;
}

- (void)_setCachedStatus:(int64_t)a3 forDisplay:(id)a4
{
  v11 = a4;
  if (!self->_displayToCachedStatus)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    displayToCachedStatus = self->_displayToCachedStatus;
    self->_displayToCachedStatus = v6;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v9 = self->_displayToCachedStatus;
  v10 = [v11 sb_referenceModeObserverUniqueIdentifier];
  [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:v10];
}

- (void)_removeCachedStatusForDisplay:(id)a3
{
  displayToCachedStatus = self->_displayToCachedStatus;
  v5 = [a3 sb_referenceModeObserverUniqueIdentifier];
  [(NSMutableDictionary *)displayToCachedStatus setObject:0 forKeyedSubscript:v5];

  if (![(NSMutableDictionary *)self->_displayToCachedStatus count])
  {
    v6 = self->_displayToCachedStatus;
    self->_displayToCachedStatus = 0;
  }
}

- (int64_t)_cachedStatusForDisplay:(id)a3
{
  displayToCachedStatus = self->_displayToCachedStatus;
  v4 = [a3 sb_referenceModeObserverUniqueIdentifier];
  v5 = [(NSMutableDictionary *)displayToCachedStatus objectForKeyedSubscript:v4];
  v6 = [v5 integerValue];

  return v6;
}

- (int64_t)_referenceModeStatusForDisplay:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (([v3 isReference] & 1) != 0 || objc_msgSend(v3, "isReferenceLimited"))
  {
    if ([v3 isReferenceLimited])
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v3 availablePresets];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      v4 = 1;
LABEL_8:
      v9 = 0;
      while (1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * v9) isReference])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v7)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      v4 = 0;
    }
  }

  return v4;
}

- (id)_configurationForDisplay:(id)a3
{
  CADisplayIdentifierToFBSDisplayConfig = self->_CADisplayIdentifierToFBSDisplayConfig;
  v4 = [a3 sb_referenceModeObserverUniqueIdentifier];
  v5 = [(NSMutableDictionary *)CADisplayIdentifierToFBSDisplayConfig objectForKeyedSubscript:v4];

  return v5;
}

- (void)_setConfig:(id)a3 forDisplay:(id)a4
{
  v12 = a3;
  v6 = a4;
  CADisplayIdentifierToFBSDisplayConfig = self->_CADisplayIdentifierToFBSDisplayConfig;
  if (v12 && !CADisplayIdentifierToFBSDisplayConfig)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->_CADisplayIdentifierToFBSDisplayConfig;
    self->_CADisplayIdentifierToFBSDisplayConfig = v8;

    CADisplayIdentifierToFBSDisplayConfig = self->_CADisplayIdentifierToFBSDisplayConfig;
  }

  v10 = [v6 sb_referenceModeObserverUniqueIdentifier];
  [(NSMutableDictionary *)CADisplayIdentifierToFBSDisplayConfig setObject:v12 forKeyedSubscript:v10];

  if (![(NSMutableDictionary *)self->_CADisplayIdentifierToFBSDisplayConfig count])
  {
    v11 = self->_CADisplayIdentifierToFBSDisplayConfig;
    self->_CADisplayIdentifierToFBSDisplayConfig = 0;
  }
}

- (void)_addObserver:(id)a3 forDisplay:(id)a4
{
  v14 = a3;
  v6 = a4;
  CADisplayIdentifierToObservers = self->_CADisplayIdentifierToObservers;
  if (!CADisplayIdentifierToObservers)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->_CADisplayIdentifierToObservers;
    self->_CADisplayIdentifierToObservers = v8;

    CADisplayIdentifierToObservers = self->_CADisplayIdentifierToObservers;
  }

  v10 = [v6 sb_referenceModeObserverUniqueIdentifier];
  v11 = [(NSMutableDictionary *)CADisplayIdentifierToObservers objectForKeyedSubscript:v10];

  if (!v11)
  {
    v11 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v12 = self->_CADisplayIdentifierToObservers;
    v13 = [v6 sb_referenceModeObserverUniqueIdentifier];
    [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];
  }

  [v11 addObject:v14];
}

- (void)_removeObserver:(id)a3 forDisplay:(id)a4
{
  v17 = a4;
  CADisplayIdentifierToObservers = self->_CADisplayIdentifierToObservers;
  v7 = a3;
  v8 = [v17 sb_referenceModeObserverUniqueIdentifier];
  v9 = [(NSMutableDictionary *)CADisplayIdentifierToObservers objectForKeyedSubscript:v8];
  [v9 removeObject:v7];

  v10 = self->_CADisplayIdentifierToObservers;
  v11 = [v17 sb_referenceModeObserverUniqueIdentifier];
  v12 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v11];
  v13 = [v12 count];

  if (!v13)
  {
    v14 = self->_CADisplayIdentifierToObservers;
    v15 = [v17 sb_referenceModeObserverUniqueIdentifier];
    [(NSMutableDictionary *)v14 setObject:0 forKeyedSubscript:v15];
  }

  if (![(NSMutableDictionary *)self->_CADisplayIdentifierToObservers count])
  {
    v16 = self->_CADisplayIdentifierToObservers;
    self->_CADisplayIdentifierToObservers = 0;
  }
}

- (id)_observersForDisplay:(id)a3
{
  CADisplayIdentifierToObservers = self->_CADisplayIdentifierToObservers;
  v4 = [a3 sb_referenceModeObserverUniqueIdentifier];
  v5 = [(NSMutableDictionary *)CADisplayIdentifierToObservers objectForKeyedSubscript:v4];
  v6 = [v5 allObjects];

  return v6;
}

- (void)_enumerateObserversOfDisplay:(id)a3 usingBlock:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SBDisplayReferenceModeMonitor *)self _configurationForDisplay:v6];
  v9 = [(SBDisplayReferenceModeMonitor *)self _observersForDisplay:v6];
  v10 = [(SBDisplayReferenceModeMonitor *)self referenceModeStatusForDisplayWithConfiguration:v8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v7[2](v7, *(*(&v16 + 1) + 8 * v15++), v8, v10);
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)_startObservingDisplayIfNeeded:(id)a3
{
  v4 = a3;
  observedDisplays = self->_observedDisplays;
  v8 = v4;
  if (!observedDisplays)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->_observedDisplays;
    self->_observedDisplays = v6;

    v4 = v8;
    observedDisplays = self->_observedDisplays;
  }

  if (([(NSMutableSet *)observedDisplays containsObject:v4]& 1) == 0)
  {
    [(NSMutableSet *)self->_observedDisplays addObject:v8];
    [v8 addObserver:self forKeyPath:@"isReference" options:0 context:0];
    [v8 addObserver:self forKeyPath:@"isReferenceLimited" options:0 context:0];
    [(SBDisplayReferenceModeMonitor *)self _setCachedStatus:[(SBDisplayReferenceModeMonitor *)self _referenceModeStatusForDisplay:v8] forDisplay:v8];
  }
}

- (void)_stopObservingDisplay:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableSet *)self->_observedDisplays containsObject:v6];
  [(SBDisplayReferenceModeMonitor *)self _setConfig:0 forDisplay:v6];
  [(SBDisplayReferenceModeMonitor *)self _removeCachedStatusForDisplay:v6];
  [(NSMutableSet *)self->_observedDisplays removeObject:v6];
  if ([(NSMutableSet *)self->_observedDisplays count])
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  observedDisplays = self->_observedDisplays;
  self->_observedDisplays = 0;

  if (v4)
  {
LABEL_3:
    [v6 removeObserver:self forKeyPath:@"isReference" context:0];
    [v6 removeObserver:self forKeyPath:@"isReferenceLimited" context:0];
  }

LABEL_4:
}

- (void)addReferenceModeStatusObserver:forDisplayWithConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"observer != nil" object:? file:? lineNumber:? description:?];
}

- (void)addReferenceModeStatusObserver:forDisplayWithConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[SBDisplayReferenceModeMonitor canAddObserverForDisplayWithConfiguration:configuration]" object:? file:? lineNumber:? description:?];
}

- (void)removeReferenceModeStatusObserver:forDisplayWithConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"observer != nil" object:? file:? lineNumber:? description:?];
}

- (void)removeReferenceModeStatusObserver:forDisplayWithConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[SBDisplayReferenceModeMonitor canAddObserverForDisplayWithConfiguration:configuration]" object:? file:? lineNumber:? description:?];
}

- (void)referenceModeStatusForDisplayWithConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[SBDisplayReferenceModeMonitor canAddObserverForDisplayWithConfiguration:configuration]" object:? file:? lineNumber:? description:?];
}

@end