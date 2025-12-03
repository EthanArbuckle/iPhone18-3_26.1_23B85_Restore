@interface PXTilingControllerCompositionEngine
+ (id)compositionEngineForScrollController:(id)controller createIfNeeded:(BOOL)needed;
- (BOOL)_updateCompositionIfNeeded;
- (CGPoint)convertPoint:(CGPoint)point fromTilingController:(id)controller;
- (CGPoint)originForTilingController:(id)controller;
- (CGPoint)preferredOriginForTilingController:(id)controller;
- (CGRect)contentBoundsForTilingController:(id)controller;
- (CGRect)convertRect:(CGRect)rect fromTilingController:(id)controller;
- (CGRect)scrollBoundsForTilingController:(id)controller;
- (CGSize)_referenceSize;
- (NSArray)invalidationContexts;
- (NSArray)tilingControllersRequestingFocus;
- (PXScrollController)_scrollController;
- (UIEdgeInsets)_contentInset;
- (id)_initWithScrollController:(id)controller;
- (void)_beginUpdate;
- (void)_endUpdate;
- (void)_invalidateScrollControllerMetrics;
- (void)_performChanges:(id)changes;
- (void)_setReferenceSize:(CGSize)size;
- (void)_updateScrollControllerMetricsIfNeeded;
- (void)px_scrollControllerDidUpdate:(id)update;
- (void)registerComposition:(id)composition;
- (void)registerTilingController:(id)controller;
- (void)setContentBounds:(CGRect)bounds scrollBounds:(CGRect)scrollBounds scrollInfo:(id)info;
- (void)setOrigin:(CGPoint)origin forTilingController:(id)controller;
- (void)setReferenceSize:(CGSize)size contentInset:(UIEdgeInsets)inset forTilingController:(id)controller;
- (void)setTilingControllerCompositionNeedsUpdate:(id)update withContext:(id)context;
- (void)setTilingControllerNeedsUpdate:(id)update;
- (void)tilingController:(id)controller invalidatedWithContext:(int64_t)context;
- (void)unregisterComposition:(id)composition;
- (void)unregisterTilingController:(id)controller;
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

- (void)setOrigin:(CGPoint)origin forTilingController:(id)controller
{
  y = origin.y;
  x = origin.x;
  controllerCopy = controller;
  [controllerCopy setLayoutOrigin:{x, y}];
  [controllerCopy updateLayout];
}

- (void)setContentBounds:(CGRect)bounds scrollBounds:(CGRect)scrollBounds scrollInfo:(id)info
{
  height = scrollBounds.size.height;
  width = scrollBounds.size.width;
  y = scrollBounds.origin.y;
  x = scrollBounds.origin.x;
  v9 = bounds.size.height;
  v10 = bounds.size.width;
  infoCopy = info;
  _scrollController = [(PXTilingControllerCompositionEngine *)self _scrollController];
  [_scrollController setPresentedContentSize:{v10, v9}];
  [_scrollController setContentBounds:{x, y, width, height}];
  [_scrollController setScrollInfo:infoCopy];
}

- (void)setReferenceSize:(CGSize)size contentInset:(UIEdgeInsets)inset forTilingController:(id)controller
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  v15 = controllerCopy;
  if (!self->_isUpdatingComposition)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXTilingControllerCompositionEngine.m" lineNumber:344 description:@"unexpected composition output"];

    controllerCopy = v15;
  }

  [controllerCopy setReferenceSize:width contentInset:{height, top, left, bottom, right}];
  [v15 updateMetrics];
}

- (CGRect)convertRect:(CGRect)rect fromTilingController:(id)controller
{
  [controller convertRectFromLayout:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromTilingController:(id)controller
{
  [controller convertPointFromLayout:{point.x, point.y}];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)originForTilingController:(id)controller
{
  [controller layoutOrigin];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)preferredOriginForTilingController:(id)controller
{
  [controller layoutPreferredOrigin];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGRect)scrollBoundsForTilingController:(id)controller
{
  [controller layoutScrollBounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)contentBoundsForTilingController:(id)controller
{
  [controller layoutContentBounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (NSArray)invalidationContexts
{
  _invalidationContexts = [(PXTilingControllerCompositionEngine *)self _invalidationContexts];
  v3 = [_invalidationContexts copy];

  return v3;
}

- (NSArray)tilingControllersRequestingFocus
{
  _tilingControllersRequestingFocus = [(PXTilingControllerCompositionEngine *)self _tilingControllersRequestingFocus];
  v3 = [_tilingControllersRequestingFocus copy];

  return v3;
}

- (void)setTilingControllerCompositionNeedsUpdate:(id)update withContext:(id)context
{
  updateCopy = update;
  contextCopy = context;
  v7 = contextCopy;
  if (!self->_isUpdatingComposition)
  {
    if (contextCopy)
    {
      _invalidationContexts = [(PXTilingControllerCompositionEngine *)self _invalidationContexts];
      [_invalidationContexts addObject:v7];
    }

    [(PXTilingControllerCompositionEngine *)self _invalidateComposition];
    _scrollController = [(PXTilingControllerCompositionEngine *)self _scrollController];
    [_scrollController setNeedsUpdate];
  }
}

- (void)tilingController:(id)controller invalidatedWithContext:(int64_t)context
{
  controllerCopy = controller;
  if (!self->_isUpdatingComposition)
  {
    v8 = controllerCopy;
    if (context == 1)
    {
      _tilingControllersRequestingFocus = [(PXTilingControllerCompositionEngine *)self _tilingControllersRequestingFocus];
      [_tilingControllersRequestingFocus addObject:v8];
    }

    [(PXTilingControllerCompositionEngine *)self _invalidateComposition];
    controllerCopy = v8;
  }
}

- (void)setTilingControllerNeedsUpdate:(id)update
{
  _scrollController = [(PXTilingControllerCompositionEngine *)self _scrollController];
  [_scrollController setNeedsUpdate];
}

- (void)px_scrollControllerDidUpdate:(id)update
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
  _composition = [(PXTilingControllerCompositionEngine *)self _composition];
  _tilingControllers = [(PXTilingControllerCompositionEngine *)self _tilingControllers];
  setRepresentation = [_tilingControllers setRepresentation];

  _compositions = [(PXTilingControllerCompositionEngine *)self _compositions];
  setRepresentation2 = [_compositions setRepresentation];

  _compositions2 = [(PXTilingControllerCompositionEngine *)self _compositions];
  v11 = [_compositions2 containsObject:_composition];

  if ((v11 & 1) == 0)
  {

    goto LABEL_6;
  }

  if (!_composition)
  {
LABEL_6:
    _composition = [setRepresentation2 anyObject];
    if (!_composition)
    {
      _composition = [(PXTilingControllerCompositionEngine *)self _defaultComposition];
    }
  }

  tilingControllers = [_composition tilingControllers];
  v13 = [tilingControllers isEqualToSet:setRepresentation];

  if ((v13 & 1) == 0)
  {
    _defaultComposition = [(PXTilingControllerCompositionEngine *)self _defaultComposition];

    if (_composition == _defaultComposition)
    {
      _defaultComposition2 = [(PXTilingControllerCompositionEngine *)self _defaultComposition];
      [_defaultComposition2 setTilingControllers:setRepresentation];
    }

    else
    {
      _defaultComposition2 = [MEMORY[0x1E696AAA8] currentHandler];
      [_defaultComposition2 handleFailureInMethod:a2 object:self file:@"PXTilingControllerCompositionEngine.m" lineNumber:216 description:@"composition doesn't include all tiling controllers"];
    }
  }

  [_composition setInput:self];
  [_composition setOutput:self];
  isUpdatingComposition = self->_isUpdatingComposition;
  self->_isUpdatingComposition = 1;
  _invalidationContexts = [(PXTilingControllerCompositionEngine *)self _invalidationContexts];
  v18 = [_invalidationContexts copy];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = setRepresentation;
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

  [_composition updateComposition];
  _invalidationContexts2 = [(PXTilingControllerCompositionEngine *)self _invalidationContexts];
  [_invalidationContexts2 removeAllObjects];

  _tilingControllersRequestingFocus = [(PXTilingControllerCompositionEngine *)self _tilingControllersRequestingFocus];
  [_tilingControllersRequestingFocus removeAllObjects];

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
    _scrollController = [(PXTilingControllerCompositionEngine *)self _scrollController];
    [_scrollController referenceSize];
    v5 = v4;
    v7 = v6;
    [_scrollController contentInset];
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
  _tilingControllers = [(PXTilingControllerCompositionEngine *)self _tilingControllers];
  v4 = [_tilingControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(_tilingControllers);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidateScrollControllerMetrics];
      }

      while (v5 != v7);
      v5 = [_tilingControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  _tilingControllers = [(PXTilingControllerCompositionEngine *)self _tilingControllers];
  v5 = [_tilingControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(_tilingControllers);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 updateMetrics];
        [v9 updateLayout];
        [v9 endUpdate];
      }

      v6 = [_tilingControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  if ([(PXTilingControllerCompositionEngine *)self _needsUpdate])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXTilingControllerCompositionEngine.m" lineNumber:149 description:@"updates still needed after an update cycle"];
  }
}

- (void)_beginUpdate
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  _tilingControllers = [(PXTilingControllerCompositionEngine *)self _tilingControllers];
  v3 = [_tilingControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(_tilingControllers);
        }

        [*(*(&v7 + 1) + 8 * v6++) beginUpdate];
      }

      while (v4 != v6);
      v4 = [_tilingControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_performChanges:(id)changes
{
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  if (isPerformingChanges)
  {
    v5 = *(changes + 2);
    changesCopy = changes;
    v5();

    self->_isPerformingChanges = isPerformingChanges;
  }

  else
  {
    changesCopy2 = changes;
    [(PXTilingControllerCompositionEngine *)self _beginUpdate];
    changesCopy2[2](changesCopy2);

    self->_isPerformingChanges = isPerformingChanges;

    [(PXTilingControllerCompositionEngine *)self _endUpdate];
  }
}

- (void)_setReferenceSize:(CGSize)size
{
  if (size.width != self->__referenceSize.width || size.height != self->__referenceSize.height)
  {
    self->__referenceSize = size;
    [(PXTilingControllerCompositionEngine *)self _invalidateComposition];
  }
}

- (void)unregisterComposition:(id)composition
{
  compositionCopy = composition;
  observer = [compositionCopy observer];

  if (observer != self)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXTilingControllerCompositionEngine.m" lineNumber:95 description:@"unexpected composition observer"];
  }

  [compositionCopy setObserver:0];
  _compositions = [(PXTilingControllerCompositionEngine *)self _compositions];
  [_compositions removeObject:compositionCopy];

  [(PXTilingControllerCompositionEngine *)self _invalidateComposition];
}

- (void)registerComposition:(id)composition
{
  compositionCopy = composition;
  observer = [compositionCopy observer];

  if (observer)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXTilingControllerCompositionEngine.m" lineNumber:88 description:@"unexpected composition observer"];
  }

  [compositionCopy setObserver:self];
  _compositions = [(PXTilingControllerCompositionEngine *)self _compositions];
  [_compositions addObject:compositionCopy];

  [(PXTilingControllerCompositionEngine *)self _invalidateComposition];
}

- (void)unregisterTilingController:(id)controller
{
  controllerCopy = controller;
  observer = [controllerCopy observer];

  if (observer != self)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXTilingControllerCompositionEngine.m" lineNumber:81 description:@"unexpected tiling controller observer"];
  }

  [controllerCopy setObserver:0];
  _tilingControllers = [(PXTilingControllerCompositionEngine *)self _tilingControllers];
  [_tilingControllers removeObject:controllerCopy];

  [(PXTilingControllerCompositionEngine *)self _invalidateComposition];
}

- (void)registerTilingController:(id)controller
{
  controllerCopy = controller;
  observer = [controllerCopy observer];

  if (observer)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXTilingControllerCompositionEngine.m" lineNumber:74 description:@"unexpected tiling controller observer"];
  }

  [controllerCopy setObserver:self];
  _tilingControllers = [(PXTilingControllerCompositionEngine *)self _tilingControllers];
  [_tilingControllers addObject:controllerCopy];

  [(PXTilingControllerCompositionEngine *)self _invalidateComposition];
}

- (id)_initWithScrollController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXTilingControllerCompositionEngine.m" lineNumber:58 description:@"missing scroll controller"];
  }

  v22.receiver = self;
  v22.super_class = PXTilingControllerCompositionEngine;
  v6 = [(PXTilingControllerCompositionEngine *)&v22 init];
  v7 = v6;
  if (v6)
  {
    v8 = objc_storeWeak(&v6->__scrollController, controllerCopy);
    [controllerCopy setUpdateDelegate:v7];

    WeakRetained = objc_loadWeakRetained(&v7->__scrollController);
    [WeakRetained setRespectsContentZOrder:1];

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    tilingControllers = v7->__tilingControllers;
    v7->__tilingControllers = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    compositions = v7->__compositions;
    v7->__compositions = weakObjectsHashTable2;

    v14 = objc_alloc_init(PXTilingControllerDefaultComposition);
    defaultComposition = v7->__defaultComposition;
    v7->__defaultComposition = v14;

    array = [MEMORY[0x1E695DF70] array];
    invalidationContexts = v7->__invalidationContexts;
    v7->__invalidationContexts = array;

    array2 = [MEMORY[0x1E695DF70] array];
    tilingControllersRequestingFocus = v7->__tilingControllersRequestingFocus;
    v7->__tilingControllersRequestingFocus = array2;
  }

  return v7;
}

+ (id)compositionEngineForScrollController:(id)controller createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  controllerCopy = controller;
  v6 = objc_getAssociatedObject(controllerCopy, compositionEngineForScrollController_createIfNeeded__PXTilingControllerCompositionEngineAssociationKey);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = !neededCopy;
  }

  if (!v7)
  {
    v6 = [[PXTilingControllerCompositionEngine alloc] _initWithScrollController:controllerCopy];
    objc_setAssociatedObject(controllerCopy, compositionEngineForScrollController_createIfNeeded__PXTilingControllerCompositionEngineAssociationKey, v6, 1);
  }

  return v6;
}

@end