@interface PXContentSyndicationPhotoKitCountsController
- (void)_updateDetailedCounts;
- (void)_updateSavedCount;
- (void)didSetAssetCollection:(id)collection;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXContentSyndicationPhotoKitCountsController

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXAssetsDataSourceCountsControllerObserverContext_16941 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitCountsController.m" lineNumber:97 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v11 = observableCopy;
    [(PXContentSyndicationPhotoKitCountsController *)self _updateDetailedCounts];
    [(PXContentSyndicationPhotoKitCountsController *)self _updateSavedCount];
    observableCopy = v11;
  }
}

- (void)_updateSavedCount
{
  v18 = *MEMORY[0x1E69E9840];
  fetchResultCountObserver = self->_fetchResultCountObserver;
  if (fetchResultCountObserver)
  {
    fetchResultCount = [(PXFetchResultCountObserver *)fetchResultCountObserver fetchResultCount];
  }

  else
  {
    fetchResultCount = -1;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  [(PXContentSyndicationCountsController *)self actualDetailedCounts];
  v5 = -1;
  if (fetchResultCount != -1)
  {
    if (v10 + v9 + v11 && v10 + v9 + v11 >= fetchResultCount)
    {
      v5 = fetchResultCount;
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
        v17 = fetchResultCount;
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

- (void)didSetAssetCollection:(id)collection
{
  v25[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  if (!collectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitCountsController.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"assetCollection"}];
  }

  v6 = objc_alloc(MEMORY[0x1E69788E0]);
  v25[0] = collectionCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  photoLibrary = [collectionCopy photoLibrary];
  v9 = [v6 initWithObjects:v7 photoLibrary:photoLibrary fetchType:*MEMORY[0x1E6978DA0] fetchPropertySets:0 identifier:0 registerIfNeeded:1];

  v10 = PXContentSyndicationAssetsDataSourceManagerForAssetCollectionFetchResult(v9);
  v11 = [[off_1E77214A8 alloc] initWithAssetsDataSourceManager:v10];
  assetsCountsController = self->_assetsCountsController;
  self->_assetsCountsController = v11;

  [(PXAssetsDataSourceCountsController *)self->_assetsCountsController registerChangeObserver:self context:PXAssetsDataSourceCountsControllerObserverContext_16941];
  [(PXAssetsDataSourceCountsController *)self->_assetsCountsController prepareCountsIfNeeded];
  [(PXContentSyndicationPhotoKitCountsController *)self _updateDetailedCounts];
  photoLibrary2 = [collectionCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary2 librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  filterPredicateForSavedSyndicationAssetsOnly = [MEMORY[0x1E6978630] filterPredicateForSavedSyndicationAssetsOnly];
  [librarySpecificFetchOptions setInternalPredicate:filterPredicateForSavedSyndicationAssetsOnly];

  v16 = [PXFetchResultCountObserver alloc];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __70__PXContentSyndicationPhotoKitCountsController_didSetAssetCollection___block_invoke;
  v22[3] = &unk_1E773E030;
  v23 = collectionCopy;
  v24 = librarySpecificFetchOptions;
  v17 = librarySpecificFetchOptions;
  v18 = collectionCopy;
  v19 = [(PXFetchResultCountObserver *)v16 initWithQOSClass:17 photoLibrary:photoLibrary2 fetchResultBlock:v22];
  fetchResultCountObserver = self->_fetchResultCountObserver;
  self->_fetchResultCountObserver = v19;

  [(PXFetchResultCountObserver *)self->_fetchResultCountObserver setDelegate:self];
  [(PXContentSyndicationPhotoKitCountsController *)self _updateSavedCount];
}

@end