@interface PLUtilityAssetPool
- (PLUtilityAssetPool)init;
- (id)_dequeueRecylableAsset;
- (id)_dequeueRecylableClassification;
- (void)recycleAsset:(id)asset;
@end

@implementation PLUtilityAssetPool

- (void)recycleAsset:(id)asset
{
  v15 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (assetCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    sceneClassifications = [assetCopy sceneClassifications];
    v6 = [sceneClassifications countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(sceneClassifications);
          }

          [(NSMutableArray *)self->_locked_recycledClassifications addObject:*(*(&v10 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [sceneClassifications countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(NSMutableArray *)self->_locked_recycledAssets addObject:assetCopy];
    [assetCopy _prepareForRecycle];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (PLUtilityAssetPool)init
{
  v9.receiver = self;
  v9.super_class = PLUtilityAssetPool;
  v2 = [(PLUtilityAssetPool *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    array = [MEMORY[0x1E695DF70] array];
    locked_recycledAssets = v3->_locked_recycledAssets;
    v3->_locked_recycledAssets = array;

    array2 = [MEMORY[0x1E695DF70] array];
    locked_recycledClassifications = v3->_locked_recycledClassifications;
    v3->_locked_recycledClassifications = array2;
  }

  return v3;
}

- (id)_dequeueRecylableClassification
{
  os_unfair_lock_lock(&self->_lock);
  lastObject = [(NSMutableArray *)self->_locked_recycledClassifications lastObject];
  if (lastObject)
  {
    [(NSMutableArray *)self->_locked_recycledClassifications removeLastObject];
  }

  os_unfair_lock_unlock(&self->_lock);

  return lastObject;
}

- (id)_dequeueRecylableAsset
{
  os_unfair_lock_lock(&self->_lock);
  lastObject = [(NSMutableArray *)self->_locked_recycledAssets lastObject];
  if (lastObject)
  {
    [(NSMutableArray *)self->_locked_recycledAssets removeLastObject];
  }

  os_unfair_lock_unlock(&self->_lock);

  return lastObject;
}

@end