@interface PLUtilityAssetPool
- (PLUtilityAssetPool)init;
- (id)_dequeueRecylableAsset;
- (id)_dequeueRecylableClassification;
- (void)recycleAsset:(id)a3;
@end

@implementation PLUtilityAssetPool

- (void)recycleAsset:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v4 sceneClassifications];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v5);
          }

          [(NSMutableArray *)self->_locked_recycledClassifications addObject:*(*(&v10 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(NSMutableArray *)self->_locked_recycledAssets addObject:v4];
    [v4 _prepareForRecycle];
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
    v4 = [MEMORY[0x1E695DF70] array];
    locked_recycledAssets = v3->_locked_recycledAssets;
    v3->_locked_recycledAssets = v4;

    v6 = [MEMORY[0x1E695DF70] array];
    locked_recycledClassifications = v3->_locked_recycledClassifications;
    v3->_locked_recycledClassifications = v6;
  }

  return v3;
}

- (id)_dequeueRecylableClassification
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_locked_recycledClassifications lastObject];
  if (v3)
  {
    [(NSMutableArray *)self->_locked_recycledClassifications removeLastObject];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_dequeueRecylableAsset
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_locked_recycledAssets lastObject];
  if (v3)
  {
    [(NSMutableArray *)self->_locked_recycledAssets removeLastObject];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

@end