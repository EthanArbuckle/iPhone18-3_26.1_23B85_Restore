@interface SBRecentDisplayItemsDataStore
- (NSOrderedSet)displayItems;
- (SBRecentDisplayItemsDataStore)init;
- (SBRecentDisplayItemsDataStore)initWithRecentLayouts:(id)a3 fallbackToRecentAppLayouts:(BOOL)a4;
- (SBRecentDisplayItemsPersistenceDelegate)persistenceDelegate;
- (id)_displayItemsFromRecentAppLayouts:(id)a3;
- (void)setDisplayItems:(id)a3;
@end

@implementation SBRecentDisplayItemsDataStore

- (SBRecentDisplayItemsDataStore)init
{
  v3 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v4 = [v3 recentAppLayouts];
  v5 = [(SBRecentDisplayItemsDataStore *)self initWithRecentLayouts:v4 fallbackToRecentAppLayouts:1];

  return v5;
}

- (SBRecentDisplayItemsDataStore)initWithRecentLayouts:(id)a3 fallbackToRecentAppLayouts:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBRecentDisplayItemsDataStore;
  v8 = [(SBRecentDisplayItemsDataStore *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recentLayouts, a3);
    v9->_shouldFallbackToRecentAppLayouts = a4;
  }

  return v9;
}

- (void)setDisplayItems:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_persistenceDelegate);
  [WeakRetained dataStore:self persistDisplayItems:v4];
}

- (NSOrderedSet)displayItems
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_persistenceDelegate);
  v4 = [WeakRetained persistedDisplayItemsForDataStore:self];
  if (!v4)
  {
    if (self->_shouldFallbackToRecentAppLayouts)
    {
      v4 = [(SBRecentDisplayItemsDataStore *)self _displayItemsFromRecentAppLayouts:self->_recentLayouts];
      [(SBRecentDisplayItemsDataStore *)self setDisplayItems:v4];
    }

    else
    {
      v4 = 0;
    }
  }

  v5 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
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
        if ([WeakRetained dataStore:self shouldRestorePersistedDisplayItem:{v11, v13}])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_displayItemsFromRecentAppLayouts:(id)a3
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  v32[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v32[1] = v7;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v19 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = v20;
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [v9 itemForLayoutRole:{objc_msgSend(*(*(&v22 + 1) + 8 * j), "integerValue")}];
              v16 = [v15 bundleIdentifier];
              if (v15 && ([v5 containsObject:v16] & 1) == 0)
              {
                [v4 addObject:v15];
                [v5 addObject:v16];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v12);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  return v4;
}

- (SBRecentDisplayItemsPersistenceDelegate)persistenceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_persistenceDelegate);

  return WeakRetained;
}

@end