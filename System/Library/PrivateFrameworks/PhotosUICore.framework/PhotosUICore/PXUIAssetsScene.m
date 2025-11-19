@interface PXUIAssetsScene
- (BOOL)needsUpdate;
- (CGSize)maximumImageSize;
- (PXUIAssetsScene)initWithTilingController:(id)a3 mediaProvider:(id)a4 dataSourceManager:(id)a5 selectionManager:(id)a6 delegate:(id)a7;
- (PXUIScrollViewController)scrollViewController;
- (id)_assetsBySizeWithTileIdentifiers:(const PXTileIdentifier *)a3 withGeometries:(const PXTileGeometry *)a4 count:(unint64_t)a5;
- (id)_imageRequesterForAssetReference:(id)a3;
- (id)_imageRequesterForIndexPath:(PXSimpleIndexPath *)a3 inDataSource:(id)a4;
- (void)_registerDefaultTiles;
- (void)_transitionImageRequestersToDataSource:(id)a3;
- (void)_updatePreheatingIfNeeded;
- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)reusableObjectPool:(id)a3 didCreateReusableObject:(id)a4;
- (void)reusableObjectPool:(id)a3 didEvictReusableObject:(id)a4;
- (void)startPreheatingTilesForIdentifiers:(const PXTileIdentifier *)a3 withGeometries:(const PXTileGeometry *)a4 count:(unint64_t)a5 context:(void *)a6;
- (void)stopPreheatingTilesForIdentifiers:(const PXTileIdentifier *)a3 withGeometries:(const PXTileGeometry *)a4 count:(unint64_t)a5 context:(void *)a6;
- (void)updateIfNeeded;
- (void)willTransitionToDataSource:(id)a3;
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

- (id)_assetsBySizeWithTileIdentifiers:(const PXTileIdentifier *)a3 withGeometries:(const PXTileGeometry *)a4 count:(unint64_t)a5
{
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = [(PXAssetsScene *)self dataSourceManager];
  v11 = [v10 dataSource];

  v12 = [v11 identifier];
  v13 = *MEMORY[0x1E695F060];
  v14 = *(MEMORY[0x1E695F060] + 8);
  v15 = [MEMORY[0x1E696B098] valueWithCGSize:{*MEMORY[0x1E695F060], v14}];
  if (a5)
  {
    v16 = &a3->index[2];
    p_height = &a4->contentSize.height;
    do
    {
      if (*(v16 - 3) == 5 && (*(v16 - 2) == 6432423 ? (v18 = *(v16 - 1) == v12) : (v18 = 0), v18))
      {
        v21 = *v16;
        v22 = v16[2];
        v29 = v12;
        v30 = v21;
        v31 = v22;
        v23 = [v11 assetAtItemIndexPath:&v29];
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

        v26 = [v9 objectForKeyedSubscript:v15];
        if (v26)
        {
          v27 = v26;
          [v26 addObject:v23];
        }

        else
        {
          v27 = [MEMORY[0x1E695DF70] arrayWithObject:v23];
          [v9 setObject:v27 forKeyedSubscript:v15];
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
      --a5;
    }

    while (a5);
  }

  return v9;
}

- (void)stopPreheatingTilesForIdentifiers:(const PXTileIdentifier *)a3 withGeometries:(const PXTileGeometry *)a4 count:(unint64_t)a5 context:(void *)a6
{
  if (PXImagePreheatContext == a6)
  {
    v10[7] = v6;
    v10[8] = v7;
    v9 = [(PXUIAssetsScene *)self _assetsBySizeWithTileIdentifiers:a3 withGeometries:a4 count:a5];
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

- (void)startPreheatingTilesForIdentifiers:(const PXTileIdentifier *)a3 withGeometries:(const PXTileGeometry *)a4 count:(unint64_t)a5 context:(void *)a6
{
  if (PXImagePreheatContext == a6)
  {
    v10[7] = v6;
    v10[8] = v7;
    v9 = [(PXUIAssetsScene *)self _assetsBySizeWithTileIdentifiers:a3 withGeometries:a4 count:a5];
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

- (void)reusableObjectPool:(id)a3 didEvictReusableObject:(id)a4
{
  v4 = [a4 view];
  [v4 removeFromSuperview];
}

- (void)reusableObjectPool:(id)a3 didCreateReusableObject:(id)a4
{
  v6 = [a4 view];
  v5 = [(PXUIAssetsScene *)self scrollViewController];
  [v5 addSubview:v6];
}

- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4
{
  v6 = [(PXAssetsScene *)self viewTileReusePool:a3];
  [v6 checkInReusableObject:a3];

  tilesInUse = self->_tilesInUse;

  [(NSMutableSet *)tilesInUse removeObject:a3];
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4
{
  v7 = a4;
  v8 = a3->index[0];
  if (a3->length == 5 && v8 == 6432423)
  {
    v12 = [(PXAssetsScene *)self viewTileReusePool];
    v11 = [v12 checkOutReusableObjectWithReuseIdentifier:333123];

    v13 = [MEMORY[0x1E69DC938] currentDevice];
    v14 = [v13 userInterfaceIdiom];

    if (v14 != 2)
    {
      goto LABEL_16;
    }

    v15 = [MEMORY[0x1E69DCEB0] px_mainScreen];
    v16 = [v15 traitCollection];
    v17 = [v16 userInterfaceStyle];

    if (v17 == 1)
    {
      v18 = @"PreloadAsset-iCloud";
    }

    else
    {
      v18 = @"PreloadAsset-iCloud-Dark";
    }

    v10 = [MEMORY[0x1E69DCAB8] px_imageNamed:v18];
    [v11 setPlaceholderImage:v10];
    goto LABEL_15;
  }

  if (v8 <= 6332435)
  {
    if (v8 != 6332434)
    {
      if (v8 == 6332435)
      {
        v23 = [(PXAssetsScene *)self viewTileReusePool];
        v19 = [v23 checkOutReusableObjectWithReuseIdentifier:333163];

        v24 = [(PXAssetsScene *)self badgeManager];
        [v19 setBadgeManager:v24];

        v42 = *&a3->index[3];
        v45 = *&a3->index[1];
        v25 = [v7 dataSource];
        v47 = v45;
        v48 = v42;
        v26 = [(PXUIAssetsScene *)self _imageRequesterForIndexPath:&v47 inDataSource:v25];

        [v19 setImageRequester:v26];
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    v27 = [(PXAssetsScene *)self viewTileReusePool];
    v28 = v27;
    v29 = 333133;
    goto LABEL_24;
  }

  switch(v8)
  {
    case 6332436:
      v27 = [(PXAssetsScene *)self viewTileReusePool];
      v28 = v27;
      v29 = 333153;
LABEL_24:
      v19 = [v27 checkOutReusableObjectWithReuseIdentifier:v29];
      goto LABEL_25;
    case 6332437:
      v30 = [(PXAssetsScene *)self viewTileReusePool];
      v19 = [v30 checkOutReusableObjectWithReuseIdentifier:333173];

      v43 = *&a3->index[3];
      v46 = *&a3->index[1];
      v31 = [v7 dataSource];
      v47 = v46;
      v48 = v43;
      v32 = [(PXUIAssetsScene *)self _imageRequesterForIndexPath:&v47 inDataSource:v31];

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
      v10 = [(PXAssetsScene *)self viewTileReusePool];
      v11 = [v10 checkOutReusableObjectWithReuseIdentifier:333203];
LABEL_15:

      goto LABEL_16;
  }

LABEL_28:
  if ((v8 - 6332439) > 1)
  {
    if (v8 != 6332438)
    {
      v37 = [MEMORY[0x1E696AAA8] currentHandler];
      v38 = *&a3->index[5];
      v49 = *&a3->index[3];
      v50 = v38;
      v51 = *&a3->index[7];
      v52 = a3->index[9];
      v39 = *&a3->index[1];
      v47 = *&a3->length;
      v48 = v39;
      v40 = PXTileIdentifierDescription(&v47);
      [v37 handleFailureInMethod:a2 object:self file:@"PXUIAssetsScene.m" lineNumber:345 description:{@"%@ got asked to produce a tile for an unknown identifier:%@. If you're adding custom tile kinds, those have to be returned by your own tile source and not bubble up to the assets scene.", self, v40}];

      abort();
    }

    v34 = [(PXAssetsScene *)self viewTileReusePool];
    v35 = v34;
    v36 = 333183;
  }

  else
  {
    v34 = [(PXAssetsScene *)self viewTileReusePool];
    v35 = v34;
    v36 = 333193;
  }

  v11 = [v34 checkOutReusableObjectWithReuseIdentifier:v36];

  [v11 setDesiredPlayState:{-[PXAssetsScene autoplayTilesWaitForInput](self, "autoplayTilesWaitForInput") ^ 1}];
LABEL_16:
  v19 = v11;
  if (!v19)
  {
LABEL_26:
    v22 = 0;
    goto LABEL_27;
  }

  v41 = *&a3->index[3];
  v44 = *&a3->index[1];
  v20 = [v7 dataSource];
  v47 = v44;
  v48 = v41;
  v21 = [(PXUIAssetsScene *)self _imageRequesterForIndexPath:&v47 inDataSource:v20];

  [v19 setImageRequester:v21];
  [(PXUIAssetsScene *)self contentTileCornerRadius];
  [v19 setCornerRadius:?];

  v22 = v19;
LABEL_27:
  [(NSMutableSet *)self->_tilesInUse addObject:v19];

  return v19;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if ((a4 & 6) != 0 && PXAssetsSceneSpeedometerObserverContext == a5)
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
  [(PXAssetsScene *)&v9 observable:v8 didChange:a4 context:a5];
}

- (void)willTransitionToDataSource:(id)a3
{
  v5.receiver = self;
  v5.super_class = PXUIAssetsScene;
  v4 = a3;
  [(PXAssetsScene *)&v5 willTransitionToDataSource:v4];
  [(PXUIAssetsScene *)self _transitionImageRequestersToDataSource:v4, v5.receiver, v5.super_class];
}

- (void)_updatePreheatingIfNeeded
{
  if (self->_needsUpdateFlags.preheating)
  {
    self->_needsUpdateFlags.preheating = 0;
    v6 = [(PXAssetsScene *)self scrollSpeedometer];
    v3 = [v6 regime];
    if (v3 > 1)
    {
      goto LABEL_7;
    }

    if (v3 != -1)
    {
      if (v3 == 1)
      {
        [v6 previousRegime];
      }

LABEL_7:
      v4 = [v6 scrollViewController];
      v5 = [v4 scrollView];

      [v5 contentSize];
      [v5 contentInset];
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

- (void)_transitionImageRequestersToDataSource:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSMapTable *)self->_imageRequesterByAssetReference count])
  {
    v14 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(NSMapTable *)self->_imageRequesterByAssetReference keyEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [(NSMapTable *)self->_imageRequesterByAssetReference objectForKey:v10];
          if (v11)
          {
            v12 = [v4 assetReferenceForAssetReference:v10];
            if (v12)
            {
              [(NSMapTable *)v14 setObject:v11 forKey:v12];
              v15[0] = MEMORY[0x1E69E9820];
              v15[1] = 3221225472;
              v15[2] = __58__PXUIAssetsScene__transitionImageRequestersToDataSource___block_invoke;
              v15[3] = &unk_1E7735000;
              v16 = v12;
              [v11 performChanges:v15];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    imageRequesterByAssetReference = self->_imageRequesterByAssetReference;
    self->_imageRequesterByAssetReference = v14;
  }
}

void __58__PXUIAssetsScene__transitionImageRequestersToDataSource___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 asset];
  [v3 setAsset:v4];
}

- (id)_imageRequesterForAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_imageRequesterByAssetReference objectForKey:v4];
  if (!v5)
  {
    v6 = [PXImageRequester alloc];
    v7 = [(PXAssetsScene *)self mediaProvider];
    v8 = [v4 asset];
    v5 = [(PXImageRequester *)v6 initWithMediaProvider:v7 asset:v8];

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

    [(NSMapTable *)self->_imageRequesterByAssetReference setObject:v5 forKey:v4];
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

- (id)_imageRequesterForIndexPath:(PXSimpleIndexPath *)a3 inDataSource:(id)a4
{
  v5 = *&a3->item;
  v9[0] = *&a3->dataSourceIdentifier;
  v9[1] = v5;
  v6 = [a4 assetReferenceAtItemIndexPath:v9];
  v7 = [(PXUIAssetsScene *)self _imageRequesterForAssetReference:v6];

  return v7;
}

- (void)_registerDefaultTiles
{
  v2 = [(PXAssetsScene *)self viewTileReusePool];
  [v2 registerReusableObjectForReuseIdentifier:333123 creationHandler:&__block_literal_global_73050];
  [v2 registerReusableObjectForReuseIdentifier:333183 creationHandler:&__block_literal_global_7];
  [v2 registerReusableObjectForReuseIdentifier:333193 creationHandler:&__block_literal_global_10_73051];
  [v2 registerReusableObjectForReuseIdentifier:333203 creationHandler:&__block_literal_global_13];
  [v2 registerReusableObjectForReuseIdentifier:333133 creationHandler:&__block_literal_global_16];
  [v2 registerReusableObjectForReuseIdentifier:333153 creationHandler:&__block_literal_global_19_73052];
  [v2 registerReusableObjectForReuseIdentifier:333163 creationHandler:&__block_literal_global_22];
  [v2 registerReusableObjectForReuseIdentifier:333173 creationHandler:&__block_literal_global_24_73053];
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
  v2 = [(PXAssetsScene *)self tilingController];
  v3 = [v2 scrollController];

  return v3;
}

- (PXUIAssetsScene)initWithTilingController:(id)a3 mediaProvider:(id)a4 dataSourceManager:(id)a5 selectionManager:(id)a6 delegate:(id)a7
{
  v12 = a3;
  v21.receiver = self;
  v21.super_class = PXUIAssetsScene;
  v13 = [(PXAssetsScene *)&v21 initWithTilingController:v12 mediaProvider:a4 dataSourceManager:a5 selectionManager:a6 delegate:a7];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    tilesInUse = v13->_tilesInUse;
    v13->_tilesInUse = v14;

    v16 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    imageRequesterByAssetReference = v13->_imageRequesterByAssetReference;
    v13->_imageRequesterByAssetReference = v16;

    v18 = [v12 scrollController];
    v19 = [v18 scrollView];
    [v19 _setAutomaticContentOffsetAdjustmentEnabled:0];

    [(PXUIAssetsScene *)v13 _registerDefaultTiles];
    [(PXUIAssetsScene *)v13 _invalidatePreheating];
    [(PXUIAssetsScene *)v13 _updatePreheatingIfNeeded];
  }

  return v13;
}

@end