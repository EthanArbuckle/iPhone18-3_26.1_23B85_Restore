@interface PUTilingView
- (BOOL)isAnyTileControllerAnimating;
- (PUTileAnimator)tileAnimator;
- (PUTilingView)initWithCoder:(id)coder;
- (PUTilingView)initWithFrame:(CGRect)frame layout:(id)layout;
- (PUTilingViewScrollDelegate)scrollDelegate;
- (PUTilingViewTileSource)tileSource;
- (PUTilingViewTileTransitionDelegate)tileTransitionDelegate;
- (PUTilingViewTileUseDelegate)tileUseDelegate;
- (UIEdgeInsets)loadingInsets;
- (id)_createTileControllerWithIndexPath:(id)path kind:(id)kind dataSource:(id)source tileSource:(id)tileSource;
- (id)_dataSourceWithIdentifier:(id)identifier;
- (id)dequeueTileControllerWithReuseIdentifier:(id)identifier;
- (id)freezeTileController:(id)controller;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)presentedTileControllerWithIndexPath:(id)path kind:(id)kind dataSourceIdentifier:(id)identifier;
- (id)tileControllerWithIndexPath:(id)path kind:(id)kind dataSourceIdentifier:(id)identifier;
- (void)_adjustScrollViewPagingDeceleration;
- (void)_applyPendingUpdates;
- (void)_enumerateActiveTileControllersUsingBlock:(id)block;
- (void)_enumerateAllTileControllersUsingBlock:(id)block;
- (void)_handleChangeFromBounds:(CGRect)bounds fromFrame:(CGRect)frame;
- (void)_invalidateLayout;
- (void)_invalidateLayoutCoordinateSystemWithReason:(int64_t)reason;
- (void)_invalidateLayoutVisibleRect;
- (void)_invalidateReferencedCoordinateSystems;
- (void)_invalidateReferencedDataSources;
- (void)_invalidateScrollViewProperties;
- (void)_invalidateTileControllers;
- (void)_invalidateTileControllersVisibleRect;
- (void)_invalidateTileControllersWithTileTransitionCoordinator:(id)coordinator;
- (void)_registerDataSource:(id)source;
- (void)_runPostLayoutBlocks;
- (void)_startHeadroomMonitoringIfPossible;
- (void)_transferTileControllersToDataSource:(id)source usingDataSourceConverter:(id)converter;
- (void)_updateIfNeeded;
- (void)_updateLayoutCoordinateSystemIfNeeded;
- (void)_updateLayoutIfNeeded;
- (void)_updateLayoutVisibleRectIfNeeded;
- (void)_updateReferencedCoordinateSystemsIfNeeded;
- (void)_updateReferencedDataSourcesIfNeeded;
- (void)_updateScrollViewPropertiesIfNeeded;
- (void)_updateScrollViewPropertiesWithLayout:(id)layout;
- (void)_updateTileControllersIfNeeded;
- (void)_updateTileControllersVisibleRectIfNeeded;
- (void)_updateTileControllersWithLayout:(id)layout reactivatability:(id)reactivatability appearanceHandler:(id)handler updateHandler:(id)updateHandler disappearanceHandler:(id)disappearanceHandler heartBeatHandler:(id)beatHandler;
- (void)_updateTileControllersWithLayout:(id)layout tileTransitionCoordinator:(id)coordinator;
- (void)configureDynamicRangeProperties;
- (void)deleteItemAtIndexPath:(id)path dataSource:(id)source;
- (void)detachTileControllers:(id)controllers;
- (void)didMoveToWindow;
- (void)enqueueTileControllerForReuse:(id)reuse;
- (void)enumerateAllTileControllersUsingBlock:(id)block;
- (void)enumeratePresentedTileControllersInRect:(CGRect)rect usingBlock:(id)block;
- (void)insertItemAtIndexPath:(id)path dataSource:(id)source;
- (void)invalidateLayout:(id)layout withContext:(id)context;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)moveItemFromIndexPath:(id)path toIndexPath:(id)indexPath dataSource:(id)source;
- (void)performBatchUpdates:(id)updates;
- (void)reattachTileControllers:(id)controllers withContext:(id)context;
- (void)registerPostLayoutBlock:(id)block forIdentifier:(id)identifier;
- (void)registerTileControllerClass:(Class)class forReuseIdentifier:(id)identifier;
- (void)reloadItemAtIndexPath:(id)path dataSource:(id)source;
- (void)setAllowEDRHeadroomMonitoring:(BOOL)monitoring;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setLoadingInsets:(UIEdgeInsets)insets;
- (void)setScrollDelegate:(id)delegate;
- (void)setTileTransitionDelegate:(id)delegate;
- (void)setTileUseDelegate:(id)delegate;
- (void)tileControllerDidEndAnimating:(id)animating;
- (void)transitionToLayout:(id)layout withContext:(id)context animationSetupCompletionHandler:(id)handler;
@end

@implementation PUTilingView

- (PUTilingViewTileUseDelegate)tileUseDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tileUseDelegate);

  return WeakRetained;
}

- (PUTilingViewScrollDelegate)scrollDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollDelegate);

  return WeakRetained;
}

- (PUTilingViewTileTransitionDelegate)tileTransitionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tileTransitionDelegate);

  return WeakRetained;
}

- (PUTileAnimator)tileAnimator
{
  WeakRetained = objc_loadWeakRetained(&self->_tileAnimator);

  return WeakRetained;
}

- (UIEdgeInsets)loadingInsets
{
  top = self->_loadingInsets.top;
  left = self->_loadingInsets.left;
  bottom = self->_loadingInsets.bottom;
  right = self->_loadingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PUTilingViewTileSource)tileSource
{
  WeakRetained = objc_loadWeakRetained(&self->_tileSource);

  return WeakRetained;
}

- (void)_transferTileControllersToDataSource:(id)source usingDataSourceConverter:(id)converter
{
  sourceCopy = source;
  converterCopy = converter;
  if (!converterCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:1392 description:{@"Invalid parameter not satisfying: %@", @"dataSourceConverter != nil"}];
  }

  [(PUTilingView *)self _registerDataSource:sourceCopy];
  identifier = [sourceCopy identifier];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PUTilingView__transferTileControllersToDataSource_usingDataSourceConverter___block_invoke;
  aBlock[3] = &unk_1E7B7EFA8;
  aBlock[4] = self;
  v19 = converterCopy;
  v20 = sourceCopy;
  v21 = identifier;
  v10 = identifier;
  v11 = sourceCopy;
  v12 = converterCopy;
  v13 = _Block_copy(aBlock);
  _activeTileControllers = [(PUTilingView *)self _activeTileControllers];
  v13[2](v13, _activeTileControllers);

  _inactiveTileControllers = [(PUTilingView *)self _inactiveTileControllers];
  v13[2](v13, _inactiveTileControllers);

  _detachedTileControllers = [(PUTilingView *)self _detachedTileControllers];
  v13[2](v13, _detachedTileControllers);
}

void __78__PUTilingView__transferTileControllersToDataSource_usingDataSourceConverter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__PUTilingView__transferTileControllersToDataSource_usingDataSourceConverter___block_invoke_2;
  v11[3] = &unk_1E7B7EF80;
  v10 = *(a1 + 32);
  v5 = *(&v10 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  v14 = v3;
  v9 = v3;
  [v4 enumerateObjectsUsingBlock:v11];
}

void __78__PUTilingView__transferTileControllersToDataSource_usingDataSourceConverter___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v6 dataSourceIdentifier];
  v9 = [v7 _dataSourceWithIdentifier:v8];

  v10 = [v6 indexPath];
  v11 = [v6 tileKind];
  v22 = v11;
  v23 = v10;
  v12 = [*(a1 + 40) convertIndexPath:&v23 tileKind:&v22 fromDataSource:v9 toDataSource:*(a1 + 48)];
  v13 = v23;

  v14 = v22;
  if (v12)
  {
    v15 = [v5 layoutInfo];
    v16 = [v15 layoutInfoWithIndexPath:v13 tileKind:v14 dataSourceIdentifier:*(a1 + 56)];

    v17 = [v16 tileIdentifier];
    if ([*(a1 + 64) useUniqueLeafs] && (objc_msgSend(*(a1 + 64), "objectWithTileIdentifier:", v17), (v18 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v19 = v18;
      v20 = PLOneUpGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 64);
        *buf = 138413314;
        v25 = v5;
        v26 = 2112;
        v27 = v6;
        v28 = 2112;
        v29 = v17;
        v30 = 2112;
        v31 = v19;
        v32 = 2112;
        v33 = v21;
        _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_DEFAULT, "Tried converting tileController:%@ from:%@ to:%@, but that tile identifier is already occuped by:%@, so disallowing conversion in tileTree:%@", buf, 0x34u);
      }
    }

    else
    {
      [*(a1 + 64) removeObject:v5 withTileIdentifier:v6];
      [v5 setLayoutInfo:v16];
      [*(a1 + 64) addObject:v5 withTileIdentifier:v17];
    }
  }
}

- (id)_dataSourceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _referencedDataSourcesByIdentifiers = [(PUTilingView *)self _referencedDataSourcesByIdentifiers];
  v6 = [_referencedDataSourcesByIdentifiers objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (void)_registerDataSource:(id)source
{
  sourceCopy = source;
  identifier = [sourceCopy identifier];
  _referencedDataSourcesByIdentifiers = [(PUTilingView *)self _referencedDataSourcesByIdentifiers];
  [_referencedDataSourcesByIdentifiers setObject:sourceCopy forKeyedSubscript:identifier];
}

- (void)registerPostLayoutBlock:(id)block forIdentifier:(id)identifier
{
  blockCopy = block;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:1374 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  _postLayoutBlocks = [(PUTilingView *)self _postLayoutBlocks];
  v9 = [blockCopy copy];
  [_postLayoutBlocks setObject:v9 forKeyedSubscript:identifierCopy];
}

- (void)_runPostLayoutBlocks
{
  _postLayoutBlocks = [(PUTilingView *)self _postLayoutBlocks];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__PUTilingView__runPostLayoutBlocks__block_invoke;
  v4[3] = &unk_1E7B7EF58;
  v4[4] = self;
  [_postLayoutBlocks enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)_updateReferencedCoordinateSystemsIfNeeded
{
  if ([(PUTilingView *)self _needsUpdateReferencedCoordinateSystems])
  {
    [(PUTilingView *)self _setNeedsUpdateReferencedCoordinateSystems:0];
    v3 = [MEMORY[0x1E695DFA8] set];
    layout = [(PUTilingView *)self layout];
    [v3 addObject:layout];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__PUTilingView__updateReferencedCoordinateSystemsIfNeeded__block_invoke;
    aBlock[3] = &unk_1E7B7EF30;
    v11 = v3;
    v5 = v3;
    v6 = _Block_copy(aBlock);
    _inactiveTileControllers = [(PUTilingView *)self _inactiveTileControllers];
    v6[2](v6, _inactiveTileControllers);

    _detachedTileControllers = [(PUTilingView *)self _detachedTileControllers];
    v6[2](v6, _detachedTileControllers);

    _referencedCoordinateSystems = [(PUTilingView *)self _referencedCoordinateSystems];
    [_referencedCoordinateSystems setSet:v5];
  }
}

void __58__PUTilingView__updateReferencedCoordinateSystemsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__PUTilingView__updateReferencedCoordinateSystemsIfNeeded__block_invoke_2;
  v3[3] = &unk_1E7B7EF08;
  v4 = *(a1 + 32);
  [a2 enumerateObjectsUsingBlock:v3];
}

void __58__PUTilingView__updateReferencedCoordinateSystemsIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 layoutInfo];
  v3 = [v4 coordinateSystem];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)_updateReferencedDataSourcesIfNeeded
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(PUTilingView *)self _needsUpdateReferencedDataSources])
  {
    [(PUTilingView *)self _setNeedsUpdateReferencedDataSources:0];
    _referencedDataSourcesByIdentifiers = [(PUTilingView *)self _referencedDataSourcesByIdentifiers];
    v4 = MEMORY[0x1E695DFA8];
    allKeys = [_referencedDataSourcesByIdentifiers allKeys];
    v6 = [v4 setWithArray:allKeys];

    layout = [(PUTilingView *)self layout];
    dataSource = [layout dataSource];
    identifier = [dataSource identifier];

    if (identifier)
    {
      [v6 removeObject:identifier];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__PUTilingView__updateReferencedDataSourcesIfNeeded__block_invoke;
    aBlock[3] = &unk_1E7B7EF30;
    v10 = v6;
    v24 = v10;
    v11 = _Block_copy(aBlock);
    _inactiveTileControllers = [(PUTilingView *)self _inactiveTileControllers];
    v11[2](v11, _inactiveTileControllers);

    _detachedTileControllers = [(PUTilingView *)self _detachedTileControllers];
    v11[2](v11, _detachedTileControllers);

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [_referencedDataSourcesByIdentifiers removeObjectForKey:{*(*(&v19 + 1) + 8 * v18++), v19}];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v16);
    }
  }
}

void __52__PUTilingView__updateReferencedDataSourcesIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__PUTilingView__updateReferencedDataSourcesIfNeeded__block_invoke_2;
  v3[3] = &unk_1E7B7EF08;
  v4 = *(a1 + 32);
  [a2 enumerateObjectsUsingBlock:v3];
}

void __52__PUTilingView__updateReferencedDataSourcesIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 dataSourceIdentifier];
  [v3 removeObject:v4];
}

- (void)_updateTileControllersWithLayout:(id)layout reactivatability:(id)reactivatability appearanceHandler:(id)handler updateHandler:(id)updateHandler disappearanceHandler:(id)disappearanceHandler heartBeatHandler:(id)beatHandler
{
  v98 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  reactivatabilityCopy = reactivatability;
  handlerCopy = handler;
  updateHandlerCopy = updateHandler;
  disappearanceHandlerCopy = disappearanceHandler;
  beatHandlerCopy = beatHandler;
  [(PUTilingView *)self bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = +[PUTilingViewSettings sharedInstance];
  LODWORD(disappearanceHandler) = [v27 allowPreheating];

  v66 = reactivatabilityCopy;
  v67 = beatHandlerCopy;
  v63 = disappearanceHandlerCopy;
  v64 = handlerCopy;
  if (disappearanceHandler)
  {
    [(PUTilingView *)self loadingInsets];
    v20 = v20 + v28;
    v22 = v22 + v29;
    v24 = v24 - (v28 + v30);
    v26 = v26 - (v29 + v31);
  }

  contentCoordinateSystem = [(PUTilingView *)self contentCoordinateSystem];
  coordinateSystem = [layoutCopy coordinateSystem];
  v34 = PUConvertPointFromCoordinateSystemToCoordinateSystem(contentCoordinateSystem, coordinateSystem, v20, v22);
  v36 = v35;

  v37 = [layoutCopy layoutInfosForTilesInRect:{v34, v36, v24, v26}];
  v68 = layoutCopy;
  dataSource = [layoutCopy dataSource];
  _activeTileControllers = [(PUTilingView *)self _activeTileControllers];
  _inactiveTileControllers = [(PUTilingView *)self _inactiveTileControllers];
  v70 = [[PUTileTree alloc] initUsingUniqueLeafs:1];
  v72 = _activeTileControllers;
  v39 = [_activeTileControllers copy];
  selfCopy = self;
  _detachedTileControllers = [(PUTilingView *)self _detachedTileControllers];
  v75 = [_detachedTileControllers copy];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = v37;
  v41 = [obj countByEnumeratingWithState:&v93 objects:v97 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v94;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v94 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v45 = *(*(&v93 + 1) + 8 * i);
        tileIdentifier = [v45 tileIdentifier];
        v47 = [_detachedTileControllers objectWithTileIdentifier:tileIdentifier];
        if (v47)
        {
          [v75 removeObject:v47 withTileIdentifier:tileIdentifier];
LABEL_10:
          [v39 removeObjectWithTileIdentifier:tileIdentifier];
          goto LABEL_14;
        }

        v48 = [v72 objectWithTileIdentifier:tileIdentifier];
        if (v48)
        {
          v49 = v48;
          v50 = updateHandlerCopy[2](updateHandlerCopy, v48, v45);

          if (v50)
          {
            goto LABEL_10;
          }
        }

        [v70 addObject:v45 withTileIdentifier:tileIdentifier];
LABEL_14:
      }

      v42 = [obj countByEnumeratingWithState:&v93 objects:v97 count:16];
    }

    while (v42);
  }

  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __136__PUTilingView__updateTileControllersWithLayout_reactivatability_appearanceHandler_updateHandler_disappearanceHandler_heartBeatHandler___block_invoke;
  v90[3] = &unk_1E7B7EE68;
  v91 = v39;
  v92 = v70;
  v51 = v70;
  v71 = v39;
  [v75 enumerateObjectsUsingBlock:v90];
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __136__PUTilingView__updateTileControllersWithLayout_reactivatability_appearanceHandler_updateHandler_disappearanceHandler_heartBeatHandler___block_invoke_2;
  v86[3] = &unk_1E7B7EE90;
  v52 = v72;
  v87 = v52;
  v53 = _inactiveTileControllers;
  v88 = v53;
  v89 = v63;
  v73 = v63;
  [v71 enumerateObjectsUsingBlock:v86];
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __136__PUTilingView__updateTileControllersWithLayout_reactivatability_appearanceHandler_updateHandler_disappearanceHandler_heartBeatHandler___block_invoke_3;
  v78[3] = &unk_1E7B7EEE0;
  v79 = _detachedTileControllers;
  v80 = selfCopy;
  v81 = v53;
  v82 = dataSource;
  v83 = v52;
  v84 = v66;
  v85 = v64;
  v54 = v64;
  v55 = v52;
  v56 = dataSource;
  v57 = v66;
  v58 = v53;
  v59 = _detachedTileControllers;
  [v51 enumerateObjectsUsingBlock:v78];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __136__PUTilingView__updateTileControllersWithLayout_reactivatability_appearanceHandler_updateHandler_disappearanceHandler_heartBeatHandler___block_invoke_5;
  v76[3] = &unk_1E7B7ECB8;
  v77 = v67;
  v60 = v67;
  [v58 enumerateObjectsUsingBlock:v76];
}

void __136__PUTilingView__updateTileControllersWithLayout_reactivatability_appearanceHandler_updateHandler_disappearanceHandler_heartBeatHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectWithTileIdentifier:v5];
  if (v6)
  {
    [*(a1 + 32) removeObject:v6 withTileIdentifier:v5];
  }

  else
  {
    v7 = [v8 layoutInfo];
    [*(a1 + 40) addObject:v7 withTileIdentifier:v5];
  }
}

void __136__PUTilingView__updateTileControllersWithLayout_reactivatability_appearanceHandler_updateHandler_disappearanceHandler_heartBeatHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 removeObjectWithTileIdentifier:v6];
  [*(a1 + 40) addObject:v7 withTileIdentifier:v6];

  (*(*(a1 + 48) + 16))();
}

void __136__PUTilingView__updateTileControllersWithLayout_reactivatability_appearanceHandler_updateHandler_disappearanceHandler_heartBeatHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__87409;
  v25 = __Block_byref_object_dispose__87410;
  v26 = 0;
  v7 = [*(a1 + 32) objectWithTileIdentifier:v6];
  if (v7)
  {
    objc_storeStrong(v22 + 5, v7);
  }

  v8 = [*(a1 + 40) tileSource];
  v9 = v22[5];
  if (!v9 && (v10 = *(a1 + 48), v17[0] = MEMORY[0x1E69E9820], v17[1] = 3221225472, v17[2] = __136__PUTilingView__updateTileControllersWithLayout_reactivatability_appearanceHandler_updateHandler_disappearanceHandler_heartBeatHandler___block_invoke_4, v17[3] = &unk_1E7B7EEB8, v19 = *(a1 + 72), v18 = v5, v20 = &v21, [v10 enumerateObjectsWithTileIdentifier:v6 usingBlock:v17], v18, v19, (v9 = v22[5]) == 0) || (objc_msgSend(*(a1 + 48), "removeObject:withTileIdentifier:", v9, v6), (v11 = v22[5]) == 0))
  {
    v12 = *(a1 + 40);
    v13 = [v6 indexPath];
    v14 = [v6 tileKind];
    v15 = [v12 _createTileControllerWithIndexPath:v13 kind:v14 dataSource:*(a1 + 56) tileSource:v8];
    v16 = v22[5];
    v22[5] = v15;

    v11 = v22[5];
  }

  [*(a1 + 64) addObject:v11 withTileIdentifier:v6];
  (*(*(a1 + 80) + 16))();

  _Block_object_dispose(&v21, 8);
}

void __136__PUTilingView__updateTileControllersWithLayout_reactivatability_appearanceHandler_updateHandler_disappearanceHandler_heartBeatHandler___block_invoke_4(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)_updateTileControllersWithLayout:(id)layout tileTransitionCoordinator:(id)coordinator
{
  layoutCopy = layout;
  coordinatorCopy = coordinator;
  tileAnimator = [(PUTilingView *)self tileAnimator];
  if (!tileAnimator)
  {

    coordinatorCopy = 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __75__PUTilingView__updateTileControllersWithLayout_tileTransitionCoordinator___block_invoke;
  v27[3] = &unk_1E7B7EDA0;
  v29 = a2;
  v27[4] = self;
  v28 = coordinatorCopy;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __75__PUTilingView__updateTileControllersWithLayout_tileTransitionCoordinator___block_invoke_2;
  v23[3] = &unk_1E7B7EDC8;
  v26 = a2;
  v23[4] = self;
  v24 = v28;
  v25 = tileAnimator;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__PUTilingView__updateTileControllersWithLayout_tileTransitionCoordinator___block_invoke_4;
  v19[3] = &unk_1E7B7EDF0;
  v22 = a2;
  v19[4] = self;
  v20 = v24;
  v21 = v25;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PUTilingView__updateTileControllersWithLayout_tileTransitionCoordinator___block_invoke_6;
  v15[3] = &unk_1E7B7EE18;
  v18 = a2;
  v15[4] = self;
  v16 = v20;
  v17 = v21;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__PUTilingView__updateTileControllersWithLayout_tileTransitionCoordinator___block_invoke_8;
  v12[3] = &unk_1E7B7EE40;
  v13 = v17;
  v14 = a2;
  v12[4] = self;
  v10 = v17;
  v11 = v20;
  [(PUTilingView *)self _updateTileControllersWithLayout:layoutCopy reactivatability:v27 appearanceHandler:v23 updateHandler:v19 disappearanceHandler:v15 heartBeatHandler:v12];
}

uint64_t __75__PUTilingView__updateTileControllersWithLayout_tileTransitionCoordinator___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isDetached])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a1[6] object:a1[4] file:@"PUTilingView.m" lineNumber:1101 description:{@"Invalid parameter not satisfying: %@", @"[tileController isDetached] == NO"}];
  }

  [v6 center];
  if ((PXPointIsValid() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a1[6] object:a1[4] file:@"PUTilingView.m" lineNumber:1102 description:{@"Invalid parameter not satisfying: %@", @"PXPointIsValid(layoutInfo.center)"}];
  }

  v7 = a1[5];
  if (v7)
  {
    v8 = [v7 initialLayoutInfoForAppearingTileController:v5 toLayoutInfo:v6];
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = [v5 layoutInfo];
  v11 = [v10 isGeometryEqualToLayoutInfo:v9];

  return v11;
}

void __75__PUTilingView__updateTileControllersWithLayout_tileTransitionCoordinator___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isDetached])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PUTilingView.m" lineNumber:1108 description:{@"Invalid parameter not satisfying: %@", @"[appearingTileController isDetached] == NO"}];
  }

  if ([v5 isReusable])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PUTilingView.m" lineNumber:1109 description:{@"Invalid parameter not satisfying: %@", @"[appearingTileController isReusable] == NO"}];
  }

  if ([v5 isActive])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PUTilingView.m" lineNumber:1110 description:{@"Invalid parameter not satisfying: %@", @"[appearingTileController isActive] == NO"}];
  }

  [v6 center];
  if ((PXPointIsValid() & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PUTilingView.m" lineNumber:1111 description:{@"Invalid parameter not satisfying: %@", @"PXPointIsValid(layoutInfo.center)"}];
  }

  [v5 setActive:1];
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = [v7 initialLayoutInfoForAppearingTileController:v5 toLayoutInfo:v6];
    if (([v8 isEqual:v6] & 1) == 0)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PUTilingView.m" lineNumber:1116 description:{@"Invalid parameter not satisfying: %@", @"[initialLayoutInfo isEqual:layoutInfo]"}];
    }

    v9 = [*(a1 + 40) optionsForAnimatingTileController:v5 toLayoutInfo:v6 withAnimationType:2];
    if (([v5 isAnimating] & 1) == 0)
    {
      [*(a1 + 48) prepareTileControllerForAnimation:v5 withInitialLayoutInfo:v8];
      [v5 setLayoutInfo:v8];
    }

    v10 = [v5 willBeginAnimation];
    v11 = *(a1 + 48);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __75__PUTilingView__updateTileControllersWithLayout_tileTransitionCoordinator___block_invoke_3;
    v17[3] = &unk_1E7B7FF70;
    v18 = v5;
    v19 = v10;
    [v11 animateTileController:v18 toLayoutInfo:v6 withOptions:v9 completionHandler:v17];
  }

  else if ([v5 isAnimating])
  {
    [*(a1 + 48) updateAnimationForTileController:v5 withRepositionedTargetLayoutInfo:v6];
  }

  else
  {
    [v5 applyLayoutInfo:v6];
  }

  [v5 setLayoutInfo:v6];
}

uint64_t __75__PUTilingView__updateTileControllersWithLayout_tileTransitionCoordinator___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isDetached])
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PUTilingView.m" lineNumber:1138 description:{@"Invalid parameter not satisfying: %@", @"[updatedTileController isDetached] == NO"}];
  }

  if ([v5 isReusable])
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PUTilingView.m" lineNumber:1139 description:{@"Invalid parameter not satisfying: %@", @"[updatedTileController isReusable] == NO"}];
  }

  if (([v5 isActive] & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PUTilingView.m" lineNumber:1140 description:{@"Invalid parameter not satisfying: %@", @"[updatedTileController isActive] == YES"}];
  }

  v7 = [*(a1 + 40) useDoubleSidedTransitionForUpdatedTileController:v5 toLayoutInfo:v6];
  if ((v7 & 1) == 0)
  {
    v8 = [v6 coordinateSystem];
    v9 = [v5 layoutInfo];
    v10 = [v9 coordinateSystem];
    if ([v8 isEqual:v10])
    {
      v11 = [v5 layoutInfo];
      v12 = [v11 isGeometryEqualToLayoutInfo:v6];

      if (v12)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    v13 = *(a1 + 40);
    v14 = [v5 isAnimating];
    if (v13)
    {
      if ((v14 & 1) == 0)
      {
        v15 = [v5 layoutInfo];
        if (!v15)
        {
          v23 = [MEMORY[0x1E696AAA8] currentHandler];
          [v23 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PUTilingView.m" lineNumber:1151 description:{@"Invalid parameter not satisfying: %@", @"initialLayoutInfo != nil"}];
        }

        [*(a1 + 48) prepareTileControllerForAnimation:v5 withInitialLayoutInfo:v15];
      }

      v16 = [*(a1 + 40) optionsForAnimatingTileController:v5 toLayoutInfo:v6 withAnimationType:1];
      v17 = [v5 willBeginAnimation];
      v18 = *(a1 + 48);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __75__PUTilingView__updateTileControllersWithLayout_tileTransitionCoordinator___block_invoke_5;
      v24[3] = &unk_1E7B7FF70;
      v25 = v5;
      v26 = v17;
      [v18 animateTileController:v25 toLayoutInfo:v6 withOptions:v16 completionHandler:v24];
    }

    else if (v14)
    {
      [*(a1 + 48) updateAnimationForTileController:v5 withRepositionedTargetLayoutInfo:v6];
    }

    else
    {
      [v5 applyLayoutInfo:v6];
    }

    [v5 setLayoutInfo:v6];
  }

LABEL_22:

  return v7 ^ 1u;
}

void __75__PUTilingView__updateTileControllersWithLayout_tileTransitionCoordinator___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 disappearanceAssertionsEnabled])
  {
    if ([v3 isDetached])
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PUTilingView.m" lineNumber:1172 description:{@"Invalid parameter not satisfying: %@", @"[disappearingTileController isDetached] == NO"}];
    }

    if ([v3 isReusable])
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PUTilingView.m" lineNumber:1173 description:{@"Invalid parameter not satisfying: %@", @"[disappearingTileController isReusable] == NO"}];
    }

    if (([v3 isActive] & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PUTilingView.m" lineNumber:1174 description:{@"Invalid parameter not satisfying: %@", @"[disappearingTileController isActive] == YES"}];
    }
  }

  [v3 setActive:0];
  v4 = [v3 layoutInfo];
  v5 = [*(a1 + 40) finalLayoutInfoForDisappearingTileController:v3 fromLayoutInfo:v4];
  v6 = v5;
  if (v5)
  {
    if (([v5 isEqual:v4] & 1) == 0)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PUTilingView.m" lineNumber:1181 description:{@"Invalid parameter not satisfying: %@", @"[finalLayoutInfo isEqual:layoutInfo]"}];
    }

    if (([v3 isAnimating] & 1) == 0)
    {
      [*(a1 + 48) prepareTileControllerForAnimation:v3 withInitialLayoutInfo:v4];
    }

    v7 = [*(a1 + 40) optionsForAnimatingTileController:v3 toLayoutInfo:v6 withAnimationType:3];
    v8 = [v3 willBeginAnimation];
    v9 = *(a1 + 48);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__PUTilingView__updateTileControllersWithLayout_tileTransitionCoordinator___block_invoke_7;
    v15[3] = &unk_1E7B7FF70;
    v10 = v3;
    v16 = v10;
    v17 = v8;
    [v9 animateTileController:v10 toLayoutInfo:v6 withOptions:v7 completionHandler:v15];
    [v10 setLayoutInfo:v6];
  }

  else
  {
    [v3 reuseIfApplicable];
  }
}

void __75__PUTilingView__updateTileControllersWithLayout_tileTransitionCoordinator___block_invoke_8(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 disappearanceAssertionsEnabled])
  {
    if ([v7 isDetached])
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"PUTilingView.m" lineNumber:1198 description:{@"Invalid parameter not satisfying: %@", @"[inactiveTileController isDetached] == NO"}];
    }

    if ([v7 isReusable])
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"PUTilingView.m" lineNumber:1199 description:{@"Invalid parameter not satisfying: %@", @"[inactiveTileController isReusable] == NO"}];
    }

    if ([v7 isActive])
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"PUTilingView.m" lineNumber:1200 description:{@"Invalid parameter not satisfying: %@", @"[inactiveTileController isActive] == NO"}];
    }
  }

  v3 = [v7 layoutInfo];
  if ([v7 isAnimating])
  {
    [*(a1 + 40) updateAnimationForTileController:v7 withRepositionedTargetLayoutInfo:v3];
  }

  else
  {
    [v7 applyLayoutInfo:v3];
  }
}

- (void)_updateTileControllersIfNeeded
{
  if ([(PUTilingView *)self _needsUpdateTileControllers])
  {
    [(PUTilingView *)self _setNeedsUpdateTileControllers:0];
    window = [(PUTilingView *)self window];

    if (window)
    {
      window = [(PUTilingView *)self _tileTransitionCoordinatorForNextLayout];
    }

    [(PUTilingView *)self _setTileTransitionCoordinatorForNextLayout:0];
    layout = [(PUTilingView *)self layout];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__PUTilingView__updateTileControllersIfNeeded__block_invoke;
    v10[3] = &unk_1E7B809F0;
    v10[4] = self;
    v11 = layout;
    v12 = window;
    v5 = window;
    v6 = layout;
    v7 = [PUAnimationGroup animationGroupWithAnimations:v10];
    onNextTileControllersUpdateBlock = [(PUTilingView *)self onNextTileControllersUpdateBlock];
    if (onNextTileControllersUpdateBlock)
    {
      [(PUTilingView *)self setOnNextTileControllersUpdateBlock:0];
      (onNextTileControllersUpdateBlock)[2](onNextTileControllersUpdateBlock, v7);
    }

    if (self->_tileUseDelegateFlags.respondsToDidUpdateTileControllers)
    {
      tileUseDelegate = [(PUTilingView *)self tileUseDelegate];
      [tileUseDelegate tilingViewDidUpdateTileControllers:self];
    }
  }
}

- (void)_updateScrollViewPropertiesWithLayout:(id)layout
{
  layoutCopy = layout;
  [layoutCopy contentBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  coordinateSystem = [layoutCopy coordinateSystem];
  contentCoordinateSystem = [(PUTilingView *)self contentCoordinateSystem];
  v14 = PUConvertPointFromCoordinateSystemToCoordinateSystem(coordinateSystem, contentCoordinateSystem, v5, v7);
  v16 = v15;

  v38.origin.x = v14;
  v38.origin.y = v16;
  v38.size.width = v9;
  v38.size.height = v11;
  MaxX = CGRectGetMaxX(v38);
  v39.origin.x = v14;
  v39.origin.y = v16;
  v39.size.width = v9;
  v39.size.height = v11;
  MaxY = CGRectGetMaxY(v39);
  v17 = MEMORY[0x1E69DDCE0];
  v40.origin.x = v14;
  v40.origin.y = v16;
  v40.size.width = v9;
  v40.size.height = v11;
  MinX = CGRectGetMinX(v40);
  v41.origin.x = v14;
  v41.origin.y = v16;
  v41.size.width = v9;
  v41.size.height = v11;
  MinY = CGRectGetMinY(v41);
  if (!self->_scrollDelegateFlags.respondsToScrollInfoWithLayout || (-[PUTilingView scrollDelegate](self, "scrollDelegate"), v20 = objc_claimAutoreleasedReturnValue(), [v20 tilingView:self scrollInfoWithLayout:layoutCopy], preferredScrollInfo = objc_claimAutoreleasedReturnValue(), v20, !preferredScrollInfo))
  {
    preferredScrollInfo = [layoutCopy preferredScrollInfo];
  }

  v22 = *(v17 + 16);
  v23 = *(v17 + 24);
  scrollDirections = [preferredScrollInfo scrollDirections];
  shouldEnablePaging = [preferredScrollInfo shouldEnablePaging];
  [preferredScrollInfo interpageSpacing];
  v27 = v26;
  v29 = v28;
  v30 = +[PUTilingViewSettings sharedInstance];
  allowPaging = [v30 allowPaging];

  v32 = scrollDirections & 2;
  v33 = scrollDirections & 4;
  if ([(PUTilingView *)self alwaysBounceHorizontal]!= v32 >> 1 || [(PUTilingView *)self alwaysBounceVertical]!= v33 >> 2)
  {
    [(PUTilingView *)self contentOffset];
    [(PUTilingView *)self setContentOffset:0 animated:?];
  }

  [(PUTilingView *)self setContentSize:MaxX, MaxY];
  [(PUTilingView *)self setContentInset:-MinY, -MinX, v22, v23];
  [(PUTilingView *)self setAlwaysBounceHorizontal:v32 != 0];
  [(PUTilingView *)self setAlwaysBounceVertical:v33 != 0];
  [(PUTilingView *)self setPagingEnabled:allowPaging & shouldEnablePaging];
  [(PUTilingView *)self _setInterpageSpacing:v27, v29];
  [(PUTilingView *)self _setPagingOrigin:MinX, MinY];
  [preferredScrollInfo pagingSpringPullAdjustment];
  [(PUTilingView *)self _setPagingSpringPullAdjustment:?];
  [preferredScrollInfo pagingFrictionAdjustment];
  [(PUTilingView *)self _setPagingFrictionAdjustment:?];
  [(PUTilingView *)self _adjustScrollViewPagingDeceleration];
}

- (void)_updateScrollViewPropertiesIfNeeded
{
  if ([(PUTilingView *)self _needsUpdateScrollViewProperties])
  {
    [(PUTilingView *)self _setNeedsUpdateScrollViewProperties:0];
    layout = [(PUTilingView *)self layout];
    [(PUTilingView *)self _updateScrollViewPropertiesWithLayout:layout];
  }
}

- (void)_updateTileControllersVisibleRectIfNeeded
{
  if ([(PUTilingView *)self _needsUpdateTileControllersVisibleRect])
  {
    [(PUTilingView *)self _setNeedsUpdateTileControllersVisibleRect:0];

    [(PUTilingView *)self _enumerateActiveTileControllersUsingBlock:&__block_literal_global_105];
  }
}

void __57__PUTilingView__updateTileControllersVisibleRectIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 wantsVisibleRectChanges])
  {
    [v2 didChangeVisibleRect];
  }
}

- (void)_updateLayoutVisibleRectIfNeeded
{
  if ([(PUTilingView *)self _needsUpdateLayoutVisibleRect])
  {
    [(PUTilingView *)self _setNeedsUpdateLayoutVisibleRect:0];
    _pendingLayout = [(PUTilingView *)self _pendingLayout];
    v4 = _pendingLayout;
    if (_pendingLayout)
    {
      layout = _pendingLayout;
    }

    else
    {
      layout = [(PUTilingView *)self layout];
    }

    v18 = layout;

    [(PUTilingView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    parentCoordinateSystem = [v18 parentCoordinateSystem];

    if (parentCoordinateSystem)
    {
      contentCoordinateSystem = [(PUTilingView *)self contentCoordinateSystem];
      coordinateSystem = [v18 coordinateSystem];
      v7 = PUConvertPointFromCoordinateSystemToCoordinateSystem(contentCoordinateSystem, coordinateSystem, v7, v9);
      v9 = v17;
    }

    [v18 setVisibleRect:{v7, v9, v11, v13}];
  }
}

- (void)_updateLayoutCoordinateSystemIfNeeded
{
  v48 = *MEMORY[0x1E69E9840];
  if ([(PUTilingView *)self _needsUpdateLayoutCoordinateSystem])
  {
    [(PUTilingView *)self _setNeedsUpdateLayoutCoordinateSystem:0];
    _reasonForNextLayoutCoordinateSystemUpdate = [(PUTilingView *)self _reasonForNextLayoutCoordinateSystemUpdate];
    [(PUTilingView *)self _setReasonForNextLayoutCoordinateSystemUpdate:0];
    layout = [(PUTilingView *)self layout];
    parentCoordinateSystem = [layout parentCoordinateSystem];

    array = [MEMORY[0x1E695DF70] array];
    parentCoordinateSystem2 = [layout parentCoordinateSystem];

    if (parentCoordinateSystem2)
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __53__PUTilingView__updateLayoutCoordinateSystemIfNeeded__block_invoke;
      v43[3] = &unk_1E7B7ED58;
      v44 = layout;
      selfCopy = self;
      v46 = array;
      [(PUTilingView *)self _enumerateAllTileControllersUsingBlock:v43];
    }

    contentCoordinateSystem = [(PUTilingView *)self contentCoordinateSystem];
    [layout setParentCoordinateSystem:contentCoordinateSystem];

    if ([(PUTilingView *)self isDecelerating]&& [(PUTilingView *)self isPagingEnabled])
    {
      [(PUTilingView *)self _pageDecelerationTarget];
    }

    else
    {
      [(PUTilingView *)self contentOffset];
    }

    v12 = v10;
    v13 = v11;
    v15 = *MEMORY[0x1E695EFF8];
    v14 = *(MEMORY[0x1E695EFF8] + 8);
    if ((_reasonForNextLayoutCoordinateSystemUpdate - 2) < 2)
    {
      fixedCoordinateSystem = [(PUTilingView *)self fixedCoordinateSystem];
      coordinateSystem = [layout coordinateSystem];
      v15 = PUConvertPointFromCoordinateSystemToCoordinateSystem(fixedCoordinateSystem, coordinateSystem, v15, v14);
      v14 = v19;

      if (self->_scrollDelegateFlags.respondsToTargetVisibleOriginForProposedVisibleOrigin)
      {
        scrollDelegate = [(PUTilingView *)self scrollDelegate];
        [scrollDelegate tilingView:self targetVisibleOriginForProposedVisibleOrigin:layout withLayout:{v15, v14}];
        v22 = v21;
        v24 = v23;

        v25 = v22 != v15;
        if (v24 != v14)
        {
          v25 = 1;
        }

        if (!parentCoordinateSystem)
        {
          v25 = 1;
        }

        v38 = v25;
        v14 = v24;
        v15 = v22;
      }

      else
      {
        v38 = parentCoordinateSystem == 0;
      }
    }

    else
    {
      v38 = parentCoordinateSystem == 0;
      if (_reasonForNextLayoutCoordinateSystemUpdate == 1)
      {
        if (self->_scrollDelegateFlags.respondsToInitialVisibleOriginWithLayout)
        {
          scrollDelegate2 = [(PUTilingView *)self scrollDelegate];
          [scrollDelegate2 tilingView:self initialVisibleOriginWithLayout:layout];
          v15 = v27;
          v14 = v28;
        }
      }

      else if (!_reasonForNextLayoutCoordinateSystemUpdate)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:940 description:@"no valid reason to update coordinate system"];
      }
    }

    [layout setCoordinateSystemOrigin:{v12 - v15, v13 - v14}];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v29 = array;
    v30 = [v29 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v40;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v40 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v39 + 1) + 8 * i);
          layoutInfo = [v34 layoutInfo];
          coordinateSystem2 = [layout coordinateSystem];
          v37 = [layoutInfo layoutInfoWithCoordinateSystem:coordinateSystem2];

          [v34 setLayoutInfo:v37];
        }

        v31 = [v29 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v31);
    }

    if (v38)
    {
      [(PUTilingView *)self _invalidateLayoutVisibleRect];
      [(PUTilingView *)self _updateLayoutVisibleRectIfNeeded];
      [(PUTilingView *)self _updateLayoutIfNeeded];
    }
  }
}

void __53__PUTilingView__updateLayoutCoordinateSystemIfNeeded__block_invoke(id *a1, void *a2)
{
  v9 = a2;
  v3 = [v9 layoutInfo];
  v4 = [v3 coordinateSystem];
  v5 = [a1[4] coordinateSystem];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [a1[5] fixedCoordinateSystem];
    v8 = [v3 layoutInfoWithCoordinateSystem:v7];

    [v9 setLayoutInfo:v8];
    [a1[6] addObject:v9];
    v3 = v8;
  }
}

- (void)_updateLayoutIfNeeded
{
  if ([(PUTilingView *)self _needsUpdateLayout])
  {
    [(PUTilingView *)self _setNeedsUpdateLayout:0];
    _pendingLayout = [(PUTilingView *)self _pendingLayout];
    if (_pendingLayout)
    {
      layout = [(PUTilingView *)self layout];
      [(PUTilingView *)self _setPendingLayout:0];
      [(PUTilingView *)self _setLayout:_pendingLayout];
      [_pendingLayout setTilingView:self];
      dataSource = [layout dataSource];
      dataSource2 = [_pendingLayout dataSource];
      v6 = dataSource2;
      if (dataSource2 != dataSource && ([dataSource2 isEqual:dataSource] & 1) == 0)
      {
        if (self->_tileTransitionDelegateFlags.respondsToDataSourceConverterForTransitionFromLayoutToLayout)
        {
          tileTransitionDelegate = [(PUTilingView *)self tileTransitionDelegate];
          v8 = [tileTransitionDelegate tilingView:self dataSourceConverterForTransitionFromLayout:layout toLayout:_pendingLayout];
        }

        else
        {
          v8 = objc_alloc_init(PUTilingDataSourceConverter);
        }

        [(PUTilingView *)self _transferTileControllersToDataSource:v6 usingDataSourceConverter:v8];
      }
    }

    layout2 = [(PUTilingView *)self layout];
    [layout2 prepareLayout];
  }
}

- (void)_updateIfNeeded
{
  [(PUTilingView *)self _updateLayoutVisibleRectIfNeeded];
  [(PUTilingView *)self _updateLayoutIfNeeded];
  [(PUTilingView *)self _updateLayoutCoordinateSystemIfNeeded];
  [(PUTilingView *)self _updateScrollViewPropertiesIfNeeded];
  [(PUTilingView *)self _updateTileControllersIfNeeded];
  [(PUTilingView *)self _updateTileControllersVisibleRectIfNeeded];
  [(PUTilingView *)self _updateReferencedDataSourcesIfNeeded];
  [(PUTilingView *)self _updateReferencedCoordinateSystemsIfNeeded];

  [(PUTilingView *)self _runPostLayoutBlocks];
}

- (void)_invalidateTileControllersWithTileTransitionCoordinator:(id)coordinator
{
  [(PUTilingView *)self _setTileTransitionCoordinatorForNextLayout:coordinator];
  [(PUTilingView *)self _setNeedsUpdateTileControllers:1];

  [(PUTilingView *)self _setNeedsUpdate];
}

- (void)_invalidateTileControllers
{
  [(PUTilingView *)self _setNeedsUpdateTileControllers:1];

  [(PUTilingView *)self _setNeedsUpdate];
}

- (void)_invalidateReferencedCoordinateSystems
{
  [(PUTilingView *)self _setNeedsUpdateReferencedCoordinateSystems:1];

  [(PUTilingView *)self _setNeedsUpdate];
}

- (void)_invalidateReferencedDataSources
{
  [(PUTilingView *)self _setNeedsUpdateReferencedDataSources:1];

  [(PUTilingView *)self _setNeedsUpdate];
}

- (void)_invalidateScrollViewProperties
{
  [(PUTilingView *)self _setNeedsUpdateScrollViewProperties:1];

  [(PUTilingView *)self _setNeedsUpdate];
}

- (void)_invalidateLayout
{
  [(PUTilingView *)self _setNeedsUpdateLayout:1];

  [(PUTilingView *)self _setNeedsUpdate];
}

- (void)_invalidateLayoutCoordinateSystemWithReason:(int64_t)reason
{
  [(PUTilingView *)self _setNeedsUpdateLayoutCoordinateSystem:1];
  [(PUTilingView *)self _setReasonForNextLayoutCoordinateSystemUpdate:reason];

  [(PUTilingView *)self _setNeedsUpdate];
}

- (void)_invalidateTileControllersVisibleRect
{
  [(PUTilingView *)self _setNeedsUpdateTileControllersVisibleRect:1];

  [(PUTilingView *)self _setNeedsUpdate];
}

- (void)_invalidateLayoutVisibleRect
{
  [(PUTilingView *)self _setNeedsUpdateLayoutVisibleRect:1];
  [(PUTilingView *)self _invalidateTileControllersVisibleRect];

  [(PUTilingView *)self _setNeedsUpdate];
}

- (void)invalidateLayout:(id)layout withContext:(id)context
{
  layoutCopy = layout;
  contextCopy = context;
  if (layoutCopy)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:782 description:{@"Invalid parameter not satisfying: %@", @"layout != nil"}];

    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:783 description:{@"Invalid parameter not satisfying: %@", @"invalidationContext != nil"}];

LABEL_3:
  layout = [(PUTilingView *)self layout];

  if (layout == layoutCopy)
  {
    [(PUTilingView *)self _invalidateLayout];
    if ([contextCopy invalidatedContentBounds])
    {
      [(PUTilingView *)self _invalidateScrollViewProperties];
    }

    if ([contextCopy invalidatedAnyTile])
    {
      if (self->_tileTransitionDelegateFlags.respondsToTileTransitionCoordinatorForLayoutInvalidationContext && (-[PUTilingView tileTransitionDelegate](self, "tileTransitionDelegate"), v9 = objc_claimAutoreleasedReturnValue(), [v9 tilingView:self tileTransitionCoordinatorForLayoutInvalidationContext:contextCopy], v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
      {
        [(PUTilingView *)self _invalidateTileControllersWithTileTransitionCoordinator:v10];
      }

      else
      {
        [(PUTilingView *)self _invalidateTileControllers];
      }
    }
  }
}

- (BOOL)isAnyTileControllerAnimating
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__PUTilingView_isAnyTileControllerAnimating__block_invoke;
  v4[3] = &unk_1E7B7ED30;
  v4[4] = &v5;
  [(PUTilingView *)self _enumerateAllTileControllersUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __44__PUTilingView_isAnyTileControllerAnimating__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isAnimating];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (id)_createTileControllerWithIndexPath:(id)path kind:(id)kind dataSource:(id)source tileSource:(id)tileSource
{
  pathCopy = path;
  kindCopy = kind;
  sourceCopy = source;
  tileSourceCopy = tileSource;
  if (!tileSourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:762 description:{@"Invalid parameter not satisfying: %@", @"tileSource != nil"}];
  }

  v15 = [tileSourceCopy tilingView:self tileControllerWithIndexPath:pathCopy kind:kindCopy dataSource:sourceCopy];
  if (!v15)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:764 description:{@"no tile controller returned for {%@, %@}", pathCopy, kindCopy}];
  }

  return v15;
}

- (void)_enumerateActiveTileControllersUsingBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:750 description:{@"Invalid parameter not satisfying: %@", @"enumerationBlock != NULL"}];
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  _activeTileControllers = [(PUTilingView *)self _activeTileControllers];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PUTilingView__enumerateActiveTileControllersUsingBlock___block_invoke;
  v9[3] = &unk_1E7B7ECE0;
  v7 = blockCopy;
  v10 = v7;
  v11 = v12;
  [_activeTileControllers enumerateObjectsUsingBlock:v9];

  _Block_object_dispose(v12, 8);
}

uint64_t __58__PUTilingView__enumerateActiveTileControllersUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

- (void)_enumerateAllTileControllersUsingBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:730 description:{@"Invalid parameter not satisfying: %@", @"enumerationBlock != NULL"}];
  }

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PUTilingView__enumerateAllTileControllersUsingBlock___block_invoke;
  aBlock[3] = &unk_1E7B7ED08;
  v14 = v15;
  v6 = blockCopy;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  _activeTileControllers = [(PUTilingView *)self _activeTileControllers];
  v7[2](v7, _activeTileControllers);

  _inactiveTileControllers = [(PUTilingView *)self _inactiveTileControllers];
  v7[2](v7, _inactiveTileControllers);

  _detachedTileControllers = [(PUTilingView *)self _detachedTileControllers];
  v7[2](v7, _detachedTileControllers);

  _Block_object_dispose(v15, 8);
}

void __55__PUTilingView__enumerateAllTileControllersUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__PUTilingView__enumerateAllTileControllersUsingBlock___block_invoke_2;
    v6[3] = &unk_1E7B7ECE0;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v4;
    v8 = v5;
    [a2 enumerateObjectsUsingBlock:v6];
  }
}

uint64_t __55__PUTilingView__enumerateAllTileControllersUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

- (void)enumerateAllTileControllersUsingBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:722 description:{@"Invalid parameter not satisfying: %@", @"enumerationBlock != NULL"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__PUTilingView_enumerateAllTileControllersUsingBlock___block_invoke;
  v8[3] = &unk_1E7B7ECB8;
  v9 = blockCopy;
  v6 = blockCopy;
  [(PUTilingView *)self _enumerateAllTileControllersUsingBlock:v8];
}

- (id)tileControllerWithIndexPath:(id)path kind:(id)kind dataSourceIdentifier:(id)identifier
{
  pathCopy = path;
  kindCopy = kind;
  identifierCopy = identifier;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__87409;
  v38 = __Block_byref_object_dispose__87410;
  v39 = [(PUTilingView *)self presentedTileControllerWithIndexPath:pathCopy kind:kindCopy dataSourceIdentifier:identifierCopy];
  v11 = v35[5];
  if (!v11)
  {
    layout = [(PUTilingView *)self layout];
    v13 = [layout layoutInfoForTileWithIndexPath:pathCopy kind:kindCopy];

    if (v13)
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__87409;
      v32 = __Block_byref_object_dispose__87410;
      v33 = 0;
      _inactiveTileControllers = [(PUTilingView *)self _inactiveTileControllers];
      tileIdentifier = [v13 tileIdentifier];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __70__PUTilingView_tileControllerWithIndexPath_kind_dataSourceIdentifier___block_invoke;
      v27[3] = &unk_1E7B7EC90;
      v27[4] = &v34;
      v27[5] = &v28;
      [_inactiveTileControllers enumerateObjectsWithTileIdentifier:tileIdentifier usingBlock:v27];

      if (!v35[5])
      {
        v16 = v29[5];
        if (!v16 || (objc_storeStrong(v35 + 5, v16), !v35[5]))
        {
          dataSourceIdentifier = [v13 dataSourceIdentifier];
          v18 = [(PUTilingView *)self _dataSourceWithIdentifier:dataSourceIdentifier];

          tileSource = [(PUTilingView *)self tileSource];
          v20 = [(PUTilingView *)self _createTileControllerWithIndexPath:pathCopy kind:kindCopy dataSource:v18 tileSource:tileSource];
          v21 = v35[5];
          v35[5] = v20;

          _inactiveTileControllers2 = [(PUTilingView *)self _inactiveTileControllers];
          v23 = v35[5];
          tileIdentifier2 = [v13 tileIdentifier];
          [_inactiveTileControllers2 addObject:v23 withTileIdentifier:tileIdentifier2];
        }
      }

      _Block_object_dispose(&v28, 8);
    }

    v11 = v35[5];
  }

  v25 = v11;
  _Block_object_dispose(&v34, 8);

  return v25;
}

void __70__PUTilingView_tileControllerWithIndexPath_kind_dataSourceIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (([v6 isAnimating] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)enumeratePresentedTileControllersInRect:(CGRect)rect usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v35 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:648 description:{@"Invalid parameter not satisfying: %@", @"enumerationBlock != NULL"}];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __67__PUTilingView_enumeratePresentedTileControllersInRect_usingBlock___block_invoke;
  v28[3] = &unk_1E7B7EC48;
  v28[4] = self;
  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  v12 = dictionary;
  v29 = v12;
  [(PUTilingView *)self _enumerateAllTileControllersUsingBlock:v28];
  allKeys = [v12 allKeys];
  v14 = [allKeys sortedArrayUsingComparator:&__block_literal_global_87488];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
LABEL_5:
    v19 = 0;
    while (1)
    {
      if (*v25 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v24 + 1) + 8 * v19);
      v21 = [v12 objectForKeyedSubscript:v20];
      v23 = 0;
      blockCopy[2](blockCopy, v21, v20, &v23);
      LOBYTE(v20) = v23;

      if (v20)
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v24 objects:v34 count:16];
        if (v17)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

void __67__PUTilingView_enumeratePresentedTileControllersInRect_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v26 = a2;
  v3 = [v26 layoutInfo];

  if (v3)
  {
    v4 = [v26 presentationLayoutInfo];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v4 hitTestOutset];
    PXEdgeInsetsInvert();
    v14 = v6 + v13;
    v16 = v8 + v15;
    v18 = v10 - (v13 + v17);
    v20 = v12 - (v15 + v19);
    v21 = [v4 coordinateSystem];
    v22 = [*(a1 + 32) contentCoordinateSystem];
    v23 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v21, v22, v14, v16);
    v25 = v24;

    v28.origin.x = v23;
    v28.origin.y = v25;
    v28.size.width = v18;
    v28.size.height = v20;
    if (CGRectIntersectsRect(*(a1 + 48), v28) && [v26 isPresentationActive])
    {
      [*(a1 + 40) setObject:v26 forKeyedSubscript:v4];
    }
  }
}

uint64_t __67__PUTilingView_enumeratePresentedTileControllersInRect_usingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 zPosition];
  v6 = v5;
  [v4 zPosition];
  v8 = v7;

  v9.n128_u64[0] = v6;
  v10.n128_u64[0] = v8;

  return MEMORY[0x1EEE2DD18](v9, v10);
}

- (id)presentedTileControllerWithIndexPath:(id)path kind:(id)kind dataSourceIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  kindCopy = kind;
  identifierCopy = identifier;
  v11 = identifierCopy;
  if (pathCopy && kindCopy && identifierCopy)
  {
    v12 = [[PUTileIdentifier alloc] initWithIndexPath:pathCopy tileKind:kindCopy dataSourceIdentifier:identifierCopy];
    _activeTileControllers = [(PUTilingView *)self _activeTileControllers];
    v14 = [_activeTileControllers objectWithTileIdentifier:v12];

    if (!v14)
    {
      _detachedTileControllers = [(PUTilingView *)self _detachedTileControllers];
      v14 = [_detachedTileControllers objectWithTileIdentifier:v12];
    }
  }

  else
  {
    v16 = PLOneUpGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138412802;
      v19 = pathCopy;
      v20 = 2112;
      v21 = kindCopy;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEBUG, "presentedTileControllerWithIndexPath invoked with indexPath %@ tileKind %@ dataSourceIdentifier %@", &v18, 0x20u);
    }

    v14 = 0;
  }

  return v14;
}

- (void)reattachTileControllers:(id)controllers withContext:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  contextCopy = context;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [controllersCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(controllersCopy);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([v12 isDetached])
        {
          if (([v12 isActive] & 1) == 0)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:608 description:{@"Invalid parameter not satisfying: %@", @"[tileController isActive] == YES"}];
          }

          presentationLayoutInfo = [v12 presentationLayoutInfo];
          _detachedTileControllers = [(PUTilingView *)self _detachedTileControllers];
          tileIdentifier = [presentationLayoutInfo tileIdentifier];
          [_detachedTileControllers removeObject:v12 withTileIdentifier:tileIdentifier];

          [v12 setDetached:0];
          [v12 setLayoutInfo:presentationLayoutInfo];
        }
      }

      v9 = [controllersCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  if (self->_tileTransitionDelegateFlags.respondsToTileTransitionCoordinatorForReattachedTileControllers)
  {
    tileTransitionDelegate = [(PUTilingView *)self tileTransitionDelegate];
    v18 = [tileTransitionDelegate tilingView:self tileTransitionCoordinatorForReattachedTileControllers:controllersCopy context:contextCopy];
  }

  else
  {
    v18 = 0;
  }

  [(PUTilingView *)self _invalidateTileControllersWithTileTransitionCoordinator:v18];
  [(PUTilingView *)self _invalidateReferencedDataSources];
  [(PUTilingView *)self _invalidateReferencedCoordinateSystems];
  [(PUTilingView *)self _updateIfNeeded];
}

- (id)freezeTileController:(id)controller
{
  controllerCopy = controller;
  tilingView = [controllerCopy tilingView];

  if (tilingView != self)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:595 description:{@"Invalid parameter not satisfying: %@", @"[tileController tilingView] == self"}];
  }

  tileAnimator = [(PUTilingView *)self tileAnimator];
  v8 = tileAnimator;
  if (tileAnimator)
  {
    [tileAnimator freezeTileController:controllerCopy];
  }

  else
  {
    [controllerCopy freeze];
  }
  v9 = ;

  return v9;
}

- (void)detachTileControllers:(id)controllers
{
  v32 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [controllersCopy countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(controllersCopy);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if (([v10 isDetached] & 1) == 0)
        {
          layoutInfo = [v10 layoutInfo];
          if (!layoutInfo)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:581 description:{@"Invalid parameter not satisfying: %@", @"layoutInfo != nil"}];
          }

          _detachedTileControllers = [(PUTilingView *)self _detachedTileControllers];
          tileIdentifier = [layoutInfo tileIdentifier];
          [_detachedTileControllers addObject:v10 withTileIdentifier:tileIdentifier];
        }
      }

      v7 = [controllersCopy countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  [(PUTilingView *)self _invalidateTileControllersWithTileTransitionCoordinator:0];
  [(PUTilingView *)self _updateIfNeeded];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = controllersCopy;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v22 + 1) + 8 * j);
        if (([v20 isActive] & 1) == 0)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:589 description:{@"Invalid parameter not satisfying: %@", @"[tileController isActive] == YES"}];
        }

        [v20 setDetached:1];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }
}

- (void)_applyPendingUpdates
{
  _pendingUpdateItems = [(PUTilingView *)self _pendingUpdateItems];
  layout = [(PUTilingView *)self layout];
  [layout invalidateLayoutForUpdateWithItems:_pendingUpdateItems];
  [(PUTilingView *)self _invalidateLayoutCoordinateSystemWithReason:3];
  [(PUTilingView *)self _invalidateLayout];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __36__PUTilingView__applyPendingUpdates__block_invoke;
  v15 = &unk_1E7B7EC20;
  selfCopy = self;
  v5 = _pendingUpdateItems;
  v17 = v5;
  v6 = _Block_copy(&v12);
  v7 = [(PUTilingView *)self _activeTileControllers:v12];
  v6[2](v6, v7);

  _inactiveTileControllers = [(PUTilingView *)self _inactiveTileControllers];
  v6[2](v6, _inactiveTileControllers);

  _detachedTileControllers = [(PUTilingView *)self _detachedTileControllers];
  v6[2](v6, _detachedTileControllers);

  if (self->_tileTransitionDelegateFlags.respondsToTileTransitionCoordinatorForUpdateWithItems)
  {
    tileTransitionDelegate = [(PUTilingView *)self tileTransitionDelegate];
    v11 = [tileTransitionDelegate tilingView:self tileTransitionCoordinatorForUpdateWithItems:v5];
  }

  else
  {
    v11 = 0;
  }

  [(PUTilingView *)self _invalidateTileControllersWithTileTransitionCoordinator:v11];
  [v5 removeAllObjects];
}

void __36__PUTilingView__applyPendingUpdates__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  [v3 removeAllObjects];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__PUTilingView__applyPendingUpdates__block_invoke_2;
  v8[3] = &unk_1E7B7EBF8;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v4;
  v11 = v3;
  v6 = v3;
  v7 = v4;
  [v7 enumerateObjectsUsingBlock:v8];
}

void __36__PUTilingView__applyPendingUpdates__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 indexPath];
  v8 = *(a1 + 32);
  v9 = [v6 dataSourceIdentifier];
  v10 = [v8 _dataSourceWithIdentifier:v9];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = *(a1 + 40);
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
LABEL_3:
    v15 = 0;
    v16 = v7;
    while (1)
    {
      if (*v33 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v7 = [*(*(&v32 + 1) + 8 * v15) transformedIndexPath:v16 withDataSource:v10];

      if (![v7 pu_isValid])
      {
        break;
      }

      ++v15;
      v16 = v7;
      if (v13 == v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v17 = [v6 indexPath];
  v18 = [v7 isEqual:v17];

  if ((v18 & 1) == 0)
  {
    v19 = [v5 layoutInfo];
    v20 = [v19 tileKind];
    v21 = [v19 dataSourceIdentifier];
    if ([*(a1 + 48) useUniqueLeafs] && (objc_msgSend(v7, "pu_isValid") & 1) == 0)
    {
      v31 = v5;
      while (1)
      {
        v22 = *(a1 + 56);
        v23 = [[PUTileIdentifier alloc] initWithIndexPath:v7 tileKind:v20 dataSourceIdentifier:v21];
        v24 = [v22 objectWithTileIdentifier:v23];

        if (!v24)
        {
          break;
        }

        v25 = [v7 indexPathByAddingIndex:0x7FFFFFFFFFFFFFFFLL];

        v7 = v25;
      }

      v5 = v31;
    }

    v26 = [v19 layoutInfoWithIndexPath:v7 tileKind:v20 dataSourceIdentifier:v21];

    [v5 setLayoutInfo:v26];
  }

  v27 = [PUTileIdentifier alloc];
  v28 = [v6 tileKind];
  v29 = [v6 dataSourceIdentifier];
  v30 = [(PUTileIdentifier *)v27 initWithIndexPath:v7 tileKind:v28 dataSourceIdentifier:v29];

  [*(a1 + 56) addObject:v5 withTileIdentifier:v30];
}

- (void)reloadItemAtIndexPath:(id)path dataSource:(id)source
{
  pathCopy = path;
  sourceCopy = source;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__PUTilingView_reloadItemAtIndexPath_dataSource___block_invoke;
  v10[3] = &unk_1E7B809F0;
  v11 = pathCopy;
  v12 = sourceCopy;
  selfCopy = self;
  v8 = sourceCopy;
  v9 = pathCopy;
  [(PUTilingView *)self performBatchUpdates:v10];
}

void __49__PUTilingView_reloadItemAtIndexPath_dataSource___block_invoke(uint64_t a1)
{
  v3 = [[PUTilingViewUpdateItem alloc] initWithAction:4 indexPathBeforeUpdate:*(a1 + 32) indexPathAfterUpdate:0 dataSource:*(a1 + 40)];
  v2 = [*(a1 + 48) _pendingUpdateItems];
  [v2 addObject:v3];
}

- (void)moveItemFromIndexPath:(id)path toIndexPath:(id)indexPath dataSource:(id)source
{
  pathCopy = path;
  indexPathCopy = indexPath;
  sourceCopy = source;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__PUTilingView_moveItemFromIndexPath_toIndexPath_dataSource___block_invoke;
  v14[3] = &unk_1E7B7F1D0;
  v15 = pathCopy;
  v16 = indexPathCopy;
  v17 = sourceCopy;
  selfCopy = self;
  v11 = sourceCopy;
  v12 = indexPathCopy;
  v13 = pathCopy;
  [(PUTilingView *)self performBatchUpdates:v14];
}

void __61__PUTilingView_moveItemFromIndexPath_toIndexPath_dataSource___block_invoke(uint64_t a1)
{
  v3 = [[PUTilingViewUpdateItem alloc] initWithAction:3 indexPathBeforeUpdate:*(a1 + 32) indexPathAfterUpdate:*(a1 + 40) dataSource:*(a1 + 48)];
  v2 = [*(a1 + 56) _pendingUpdateItems];
  [v2 addObject:v3];
}

- (void)deleteItemAtIndexPath:(id)path dataSource:(id)source
{
  pathCopy = path;
  sourceCopy = source;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__PUTilingView_deleteItemAtIndexPath_dataSource___block_invoke;
  v10[3] = &unk_1E7B809F0;
  v11 = pathCopy;
  v12 = sourceCopy;
  selfCopy = self;
  v8 = sourceCopy;
  v9 = pathCopy;
  [(PUTilingView *)self performBatchUpdates:v10];
}

void __49__PUTilingView_deleteItemAtIndexPath_dataSource___block_invoke(uint64_t a1)
{
  v3 = [[PUTilingViewUpdateItem alloc] initWithAction:2 indexPathBeforeUpdate:*(a1 + 32) indexPathAfterUpdate:0 dataSource:*(a1 + 40)];
  v2 = [*(a1 + 48) _pendingUpdateItems];
  [v2 addObject:v3];
}

- (void)insertItemAtIndexPath:(id)path dataSource:(id)source
{
  pathCopy = path;
  sourceCopy = source;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__PUTilingView_insertItemAtIndexPath_dataSource___block_invoke;
  v10[3] = &unk_1E7B809F0;
  v11 = pathCopy;
  v12 = sourceCopy;
  selfCopy = self;
  v8 = sourceCopy;
  v9 = pathCopy;
  [(PUTilingView *)self performBatchUpdates:v10];
}

void __49__PUTilingView_insertItemAtIndexPath_dataSource___block_invoke(uint64_t a1)
{
  v3 = [[PUTilingViewUpdateItem alloc] initWithAction:1 indexPathBeforeUpdate:0 indexPathAfterUpdate:*(a1 + 32) dataSource:*(a1 + 40)];
  v2 = [*(a1 + 48) _pendingUpdateItems];
  [v2 addObject:v3];
}

- (void)performBatchUpdates:(id)updates
{
  updatesCopy = updates;
  if (!updatesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:470 description:{@"Invalid parameter not satisfying: %@", @"updates != NULL"}];
  }

  _isPerformingBatchUpdates = [(PUTilingView *)self _isPerformingBatchUpdates];
  [(PUTilingView *)self _setPerformingBatchUpdates:1];
  updatesCopy[2]();
  [(PUTilingView *)self _setPerformingBatchUpdates:_isPerformingBatchUpdates];
  if (!_isPerformingBatchUpdates)
  {
    [(PUTilingView *)self _applyPendingUpdates];
  }
}

- (void)transitionToLayout:(id)layout withContext:(id)context animationSetupCompletionHandler:(id)handler
{
  layoutCopy = layout;
  contextCopy = context;
  handlerCopy = handler;
  if (!layoutCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:431 description:{@"Invalid parameter not satisfying: %@", @"layout != nil"}];
  }

  [(PUTilingView *)self _setPendingLayout:0];
  layout = [(PUTilingView *)self layout];
  if (layout != layoutCopy)
  {
    [(PUTilingView *)self _setPendingLayout:layoutCopy];
    [(PUTilingView *)self _invalidateLayout];
    [(PUTilingView *)self _invalidateReferencedDataSources];
    [(PUTilingView *)self _invalidateReferencedCoordinateSystems];
    [(PUTilingView *)self _invalidateLayoutVisibleRect];
    [(PUTilingView *)self _invalidateLayoutCoordinateSystemWithReason:1];
    [(PUTilingView *)self _invalidateScrollViewProperties];
    if (self->_tileTransitionDelegateFlags.respondsToTileTransitionCoordinatorForTransitionFromLayoutWithContext)
    {
      tileTransitionDelegate = [(PUTilingView *)self tileTransitionDelegate];
      v14 = [tileTransitionDelegate tilingView:self tileTransitionCoordinatorForTransitionFromLayout:layout toLayout:layoutCopy withContext:contextCopy];

      if (!handlerCopy)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v14 = 0;
      if (!handlerCopy)
      {
LABEL_11:
        [(PUTilingView *)self _invalidateTileControllersWithTileTransitionCoordinator:v14];

        goto LABEL_12;
      }
    }

    onNextTileControllersUpdateBlock = [(PUTilingView *)self onNextTileControllersUpdateBlock];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __79__PUTilingView_transitionToLayout_withContext_animationSetupCompletionHandler___block_invoke;
    v18[3] = &unk_1E7B7EBD0;
    v19 = onNextTileControllersUpdateBlock;
    v20 = handlerCopy;
    v16 = onNextTileControllersUpdateBlock;
    [(PUTilingView *)self setOnNextTileControllersUpdateBlock:v18];

    goto LABEL_11;
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_12:
}

void __79__PUTilingView_transitionToLayout_withContext_animationSetupCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)tileControllerDidEndAnimating:(id)animating
{
  if (self->_tileUseDelegateFlags.respondsToDidEndAnimatingTileControllers && ![(PUTilingView *)self isAnyTileControllerAnimating])
  {
    tileUseDelegate = [(PUTilingView *)self tileUseDelegate];
    [tileUseDelegate tilingViewDidEndAnimatingTileControllers:self];
  }
}

- (void)enqueueTileControllerForReuse:(id)reuse
{
  reuseCopy = reuse;
  [reuseCopy becomeReusable];
  layoutInfo = [reuseCopy layoutInfo];
  if (!layoutInfo)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:395 description:{@"Invalid parameter not satisfying: %@", @"layoutInfo != nil"}];
  }

  _inactiveTileControllers = [(PUTilingView *)self _inactiveTileControllers];
  tileIdentifier = [layoutInfo tileIdentifier];
  [_inactiveTileControllers removeObject:reuseCopy withTileIdentifier:tileIdentifier];

  reuseIdentifier = [reuseCopy reuseIdentifier];
  _tileControllerReuseQueue = [(PUTilingView *)self _tileControllerReuseQueue];
  [_tileControllerReuseQueue enqueueObjectForReuse:reuseCopy withReuseIdentifier:reuseIdentifier];

  layout = [(PUTilingView *)self layout];
  dataSourceIdentifier = [layoutInfo dataSourceIdentifier];
  dataSource = [layout dataSource];
  identifier = [dataSource identifier];
  v14 = [dataSourceIdentifier isEqualToString:identifier];

  if ((v14 & 1) == 0)
  {
    [(PUTilingView *)self _invalidateReferencedDataSources];
  }

  coordinateSystem = [layoutInfo coordinateSystem];
  coordinateSystem2 = [layout coordinateSystem];
  v17 = [coordinateSystem isEqual:coordinateSystem2];

  if ((v17 & 1) == 0)
  {
    [(PUTilingView *)self _invalidateReferencedCoordinateSystems];
  }

  if (self->_tileUseDelegateFlags.respondsToDidStopUsingTileController)
  {
    tileUseDelegate = [(PUTilingView *)self tileUseDelegate];
    [tileUseDelegate tilingView:self didStopUsingTileController:reuseCopy];
  }
}

- (id)dequeueTileControllerWithReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  _tileControllerReuseQueue = [(PUTilingView *)self _tileControllerReuseQueue];
  v7 = [_tileControllerReuseQueue dequeueObjectWithReuseIdentifier:identifierCopy isReused:&v13];

  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:374 description:{@"No tile controller class has been registered for reuse identifier '%@'.", identifierCopy}];
  }

  if (v13)
  {
    [v7 prepareForReuse];
    tilingView = [v7 tilingView];

    if (tilingView != self)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:381 description:{@"Invalid parameter not satisfying: %@", @"[tileController tilingView] == self"}];
    }
  }

  else
  {
    [v7 setTilingView:self];
    [v7 addToTilingView:self];
  }

  if (self->_tileUseDelegateFlags.respondsToWillStartUsingTileController)
  {
    tileUseDelegate = [(PUTilingView *)self tileUseDelegate];
    [tileUseDelegate tilingView:self willStartUsingTileController:v7];
  }

  return v7;
}

- (void)registerTileControllerClass:(Class)class forReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:357 description:{@"Invalid parameter not satisfying: %@", @"[tileControllerClass isSubclassOfClass:[PUTileController class]]"}];
  }

  _tileControllerReuseQueue = [(PUTilingView *)self _tileControllerReuseQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__PUTilingView_registerTileControllerClass_forReuseIdentifier___block_invoke;
  v11[3] = &unk_1E7B7EBA8;
  v12 = identifierCopy;
  classCopy = class;
  v9 = identifierCopy;
  [_tileControllerReuseQueue registerObjectCreationBlock:v11 withReuseIdentifier:v9];
}

id __63__PUTilingView_registerTileControllerClass_forReuseIdentifier___block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 40)) initWithReuseIdentifier:*(a1 + 32)];

  return v1;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PUTilingView;
  [(PUTilingView *)&v3 didMoveToWindow];
  [(PXDisplayScreenDynamicRangeMonitor *)self->_screenDynamicRangeMonitor stopMonitoring];
  [(PUTilingView *)self _startHeadroomMonitoringIfPossible];
}

- (void)configureDynamicRangeProperties
{
  if (PXSupportsImageModulation() && (PXUserAllowFullHDR() & 1) != 0)
  {
    v3 = _UIAccessibilityReduceWhitePoint() ^ 1;
    [(PUTilingView *)self setShouldDisplayHDR:v3];
    if (v3)
    {
      mEMORY[0x1E69C35F8] = [MEMORY[0x1E69C35F8] sharedInstance];
      -[PUTilingView setAllowEDRHeadroomMonitoring:](self, "setAllowEDRHeadroomMonitoring:", [mEMORY[0x1E69C35F8] enableHeadroomMonitoring]);

      return;
    }
  }

  else
  {
    [(PUTilingView *)self setShouldDisplayHDR:0];
  }

  [(PUTilingView *)self setAllowEDRHeadroomMonitoring:0];
}

- (void)_startHeadroomMonitoringIfPossible
{
  window = [(PUTilingView *)self window];

  if (window)
  {
    objc_initWeak(&location, self);
    screenDynamicRangeMonitor = self->_screenDynamicRangeMonitor;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__PUTilingView__startHeadroomMonitoringIfPossible__block_invoke;
    v5[3] = &unk_1E7B7EB80;
    objc_copyWeak(&v6, &location);
    [(PXDisplayScreenDynamicRangeMonitor *)screenDynamicRangeMonitor startMonitoringWithScreenProvider:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

id __50__PUTilingView__startHeadroomMonitoringIfPossible__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained window];

  if (!v2)
  {
    v3 = PLOneUpGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEBUG, "Window not found, monitoring will not return accurate results", v6, 2u);
    }
  }

  v4 = [v2 screen];

  return v4;
}

- (void)setAllowEDRHeadroomMonitoring:(BOOL)monitoring
{
  if (self->_allowEDRHeadroomMonitoring != monitoring)
  {
    self->_allowEDRHeadroomMonitoring = monitoring;
    screenDynamicRangeMonitor = self->_screenDynamicRangeMonitor;
    if (monitoring)
    {
      if (!screenDynamicRangeMonitor)
      {
        v5 = [objc_alloc(MEMORY[0x1E69C3480]) initWithAutomaticApplicationStateTracking:1];
        v6 = self->_screenDynamicRangeMonitor;
        self->_screenDynamicRangeMonitor = v5;
      }

      [(PUTilingView *)self _startHeadroomMonitoringIfPossible];
    }

    else
    {
      [(PXDisplayScreenDynamicRangeMonitor *)screenDynamicRangeMonitor stopMonitoring];
      v7 = self->_screenDynamicRangeMonitor;
      self->_screenDynamicRangeMonitor = 0;
    }
  }
}

- (void)setLoadingInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_loadingInsets.top, v3), vceqq_f64(*&self->_loadingInsets.bottom, v4)))) & 1) == 0)
  {
    self->_loadingInsets = insets;
    [(PUTilingView *)self _invalidateLayoutVisibleRect];

    [(PUTilingView *)self _invalidateTileControllers];
  }
}

- (void)_adjustScrollViewPagingDeceleration
{
  [(PUTilingView *)self bounds];
  v4 = 1024.0;
  if (v3 <= 1024.0)
  {
    v4 = v3;
  }

  v5 = v4 * -0.000000184659091 + 0.000359090909;
  v6 = v4 * 0.00000994318182 + 0.966818182;
  [(PUTilingView *)self _pagingSpringPullAdjustment];
  v8 = exp(v7 * 0.1) * v5;
  [(PUTilingView *)self _pagingFrictionAdjustment];
  v10 = 1.0 - (1.0 - v6) * exp(v9 * 0.1);

  [(UIScrollView *)self pu_configurePagingWithSpringPull:v8 friction:v10];
}

- (void)_handleChangeFromBounds:(CGRect)bounds fromFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(PUTilingView *)self _invalidateLayoutVisibleRect:bounds.origin.x];
  [(PUTilingView *)self _invalidateTileControllers];
  [(PUTilingView *)self frame];
  if (width != v11 || height != v12)
  {
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v17 = v12;
    v22 = y;
    v18 = 0;
    if ([MEMORY[0x1E69DD250] _isInAnimationBlock])
    {
      [MEMORY[0x1E69DD250] _currentAnimationDuration];
      v18 = v19;
    }

    if (self->_tileTransitionDelegateFlags.respondsToTileTransitionCoordinatorForChangeFromFrame)
    {
      tileTransitionDelegate = [(PUTilingView *)self tileTransitionDelegate];
      v21 = [tileTransitionDelegate tilingView:self tileTransitionCoordinatorForChangeFromFrame:x toFrame:v22 duration:{width, height, v14, v15, v16, v17, v18}];
    }

    else
    {
      v21 = 0;
    }

    [(PUTilingView *)self _invalidateLayoutCoordinateSystemWithReason:2];
    [(PUTilingView *)self _invalidateScrollViewProperties];
    [(PUTilingView *)self _invalidateTileControllersWithTileTransitionCoordinator:v21];
  }

  [(PUTilingView *)self _adjustScrollViewPagingDeceleration];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(PUTilingView *)self isUserInteractionEnabled])
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__87409;
    v27 = __Block_byref_object_dispose__87410;
    v28 = 0;
    if ([(PUTilingView *)self pointInside:eventCopy withEvent:x, y])
    {
      objc_storeStrong(v24 + 5, self);
      [(PUTilingView *)self bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __34__PUTilingView_hitTest_withEvent___block_invoke;
      v18[3] = &unk_1E7B7EB58;
      v21 = x;
      v22 = y;
      v18[4] = self;
      v19 = eventCopy;
      v20 = &v23;
      [(PUTilingView *)self enumeratePresentedTileControllersInRect:v18 usingBlock:v9, v11, v13, v15];
    }

    v16 = v24[5];
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __34__PUTilingView_hitTest_withEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v15;
  if (isKindOfClass)
  {
    v8 = [v15 view];
    [v8 convertPoint:*(a1 + 32) fromView:{*(a1 + 56), *(a1 + 64)}];
    v10 = v9;
    v12 = v11;
    if ([v8 isUserInteractionEnabled])
    {
      v13 = [v8 hitTest:*(a1 + 40) withEvent:{v10, v12}];
      if (v13)
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v13);
        *a4 = 1;
      }
    }

    v7 = v15;
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass, v7);
}

- (void)layoutSublayersOfLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = PUTilingView;
  [(PUTilingView *)&v4 layoutSublayersOfLayer:layer];
  [(PUTilingView *)self _updateIfNeeded];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(PUTilingView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v26.origin.x = v9;
  v26.origin.y = v11;
  v26.size.width = v13;
  v26.size.height = v15;
  if (!CGRectEqualToRect(v25, v26))
  {
    [(PUTilingView *)self bounds];
    v22 = v17;
    v23 = v16;
    v20 = v19;
    v21 = v18;
    v24.receiver = self;
    v24.super_class = PUTilingView;
    [(PUTilingView *)&v24 setFrame:x, y, width, height];
    [(PUTilingView *)self _handleChangeFromBounds:v23 fromFrame:v22, v21, v20, v9, v11, v13, v15];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(PUTilingView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v26.origin.x = v9;
  v26.origin.y = v11;
  v26.size.width = v13;
  v26.size.height = v15;
  if (!CGRectEqualToRect(v25, v26))
  {
    [(PUTilingView *)self frame];
    v22 = v17;
    v23 = v16;
    v20 = v19;
    v21 = v18;
    v24.receiver = self;
    v24.super_class = PUTilingView;
    [(PUTilingView *)&v24 setBounds:x, y, width, height];
    [(PUTilingView *)self _handleChangeFromBounds:v9 fromFrame:v11, v13, v15, v23, v22, v21, v20];
  }
}

- (void)setTileUseDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_tileUseDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_tileUseDelegate, obj);
    p_tileUseDelegateFlags = &self->_tileUseDelegateFlags;
    p_tileUseDelegateFlags->respondsToWillStartUsingTileController = objc_opt_respondsToSelector() & 1;
    p_tileUseDelegateFlags->respondsToDidStopUsingTileController = objc_opt_respondsToSelector() & 1;
    p_tileUseDelegateFlags->respondsToDidUpdateTileControllers = objc_opt_respondsToSelector() & 1;
    p_tileUseDelegateFlags->respondsToDidEndAnimatingTileControllers = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setScrollDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_scrollDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_scrollDelegate, obj);
    p_scrollDelegateFlags = &self->_scrollDelegateFlags;
    p_scrollDelegateFlags->respondsToScrollInfoWithLayout = objc_opt_respondsToSelector() & 1;
    p_scrollDelegateFlags->respondsToInitialVisibleOriginWithLayout = objc_opt_respondsToSelector() & 1;
    p_scrollDelegateFlags->respondsToTargetVisibleOriginForProposedVisibleOrigin = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setTileTransitionDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_tileTransitionDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_tileTransitionDelegate, obj);
    p_tileTransitionDelegateFlags = &self->_tileTransitionDelegateFlags;
    p_tileTransitionDelegateFlags->respondsToDataSourceConverterForTransitionFromLayoutToLayout = objc_opt_respondsToSelector() & 1;
    p_tileTransitionDelegateFlags->respondsToTileTransitionCoordinatorForTransitionFromLayoutWithContext = objc_opt_respondsToSelector() & 1;
    p_tileTransitionDelegateFlags->respondsToTileTransitionCoordinatorForUpdateWithItems = objc_opt_respondsToSelector() & 1;
    p_tileTransitionDelegateFlags->respondsToTileTransitionCoordinatorForChangeFromFrame = objc_opt_respondsToSelector() & 1;
    p_tileTransitionDelegateFlags->respondsToTileTransitionCoordinatorForReattachedTileControllers = objc_opt_respondsToSelector() & 1;
    p_tileTransitionDelegateFlags->respondsToTileTransitionCoordinatorForLayoutInvalidationContext = objc_opt_respondsToSelector() & 1;
    p_tileTransitionDelegateFlags->respondsToCanBypass20069585Check = objc_opt_respondsToSelector() & 1;
  }
}

- (PUTilingView)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:164 description:@"unsupported initializer"];

  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);

  return [(PUTilingView *)self initWithFrame:0 layout:v6, v7, v8, v9];
}

- (PUTilingView)initWithFrame:(CGRect)frame layout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  if (!layoutCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingView.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"layout != nil"}];
  }

  v39.receiver = self;
  v39.super_class = PUTilingView;
  height = [(PUTilingView *)&v39 initWithFrame:x, y, width, height];
  v13 = height;
  if (height)
  {
    objc_storeStrong(&height->_layout, layout);
    [(PUTilingLayout *)v13->_layout setTilingView:v13];
    v13->__reasonForNextLayoutCoordinateSystemUpdate = 1;
    v14 = [(PUTilingViewCoordinateSystem *)[PUTilingViewContentCoordinateSystem alloc] initWithTilingView:v13];
    contentCoordinateSystem = v13->_contentCoordinateSystem;
    v13->_contentCoordinateSystem = v14;

    v16 = [(PUTilingViewCoordinateSystem *)[PUTilingViewFixedCoordinateSystem alloc] initWithTilingView:v13];
    fixedCoordinateSystem = v13->_fixedCoordinateSystem;
    v13->_fixedCoordinateSystem = v16;

    v18 = objc_alloc_init(PUReuseQueue);
    tileControllerReuseQueue = v13->__tileControllerReuseQueue;
    v13->__tileControllerReuseQueue = v18;

    v20 = v13->__tileControllerReuseQueue;
    v21 = +[PUTilingViewSettings sharedInstance];
    -[PUReuseQueue setReuseEnabled:](v20, "setReuseEnabled:", [v21 allowTileReuse]);

    v22 = [[PUTileTree alloc] initUsingUniqueLeafs:1];
    activeTileControllers = v13->__activeTileControllers;
    v13->__activeTileControllers = v22;

    v24 = [[PUTileTree alloc] initUsingUniqueLeafs:0];
    inactiveTileControllers = v13->__inactiveTileControllers;
    v13->__inactiveTileControllers = v24;

    v26 = [[PUTileTree alloc] initUsingUniqueLeafs:1];
    detachedTileControllers = v13->__detachedTileControllers;
    v13->__detachedTileControllers = v26;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    referencedDataSourcesByIdentifiers = v13->__referencedDataSourcesByIdentifiers;
    v13->__referencedDataSourcesByIdentifiers = dictionary;

    v30 = [MEMORY[0x1E695DFA8] set];
    referencedCoordinateSystems = v13->__referencedCoordinateSystems;
    v13->__referencedCoordinateSystems = v30;

    v13->__needsUpdateLayoutVisibleRect = 1;
    v13->__needsUpdateLayoutCoordinateSystem = 1;
    v13->__needsUpdateLayout = 1;
    v13->__needsUpdateScrollViewProperties = 1;
    v13->__needsUpdateTileControllers = 1;
    v13->__needsUpdateReferencedDataSources = 1;
    v13->__needsUpdateReferencedCoordinateSystems = 1;
    array = [MEMORY[0x1E695DF70] array];
    pendingUpdateItems = v13->__pendingUpdateItems;
    v13->__pendingUpdateItems = array;

    dataSource = [layoutCopy dataSource];
    [(PUTilingView *)v13 _registerDataSource:dataSource];

    [(PUTilingView *)v13 _adjustScrollViewPagingDeceleration];
    v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
    postLayoutBlocks = v13->__postLayoutBlocks;
    v13->__postLayoutBlocks = v35;
  }

  return v13;
}

@end