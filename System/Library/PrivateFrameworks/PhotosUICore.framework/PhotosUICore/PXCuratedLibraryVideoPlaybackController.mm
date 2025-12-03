@interface PXCuratedLibraryVideoPlaybackController
- (BOOL)_canPlayVideosInZoomLevel:(int64_t)level;
- (BOOL)canPlayAsset:(id)asset;
- (BOOL)canProvideGeometriesForRecords;
- (BOOL)canUpdatePlayingRecords;
- (BOOL)shouldEnablePlayback;
- (CGRect)currentVisibleRect;
- (CGRect)frameForPlaybackRecord:(id)record minPlayableSize:(CGSize *)size;
- (PXCuratedLibraryVideoPlaybackController)init;
- (id)createPlaybackRecordForDisplayAsset:(id)asset mediaProvider:(id)provider geometryReference:(id)reference spriteSize:(CGSize)size displayScale:(double)scale;
- (id)currentHoveredDisplayAsset;
- (id)filterSortedRecordsToPlay:(id)play;
- (id)initViewViewModel:(id)model;
- (int64_t)maxNumberOfPlayingItems;
- (void)enumerateRectDiagnosticsForLayout:(id)layout usingBlock:(id)block;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXCuratedLibraryVideoPlaybackController

- (int64_t)maxNumberOfPlayingItems
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);
  if (-[PXCuratedLibraryVideoPlaybackController _canPlayVideosInZoomLevel:](self, "_canPlayVideosInZoomLevel:", [WeakRetained zoomLevel]))
  {
    v6.receiver = self;
    v6.super_class = PXCuratedLibraryVideoPlaybackController;
    maxNumberOfPlayingItems = [(PXGridInlinePlaybackController *)&v6 maxNumberOfPlayingItems];
  }

  else
  {
    maxNumberOfPlayingItems = 0;
  }

  return maxNumberOfPlayingItems;
}

- (BOOL)canUpdatePlayingRecords
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);
  v3 = [WeakRetained zoomLevelTransitionPhase] == 0;

  return v3;
}

- (BOOL)shouldEnablePlayback
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);
  v4 = -[PXCuratedLibraryVideoPlaybackController _canPlayVideosInZoomLevel:](self, "_canPlayVideosInZoomLevel:", [WeakRetained zoomLevel]);

  if (!v4)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_viewModel);
  isSelecting = [v5 isSelecting];

  if (isSelecting)
  {
    return 0;
  }

  v7 = objc_loadWeakRetained(&self->_viewModel);
  scrollRegime = [v7 scrollRegime];

  if (scrollRegime > 1)
  {
    return 0;
  }

  else
  {
    return [off_1E7721408 px_accessibilityIsReduceMotionEnabled] ^ 1;
  }
}

- (void)enumerateRectDiagnosticsForLayout:(id)layout usingBlock:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v31 = 0;
  v30[0] = 0;
  v30[1] = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(PXGridInlinePlaybackController *)self currentRecords];
  v6 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v27 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v26 + 1) + 8 * v9);
      [(PXCuratedLibraryVideoPlaybackController *)self frameForPlaybackRecord:v10 minPlayableSize:v30];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = MEMORY[0x1E696AEC0];
      diagnosticLog = [v10 diagnosticLog];
      diagnosticScoresDescription = [v10 diagnosticScoresDescription];
      videoStatusDescription = [v10 videoStatusDescription];
      v23 = [v19 stringWithFormat:@"\n%@\n%@\n%@", diagnosticLog, diagnosticScoresDescription, videoStatusDescription];

      cyanColor = [MEMORY[0x1E69DC888] cyanColor];
      blockCopy[2](blockCopy, cyanColor, v23, &v31, v12, v14, v16, v18);

      LOBYTE(cyanColor) = v31;
      if (cyanColor)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (BOOL)_canPlayVideosInZoomLevel:(int64_t)level
{
  if ((level - 1) < 3)
  {
    return 1;
  }

  if (level != 4)
  {
    return 0;
  }

  v5 = +[PXCuratedLibrarySettings sharedInstance];
  enableInlinePlaybackInZoomableGrids = [v5 enableInlinePlaybackInZoomableGrids];

  if (!enableInlinePlaybackInZoomableGrids)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_viewModel);
  zoomablePhotosViewModel = [WeakRetained zoomablePhotosViewModel];
  isDisplayingIndividualItems = [zoomablePhotosViewModel isDisplayingIndividualItems];

  return isDisplayingIndividualItems;
}

- (BOOL)canPlayAsset:(id)asset
{
  if (([asset playbackStyle] - 3) > 2)
  {
    return 0;
  }

  v3 = +[PXCuratedLibrarySettings sharedInstance];
  enableInlinePlayback = [v3 enableInlinePlayback];

  return enableInlinePlayback;
}

- (BOOL)canProvideGeometriesForRecords
{
  curatedLibraryLayout = [(PXCuratedLibraryVideoPlaybackController *)self curatedLibraryLayout];
  allowsObjectReferenceSpriteIndexLookup = [curatedLibraryLayout allowsObjectReferenceSpriteIndexLookup];

  return allowsObjectReferenceSpriteIndexLookup;
}

- (CGRect)frameForPlaybackRecord:(id)record minPlayableSize:(CGSize *)size
{
  v52 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  curatedLibraryLayout = [(PXCuratedLibraryVideoPlaybackController *)self curatedLibraryLayout];
  geometryReference = [recordCopy geometryReference];
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x4010000000;
  v48[3] = &unk_1A561E057;
  v9 = *(MEMORY[0x1E695F058] + 16);
  v49 = *MEMORY[0x1E695F058];
  v50 = v9;
  if ((self->_newZoomLevel - 1) <= 1)
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __82__PXCuratedLibraryVideoPlaybackController_frameForPlaybackRecord_minPlayableSize___block_invoke;
    v45[3] = &unk_1E773D948;
    v46 = recordCopy;
    v47 = v48;
    [curatedLibraryLayout enumerateVisibleAssetsSectionSublayoutsUsingBlock:v45];
    v10 = v46;
    goto LABEL_17;
  }

  objectReference = [geometryReference objectReference];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    keyAssetReference = [objectReference keyAssetReference];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
      goto LABEL_9;
    }

    keyAssetReference = objectReference;
  }

  v10 = keyAssetReference;
LABEL_9:
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = -1;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__148208;
  v39 = __Block_byref_object_dispose__148209;
  v40 = 0;
  if (v10)
  {
    if (self->_presentedZoomLevel == 4 && (+[PXCuratedLibrarySettings sharedInstance](PXCuratedLibrarySettings, "sharedInstance"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 enableInlinePlaybackInZoomableGrids], v13, v14))
    {
      v15 = [curatedLibraryLayout spriteIndexForObjectReference:v10];
      *(v42 + 6) = v15;
    }

    else
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __82__PXCuratedLibraryVideoPlaybackController_frameForPlaybackRecord_minPlayableSize___block_invoke_213;
      v31[3] = &unk_1E773D970;
      v33 = &v41;
      v32 = v10;
      v34 = &v35;
      [curatedLibraryLayout enumerateVisibleAssetsSectionSublayoutsUsingBlock:v31];
      v16 = [curatedLibraryLayout convertSpriteIndex:*(v42 + 6) fromDescendantLayout:v36[5]];
      *(v42 + 6) = v16;

      v15 = *(v42 + 6);
    }

    if (v15 != -1)
    {
      v30 = *off_1E7722008;
      v17 = *(off_1E7722028 + 1);
      v29[0] = *off_1E7722028;
      v29[1] = v17;
      v18 = *(off_1E7722048 + 7);
      v51[6] = *(off_1E7722048 + 6);
      v51[7] = v18;
      v19 = *(off_1E7722048 + 9);
      v51[8] = *(off_1E7722048 + 8);
      v51[9] = v19;
      v20 = *(off_1E7722048 + 3);
      v51[2] = *(off_1E7722048 + 2);
      v51[3] = v20;
      v21 = *(off_1E7722048 + 5);
      v51[4] = *(off_1E7722048 + 4);
      v51[5] = v21;
      v22 = *(off_1E7722048 + 1);
      v51[0] = *off_1E7722048;
      v51[1] = v22;
      v23 = *(off_1E7722040 + 1);
      v27[0] = *off_1E7722040;
      v27[1] = v23;
      v28 = *(off_1E7722040 + 4);
      [curatedLibraryLayout copyLayoutForSpritesInRange:v15 | 0x100000000 entities:&v30 geometries:v29 styles:v51 infos:v27];
      [curatedLibraryLayout minPlayableSizeForSpriteAtIndex:*(v42 + 6)];
      size->width = v24;
      size->height = v25;
      PXRectWithCenterAndSize();
    }
  }

  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
LABEL_17:

  [curatedLibraryLayout displayScale];
  if (v26 > 0.0)
  {
    [curatedLibraryLayout displayScale];
  }

  PXRectRoundToPixel();
}

void __82__PXCuratedLibraryVideoPlaybackController_frameForPlaybackRecord_minPlayableSize___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7, _BYTE *a8)
{
  v24 = a7;
  v14 = [v24 bodyContentLayout];
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = v14;
  v16 = [*(a1 + 32) displayAsset];
  v17 = [v24 keyAssetsFetchResult];
  v18 = [v17 firstObject];
  v19 = v16;
  v20 = v18;
  v21 = v20;
  if (v19 == v20)
  {

    goto LABEL_10;
  }

  if (!v19 || !v20)
  {

    goto LABEL_12;
  }

  v22 = [v19 isContentEqualTo:v20];
  if (!v22)
  {
    v22 = [v21 isContentEqualTo:v19];
  }

  if (v22 == 2)
  {
LABEL_10:
    v23 = *(*(a1 + 40) + 8);
    v23[4] = a2;
    v23[5] = a3;
    v23[6] = a4;
    v23[7] = a5;
    *a8 = 1;
  }

LABEL_12:
}

void __82__PXCuratedLibraryVideoPlaybackController_frameForPlaybackRecord_minPlayableSize___block_invoke_213(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a1[4];
  v9 = 0;
  *(*(a1[5] + 8) + 24) = [v7 spriteIndexForObjectReference:v8 options:0 updatedObjectReference:&v9];
  if (*(*(a1[5] + 8) + 24) != -1)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)filterSortedRecordsToPlay:(id)play
{
  v49 = *MEMORY[0x1E69E9840];
  playCopy = play;
  if ([playCopy count])
  {
    v38 = playCopy;
    curatedLibraryLayout = [(PXCuratedLibraryVideoPlaybackController *)self curatedLibraryLayout];
    v37 = playCopy;
    WeakRetained = objc_loadWeakRetained(&self->_viewModel);
    skimmingInfo = [WeakRetained skimmingInfo];
    parentAssetCollection = [skimmingInfo parentAssetCollection];

    v8 = parentAssetCollection;
    if (parentAssetCollection)
    {
      v9 = [off_1E7721488 alloc];
      v10 = *(off_1E7722228 + 1);
      v46 = *off_1E7722228;
      v47 = v10;
      v35 = [v9 initWithSectionObject:parentAssetCollection itemObject:0 subitemObject:0 indexPath:&v46];
      v45 = 0;
      v11 = [curatedLibraryLayout spriteIndexForObjectReference:v35 options:1 updatedObjectReference:&v45];
      v34 = v45;
      v12 = [curatedLibraryLayout leafSublayoutForSpriteIndex:v11];
      v39 = [v37 mutableCopy];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v13 = v37;
        v14 = [v13 countByEnumeratingWithState:&v41 objects:v48 count:16];
        if (v14)
        {
          v15 = *v42;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v42 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v41 + 1) + 8 * i);
              geometryReference = [v17 geometryReference];
              v19 = [curatedLibraryLayout spriteIndexForSpriteReference:geometryReference];

              v20 = [curatedLibraryLayout leafSublayoutForSpriteIndex:v19];
              bodyContentLayout = [v12 bodyContentLayout];
              v23 = bodyContentLayout != v20 && v12 != v20;

              if (v23)
              {
                [v17 setDiagnosticLog:@"Record doesn't belong to skimming card"];
                [v39 removeObject:v17];
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v41 objects:v48 count:16];
          }

          while (v14);
        }
      }
    }

    else
    {
      newZoomLevel = self->_newZoomLevel;
      if (newZoomLevel == 1)
      {
        libraryBodyLayout = [curatedLibraryLayout libraryBodyLayout];
        composition = [libraryBodyLayout composition];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = 0;
          v33 = v37;
          if ([composition presentedNumberOfColumns] >= 2)
          {

            v33 = MEMORY[0x1E695E0F0];
          }
        }

        else
        {
          v8 = 0;
          v33 = v37;
        }

        v39 = v33;
        goto LABEL_22;
      }

      if (newZoomLevel != 2)
      {
        v39 = v37;
        goto LABEL_22;
      }

      libraryBodyLayout2 = [curatedLibraryLayout libraryBodyLayout];
      composition2 = [libraryBodyLayout2 composition];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (([composition2 presentedSingleColumn] & 1) == 0 && objc_msgSend(v37, "count") >= 2)
        {
          v28 = [v37 mutableCopy];
          v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
          *&v46 = 0;
          *(&v46 + 1) = &v46;
          v47 = 0x2020000000uLL;
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __69__PXCuratedLibraryVideoPlaybackController_filterSortedRecordsToPlay___block_invoke;
          v40[3] = &unk_1E773D8D8;
          v40[6] = &v46;
          v40[4] = v28;
          v30 = v29;
          v40[5] = v30;
          [curatedLibraryLayout enumerateVisibleAssetsSectionSublayoutsUsingBlock:v40];
          [v30 allValues];
          objc_claimAutoreleasedReturnValue();
          PXMap();
        }

        v39 = v37;
      }

      else
      {
        v39 = v37;
      }
    }

    v8 = parentAssetCollection;
LABEL_22:

    playCopy = v38;
    goto LABEL_24;
  }

  v39 = playCopy;
LABEL_24:

  return v39;
}

void __69__PXCuratedLibraryVideoPlaybackController_filterSortedRecordsToPlay___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 assetCollection];
  v6 = PXCuratedLibraryAssetsCollectionRepresentsChapterHeader(v5, 2);

  if (v6)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  else
  {
    v7 = [v4 bodyContentLayout];

    if (v7)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v8 = *(a1 + 32);
      v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v9)
      {
        v10 = v9;
        v26 = a1;
        v11 = *v28;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v28 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v27 + 1) + 8 * i) displayAsset];
            v14 = [v4 keyAssetsFetchResult];
            v15 = [v14 firstObject];
            v16 = v13;
            v17 = v15;
            v18 = v17;
            if (v16 == v17)
            {

LABEL_23:
              v22 = *(v26 + 40);
              v23 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(*(v26 + 48) + 8) + 24)];
              v24 = [v22 objectForKeyedSubscript:v23];
              v25 = [v24 second];
              [v25 CGRectValue];

              PXRectArea();
            }

            if (v16)
            {
              v19 = v17 == 0;
            }

            else
            {
              v19 = 1;
            }

            if (v19)
            {
            }

            else
            {
              v20 = [v16 isContentEqualTo:v17];
              v21 = v20;
              if (!v20)
              {
                v21 = [v18 isContentEqualTo:v16];
              }

              if (v21 == 2)
              {
                goto LABEL_23;
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v10);
        a1 = v26;
      }

      [*(a1 + 32) removeObject:0];
    }
  }
}

- (id)currentHoveredDisplayAsset
{
  v14 = 0u;
  v15 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);
  selectionSnapshot = [WeakRetained selectionSnapshot];
  v5 = selectionSnapshot;
  if (selectionSnapshot)
  {
    [selectionSnapshot pendingIndexPath];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  if (v14 == *off_1E7721F68)
  {
    v6 = 0;
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_viewModel);
    currentDataSource = [v7 currentDataSource];
    v13[0] = v14;
    v13[1] = v15;
    v6 = [currentDataSource objectReferenceAtIndexPath:v13];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    keyAssetReference = v6;
LABEL_11:
    v10 = keyAssetReference;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    keyAssetReference = [v6 keyAssetReference];
    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:
  asset = [v10 asset];

  return asset;
}

- (CGRect)currentVisibleRect
{
  curatedLibraryLayout = [(PXCuratedLibraryVideoPlaybackController *)self curatedLibraryLayout];
  [curatedLibraryLayout visibleRect];
  [curatedLibraryLayout safeAreaInsets];
  PXEdgeInsetsInsetRect();
}

- (id)createPlaybackRecordForDisplayAsset:(id)asset mediaProvider:(id)provider geometryReference:(id)reference spriteSize:(CGSize)size displayScale:(double)scale
{
  referenceCopy = reference;
  providerCopy = provider;
  assetCopy = asset;
  v12 = [[PXGridInlineVideoSessionAssetPlaybackRecord alloc] initWithDisplayAsset:assetCopy mediaProvider:providerCopy spriteReference:referenceCopy playLivePhotosWithSettlingEffectIfPossible:0];

  return v12;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXCuratedLibraryViewModelObservableContext == context)
  {
    if ((changeCopy & 0x805) != 0)
    {
      [(PXGridInlinePlaybackController *)self invalidatePlaybackEnabled];
    }

    if ((changeCopy & 0x2200) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_viewModel);
      zoomLevelTransitionPhase = [WeakRetained zoomLevelTransitionPhase];

      if (!zoomLevelTransitionPhase)
      {
        v11 = objc_loadWeakRetained(&self->_viewModel);
        self->_newZoomLevel = [v11 zoomLevel];

        [(PXGridInlinePlaybackController *)self invalidatePlayingRecords];
      }
    }

    if ((changeCopy & 8) != 0 && [(PXGridInlinePlaybackController *)self shouldPlayOnHover])
    {
      [(PXGridInlinePlaybackController *)self invalidatePlayingRecords];
    }
  }

  else
  {
    if (PXCuratedLibraryViewModelZoomablePhotosObserverContext_148226 != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryVideoPlaybackController.m" lineNumber:100 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((changeCopy & 1) != 0 && [(PXGridInlinePlaybackController *)self shouldPlayOnHover])
    {
      [(PXGridInlinePlaybackController *)self invalidatePlaybackEnabled];
    }
  }
}

- (PXCuratedLibraryVideoPlaybackController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryVideoPlaybackController.m" lineNumber:57 description:{@"%s is not available as initializer", "-[PXCuratedLibraryVideoPlaybackController init]"}];

  abort();
}

- (id)initViewViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = PXCuratedLibraryVideoPlaybackController;
  v5 = [(PXGridInlinePlaybackController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewModel, modelCopy);
    v6->_newZoomLevel = [modelCopy zoomLevel];
    [modelCopy registerChangeObserver:v6 context:PXCuratedLibraryViewModelObservableContext];
    zoomablePhotosViewModel = [modelCopy zoomablePhotosViewModel];
    [zoomablePhotosViewModel registerChangeObserver:v6 context:PXCuratedLibraryViewModelZoomablePhotosObserverContext_148226];
  }

  return v6;
}

@end