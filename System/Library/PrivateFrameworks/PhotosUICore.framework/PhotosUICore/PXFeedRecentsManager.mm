@interface PXFeedRecentsManager
- (BOOL)_updateCachedRecentAssets;
- (NSArray)recentPHAssets;
- (NSOrderedSet)recentAssets;
- (PXFeedRecentsManager)initWithPhotoLibrary:(id)library count:(int64_t)count;
- (PXFeedRecentsManagerDelegate)delegate;
- (void)_didFinishPostingNotifications:(id)notifications;
- (void)_setCachedRecentAssets:(id)assets;
- (void)dealloc;
- (void)shouldReload:(id)reload;
@end

@implementation PXFeedRecentsManager

- (PXFeedRecentsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_didFinishPostingNotifications:(id)notifications
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
      delegate = [(PXFeedRecentsManager *)self delegate];
      [delegate feedRecentsManagerRecentAssetsDidChange:self];
    }

    else
    {
      delegate = [(PXFeedRecentsManager *)self _cachedRecentAssets];
      if ([delegate count])
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

              updatedAssets = [*(*(&v23 + 1) + 8 * i) updatedAssets];
              v19 = 0u;
              v20 = 0u;
              v21 = 0u;
              v22 = 0u;
              v11 = delegate;
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

                    if ([updatedAssets containsObject:*(*(&v19 + 1) + 8 * j)])
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

- (void)shouldReload:(id)reload
{
  [(NSMutableArray *)self->_pendingFeedEntriesChangeNotifications removeAllObjects];
  [(NSMutableArray *)self->_pendingAssetsChangeNotifications removeAllObjects];
  [(PXFeedRecentsManager *)self _invalidateCachedRecentAssets];
  delegate = [(PXFeedRecentsManager *)self delegate];
  [delegate feedRecentsManagerRecentAssetsDidChange:self];
}

- (BOOL)_updateCachedRecentAssets
{
  v27 = *MEMORY[0x1E69E9840];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v4 = [(PXFeedRecentsManager *)self count];
  v5 = MEMORY[0x1E69BE320];
  photoLibrary = [(PHPhotoLibrary *)self->_photoLibrary photoLibrary];
  v7 = [v5 recentAssetsEntriesInLibrary:photoLibrary limit:v4];

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

        entryAssets = [*(*(&v22 + 1) + 8 * i) entryAssets];
        v14 = [entryAssets count];
        if ([orderedSet count] + v14 >= v4)
        {
          v16 = v4 - [orderedSet count];
          array = [entryAssets array];
          v18 = [array subarrayWithRange:{0, v16}];
          [orderedSet addObjectsFromArray:v18];

          goto LABEL_11;
        }

        array2 = [entryAssets array];
        [orderedSet addObjectsFromArray:array2];
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

  _cachedRecentAssets = [(PXFeedRecentsManager *)self _cachedRecentAssets];
  v20 = [orderedSet isEqualToOrderedSet:_cachedRecentAssets];
  if ((v20 & 1) == 0)
  {
    [(PXFeedRecentsManager *)self _setCachedRecentAssets:orderedSet];
  }

  return v20 ^ 1;
}

- (NSArray)recentPHAssets
{
  _cachedRecentPHAssets = [(PXFeedRecentsManager *)self _cachedRecentPHAssets];
  if (!_cachedRecentPHAssets)
  {
    recentAssets = [(PXFeedRecentsManager *)self recentAssets];
    array = [recentAssets array];

    _cachedRecentPHAssets = [MEMORY[0x1E69BE540] pl_PHAssetsForManagedAssets:array photoLibrary:self->_photoLibrary];
    [(PXFeedRecentsManager *)self _setCachedRecentPHAssets:_cachedRecentPHAssets];
  }

  return _cachedRecentPHAssets;
}

- (NSOrderedSet)recentAssets
{
  _cachedRecentAssets = [(PXFeedRecentsManager *)self _cachedRecentAssets];
  if (!_cachedRecentAssets)
  {
    [(PXFeedRecentsManager *)self _updateCachedRecentAssets];
    _cachedRecentAssets = [(PXFeedRecentsManager *)self _cachedRecentAssets];
  }

  return _cachedRecentAssets;
}

- (void)_setCachedRecentAssets:(id)assets
{
  assetsCopy = assets;
  if (self->__cachedRecentAssets != assetsCopy)
  {
    v7 = assetsCopy;
    objc_storeStrong(&self->__cachedRecentAssets, assets);
    cachedRecentPHAssets = self->__cachedRecentPHAssets;
    self->__cachedRecentPHAssets = 0;

    assetsCopy = v7;
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E69BE2F0] defaultCenter];
  [defaultCenter removeCloudFeedEntriesObserver:self];
  [defaultCenter removeAssetChangeObserver:self];
  [defaultCenter removeShouldReloadObserver:self];
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69BE918] object:0];

  v5.receiver = self;
  v5.super_class = PXFeedRecentsManager;
  [(PXFeedRecentsManager *)&v5 dealloc];
}

- (PXFeedRecentsManager)initWithPhotoLibrary:(id)library count:(int64_t)count
{
  libraryCopy = library;
  v16.receiver = self;
  v16.super_class = PXFeedRecentsManager;
  v7 = [(PXFeedRecentsManager *)&v16 init];
  v8 = v7;
  if (v7)
  {
    [(PXFeedRecentsManager *)v7 _setPhotoLibrary:libraryCopy];
    [(PXFeedRecentsManager *)v8 _setCount:count];
    array = [MEMORY[0x1E695DF70] array];
    pendingFeedEntriesChangeNotifications = v8->_pendingFeedEntriesChangeNotifications;
    v8->_pendingFeedEntriesChangeNotifications = array;

    array2 = [MEMORY[0x1E695DF70] array];
    pendingAssetsChangeNotifications = v8->_pendingAssetsChangeNotifications;
    v8->_pendingAssetsChangeNotifications = array2;

    defaultCenter = [MEMORY[0x1E69BE2F0] defaultCenter];
    [defaultCenter addCloudFeedEntriesObserver:v8];
    [defaultCenter addAssetChangeObserver:v8];
    [defaultCenter addShouldReloadObserver:v8];
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v8 selector:sel__didFinishPostingNotifications_ name:*MEMORY[0x1E69BE918] object:0];

    [(PXFeedRecentsManager *)v8 _invalidateCachedRecentAssets];
  }

  return v8;
}

@end