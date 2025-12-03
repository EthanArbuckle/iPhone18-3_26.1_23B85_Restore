@interface SBSceneHandleBlockObserver
- (id)observeCreate:(id)create;
- (id)observeDestroy:(id)destroy;
- (id)observeDidUpdateClientSettings:(id)settings;
- (id)observeDidUpdateContentState:(id)state;
- (id)observeDidUpdateSettings:(id)settings;
- (void)dealloc;
- (void)invalidate;
- (void)removeObserverForToken:(id)token;
- (void)sceneHandle:(id)handle didCreateScene:(id)scene;
- (void)sceneHandle:(id)handle didDestroyScene:(id)scene;
- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings;
- (void)sceneHandle:(id)handle didUpdateContentState:(int64_t)state;
- (void)sceneHandle:(id)handle didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings;
@end

@implementation SBSceneHandleBlockObserver

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBSceneHandleBlockObserver.m" lineNumber:51 description:@"Cannot deallocate a SBSceneHandleBlockObserver without invalidating first."];
}

- (id)observeCreate:(id)create
{
  createCopy = create;
  if (!self->_createBlocks)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    createBlocks = self->_createBlocks;
    self->_createBlocks = v5;
  }

  v7 = [[_SBSceneHandleObserverToken alloc] initWithOwner:self->_createBlocks];
  v8 = self->_createBlocks;
  v9 = [createCopy copy];
  [(NSMutableDictionary *)v8 setObject:v9 forKey:v7];

  return v7;
}

- (id)observeDestroy:(id)destroy
{
  destroyCopy = destroy;
  if (!self->_destroyBlocks)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    destroyBlocks = self->_destroyBlocks;
    self->_destroyBlocks = v5;
  }

  v7 = [[_SBSceneHandleObserverToken alloc] initWithOwner:self->_destroyBlocks];
  v8 = self->_destroyBlocks;
  v9 = [destroyCopy copy];
  [(NSMutableDictionary *)v8 setObject:v9 forKey:v7];

  return v7;
}

- (id)observeDidUpdateContentState:(id)state
{
  stateCopy = state;
  if (!self->_didUpdateContentStateBlocks)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    didUpdateContentStateBlocks = self->_didUpdateContentStateBlocks;
    self->_didUpdateContentStateBlocks = v5;
  }

  v7 = [[_SBSceneHandleObserverToken alloc] initWithOwner:self->_didUpdateContentStateBlocks];
  v8 = self->_didUpdateContentStateBlocks;
  v9 = [stateCopy copy];
  [(NSMutableDictionary *)v8 setObject:v9 forKey:v7];

  return v7;
}

- (id)observeDidUpdateSettings:(id)settings
{
  settingsCopy = settings;
  if (!self->_didUpdateSettingsBlocks)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    didUpdateSettingsBlocks = self->_didUpdateSettingsBlocks;
    self->_didUpdateSettingsBlocks = v5;
  }

  v7 = [[_SBSceneHandleObserverToken alloc] initWithOwner:self->_didUpdateSettingsBlocks];
  v8 = self->_didUpdateSettingsBlocks;
  v9 = [settingsCopy copy];
  [(NSMutableDictionary *)v8 setObject:v9 forKey:v7];

  return v7;
}

- (id)observeDidUpdateClientSettings:(id)settings
{
  settingsCopy = settings;
  if (!self->_didUpdateClientSettingsBlocks)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    didUpdateClientSettingsBlocks = self->_didUpdateClientSettingsBlocks;
    self->_didUpdateClientSettingsBlocks = v5;
  }

  v7 = [[_SBSceneHandleObserverToken alloc] initWithOwner:self->_didUpdateClientSettingsBlocks];
  v8 = self->_didUpdateClientSettingsBlocks;
  v9 = [settingsCopy copy];
  [(NSMutableDictionary *)v8 setObject:v9 forKey:v7];

  return v7;
}

- (void)removeObserverForToken:(id)token
{
  if (token)
  {
    tokenCopy = token;
    owner = [tokenCopy owner];
    [owner removeObjectForKey:tokenCopy];
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

- (void)sceneHandle:(id)handle didCreateScene:(id)scene
{
  v19 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  sceneCopy = scene;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->_createBlocks allValues];
  v9 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allValues);
        }

        (*(*(*(&v14 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sceneHandle:(id)handle didDestroyScene:(id)scene
{
  v19 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  sceneCopy = scene;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->_destroyBlocks allValues];
  v9 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allValues);
        }

        (*(*(*(&v14 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sceneHandle:(id)handle didUpdateContentState:(int64_t)state
{
  v17 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_didUpdateContentStateBlocks allValues];
  v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allValues);
        }

        (*(*(*(&v12 + 1) + 8 * v10++) + 16))();
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sceneHandle:(id)handle didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings
{
  v22 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  diffCopy = diff;
  settingsCopy = settings;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allValues = [(NSMutableDictionary *)self->_didUpdateSettingsBlocks allValues];
  v12 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(allValues);
        }

        (*(*(*(&v17 + 1) + 8 * v15++) + 16))();
      }

      while (v13 != v15);
      v13 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings
{
  v19 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  settingsCopy = settings;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->_didUpdateClientSettingsBlocks allValues];
  v9 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allValues);
        }

        (*(*(*(&v14 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end