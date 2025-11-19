@interface PXCuratedLibraryAssetCollectionSkimmingModel
- (PXCuratedLibraryAssetCollectionSkimmingModel)initWithViewModel:(id)a3;
- (PXSimpleIndexPath)initialIndexPath;
- (PXSimpleIndexPath)skimmedIndexPath;
- (id)validatedAssetCollectionReference:(id)a3;
- (void)_prepareIndexesForAssetCollectionReference:(id)a3 willStartSkimming:(BOOL)a4 willStartSlideshow:(BOOL)a5;
- (void)_updateViewModel;
- (void)persistSkimmingState;
- (void)setSkimmedIndexPath:(PXSimpleIndexPath *)a3;
- (void)tearDownAfterSkimmingShowHints:(BOOL)a3 persistState:(BOOL)a4;
- (void)transitionToSkimming;
- (void)transitionToSlideshow;
@end

@implementation PXCuratedLibraryAssetCollectionSkimmingModel

- (PXSimpleIndexPath)skimmedIndexPath
{
  v3 = *&self[3].item;
  *&retstr->dataSourceIdentifier = *&self[3].dataSourceIdentifier;
  *&retstr->item = v3;
  return self;
}

- (PXSimpleIndexPath)initialIndexPath
{
  v3 = *&self[2].item;
  *&retstr->dataSourceIdentifier = *&self[2].dataSourceIdentifier;
  *&retstr->item = v3;
  return self;
}

- (void)persistSkimmingState
{
  if (self->_skimmingZoomLevel)
  {
    dataSourceIdentifier = self->_skimmedIndexPath.dataSourceIdentifier;
    v14 = *&self->_skimmedIndexPath.section;
    subitem = self->_skimmedIndexPath.subitem;
    v4 = [(PXCuratedLibraryViewModel *)self->_viewModel assetsDataSourceManager];
    v5 = [v4 dataSourceForZoomLevel:self->_skimmingZoomLevel];
    if ([v5 identifier] == dataSourceIdentifier)
    {
      v11 = dataSourceIdentifier;
      v12 = v14;
      v13 = subitem;
      v6 = [v5 keyAssetsInSectionIndexPath:&v11];
      v7 = [v6 firstObject];

      if (v7)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __68__PXCuratedLibraryAssetCollectionSkimmingModel_persistSkimmingState__block_invoke;
        v8[3] = &unk_1E77410D0;
        v9 = v7;
        v10 = self;
        [v4 performChanges:v8];
      }
    }
  }
}

void __68__PXCuratedLibraryAssetCollectionSkimmingModel_persistSkimmingState__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v4 containingAssetCollectionReference];
  v6 = [v7 assetCollection];
  [v5 setTransientKeyAsset:v3 forAssetCollection:v6 zoomLevel:*(*(a1 + 40) + 16)];
}

- (void)_updateViewModel
{
  viewModel = self->_viewModel;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__PXCuratedLibraryAssetCollectionSkimmingModel__updateViewModel__block_invoke;
  v3[3] = &unk_1E7748B68;
  v3[4] = self;
  [(PXCuratedLibraryViewModel *)viewModel performChanges:v3];
}

void __64__PXCuratedLibraryAssetCollectionSkimmingModel__updateViewModel__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 56) count];
  v5 = [*(a1 + 32) isPlayingSlideshow];
  if (v4 > 1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 32) isInteractionInProgress];
  v8 = v7;
  if ((v6 & 1) != 0 || v7)
  {
    v9 = objc_alloc_init(PXCuratedLibraryAssetCollectionSkimmingInfo);
    [(PXCuratedLibraryAssetCollectionSkimmingInfo *)v9 setSlideshowStarted:v6];
    [(PXCuratedLibraryAssetCollectionSkimmingInfo *)v9 setTouchInteractionStarted:v8];
    v10 = [*(*(a1 + 32) + 48) assetCollection];
    [(PXCuratedLibraryAssetCollectionSkimmingInfo *)v9 setParentAssetCollection:v10];

    [(PXCuratedLibraryAssetCollectionSkimmingInfo *)v9 setChildCollectionsZoomLevel:*(*(a1 + 32) + 24)];
    [(PXCuratedLibraryAssetCollectionSkimmingInfo *)v9 setChildCollectionsIndexes:*(*(a1 + 32) + 56)];
    v11 = *(a1 + 32);
    v12 = *(v11 + 112);
    v13[0] = *(v11 + 96);
    v13[1] = v12;
    [(PXCuratedLibraryAssetCollectionSkimmingInfo *)v9 setCurrentChildCollectionIndexPath:v13];
  }

  else
  {
    v9 = 0;
  }

  [v3 setSkimmingInfo:v9];
}

- (void)setSkimmedIndexPath:(PXSimpleIndexPath *)a3
{
  if (a3->section != self->_skimmedIndexPath.section)
  {
    v3 = *&a3->item;
    *&self->_skimmedIndexPath.dataSourceIdentifier = *&a3->dataSourceIdentifier;
    *&self->_skimmedIndexPath.item = v3;
    [(PXCuratedLibraryAssetCollectionSkimmingModel *)self _updateViewModel];
  }
}

- (void)tearDownAfterSkimmingShowHints:(BOOL)a3 persistState:(BOOL)a4
{
  if (self->_skimmingZoomLevel)
  {
    if (a4)
    {
      [(PXCuratedLibraryAssetCollectionSkimmingModel *)self persistSkimmingState];
    }

    if (self->_dataSourcePauseToken)
    {
      v6 = [(PXCuratedLibraryViewModel *)self->_viewModel assetsDataSourceManager];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __92__PXCuratedLibraryAssetCollectionSkimmingModel_tearDownAfterSkimmingShowHints_persistState___block_invoke;
      v12[3] = &unk_1E77410A8;
      v12[4] = self;
      [v6 performChanges:v12];

      dataSourcePauseToken = self->_dataSourcePauseToken;
      self->_dataSourcePauseToken = 0;
    }

    *&self->_isPlayingSlideshow = 0;
    if (!a3)
    {
      containingAssetCollectionReference = self->_containingAssetCollectionReference;
      self->_containingAssetCollectionReference = 0;

      v10 = *(off_1E7722228 + 1);
      v11 = *off_1E7722228;
      *&self->_skimmedIndexPath.dataSourceIdentifier = *off_1E7722228;
      *&self->_skimmedIndexPath.item = v10;
      indexPathSetForSkimming = self->_indexPathSetForSkimming;
      self->_indexPathSetForSkimming = 0;

      *&self->_initialIndexPath.dataSourceIdentifier = v11;
      *&self->_initialIndexPath.item = v10;
      self->_skimmingZoomLevel = 0;
    }

    [(PXCuratedLibraryAssetCollectionSkimmingModel *)self _updateViewModel:v10];
  }
}

- (void)_prepareIndexesForAssetCollectionReference:(id)a3 willStartSkimming:(BOOL)a4 willStartSlideshow:(BOOL)a5
{
  v50 = a5;
  v71 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(PXCuratedLibraryViewModel *)self->_viewModel zoomLevel];
  self->_zoomLevel = v9;
  if (v9 == 1)
  {
    v12 = [v8 assetCollection];
    v13 = [v12 px_highlightKind];

    if (v13 != 2)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      v44 = [v8 assetCollection];
      [v43 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySkimmingController.m" lineNumber:546 description:{@"Expected Year highlight, received %@", v44}];
    }

    self->_skimmingZoomLevel = 2;
  }

  else if ((v9 - 2) < 3 || v9 == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySkimmingController.m" lineNumber:554 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  objc_storeStrong(&self->_containingAssetCollectionReference, a3);
  v14 = [(PXCuratedLibraryViewModel *)self->_viewModel assetsDataSourceManager];
  skimmingZoomLevel = self->_skimmingZoomLevel;
  v69 = 0;
  v16 = [v14 assetCollectionReferencesInDataSourceForZoomLevel:skimmingZoomLevel withParentAssetCollectionReference:v8 assetCollectionReferenceWithSameKeyAssetAsParent:&v69];
  v17 = v69;
  v18 = objc_alloc_init(off_1E77217C8);
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v19 = v16;
  v20 = [v19 countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v20)
  {
    v21 = *v66;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v66 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v65 + 1) + 8 * i);
        if (v23)
        {
          [v23 indexPath];
        }

        else
        {
          v63 = 0u;
          v64 = 0u;
        }

        [v18 addIndexPath:&v63];
      }

      v20 = [v19 countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v20);
  }

  v24 = [v18 copy];
  indexPathSetForSkimming = self->_indexPathSetForSkimming;
  self->_indexPathSetForSkimming = v24;

  if (a4 || v50)
  {
    v26 = self->_indexPathSetForSkimming;
    *&v63 = 0;
    *(&v63 + 1) = &v63;
    *&v64 = 0x2020000000;
    BYTE8(v64) = 0;
    if ([(PXIndexPathSet *)v26 count]>= 1)
    {
      if (v26)
      {
        [(PXIndexPathSet *)v26 anySectionIndexPath];
        v27 = v61;
      }

      else
      {
        v27 = 0;
        v61 = 0u;
        v62 = 0u;
      }

      v28 = [(PXIndexPathSet *)v26 sectionIndexSetForDataSourceIdentifier:v27];
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __128__PXCuratedLibraryAssetCollectionSkimmingModel__prepareIndexesForAssetCollectionReference_willStartSkimming_willStartSlideshow___block_invoke;
      v57[3] = &unk_1E7741080;
      v60 = &v63;
      v29 = v28;
      v58 = v29;
      v59 = self;
      [v14 performChanges:v57];
    }

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __128__PXCuratedLibraryAssetCollectionSkimmingModel__prepareIndexesForAssetCollectionReference_willStartSkimming_willStartSlideshow___block_invoke_2;
    v56[3] = &unk_1E77410A8;
    v56[4] = self;
    [v14 performChanges:v56];
    _Block_object_dispose(&v63, 8);
  }

  v63 = 0u;
  v64 = 0u;
  if (v17)
  {
    [v17 indexPath];
  }

  else
  {
    v30 = *(off_1E7722228 + 1);
    v63 = *off_1E7722228;
    v64 = v30;
  }

  if (v63 == *off_1E7721F68)
  {
    v31 = [v14 dataSourceForZoomLevel:self->_skimmingZoomLevel];
    v32 = [v31 objectReferenceNearestToObjectReference:v8];
    if (v32)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v48 = [MEMORY[0x1E696AAA8] currentHandler];
        v45 = objc_opt_class();
        v47 = NSStringFromClass(v45);
        v46 = [v32 px_descriptionForAssertionMessage];
        [v48 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySkimmingController.m" lineNumber:594 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[dataSource objectReferenceNearestToObjectReference:assetCollectionReference]", v47, v46}];
      }
    }

    if (v31)
    {
      [v31 indexPathForAssetCollectionReference:v32];
    }

    else
    {
      v54 = 0u;
      v55 = 0u;
    }

    v63 = v54;
    v64 = v55;
    if (([(PXIndexPathSet *)self->_indexPathSetForSkimming containsIndexPath:&v54]& 1) == 0)
    {
      v54 = 0u;
      v55 = 0u;
      v33 = self->_indexPathSetForSkimming;
      if (v33)
      {
        v34 = *&self->_initialIndexPath.item;
        v52 = *&self->_initialIndexPath.dataSourceIdentifier;
        v53 = v34;
        [(PXIndexPathSet *)v33 indexPathLessThanIndexPath:&v52];
        v33 = self->_indexPathSetForSkimming;
      }

      v52 = v54;
      v53 = v55;
      if ([(PXIndexPathSet *)v33 containsIndexPath:&v52])
      {
        v35 = v54;
        v36 = v55;
      }

      else
      {
        v37 = self->_indexPathSetForSkimming;
        if (v37)
        {
          v38 = *&self->_initialIndexPath.item;
          v51[0] = *&self->_initialIndexPath.dataSourceIdentifier;
          v51[1] = v38;
          [(PXIndexPathSet *)v37 indexPathGreaterThanIndexPath:v51];
        }

        else
        {
          v52 = 0u;
          v53 = 0u;
        }

        v35 = v52;
        v36 = v53;
      }

      v63 = v35;
      v64 = v36;
    }
  }

  v39 = self->_indexPathSetForSkimming;
  v54 = v63;
  v55 = v64;
  if (([(PXIndexPathSet *)v39 containsIndexPath:&v54]& 1) == 0)
  {
    v40 = self->_indexPathSetForSkimming;
    if (v40)
    {
      [(PXIndexPathSet *)v40 anySectionIndexPath];
    }

    else
    {
      v54 = 0u;
      v55 = 0u;
    }

    v63 = v54;
    v64 = v55;
  }

  v41 = v63;
  v42 = v64;
  *&self->_initialIndexPath.dataSourceIdentifier = v63;
  *&self->_initialIndexPath.item = v42;
  self->_isPlayingSlideshow = v50;
  self->_isInteractionInProgress = a4;
  *&self->_skimmedIndexPath.dataSourceIdentifier = v41;
  *&self->_skimmedIndexPath.item = v42;
  [(PXCuratedLibraryAssetCollectionSkimmingModel *)self _updateViewModel];
}

uint64_t __128__PXCuratedLibraryAssetCollectionSkimmingModel__prepareIndexesForAssetCollectionReference_willStartSkimming_willStartSlideshow___block_invoke(void *a1, void *a2)
{
  result = [a2 forceAccurateSectionsIfNeeded:a1[4] inZoomLevel:*(a1[5] + 24)];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void __128__PXCuratedLibraryAssetCollectionSkimmingModel__prepareIndexesForAssetCollectionReference_willStartSkimming_willStartSlideshow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 pauseChangeDeliveryWithTimeout:@"PXCuratedLibrarySkimmingController" identifier:180.0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = v3;
}

- (void)transitionToSkimming
{
  if (!self->_isInteractionInProgress)
  {
    *&self->_isPlayingSlideshow = 256;
    [(PXCuratedLibraryAssetCollectionSkimmingModel *)self _updateViewModel];
  }
}

- (void)transitionToSlideshow
{
  if (!self->_isPlayingSlideshow)
  {
    *&self->_isPlayingSlideshow = 1;
    [(PXCuratedLibraryAssetCollectionSkimmingModel *)self _updateViewModel];
  }
}

- (id)validatedAssetCollectionReference:(id)a3
{
  v4 = a3;
  v5 = [v4 assetCollection];
  if ([v5 px_highlightKind] == 2)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(PXCuratedLibraryViewModel *)self->_viewModel zoomLevel];

    v6 = v4;
    if (v7 != 1)
    {
      goto LABEL_6;
    }

    v8 = [(PXCuratedLibraryViewModel *)self->_viewModel assetsDataSourceManager];
    v5 = [v8 dataSourceForZoomLevel:{-[PXCuratedLibraryViewModel zoomLevel](self->_viewModel, "zoomLevel")}];

    v6 = [v5 assetCollectionReferenceNearestToObjectReference:v4];
  }

LABEL_6:

  return v6;
}

- (PXCuratedLibraryAssetCollectionSkimmingModel)initWithViewModel:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXCuratedLibraryAssetCollectionSkimmingModel;
  v6 = [(PXCuratedLibraryAssetCollectionSkimmingModel *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
    v7->_zoomLevel = 0;
    v8 = *off_1E7722228;
    v9 = *(off_1E7722228 + 1);
    *&v7->_skimmedIndexPath.dataSourceIdentifier = *off_1E7722228;
    *&v7->_skimmedIndexPath.item = v9;
    *&v7->_initialIndexPath.dataSourceIdentifier = v8;
    *&v7->_initialIndexPath.item = v9;
  }

  return v7;
}

@end