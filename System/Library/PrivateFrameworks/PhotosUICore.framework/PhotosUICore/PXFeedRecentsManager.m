@interface PXFeedRecentsManager
- (BOOL)_updateCachedRecentAssets;
- (NSArray)recentPHAssets;
- (NSOrderedSet)recentAssets;
- (PXFeedRecentsManager)initWithPhotoLibrary:(id)a3 count:(int64_t)a4;
- (PXFeedRecentsManagerDelegate)delegate;
- (void)_didFinishPostingNotifications:(id)a3;
- (void)_setCachedRecentAssets:(id)a3;
- (void)dealloc;
- (void)shouldReload:(id)a3;
@end

@implementation PXFeedRecentsManager

- (PXFeedRecentsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_didFinishPostingNotifications:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_pendingFeedEntriesChangeNotifications count]|| [(NSMutableArray *)self->_pendingAssetsChangeNotifications count])
  {
    v4 = [(NSMutableArray *)self->_pendingFeedEntriesChangeNotifications copy];
    [(NSMutableArray *)self->_pendingFeedEntriesChangeNotifications removeAllObjects];
    v5 = [(NSMutableArray *)self->_pendingAssetsChangeNotifications copy];
    [(NSMutableArray *)self->_pendingAssetsChangeNotifications removeAllObjects];
    if ([v4 count])
    {
      [(PXFeedRecentsManager *)self _invalidateCachedRecentAssets];
LABEL_5:
      v6 = [(PXFeedRecentsManager *)self delegate];
      [v6 feedRecentsManagerRecentAssetsDidChange:self];
    }

    else
    {
      v6 = [(PXFeedRecentsManager *)self _cachedRecentAssets];
      if ([v6 count])
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v7 = v5;
        v17 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v17)
        {
          v8 = *v24;
          v18 = v7;
          v16 = *v24;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v24 != v8)
              {
                objc_enumerationMutation(v7);
              }

              v10 = [*(*(&v23 + 1) + 8 * i) updatedAssets];
              v19 = 0u;
              v20 = 0u;
              v21 = 0u;
              v22 = 0u;
              v11 = v6;
              v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v20;
                while (2)
                {
                  for (j = 0; j != v13; ++j)
                  {
                    if (*v20 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    if ([v10 containsObject:*(*(&v19 + 1) + 8 * j)])
                    {

                      goto LABEL_5;
                    }
                  }

                  v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
                  if (v13)
                  {
                    continue;
                  }

                  break;
                }
              }

              v7 = v18;
              v8 = v16;
            }

            v17 = [v18 countByEnumeratingWithState:&v23 objects:v28 count:16];
          }

          while (v17);

          goto LABEL_7;
        }
      }
    }

LABEL_7:
  }
}

- (void)shouldReload:(id)a3
{
  [(NSMutableArray *)self->_pendingFeedEntriesChangeNotifications removeAllObjects];
  [(NSMutableArray *)self->_pendingAssetsChangeNotifications removeAllObjects];
  [(PXFeedRecentsManager *)self _invalidateCachedRecentAssets];
  v4 = [(PXFeedRecentsManager *)self delegate];
  [v4 feedRecentsManagerRecentAssetsDidChange:self];
}

- (BOOL)_updateCachedRecentAssets
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA0] orderedSet];
  v4 = [(PXFeedRecentsManager *)self count];
  v5 = MEMORY[0x1E69BE320];
  v6 = [(PHPhotoLibrary *)self->_photoLibrary photoLibrary];
  v7 = [v5 recentAssetsEntriesInLibrary:v6 limit:v4];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v22 + 1) + 8 * i) entryAssets];
        v14 = [v13 count];
        if ([v3 count] + v14 >= v4)
        {
          v16 = v4 - [v3 count];
          v17 = [v13 array];
          v18 = [v17 subarrayWithRange:{0, v16}];
          [v3 addObjectsFromArray:v18];

          goto LABEL_11;
        }

        v15 = [v13 array];
        [v3 addObjectsFromArray:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v19 = [(PXFeedRecentsManager *)self _cachedRecentAssets];
  v20 = [v3 isEqualToOrderedSet:v19];
  if ((v20 & 1) == 0)
  {
    [(PXFeedRecentsManager *)self _setCachedRecentAssets:v3];
  }

  return v20 ^ 1;
}

- (NSArray)recentPHAssets
{
  v3 = [(PXFeedRecentsManager *)self _cachedRecentPHAssets];
  if (!v3)
  {
    v4 = [(PXFeedRecentsManager *)self recentAssets];
    v5 = [v4 array];

    v3 = [MEMORY[0x1E69BE540] pl_PHAssetsForManagedAssets:v5 photoLibrary:self->_photoLibrary];
    [(PXFeedRecentsManager *)self _setCachedRecentPHAssets:v3];
  }

  return v3;
}

- (NSOrderedSet)recentAssets
{
  v3 = [(PXFeedRecentsManager *)self _cachedRecentAssets];
  if (!v3)
  {
    [(PXFeedRecentsManager *)self _updateCachedRecentAssets];
    v3 = [(PXFeedRecentsManager *)self _cachedRecentAssets];
  }

  return v3;
}

- (void)_setCachedRecentAssets:(id)a3
{
  v5 = a3;
  if (self->__cachedRecentAssets != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->__cachedRecentAssets, a3);
    cachedRecentPHAssets = self->__cachedRecentPHAssets;
    self->__cachedRecentPHAssets = 0;

    v5 = v7;
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E69BE2F0] defaultCenter];
  [v3 removeCloudFeedEntriesObserver:self];
  [v3 removeAssetChangeObserver:self];
  [v3 removeShouldReloadObserver:self];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69BE918] object:0];

  v5.receiver = self;
  v5.super_class = PXFeedRecentsManager;
  [(PXFeedRecentsManager *)&v5 dealloc];
}

- (PXFeedRecentsManager)initWithPhotoLibrary:(id)a3 count:(int64_t)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = PXFeedRecentsManager;
  v7 = [(PXFeedRecentsManager *)&v16 init];
  v8 = v7;
  if (v7)
  {
    [(PXFeedRecentsManager *)v7 _setPhotoLibrary:v6];
    [(PXFeedRecentsManager *)v8 _setCount:a4];
    v9 = [MEMORY[0x1E695DF70] array];
    pendingFeedEntriesChangeNotifications = v8->_pendingFeedEntriesChangeNotifications;
    v8->_pendingFeedEntriesChangeNotifications = v9;

    v11 = [MEMORY[0x1E695DF70] array];
    pendingAssetsChangeNotifications = v8->_pendingAssetsChangeNotifications;
    v8->_pendingAssetsChangeNotifications = v11;

    v13 = [MEMORY[0x1E69BE2F0] defaultCenter];
    [v13 addCloudFeedEntriesObserver:v8];
    [v13 addAssetChangeObserver:v8];
    [v13 addShouldReloadObserver:v8];
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v8 selector:sel__didFinishPostingNotifications_ name:*MEMORY[0x1E69BE918] object:0];

    [(PXFeedRecentsManager *)v8 _invalidateCachedRecentAssets];
  }

  return v8;
}

@end