@interface PXTilingControllerCompositionEngine
+ (id)compositionEngineForScrollController:(id)a3 createIfNeeded:(BOOL)a4;
- (BOOL)_updateCompositionIfNeeded;
- (CGPoint)convertPoint:(CGPoint)a3 fromTilingController:(id)a4;
- (CGPoint)originForTilingController:(id)a3;
- (CGPoint)preferredOriginForTilingController:(id)a3;
- (CGRect)contentBoundsForTilingController:(id)a3;
- (CGRect)convertRect:(CGRect)a3 fromTilingController:(id)a4;
- (CGRect)scrollBoundsForTilingController:(id)a3;
- (CGSize)_referenceSize;
- (NSArray)invalidationContexts;
- (NSArray)tilingControllersRequestingFocus;
- (PXScrollController)_scrollController;
- (UIEdgeInsets)_contentInset;
- (id)_initWithScrollController:(id)a3;
- (void)_beginUpdate;
- (void)_endUpdate;
- (void)_invalidateScrollControllerMetrics;
- (void)_performChanges:(id)a3;
- (void)_setReferenceSize:(CGSize)a3;
- (void)_updateScrollControllerMetricsIfNeeded;
- (void)px_scrollControllerDidUpdate:(id)a3;
- (void)registerComposition:(id)a3;
- (void)registerTilingController:(id)a3;
- (void)setContentBounds:(CGRect)a3 scrollBounds:(CGRect)a4 scrollInfo:(id)a5;
- (void)setOrigin:(CGPoint)a3 forTilingController:(id)a4;
- (void)setReferenceSize:(CGSize)a3 contentInset:(UIEdgeInsets)a4 forTilingController:(id)a5;
- (void)setTilingControllerCompositionNeedsUpdate:(id)a3 withContext:(id)a4;
- (void)setTilingControllerNeedsUpdate:(id)a3;
- (void)tilingController:(id)a3 invalidatedWithContext:(int64_t)a4;
- (void)unregisterComposition:(id)a3;
- (void)unregisterTilingController:(id)a3;
@end

@implementation PXTilingControllerCompositionEngine

- (UIEdgeInsets)_contentInset
{
  top = self->__contentInset.top;
  left = self->__contentInset.left;
  bottom = self->__contentInset.bottom;
  right = self->__contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)_referenceSize
{
  width = self->__referenceSize.width;
  height = self->__referenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXScrollController)_scrollController
{
  WeakRetained = objc_loadWeakRetained(&self->__scrollController);

  return WeakRetained;
}

- (void)setOrigin:(CGPoint)a3 forTilingController:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  [v6 setLayoutOrigin:{x, y}];
  [v6 updateLayout];
}

- (void)setContentBounds:(CGRect)a3 scrollBounds:(CGRect)a4 scrollInfo:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.size.height;
  v10 = a3.size.width;
  v12 = a5;
  v13 = [(PXTilingControllerCompositionEngine *)self _scrollController];
  [v13 setPresentedContentSize:{v10, v9}];
  [v13 setContentBounds:{x, y, width, height}];
  [v13 setScrollInfo:v12];
}

- (void)setReferenceSize:(CGSize)a3 contentInset:(UIEdgeInsets)a4 forTilingController:(id)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  height = a3.height;
  width = a3.width;
  v13 = a5;
  v15 = v13;
  if (!self->_isUpdatingComposition)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXTilingControllerCompositionEngine.m" lineNumber:344 description:@"unexpected composition output"];

    v13 = v15;
  }

  [v13 setReferenceSize:width contentInset:{height, top, left, bottom, right}];
  [v15 updateMetrics];
}

- (CGRect)convertRect:(CGRect)a3 fromTilingController:(id)a4
{
  [a4 convertRectFromLayout:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromTilingController:(id)a4
{
  [a4 convertPointFromLayout:{a3.x, a3.y}];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)originForTilingController:(id)a3
{
  [a3 layoutOrigin];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)preferredOriginForTilingController:(id)a3
{
  [a3 layoutPreferredOrigin];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGRect)scrollBoundsForTilingController:(id)a3
{
  [a3 layoutScrollBounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)contentBoundsForTilingController:(id)a3
{
  [a3 layoutContentBounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (NSArray)invalidationContexts
{
  v2 = [(PXTilingControllerCompositionEngine *)self _invalidationContexts];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)tilingControllersRequestingFocus
{
  v2 = [(PXTilingControllerCompositionEngine *)self _tilingControllersRequestingFocus];
  v3 = [v2 copy];

  return v3;
}

- (void)setTilingControllerCompositionNeedsUpdate:(id)a3 withContext:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (!self->_isUpdatingComposition)
  {
    if (v6)
    {
      v8 = [(PXTilingControllerCompositionEngine *)self _invalidationContexts];
      [v8 addObject:v7];
    }

    [(PXTilingControllerCompositionEngine *)self _invalidateComposition];
    v9 = [(PXTilingControllerCompositionEngine *)self _scrollController];
    [v9 setNeedsUpdate];
  }
}

- (void)tilingController:(id)a3 invalidatedWithContext:(int64_t)a4
{
  v6 = a3;
  if (!self->_isUpdatingComposition)
  {
    v8 = v6;
    if (a4 == 1)
    {
      v7 = [(PXTilingControllerCompositionEngine *)self _tilingControllersRequestingFocus];
      [v7 addObject:v8];
    }

    [(PXTilingControllerCompositionEngine *)self _invalidateComposition];
    v6 = v8;
  }
}

- (void)setTilingControllerNeedsUpdate:(id)a3
{
  v3 = [(PXTilingControllerCompositionEngine *)self _scrollController];
  [v3 setNeedsUpdate];
}

- (void)px_scrollControllerDidUpdate:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__PXTilingControllerCompositionEngine_px_scrollControllerDidUpdate___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXTilingControllerCompositionEngine *)self _performChanges:v3];
}

- (BOOL)_updateCompositionIfNeeded
{
  v42 = *MEMORY[0x1E69E9840];
  composition = self->_needsUpdateFlags.composition;
  if (!composition)
  {
    return composition;
  }

  self->_needsUpdateFlags.composition = 0;
  v5 = [(PXTilingControllerCompositionEngine *)self _composition];
  v6 = [(PXTilingControllerCompositionEngine *)self _tilingControllers];
  v7 = [v6 setRepresentation];

  v8 = [(PXTilingControllerCompositionEngine *)self _compositions];
  v9 = [v8 setRepresentation];

  v10 = [(PXTilingControllerCompositionEngine *)self _compositions];
  v11 = [v10 containsObject:v5];

  if ((v11 & 1) == 0)
  {

    goto LABEL_6;
  }

  if (!v5)
  {
LABEL_6:
    v5 = [v9 anyObject];
    if (!v5)
    {
      v5 = [(PXTilingControllerCompositionEngine *)self _defaultComposition];
    }
  }

  v12 = [v5 tilingControllers];
  v13 = [v12 isEqualToSet:v7];

  if ((v13 & 1) == 0)
  {
    v14 = [(PXTilingControllerCompositionEngine *)self _defaultComposition];

    if (v5 == v14)
    {
      v15 = [(PXTilingControllerCompositionEngine *)self _defaultComposition];
      [v15 setTilingControllers:v7];
    }

    else
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"PXTilingControllerCompositionEngine.m" lineNumber:216 description:@"composition doesn't include all tiling controllers"];
    }
  }

  [v5 setInput:self];
  [v5 setOutput:self];
  isUpdatingComposition = self->_isUpdatingComposition;
  self->_isUpdatingComposition = 1;
  v17 = [(PXTilingControllerCompositionEngine *)self _invalidationContexts];
  v18 = [v17 copy];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = v7;
  v20 = [v19 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v37;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v36 + 1) + 8 * i) setCompositionInvalidationContexts:v18];
      }

      v21 = [v19 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v21);
  }

  [v5 updateComposition];
  v24 = [(PXTilingControllerCompositionEngine *)self _invalidationContexts];
  [v24 removeAllObjects];

  v25 = [(PXTilingControllerCompositionEngine *)self _tilingControllersRequestingFocus];
  [v25 removeAllObjects];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = v19;
  v27 = [v26 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v33;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [*(*(&v32 + 1) + 8 * j) setCompositionInvalidationContexts:{0, v32}];
      }

      v28 = [v26 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v28);
  }

  self->_isUpdatingComposition = isUpdatingComposition;
  return composition;
}

- (void)_updateScrollControllerMetricsIfNeeded
{
  if (self->_needsUpdateFlags.scrollControllerMetrics)
  {
    self->_needsUpdateFlags.scrollControllerMetrics = 0;
    v16 = [(PXTilingControllerCompositionEngine *)self _scrollController];
    [v16 referenceSize];
    v5 = v4;
    v7 = v6;
    [v16 contentInset];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(PXTilingControllerCompositionEngine *)self _setReferenceSize:v5, v7];
    [(PXTilingControllerCompositionEngine *)self _setContentInset:v9, v11, v13, v15];
  }
}

- (void)_invalidateScrollControllerMetrics
{
  v13 = *MEMORY[0x1E69E9840];
  self->_needsUpdateFlags.scrollControllerMetrics = 1;
  [(PXTilingControllerCompositionEngine *)self _setNeedsUpdate];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(PXTilingControllerCompositionEngine *)self _tilingControllers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidateScrollControllerMetrics];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_endUpdate
{
  v16 = *MEMORY[0x1E69E9840];
  [(PXTilingControllerCompositionEngine *)self _updateScrollControllerMetricsIfNeeded];
  [(PXTilingControllerCompositionEngine *)self _updateCompositionIfNeeded];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(PXTilingControllerCompositionEngine *)self _tilingControllers];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 updateMetrics];
        [v9 updateLayout];
        [v9 endUpdate];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  if ([(PXTilingControllerCompositionEngine *)self _needsUpdate])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXTilingControllerCompositionEngine.m" lineNumber:149 description:@"updates still needed after an update cycle"];
  }
}

- (void)_beginUpdate
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(PXTilingControllerCompositionEngine *)self _tilingControllers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) beginUpdate];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_performChanges:(id)a3
{
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  if (isPerformingChanges)
  {
    v5 = *(a3 + 2);
    v6 = a3;
    v5();

    self->_isPerformingChanges = isPerformingChanges;
  }

  else
  {
    v7 = a3;
    [(PXTilingControllerCompositionEngine *)self _beginUpdate];
    v7[2](v7);

    self->_isPerformingChanges = isPerformingChanges;

    [(PXTilingControllerCompositionEngine *)self _endUpdate];
  }
}

- (void)_setReferenceSize:(CGSize)a3
{
  if (a3.width != self->__referenceSize.width || a3.height != self->__referenceSize.height)
  {
    self->__referenceSize = a3;
    [(PXTilingControllerCompositionEngine *)self _invalidateComposition];
  }
}

- (void)unregisterComposition:(id)a3
{
  v5 = a3;
  v6 = [v5 observer];

  if (v6 != self)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXTilingControllerCompositionEngine.m" lineNumber:95 description:@"unexpected composition observer"];
  }

  [v5 setObserver:0];
  v7 = [(PXTilingControllerCompositionEngine *)self _compositions];
  [v7 removeObject:v5];

  [(PXTilingControllerCompositionEngine *)self _invalidateComposition];
}

- (void)registerComposition:(id)a3
{
  v5 = a3;
  v6 = [v5 observer];

  if (v6)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXTilingControllerCompositionEngine.m" lineNumber:88 description:@"unexpected composition observer"];
  }

  [v5 setObserver:self];
  v7 = [(PXTilingControllerCompositionEngine *)self _compositions];
  [v7 addObject:v5];

  [(PXTilingControllerCompositionEngine *)self _invalidateComposition];
}

- (void)unregisterTilingController:(id)a3
{
  v5 = a3;
  v6 = [v5 observer];

  if (v6 != self)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXTilingControllerCompositionEngine.m" lineNumber:81 description:@"unexpected tiling controller observer"];
  }

  [v5 setObserver:0];
  v7 = [(PXTilingControllerCompositionEngine *)self _tilingControllers];
  [v7 removeObject:v5];

  [(PXTilingControllerCompositionEngine *)self _invalidateComposition];
}

- (void)registerTilingController:(id)a3
{
  v5 = a3;
  v6 = [v5 observer];

  if (v6)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXTilingControllerCompositionEngine.m" lineNumber:74 description:@"unexpected tiling controller observer"];
  }

  [v5 setObserver:self];
  v7 = [(PXTilingControllerCompositionEngine *)self _tilingControllers];
  [v7 addObject:v5];

  [(PXTilingControllerCompositionEngine *)self _invalidateComposition];
}

- (id)_initWithScrollController:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXTilingControllerCompositionEngine.m" lineNumber:58 description:@"missing scroll controller"];
  }

  v22.receiver = self;
  v22.super_class = PXTilingControllerCompositionEngine;
  v6 = [(PXTilingControllerCompositionEngine *)&v22 init];
  v7 = v6;
  if (v6)
  {
    v8 = objc_storeWeak(&v6->__scrollController, v5);
    [v5 setUpdateDelegate:v7];

    WeakRetained = objc_loadWeakRetained(&v7->__scrollController);
    [WeakRetained setRespectsContentZOrder:1];

    v10 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    tilingControllers = v7->__tilingControllers;
    v7->__tilingControllers = v10;

    v12 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    compositions = v7->__compositions;
    v7->__compositions = v12;

    v14 = objc_alloc_init(PXTilingControllerDefaultComposition);
    defaultComposition = v7->__defaultComposition;
    v7->__defaultComposition = v14;

    v16 = [MEMORY[0x1E695DF70] array];
    invalidationContexts = v7->__invalidationContexts;
    v7->__invalidationContexts = v16;

    v18 = [MEMORY[0x1E695DF70] array];
    tilingControllersRequestingFocus = v7->__tilingControllersRequestingFocus;
    v7->__tilingControllersRequestingFocus = v18;
  }

  return v7;
}

+ (id)compositionEngineForScrollController:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_getAssociatedObject(v5, compositionEngineForScrollController_createIfNeeded__PXTilingControllerCompositionEngineAssociationKey);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = !v4;
  }

  if (!v7)
  {
    v6 = [[PXTilingControllerCompositionEngine alloc] _initWithScrollController:v5];
    objc_setAssociatedObject(v5, compositionEngineForScrollController_createIfNeeded__PXTilingControllerCompositionEngineAssociationKey, v6, 1);
  }

  return v6;
}

@end