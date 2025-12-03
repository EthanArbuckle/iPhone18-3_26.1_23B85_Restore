@interface PXAssetsScene
- (BOOL)providesTileForIdentifier:(PXTileIdentifier *)identifier;
- (CGPoint)tilingController:(id)controller initialVisibleOriginForLayout:(id)layout;
- (PXAssetsScene)init;
- (PXAssetsScene)initWithTilingController:(id)controller mediaProvider:(id)provider dataSourceManager:(id)manager selectionManager:(id)selectionManager delegate:(id)delegate;
- (PXAssetsSceneDelegate)delegate;
- (PXAssetsTilingLayout)currentLayout;
- (PXAssetsTilingLayout)targetLayout;
- (id)tilingController:(id)controller tileIdentifierConverterForChange:(id)change;
- (id)tilingController:(id)controller transitionAnimationCoordinatorForChange:(id)change;
- (void)_configureLayout:(id)layout;
- (void)_saveAnchorAsset;
- (void)_setDataSource:(id)source;
- (void)_updateDataSourceIfNeeded;
- (void)_updateLayoutIfNeeded;
- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout;
- (void)didTransitionToDataSource:(id)source;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)setAnimatesContent:(BOOL)content;
- (void)setDelegate:(id)delegate;
- (void)setNeedsUpdate;
- (void)transitionToLayout:(id)layout;
- (void)updateIfNeeded;
- (void)willTransitionToDataSource:(id)source;
@end

@implementation PXAssetsScene

- (PXAssetsSceneDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsScene.m" lineNumber:424 description:{@"%@ must be implemented in a concrete subclass", v7}];

  abort();
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout
{
  layoutCopy = layout;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsScene.m" lineNumber:420 description:{@"%@ must be implemented in a concrete subclass", v8}];

  abort();
}

- (CGPoint)tilingController:(id)controller initialVisibleOriginForLayout:(id)layout
{
  v56 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  [layoutCopy scrollBounds];
  v6 = v5;
  v8 = v7;
  _anchors = [(PXAssetsScene *)self _anchors];
  v10 = [_anchors copy];

  selfCopy = self;
  _anchors2 = [(PXAssetsScene *)self _anchors];
  [_anchors2 removeAllObjects];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v52;
    v15 = *off_1E7721F68;
    v26 = xmmword_1A5380D20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v51 + 1) + 8 * i);
        assetReference = [v17 assetReference];
        if (assetReference)
        {
          dataSource = [layoutCopy dataSource];
          dataSourceManager = [(PXAssetsScene *)selfCopy dataSourceManager];
          changeHistory = [dataSourceManager changeHistory];
          [assetReference indexPath];
          v22 = [changeHistory changeDetailsFromDataSourceIdentifier:v50 toDataSourceIdentifier:{objc_msgSend(dataSource, "identifier")}];

          memset(v49, 0, sizeof(v49));
          [assetReference indexPath];
          [off_1E77218B0 indexPathAfterApplyingChanges:v22 toIndexPath:&v37 hasIncrementalChanges:0 objectChanged:0];
          v23 = *&v49[0];
          if (*&v49[0] == v15)
          {
            if (dataSource)
            {
              [dataSource indexPathForObjectReference:assetReference];
            }

            else
            {
              v37 = 0u;
              v38 = 0u;
            }

            v49[0] = v37;
            v49[1] = v38;
            v23 = v37;
          }

          if (v23 != v15)
          {
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v30 = v26;
            v31 = v23;
            v32 = *(v49 + 8);
            v33 = *(&v49[1] + 1);
            v34 = 0u;
            v35 = 0u;
            v36 = 0;
            if ([layoutCopy getGeometry:&v37 group:0 userData:0 forTileWithIdentifier:&v30])
            {
              [v17 anchorOrigin];
              PXPointSubtract();
            }
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v13);
  }

  v24 = v6;
  v25 = v8;
  result.y = v25;
  result.x = v24;
  return result;
}

- (id)tilingController:(id)controller transitionAnimationCoordinatorForChange:(id)change
{
  changeCopy = change;
  if (self->_delegateFlags.respondsToTransitionAnimationCoordinatorForChange && !self->_isAskingForTransitionAnimationCoordinator)
  {
    self->_isAskingForTransitionAnimationCoordinator = 1;
    delegate = [(PXAssetsScene *)self delegate];
    v8 = [delegate assetsScene:self transitionAnimationCoordinatorForChange:changeCopy];

    self->_isAskingForTransitionAnimationCoordinator = 0;
  }

  else
  {
    dataSourceManager = [(PXAssetsScene *)self dataSourceManager];
    changeHistory = [dataSourceManager changeHistory];
    v8 = [PXAssetsTileTransitionCoordinator transitionCoordinatorForChange:changeCopy changeHistory:changeHistory];
  }

  return v8;
}

- (id)tilingController:(id)controller tileIdentifierConverterForChange:(id)change
{
  changeCopy = change;
  v6 = changeCopy;
  if (self->_delegateFlags.respondsToTileIdentifierConverterForChange && !self->_isAskingForTileIdentifierConverter)
  {
    self->_isAskingForTileIdentifierConverter = 1;
    delegate = [(PXAssetsScene *)self delegate];
    v18 = [delegate assetsScene:self tileIdentifierConverterForChange:v6];

    self->_isAskingForTileIdentifierConverter = 0;
  }

  else
  {
    fromLayout = [changeCopy fromLayout];
    toLayout = [v6 toLayout];
    if ([fromLayout isEqual:toLayout])
    {
      v9 = 0;
    }

    else
    {
      dataSourceManager = [(PXAssetsScene *)self dataSourceManager];
      changeHistory = [dataSourceManager changeHistory];
      dataSource = [fromLayout dataSource];
      identifier = [dataSource identifier];
      dataSource2 = [toLayout dataSource];
      v9 = [changeHistory changeDetailsFromDataSourceIdentifier:identifier toDataSourceIdentifier:{objc_msgSend(dataSource2, "identifier")}];
    }

    v15 = [PXSectionedTileIdentifierConverter alloc];
    dataSource3 = [fromLayout dataSource];
    dataSource4 = [toLayout dataSource];
    v18 = [(PXSectionedTileIdentifierConverter *)v15 initWithFromDataSource:dataSource3 toDataSource:dataSource4 changeDetails:v9];
  }

  return v18;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if ((changeCopy & 1) != 0 && PXAssetsSceneDataSourceObserverContext == context)
  {
    v10 = observableCopy;
    [(PXAssetsScene *)self _updateDataSourceIfNeeded];
LABEL_7:
    observableCopy = v10;
    goto LABEL_8;
  }

  if ((changeCopy & 1) != 0 && PXAssetsSceneSelectionManagerObserverContext == context)
  {
    v10 = observableCopy;
    [(PXAssetsScene *)self _updateDataSourceIfNeeded];
    targetLayout = [(PXAssetsScene *)self targetLayout];
    [(PXAssetsScene *)self _configureLayout:targetLayout];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)_setDataSource:(id)source
{
  sourceCopy = source;
  identifier = [(PXAssetsDataSource *)self->__dataSource identifier];
  if (identifier != [sourceCopy identifier])
  {
    objc_storeStrong(&self->__dataSource, source);
    [(PXAssetsScene *)self _invalidateLayout];
  }
}

- (void)_saveAnchorAsset
{
  _anchors = [(PXAssetsScene *)self _anchors];
  [_anchors removeAllObjects];
  tilingController = [(PXAssetsScene *)self tilingController];
  currentLayout = [tilingController currentLayout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    tilingController2 = [(PXAssetsScene *)self tilingController];
    currentLayout2 = [tilingController2 currentLayout];

    [currentLayout2 visibleRect];
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
    v26 = CGRectInset(v25, v25.size.width * -0.5, v25.size.height * -0.5);
    v13 = v26.origin.x;
    v14 = v26.origin.y;
    v15 = v26.size.width;
    v16 = v26.size.height;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __33__PXAssetsScene__saveAnchorAsset__block_invoke;
    v18[3] = &unk_1E7742DA0;
    v21 = x;
    v22 = y;
    v23 = width;
    v24 = height;
    v19 = currentLayout2;
    v20 = _anchors;
    v17 = currentLayout2;
    [v17 enumerateTilesInRect:0 withOptions:v18 usingBlock:{v13, v14, v15, v16}];
  }
}

void __33__PXAssetsScene__saveAnchorAsset__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  if (*a2 == 5 && a2[1] == 6432423)
  {
    PXDistanceBetweenPoints();
  }
}

uint64_t __33__PXAssetsScene__saveAnchorAsset__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 distance];
  v7 = v6;
  [v5 distance];
  if (v7 >= v8)
  {
    [v4 distance];
    v11 = v10;
    [v5 distance];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (void)_configureLayout:(id)layout
{
  layoutCopy = layout;
  selectionManager = [(PXAssetsScene *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  dataSource = [layoutCopy dataSource];
  identifier = [dataSource identifier];
  dataSource2 = [selectionSnapshot dataSource];
  identifier2 = [dataSource2 identifier];

  if (identifier == identifier2)
  {
    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
    [layoutCopy setSelectedIndexPaths:selectedIndexPaths];
  }

  if ([(PXAssetsScene *)self animatesContent])
  {
    autoplayBehavior = [(PXAssetsScene *)self autoplayBehavior];
  }

  else
  {
    autoplayBehavior = 0;
  }

  [layoutCopy setAnimatedOverlayBehavior:autoplayBehavior];
}

- (void)_updateDataSourceIfNeeded
{
  dataSourceManager = [(PXAssetsScene *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  selectionManager = [(PXAssetsScene *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  dataSource2 = [selectionSnapshot dataSource];
  if ([dataSource isEqual:dataSource2])
  {
    _dataSource = [(PXAssetsScene *)self _dataSource];
    v9 = [_dataSource isEqual:dataSource];

    if ((v9 & 1) == 0)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __42__PXAssetsScene__updateDataSourceIfNeeded__block_invoke;
      v10[3] = &unk_1E774C620;
      v10[4] = self;
      v11 = dataSource;
      [(PXAssetsScene *)self performChanges:v10];
    }
  }

  else
  {
  }
}

- (void)_updateLayoutIfNeeded
{
  if (self->_needsUpdateFlags.layout)
  {
    self->_needsUpdateFlags.layout = 0;
    delegate = [(PXAssetsScene *)self delegate];
    _dataSource = [(PXAssetsScene *)self _dataSource];
    [(PXAssetsScene *)self willTransitionToDataSource:_dataSource];
    v6 = [delegate assetsScene:self layoutForDataSource:_dataSource];
    if (!v6)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsScene.m" lineNumber:240 description:{@"delegate:%@ must return a new layout for data source:%@", delegate, _dataSource}];
    }

    [(PXAssetsScene *)self _configureLayout:v6];
    [(PXAssetsScene *)self _saveAnchorAsset];
    tilingController = [(PXAssetsScene *)self tilingController];
    [tilingController transitionToLayout:v6];

    [(PXAssetsScene *)self didTransitionToDataSource:_dataSource];
  }
}

- (void)updateIfNeeded
{
  if ([(PXAssetsScene *)self needsUpdate])
  {

    [(PXAssetsScene *)self _updateLayoutIfNeeded];
  }
}

- (void)performChanges:(id)changes
{
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  (*(changes + 2))(changes, a2);
  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {

    [(PXAssetsScene *)self updateIfNeeded];
  }
}

- (void)setNeedsUpdate
{
  if (!self->_isPerformingChanges && !self->_isPerformingUpdates && !self->_hasScheduledUpdate)
  {
    self->_hasScheduledUpdate = 1;
    tilingController = [(PXAssetsScene *)self tilingController];
    scrollController = [tilingController scrollController];
    [scrollController setNeedsUpdate];
  }
}

- (void)setAnimatesContent:(BOOL)content
{
  if (self->_animatesContent != content)
  {
    self->_animatesContent = content;
    targetLayout = [(PXAssetsScene *)self targetLayout];
    [(PXAssetsScene *)self _configureLayout:targetLayout];
  }
}

- (void)didTransitionToDataSource:(id)source
{
  if (self->_delegateFlags.respondsToDidTransitionToDataSource)
  {
    sourceCopy = source;
    delegate = [(PXAssetsScene *)self delegate];
    [delegate assetsScene:self didTransitionToDataSource:sourceCopy];
  }
}

- (void)willTransitionToDataSource:(id)source
{
  if (self->_delegateFlags.respondsToWillTransitionToDataSource)
  {
    sourceCopy = source;
    delegate = [(PXAssetsScene *)self delegate];
    [delegate assetsScene:self willTransitionToDataSource:sourceCopy];
  }
}

- (BOOL)providesTileForIdentifier:(PXTileIdentifier *)identifier
{
  v3 = identifier->index[0];
  v5 = identifier->length == 5 && v3 == 6432423;
  if (identifier->length - 3 <= 2 && identifier->index[1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = vdupq_n_s64(v3 & 0xFFFFFFFFFFFFFFFELL);
    v5 |= vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v6, xmmword_1A53811E0), vceqq_s64(v6, xmmword_1A53811F0))));
  }

  return v5 & 1;
}

- (PXAssetsTilingLayout)currentLayout
{
  tilingController = [(PXAssetsScene *)self tilingController];
  currentLayout = [tilingController currentLayout];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    currentLayout = 0;
  }

  return currentLayout;
}

- (PXAssetsTilingLayout)targetLayout
{
  tilingController = [(PXAssetsScene *)self tilingController];
  targetLayout = [tilingController targetLayout];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    targetLayout = 0;
  }

  return targetLayout;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  self->_delegateFlags.respondsToTileIdentifierConverterForChange = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToWillTransitionToDataSource = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToDidTransitionToDataSource = objc_opt_respondsToSelector() & 1;
  v5 = objc_opt_respondsToSelector();

  self->_delegateFlags.respondsToTransitionAnimationCoordinatorForChange = v5 & 1;
}

- (void)transitionToLayout:(id)layout
{
  layoutCopy = layout;
  [(PXAssetsScene *)self _saveAnchorAsset];
  [(PXAssetsScene *)self _configureLayout:layoutCopy];
  [(PXTilingController *)self->_tilingController transitionToLayout:layoutCopy];
}

- (PXAssetsScene)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsScene.m" lineNumber:121 description:{@"%s is not available as initializer", "-[PXAssetsScene init]"}];

  abort();
}

- (PXAssetsScene)initWithTilingController:(id)controller mediaProvider:(id)provider dataSourceManager:(id)manager selectionManager:(id)selectionManager delegate:(id)delegate
{
  controllerCopy = controller;
  providerCopy = provider;
  managerCopy = manager;
  selectionManagerCopy = selectionManager;
  delegateCopy = delegate;
  v41.receiver = self;
  v41.super_class = PXAssetsScene;
  v18 = [(PXAssetsScene *)&v41 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_tilingController, controller);
    objc_storeStrong(&v19->_mediaProvider, provider);
    v20 = objc_alloc_init(off_1E7721478);
    badgeManager = v19->_badgeManager;
    v19->_badgeManager = v20;

    array = [MEMORY[0x1E695DF70] array];
    anchors = v19->__anchors;
    v19->__anchors = array;

    [(PXAssetsScene *)v19 setDelegate:delegateCopy];
    objc_storeStrong(&v19->_dataSourceManager, manager);
    [managerCopy registerChangeObserver:v19 context:PXAssetsSceneDataSourceObserverContext];
    dataSource = [managerCopy dataSource];
    dataSource = v19->__dataSource;
    v19->__dataSource = dataSource;

    if (selectionManagerCopy)
    {
      v26 = selectionManagerCopy;
    }

    else
    {
      v26 = [[off_1E77218C8 alloc] initWithDataSourceManager:managerCopy];
    }

    selectionManager = v19->_selectionManager;
    v19->_selectionManager = v26;

    [(PXSectionedSelectionManager *)v19->_selectionManager registerChangeObserver:v19 context:PXAssetsSceneSelectionManagerObserverContext];
    v28 = [off_1E77218A0 alloc];
    scrollController = [controllerCopy scrollController];
    v30 = [v28 initWithScrollController:scrollController];
    scrollSpeedometer = v19->_scrollSpeedometer;
    v19->_scrollSpeedometer = v30;

    [(PXScrollViewSpeedometer *)v19->_scrollSpeedometer registerChangeObserver:v19 context:PXAssetsSceneSpeedometerObserverContext];
    v32 = objc_alloc_init(off_1E7721868);
    viewTileReusePool = v19->_viewTileReusePool;
    v19->_viewTileReusePool = v32;

    [(PXReusableObjectPool *)v19->_viewTileReusePool setDelegate:v19];
    v34 = +[PXAssetsSceneSettings sharedInstance];
    v19->_animatesContent = [v34 animateContentByDefault];

    v35 = +[PXAssetsSceneSettings sharedInstance];
    allowLoopingVideoPlayback = [v35 allowLoopingVideoPlayback];
    if ([v35 allowAnimatedImagePlayback])
    {
      allowLoopingVideoPlayback |= 2uLL;
    }

    if ([v35 allowVideoPlayback])
    {
      allowLoopingVideoPlayback |= 4uLL;
    }

    if ([v35 allowLivePhotoPlayback])
    {
      playLivePhotosAsLoops = [v35 playLivePhotosAsLoops];
      v38 = 8;
      if (playLivePhotosAsLoops)
      {
        v38 = 24;
      }

      allowLoopingVideoPlayback |= v38;
    }

    v19->_autoplayBehavior = allowLoopingVideoPlayback;
    targetLayout = [(PXAssetsScene *)v19 targetLayout];
    [(PXAssetsScene *)v19 _configureLayout:targetLayout];
  }

  return v19;
}

@end