@interface SBAppInteractionEventSourceManager
+ (id)sharedInstance;
- (SBAppInteractionEventSourceManager)init;
- (id)eventSourceForWindowScene:(id)a3;
- (void)addObserver:(id)a3;
- (void)eventSource:(id)a3 applicationsBecameHidden:(id)a4;
- (void)eventSource:(id)a3 applicationsBecameVisible:(id)a4;
- (void)eventSource:(id)a3 didBeginTransitionToMode:(int64_t)a4 withLayoutState:(id)a5 activatingElement:(id)a6 triggeredBy:(int64_t)a7;
- (void)eventSource:(id)a3 didFinishTransitionToMode:(int64_t)a4 withLayoutState:(id)a5 activatingElement:(id)a6 triggeredBy:(int64_t)a7;
- (void)eventSource:(id)a3 keyboardFocusChangedToApplication:(id)a4;
- (void)eventSource:(id)a3 userDeletedApplications:(id)a4;
- (void)eventSource:(id)a3 userDeletedWebBookmark:(id)a4;
- (void)eventSource:(id)a3 userQuitApplicationInSwitcher:(id)a4;
- (void)eventSource:(id)a3 userRemovedSuggestions:(id)a4;
- (void)eventSource:(id)a3 userTouchedApplication:(id)a4;
- (void)eventSource:(id)a3 userTouchedApplication:(id)a4 pid:(int)a5 inContext:(unsigned int)a6;
- (void)windowSceneDidConnect:(id)a3;
- (void)windowSceneDidDisconnect:(id)a3;
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
    v3 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    windowScenesToEventSources = v2->_windowScenesToEventSources;
    v2->_windowScenesToEventSources = v3;
  }

  return v2;
}

- (id)eventSourceForWindowScene:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_windowScenesToEventSources objectForKey:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(SBDisplayAppInteractionEventSource);
    [(NSMapTable *)self->_windowScenesToEventSources setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)windowSceneDidConnect:(id)a3
{
  v4 = a3;
  v5 = [(SBAppInteractionEventSourceManager *)self eventSourceForWindowScene:v4];
  [v5 windowSceneDidConnect:v4];

  [v5 addObserver:self];
}

- (void)windowSceneDidDisconnect:(id)a3
{
  v6 = a3;
  v4 = [(NSMapTable *)self->_windowScenesToEventSources objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 removeObserver:self];
  }

  [(NSMapTable *)self->_windowScenesToEventSources removeObjectForKey:v6];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)eventSource:(id)a3 userRemovedSuggestions:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
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
          [v11 eventSource:self userRemovedSuggestions:{v5, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)eventSource:(id)a3 userDeletedApplications:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
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
          [v11 eventSource:self userDeletedApplications:{v5, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)eventSource:(id)a3 userQuitApplicationInSwitcher:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
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
          [v11 eventSource:self userQuitApplicationInSwitcher:{v5, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)eventSource:(id)a3 applicationsBecameHidden:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
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
          [v11 eventSource:self applicationsBecameHidden:{v5, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)eventSource:(id)a3 applicationsBecameVisible:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
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
          [v11 eventSource:self applicationsBecameVisible:{v5, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)eventSource:(id)a3 userDeletedWebBookmark:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
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
          [v11 eventSource:self userDeletedWebBookmark:{v5, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)eventSource:(id)a3 userTouchedApplication:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
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
          [v11 eventSource:self userTouchedApplication:{v5, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)eventSource:(id)a3 keyboardFocusChangedToApplication:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
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
          [v11 eventSource:self keyboardFocusChangedToApplication:{v5, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)eventSource:(id)a3 userTouchedApplication:(id)a4 pid:(int)a5 inContext:(unsigned int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v21 = *MEMORY[0x277D85DE8];
  v9 = a4;
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
          [v15 eventSource:self userTouchedApplication:v9 pid:v7 inContext:{v6, v16}];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)eventSource:(id)a3 didBeginTransitionToMode:(int64_t)a4 withLayoutState:(id)a5 activatingElement:(id)a6 triggeredBy:(int64_t)a7
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
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
          [v17 eventSource:self didBeginTransitionToMode:a4 withLayoutState:v10 activatingElement:v11 triggeredBy:a7];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSHashTable *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }
}

- (void)eventSource:(id)a3 didFinishTransitionToMode:(int64_t)a4 withLayoutState:(id)a5 activatingElement:(id)a6 triggeredBy:(int64_t)a7
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
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
          [v17 eventSource:self didFinishTransitionToMode:a4 withLayoutState:v10 activatingElement:v11 triggeredBy:a7];
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