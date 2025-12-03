@interface PXTilingController
- (BOOL)getTile:(void *)tile geometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileWithIdentifier:(PXTileIdentifier *)identifier;
- (CGPoint)_layoutDesiredOrigin;
- (CGPoint)_updatedPreferredVisibleOrigin;
- (CGPoint)convertPointFromLayout:(CGPoint)layout;
- (CGPoint)layoutPreferredOrigin;
- (CGRect)_activeRect;
- (CGRect)_cachedRect;
- (CGRect)_dirtyRect;
- (CGRect)_pagedRect;
- (CGRect)_visibleRect;
- (CGRect)convertRectFromLayout:(CGRect)layout;
- (CGRect)layoutContentBounds;
- (CGRect)layoutScrollBounds;
- (CGSize)_referenceSize;
- (PXScrollController)scrollController;
- (PXScrollInfo)scrollInfo;
- (PXTileAnimator)tileAnimator;
- (PXTileIdentifier)tileIdentifierForTile:(SEL)tile;
- (PXTileSource)tileSource;
- (PXTilingChange)_currentChange;
- (PXTilingController)init;
- (PXTilingController)initWithLayout:(id)layout;
- (PXTilingControllerDebugInfo)debugInfo;
- (PXTilingControllerObserver)observer;
- (PXTilingControllerScrollDelegate)scrollDelegate;
- (PXTilingControllerTransitionDelegate)transitionDelegate;
- (PXTilingDebugDelegate)debugDelegate;
- (PXTilingLayout)_layoutWithInitializedVisibleOrigin;
- (UIEdgeInsets)_contentInset;
- (UIEdgeInsets)_maxPreheatPadding;
- (id)_indexesOfVisibleTilesInRect:(CGRect)rect withOptions:(id)options;
- (id)_preheatRecordForPreheatHandler:(id)handler context:(void *)context createIfNeeded:(BOOL)needed;
- (id)convertScrollInfoFromLayout:(id)layout;
- (id)debugQuickLookObject;
- (id)imageTileWithIdentifier:(PXTileIdentifier *)identifier;
- (id)titleSubtitleTileWithIdentifier:(PXTileIdentifier *)identifier;
- (void)_discardCurrentChange;
- (void)_ensureCurrentChange;
- (void)_fillBuffersWithTileStatesAtIndexes:(id)indexes;
- (void)_handleTileAnimationCompletionWithIndex:(unint64_t)index;
- (void)_invalidateAllCachedRects;
- (void)_invalidateCachesOutsideRect:(CGRect)rect;
- (void)_invalidateLayoutPreferredVisibleOrigin;
- (void)_invalidateRect:(CGRect)rect;
- (void)_invalidateScrollInfo;
- (void)_invalidateTiles;
- (void)_markRectAsCached:(CGRect)cached;
- (void)_prepareBufferForCount:(unint64_t)count;
- (void)_setActiveRect:(CGRect)rect;
- (void)_setDirtyRect:(CGRect)rect;
- (void)_setNeedsUpdate;
- (void)_setPagedRect:(CGRect)rect;
- (void)_setReferenceSize:(CGSize)size;
- (void)_setTargetLayout:(id)layout;
- (void)_setVisibleRect:(CGRect)rect;
- (void)_updateDebugDelegateIfNeeded;
- (void)_updateLayoutMetricsIfNeeded;
- (void)_updateLayoutPositionIfNeeded;
- (void)_updateLayoutPreferredVisibleOriginIfNeeded;
- (void)_updateLayoutPreparationIfNeeded;
- (void)_updateLayoutVisibleRectIfNeeded;
- (void)_updateMaxPreheatPaddingIfNeeded;
- (void)_updatePagedRectIfNeeded;
- (void)_updatePreheatingIfNeeded;
- (void)_updateScrollControllerMetricsIfNeeded;
- (void)_updateScrollInfoIfNeeded;
- (void)_updateTilesIfNeeded;
- (void)beginUpdate;
- (void)dealloc;
- (void)endUpdate;
- (void)enumerateTilesInRect:(CGRect)rect withOptions:(id)options usingBlock:(id)block;
- (void)registerPreheatHandler:(id)handler withPadding:(UIEdgeInsets)padding tileGroup:(unint64_t)group context:(void *)context;
- (void)requestFocus;
- (void)setLayoutOrigin:(CGPoint)origin;
- (void)setReferenceSize:(CGSize)size contentInset:(UIEdgeInsets)inset;
- (void)setScrollController:(id)controller;
- (void)setScrollDelegate:(id)delegate;
- (void)setTransitionDelegate:(id)delegate;
- (void)tilingLayout:(id)layout invalidatedWithContext:(id)context;
- (void)unregisterPreheatHandler:(id)handler context:(void *)context;
- (void)updateLayout;
- (void)updateMetrics;
@end

@implementation PXTilingController

- (void)requestFocus
{
  observer = [(PXTilingController *)self observer];
  [observer tilingController:self invalidatedWithContext:1];
}

- (PXTilingDebugDelegate)debugDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_debugDelegate);

  return WeakRetained;
}

- (PXTilingControllerObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (UIEdgeInsets)_maxPreheatPadding
{
  top = self->__maxPreheatPadding.top;
  left = self->__maxPreheatPadding.left;
  bottom = self->__maxPreheatPadding.bottom;
  right = self->__maxPreheatPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)_dirtyRect
{
  x = self->__dirtyRect.origin.x;
  y = self->__dirtyRect.origin.y;
  width = self->__dirtyRect.size.width;
  height = self->__dirtyRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_cachedRect
{
  x = self->__cachedRect.origin.x;
  y = self->__cachedRect.origin.y;
  width = self->__cachedRect.size.width;
  height = self->__cachedRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_pagedRect
{
  x = self->__pagedRect.origin.x;
  y = self->__pagedRect.origin.y;
  width = self->__pagedRect.size.width;
  height = self->__pagedRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)_layoutDesiredOrigin
{
  x = self->__layoutDesiredOrigin.x;
  y = self->__layoutDesiredOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)_updatedPreferredVisibleOrigin
{
  x = self->__updatedPreferredVisibleOrigin.x;
  y = self->__updatedPreferredVisibleOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)_visibleRect
{
  x = self->__visibleRect.origin.x;
  y = self->__visibleRect.origin.y;
  width = self->__visibleRect.size.width;
  height = self->__visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_activeRect
{
  x = self->__activeRect.origin.x;
  y = self->__activeRect.origin.y;
  width = self->__activeRect.size.width;
  height = self->__activeRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

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

- (PXTilingLayout)_layoutWithInitializedVisibleOrigin
{
  WeakRetained = objc_loadWeakRetained(&self->__layoutWithInitializedVisibleOrigin);

  return WeakRetained;
}

- (PXTilingControllerTransitionDelegate)transitionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionDelegate);

  return WeakRetained;
}

- (PXTilingControllerScrollDelegate)scrollDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollDelegate);

  return WeakRetained;
}

- (PXTileAnimator)tileAnimator
{
  WeakRetained = objc_loadWeakRetained(&self->_tileAnimator);

  return WeakRetained;
}

- (PXTileSource)tileSource
{
  WeakRetained = objc_loadWeakRetained(&self->_tileSource);

  return WeakRetained;
}

- (PXScrollController)scrollController
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollController);

  return WeakRetained;
}

- (void)tilingLayout:(id)layout invalidatedWithContext:(id)context
{
  layoutCopy = layout;
  contextCopy = context;
  if (self->_hasInitializedLayout)
  {
    [(PXTilingController *)self _ensureCurrentChange];
    _currentChange = [(PXTilingController *)self _currentChange];
    v9 = [[PXTilingChangeEvent alloc] initWithLayoutInvalidationContext:contextCopy];
    [_currentChange addEvent:v9];

    [(PXTilingController *)self _invalidateLayoutPreparation];
    if (([contextCopy invalidatedContentBounds] & 1) != 0 || objc_msgSend(contextCopy, "invalidatedScrollBounds"))
    {
      observer = [(PXTilingController *)self observer];
      [observer tilingController:self invalidatedWithContext:2];

      [(PXTilingController *)self _setNeedsUpdate];
    }

    if ([contextCopy invalidatedVisibleRect])
    {
      [(PXTilingController *)self _setLayoutWithInitializedVisibleOrigin:0];
      [(PXTilingController *)self _invalidateLayoutPreferredVisibleOrigin];
    }

    if ([contextCopy invalidatedScrollInfo])
    {
      [(PXTilingController *)self _invalidateScrollInfo];
    }

    invalidatedAllTiles = [contextCopy invalidatedAllTiles];
    invalidatedTileGroups = [contextCopy invalidatedTileGroups];
    v13 = invalidatedTileGroups;
    if (invalidatedAllTiles && [invalidatedTileGroups count] || (v26 = 0, v27 = &v26, v28 = 0x2020000000, v29 = 0, v25[0] = MEMORY[0x1E69E9820], v25[1] = 3221225472, v25[2] = __58__PXTilingController_tilingLayout_invalidatedWithContext___block_invoke, v25[3] = &unk_1E7737E80, v25[4] = &v26, objc_msgSend(contextCopy, "enumerateInvalidatedTileIdentifiersUsingBlock:", v25), v14 = *(v27 + 24) | invalidatedAllTiles, _Block_object_dispose(&v26, 8), (v14 & 1) != 0))
    {
      v15 = 1;
    }

    else
    {
      if (![v13 count])
      {
LABEL_16:

        goto LABEL_17;
      }

      v15 = 0;
    }

    _tileStates = [(PXTilingController *)self _tileStates];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __58__PXTilingController_tilingLayout_invalidatedWithContext___block_invoke_2;
    v21 = &unk_1E7737EA8;
    v24 = v15;
    v22 = v13;
    v23 = _tileStates;
    v17 = _tileStates;
    [v17 enumerateStatesUsingBlock:&v18];
    [(PXTilingController *)self _invalidateAllCachedRects:v18];
    [(PXTilingController *)self _invalidateTiles];

    goto LABEL_16;
  }

LABEL_17:
}

uint64_t __58__PXTilingController_tilingLayout_invalidatedWithContext___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

__n128 __58__PXTilingController_tilingLayout_invalidatedWithContext___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) && ((*(a1 + 48) & 1) != 0 || [*(a1 + 32) containsIndex:*(a3 + 272)]))
  {
    *a3 = 1;
    v7 = *(a1 + 40);
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    [v7 setTargetIdentifier:v14 forTileStateAtIndex:a2];
    *(a3 + 280) = 1;
    v8 = *(off_1E7722248 + 9);
    *(a3 + 608) = *(off_1E7722248 + 8);
    *(a3 + 624) = v8;
    v9 = *(off_1E7722248 + 11);
    *(a3 + 640) = *(off_1E7722248 + 10);
    *(a3 + 656) = v9;
    v10 = *(off_1E7722248 + 5);
    *(a3 + 544) = *(off_1E7722248 + 4);
    *(a3 + 560) = v10;
    v11 = *(off_1E7722248 + 7);
    *(a3 + 576) = *(off_1E7722248 + 6);
    *(a3 + 592) = v11;
    v12 = *(off_1E7722248 + 1);
    *(a3 + 480) = *off_1E7722248;
    *(a3 + 496) = v12;
    result = *(off_1E7722248 + 2);
    v13 = *(off_1E7722248 + 3);
    *(a3 + 512) = result;
    *(a3 + 528) = v13;
  }

  return result;
}

- (void)_updateDebugDelegateIfNeeded
{
  debugDelegate = [(PXTilingController *)self debugDelegate];
  if (debugDelegate)
  {
    v4 = debugDelegate;
    [debugDelegate tilingControllerDidUpdateDebugInfo:self];
    debugDelegate = v4;
  }
}

- (void)_updateScrollInfoIfNeeded
{
  if (self->_needsUpdateFlags.scrollInfo)
  {
    self->_needsUpdateFlags.scrollInfo = 0;
    targetLayout = [(PXTilingController *)self targetLayout];
    if (!self->_scrollDelegateFlags.respondsToScrollInfoForLayout || (-[PXTilingController scrollDelegate](self, "scrollDelegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 tilingController:self scrollInfoForLayout:targetLayout], v7 = objc_claimAutoreleasedReturnValue(), v5, (scrollInfo = v7) == 0))
    {
      scrollInfo = [targetLayout scrollInfo];
    }

    v8 = scrollInfo;
    [(PXTilingController *)self _setScrollInfo:scrollInfo];
  }
}

- (void)_invalidateScrollInfo
{
  self->_needsUpdateFlags.scrollInfo = 1;
  [(PXTilingController *)self _setNeedsUpdate];
  observer = [(PXTilingController *)self observer];
  [observer tilingController:self invalidatedWithContext:2];
}

- (void)_updateMaxPreheatPaddingIfNeeded
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_needsUpdateFlags.maxPreheatPadding)
  {
    self->_needsUpdateFlags.maxPreheatPadding = 0;
    v4 = *off_1E7721FA8;
    v3 = *(off_1E7721FA8 + 1);
    v6 = *(off_1E7721FA8 + 2);
    v5 = *(off_1E7721FA8 + 3);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    _preheatRecords = [(PXTilingController *)self _preheatRecords];
    v8 = [_preheatRecords countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(_preheatRecords);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          [v12 padding];
          if (v6 < v13)
          {
            v6 = v13;
          }

          [v12 padding];
          if (v4 < v14)
          {
            v4 = v14;
          }

          [v12 padding];
          if (v3 < v15)
          {
            v3 = v15;
          }

          [v12 padding];
          if (v5 < v16)
          {
            v5 = v16;
          }
        }

        v9 = [_preheatRecords countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [(PXTilingController *)self _setMaxPreheatPadding:v4, v3, v6, v5];
  }
}

- (void)_updatePreheatingIfNeeded
{
  if (self->_needsUpdateFlags.preheating)
  {
    self->_needsUpdateFlags.preheating = 0;
    [(PXTilingController *)self _activeRect];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__96433;
    v18 = __Block_byref_object_dispose__96434;
    v19 = 0;
    _preheatRecords = [(PXTilingController *)self _preheatRecords];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__PXTilingController__updatePreheatingIfNeeded__block_invoke;
    v13[3] = &unk_1E7737E58;
    v13[6] = v4;
    v13[7] = v6;
    v13[8] = v8;
    v13[9] = v10;
    v13[4] = self;
    v13[5] = &v14;
    [_preheatRecords enumerateObjectsUsingBlock:v13];

    if ([v15[5] count])
    {
      _preheatRecords2 = [(PXTilingController *)self _preheatRecords];
      [_preheatRecords2 removeObjectsAtIndexes:v15[5]];

      [(PXTilingController *)self _invalidateMaxPreheatPadding];
      [(PXTilingController *)self _updateMaxPreheatPaddingIfNeeded];
    }

    _Block_object_dispose(&v14, 8);
  }
}

void __47__PXTilingController__updatePreheatingIfNeeded__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  [v9 preheatHandler];
  if (objc_claimAutoreleasedReturnValue())
  {
    [v9 padding];
    sub_1A524D1F4();
  }

  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AD50] indexSet];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v5 = *(*(*(a1 + 40) + 8) + 40);
  }

  [v5 addIndex:a3];
}

- (void)_updateTilesIfNeeded
{
  v132 = *MEMORY[0x1E69E9840];
  if (self->_needsUpdateFlags.tiles)
  {
    self->_needsUpdateFlags.tiles = 0;
    tileSource = [(PXTilingController *)self tileSource];
    if (tileSource)
    {
      _tileStates = [(PXTilingController *)self _tileStates];
      [_tileStates count];
      kdebug_trace();
      targetLayout = [(PXTilingController *)self targetLayout];
      _coordinateSpaceIdentifier = [(PXTilingController *)self _coordinateSpaceIdentifier];
      _coordinateSpaceConverter = [(PXTilingController *)self _coordinateSpaceConverter];
      transitionDelegate = [(PXTilingController *)self transitionDelegate];
      _currentChangeIfExists = [(PXTilingController *)self _currentChangeIfExists];
      v7 = _currentChangeIfExists;
      if (_currentChangeIfExists && ([_currentChangeIfExists isIdentity] & 1) == 0 && self->_transitionDelegateFlags.respondsToTileIdentifierConverterForChange && (objc_msgSend(transitionDelegate, "tilingController:tileIdentifierConverterForChange:", self, v7), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v127[0] = MEMORY[0x1E69E9820];
        v127[1] = 3221225472;
        v127[2] = __42__PXTilingController__updateTilesIfNeeded__block_invoke;
        v127[3] = &unk_1E7737C88;
        v88 = v8;
        v128 = v88;
        v129 = _tileStates;
        [v129 enumerateStatesUsingBlock:v127];
      }

      else
      {
        v88 = 0;
      }

      [(PXTilingController *)self _cachedRect];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      [(PXTilingController *)self _dirtyRect];
      x = v133.origin.x;
      y = v133.origin.y;
      width = v133.size.width;
      height = v133.size.height;
      if (!CGRectIsEmpty(v133))
      {
        v21 = MEMORY[0x1E695F050];
        [(PXTilingController *)self _setDirtyRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
        buf = 0u;
        v131 = 0u;
        memset(&rect, 0, sizeof(rect));
        v134.origin.x = v10;
        v134.origin.y = v12;
        v134.size.width = v14;
        v134.size.height = v16;
        v135.origin.x = x;
        v135.origin.y = y;
        v135.size.width = width;
        v135.size.height = height;
        if (!CGRectContainsRect(v134, v135))
        {
          PXRectIntersectWithBasicRemainders();
        }

        *&buf = x;
        *(&buf + 1) = y;
        *&v131 = width;
        *(&v131 + 1) = height;
        v22 = *(v21 + 16);
        rect.origin = *v21;
        rect.size = v22;
        [(PXTilingController *)self _markRectAsCached:rect.origin.x, rect.origin.y, v22];
        v24 = rect.origin.x;
        v25 = rect.origin.y;
        v26 = rect.size.width;
        v27 = rect.size.height;
        if (!CGRectIsEmpty(*&v24))
        {
          [_coordinateSpaceConverter convertRect:_coordinateSpaceIdentifier fromCoordinateSpaceIdentifier:objc_msgSend(targetLayout toCoordinateSpaceIdentifier:{"coordinateSpaceIdentifier"), rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          kdebug_trace();
          v119[0] = MEMORY[0x1E69E9820];
          v119[1] = 3221225472;
          v119[2] = __42__PXTilingController__updateTilesIfNeeded__block_invoke_2;
          v119[3] = &unk_1E7737D40;
          v120 = _tileStates;
          v124 = _coordinateSpaceIdentifier;
          v125 = a2;
          v121 = _coordinateSpaceConverter;
          selfCopy = self;
          v123 = targetLayout;
          [v123 enumerateTilesInRect:0 withOptions:v119 usingBlock:{v29, v31, v33, v35}];
          kdebug_trace();
        }

        fromLayout = [v7 fromLayout];
        toLayout = [v7 toLayout];
        v38 = toLayout;
        if (toLayout)
        {
          v39 = toLayout;
        }

        else
        {
          v39 = targetLayout;
        }

        v40 = v39;

        v41 = objc_opt_respondsToSelector();
        v42 = v88;
        if ((v41 & 1) == 0)
        {
          v42 = 0;
        }

        v43 = v42;
        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 3221225472;
        v112[2] = __42__PXTilingController__updateTilesIfNeeded__block_invoke_4;
        v112[3] = &unk_1E7737D68;
        v113 = v43;
        v114 = fromLayout;
        v44 = _tileStates;
        v45 = _tileStates;
        v46 = v7;
        v47 = a2;
        v48 = targetLayout;
        v49 = v44;
        v115 = v44;
        v117 = v40;
        v118 = _coordinateSpaceIdentifier;
        v116 = _coordinateSpaceConverter;
        v50 = v40;
        v51 = fromLayout;
        v52 = v43;
        v53 = v49;
        targetLayout = v48;
        a2 = v47;
        v7 = v46;
        _tileStates = v45;
        [v53 enumerateStatesUsingBlock:v112];
      }

      if (v7 && ([v7 isIdentity] & 1) == 0)
      {
        v55 = [v7 defaultAnimationOptionsForTilingController:self];
        if (v55)
        {
          v54 = [[PXTileTransitionSimpleAnimationCoordinator alloc] initWithAnimationOptions:v55];
        }

        else if (self->_transitionDelegateFlags.respondsToTransitionAnimationCoordinatorForChange)
        {
          fromLayout2 = [v7 fromLayout];
          v57 = fromLayout2;
          if (fromLayout2 && !+[PXTilingCoordinateSpaceConverter canConvertBetweenCoordinateSpaceIdentifier:andCoordinateSpaceIdentifier:](PXTilingCoordinateSpaceConverter, "canConvertBetweenCoordinateSpaceIdentifier:andCoordinateSpaceIdentifier:", [fromLayout2 coordinateSpaceIdentifier], _coordinateSpaceIdentifier))
          {
            v54 = 0;
          }

          else
          {
            v54 = [transitionDelegate tilingController:self transitionAnimationCoordinatorForChange:v7];
          }
        }

        else
        {
          v54 = 0;
        }
      }

      else
      {
        v54 = 0;
      }

      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __42__PXTilingController__updateTilesIfNeeded__block_invoke_5;
      v110[3] = &unk_1E7737D90;
      v58 = v54;
      v111 = v58;
      v59 = [_tileStates indexesOfStatesPassingTest:v110];
      v108[0] = MEMORY[0x1E69E9820];
      v108[1] = 3221225472;
      v108[2] = __42__PXTilingController__updateTilesIfNeeded__block_invoke_6;
      v108[3] = &unk_1E7737C60;
      v60 = _tileStates;
      v109 = v60;
      [v60 enumerateStatesAtIndexes:v59 usingBlock:v108];
      [(PXTilingController *)self _activeRect];
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v68 = v67;
      tileAnimator = [(PXTilingController *)self tileAnimator];
      objc_initWeak(&buf, self);
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __42__PXTilingController__updateTilesIfNeeded__block_invoke_8;
      v100[3] = &unk_1E7737E08;
      v107[1] = a2;
      v100[4] = self;
      v70 = v58;
      v101 = v70;
      v71 = _coordinateSpaceConverter;
      v102 = v71;
      v107[2] = _coordinateSpaceIdentifier;
      v72 = targetLayout;
      v73 = v60;
      v103 = v73;
      v107[3] = v62;
      v107[4] = v64;
      v107[5] = v66;
      v107[6] = v68;
      v104 = tileSource;
      v74 = v72;
      v105 = v74;
      v75 = tileAnimator;
      v106 = v75;
      objc_copyWeak(v107, &buf);
      [v73 enumerateStatesUsingBlock:v100];
      objc_destroyWeak(v107);

      objc_destroyWeak(&buf);
      if ([(PXTilingController *)self shouldAggressivelyEvictTileCaches])
      {
        [(PXTilingController *)self _pagedRect];
        v77 = v76;
        v79 = v78;
        v81 = v80;
        v83 = v82;
        v84 = 1;
      }

      else
      {
        if ([v73 count] >= 2001)
        {
          [(PXTilingController *)self _pagedRect];
          PXEdgeInsetsMake();
        }

        v84 = 0;
        v77 = *MEMORY[0x1E695F040];
        v79 = *(MEMORY[0x1E695F040] + 8);
        v81 = *(MEMORY[0x1E695F040] + 16);
        v83 = *(MEMORY[0x1E695F040] + 24);
      }

      indexSet = [MEMORY[0x1E696AD50] indexSet];
      v92[0] = MEMORY[0x1E69E9820];
      v92[1] = 3221225472;
      v92[2] = __42__PXTilingController__updateTilesIfNeeded__block_invoke_2_54;
      v92[3] = &unk_1E7737E30;
      v23 = v73;
      v93 = v23;
      v99 = v84;
      v95 = v77;
      v96 = v79;
      v97 = v81;
      v98 = v83;
      v86 = indexSet;
      v94 = v86;
      [v23 enumerateStatesUsingBlock:v92];
      [(PXTilingController *)self _updatePreheatingIfNeeded];
      if ([v86 count])
      {
        [v23 checkInIndexes:v86];
      }

      [v23 count];
      kdebug_trace();
    }

    else
    {
      v23 = PLUIGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = self;
        _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_DEFAULT, "Skipping update due to missing tile source %@", &buf, 0xCu);
      }
    }
  }
}

double __42__PXTilingController__updateTilesIfNeeded__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 == 1)
  {
    v25 = v3;
    v26 = v4;
    v8 = *(a3 + 56);
    v21 = *(a3 + 40);
    v22 = v8;
    v23 = *(a3 + 72);
    v24 = *(a3 + 88);
    v9 = *(a3 + 24);
    v19 = *(a3 + 8);
    v20 = v9;
    v18 = *(a3 + 272);
    if ([*(a1 + 32) transformTileIdentifier:&v19 group:&v18])
    {
      v11 = *(a1 + 40);
      v16[2] = v21;
      v16[3] = v22;
      v16[4] = v23;
      v17 = v24;
      v16[0] = v19;
      v16[1] = v20;
      [v11 setTargetIdentifier:v16 forTileStateAtIndex:a2];
      v12 = v22;
      *(a3 + 216) = v21;
      *(a3 + 232) = v12;
      *(a3 + 248) = v23;
      v13 = v24;
      result = *&v19;
      v14 = v20;
      *(a3 + 184) = v19;
      *(a3 + 200) = v14;
      v15 = v18;
      *(a3 + 264) = v13;
      *(a3 + 272) = v15;
    }
  }

  return result;
}

void __42__PXTilingController__updateTilesIfNeeded__block_invoke_2(uint64_t a1, __int128 *a2, _OWORD *a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = *(a1 + 32);
  v11 = a2[3];
  v38 = a2[2];
  v39 = v11;
  v40 = a2[4];
  *&v41 = *(a2 + 10);
  v12 = a2[1];
  v36 = *a2;
  v37 = v12;
  v13 = [v10 indexOfStateWithTargetIdentifier:&v36];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = *(a1 + 32);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __42__PXTilingController__updateTilesIfNeeded__block_invoke_3;
    v48[3] = &__block_descriptor_128_e401_v16__0__PXTileState_B_PXTileIdentifier_Q_10Q___PXTileIdentifier_Q_10Q___PXTileIdentifier_Q_10Q__QB_PXTileGeometry__CGRect__CGPoint_dd__CGSize_dd___CGPoint_dd__CGSize_dd__CGAffineTransform_dddddd_ddB_CGSize_dd__CGRect__CGPoint_dd__CGSize_dd___v__PXTileGeometry__CGRect__CGPoint_dd__CGSize_dd___CGPoint_dd__CGSize_dd__CGAffineTransform_dddddd_ddB_CGSize_dd__CGRect__CGPoint_dd__CGSize_dd___v_BB_v_v_vQ_8l;
    v15 = a2[3];
    v51 = a2[2];
    v52 = v15;
    v53 = a2[4];
    v16 = *(a2 + 10);
    v17 = a2[1];
    v49 = *a2;
    v50 = v17;
    v54 = v16;
    v55 = a4;
    v13 = [v14 checkOutIndexWithInitialConfiguration:v48];
  }

  v18 = [*(a1 + 32) stateAtIndex:v13];
  v19 = *(a1 + 40);
  if (v19)
  {
    v20 = *(a1 + 64);
    v21 = a3[9];
    v35[8] = a3[8];
    v35[9] = v21;
    v22 = a3[11];
    v35[10] = a3[10];
    v35[11] = v22;
    v23 = a3[5];
    v35[4] = a3[4];
    v35[5] = v23;
    v24 = a3[7];
    v35[6] = a3[6];
    v35[7] = v24;
    v25 = a3[1];
    v35[0] = *a3;
    v35[1] = v25;
    v26 = a3[3];
    v35[2] = a3[2];
    v35[3] = v26;
    [v19 convertTileGeometry:v35 toCoordinateSpaceIdentifier:v20];
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
  }

  v27 = v45;
  *(v18 + 608) = v44;
  *(v18 + 624) = v27;
  v28 = v47;
  *(v18 + 640) = v46;
  *(v18 + 656) = v28;
  v29 = v41;
  *(v18 + 544) = v40;
  *(v18 + 560) = v29;
  v30 = v43;
  *(v18 + 576) = v42;
  *(v18 + 592) = v30;
  v31 = v37;
  *(v18 + 480) = v36;
  *(v18 + 496) = v31;
  v32 = v39;
  *(v18 + 512) = v38;
  *(v18 + 528) = v32;
  *(v18 + 673) = 1;
  v33 = v9;
  v34 = *(v18 + 688);
  if (v34 != v33)
  {

    *(v18 + 688) = v33;
  }
}

void __42__PXTilingController__updateTilesIfNeeded__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 280) != 1)
  {
    return;
  }

  v82[11] = v3;
  v82[12] = v4;
  v6 = (a3 + 96);
  if (!*(a3 + 96))
  {
    return;
  }

  v8 = 0;
  v82[0] = 0;
  v9 = *off_1E7722250;
  if (*(a3 + 472) == *off_1E7722250)
  {
    v12 = *(a3 + 8);
    v13 = *(a3 + 56);
    v78 = *(a3 + 40);
    v79 = v13;
    v80 = *(a3 + 72);
    v81 = *(a3 + 88);
    v14 = *(a3 + 24);
    v76 = v12;
    v77 = v14;
    if (v12)
    {
      goto LABEL_7;
    }

    v28 = *(a3 + 144);
    v78 = *(a3 + 128);
    v79 = v28;
    v80 = *(a3 + 160);
    v81 = *(a3 + 176);
    v29 = *(a3 + 112);
    v76 = *v6;
    v77 = v29;
    if (![*(a1 + 32) reverseTransformTileIdentifier:&v76])
    {
      v8 = 0;
      v81 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      goto LABEL_4;
    }

    if (v76)
    {
LABEL_7:
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v15 = *(a1 + 40);
      v63 = 0;
      v53 = v78;
      v54 = v79;
      v55 = v80;
      *&v56 = v81;
      v51 = v76;
      v52 = v77;
      v16 = [v15 getGeometry:&v64 group:v82 userData:&v63 forTileWithIdentifier:&v51];
      v8 = v63;
      if (v16)
      {
        v17 = [*(a1 + 48) stateAtIndex:a2];
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v18 = *(a1 + 56);
        if (v18)
        {
          v19 = *(a1 + 72);
          v47 = v72;
          v48 = v73;
          v49 = v74;
          v50 = v75;
          v43 = v68;
          v44 = v69;
          v45 = v70;
          v46 = v71;
          v39 = v64;
          v40 = v65;
          v41 = v66;
          v42 = v67;
          [v18 convertTileGeometry:&v39 toCoordinateSpaceIdentifier:v19];
        }

        [*(a1 + 48) setCurrentGeometry:&v51 forTileStateAtIndex:a2];
        *(v17 + 672) = 1;
        v20 = v8;
        v21 = *(v17 + 680);
        if (v21 != v20)
        {

          *(v17 + 680) = v20;
        }
      }

      goto LABEL_4;
    }

    v8 = 0;
  }

LABEL_4:
  if (*(a3 + 664) == v9)
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v22 = *(a1 + 64);
    v38 = 0;
    v23 = v6[3];
    v53 = v6[2];
    v54 = v23;
    v55 = v6[4];
    *&v56 = *(v6 + 10);
    v24 = v6[1];
    v51 = *v6;
    v52 = v24;
    v25 = [v22 getGeometry:&v64 group:v82 userData:&v38 forTileWithIdentifier:&v51];
    v10 = v38;

    if (v25)
    {
      v26 = *(a1 + 56);
      if (v26)
      {
        v27 = *(a1 + 72);
        v47 = v72;
        v48 = v73;
        v49 = v74;
        v50 = v75;
        v43 = v68;
        v44 = v69;
        v45 = v70;
        v46 = v71;
        v39 = v64;
        v40 = v65;
        v41 = v66;
        v42 = v67;
        [v26 convertTileGeometry:&v39 toCoordinateSpaceIdentifier:v27];
      }

      else
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
      }

      v30 = v60;
      *(a3 + 608) = v59;
      *(a3 + 624) = v30;
      v31 = v62;
      *(a3 + 640) = v61;
      *(a3 + 656) = v31;
      v32 = v56;
      *(a3 + 544) = v55;
      *(a3 + 560) = v32;
      v33 = v58;
      *(a3 + 576) = v57;
      *(a3 + 592) = v33;
      v34 = v52;
      *(a3 + 480) = v51;
      *(a3 + 496) = v34;
      v35 = v54;
      *(a3 + 512) = v53;
      *(a3 + 528) = v35;
      *(a3 + 673) = 1;
      v36 = v10;
      v37 = *(a3 + 688);
      if (v37 != v36)
      {

        *(a3 + 688) = v36;
      }
    }
  }

  else
  {
    v10 = v8;
  }
}

uint64_t __42__PXTilingController__updateTilesIfNeeded__block_invoke_5(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 280) != 1 || !*(a2 + 96) || *(a2 + 472) == *off_1E7722250 || *(a2 + 664) == *off_1E7722250)
  {
    return 0;
  }

  v2 = *(a2 + 680);
  v3 = *(a2 + 688);
  v4 = *(a1 + 32);
  v5 = *(a2 + 144);
  v24[2] = *(a2 + 128);
  v24[3] = v5;
  v24[4] = *(a2 + 160);
  v25 = *(a2 + 176);
  v6 = *(a2 + 112);
  v24[0] = *(a2 + 96);
  v24[1] = v6;
  v7 = *(a2 + 432);
  v23[8] = *(a2 + 416);
  v23[9] = v7;
  v8 = *(a2 + 464);
  v23[10] = *(a2 + 448);
  v23[11] = v8;
  v9 = *(a2 + 368);
  v23[4] = *(a2 + 352);
  v23[5] = v9;
  v10 = *(a2 + 400);
  v23[6] = *(a2 + 384);
  v23[7] = v10;
  v11 = *(a2 + 304);
  v23[0] = *(a2 + 288);
  v23[1] = v11;
  v12 = *(a2 + 336);
  v23[2] = *(a2 + 320);
  v23[3] = v12;
  v13 = *(a2 + 624);
  v22[8] = *(a2 + 608);
  v22[9] = v13;
  v14 = *(a2 + 656);
  v22[10] = *(a2 + 640);
  v22[11] = v14;
  v15 = *(a2 + 560);
  v22[4] = *(a2 + 544);
  v22[5] = v15;
  v16 = *(a2 + 592);
  v22[6] = *(a2 + 576);
  v22[7] = v16;
  v17 = *(a2 + 496);
  v22[0] = *(a2 + 480);
  v22[1] = v17;
  v18 = *(a2 + 528);
  v22[2] = *(a2 + 512);
  v22[3] = v18;
  v19 = v2;
  v20 = [v4 useDoubleSidedAnimationForUpdatedTileWithIdentifier:v24 fromGeometry:v23 fromUserData:v19 toGeometry:v22 toUserData:v3];

  return v20;
}

void __42__PXTilingController__updateTilesIfNeeded__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 144);
  v30 = *(a3 + 128);
  v31 = v5;
  v32 = *(a3 + 160);
  v33 = *(a3 + 176);
  v6 = *(a3 + 112);
  v28 = *(a3 + 96);
  v29 = v6;
  v7 = *(a3 + 272);
  v8 = *(a3 + 608);
  v9 = *(a3 + 624);
  v10 = *(a3 + 656);
  v45 = *(a3 + 640);
  v46 = v10;
  v43 = v8;
  v44 = v9;
  v11 = *(a3 + 480);
  v12 = *(a3 + 496);
  v13 = *(a3 + 512);
  v38 = *(a3 + 528);
  v37 = v13;
  v36 = v12;
  v35 = v11;
  v14 = *(a3 + 544);
  v15 = *(a3 + 560);
  v16 = *(a3 + 576);
  v42 = *(a3 + 592);
  v41 = v16;
  v40 = v15;
  v39 = v14;
  v17 = *(a3 + 688);
  v18 = *(off_1E7722248 + 9);
  *(a3 + 608) = *(off_1E7722248 + 8);
  *(a3 + 624) = v18;
  v19 = *(off_1E7722248 + 11);
  *(a3 + 640) = *(off_1E7722248 + 10);
  *(a3 + 656) = v19;
  v20 = *(off_1E7722248 + 5);
  *(a3 + 544) = *(off_1E7722248 + 4);
  *(a3 + 560) = v20;
  v21 = *(off_1E7722248 + 7);
  *(a3 + 576) = *(off_1E7722248 + 6);
  *(a3 + 592) = v21;
  v22 = *(off_1E7722248 + 1);
  *(a3 + 480) = *off_1E7722248;
  *(a3 + 496) = v22;
  v23 = *(off_1E7722248 + 3);
  *(a3 + 512) = *(off_1E7722248 + 2);
  *(a3 + 528) = v23;
  *(a3 + 673) = 0;
  v24 = *(a1 + 32);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __42__PXTilingController__updateTilesIfNeeded__block_invoke_7;
  v26[3] = &unk_1E7737DB8;
  v34 = v7;
  v27 = v17;
  v25 = v17;
  [v24 checkOutIndexWithInitialConfiguration:v26];
}

void __42__PXTilingController__updateTilesIfNeeded__block_invoke_8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v171 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 144);
  *&v159.tx = *(a3 + 128);
  v160 = v5;
  v161 = *(a3 + 160);
  v162 = *(a3 + 176);
  v6 = *(a3 + 112);
  *&v159.a = *(a3 + 96);
  *&v159.c = v6;
  v7 = *(a3 + 696);
  v8 = *(a3 + 432);
  v155 = *(a3 + 416);
  v156 = v8;
  v9 = *(a3 + 464);
  v157 = *(a3 + 448);
  v158 = v9;
  v10 = *(a3 + 368);
  *&v153.a = *(a3 + 352);
  *&v153.c = v10;
  v11 = *(a3 + 400);
  *&v153.tx = *(a3 + 384);
  v154 = v11;
  v12 = *(a3 + 304);
  rect1.origin = *(a3 + 288);
  rect1.size = v12;
  v13 = *(a3 + 336);
  v151 = *(a3 + 320);
  v152 = v13;
  v14 = *(a3 + 680);
  v15 = *(v3 + 624);
  v146 = *(v3 + 608);
  v147 = v15;
  v16 = *(v3 + 656);
  v148 = *(v3 + 640);
  v149 = v16;
  v17 = *(v3 + 560);
  *&v144.a = *(v3 + 544);
  *&v144.c = v17;
  v18 = *(v3 + 592);
  *&v144.tx = *(v3 + 576);
  v145 = v18;
  v19 = *(v3 + 496);
  rect2.origin = *(v3 + 480);
  rect2.size = v19;
  v20 = *(v3 + 528);
  v142 = *(v3 + 512);
  v143 = v20;
  v105 = *(v3 + 673);
  v21 = *(v3 + 688);
  v22 = v21;
  if (*(v3 + 280) == 1)
  {
    if (*(&v158 + 1) == *off_1E7722250)
    {
      v26 = *(a1 + 40);
      v140 = 0;
      t2 = v159;
      v133 = v160;
      *&v134.a = v161;
      v134.c = v162;
      v167 = v146;
      v168 = v147;
      v169 = v148;
      v170 = v149;
      v165 = v144;
      v166 = v145;
      *&t1.a = rect2.origin;
      *&t1.c = rect2.size;
      *&t1.tx = v142;
      v164 = v143;
      v27 = [v26 getInitialGeometry:&rect1 initialUserData:&v140 forAppearingTileWithIdentifier:&t2 toGeometry:&t1 toUserData:v22];
      v28 = v140;

      if (v27)
      {
        v106 = v28;
      }

      else
      {
        v155 = v146;
        v156 = v147;
        v157 = v148;
        v158 = v149;
        v153 = v144;
        v154 = v145;
        rect1 = rect2;
        v151 = v142;
        v152 = v143;
        v106 = v22;
      }

      v39 = *(a1 + 48);
      if (v39)
      {
        v40 = *(a1 + 104);
        v136 = v155;
        v137 = v156;
        v138 = v157;
        v139 = v158;
        v134 = v153;
        v135 = v154;
        *&t2.a = rect1.origin;
        *&t2.c = rect1.size;
        *&t2.tx = v151;
        v133 = v152;
        [v39 convertTileGeometry:&t2 toCoordinateSpaceIdentifier:v40];
      }

      else
      {
        v170 = 0u;
        v169 = 0u;
        v168 = 0u;
        v167 = 0u;
        v166 = 0u;
        memset(&v165, 0, sizeof(v165));
        v164 = 0u;
        memset(&t1, 0, sizeof(t1));
      }

      v23 = 0;
      v155 = v167;
      v156 = v168;
      v157 = v169;
      v158 = v170;
      v153 = v165;
      v154 = v166;
      rect1.origin = *&t1.a;
      rect1.size = *&t1.c;
      v24 = v27 ^ 1;
      v25 = 1;
      v151 = *&t1.tx;
      v152 = v164;
    }

    else
    {
      v106 = v14;
      if (*(&v149 + 1) == *off_1E7722250)
      {
        if (*(v3 + 96))
        {
          v29 = *(a1 + 56);
          memset(&v165, 0, 24);
          v164 = 0u;
          memset(&t1, 0, sizeof(t1));
          [v29 setTargetIdentifier:&t1 forTileStateAtIndex:a2];
        }

        v30 = *(v3 + 232);
        *&v159.tx = *(v3 + 216);
        v160 = v30;
        v161 = *(v3 + 248);
        v162 = *(v3 + 264);
        v31 = *(v3 + 200);
        *&v159.a = *(v3 + 184);
        *&v159.c = v31;
        v32 = *(a1 + 40);
        v131 = 0;
        v33 = *(v3 + 232);
        *&t2.tx = *(v3 + 216);
        v133 = v33;
        *&v134.a = *(v3 + 248);
        v134.c = *(v3 + 264);
        v34 = *(v3 + 200);
        *&t2.a = *(v3 + 184);
        *&t2.c = v34;
        v167 = v155;
        v168 = v156;
        v169 = v157;
        v170 = v158;
        v165 = v153;
        v166 = v154;
        *&t1.a = rect1.origin;
        *&t1.c = rect1.size;
        *&t1.tx = v151;
        v164 = v152;
        v35 = [v32 getFinalGeometry:&rect2 finalUserData:&v131 forDisappearingTileWithIdentifier:&t2 fromGeometry:&t1 fromUserData:v14];
        v36 = v131;

        if (v35)
        {
          v37 = *(a1 + 48);
          if (v37)
          {
            v38 = *(a1 + 104);
            v136 = v146;
            v137 = v147;
            v138 = v148;
            v139 = v149;
            v134 = v144;
            v135 = v145;
            *&t2.a = rect2.origin;
            *&t2.c = rect2.size;
            *&t2.tx = v142;
            v133 = v143;
            [v37 convertTileGeometry:&t2 toCoordinateSpaceIdentifier:v38];
          }

          else
          {
            v170 = 0u;
            v169 = 0u;
            v168 = 0u;
            v167 = 0u;
            v166 = 0u;
            memset(&v165, 0, sizeof(v165));
            v164 = 0u;
            memset(&t1, 0, sizeof(t1));
          }

          v23 = 0;
          v105 = 0;
          v146 = v167;
          v147 = v168;
          v148 = v169;
          v149 = v170;
          v144 = v165;
          v145 = v166;
          rect2.origin = *&t1.a;
          rect2.size = *&t1.c;
          v24 = 1;
          v25 = 3;
          v22 = v36;
          v142 = *&t1.tx;
          v143 = v164;
        }

        else
        {
          v41 = *(off_1E7722248 + 9);
          v146 = *(off_1E7722248 + 8);
          v147 = v41;
          v42 = *(off_1E7722248 + 11);
          v148 = *(off_1E7722248 + 10);
          v149 = v42;
          v43 = *(off_1E7722248 + 5);
          *&v144.a = *(off_1E7722248 + 4);
          *&v144.c = v43;
          v44 = *(off_1E7722248 + 7);
          *&v144.tx = *(off_1E7722248 + 6);
          v145 = v44;
          v45 = *(off_1E7722248 + 1);
          rect2.origin = *off_1E7722248;
          rect2.size = v45;
          v46 = *(off_1E7722248 + 3);
          v142 = *(off_1E7722248 + 2);
          v143 = v46;

          v23 = 0;
          v22 = 0;
          v105 = 0;
          v24 = 1;
          v25 = 3;
        }
      }

      else
      {
        v23 = 0;
        v24 = 1;
        v25 = 2;
      }
    }
  }

  else
  {
    v106 = v14;
    if (v14 == v21)
    {
      v25 = 0;
      v24 = 1;
      v23 = 1;
    }

    else
    {
      v23 = [v14 isEqual:v21];
      v25 = 2;
      if (v23)
      {
        v25 = 0;
      }

      v24 = 1;
    }
  }

  v47 = *(&v149 + 1);
  v48 = *off_1E7722250;
  if (*(&v149 + 1) == *off_1E7722250)
  {
    goto LABEL_42;
  }

  v103 = v25;
  if (v7)
  {
LABEL_27:
    v49 = v151;
    v50 = v152;
    v109 = v153;
    v51 = v154;
    v52 = v155;
    v102 = *(&v155 + 1);
    v100 = *&v156;
    v97 = *&v157;
    v98 = *(&v156 + 1);
    v95 = *&v158;
    v96 = *(&v157 + 1);
    v53 = *(&v158 + 1);
    v54 = v142;
    v55 = v143;
    v113 = v144;
    v56 = v145;
    v57 = v146;
    v101 = *(&v146 + 1);
    v99 = *&v147;
    v93 = *&v148;
    v94 = *(&v147 + 1);
    v91 = *&v149;
    v92 = *(&v148 + 1);
    if (!CGRectEqualToRect(rect1, rect2) || *&v49 != *&v54 || *(&v49 + 1) != *(&v54 + 1) || *&v50 != *&v55 || *(&v50 + 1) != *(&v55 + 1) || (t1 = v109, t2 = v113, !CGAffineTransformEqualToTransform(&t1, &t2)) || *(&v51 + 1) != *(&v56 + 1) || v52 != v57 || *&v51 != *&v56 || v102 != v101 || v100 != v99 || (v172.origin.y = v97, v172.origin.x = v98, v172.size.height = v95, v172.size.width = v96, v173.origin.y = v93, v173.origin.x = v94, v173.size.height = v91, v173.size.width = v92, !CGRectEqualToRect(v172, v173)) || v53 != v47 || v106 != v22 && ([v106 isEqual:v22] & 1) == 0)
    {
      if (v23)
      {
        v84 = PLUIGetLog();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          t1 = v159;
          v164 = v160;
          *&v165.a = v161;
          v165.c = v162;
          PXTileIdentifierDescription(&t1);
          objc_claimAutoreleasedReturnValue();
          v85 = *(v3 + 432);
          v167 = *(v3 + 416);
          v168 = v85;
          v86 = *(v3 + 464);
          v169 = *(v3 + 448);
          v170 = v86;
          v87 = *(v3 + 368);
          *&v165.a = *(v3 + 352);
          *&v165.c = v87;
          v88 = *(v3 + 400);
          *&v165.tx = *(v3 + 384);
          v166 = v88;
          v89 = *(v3 + 304);
          *&t1.a = *(v3 + 288);
          *&t1.c = v89;
          v90 = *(v3 + 336);
          *&t1.tx = *(v3 + 320);
          v164 = v90;
          PXTileGeometryDescription();
        }

        v103 = 2;
      }

      v58 = *(a1 + 40);
      v109 = v159;
      v110 = v160;
      v111 = v161;
      v112 = v162;
      v167 = v155;
      v168 = v156;
      v169 = v157;
      v170 = v158;
      v165 = v153;
      v166 = v154;
      *&t1.a = rect1.origin;
      *&t1.c = rect1.size;
      *&t1.tx = v151;
      v164 = v152;
      v136 = v146;
      v137 = v147;
      v138 = v148;
      v139 = v149;
      v134 = v144;
      v135 = v145;
      *&t2.a = rect2.origin;
      *&t2.c = rect2.size;
      *&t2.tx = v142;
      v133 = v143;
      v59 = [v58 optionsForAnimatingTileWithIdentifier:&v109 animationType:v103 fromGeometry:&t1 fromUserData:v106 toGeometry:&t2 toUserData:{v22, *&v91, *&v92, *&v93, *&v94, *&v95, *&v96, *&v97, *&v98}];
      ++*(v3 + 704);
      v60 = *(a1 + 80);
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __42__PXTilingController__updateTilesIfNeeded__block_invoke_52;
      v107[3] = &unk_1E7749808;
      objc_copyWeak(v108, (a1 + 88));
      v108[1] = a2;
      v167 = v146;
      v168 = v147;
      v169 = v148;
      v170 = v149;
      v165 = v144;
      v166 = v145;
      *&t1.a = rect2.origin;
      *&t1.c = rect2.size;
      *&t1.tx = v142;
      v164 = v143;
      [v60 animateTile:v7 toGeometry:&t1 userData:v22 withOptions:v59 completionHandler:v107];
      objc_destroyWeak(v108);
    }

    goto LABEL_42;
  }

  if (*(&v158 + 1) != v48)
  {
    if (CGRectIntersectsRect(rect1, *(a1 + 112)))
    {
      goto LABEL_54;
    }

    v47 = *(&v149 + 1);
  }

  if (v47 == v48 || !CGRectIntersectsRect(rect2, *(a1 + 112)))
  {
    v7 = 0;
    goto LABEL_42;
  }

LABEL_54:
  if (v24)
  {
    v7 = 0;
  }

  else
  {
    t2.a = 0.0;
    *&t2.b = &t2;
    *&t2.c = 0x2020000000;
    t2.d = NAN;
    v109.a = 0.0;
    *&v109.b = &v109;
    *&v109.c = 0x2020000000uLL;
    v69 = *(a1 + 56);
    v114[0] = MEMORY[0x1E69E9820];
    v114[1] = 3221225472;
    v114[2] = __42__PXTilingController__updateTilesIfNeeded__block_invoke_9;
    v114[3] = &unk_1E7737DE0;
    v118 = v159;
    v121 = v162;
    v120 = v161;
    v119 = v160;
    v123 = v151;
    v124 = v152;
    v122 = rect1;
    v125 = v153;
    v126 = v154;
    v129 = v157;
    v130 = v158;
    v127 = v155;
    v128 = v156;
    v115 = v106;
    p_t2 = &t2;
    v117 = &v109;
    [v69 enumerateStatesUsingBlock:v114];
    if (*(*&v109.b + 24))
    {
      v70 = *(a1 + 56);
      memset(&v165, 0, 24);
      v164 = 0u;
      memset(&t1, 0, sizeof(t1));
      [v70 setTargetIdentifier:&t1 forTileStateAtIndex:a2];
      v3 = *(*&v109.b + 24);
      v71 = *(*&t2.b + 24);
      v7 = *(v3 + 696);
      v72 = *(a1 + 56);
      t1 = v159;
      v164 = v160;
      *&v165.a = v161;
      v165.c = v162;
      a2 = v71;
      [v72 setTargetIdentifier:&t1 forTileStateAtIndex:?];
      v73 = *&v159.c;
      *(v3 + 184) = *&v159.a;
      v74 = v160;
      *(v3 + 216) = *&v159.tx;
      *(v3 + 232) = v74;
      *(v3 + 248) = v161;
      *(v3 + 264) = v162;
      *(v3 + 200) = v73;
      v75 = v145;
      *(v3 + 576) = *&v144.tx;
      *(v3 + 592) = v75;
      v76 = *&v144.c;
      *(v3 + 544) = *&v144.a;
      *(v3 + 560) = v76;
      v77 = v143;
      *(v3 + 512) = v142;
      *(v3 + 528) = v77;
      size = rect2.size;
      *(v3 + 480) = rect2.origin;
      *(v3 + 496) = size;
      v79 = v147;
      *(v3 + 608) = v146;
      *(v3 + 624) = v79;
      v80 = v149;
      *(v3 + 640) = v148;
      *(v3 + 656) = v80;
    }

    else
    {
      v7 = 0;
    }

    _Block_object_dispose(&v109, 8);
    _Block_object_dispose(&t2, 8);
  }

  if (((v7 == 0) & v105) == 1)
  {
    v81 = *(a1 + 64);
    v82 = *(a1 + 72);
    t1 = v159;
    v164 = v160;
    *&v165.a = v161;
    v165.c = v162;
    v7 = [v81 checkOutTileForIdentifier:&t1 layout:v82];
    v83 = *(a1 + 80);
    v167 = v155;
    v168 = v156;
    v169 = v157;
    v170 = v158;
    v165 = v153;
    v166 = v154;
    *&t1.a = rect1.origin;
    *&t1.c = rect1.size;
    *&t1.tx = v151;
    v164 = v152;
    [v83 prepareTile:v7 withGeometry:&t1 userData:v106];
    *(v3 + 696) = v7;
  }

  if (v7)
  {
    v47 = *(&v149 + 1);
    goto LABEL_27;
  }

LABEL_42:
  v61 = v147;
  *(v3 + 608) = v146;
  *(v3 + 624) = v61;
  v62 = v149;
  *(v3 + 640) = v148;
  *(v3 + 656) = v62;
  v63 = *&v144.c;
  *(v3 + 544) = *&v144.a;
  *(v3 + 560) = v63;
  v64 = v145;
  *(v3 + 576) = *&v144.tx;
  *(v3 + 592) = v64;
  v65 = rect2.size;
  *(v3 + 480) = rect2.origin;
  *(v3 + 496) = v65;
  v66 = v143;
  *(v3 + 512) = v142;
  *(v3 + 528) = v66;
  *(v3 + 673) = v105;
  if (!*(v3 + 704) && v7 && (*(v3 + 664) == v48 || !CGRectIntersectsRect(*(v3 + 480), *(a1 + 112)) || (*(v3 + 673) & 1) == 0))
  {
    v67 = *(v3 + 232);
    *&t1.tx = *(v3 + 216);
    v164 = v67;
    *&v165.a = *(v3 + 248);
    v165.c = *(v3 + 264);
    v68 = *(v3 + 200);
    *&t1.a = *(v3 + 184);
    *&t1.c = v68;
    [*(a1 + 64) checkInTile:v7 withIdentifier:{&t1, *&v91, *&v92, *&v93, *&v94, *&v95, *&v96, *&v97, *&v98}];
    *(v3 + 696) = 0;
  }
}

uint64_t __42__PXTilingController__updateTilesIfNeeded__block_invoke_2_54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 144);
  *(a3 + 40) = *(a3 + 128);
  *(a3 + 56) = v6;
  *(a3 + 72) = *(a3 + 160);
  v7 = *(a3 + 112);
  *(a3 + 8) = *(a3 + 96);
  *a3 = 0;
  *(a3 + 88) = *(a3 + 176);
  *(a3 + 24) = v7;
  *(a3 + 280) = 0;
  *(a3 + 672) = *(a3 + 673);
  v8 = *(a3 + 688);
  v9 = *(a3 + 680);
  if (v9 != v8)
  {

    *(a3 + 680) = v8;
  }

  result = [*(a1 + 32) setCurrentGeometry:a3 + 480 forTileStateAtIndex:a2];
  if (!*(a3 + 8) && !*(a3 + 696) || *(a1 + 80) == 1 && (result = CGRectIntersectsRect(*(a3 + 288), *(a1 + 48)), (result & 1) == 0) && !*(a3 + 696))
  {
    v11 = *(a3 + 688);
    if (v11)
    {

      *(a3 + 688) = 0;
    }

    v12 = *(a1 + 40);

    return [v12 addIndex:a2];
  }

  return result;
}

uint64_t __42__PXTilingController__updateTilesIfNeeded__block_invoke_9(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(a3 + 696) && !*(a3 + 96))
  {
    v7 = result;
    v8 = *(a3 + 232);
    *&t1.tx = *(a3 + 216);
    v51 = v8;
    v52 = *(a3 + 248);
    v53 = *(a3 + 264);
    v9 = *(a3 + 200);
    *&t1.a = *(a3 + 184);
    *&t1.c = v9;
    v10 = *(result + 104);
    *&t2.tx = *(result + 88);
    v47 = v10;
    v48 = *(result + 120);
    v49 = *(result + 136);
    v11 = *(result + 72);
    *&t2.a = *(result + 56);
    *&t2.c = v11;
    v12 = *&t1.a == *&t2.a;
    if (*&t1.a && *&t1.a == *&t2.a)
    {
      v13 = 1;
      do
      {
        v14 = *(&t1.a + v13);
        v15 = *(&t2.a + v13);
        v12 = v14 == v15;
        if (v13 >= *&t1.a)
        {
          break;
        }

        ++v13;
      }

      while (v14 == v15);
    }

    if (v12)
    {
      v16 = *(a3 + 512);
      v17 = *(a3 + 520);
      v18 = *(a3 + 528);
      v19 = *(a3 + 536);
      *&v45.a = *(a3 + 544);
      *&v45.c = *(a3 + 560);
      *&v45.tx = *(a3 + 576);
      v41 = *(a3 + 592);
      v43 = *(a3 + 600);
      v20 = *(a3 + 608);
      v39 = *(a3 + 616);
      v37 = *(a3 + 624);
      v34 = *(a3 + 640);
      v35 = *(a3 + 632);
      v32 = *(a3 + 656);
      v33 = *(a3 + 648);
      v21 = *(a3 + 664);
      v23 = *(result + 176);
      v22 = *(result + 184);
      v25 = *(result + 192);
      v24 = *(result + 200);
      *&v44.a = *(result + 208);
      *&v44.c = *(result + 224);
      *&v44.tx = *(result + 240);
      v40 = *(result + 256);
      v42 = *(result + 264);
      v26 = *(result + 272);
      v38 = *(result + 280);
      v36 = *(result + 288);
      v30 = *(result + 304);
      v31 = *(result + 296);
      v28 = *(result + 320);
      v29 = *(result + 312);
      v27 = *(result + 328);
      result = CGRectEqualToRect(*(a3 + 480), *(result + 144));
      if (result)
      {
        if (v16 == v23 && v17 == v22 && v18 == v25 && v19 == v24)
        {
          t1 = v45;
          t2 = v44;
          result = CGAffineTransformEqualToTransform(&t1, &t2);
          if (result)
          {
            if (v43 == v42 && v20 == v26 && v41 == v40 && v39 == v38 && v37 == v36)
            {
              v54.origin.y = v34;
              v54.origin.x = v35;
              v54.size.height = v32;
              v54.size.width = v33;
              v55.origin.y = v30;
              v55.origin.x = v31;
              v55.size.height = v28;
              v55.size.width = v29;
              result = CGRectEqualToRect(v54, v55);
              if ((result & 1) != 0 && v21 == v27)
              {
                result = *(a3 + 688);
                if (result == v7[4] || (result = [result isEqual:?], result))
                {
                  *(*(v7[5] + 8) + 24) = a2;
                  *(*(v7[6] + 8) + 24) = a3;
                  *a4 = 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void __42__PXTilingController__updateTilesIfNeeded__block_invoke_52(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTileAnimationCompletionWithIndex:*(a1 + 40)];
}

void __42__PXTilingController__updateTilesIfNeeded__block_invoke_7(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  v4 = *(a1 + 40);
  *(a2 + 200) = *(a1 + 56);
  *(a2 + 184) = v4;
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 104);
  *(a2 + 264) = *(a1 + 120);
  *(a2 + 248) = v7;
  *(a2 + 232) = v6;
  *(a2 + 216) = v5;
  memmove((a2 + 96), (a1 + 40), 0x58uLL);
  v8 = *(a2 + 144);
  *(a2 + 40) = *(a2 + 128);
  *(a2 + 56) = v8;
  *(a2 + 72) = *(a2 + 160);
  *(a2 + 88) = *(a2 + 176);
  v9 = *(a2 + 112);
  *(a2 + 8) = *(a2 + 96);
  *(a2 + 24) = v9;
  *(a2 + 272) = *(a1 + 128);
  *(a2 + 280) = 1;
  v10 = *(off_1E7722248 + 9);
  *(a2 + 416) = *(off_1E7722248 + 8);
  *(a2 + 432) = v10;
  v11 = *(off_1E7722248 + 11);
  *(a2 + 448) = *(off_1E7722248 + 10);
  *(a2 + 464) = v11;
  v12 = *(off_1E7722248 + 5);
  *(a2 + 352) = *(off_1E7722248 + 4);
  *(a2 + 368) = v12;
  v13 = *(off_1E7722248 + 7);
  *(a2 + 384) = *(off_1E7722248 + 6);
  *(a2 + 400) = v13;
  v14 = *(off_1E7722248 + 1);
  *(a2 + 288) = *off_1E7722248;
  *(a2 + 304) = v14;
  v15 = *(off_1E7722248 + 3);
  *(a2 + 320) = *(off_1E7722248 + 2);
  *(a2 + 336) = v15;
  *(a2 + 672) = 0;
  v16 = *(a1 + 136);
  v17 = *(a1 + 152);
  v18 = *(a1 + 184);
  *(a2 + 512) = *(a1 + 168);
  *(a2 + 528) = v18;
  *(a2 + 480) = v16;
  *(a2 + 496) = v17;
  v19 = *(a1 + 200);
  v20 = *(a1 + 216);
  v21 = *(a1 + 248);
  *(a2 + 576) = *(a1 + 232);
  *(a2 + 592) = v21;
  *(a2 + 544) = v19;
  *(a2 + 560) = v20;
  v22 = *(a1 + 264);
  v23 = *(a1 + 280);
  v24 = *(a1 + 312);
  *(a2 + 640) = *(a1 + 296);
  *(a2 + 656) = v24;
  *(a2 + 608) = v22;
  *(a2 + 624) = v23;
  *(a2 + 673) = 1;
  v25 = *(a1 + 32);
  v26 = *(a2 + 688);
  if (v26 != v25)
  {
    v27 = v25;

    *(a2 + 688) = v27;
    v25 = v27;
  }
}

double __42__PXTilingController__updateTilesIfNeeded__block_invoke_3(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  v4 = *(a1 + 32);
  *(a2 + 200) = *(a1 + 48);
  *(a2 + 184) = v4;
  v5 = *(a1 + 64);
  v6 = *(a1 + 80);
  v7 = *(a1 + 96);
  *(a2 + 264) = *(a1 + 112);
  *(a2 + 248) = v7;
  *(a2 + 232) = v6;
  *(a2 + 216) = v5;
  memmove((a2 + 96), (a1 + 32), 0x58uLL);
  *(a2 + 272) = *(a1 + 120);
  *(a2 + 280) = 1;
  v8 = *(off_1E7722248 + 3);
  *(a2 + 320) = *(off_1E7722248 + 2);
  *(a2 + 336) = v8;
  v9 = *(off_1E7722248 + 1);
  *(a2 + 288) = *off_1E7722248;
  *(a2 + 304) = v9;
  v10 = *(off_1E7722248 + 7);
  *(a2 + 384) = *(off_1E7722248 + 6);
  *(a2 + 400) = v10;
  v11 = *(off_1E7722248 + 5);
  *(a2 + 352) = *(off_1E7722248 + 4);
  *(a2 + 368) = v11;
  v12 = *(off_1E7722248 + 11);
  *(a2 + 448) = *(off_1E7722248 + 10);
  *(a2 + 464) = v12;
  v13 = *(off_1E7722248 + 9);
  *(a2 + 416) = *(off_1E7722248 + 8);
  *(a2 + 432) = v13;
  *(a2 + 672) = 0;
  result = 0.0;
  *(a2 + 680) = 0u;
  return result;
}

- (void)_invalidateTiles
{
  self->_needsUpdateFlags.tiles = 1;
  [(PXTilingController *)self _setNeedsUpdate];

  [(PXTilingController *)self _invalidatePreheating];
}

- (void)_invalidateCachesOutsideRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PXTilingController *)self _cachedRect];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v10 = CGRectIntersection(v9, v11);

  [(PXTilingController *)self _setCachedRect:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];
}

- (void)_invalidateAllCachedRects
{
  [(PXTilingController *)self _setCachedRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  [(PXTilingController *)self _pagedRect];

  [(PXTilingController *)self _invalidateRect:?];
}

- (void)_invalidateRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PXTilingController *)self _dirtyRect];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v10 = CGRectUnion(v9, v11);

  [(PXTilingController *)self _setDirtyRect:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];
}

- (void)_updatePagedRectIfNeeded
{
  if (self->_needsUpdateFlags.pagedRect)
  {
    v15 = v2;
    self->_needsUpdateFlags.pagedRect = 0;
    [(PXTilingController *)self _activeRect:v13];
    [(PXTilingController *)self _maxPreheatPadding];
    sub_1A524D1F4();
  }
}

- (void)_updateLayoutPreparationIfNeeded
{
  if (self->_needsUpdateFlags.layoutPreparation)
  {
    self->_needsUpdateFlags.layoutPreparation = 0;
    targetLayout = [(PXTilingController *)self targetLayout];
    [targetLayout prepareLayout];
  }
}

- (void)_updateLayoutVisibleRectIfNeeded
{
  if (self->_needsUpdateFlags.layoutVisibleRect)
  {
    self->_needsUpdateFlags.layoutVisibleRect = 0;
    targetLayout = [(PXTilingController *)self targetLayout];
    [(PXTilingController *)self _visibleRect];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    _coordinateSpaceConverter = [(PXTilingController *)self _coordinateSpaceConverter];
    [_coordinateSpaceConverter convertRect:-[PXTilingController _coordinateSpaceIdentifier](self fromCoordinateSpaceIdentifier:"_coordinateSpaceIdentifier") toCoordinateSpaceIdentifier:{objc_msgSend(targetLayout, "coordinateSpaceIdentifier"), v5, v7, v9, v11}];
    v14 = v13;
    v16 = v15;

    [targetLayout visibleOrigin];
    if (v16 != v18 || v14 != v17)
    {
      [targetLayout setVisibleOrigin:{v14, v16}];
    }

    [targetLayout visibleSize];
    PXSizeApproximatelyEqualToSize();
  }
}

- (void)_updateLayoutPositionIfNeeded
{
  if (self->_needsUpdateFlags.layoutPosition)
  {
    v17 = v15;
    v18 = v14;
    v19 = v13;
    v20 = v12;
    v21 = v9;
    v22 = v8;
    v23 = v7;
    v24 = v6;
    v25 = v5;
    v26 = v4;
    v27 = v3;
    v28 = v2;
    v29 = v10;
    v30 = v11;
    self->_needsUpdateFlags.layoutPosition = 0;
    [(PXTilingController *)self targetLayout];
    [objc_claimAutoreleasedReturnValue() shouldFlipHorizontally];
    [(PXTilingController *)self layoutOrigin];
    PXPointIsNull();
  }
}

__n128 __51__PXTilingController__updateLayoutPositionIfNeeded__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8))
  {
    *(a3 + 280) = 1;
    v3 = *(off_1E7722248 + 9);
    *(a3 + 608) = *(off_1E7722248 + 8);
    *(a3 + 624) = v3;
    v4 = *(off_1E7722248 + 11);
    *(a3 + 640) = *(off_1E7722248 + 10);
    *(a3 + 656) = v4;
    v5 = *(off_1E7722248 + 5);
    *(a3 + 544) = *(off_1E7722248 + 4);
    *(a3 + 560) = v5;
    v6 = *(off_1E7722248 + 7);
    *(a3 + 576) = *(off_1E7722248 + 6);
    *(a3 + 592) = v6;
    v7 = *(off_1E7722248 + 1);
    *(a3 + 480) = *off_1E7722248;
    *(a3 + 496) = v7;
    result = *(off_1E7722248 + 2);
    v9 = *(off_1E7722248 + 3);
    *(a3 + 512) = result;
    *(a3 + 528) = v9;
  }

  return result;
}

- (void)_updateLayoutPreferredVisibleOriginIfNeeded
{
  if (!self->_needsUpdateFlags.layoutPreferredVisibleOrigin)
  {
    return;
  }

  self->_needsUpdateFlags.layoutPreferredVisibleOrigin = 0;
  targetLayout = [(PXTilingController *)self targetLayout];
  [targetLayout scrollBounds];
  v5 = v4;
  v7 = v6;
  _layoutWithInitializedVisibleOrigin = [(PXTilingController *)self _layoutWithInitializedVisibleOrigin];

  if (targetLayout == _layoutWithInitializedVisibleOrigin)
  {
    _coordinateSpace = [(PXTilingController *)self _coordinateSpace];
    coordinateSpace = [targetLayout coordinateSpace];
    [coordinateSpace setParentSpace:_coordinateSpace];
    [(PXTilingController *)self _visibleRect];
    v14 = v13;
    v16 = v15;
    _coordinateSpaceConverter = [(PXTilingController *)self _coordinateSpaceConverter];
    [_coordinateSpaceConverter convertPoint:objc_msgSend(_coordinateSpace fromCoordinateSpaceIdentifier:"identifier") toCoordinateSpaceIdentifier:{objc_msgSend(targetLayout, "coordinateSpaceIdentifier"), v14, v16}];
    v5 = v18;
    v7 = v19;

    if (self->_scrollDelegateFlags.respondsToTargetVisibleOriginForLayoutProposedVisibleOrigin)
    {
      scrollDelegate = [(PXTilingController *)self scrollDelegate];
      [scrollDelegate tilingController:self targetVisibleOriginForLayout:targetLayout proposedVisibleOrigin:{v5, v7}];
      v5 = v21;
      v7 = v22;
    }

    goto LABEL_9;
  }

  [(PXTilingController *)self _setLayoutWithInitializedVisibleOrigin:targetLayout];
  if (self->_scrollDelegateFlags.respondsToInitialVisibleOriginForLayout)
  {
    _coordinateSpace = [(PXTilingController *)self scrollDelegate];
    [_coordinateSpace tilingController:self initialVisibleOriginForLayout:targetLayout];
    v5 = v10;
    v7 = v11;
LABEL_9:
  }

  [(PXTilingController *)self _setUpdatedPreferredVisibleOrigin:v5, v7];
}

- (void)_invalidateLayoutPreferredVisibleOrigin
{
  self->_needsUpdateFlags.layoutPreferredVisibleOrigin = 1;
  [(PXTilingController *)self _setNeedsUpdate];
  [(PXTilingController *)self _setLayoutDesiredOrigin:*off_1E77221E8, *(off_1E77221E8 + 1)];
  observer = [(PXTilingController *)self observer];
  [observer tilingController:self invalidatedWithContext:2];
}

- (void)_updateLayoutMetricsIfNeeded
{
  if (self->_needsUpdateFlags.layoutMetrics)
  {
    self->_needsUpdateFlags.layoutMetrics = 0;
    targetLayout = [(PXTilingController *)self targetLayout];
    [(PXTilingController *)self _referenceSize];
    v4 = v3;
    v6 = v5;
    [(PXTilingController *)self _visibleRect];
    v8 = v7;
    v10 = v9;
    [(PXTilingController *)self _contentInset];
    [targetLayout referenceSize];
    if (v6 != v12 || v4 != v11)
    {
      [targetLayout setReferenceSize:{v4, v6}];
    }

    [targetLayout visibleSize];
    if (v8 != v15 || v10 != v14)
    {
      [targetLayout setVisibleSize:{v8, v10}];
    }

    [targetLayout contentInset];
    PXEdgeInsetsEqualToEdgeInsets();
  }
}

- (void)_updateScrollControllerMetricsIfNeeded
{
  if (self->_needsUpdateFlags.scrollControllerMetrics)
  {
    self->_needsUpdateFlags.scrollControllerMetrics = 0;
    scrollController = [(PXTilingController *)self scrollController];
    [scrollController activeRect];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [scrollController visibleRect];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(PXTilingController *)self _setActiveRect:v5, v7, v9, v11];
    [(PXTilingController *)self _setVisibleRect:v13, v15, v17, v19];
  }
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingUpdates && !self->_hasScheduledUpdate)
  {
    self->_hasScheduledUpdate = 1;
    observer = [(PXTilingController *)self observer];
    [observer setTilingControllerNeedsUpdate:self];
  }
}

- (void)endUpdate
{
  [(PXTilingController *)self _updateTilesIfNeeded];
  [(PXTilingController *)self _updatePreheatingIfNeeded];
  [(PXTilingController *)self _discardCurrentChange];
  v3 = *off_1E77221E8;
  v4 = *(off_1E77221E8 + 1);
  [(PXTilingController *)self _setUpdatedPreferredVisibleOrigin:*off_1E77221E8, v4];
  [(PXTilingController *)self _setLayoutDesiredOrigin:v3, v4];
  targetLayout = [(PXTilingController *)self targetLayout];
  [(PXTilingController *)self _setCurrentLayout:targetLayout];

  [(PXTilingController *)self _updateDebugDelegateIfNeeded];
  self->_isPerformingUpdates = 0;
}

- (void)updateLayout
{
  [(PXTilingController *)self _updateLayoutPositionIfNeeded];
  [(PXTilingController *)self _updateLayoutVisibleRectIfNeeded];

  [(PXTilingController *)self _updateLayoutPreparationIfNeeded];
}

- (void)updateMetrics
{
  [(PXTilingController *)self _updateScrollControllerMetricsIfNeeded];
  [(PXTilingController *)self _updateMaxPreheatPaddingIfNeeded];
  [(PXTilingController *)self _updatePagedRectIfNeeded];
  [(PXTilingController *)self _updateLayoutMetricsIfNeeded];
  self->_hasInitializedLayout = 1;
  [(PXTilingController *)self _updateLayoutPreparationIfNeeded];
  [(PXTilingController *)self _updateLayoutPreferredVisibleOriginIfNeeded];

  [(PXTilingController *)self _updateScrollInfoIfNeeded];
}

- (void)beginUpdate
{
  _currentChangeIfExists = [(PXTilingController *)self _currentChangeIfExists];
  if (_currentChangeIfExists && self->_transitionDelegateFlags.respondsToPrepareForChange)
  {
    v5 = _currentChangeIfExists;
    transitionDelegate = [(PXTilingController *)self transitionDelegate];
    [transitionDelegate tilingController:self prepareForChange:v5];

    _currentChangeIfExists = v5;
  }

  *&self->_isPerformingUpdates = 1;
}

- (void)_discardCurrentChange
{
  currentChange = self->__currentChange;
  self->__currentChange = 0;
}

- (PXTilingChange)_currentChange
{
  currentChange = self->__currentChange;
  if (!currentChange)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXTilingController.m" lineNumber:709 description:@"invalid access to current change"];

    currentChange = self->__currentChange;
  }

  return currentChange;
}

- (void)_ensureCurrentChange
{
  currentChange = self->__currentChange;
  if (!currentChange)
  {
    v4 = objc_alloc_init(PXTilingChange);
    v5 = self->__currentChange;
    self->__currentChange = v4;

    currentChange = self->__currentChange;
  }

  targetLayout = [(PXTilingController *)self targetLayout];
  [(PXTilingChange *)currentChange recordLayout:targetLayout];

  v7 = self->__currentChange;
  [(PXTilingController *)self _referenceSize];
  [(PXTilingChange *)v7 recordReferenceSize:?];
  v8 = self->__currentChange;
  [(PXTilingController *)self _contentInset];
  [(PXTilingChange *)v8 recordContentInset:?];
  v9 = self->__currentChange;
  compositionInvalidationContexts = [(PXTilingController *)self compositionInvalidationContexts];
  [(PXTilingChange *)v9 recordCompositionInvalidationContexts:compositionInvalidationContexts];
}

- (id)convertScrollInfoFromLayout:(id)layout
{
  v4 = [layout copy];
  v5 = v4;
  if (v4)
  {
    [v4 pagingOrigin];
    [(PXTilingController *)self convertPointFromLayout:?];
    v7 = v6;
    v9 = v8;
    targetLayout = [(PXTilingController *)self targetLayout];
    shouldFlipHorizontally = [targetLayout shouldFlipHorizontally];

    if (shouldFlipHorizontally)
    {
      [v5 interpageSpacing];
      v7 = v7 + v12;
    }

    [v5 setPagingOrigin:{v7, v9}];
  }

  return v5;
}

- (CGRect)convertRectFromLayout:(CGRect)layout
{
  height = layout.size.height;
  width = layout.size.width;
  y = layout.origin.y;
  x = layout.origin.x;
  _coordinateSpaceConverter = [(PXTilingController *)self _coordinateSpaceConverter];
  targetLayout = [(PXTilingController *)self targetLayout];
  [_coordinateSpaceConverter convertRect:objc_msgSend(targetLayout fromCoordinateSpaceIdentifier:"coordinateSpaceIdentifier") toCoordinateSpaceIdentifier:{-[PXTilingController _coordinateSpaceIdentifier](self, "_coordinateSpaceIdentifier"), x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGPoint)convertPointFromLayout:(CGPoint)layout
{
  y = layout.y;
  x = layout.x;
  _coordinateSpaceConverter = [(PXTilingController *)self _coordinateSpaceConverter];
  targetLayout = [(PXTilingController *)self targetLayout];
  [_coordinateSpaceConverter convertPoint:objc_msgSend(targetLayout fromCoordinateSpaceIdentifier:"coordinateSpaceIdentifier") toCoordinateSpaceIdentifier:{-[PXTilingController _coordinateSpaceIdentifier](self, "_coordinateSpaceIdentifier"), x, y}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)setLayoutOrigin:(CGPoint)origin
{
  [(PXTilingController *)self _setLayoutDesiredOrigin:origin.x, origin.y];

  [(PXTilingController *)self _invalidateLayoutPosition];
}

- (PXScrollInfo)scrollInfo
{
  _scrollInfo = [(PXTilingController *)self _scrollInfo];
  v3 = [_scrollInfo copy];

  return v3;
}

- (CGPoint)layoutPreferredOrigin
{
  if (!self->_isPerformingUpdates)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXTilingController.m" lineNumber:616 description:@"property not valid unless within updates"];
  }

  [(PXTilingController *)self _updatedPreferredVisibleOrigin];
  PXPointIsNull();
}

double __43__PXTilingController_layoutPreferredOrigin__block_invoke(uint64_t a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  if ([*(a1 + 32) shouldFlipHorizontally])
  {
    v13.origin.x = a4;
    v13.origin.y = a5;
    v13.size.width = a6;
    v13.size.height = a7;
    return -(a2 - CGRectGetMidX(v13) * 2.0);
  }

  return a2;
}

- (CGRect)layoutScrollBounds
{
  targetLayout = [(PXTilingController *)self targetLayout];
  [targetLayout scrollBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)layoutContentBounds
{
  targetLayout = [(PXTilingController *)self targetLayout];
  [targetLayout contentBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setReferenceSize:(CGSize)size contentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  [(PXTilingController *)self _setReferenceSize:size.width, size.height];

  [(PXTilingController *)self _setContentInset:top, left, bottom, right];
}

- (void)_markRectAsCached:(CGRect)cached
{
  height = cached.size.height;
  width = cached.size.width;
  y = cached.origin.y;
  x = cached.origin.x;
  if (CGRectIsEmpty(cached))
  {
    return;
  }

  [(PXTilingController *)self _cachedRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if ([(PXTilingController *)self shouldAggressivelyEvictTileCaches])
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    goto LABEL_17;
  }

  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  if (CGRectIsEmpty(v21))
  {
    goto LABEL_17;
  }

  if (x == v9 && width == v13)
  {
    v22.origin.x = v9;
    v22.origin.y = v11;
    v22.size.width = v13;
    v22.size.height = v15;
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    if (CGRectIntersectsRect(v22, v34))
    {
      goto LABEL_16;
    }

    v23.origin.x = v9;
    v23.origin.y = v11;
    v23.size.width = v13;
    v23.size.height = v15;
    MaxY = CGRectGetMaxY(v23);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    if (MaxY == CGRectGetMinY(v24))
    {
      goto LABEL_16;
    }

    v25.origin.x = v9;
    v25.origin.y = v11;
    v25.size.width = v13;
    v25.size.height = v15;
    MinY = CGRectGetMinY(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v16 = CGRectGetMaxY(v26);
LABEL_15:
    if (MinY != v16)
    {
      goto LABEL_17;
    }

LABEL_16:
    v32.origin.x = v9;
    v32.origin.y = v11;
    v32.size.width = v13;
    v32.size.height = v15;
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v33 = CGRectUnion(v32, v36);
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
    goto LABEL_17;
  }

  if (y == v11 && height == v15)
  {
    v27.origin.x = v9;
    v27.origin.y = v11;
    v27.size.width = v13;
    v27.size.height = v15;
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    if (CGRectIntersectsRect(v27, v35))
    {
      goto LABEL_16;
    }

    v28.origin.x = v9;
    v28.origin.y = v11;
    v28.size.width = v13;
    v28.size.height = v15;
    MaxX = CGRectGetMaxX(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    if (MaxX == CGRectGetMinX(v29))
    {
      goto LABEL_16;
    }

    v30.origin.x = v9;
    v30.origin.y = v11;
    v30.size.width = v13;
    v30.size.height = v15;
    MinY = CGRectGetMinX(v30);
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v16 = CGRectGetMaxX(v31);
    goto LABEL_15;
  }

LABEL_17:

  [(PXTilingController *)self _setCachedRect:x, y, width, height];
}

- (void)_fillBuffersWithTileStatesAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  -[PXTilingController _prepareBufferForCount:](self, "_prepareBufferForCount:", [indexesCopy count]);
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  _tileStates = [(PXTilingController *)self _tileStates];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PXTilingController__fillBuffersWithTileStatesAtIndexes___block_invoke;
  v6[3] = &unk_1E7737CB0;
  v6[4] = self;
  v6[5] = v7;
  [_tileStates enumerateStatesAtIndexes:indexesCopy usingBlock:v6];

  _Block_object_dispose(v7, 8);
}

__n128 __58__PXTilingController__fillBuffersWithTileStatesAtIndexes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 32) + 88 * *(*(*(a1 + 40) + 8) + 24);
  v5 = *(a3 + 144);
  v4 = *(a3 + 160);
  v6 = *(a3 + 128);
  *(v3 + 80) = *(a3 + 176);
  *(v3 + 48) = v5;
  *(v3 + 64) = v4;
  *(v3 + 32) = v6;
  v7 = *(a3 + 112);
  *v3 = *(a3 + 96);
  *(v3 + 16) = v7;
  v8 = *(*(a1 + 32) + 40) + 192 * *(*(*(a1 + 40) + 8) + 24);
  v9 = *(a3 + 592);
  v11 = *(a3 + 544);
  v10 = *(a3 + 560);
  *(v8 + 96) = *(a3 + 576);
  *(v8 + 112) = v9;
  *(v8 + 64) = v11;
  *(v8 + 80) = v10;
  v12 = *(a3 + 656);
  v14 = *(a3 + 608);
  v13 = *(a3 + 624);
  *(v8 + 160) = *(a3 + 640);
  *(v8 + 176) = v12;
  *(v8 + 128) = v14;
  *(v8 + 144) = v13;
  result = *(a3 + 480);
  v16 = *(a3 + 496);
  v17 = *(a3 + 528);
  *(v8 + 32) = *(a3 + 512);
  *(v8 + 48) = v17;
  *v8 = result;
  *(v8 + 16) = v16;
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (void)_prepareBufferForCount:(unint64_t)count
{
  if (self->_bufferCount < count)
  {
    self->_identifierBuffer = malloc_type_realloc(self->_identifierBuffer, 88 * count, 0x1000040931E79F6uLL);
    self->_geometryBuffer = malloc_type_realloc(self->_geometryBuffer, 192 * count, 0x108004042DB75DEuLL);
    self->_bufferCount = count;
  }
}

- (id)_preheatRecordForPreheatHandler:(id)handler context:(void *)context createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  _preheatRecords = [(PXTilingController *)self _preheatRecords];
  v10 = [_preheatRecords countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v19 = neededCopy;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(_preheatRecords);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        preheatHandler = [v13 preheatHandler];
        v15 = preheatHandler;
        if (preheatHandler == handlerCopy)
        {
          context = [v13 context];

          if (context == context)
          {
            v10 = v13;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v10 = [_preheatRecords countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_13:
    neededCopy = v19;
  }

  if (!v10 && neededCopy)
  {
    v10 = [[PXTilingControllerPreheatRecord alloc] initWithPreheatHandler:handlerCopy context:context];
    _preheatRecords2 = [(PXTilingController *)self _preheatRecords];
    [_preheatRecords2 addObject:v10];
  }

  return v10;
}

- (void)_handleTileAnimationCompletionWithIndex:(unint64_t)index
{
  _tileStates = [(PXTilingController *)self _tileStates];
  v6 = [_tileStates stateAtIndex:index];

  v7 = *(v6 + 704) - 1;
  *(v6 + 704) = v7;
  if (!v7 && !self->_isPerformingUpdates)
  {

    [(PXTilingController *)self _invalidateTiles];
  }
}

- (id)_indexesOfVisibleTilesInRect:(CGRect)rect withOptions:(id)options
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = MEMORY[0x1E696AD50];
  optionsCopy = options;
  indexSet = [v9 indexSet];
  tileGroups = [optionsCopy tileGroups];

  _tileStates = [(PXTilingController *)self _tileStates];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__PXTilingController__indexesOfVisibleTilesInRect_withOptions___block_invoke;
  v19[3] = &unk_1E7737C88;
  v20 = tileGroups;
  v14 = indexSet;
  v21 = v14;
  v15 = tileGroups;
  [_tileStates enumerateStatesInRect:v19 usingBlock:{x, y, width, height}];
  v16 = v21;
  v17 = v14;

  return v14;
}

void *__63__PXTilingController__indexesOfVisibleTilesInRect_withOptions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (!result || (result = [result containsIndex:*(a3 + 272)], result))
  {
    if (*(a3 + 672) == 1 && *(a3 + 8))
    {
      v7 = *(a1 + 40);

      return [v7 addIndex:a2];
    }
  }

  return result;
}

- (void)_setTargetLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_targetLayout != layoutCopy)
  {
    [(PXTilingController *)self _ensureCurrentChange];
    [(PXTilingLayout *)self->_targetLayout setObserver:0];
    objc_storeStrong(&self->_targetLayout, layout);
    [(PXTilingLayout *)self->_targetLayout setObserver:self];
    _currentChange = [(PXTilingController *)self _currentChange];
    v7 = [[PXTilingChangeEvent alloc] initWithChangeToLayout:layoutCopy];
    [_currentChange addEvent:v7];

    _tileStates = [(PXTilingController *)self _tileStates];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__PXTilingController__setTargetLayout___block_invoke;
    v10[3] = &unk_1E7737C60;
    v11 = _tileStates;
    v9 = _tileStates;
    [v9 enumerateStatesUsingBlock:v10];
    [(PXTilingController *)self _invalidateAllCachedRects];
    [(PXTilingController *)self _invalidateLayoutMetrics];
    [(PXTilingController *)self _invalidateLayoutPreferredVisibleOrigin];
    [(PXTilingController *)self _invalidateLayoutPosition];
    [(PXTilingController *)self _invalidateLayoutVisibleRect];
    [(PXTilingController *)self _invalidateTiles];
    [(PXTilingController *)self _invalidateScrollInfo];
  }
}

__n128 __39__PXTilingController__setTargetLayout___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8))
  {
    *a3 = 1;
    v4 = *(a1 + 32);
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    [v4 setTargetIdentifier:v12 forTileStateAtIndex:a2];
    *(a3 + 280) = 1;
    v5 = *(off_1E7722248 + 9);
    *(a3 + 608) = *(off_1E7722248 + 8);
    *(a3 + 624) = v5;
    v6 = *(off_1E7722248 + 11);
    *(a3 + 640) = *(off_1E7722248 + 10);
    *(a3 + 656) = v6;
    v7 = *(off_1E7722248 + 5);
    *(a3 + 544) = *(off_1E7722248 + 4);
    *(a3 + 560) = v7;
    v8 = *(off_1E7722248 + 7);
    *(a3 + 576) = *(off_1E7722248 + 6);
    *(a3 + 592) = v8;
    v9 = *(off_1E7722248 + 1);
    *(a3 + 480) = *off_1E7722248;
    *(a3 + 496) = v9;
    result = *(off_1E7722248 + 2);
    v11 = *(off_1E7722248 + 3);
    *(a3 + 512) = result;
    *(a3 + 528) = v11;
  }

  return result;
}

- (void)_setDirtyRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectEqualToRect(rect, self->__dirtyRect))
  {
    self->__dirtyRect.origin.x = x;
    self->__dirtyRect.origin.y = y;
    self->__dirtyRect.size.width = width;
    self->__dirtyRect.size.height = height;
    v9.origin.x = x;
    v9.origin.y = y;
    v9.size.width = width;
    v9.size.height = height;
    if (!CGRectIsEmpty(v9))
    {

      [(PXTilingController *)self _invalidateTiles];
    }
  }
}

- (void)_setPagedRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectEqualToRect(rect, self->__pagedRect))
  {
    self->__pagedRect.origin.x = x;
    self->__pagedRect.origin.y = y;
    self->__pagedRect.size.width = width;
    self->__pagedRect.size.height = height;
    PXRectDiff();
  }
}

uint64_t __36__PXTilingController__setPagedRect___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    return [*(result + 32) _invalidateTiles];
  }

  if (a2 == -1)
  {
    return [*(result + 32) _invalidateRect:?];
  }

  return result;
}

- (void)_setVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectEqualToRect(rect, self->__visibleRect))
  {
    v8 = self->__visibleRect.size.width;
    v9 = self->__visibleRect.size.height;
    self->__visibleRect.origin.x = x;
    self->__visibleRect.origin.y = y;
    self->__visibleRect.size.width = width;
    self->__visibleRect.size.height = height;
    if (width != v8 || height != v9)
    {
      [(PXTilingController *)self _invalidateLayoutMetrics];
    }

    [(PXTilingController *)self _invalidateLayoutVisibleRect];
  }
}

- (void)_setActiveRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectEqualToRect(rect, self->__activeRect))
  {
    self->__activeRect.origin.x = x;
    self->__activeRect.origin.y = y;
    self->__activeRect.size.width = width;
    self->__activeRect.size.height = height;
    [(PXTilingController *)self _invalidatePagedRect];

    [(PXTilingController *)self _invalidateTiles];
  }
}

- (void)_setReferenceSize:(CGSize)size
{
  if (size.width != self->__referenceSize.width || size.height != self->__referenceSize.height)
  {
    height = size.height;
    width = size.width;
    [(PXTilingController *)self _ensureCurrentChange];
    self->__referenceSize.width = width;
    self->__referenceSize.height = height;
    PXSizeIsNull();
  }
}

- (id)debugQuickLookObject
{
  debugInfo = [(PXTilingController *)self debugInfo];
  debugQuickLookObject = [debugInfo debugQuickLookObject];

  return debugQuickLookObject;
}

- (PXTilingControllerDebugInfo)debugInfo
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(PXTilingControllerDebugInfo);
  [(PXTilingController *)self _activeRect];
  [(PXTilingControllerDebugInfo *)v3 setActiveRect:?];
  [(PXTilingController *)self _visibleRect];
  [(PXTilingControllerDebugInfo *)v3 setVisibleRect:?];
  [(PXTilingController *)self _pagedRect];
  [(PXTilingControllerDebugInfo *)v3 setPagedRect:?];
  [(PXTilingController *)self _cachedRect];
  [(PXTilingControllerDebugInfo *)v3 setCachedRect:?];
  [(PXTilingController *)self layoutContentBounds];
  [(PXTilingControllerDebugInfo *)v3 setContentBounds:?];
  array = [MEMORY[0x1E695DF70] array];
  memset(v50, 0, sizeof(v50));
  _preheatRecords = [(PXTilingController *)self _preheatRecords];
  if ([_preheatRecords countByEnumeratingWithState:v50 objects:v52 count:16])
  {
    v6 = **(&v50[0] + 1);
    [(PXTilingController *)self _activeRect];
    [v6 padding];
    sub_1A524D1F4();
  }

  [(PXTilingControllerDebugInfo *)v3 setPreheatRects:array];
  array2 = [MEMORY[0x1E695DF70] array];
  _tileStates = [(PXTilingController *)self _tileStates];
  [(PXTilingController *)self _pagedRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __31__PXTilingController_debugInfo__block_invoke;
  v48[3] = &unk_1E7737C60;
  v17 = array2;
  v49 = v17;
  [_tileStates enumerateStatesInRect:v48 usingBlock:{v10, v12, v14, v16}];

  v39 = v17;
  [(PXTilingControllerDebugInfo *)v3 setPagedItems:v17];
  array3 = [MEMORY[0x1E695DF70] array];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  _preheatRecords2 = [(PXTilingController *)self _preheatRecords];
  v21 = [_preheatRecords2 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v45;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v45 != v23)
        {
          objc_enumerationMutation(_preheatRecords2);
        }

        preheatedTileIndexes = [*(*(&v44 + 1) + 8 * i) preheatedTileIndexes];
        [indexSet addIndexes:preheatedTileIndexes];
      }

      v22 = [_preheatRecords2 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v22);
  }

  _tileStates2 = [(PXTilingController *)self _tileStates];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __31__PXTilingController_debugInfo__block_invoke_2;
  v42[3] = &unk_1E7737C60;
  v43 = array3;
  v27 = array3;
  [_tileStates2 enumerateStatesAtIndexes:indexSet usingBlock:v42];

  [(PXTilingControllerDebugInfo *)v3 setPreheatedItems:v27];
  array4 = [MEMORY[0x1E695DF70] array];
  [(PXTilingController *)self _activeRect];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __31__PXTilingController_debugInfo__block_invoke_3;
  v40[3] = &unk_1E773D130;
  v41 = array4;
  v37 = array4;
  [(PXTilingController *)self enumerateTilesInRect:0 withOptions:v40 usingBlock:v30, v32, v34, v36];
  [(PXTilingControllerDebugInfo *)v3 setActiveItems:v37];

  return v3;
}

void __31__PXTilingController_debugInfo__block_invoke(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696B098] valueWithCGRect:{a3[36], a3[37], a3[38], a3[39]}];
  [v3 addObject:v4];
}

void __31__PXTilingController_debugInfo__block_invoke_2(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696B098] valueWithCGRect:{a3[36], a3[37], a3[38], a3[39]}];
  [v3 addObject:v4];
}

void __31__PXTilingController_debugInfo__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696B098] valueWithCGRect:{*a4, a4[1], a4[2], a4[3]}];
  [v4 addObject:v5];
}

- (void)unregisterPreheatHandler:(id)handler context:(void *)context
{
  v5 = [(PXTilingController *)self _preheatRecordForPreheatHandler:handler context:context createIfNeeded:0];
  if (v5)
  {
    v7 = v5;
    _preheatRecords = [(PXTilingController *)self _preheatRecords];
    [_preheatRecords removeObject:v7];

    [(PXTilingController *)self _invalidateMaxPreheatPadding];
    v5 = v7;
  }
}

- (void)registerPreheatHandler:(id)handler withPadding:(UIEdgeInsets)padding tileGroup:(unint64_t)group context:(void *)context
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  v12 = [(PXTilingController *)self _preheatRecordForPreheatHandler:handler context:context createIfNeeded:1];
  [v12 setPadding:{top, left, bottom, right}];
  [v12 setTileGroup:group];
  [(PXTilingController *)self _invalidateMaxPreheatPadding];
  [(PXTilingController *)self _invalidatePreheating];
}

uint64_t __61__PXTilingController_hitTestTileAtPoint_padding_passingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  v10 = *(a2 + 48);
  v27[2] = *(a2 + 32);
  v27[3] = v10;
  v27[4] = *(a2 + 64);
  v28 = *(a2 + 80);
  v11 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v11;
  v12 = a4[9];
  v26[8] = a4[8];
  v26[9] = v12;
  v13 = a4[11];
  v26[10] = a4[10];
  v26[11] = v13;
  v14 = a4[5];
  v26[4] = a4[4];
  v26[5] = v14;
  v15 = a4[7];
  v26[6] = a4[6];
  v26[7] = v15;
  v16 = a4[1];
  v26[0] = *a4;
  v26[1] = v16;
  v17 = a4[3];
  v26[2] = a4[2];
  v26[3] = v17;
  v18 = a5[9];
  v25[8] = a5[8];
  v25[9] = v18;
  v19 = a5[11];
  v25[10] = a5[10];
  v25[11] = v19;
  v20 = a5[5];
  v25[4] = a5[4];
  v25[5] = v20;
  v21 = a5[7];
  v25[6] = a5[6];
  v25[7] = v21;
  v22 = a5[1];
  v25[0] = *a5;
  v25[1] = v22;
  v23 = a5[3];
  v25[2] = a5[2];
  v25[3] = v23;
  result = v9(v8, v27, a3, v26, v25, a6, a7, a8);
  if (result)
  {
    PXRectWithCenterAndSize();
  }

  return result;
}

- (void)enumerateTilesInRect:(CGRect)rect withOptions:(id)options usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  height = [(PXTilingController *)self _indexesOfVisibleTilesInRect:options withOptions:x, y, width, height];
  _tileStates = [(PXTilingController *)self _tileStates];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__PXTilingController_enumerateTilesInRect_withOptions_usingBlock___block_invoke;
  v15[3] = &unk_1E7737C10;
  v16 = blockCopy;
  v14 = blockCopy;
  [_tileStates enumerateStatesAtIndexes:height usingBlock:v15];
}

uint64_t __66__PXTilingController_enumerateTilesInRect_withOptions_usingBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 696);
  if (v5)
  {
    v6 = *(result + 32);
    v7 = *(a3 + 272);
    v8 = *(a3 + 680);
    v9 = *(v6 + 16);
    v10 = *(a3 + 56);
    v26[2] = *(a3 + 40);
    v26[3] = v10;
    v26[4] = *(a3 + 72);
    v27 = *(a3 + 88);
    v11 = *(a3 + 24);
    v26[0] = *(a3 + 8);
    v26[1] = v11;
    v12 = *(a3 + 432);
    v25[8] = *(a3 + 416);
    v25[9] = v12;
    v13 = *(a3 + 464);
    v25[10] = *(a3 + 448);
    v25[11] = v13;
    v14 = *(a3 + 368);
    v25[4] = *(a3 + 352);
    v25[5] = v14;
    v15 = *(a3 + 400);
    v25[6] = *(a3 + 384);
    v25[7] = v15;
    v16 = *(a3 + 304);
    v25[0] = *(a3 + 288);
    v25[1] = v16;
    v17 = *(a3 + 336);
    v25[2] = *(a3 + 320);
    v25[3] = v17;
    v18 = *(a3 + 624);
    v24[8] = *(a3 + 608);
    v24[9] = v18;
    v19 = *(a3 + 656);
    v24[10] = *(a3 + 640);
    v24[11] = v19;
    v20 = *(a3 + 560);
    v24[4] = *(a3 + 544);
    v24[5] = v20;
    v21 = *(a3 + 592);
    v24[6] = *(a3 + 576);
    v24[7] = v21;
    v22 = *(a3 + 496);
    v24[0] = *(a3 + 480);
    v24[1] = v22;
    v23 = *(a3 + 528);
    v24[2] = *(a3 + 512);
    v24[3] = v23;
    return v9(v6, v26, v5, v25, v24, v7, v8, a4);
  }

  return result;
}

- (BOOL)getTile:(void *)tile geometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileWithIdentifier:(PXTileIdentifier *)identifier
{
  _tileStates = [(PXTilingController *)self _tileStates];
  v14 = *&identifier->index[5];
  v47 = *&identifier->index[3];
  v48 = v14;
  v49 = *&identifier->index[7];
  *&v50 = identifier->index[9];
  v15 = *&identifier->index[1];
  v45 = *&identifier->length;
  v46 = v15;
  v16 = [_tileStates indexOfStateWithTargetIdentifier:&v45];

  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
LABEL_6:
    v30 = [(PXTilingController *)self _tileStates:v45];
    v31 = [v30 stateAtIndex:v16];

    v20 = *(v31 + 696);
    v32 = *(v31 + 432);
    v53 = *(v31 + 416);
    v54 = v32;
    v33 = *(v31 + 464);
    v55 = *(v31 + 448);
    v56 = v33;
    v34 = *(v31 + 368);
    v49 = *(v31 + 352);
    v50 = v34;
    v35 = *(v31 + 400);
    v51 = *(v31 + 384);
    v52 = v35;
    v36 = *(v31 + 304);
    v45 = *(v31 + 288);
    v46 = v36;
    v37 = *(v31 + 336);
    v47 = *(v31 + 320);
    v48 = v37;
    v21 = *(v31 + 272);
    v22 = *(v31 + 680);
    v23 = 1;
    if (!tile)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  _tileStates2 = [(PXTilingController *)self _tileStates];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __76__PXTilingController_getTile_geometry_group_userData_forTileWithIdentifier___block_invoke;
  v57[3] = &__block_descriptor_120_e414_B24__0__PXProtectedTileState_B_PXTileIdentifier_Q_10Q___PXTileIdentifier_Q_10Q___PXTileIdentifier_Q_10Q__QB_PXTileGeometry__CGRect__CGPoint_dd__CGSize_dd___CGPoint_dd__CGSize_dd__CGAffineTransform_dddddd_ddB_CGSize_dd__CGRect__CGPoint_dd__CGSize_dd___v__PXTileGeometry__CGRect__CGPoint_dd__CGSize_dd___CGPoint_dd__CGSize_dd__CGAffineTransform_dddddd_ddB_CGSize_dd__CGRect__CGPoint_dd__CGSize_dd___v_BB_v_v_vQ_8_B16l;
  v18 = *&identifier->index[5];
  v60 = *&identifier->index[3];
  v61 = v18;
  v62 = *&identifier->index[7];
  v63 = identifier->index[9];
  v19 = *&identifier->index[1];
  v58 = *&identifier->length;
  v59 = v19;
  v16 = [_tileStates2 indexOfFirstStatePassingTest:v57];

  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_6;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = *(off_1E7722248 + 9);
  v53 = *(off_1E7722248 + 8);
  v54 = v24;
  v25 = *(off_1E7722248 + 11);
  v55 = *(off_1E7722248 + 10);
  v56 = v25;
  v26 = *(off_1E7722248 + 5);
  v49 = *(off_1E7722248 + 4);
  v50 = v26;
  v27 = *(off_1E7722248 + 7);
  v51 = *(off_1E7722248 + 6);
  v52 = v27;
  v28 = *(off_1E7722248 + 1);
  v45 = *off_1E7722248;
  v46 = v28;
  v29 = *(off_1E7722248 + 3);
  v47 = *(off_1E7722248 + 2);
  v48 = v29;
  if (tile)
  {
LABEL_7:
    *tile = v20;
  }

LABEL_8:
  if (geometry)
  {
    v38 = v54;
    *&geometry->hidden = v53;
    *&geometry->contentSize.height = v38;
    v39 = v56;
    *&geometry->contentsRect.origin.y = v55;
    *&geometry->contentsRect.size.height = v39;
    v40 = v50;
    *&geometry->transform.a = v49;
    *&geometry->transform.c = v40;
    v41 = v52;
    *&geometry->transform.tx = v51;
    *&geometry->alpha = v41;
    v42 = v46;
    geometry->frame.origin = v45;
    geometry->frame.size = v42;
    v43 = v48;
    geometry->center = v47;
    geometry->size = v43;
  }

  if (group)
  {
    *group = v21;
  }

  if (data)
  {
    v22 = v22;
    *data = v22;
  }

  return v23;
}

BOOL __76__PXTilingController_getTile_geometry_group_userData_forTileWithIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v12[2] = *(a2 + 40);
  v12[3] = v2;
  v12[4] = *(a2 + 72);
  v13 = *(a2 + 88);
  v3 = *(a2 + 24);
  v12[0] = *(a2 + 8);
  v12[1] = v3;
  v4 = *(a1 + 80);
  v10[2] = *(a1 + 64);
  v10[3] = v4;
  v10[4] = *(a1 + 96);
  v11 = *(a1 + 112);
  v5 = *(a1 + 48);
  v10[0] = *(a1 + 32);
  v10[1] = v5;
  result = *&v12[0] == *&v10[0];
  if (*&v12[0] && *&v12[0] == *&v10[0])
  {
    v7 = 1;
    do
    {
      v8 = *(v12 + v7);
      v9 = *(v10 + v7);
      result = v8 == v9;
      if (v7 >= *&v12[0])
      {
        break;
      }

      ++v7;
    }

    while (v8 == v9);
  }

  return result;
}

- (PXTileIdentifier)tileIdentifierForTile:(SEL)tile
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x7810000000;
  v15 = &unk_1A561E057;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  _tileStates = [(PXTilingController *)self _tileStates];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__PXTilingController_tileIdentifierForTile___block_invoke;
  v11[3] = &unk_1E7737BC8;
  v11[4] = &v12;
  v11[5] = a4;
  [_tileStates enumerateStatesUsingBlock:v11];

  v7 = v13;
  v8 = *(v13 + 5);
  *&retstr->index[3] = *(v13 + 4);
  *&retstr->index[5] = v8;
  *&retstr->index[7] = *(v7 + 6);
  retstr->index[9] = v7[14];
  v9 = *(v7 + 3);
  *&retstr->length = *(v7 + 2);
  *&retstr->index[1] = v9;
  _Block_object_dispose(&v12, 8);
  return result;
}

__n128 __44__PXTilingController_tileIdentifierForTile___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(a1 + 40) == *(a3 + 696))
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = *(a3 + 56);
    v6 = *(a3 + 72);
    v7 = *(a3 + 40);
    *(v4 + 112) = *(a3 + 88);
    *(v4 + 80) = v5;
    *(v4 + 96) = v6;
    *(v4 + 64) = v7;
    result = *(a3 + 8);
    v9 = *(a3 + 24);
    *(v4 + 32) = result;
    *(v4 + 48) = v9;
    *a4 = 1;
  }

  return result;
}

- (void)setTransitionDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_transitionDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_transitionDelegate, obj);
    self->_transitionDelegateFlags.respondsToPrepareForChange = objc_opt_respondsToSelector() & 1;
    self->_transitionDelegateFlags.respondsToTileIdentifierConverterForChange = objc_opt_respondsToSelector() & 1;
    self->_transitionDelegateFlags.respondsToTransitionAnimationCoordinatorForChange = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setScrollDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_scrollDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_scrollDelegate, obj);
    self->_scrollDelegateFlags.respondsToInitialVisibleOriginForLayout = objc_opt_respondsToSelector() & 1;
    self->_scrollDelegateFlags.respondsToTargetVisibleOriginForLayoutProposedVisibleOrigin = objc_opt_respondsToSelector() & 1;
    self->_scrollDelegateFlags.respondsToScrollInfoForLayout = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setScrollController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_scrollController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_scrollController);

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_scrollController);
      v8 = [PXTilingControllerCompositionEngine compositionEngineForScrollController:v7 createIfNeeded:0];

      [v8 unregisterTilingController:self];
    }

    v9 = objc_storeWeak(&self->_scrollController, obj);
    v10 = [PXTilingControllerCompositionEngine compositionEngineForScrollController:obj createIfNeeded:1];

    [v10 registerTilingController:self];
    [(PXTilingController *)self _invalidateScrollControllerMetrics];

    v5 = obj;
  }
}

- (void)dealloc
{
  identifierBuffer = self->_identifierBuffer;
  if (identifierBuffer)
  {
    free(identifierBuffer);
  }

  geometryBuffer = self->_geometryBuffer;
  if (geometryBuffer)
  {
    free(geometryBuffer);
  }

  v5.receiver = self;
  v5.super_class = PXTilingController;
  [(PXTilingController *)&v5 dealloc];
}

- (PXTilingController)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v24.receiver = self;
  v24.super_class = PXTilingController;
  v6 = [(PXTilingController *)&v24 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 216) = *off_1E7722230;
    v8 = *(off_1E7721F98 + 1);
    *(v6 + 264) = *off_1E7721F98;
    *(v6 + 280) = v8;
    v9 = objc_alloc_init(PXTilingCoordinateSpace);
    v10 = *(v7 + 16);
    *(v7 + 16) = v9;

    *(v7 + 17) = [*(v7 + 16) identifier];
    v11 = objc_alloc_init(PXTilingCoordinateSpaceConverter);
    v12 = *(v7 + 18);
    *(v7 + 18) = v11;

    objc_storeStrong(v7 + 9, layout);
    [*(v7 + 9) setObserver:v7];
    v13 = objc_alloc_init(PXTileStatePool);
    v14 = *(v7 + 21);
    *(v7 + 21) = v13;

    *(v7 + 6) = 257;
    v7[14] = 1;
    *(v7 + 17) = 16843009;
    v15 = *off_1E77221E8;
    *(v7 + 232) = *off_1E77221E8;
    *(v7 + 248) = v15;
    v16 = *MEMORY[0x1E695F050];
    v17 = *(MEMORY[0x1E695F050] + 16);
    *(v7 + 424) = *MEMORY[0x1E695F050];
    *(v7 + 440) = v17;
    *(v7 + 392) = v16;
    *(v7 + 408) = v17;
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v19 = *(v7 + 22);
    *(v7 + 22) = indexSet;

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = *(v7 + 23);
    *(v7 + 23) = v20;

    v22 = *(off_1E7721FA8 + 1);
    *(v7 + 456) = *off_1E7721FA8;
    *(v7 + 472) = v22;
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *(v7 + 4) = 0;
    v7[56] = 0;
  }

  return v7;
}

- (PXTilingController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXTilingController.m" lineNumber:104 description:@"invalid initializer"];

  abort();
}

- (id)imageTileWithIdentifier:(PXTileIdentifier *)identifier
{
  v9 = 0;
  v3 = *&identifier->index[5];
  v7[2] = *&identifier->index[3];
  v7[3] = v3;
  v7[4] = *&identifier->index[7];
  v8 = identifier->index[9];
  v4 = *&identifier->index[1];
  v7[0] = *&identifier->length;
  v7[1] = v4;
  v5 = 0;
  if ([(PXTilingController *)self getTile:&v9 geometry:0 group:0 userData:0 forTileWithIdentifier:v7])
  {
    v5 = v9;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)titleSubtitleTileWithIdentifier:(PXTileIdentifier *)identifier
{
  v9 = 0;
  v3 = *&identifier->index[5];
  v7[2] = *&identifier->index[3];
  v7[3] = v3;
  v7[4] = *&identifier->index[7];
  v8 = identifier->index[9];
  v4 = *&identifier->index[1];
  v7[0] = *&identifier->length;
  v7[1] = v4;
  v5 = 0;
  if ([(PXTilingController *)self getTile:&v9 geometry:0 group:0 userData:0 forTileWithIdentifier:v7])
  {
    v5 = v9;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v5 = 0;
    }
  }

  return v5;
}

@end