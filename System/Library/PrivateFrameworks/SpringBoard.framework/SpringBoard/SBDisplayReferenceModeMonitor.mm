@interface SBDisplayReferenceModeMonitor
+ (BOOL)canAddObserverForDisplayWithConfiguration:(id)configuration;
- (BOOL)_shouldNotifyObserversOfReferenceModeStatusChangeForDisplay:(id)display;
- (id)_configurationForDisplay:(id)display;
- (id)_observersForDisplay:(id)display;
- (int64_t)_cachedStatusForDisplay:(id)display;
- (int64_t)_referenceModeStatusForDisplay:(id)display;
- (int64_t)referenceModeStatusForDisplayWithConfiguration:(id)configuration;
- (void)_addObserver:(id)observer forDisplay:(id)display;
- (void)_enumerateObserversOfDisplay:(id)display usingBlock:(id)block;
- (void)_removeCachedStatusForDisplay:(id)display;
- (void)_removeObserver:(id)observer forDisplay:(id)display;
- (void)_setCachedStatus:(int64_t)status forDisplay:(id)display;
- (void)_setConfig:(id)config forDisplay:(id)display;
- (void)_startObservingDisplayIfNeeded:(id)needed;
- (void)_stopObservingDisplay:(id)display;
- (void)addReferenceModeStatusObserver:(id)observer forDisplayWithConfiguration:(id)configuration;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeReferenceModeStatusObserver:(id)observer forDisplayWithConfiguration:(id)configuration;
@end

@implementation SBDisplayReferenceModeMonitor

+ (BOOL)canAddObserverForDisplayWithConfiguration:(id)configuration
{
  sb_referenceModeObserverUniqueIdentifier = [configuration sb_referenceModeObserverUniqueIdentifier];
  v4 = sb_referenceModeObserverUniqueIdentifier != 0;

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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([(NSMutableSet *)self->_observedDisplays containsObject:objectCopy])
  {
    v13 = objectCopy;
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
    [(SBDisplayReferenceModeMonitor *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

uint64_t __80__SBDisplayReferenceModeMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  [a2 displayReferenceModeStatusDidChangeForDisplayWithConfiguration:? newStatus:?];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v6 _setCachedStatus:a4 forDisplay:v7];
}

- (void)addReferenceModeStatusObserver:(id)observer forDisplayWithConfiguration:(id)configuration
{
  observerCopy = observer;
  configurationCopy = configuration;
  if (!observerCopy)
  {
    [SBDisplayReferenceModeMonitor addReferenceModeStatusObserver:forDisplayWithConfiguration:];
  }

  if (![SBDisplayReferenceModeMonitor canAddObserverForDisplayWithConfiguration:configurationCopy])
  {
    [SBDisplayReferenceModeMonitor addReferenceModeStatusObserver:forDisplayWithConfiguration:];
  }

  v7 = [(SBDisplayReferenceModeMonitor *)self _displayForConfiguration:configurationCopy];
  if (v7)
  {
    [(SBDisplayReferenceModeMonitor *)self _addObserver:observerCopy forDisplay:v7];
    [(SBDisplayReferenceModeMonitor *)self _startObservingDisplayIfNeeded:v7];
    [(SBDisplayReferenceModeMonitor *)self _setConfig:configurationCopy forDisplay:v7];
  }
}

- (void)removeReferenceModeStatusObserver:(id)observer forDisplayWithConfiguration:(id)configuration
{
  observerCopy = observer;
  configurationCopy = configuration;
  if (!observerCopy)
  {
    [SBDisplayReferenceModeMonitor removeReferenceModeStatusObserver:forDisplayWithConfiguration:];
  }

  if (![SBDisplayReferenceModeMonitor canAddObserverForDisplayWithConfiguration:configurationCopy])
  {
    [SBDisplayReferenceModeMonitor removeReferenceModeStatusObserver:forDisplayWithConfiguration:];
  }

  v7 = [(SBDisplayReferenceModeMonitor *)self _displayForConfiguration:configurationCopy];
  [(SBDisplayReferenceModeMonitor *)self _removeObserver:observerCopy forDisplay:v7];
  v8 = [(SBDisplayReferenceModeMonitor *)self _observersForDisplay:v7];
  v9 = [v8 count];

  if (!v9)
  {
    [(SBDisplayReferenceModeMonitor *)self _stopObservingDisplay:v7];
  }
}

- (int64_t)referenceModeStatusForDisplayWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (![SBDisplayReferenceModeMonitor canAddObserverForDisplayWithConfiguration:configurationCopy])
  {
    [SBDisplayReferenceModeMonitor referenceModeStatusForDisplayWithConfiguration:];
  }

  v5 = [(SBDisplayReferenceModeMonitor *)self _displayForConfiguration:configurationCopy];
  displayToCachedStatus = self->_displayToCachedStatus;
  sb_referenceModeObserverUniqueIdentifier = [v5 sb_referenceModeObserverUniqueIdentifier];
  v8 = [(NSMutableDictionary *)displayToCachedStatus objectForKeyedSubscript:sb_referenceModeObserverUniqueIdentifier];

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

- (BOOL)_shouldNotifyObserversOfReferenceModeStatusChangeForDisplay:(id)display
{
  displayCopy = display;
  v5 = [(SBDisplayReferenceModeMonitor *)self _cachedStatusForDisplay:displayCopy];
  v6 = [(SBDisplayReferenceModeMonitor *)self _referenceModeStatusForDisplay:displayCopy];

  return v5 != v6;
}

- (void)_setCachedStatus:(int64_t)status forDisplay:(id)display
{
  displayCopy = display;
  if (!self->_displayToCachedStatus)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    displayToCachedStatus = self->_displayToCachedStatus;
    self->_displayToCachedStatus = dictionary;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:status];
  v9 = self->_displayToCachedStatus;
  sb_referenceModeObserverUniqueIdentifier = [displayCopy sb_referenceModeObserverUniqueIdentifier];
  [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:sb_referenceModeObserverUniqueIdentifier];
}

- (void)_removeCachedStatusForDisplay:(id)display
{
  displayToCachedStatus = self->_displayToCachedStatus;
  sb_referenceModeObserverUniqueIdentifier = [display sb_referenceModeObserverUniqueIdentifier];
  [(NSMutableDictionary *)displayToCachedStatus setObject:0 forKeyedSubscript:sb_referenceModeObserverUniqueIdentifier];

  if (![(NSMutableDictionary *)self->_displayToCachedStatus count])
  {
    v6 = self->_displayToCachedStatus;
    self->_displayToCachedStatus = 0;
  }
}

- (int64_t)_cachedStatusForDisplay:(id)display
{
  displayToCachedStatus = self->_displayToCachedStatus;
  sb_referenceModeObserverUniqueIdentifier = [display sb_referenceModeObserverUniqueIdentifier];
  v5 = [(NSMutableDictionary *)displayToCachedStatus objectForKeyedSubscript:sb_referenceModeObserverUniqueIdentifier];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (int64_t)_referenceModeStatusForDisplay:(id)display
{
  v16 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  if (([displayCopy isReference] & 1) != 0 || objc_msgSend(displayCopy, "isReferenceLimited"))
  {
    if ([displayCopy isReferenceLimited])
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
    availablePresets = [displayCopy availablePresets];
    v6 = [availablePresets countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(availablePresets);
        }

        if ([*(*(&v11 + 1) + 8 * v9) isReference])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [availablePresets countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)_configurationForDisplay:(id)display
{
  CADisplayIdentifierToFBSDisplayConfig = self->_CADisplayIdentifierToFBSDisplayConfig;
  sb_referenceModeObserverUniqueIdentifier = [display sb_referenceModeObserverUniqueIdentifier];
  v5 = [(NSMutableDictionary *)CADisplayIdentifierToFBSDisplayConfig objectForKeyedSubscript:sb_referenceModeObserverUniqueIdentifier];

  return v5;
}

- (void)_setConfig:(id)config forDisplay:(id)display
{
  configCopy = config;
  displayCopy = display;
  CADisplayIdentifierToFBSDisplayConfig = self->_CADisplayIdentifierToFBSDisplayConfig;
  if (configCopy && !CADisplayIdentifierToFBSDisplayConfig)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->_CADisplayIdentifierToFBSDisplayConfig;
    self->_CADisplayIdentifierToFBSDisplayConfig = dictionary;

    CADisplayIdentifierToFBSDisplayConfig = self->_CADisplayIdentifierToFBSDisplayConfig;
  }

  sb_referenceModeObserverUniqueIdentifier = [displayCopy sb_referenceModeObserverUniqueIdentifier];
  [(NSMutableDictionary *)CADisplayIdentifierToFBSDisplayConfig setObject:configCopy forKeyedSubscript:sb_referenceModeObserverUniqueIdentifier];

  if (![(NSMutableDictionary *)self->_CADisplayIdentifierToFBSDisplayConfig count])
  {
    v11 = self->_CADisplayIdentifierToFBSDisplayConfig;
    self->_CADisplayIdentifierToFBSDisplayConfig = 0;
  }
}

- (void)_addObserver:(id)observer forDisplay:(id)display
{
  observerCopy = observer;
  displayCopy = display;
  CADisplayIdentifierToObservers = self->_CADisplayIdentifierToObservers;
  if (!CADisplayIdentifierToObservers)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->_CADisplayIdentifierToObservers;
    self->_CADisplayIdentifierToObservers = dictionary;

    CADisplayIdentifierToObservers = self->_CADisplayIdentifierToObservers;
  }

  sb_referenceModeObserverUniqueIdentifier = [displayCopy sb_referenceModeObserverUniqueIdentifier];
  weakObjectsHashTable = [(NSMutableDictionary *)CADisplayIdentifierToObservers objectForKeyedSubscript:sb_referenceModeObserverUniqueIdentifier];

  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v12 = self->_CADisplayIdentifierToObservers;
    sb_referenceModeObserverUniqueIdentifier2 = [displayCopy sb_referenceModeObserverUniqueIdentifier];
    [(NSMutableDictionary *)v12 setObject:weakObjectsHashTable forKeyedSubscript:sb_referenceModeObserverUniqueIdentifier2];
  }

  [weakObjectsHashTable addObject:observerCopy];
}

- (void)_removeObserver:(id)observer forDisplay:(id)display
{
  displayCopy = display;
  CADisplayIdentifierToObservers = self->_CADisplayIdentifierToObservers;
  observerCopy = observer;
  sb_referenceModeObserverUniqueIdentifier = [displayCopy sb_referenceModeObserverUniqueIdentifier];
  v9 = [(NSMutableDictionary *)CADisplayIdentifierToObservers objectForKeyedSubscript:sb_referenceModeObserverUniqueIdentifier];
  [v9 removeObject:observerCopy];

  v10 = self->_CADisplayIdentifierToObservers;
  sb_referenceModeObserverUniqueIdentifier2 = [displayCopy sb_referenceModeObserverUniqueIdentifier];
  v12 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:sb_referenceModeObserverUniqueIdentifier2];
  v13 = [v12 count];

  if (!v13)
  {
    v14 = self->_CADisplayIdentifierToObservers;
    sb_referenceModeObserverUniqueIdentifier3 = [displayCopy sb_referenceModeObserverUniqueIdentifier];
    [(NSMutableDictionary *)v14 setObject:0 forKeyedSubscript:sb_referenceModeObserverUniqueIdentifier3];
  }

  if (![(NSMutableDictionary *)self->_CADisplayIdentifierToObservers count])
  {
    v16 = self->_CADisplayIdentifierToObservers;
    self->_CADisplayIdentifierToObservers = 0;
  }
}

- (id)_observersForDisplay:(id)display
{
  CADisplayIdentifierToObservers = self->_CADisplayIdentifierToObservers;
  sb_referenceModeObserverUniqueIdentifier = [display sb_referenceModeObserverUniqueIdentifier];
  v5 = [(NSMutableDictionary *)CADisplayIdentifierToObservers objectForKeyedSubscript:sb_referenceModeObserverUniqueIdentifier];
  allObjects = [v5 allObjects];

  return allObjects;
}

- (void)_enumerateObserversOfDisplay:(id)display usingBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  blockCopy = block;
  v8 = [(SBDisplayReferenceModeMonitor *)self _configurationForDisplay:displayCopy];
  v9 = [(SBDisplayReferenceModeMonitor *)self _observersForDisplay:displayCopy];
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

        blockCopy[2](blockCopy, *(*(&v16 + 1) + 8 * v15++), v8, v10);
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)_startObservingDisplayIfNeeded:(id)needed
{
  neededCopy = needed;
  observedDisplays = self->_observedDisplays;
  v8 = neededCopy;
  if (!observedDisplays)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->_observedDisplays;
    self->_observedDisplays = v6;

    neededCopy = v8;
    observedDisplays = self->_observedDisplays;
  }

  if (([(NSMutableSet *)observedDisplays containsObject:neededCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_observedDisplays addObject:v8];
    [v8 addObserver:self forKeyPath:@"isReference" options:0 context:0];
    [v8 addObserver:self forKeyPath:@"isReferenceLimited" options:0 context:0];
    [(SBDisplayReferenceModeMonitor *)self _setCachedStatus:[(SBDisplayReferenceModeMonitor *)self _referenceModeStatusForDisplay:v8] forDisplay:v8];
  }
}

- (void)_stopObservingDisplay:(id)display
{
  displayCopy = display;
  v4 = [(NSMutableSet *)self->_observedDisplays containsObject:displayCopy];
  [(SBDisplayReferenceModeMonitor *)self _setConfig:0 forDisplay:displayCopy];
  [(SBDisplayReferenceModeMonitor *)self _removeCachedStatusForDisplay:displayCopy];
  [(NSMutableSet *)self->_observedDisplays removeObject:displayCopy];
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
    [displayCopy removeObserver:self forKeyPath:@"isReference" context:0];
    [displayCopy removeObserver:self forKeyPath:@"isReferenceLimited" context:0];
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