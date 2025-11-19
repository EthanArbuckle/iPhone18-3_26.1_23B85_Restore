@interface PXContentSyndicationPhotoKitCountsController
- (void)_updateDetailedCounts;
- (void)_updateSavedCount;
- (void)didSetAssetCollection:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXContentSyndicationPhotoKitCountsController

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXAssetsDataSourceCountsControllerObserverContext_16941 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitCountsController.m" lineNumber:97 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v11 = v9;
    [(PXContentSyndicationPhotoKitCountsController *)self _updateDetailedCounts];
    [(PXContentSyndicationPhotoKitCountsController *)self _updateSavedCount];
    v9 = v11;
  }
}

- (void)_updateSavedCount
{
  v18 = *MEMORY[0x1E69E9840];
  fetchResultCountObserver = self->_fetchResultCountObserver;
  if (fetchResultCountObserver)
  {
    v4 = [(PXFetchResultCountObserver *)fetchResultCountObserver fetchResultCount];
  }

  else
  {
    v4 = -1;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  [(PXContentSyndicationCountsController *)self actualDetailedCounts];
  v5 = -1;
  if (v4 != -1)
  {
    if (v10 + v9 + v11 && v10 + v9 + v11 >= v4)
    {
      v5 = v4;
    }

    else
    {
      v6 = PLUIGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        *buf = 138412802;
        v13 = v7;
        v14 = 2048;
        v15 = v10 + v9 + v11;
        v16 = 2048;
        v17 = v4;
        _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "<%@: _updateSavedCount failed to update with totalCount:%lu, unsavedFetchResultCount:%li>", buf, 0x20u);
      }

      v5 = -1;
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PXContentSyndicationPhotoKitCountsController__updateSavedCount__block_invoke;
  v8[3] = &__block_descriptor_40_e55_v16__0___PXContentSyndicationMutableCountsController__8l;
  v8[4] = v5;
  [(PXContentSyndicationCountsController *)self performChanges:v8];
}

- (void)_updateDetailedCounts
{
  v7 = 0uLL;
  v8 = 0;
  assetsCountsController = self->_assetsCountsController;
  if (assetsCountsController)
  {
    [(PXAssetsDataSourceCountsController *)assetsCountsController counts];
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__PXContentSyndicationPhotoKitCountsController__updateDetailedCounts__block_invoke;
  v4[3] = &__block_descriptor_56_e55_v16__0___PXContentSyndicationMutableCountsController__8l;
  v5 = v7;
  v6 = v8;
  [(PXContentSyndicationCountsController *)self performChanges:v4];
}

uint64_t __69__PXContentSyndicationPhotoKitCountsController__updateDetailedCounts__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [a2 setDetailedCounts:&v3];
}

- (void)didSetAssetCollection:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitCountsController.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"assetCollection"}];
  }

  v6 = objc_alloc(MEMORY[0x1E69788E0]);
  v25[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v8 = [v5 photoLibrary];
  v9 = [v6 initWithObjects:v7 photoLibrary:v8 fetchType:*MEMORY[0x1E6978DA0] fetchPropertySets:0 identifier:0 registerIfNeeded:1];

  v10 = PXContentSyndicationAssetsDataSourceManagerForAssetCollectionFetchResult(v9);
  v11 = [[off_1E77214A8 alloc] initWithAssetsDataSourceManager:v10];
  assetsCountsController = self->_assetsCountsController;
  self->_assetsCountsController = v11;

  [(PXAssetsDataSourceCountsController *)self->_assetsCountsController registerChangeObserver:self context:PXAssetsDataSourceCountsControllerObserverContext_16941];
  [(PXAssetsDataSourceCountsController *)self->_assetsCountsController prepareCountsIfNeeded];
  [(PXContentSyndicationPhotoKitCountsController *)self _updateDetailedCounts];
  v13 = [v5 photoLibrary];
  v14 = [v13 librarySpecificFetchOptions];
  [v14 setIncludeGuestAssets:1];
  v15 = [MEMORY[0x1E6978630] filterPredicateForSavedSyndicationAssetsOnly];
  [v14 setInternalPredicate:v15];

  v16 = [PXFetchResultCountObserver alloc];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __70__PXContentSyndicationPhotoKitCountsController_didSetAssetCollection___block_invoke;
  v22[3] = &unk_1E773E030;
  v23 = v5;
  v24 = v14;
  v17 = v14;
  v18 = v5;
  v19 = [(PXFetchResultCountObserver *)v16 initWithQOSClass:17 photoLibrary:v13 fetchResultBlock:v22];
  fetchResultCountObserver = self->_fetchResultCountObserver;
  self->_fetchResultCountObserver = v19;

  [(PXFetchResultCountObserver *)self->_fetchResultCountObserver setDelegate:self];
  [(PXContentSyndicationPhotoKitCountsController *)self _updateSavedCount];
}

@end