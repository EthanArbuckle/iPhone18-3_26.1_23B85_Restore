@interface PXUIAssetsScene
- (BOOL)needsUpdate;
- (CGSize)maximumImageSize;
- (PXUIAssetsScene)initWithTilingController:(id)controller mediaProvider:(id)provider dataSourceManager:(id)manager selectionManager:(id)selectionManager delegate:(id)delegate;
- (PXUIScrollViewController)scrollViewController;
- (id)_assetsBySizeWithTileIdentifiers:(const PXTileIdentifier *)identifiers withGeometries:(const PXTileGeometry *)geometries count:(unint64_t)count;
- (id)_imageRequesterForAssetReference:(id)reference;
- (id)_imageRequesterForIndexPath:(PXSimpleIndexPath *)path inDataSource:(id)source;
- (void)_registerDefaultTiles;
- (void)_transitionImageRequestersToDataSource:(id)source;
- (void)_updatePreheatingIfNeeded;
- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)reusableObjectPool:(id)pool didCreateReusableObject:(id)object;
- (void)reusableObjectPool:(id)pool didEvictReusableObject:(id)object;
- (void)startPreheatingTilesForIdentifiers:(const PXTileIdentifier *)identifiers withGeometries:(const PXTileGeometry *)geometries count:(unint64_t)count context:(void *)context;
- (void)stopPreheatingTilesForIdentifiers:(const PXTileIdentifier *)identifiers withGeometries:(const PXTileGeometry *)geometries count:(unint64_t)count context:(void *)context;
- (void)updateIfNeeded;
- (void)willTransitionToDataSource:(id)source;
@end

@implementation PXUIAssetsScene

- (CGSize)maximumImageSize
{
  width = self->_maximumImageSize.width;
  height = self->_maximumImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)_assetsBySizeWithTileIdentifiers:(const PXTileIdentifier *)identifiers withGeometries:(const PXTileGeometry *)geometries count:(unint64_t)count
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dataSourceManager = [(PXAssetsScene *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  identifier = [dataSource identifier];
  v13 = *MEMORY[0x1E695F060];
  v14 = *(MEMORY[0x1E695F060] + 8);
  v15 = [MEMORY[0x1E696B098] valueWithCGSize:{*MEMORY[0x1E695F060], v14}];
  if (count)
  {
    v16 = &identifiers->index[2];
    p_height = &geometries->contentSize.height;
    do
    {
      if (*(v16 - 3) == 5 && (*(v16 - 2) == 6432423 ? (v18 = *(v16 - 1) == identifier) : (v18 = 0), v18))
      {
        v21 = *v16;
        v22 = v16[2];
        v29 = identifier;
        v30 = v21;
        v31 = v22;
        v23 = [dataSource assetAtItemIndexPath:&v29];
        v20 = *(p_height - 1);
        v19 = *p_height;
        if (v20 == v13 && v19 == v14)
        {
          v19 = v14;
          v20 = v13;
        }

        else
        {
          v25 = [MEMORY[0x1E696B098] valueWithCGSize:{*(p_height - 1), *p_height}];

          v15 = v25;
        }

        v26 = [dictionary objectForKeyedSubscript:v15];
        if (v26)
        {
          v27 = v26;
          [v26 addObject:v23];
        }

        else
        {
          v27 = [MEMORY[0x1E695DF70] arrayWithObject:v23];
          [dictionary setObject:v27 forKeyedSubscript:v15];
        }
      }

      else
      {
        v19 = v14;
        v20 = v13;
      }

      v16 += 11;
      p_height += 24;
      v13 = v20;
      v14 = v19;
      --count;
    }

    while (count);
  }

  return dictionary;
}

- (void)stopPreheatingTilesForIdentifiers:(const PXTileIdentifier *)identifiers withGeometries:(const PXTileGeometry *)geometries count:(unint64_t)count context:(void *)context
{
  if (PXImagePreheatContext == context)
  {
    v10[7] = v6;
    v10[8] = v7;
    v9 = [(PXUIAssetsScene *)self _assetsBySizeWithTileIdentifiers:identifiers withGeometries:geometries count:count];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__PXUIAssetsScene_stopPreheatingTilesForIdentifiers_withGeometries_count_context___block_invoke;
    v10[3] = &unk_1E7735050;
    v10[4] = self;
    [v9 enumerateKeysAndObjectsUsingBlock:v10];
  }
}

void __82__PXUIAssetsScene_stopPreheatingTilesForIdentifiers_withGeometries_count_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 CGSizeValue];
  [MEMORY[0x1E69DCEB0] px_mainScreen];
  [objc_claimAutoreleasedReturnValue() scale];
  PXSizeScale();
}

- (void)startPreheatingTilesForIdentifiers:(const PXTileIdentifier *)identifiers withGeometries:(const PXTileGeometry *)geometries count:(unint64_t)count context:(void *)context
{
  if (PXImagePreheatContext == context)
  {
    v10[7] = v6;
    v10[8] = v7;
    v9 = [(PXUIAssetsScene *)self _assetsBySizeWithTileIdentifiers:identifiers withGeometries:geometries count:count];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83__PXUIAssetsScene_startPreheatingTilesForIdentifiers_withGeometries_count_context___block_invoke;
    v10[3] = &unk_1E7735050;
    v10[4] = self;
    [v9 enumerateKeysAndObjectsUsingBlock:v10];
  }
}

void __83__PXUIAssetsScene_startPreheatingTilesForIdentifiers_withGeometries_count_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 CGSizeValue];
  [MEMORY[0x1E69DCEB0] px_mainScreen];
  [objc_claimAutoreleasedReturnValue() scale];
  PXSizeScale();
}

- (void)reusableObjectPool:(id)pool didEvictReusableObject:(id)object
{
  view = [object view];
  [view removeFromSuperview];
}

- (void)reusableObjectPool:(id)pool didCreateReusableObject:(id)object
{
  view = [object view];
  scrollViewController = [(PXUIAssetsScene *)self scrollViewController];
  [scrollViewController addSubview:view];
}

- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier
{
  v6 = [(PXAssetsScene *)self viewTileReusePool:tile];
  [v6 checkInReusableObject:tile];

  tilesInUse = self->_tilesInUse;

  [(NSMutableSet *)tilesInUse removeObject:tile];
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout
{
  layoutCopy = layout;
  v8 = identifier->index[0];
  if (identifier->length == 5 && v8 == 6432423)
  {
    viewTileReusePool = [(PXAssetsScene *)self viewTileReusePool];
    v11 = [viewTileReusePool checkOutReusableObjectWithReuseIdentifier:333123];

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 2)
    {
      goto LABEL_16;
    }

    px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
    traitCollection = [px_mainScreen traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 1)
    {
      v18 = @"PreloadAsset-iCloud";
    }

    else
    {
      v18 = @"PreloadAsset-iCloud-Dark";
    }

    viewTileReusePool5 = [MEMORY[0x1E69DCAB8] px_imageNamed:v18];
    [v11 setPlaceholderImage:viewTileReusePool5];
    goto LABEL_15;
  }

  if (v8 <= 6332435)
  {
    if (v8 != 6332434)
    {
      if (v8 == 6332435)
      {
        viewTileReusePool2 = [(PXAssetsScene *)self viewTileReusePool];
        v19 = [viewTileReusePool2 checkOutReusableObjectWithReuseIdentifier:333163];

        badgeManager = [(PXAssetsScene *)self badgeManager];
        [v19 setBadgeManager:badgeManager];

        v42 = *&identifier->index[3];
        v45 = *&identifier->index[1];
        dataSource = [layoutCopy dataSource];
        v47 = v45;
        v48 = v42;
        v26 = [(PXUIAssetsScene *)self _imageRequesterForIndexPath:&v47 inDataSource:dataSource];

        [v19 setImageRequester:v26];
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    viewTileReusePool3 = [(PXAssetsScene *)self viewTileReusePool];
    v28 = viewTileReusePool3;
    v29 = 333133;
    goto LABEL_24;
  }

  switch(v8)
  {
    case 6332436:
      viewTileReusePool3 = [(PXAssetsScene *)self viewTileReusePool];
      v28 = viewTileReusePool3;
      v29 = 333153;
LABEL_24:
      v19 = [viewTileReusePool3 checkOutReusableObjectWithReuseIdentifier:v29];
      goto LABEL_25;
    case 6332437:
      viewTileReusePool4 = [(PXAssetsScene *)self viewTileReusePool];
      v19 = [viewTileReusePool4 checkOutReusableObjectWithReuseIdentifier:333173];

      v43 = *&identifier->index[3];
      v46 = *&identifier->index[1];
      dataSource2 = [layoutCopy dataSource];
      v47 = v46;
      v48 = v43;
      v32 = [(PXUIAssetsScene *)self _imageRequesterForIndexPath:&v47 inDataSource:dataSource2];

      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __52__PXUIAssetsScene_checkOutTileForIdentifier_layout___block_invoke;
      v53[3] = &unk_1E7735028;
      v54 = v32;
      v28 = v32;
      [v19 performChanges:v53];

LABEL_25:
      goto LABEL_26;
    case 6332441:
      viewTileReusePool5 = [(PXAssetsScene *)self viewTileReusePool];
      v11 = [viewTileReusePool5 checkOutReusableObjectWithReuseIdentifier:333203];
LABEL_15:

      goto LABEL_16;
  }

LABEL_28:
  if ((v8 - 6332439) > 1)
  {
    if (v8 != 6332438)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v38 = *&identifier->index[5];
      v49 = *&identifier->index[3];
      v50 = v38;
      v51 = *&identifier->index[7];
      v52 = identifier->index[9];
      v39 = *&identifier->index[1];
      v47 = *&identifier->length;
      v48 = v39;
      v40 = PXTileIdentifierDescription(&v47);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIAssetsScene.m" lineNumber:345 description:{@"%@ got asked to produce a tile for an unknown identifier:%@. If you're adding custom tile kinds, those have to be returned by your own tile source and not bubble up to the assets scene.", self, v40}];

      abort();
    }

    viewTileReusePool6 = [(PXAssetsScene *)self viewTileReusePool];
    v35 = viewTileReusePool6;
    v36 = 333183;
  }

  else
  {
    viewTileReusePool6 = [(PXAssetsScene *)self viewTileReusePool];
    v35 = viewTileReusePool6;
    v36 = 333193;
  }

  v11 = [viewTileReusePool6 checkOutReusableObjectWithReuseIdentifier:v36];

  [v11 setDesiredPlayState:{-[PXAssetsScene autoplayTilesWaitForInput](self, "autoplayTilesWaitForInput") ^ 1}];
LABEL_16:
  v19 = v11;
  if (!v19)
  {
LABEL_26:
    v22 = 0;
    goto LABEL_27;
  }

  v41 = *&identifier->index[3];
  v44 = *&identifier->index[1];
  dataSource3 = [layoutCopy dataSource];
  v47 = v44;
  v48 = v41;
  v21 = [(PXUIAssetsScene *)self _imageRequesterForIndexPath:&v47 inDataSource:dataSource3];

  [v19 setImageRequester:v21];
  [(PXUIAssetsScene *)self contentTileCornerRadius];
  [v19 setCornerRadius:?];

  v22 = v19;
LABEL_27:
  [(NSMutableSet *)self->_tilesInUse addObject:v19];

  return v19;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if ((change & 6) != 0 && PXAssetsSceneSpeedometerObserverContext == context)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__PXUIAssetsScene_observable_didChange_context___block_invoke;
    v10[3] = &unk_1E774C648;
    v10[4] = self;
    [(PXAssetsScene *)self performChanges:v10];
  }

  v9.receiver = self;
  v9.super_class = PXUIAssetsScene;
  [(PXAssetsScene *)&v9 observable:observableCopy didChange:change context:context];
}

- (void)willTransitionToDataSource:(id)source
{
  v5.receiver = self;
  v5.super_class = PXUIAssetsScene;
  sourceCopy = source;
  [(PXAssetsScene *)&v5 willTransitionToDataSource:sourceCopy];
  [(PXUIAssetsScene *)self _transitionImageRequestersToDataSource:sourceCopy, v5.receiver, v5.super_class];
}

- (void)_updatePreheatingIfNeeded
{
  if (self->_needsUpdateFlags.preheating)
  {
    self->_needsUpdateFlags.preheating = 0;
    scrollSpeedometer = [(PXAssetsScene *)self scrollSpeedometer];
    regime = [scrollSpeedometer regime];
    if (regime > 1)
    {
      goto LABEL_7;
    }

    if (regime != -1)
    {
      if (regime == 1)
      {
        [scrollSpeedometer previousRegime];
      }

LABEL_7:
      scrollViewController = [scrollSpeedometer scrollViewController];
      scrollView = [scrollViewController scrollView];

      [scrollView contentSize];
      [scrollView contentInset];
      sub_1A524D1F4();
    }
  }
}

- (void)updateIfNeeded
{
  v3.receiver = self;
  v3.super_class = PXUIAssetsScene;
  [(PXAssetsScene *)&v3 updateIfNeeded];
  if ([(PXUIAssetsScene *)self needsUpdate])
  {
    [(PXUIAssetsScene *)self _updatePreheatingIfNeeded];
  }
}

- (BOOL)needsUpdate
{
  v5.receiver = self;
  v5.super_class = PXUIAssetsScene;
  return [(PXAssetsScene *)&v5 needsUpdate]|| self->_needsUpdateFlags.preheating;
}

- (void)_transitionImageRequestersToDataSource:(id)source
{
  v22 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if ([(NSMapTable *)self->_imageRequesterByAssetReference count])
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    keyEnumerator = [(NSMapTable *)self->_imageRequesterByAssetReference keyEnumerator];
    v6 = [keyEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [(NSMapTable *)self->_imageRequesterByAssetReference objectForKey:v10];
          if (v11)
          {
            v12 = [sourceCopy assetReferenceForAssetReference:v10];
            if (v12)
            {
              [(NSMapTable *)strongToWeakObjectsMapTable setObject:v11 forKey:v12];
              v15[0] = MEMORY[0x1E69E9820];
              v15[1] = 3221225472;
              v15[2] = __58__PXUIAssetsScene__transitionImageRequestersToDataSource___block_invoke;
              v15[3] = &unk_1E7735000;
              v16 = v12;
              [v11 performChanges:v15];
            }
          }
        }

        v7 = [keyEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    imageRequesterByAssetReference = self->_imageRequesterByAssetReference;
    self->_imageRequesterByAssetReference = strongToWeakObjectsMapTable;
  }
}

void __58__PXUIAssetsScene__transitionImageRequestersToDataSource___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 asset];
  [v3 setAsset:v4];
}

- (id)_imageRequesterForAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = [(NSMapTable *)self->_imageRequesterByAssetReference objectForKey:referenceCopy];
  if (!v5)
  {
    v6 = [PXImageRequester alloc];
    mediaProvider = [(PXAssetsScene *)self mediaProvider];
    asset = [referenceCopy asset];
    v5 = [(PXImageRequester *)v6 initWithMediaProvider:mediaProvider asset:asset];

    [(PXUIAssetsScene *)self maximumImageSize];
    if (*MEMORY[0x1E695F060] != v10 || *(MEMORY[0x1E695F060] + 8) != v9)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __52__PXUIAssetsScene__imageRequesterForAssetReference___block_invoke;
      v13[3] = &unk_1E7735000;
      v13[4] = self;
      [(PXImageRequester *)v5 performChanges:v13];
    }

    [(NSMapTable *)self->_imageRequesterByAssetReference setObject:v5 forKey:referenceCopy];
  }

  return v5;
}

void __52__PXUIAssetsScene__imageRequesterForAssetReference___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 maximumImageSize];
  [v3 setMaximumRequestSize:?];
}

- (id)_imageRequesterForIndexPath:(PXSimpleIndexPath *)path inDataSource:(id)source
{
  v5 = *&path->item;
  v9[0] = *&path->dataSourceIdentifier;
  v9[1] = v5;
  v6 = [source assetReferenceAtItemIndexPath:v9];
  v7 = [(PXUIAssetsScene *)self _imageRequesterForAssetReference:v6];

  return v7;
}

- (void)_registerDefaultTiles
{
  viewTileReusePool = [(PXAssetsScene *)self viewTileReusePool];
  [viewTileReusePool registerReusableObjectForReuseIdentifier:333123 creationHandler:&__block_literal_global_73050];
  [viewTileReusePool registerReusableObjectForReuseIdentifier:333183 creationHandler:&__block_literal_global_7];
  [viewTileReusePool registerReusableObjectForReuseIdentifier:333193 creationHandler:&__block_literal_global_10_73051];
  [viewTileReusePool registerReusableObjectForReuseIdentifier:333203 creationHandler:&__block_literal_global_13];
  [viewTileReusePool registerReusableObjectForReuseIdentifier:333133 creationHandler:&__block_literal_global_16];
  [viewTileReusePool registerReusableObjectForReuseIdentifier:333153 creationHandler:&__block_literal_global_19_73052];
  [viewTileReusePool registerReusableObjectForReuseIdentifier:333163 creationHandler:&__block_literal_global_22];
  [viewTileReusePool registerReusableObjectForReuseIdentifier:333173 creationHandler:&__block_literal_global_24_73053];
}

PXUIPlayButtonTile *__40__PXUIAssetsScene__registerDefaultTiles__block_invoke_8()
{
  v0 = objc_alloc_init(PXUIPlayButtonTile);
  [(PXUIPlayButtonTile *)v0 performChanges:&__block_literal_global_28];

  return v0;
}

PXOverlayBadgeUIViewTile *__40__PXUIAssetsScene__registerDefaultTiles__block_invoke_7()
{
  v0 = objc_alloc_init(PXOverlayBadgeUIViewTile);

  return v0;
}

PXDimmingUIViewTile *__40__PXUIAssetsScene__registerDefaultTiles__block_invoke_6()
{
  v0 = objc_alloc_init(PXDimmingUIViewTile);
  v1 = [MEMORY[0x1E69DC888] whiteColor];
  [(PXDimmingUIViewTile *)v0 setBackgroundColor:v1];

  [(PXDimmingUIViewTile *)v0 setUserInteractionEnabled:0];

  return v0;
}

PXSelectionBadgeUIViewTile *__40__PXUIAssetsScene__registerDefaultTiles__block_invoke_5()
{
  v0 = objc_alloc_init(PXSelectionBadgeUIViewTile);

  return v0;
}

PXAssetLivePhotoUIViewTile *__40__PXUIAssetsScene__registerDefaultTiles__block_invoke_4()
{
  v0 = objc_alloc_init(PXAssetLivePhotoUIViewTile);

  return v0;
}

PXAssetLoopUIViewTile *__40__PXUIAssetsScene__registerDefaultTiles__block_invoke_3()
{
  v0 = objc_alloc_init(PXAssetLoopUIViewTile);

  return v0;
}

PXAssetAnimatedImageUIViewTile *__40__PXUIAssetsScene__registerDefaultTiles__block_invoke_2()
{
  v0 = objc_alloc_init(PXAssetAnimatedImageUIViewTile);

  return v0;
}

PXAssetUIImageViewTile *__40__PXUIAssetsScene__registerDefaultTiles__block_invoke()
{
  v0 = objc_alloc_init(PXAssetUIImageViewTile);
  v1 = [MEMORY[0x1E69DC938] currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 2)
  {
    [(PXAssetUIImageViewTile *)v0 setShouldAllowFocus:1];
    v3 = [MEMORY[0x1E69DC888] clearColor];
    [(PXAssetUIImageViewTile *)v0 setPlaceholderColor:v3];
  }

  else
  {
    [(PXAssetUIImageViewTile *)v0 setShouldAllowFocus:0];
  }

  return v0;
}

- (PXUIScrollViewController)scrollViewController
{
  tilingController = [(PXAssetsScene *)self tilingController];
  scrollController = [tilingController scrollController];

  return scrollController;
}

- (PXUIAssetsScene)initWithTilingController:(id)controller mediaProvider:(id)provider dataSourceManager:(id)manager selectionManager:(id)selectionManager delegate:(id)delegate
{
  controllerCopy = controller;
  v21.receiver = self;
  v21.super_class = PXUIAssetsScene;
  v13 = [(PXAssetsScene *)&v21 initWithTilingController:controllerCopy mediaProvider:provider dataSourceManager:manager selectionManager:selectionManager delegate:delegate];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    tilesInUse = v13->_tilesInUse;
    v13->_tilesInUse = v14;

    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    imageRequesterByAssetReference = v13->_imageRequesterByAssetReference;
    v13->_imageRequesterByAssetReference = strongToWeakObjectsMapTable;

    scrollController = [controllerCopy scrollController];
    scrollView = [scrollController scrollView];
    [scrollView _setAutomaticContentOffsetAdjustmentEnabled:0];

    [(PXUIAssetsScene *)v13 _registerDefaultTiles];
    [(PXUIAssetsScene *)v13 _invalidatePreheating];
    [(PXUIAssetsScene *)v13 _updatePreheatingIfNeeded];
  }

  return v13;
}

@end