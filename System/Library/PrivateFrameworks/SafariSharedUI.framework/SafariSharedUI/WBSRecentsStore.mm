@interface WBSRecentsStore
- (WBSRecentsStore)initWithSiteMetadataManager:(id)manager;
- (WBSSiteMetadataManager)siteMetadataManager;
- (id)providerForItem:(id)item;
- (void)_fetchPendingMetadataAndNotifyRecentItemChanges;
- (void)_notifyRecentItemsDidReceiveMetadata;
- (void)_rebuildAllRecentItemsAndDevices;
- (void)dealloc;
- (void)fetchMetadata;
- (void)ingestRecentItemsFromProvider:(id)provider;
- (void)registerProvider:(id)provider;
- (void)updateRecentItem:(id)item withLinkMetadata:(id)metadata;
@end

@implementation WBSRecentsStore

- (void)_rebuildAllRecentItemsAndDevices
{
  v44 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E695DFA8] set];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  selfCopy = self;
  obj = self->_recentItemsByProviderIndex;
  v33 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v33)
  {
    v31 = *v39;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v38 + 1) + 8 * i);
        allObjects = [v5 allObjects];
        [array addObjectsFromArray:allObjects];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v7 = v5;
        v8 = [v7 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v35;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v35 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v34 + 1) + 8 * j);
              device = [v12 device];
              [v3 addObject:device];

              metadata = [v12 metadata];

              if (!metadata)
              {
                v15 = objc_alloc_init(MEMORY[0x1E696ECA0]);
                v16 = [v12 URL];
                [v15 setOriginalURL:v16];

                v17 = [v12 URL];
                [v15 setURL:v17];

                title = [v12 title];
                [v15 setTitle:title];

                [v12 setMetadata:v15];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v9);
        }
      }

      v33 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v33);
  }

  [array sortUsingComparator:&__block_literal_global_70];
  v19 = [array copy];
  displayableRecentItems = selfCopy->_displayableRecentItems;
  selfCopy->_displayableRecentItems = v19;

  allObjects2 = [v3 allObjects];
  v22 = [allObjects2 sortedArrayUsingComparator:&__block_literal_global_19_1];

  availableDevices = selfCopy->_availableDevices;
  if (availableDevices && v22)
  {
    v24 = [v22 differenceFromArray:? withOptions:?];
    hasChanges = [v24 hasChanges];

    objc_storeStrong(&selfCopy->_availableDevices, v22);
    if ((hasChanges & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v26 = availableDevices != 0;
  objc_storeStrong(&selfCopy->_availableDevices, v22);
  if ((v22 != 0) != v26)
  {
LABEL_22:
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"WBSRecentsStoreDidUpdateAvailableDevices" object:selfCopy];
  }

LABEL_23:
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"WBSRecentsStoreDidRebuildRecentItems" object:selfCopy];
}

- (void)fetchMetadata
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:*MEMORY[0x1E69C9130]];

  if (v4)
  {

    [(WBSRecentsStore *)self _fetchPendingMetadataAndNotifyRecentItemChanges];
  }
}

- (WBSRecentsStore)initWithSiteMetadataManager:(id)manager
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = WBSRecentsStore;
  v5 = [(WBSRecentsStore *)&v14 init];
  if (v5)
  {
    array = [MEMORY[0x1E695DF70] array];
    providers = v5->_providers;
    v5->_providers = array;

    array2 = [MEMORY[0x1E695DF70] array];
    recentItemsByProviderIndex = v5->_recentItemsByProviderIndex;
    v5->_recentItemsByProviderIndex = array2;

    objc_storeWeak(&v5->_siteMetadataManager, managerCopy);
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    recentItemsToMetadataTokens = v5->_recentItemsToMetadataTokens;
    v5->_recentItemsToMetadataTokens = strongToStrongObjectsMapTable;

    v12 = v5;
  }

  return v5;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_siteMetadataManager);
  objectEnumerator = [(NSMapTable *)self->_recentItemsToMetadataTokens objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  [WeakRetained cancelRequestsWithTokens:allObjects];

  v6.receiver = self;
  v6.super_class = WBSRecentsStore;
  [(WBSRecentsStore *)&v6 dealloc];
}

- (void)registerProvider:(id)provider
{
  providers = self->_providers;
  providerCopy = provider;
  [(NSMutableArray *)providers addObject:providerCopy];
  recentItemsByProviderIndex = self->_recentItemsByProviderIndex;
  v6 = [MEMORY[0x1E695DFD8] set];
  [(NSMutableArray *)recentItemsByProviderIndex addObject:v6];

  [providerCopy setRecentsStore:self];
  [(WBSRecentsStore *)self ingestRecentItemsFromProvider:providerCopy];
}

- (void)ingestRecentItemsFromProvider:(id)provider
{
  v42 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  v5 = [(NSMutableArray *)self->_providers indexOfObject:providerCopy];
  v30 = providerCopy;
  recentItems = [providerCopy recentItems];
  v29 = v5;
  v7 = [(NSMutableArray *)self->_recentItemsByProviderIndex objectAtIndexedSubscript:v5];
  v8 = [MEMORY[0x1E695DFA8] set];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = recentItems;
  v9 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        v14 = [v7 member:v13];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v13;
        }

        v17 = v16;
        device = [v13 device];
        [v17 setDevice:device];

        date = [v13 date];
        [v17 setDate:date];

        [v8 addObject:v17];
      }

      v10 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v10);
  }

  v20 = [v8 copy];
  [(NSMutableArray *)self->_recentItemsByProviderIndex setObject:v20 atIndexedSubscript:v29];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = v7;
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v32 + 1) + 8 * j);
        if (([v8 containsObject:v26] & 1) == 0)
        {
          v27 = [(NSMapTable *)self->_recentItemsToMetadataTokens objectForKey:v26];
          if (v27)
          {
            WeakRetained = objc_loadWeakRetained(&self->_siteMetadataManager);
            [WeakRetained cancelRequestWithToken:v27];

            [(NSMapTable *)self->_recentItemsToMetadataTokens removeObjectForKey:v26];
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v23);
  }

  [(WBSRecentsStore *)self _rebuildAllRecentItemsAndDevices];
  [(WBSRecentsStore *)self fetchMetadata];
}

- (void)_notifyRecentItemsDidReceiveMetadata
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"WBSRecentsStoreDidUpdateRecentItemsWithMetadata" object:self];
}

- (id)providerForItem:(id)item
{
  itemCopy = item;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__33;
  v17 = __Block_byref_object_dispose__33;
  v18 = 0;
  recentItemsByProviderIndex = self->_recentItemsByProviderIndex;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__WBSRecentsStore_providerForItem___block_invoke;
  v9[3] = &unk_1E8289918;
  v6 = itemCopy;
  selfCopy = self;
  v12 = &v13;
  v10 = v6;
  [(NSMutableArray *)recentItemsByProviderIndex enumerateObjectsUsingBlock:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __35__WBSRecentsStore_providerForItem___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 containsObject:a1[4]])
  {
    *a4 = 1;
    v7 = [*(a1[5] + 8) objectAtIndexedSubscript:a3];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

uint64_t __51__WBSRecentsStore__rebuildAllRecentItemsAndDevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __51__WBSRecentsStore__rebuildAllRecentItemsAndDevices__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_fetchPendingMetadataAndNotifyRecentItemChanges
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_siteMetadataManager);
  if (WeakRetained)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = self->_displayableRecentItems;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          if (![v8 metadataState])
          {
            [v8 setMetadataState:1];
            v9 = [WBSLPLinkMetadataRequest alloc];
            v10 = [v8 URL];
            v11 = [(WBSLPLinkMetadataRequest *)v9 initWithURL:v10];

            objc_initWeak(&location, self);
            objc_initWeak(&from, v8);
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __66__WBSRecentsStore__fetchPendingMetadataAndNotifyRecentItemChanges__block_invoke;
            v13[3] = &unk_1E8289980;
            objc_copyWeak(&v14, &location);
            objc_copyWeak(&v15, &from);
            v12 = [WeakRetained registerRequest:v11 priority:2 responseHandler:v13];
            if (v12)
            {
              [(NSMapTable *)self->_recentItemsToMetadataTokens setObject:v12 forKey:v8];
            }

            objc_destroyWeak(&v15);
            objc_destroyWeak(&v14);
            objc_destroyWeak(&from);
            objc_destroyWeak(&location);
          }
        }

        v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v5);
    }
  }
}

void __66__WBSRecentsStore__fetchPendingMetadataAndNotifyRecentItemChanges__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    if (v4)
    {
      v5 = [WBSLPLinkMetadataProvider unpackMetadataFromResponse:v10];
      if (v5)
      {
        [v4 setMetadataState:3];
        v6 = [v4 metadata];
        v7 = [v6 isEqual:v5];

        if ((v7 & 1) == 0)
        {
          v8 = [WeakRetained providerForItem:v4];
          if (objc_opt_respondsToSelector())
          {
            v9 = v8;
          }

          else
          {
            v9 = WeakRetained;
          }

          [v9 updateRecentItem:v4 withLinkMetadata:v5];
          [WeakRetained _notifyRecentItemsDidReceiveMetadata];
        }
      }

      else if ([v4 metadataState] != 3)
      {
        [v4 setMetadataState:2];
      }
    }
  }
}

- (void)updateRecentItem:(id)item withLinkMetadata:(id)metadata
{
  itemCopy = item;
  metadataCopy = metadata;
  title = [itemCopy title];
  v7 = [title length];

  if (v7)
  {
    v8 = itemCopy;
  }

  else
  {
    v8 = metadataCopy;
  }

  if (v7)
  {
    v9 = metadataCopy;
  }

  else
  {
    v9 = itemCopy;
  }

  title2 = [v8 title];
  [v9 setTitle:title2];

  imageProvider = [itemCopy imageProvider];

  if (!imageProvider)
  {
    imageProvider2 = [metadataCopy imageProvider];
    [itemCopy setImageProvider:imageProvider2];
  }

  [itemCopy setMetadata:metadataCopy];
}

- (WBSSiteMetadataManager)siteMetadataManager
{
  WeakRetained = objc_loadWeakRetained(&self->_siteMetadataManager);

  return WeakRetained;
}

@end