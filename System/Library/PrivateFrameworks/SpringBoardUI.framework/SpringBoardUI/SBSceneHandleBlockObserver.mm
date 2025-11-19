@interface SBSceneHandleBlockObserver
- (id)observeCreate:(id)a3;
- (id)observeDestroy:(id)a3;
- (id)observeDidUpdateClientSettings:(id)a3;
- (id)observeDidUpdateContentState:(id)a3;
- (id)observeDidUpdateSettings:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)removeObserverForToken:(id)a3;
- (void)sceneHandle:(id)a3 didCreateScene:(id)a4;
- (void)sceneHandle:(id)a3 didDestroyScene:(id)a4;
- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4;
- (void)sceneHandle:(id)a3 didUpdateContentState:(int64_t)a4;
- (void)sceneHandle:(id)a3 didUpdateSettingsWithDiff:(id)a4 previousSettings:(id)a5;
@end

@implementation SBSceneHandleBlockObserver

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSceneHandleBlockObserver.m" lineNumber:51 description:@"Cannot deallocate a SBSceneHandleBlockObserver without invalidating first."];
}

- (id)observeCreate:(id)a3
{
  v4 = a3;
  if (!self->_createBlocks)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    createBlocks = self->_createBlocks;
    self->_createBlocks = v5;
  }

  v7 = [[_SBSceneHandleObserverToken alloc] initWithOwner:self->_createBlocks];
  v8 = self->_createBlocks;
  v9 = [v4 copy];
  [(NSMutableDictionary *)v8 setObject:v9 forKey:v7];

  return v7;
}

- (id)observeDestroy:(id)a3
{
  v4 = a3;
  if (!self->_destroyBlocks)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    destroyBlocks = self->_destroyBlocks;
    self->_destroyBlocks = v5;
  }

  v7 = [[_SBSceneHandleObserverToken alloc] initWithOwner:self->_destroyBlocks];
  v8 = self->_destroyBlocks;
  v9 = [v4 copy];
  [(NSMutableDictionary *)v8 setObject:v9 forKey:v7];

  return v7;
}

- (id)observeDidUpdateContentState:(id)a3
{
  v4 = a3;
  if (!self->_didUpdateContentStateBlocks)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    didUpdateContentStateBlocks = self->_didUpdateContentStateBlocks;
    self->_didUpdateContentStateBlocks = v5;
  }

  v7 = [[_SBSceneHandleObserverToken alloc] initWithOwner:self->_didUpdateContentStateBlocks];
  v8 = self->_didUpdateContentStateBlocks;
  v9 = [v4 copy];
  [(NSMutableDictionary *)v8 setObject:v9 forKey:v7];

  return v7;
}

- (id)observeDidUpdateSettings:(id)a3
{
  v4 = a3;
  if (!self->_didUpdateSettingsBlocks)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    didUpdateSettingsBlocks = self->_didUpdateSettingsBlocks;
    self->_didUpdateSettingsBlocks = v5;
  }

  v7 = [[_SBSceneHandleObserverToken alloc] initWithOwner:self->_didUpdateSettingsBlocks];
  v8 = self->_didUpdateSettingsBlocks;
  v9 = [v4 copy];
  [(NSMutableDictionary *)v8 setObject:v9 forKey:v7];

  return v7;
}

- (id)observeDidUpdateClientSettings:(id)a3
{
  v4 = a3;
  if (!self->_didUpdateClientSettingsBlocks)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    didUpdateClientSettingsBlocks = self->_didUpdateClientSettingsBlocks;
    self->_didUpdateClientSettingsBlocks = v5;
  }

  v7 = [[_SBSceneHandleObserverToken alloc] initWithOwner:self->_didUpdateClientSettingsBlocks];
  v8 = self->_didUpdateClientSettingsBlocks;
  v9 = [v4 copy];
  [(NSMutableDictionary *)v8 setObject:v9 forKey:v7];

  return v7;
}

- (void)removeObserverForToken:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [v3 owner];
    [v4 removeObjectForKey:v3];
  }
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    createBlocks = self->_createBlocks;
    self->_createBlocks = 0;

    destroyBlocks = self->_destroyBlocks;
    self->_destroyBlocks = 0;

    didUpdateContentStateBlocks = self->_didUpdateContentStateBlocks;
    self->_didUpdateContentStateBlocks = 0;

    didUpdateSettingsBlocks = self->_didUpdateSettingsBlocks;
    self->_didUpdateSettingsBlocks = 0;

    didUpdateClientSettingsBlocks = self->_didUpdateClientSettingsBlocks;
    self->_didUpdateClientSettingsBlocks = 0;
  }
}

- (void)sceneHandle:(id)a3 didCreateScene:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSMutableDictionary *)self->_createBlocks allValues];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v14 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sceneHandle:(id)a3 didDestroyScene:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSMutableDictionary *)self->_destroyBlocks allValues];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v14 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sceneHandle:(id)a3 didUpdateContentState:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSMutableDictionary *)self->_didUpdateContentStateBlocks allValues];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        (*(*(*(&v12 + 1) + 8 * v10++) + 16))();
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sceneHandle:(id)a3 didUpdateSettingsWithDiff:(id)a4 previousSettings:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [(NSMutableDictionary *)self->_didUpdateSettingsBlocks allValues];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v17 + 1) + 8 * v15++) + 16))();
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSMutableDictionary *)self->_didUpdateClientSettingsBlocks allValues];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v14 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end