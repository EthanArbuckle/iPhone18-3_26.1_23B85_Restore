@interface PXAssetsScene
- (BOOL)providesTileForIdentifier:(PXTileIdentifier *)a3;
- (CGPoint)tilingController:(id)a3 initialVisibleOriginForLayout:(id)a4;
- (PXAssetsScene)init;
- (PXAssetsScene)initWithTilingController:(id)a3 mediaProvider:(id)a4 dataSourceManager:(id)a5 selectionManager:(id)a6 delegate:(id)a7;
- (PXAssetsSceneDelegate)delegate;
- (PXAssetsTilingLayout)currentLayout;
- (PXAssetsTilingLayout)targetLayout;
- (id)tilingController:(id)a3 tileIdentifierConverterForChange:(id)a4;
- (id)tilingController:(id)a3 transitionAnimationCoordinatorForChange:(id)a4;
- (void)_configureLayout:(id)a3;
- (void)_saveAnchorAsset;
- (void)_setDataSource:(id)a3;
- (void)_updateDataSourceIfNeeded;
- (void)_updateLayoutIfNeeded;
- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4;
- (void)didTransitionToDataSource:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)setAnimatesContent:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setNeedsUpdate;
- (void)transitionToLayout:(id)a3;
- (void)updateIfNeeded;
- (void)willTransitionToDataSource:(id)a3;
@end

@implementation PXAssetsScene

- (PXAssetsSceneDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:@"PXAssetsScene.m" lineNumber:424 description:{@"%@ must be implemented in a concrete subclass", v7}];

  abort();
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:self file:@"PXAssetsScene.m" lineNumber:420 description:{@"%@ must be implemented in a concrete subclass", v8}];

  abort();
}

- (CGPoint)tilingController:(id)a3 initialVisibleOriginForLayout:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v29 = a4;
  [v29 scrollBounds];
  v6 = v5;
  v8 = v7;
  v9 = [(PXAssetsScene *)self _anchors];
  v10 = [v9 copy];

  v28 = self;
  v11 = [(PXAssetsScene *)self _anchors];
  [v11 removeAllObjects];

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
        v18 = [v17 assetReference];
        if (v18)
        {
          v19 = [v29 dataSource];
          v20 = [(PXAssetsScene *)v28 dataSourceManager];
          v21 = [v20 changeHistory];
          [v18 indexPath];
          v22 = [v21 changeDetailsFromDataSourceIdentifier:v50 toDataSourceIdentifier:{objc_msgSend(v19, "identifier")}];

          memset(v49, 0, sizeof(v49));
          [v18 indexPath];
          [off_1E77218B0 indexPathAfterApplyingChanges:v22 toIndexPath:&v37 hasIncrementalChanges:0 objectChanged:0];
          v23 = *&v49[0];
          if (*&v49[0] == v15)
          {
            if (v19)
            {
              [v19 indexPathForObjectReference:v18];
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
            if ([v29 getGeometry:&v37 group:0 userData:0 forTileWithIdentifier:&v30])
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

- (id)tilingController:(id)a3 transitionAnimationCoordinatorForChange:(id)a4
{
  v5 = a4;
  if (self->_delegateFlags.respondsToTransitionAnimationCoordinatorForChange && !self->_isAskingForTransitionAnimationCoordinator)
  {
    self->_isAskingForTransitionAnimationCoordinator = 1;
    v9 = [(PXAssetsScene *)self delegate];
    v8 = [v9 assetsScene:self transitionAnimationCoordinatorForChange:v5];

    self->_isAskingForTransitionAnimationCoordinator = 0;
  }

  else
  {
    v6 = [(PXAssetsScene *)self dataSourceManager];
    v7 = [v6 changeHistory];
    v8 = [PXAssetsTileTransitionCoordinator transitionCoordinatorForChange:v5 changeHistory:v7];
  }

  return v8;
}

- (id)tilingController:(id)a3 tileIdentifierConverterForChange:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (self->_delegateFlags.respondsToTileIdentifierConverterForChange && !self->_isAskingForTileIdentifierConverter)
  {
    self->_isAskingForTileIdentifierConverter = 1;
    v19 = [(PXAssetsScene *)self delegate];
    v18 = [v19 assetsScene:self tileIdentifierConverterForChange:v6];

    self->_isAskingForTileIdentifierConverter = 0;
  }

  else
  {
    v7 = [v5 fromLayout];
    v8 = [v6 toLayout];
    if ([v7 isEqual:v8])
    {
      v9 = 0;
    }

    else
    {
      v10 = [(PXAssetsScene *)self dataSourceManager];
      v11 = [v10 changeHistory];
      v12 = [v7 dataSource];
      v13 = [v12 identifier];
      v14 = [v8 dataSource];
      v9 = [v11 changeDetailsFromDataSourceIdentifier:v13 toDataSourceIdentifier:{objc_msgSend(v14, "identifier")}];
    }

    v15 = [PXSectionedTileIdentifierConverter alloc];
    v16 = [v7 dataSource];
    v17 = [v8 dataSource];
    v18 = [(PXSectionedTileIdentifierConverter *)v15 initWithFromDataSource:v16 toDataSource:v17 changeDetails:v9];
  }

  return v18;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if ((v6 & 1) != 0 && PXAssetsSceneDataSourceObserverContext == a5)
  {
    v10 = v8;
    [(PXAssetsScene *)self _updateDataSourceIfNeeded];
LABEL_7:
    v8 = v10;
    goto LABEL_8;
  }

  if ((v6 & 1) != 0 && PXAssetsSceneSelectionManagerObserverContext == a5)
  {
    v10 = v8;
    [(PXAssetsScene *)self _updateDataSourceIfNeeded];
    v9 = [(PXAssetsScene *)self targetLayout];
    [(PXAssetsScene *)self _configureLayout:v9];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)_setDataSource:(id)a3
{
  v6 = a3;
  v5 = [(PXAssetsDataSource *)self->__dataSource identifier];
  if (v5 != [v6 identifier])
  {
    objc_storeStrong(&self->__dataSource, a3);
    [(PXAssetsScene *)self _invalidateLayout];
  }
}

- (void)_saveAnchorAsset
{
  v3 = [(PXAssetsScene *)self _anchors];
  [v3 removeAllObjects];
  v4 = [(PXAssetsScene *)self tilingController];
  v5 = [v4 currentLayout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(PXAssetsScene *)self tilingController];
    v8 = [v7 currentLayout];

    [v8 visibleRect];
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
    v19 = v8;
    v20 = v3;
    v17 = v8;
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

- (void)_configureLayout:(id)a3
{
  v12 = a3;
  v4 = [(PXAssetsScene *)self selectionManager];
  v5 = [v4 selectionSnapshot];

  v6 = [v12 dataSource];
  v7 = [v6 identifier];
  v8 = [v5 dataSource];
  v9 = [v8 identifier];

  if (v7 == v9)
  {
    v10 = [v5 selectedIndexPaths];
    [v12 setSelectedIndexPaths:v10];
  }

  if ([(PXAssetsScene *)self animatesContent])
  {
    v11 = [(PXAssetsScene *)self autoplayBehavior];
  }

  else
  {
    v11 = 0;
  }

  [v12 setAnimatedOverlayBehavior:v11];
}

- (void)_updateDataSourceIfNeeded
{
  v3 = [(PXAssetsScene *)self dataSourceManager];
  v4 = [v3 dataSource];

  v5 = [(PXAssetsScene *)self selectionManager];
  v6 = [v5 selectionSnapshot];
  v7 = [v6 dataSource];
  if ([v4 isEqual:v7])
  {
    v8 = [(PXAssetsScene *)self _dataSource];
    v9 = [v8 isEqual:v4];

    if ((v9 & 1) == 0)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __42__PXAssetsScene__updateDataSourceIfNeeded__block_invoke;
      v10[3] = &unk_1E774C620;
      v10[4] = self;
      v11 = v4;
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
    v9 = [(PXAssetsScene *)self delegate];
    v5 = [(PXAssetsScene *)self _dataSource];
    [(PXAssetsScene *)self willTransitionToDataSource:v5];
    v6 = [v9 assetsScene:self layoutForDataSource:v5];
    if (!v6)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"PXAssetsScene.m" lineNumber:240 description:{@"delegate:%@ must return a new layout for data source:%@", v9, v5}];
    }

    [(PXAssetsScene *)self _configureLayout:v6];
    [(PXAssetsScene *)self _saveAnchorAsset];
    v7 = [(PXAssetsScene *)self tilingController];
    [v7 transitionToLayout:v6];

    [(PXAssetsScene *)self didTransitionToDataSource:v5];
  }
}

- (void)updateIfNeeded
{
  if ([(PXAssetsScene *)self needsUpdate])
  {

    [(PXAssetsScene *)self _updateLayoutIfNeeded];
  }
}

- (void)performChanges:(id)a3
{
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  (*(a3 + 2))(a3, a2);
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
    v4 = [(PXAssetsScene *)self tilingController];
    v3 = [v4 scrollController];
    [v3 setNeedsUpdate];
  }
}

- (void)setAnimatesContent:(BOOL)a3
{
  if (self->_animatesContent != a3)
  {
    self->_animatesContent = a3;
    v5 = [(PXAssetsScene *)self targetLayout];
    [(PXAssetsScene *)self _configureLayout:v5];
  }
}

- (void)didTransitionToDataSource:(id)a3
{
  if (self->_delegateFlags.respondsToDidTransitionToDataSource)
  {
    v5 = a3;
    v6 = [(PXAssetsScene *)self delegate];
    [v6 assetsScene:self didTransitionToDataSource:v5];
  }
}

- (void)willTransitionToDataSource:(id)a3
{
  if (self->_delegateFlags.respondsToWillTransitionToDataSource)
  {
    v5 = a3;
    v6 = [(PXAssetsScene *)self delegate];
    [v6 assetsScene:self willTransitionToDataSource:v5];
  }
}

- (BOOL)providesTileForIdentifier:(PXTileIdentifier *)a3
{
  v3 = a3->index[0];
  v5 = a3->length == 5 && v3 == 6432423;
  if (a3->length - 3 <= 2 && a3->index[1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = vdupq_n_s64(v3 & 0xFFFFFFFFFFFFFFFELL);
    v5 |= vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v6, xmmword_1A53811E0), vceqq_s64(v6, xmmword_1A53811F0))));
  }

  return v5 & 1;
}

- (PXAssetsTilingLayout)currentLayout
{
  v2 = [(PXAssetsScene *)self tilingController];
  v3 = [v2 currentLayout];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (PXAssetsTilingLayout)targetLayout
{
  v2 = [(PXAssetsScene *)self tilingController];
  v3 = [v2 targetLayout];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  self->_delegateFlags.respondsToTileIdentifierConverterForChange = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToWillTransitionToDataSource = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToDidTransitionToDataSource = objc_opt_respondsToSelector() & 1;
  v5 = objc_opt_respondsToSelector();

  self->_delegateFlags.respondsToTransitionAnimationCoordinatorForChange = v5 & 1;
}

- (void)transitionToLayout:(id)a3
{
  v4 = a3;
  [(PXAssetsScene *)self _saveAnchorAsset];
  [(PXAssetsScene *)self _configureLayout:v4];
  [(PXTilingController *)self->_tilingController transitionToLayout:v4];
}

- (PXAssetsScene)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAssetsScene.m" lineNumber:121 description:{@"%s is not available as initializer", "-[PXAssetsScene init]"}];

  abort();
}

- (PXAssetsScene)initWithTilingController:(id)a3 mediaProvider:(id)a4 dataSourceManager:(id)a5 selectionManager:(id)a6 delegate:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v41.receiver = self;
  v41.super_class = PXAssetsScene;
  v18 = [(PXAssetsScene *)&v41 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_tilingController, a3);
    objc_storeStrong(&v19->_mediaProvider, a4);
    v20 = objc_alloc_init(off_1E7721478);
    badgeManager = v19->_badgeManager;
    v19->_badgeManager = v20;

    v22 = [MEMORY[0x1E695DF70] array];
    anchors = v19->__anchors;
    v19->__anchors = v22;

    [(PXAssetsScene *)v19 setDelegate:v17];
    objc_storeStrong(&v19->_dataSourceManager, a5);
    [v15 registerChangeObserver:v19 context:PXAssetsSceneDataSourceObserverContext];
    v24 = [v15 dataSource];
    dataSource = v19->__dataSource;
    v19->__dataSource = v24;

    if (v16)
    {
      v26 = v16;
    }

    else
    {
      v26 = [[off_1E77218C8 alloc] initWithDataSourceManager:v15];
    }

    selectionManager = v19->_selectionManager;
    v19->_selectionManager = v26;

    [(PXSectionedSelectionManager *)v19->_selectionManager registerChangeObserver:v19 context:PXAssetsSceneSelectionManagerObserverContext];
    v28 = [off_1E77218A0 alloc];
    v29 = [v13 scrollController];
    v30 = [v28 initWithScrollController:v29];
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
    v36 = [v35 allowLoopingVideoPlayback];
    if ([v35 allowAnimatedImagePlayback])
    {
      v36 |= 2uLL;
    }

    if ([v35 allowVideoPlayback])
    {
      v36 |= 4uLL;
    }

    if ([v35 allowLivePhotoPlayback])
    {
      v37 = [v35 playLivePhotosAsLoops];
      v38 = 8;
      if (v37)
      {
        v38 = 24;
      }

      v36 |= v38;
    }

    v19->_autoplayBehavior = v36;
    v39 = [(PXAssetsScene *)v19 targetLayout];
    [(PXAssetsScene *)v19 _configureLayout:v39];
  }

  return v19;
}

@end