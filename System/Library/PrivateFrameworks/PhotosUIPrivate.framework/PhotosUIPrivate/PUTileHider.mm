@interface PUTileHider
- (PUTileHider)initWithTilingView:(id)a3;
- (void)dealloc;
- (void)hideTilesAtIndexPath:(id)a3 withKinds:(id)a4 dataSourceIdentifier:(id)a5 animated:(BOOL)a6;
- (void)reattachTiles;
- (void)unhideTilesAnimated:(BOOL)a3;
@end

@implementation PUTileHider

- (void)reattachTiles
{
  v5 = [(PUTileHider *)self _hiddenTileControllersByLayoutInfo];
  v3 = [v5 allValues];
  v4 = [(PUTileHider *)self tilingView];
  [v4 reattachTileControllers:v3 withContext:0];

  [v5 removeAllObjects];
}

- (void)unhideTilesAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUTileHider *)self tilingView];
  v6 = [v5 tileAnimator];
  v7 = [(PUTileHider *)self _hiddenTileControllersByLayoutInfo];
  if (v3)
  {
    v8 = objc_alloc_init(PUTileAnimationOptions);
    [(PUTileHider *)self _animationDuration];
    [(PUTileAnimationOptions *)v8 setDuration:?];
  }

  else
  {
    v8 = 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35__PUTileHider_unhideTilesAnimated___block_invoke;
  v12[3] = &unk_1E7B7E680;
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v9 = v5;
  v10 = v8;
  v11 = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:v12];
  [v7 removeAllObjects];
}

void __35__PUTileHider_unhideTilesAnimated___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__PUTileHider_unhideTilesAnimated___block_invoke_2;
  v9[3] = &unk_1E7B80C38;
  v10 = *(a1 + 48);
  v11 = v5;
  v8 = v5;
  [v6 animateTileController:v8 toLayoutInfo:a2 withOptions:v7 completionHandler:v9];
}

void __35__PUTileHider_unhideTilesAnimated___block_invoke_2(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3[0] = *(a1 + 40);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 reattachTileControllers:v2 withContext:0];
}

- (void)hideTilesAtIndexPath:(id)a3 withKinds:(id)a4 dataSourceIdentifier:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(PUTileHider *)self tilingView];
  v26 = [v13 tileAnimator];
  v24 = [(PUTileHider *)self _hiddenTileControllersByLayoutInfo];
  if (v6)
  {
    v14 = objc_alloc_init(PUTileAnimationOptions);
    [(PUTileHider *)self _animationDuration];
    v25 = v14;
    [(PUTileAnimationOptions *)v14 setDuration:?];
  }

  else
  {
    v25 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      v19 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [v13 presentedTileControllerWithIndexPath:v10 kind:*(*(&v27 + 1) + 8 * v19) dataSourceIdentifier:v12];
        if (v20)
        {
          v21 = [v13 freezeTileController:v20];
          if (([v20 isDetached] & 1) == 0)
          {
            [v24 setObject:v20 forKey:v21];
            v31 = v20;
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
            [v13 detachTileControllers:v22];
          }

          v23 = [v21 layoutInfoWithAlpha:0.0];
          [v26 animateTileController:v20 toLayoutInfo:v23 withOptions:v25 completionHandler:0];
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v17);
  }
}

- (void)dealloc
{
  if ([(NSMutableDictionary *)self->__hiddenTileControllersByLayoutInfo count])
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUTileHider.m" lineNumber:38 description:{@"tile hider deallocated while tiles are still hidden %@", self->__hiddenTileControllersByLayoutInfo}];
  }

  v5.receiver = self;
  v5.super_class = PUTileHider;
  [(PUTileHider *)&v5 dealloc];
}

- (PUTileHider)initWithTilingView:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PUTileHider;
  v6 = [(PUTileHider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tilingView, a3);
    v8 = [MEMORY[0x1E695DF90] dictionary];
    hiddenTileControllersByLayoutInfo = v7->__hiddenTileControllersByLayoutInfo;
    v7->__hiddenTileControllersByLayoutInfo = v8;

    v7->__animationDuration = 0.2;
  }

  return v7;
}

@end