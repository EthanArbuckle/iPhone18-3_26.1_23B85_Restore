@interface PUTileHider
- (PUTileHider)initWithTilingView:(id)view;
- (void)dealloc;
- (void)hideTilesAtIndexPath:(id)path withKinds:(id)kinds dataSourceIdentifier:(id)identifier animated:(BOOL)animated;
- (void)reattachTiles;
- (void)unhideTilesAnimated:(BOOL)animated;
@end

@implementation PUTileHider

- (void)reattachTiles
{
  _hiddenTileControllersByLayoutInfo = [(PUTileHider *)self _hiddenTileControllersByLayoutInfo];
  allValues = [_hiddenTileControllersByLayoutInfo allValues];
  tilingView = [(PUTileHider *)self tilingView];
  [tilingView reattachTileControllers:allValues withContext:0];

  [_hiddenTileControllersByLayoutInfo removeAllObjects];
}

- (void)unhideTilesAnimated:(BOOL)animated
{
  animatedCopy = animated;
  tilingView = [(PUTileHider *)self tilingView];
  tileAnimator = [tilingView tileAnimator];
  _hiddenTileControllersByLayoutInfo = [(PUTileHider *)self _hiddenTileControllersByLayoutInfo];
  if (animatedCopy)
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
  v13 = tileAnimator;
  v14 = v8;
  v15 = tilingView;
  v9 = tilingView;
  v10 = v8;
  v11 = tileAnimator;
  [_hiddenTileControllersByLayoutInfo enumerateKeysAndObjectsUsingBlock:v12];
  [_hiddenTileControllersByLayoutInfo removeAllObjects];
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

- (void)hideTilesAtIndexPath:(id)path withKinds:(id)kinds dataSourceIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  v33 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  kindsCopy = kinds;
  identifierCopy = identifier;
  tilingView = [(PUTileHider *)self tilingView];
  tileAnimator = [tilingView tileAnimator];
  _hiddenTileControllersByLayoutInfo = [(PUTileHider *)self _hiddenTileControllersByLayoutInfo];
  if (animatedCopy)
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
  v15 = kindsCopy;
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

        v20 = [tilingView presentedTileControllerWithIndexPath:pathCopy kind:*(*(&v27 + 1) + 8 * v19) dataSourceIdentifier:identifierCopy];
        if (v20)
        {
          v21 = [tilingView freezeTileController:v20];
          if (([v20 isDetached] & 1) == 0)
          {
            [_hiddenTileControllersByLayoutInfo setObject:v20 forKey:v21];
            v31 = v20;
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
            [tilingView detachTileControllers:v22];
          }

          v23 = [v21 layoutInfoWithAlpha:0.0];
          [tileAnimator animateTileController:v20 toLayoutInfo:v23 withOptions:v25 completionHandler:0];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileHider.m" lineNumber:38 description:{@"tile hider deallocated while tiles are still hidden %@", self->__hiddenTileControllersByLayoutInfo}];
  }

  v5.receiver = self;
  v5.super_class = PUTileHider;
  [(PUTileHider *)&v5 dealloc];
}

- (PUTileHider)initWithTilingView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = PUTileHider;
  v6 = [(PUTileHider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tilingView, view);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    hiddenTileControllersByLayoutInfo = v7->__hiddenTileControllersByLayoutInfo;
    v7->__hiddenTileControllersByLayoutInfo = dictionary;

    v7->__animationDuration = 0.2;
  }

  return v7;
}

@end