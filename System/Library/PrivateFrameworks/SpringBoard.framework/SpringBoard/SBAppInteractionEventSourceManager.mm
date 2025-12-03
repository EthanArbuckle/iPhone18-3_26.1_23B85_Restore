@interface SBAppInteractionEventSourceManager
+ (id)sharedInstance;
- (SBAppInteractionEventSourceManager)init;
- (id)eventSourceForWindowScene:(id)scene;
- (void)addObserver:(id)observer;
- (void)eventSource:(id)source applicationsBecameHidden:(id)hidden;
- (void)eventSource:(id)source applicationsBecameVisible:(id)visible;
- (void)eventSource:(id)source didBeginTransitionToMode:(int64_t)mode withLayoutState:(id)state activatingElement:(id)element triggeredBy:(int64_t)by;
- (void)eventSource:(id)source didFinishTransitionToMode:(int64_t)mode withLayoutState:(id)state activatingElement:(id)element triggeredBy:(int64_t)by;
- (void)eventSource:(id)source keyboardFocusChangedToApplication:(id)application;
- (void)eventSource:(id)source userDeletedApplications:(id)applications;
- (void)eventSource:(id)source userDeletedWebBookmark:(id)bookmark;
- (void)eventSource:(id)source userQuitApplicationInSwitcher:(id)switcher;
- (void)eventSource:(id)source userRemovedSuggestions:(id)suggestions;
- (void)eventSource:(id)source userTouchedApplication:(id)application;
- (void)eventSource:(id)source userTouchedApplication:(id)application pid:(int)pid inContext:(unsigned int)context;
- (void)windowSceneDidConnect:(id)connect;
- (void)windowSceneDidDisconnect:(id)disconnect;
@end

@implementation SBAppInteractionEventSourceManager

+ (id)sharedInstance
{
  if (sharedInstance___once_4 != -1)
  {
    +[SBAppInteractionEventSourceManager sharedInstance];
  }

  v3 = sharedInstance___controller_0;

  return v3;
}

void __52__SBAppInteractionEventSourceManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBAppInteractionEventSourceManager);
  v1 = sharedInstance___controller_0;
  sharedInstance___controller_0 = v0;
}

- (SBAppInteractionEventSourceManager)init
{
  v6.receiver = self;
  v6.super_class = SBAppInteractionEventSourceManager;
  v2 = [(SBAppInteractionEventSourceManager *)&v6 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    windowScenesToEventSources = v2->_windowScenesToEventSources;
    v2->_windowScenesToEventSources = weakToStrongObjectsMapTable;
  }

  return v2;
}

- (id)eventSourceForWindowScene:(id)scene
{
  sceneCopy = scene;
  v5 = [(NSMapTable *)self->_windowScenesToEventSources objectForKey:sceneCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(SBDisplayAppInteractionEventSource);
    [(NSMapTable *)self->_windowScenesToEventSources setObject:v5 forKey:sceneCopy];
  }

  return v5;
}

- (void)windowSceneDidConnect:(id)connect
{
  connectCopy = connect;
  v5 = [(SBAppInteractionEventSourceManager *)self eventSourceForWindowScene:connectCopy];
  [v5 windowSceneDidConnect:connectCopy];

  [v5 addObserver:self];
}

- (void)windowSceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v4 = [(NSMapTable *)self->_windowScenesToEventSources objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 removeObserver:self];
  }

  [(NSMapTable *)self->_windowScenesToEventSources removeObjectForKey:disconnectCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    v7 = self->_observers;
    self->_observers = v6;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)eventSource:(id)source userRemovedSuggestions:(id)suggestions
{
  v17 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 eventSource:self userRemovedSuggestions:{suggestionsCopy, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)eventSource:(id)source userDeletedApplications:(id)applications
{
  v17 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 eventSource:self userDeletedApplications:{applicationsCopy, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)eventSource:(id)source userQuitApplicationInSwitcher:(id)switcher
{
  v17 = *MEMORY[0x277D85DE8];
  switcherCopy = switcher;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 eventSource:self userQuitApplicationInSwitcher:{switcherCopy, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)eventSource:(id)source applicationsBecameHidden:(id)hidden
{
  v17 = *MEMORY[0x277D85DE8];
  hiddenCopy = hidden;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 eventSource:self applicationsBecameHidden:{hiddenCopy, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)eventSource:(id)source applicationsBecameVisible:(id)visible
{
  v17 = *MEMORY[0x277D85DE8];
  visibleCopy = visible;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 eventSource:self applicationsBecameVisible:{visibleCopy, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)eventSource:(id)source userDeletedWebBookmark:(id)bookmark
{
  v17 = *MEMORY[0x277D85DE8];
  bookmarkCopy = bookmark;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 eventSource:self userDeletedWebBookmark:{bookmarkCopy, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)eventSource:(id)source userTouchedApplication:(id)application
{
  v17 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 eventSource:self userTouchedApplication:{applicationCopy, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)eventSource:(id)source keyboardFocusChangedToApplication:(id)application
{
  v17 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 eventSource:self keyboardFocusChangedToApplication:{applicationCopy, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)eventSource:(id)source userTouchedApplication:(id)application pid:(int)pid inContext:(unsigned int)context
{
  v6 = *&context;
  v7 = *&pid;
  v21 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_observers;
  v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 eventSource:self userTouchedApplication:applicationCopy pid:v7 inContext:{v6, v16}];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)eventSource:(id)source didBeginTransitionToMode:(int64_t)mode withLayoutState:(id)state activatingElement:(id)element triggeredBy:(int64_t)by
{
  v24 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  elementCopy = element;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self->_observers;
  v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          [v17 eventSource:self didBeginTransitionToMode:mode withLayoutState:stateCopy activatingElement:elementCopy triggeredBy:by];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSHashTable *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }
}

- (void)eventSource:(id)source didFinishTransitionToMode:(int64_t)mode withLayoutState:(id)state activatingElement:(id)element triggeredBy:(int64_t)by
{
  v24 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  elementCopy = element;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self->_observers;
  v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          [v17 eventSource:self didFinishTransitionToMode:mode withLayoutState:stateCopy activatingElement:elementCopy triggeredBy:by];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSHashTable *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }
}

@end