@interface PXFeaturedPhotosAssetsDataSourceManager
- (PXFeaturedPhotosAssetsDataSourceManager)initWithSuggestionsDataSourceManager:(id)manager assetCollection:(id)collection;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)updateDataSourceWithNewSuggestions:(id)suggestions changeDetails:(id)details assetCollection:(id)collection cache:(id)cache;
@end

@implementation PXFeaturedPhotosAssetsDataSourceManager

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (dataSourceManagerObservationContext == context)
  {
    if (change)
    {
      suggestionsDataSource = [(PXFeaturedPhotosAssetsDataSourceManager *)self suggestionsDataSource];
      suggestionsDataSourceManager = [(PXFeaturedPhotosAssetsDataSourceManager *)self suggestionsDataSourceManager];
      dataSource = [suggestionsDataSourceManager dataSource];

      [(PXFeaturedPhotosAssetsDataSourceManager *)self setSuggestionsDataSource:dataSource];
      suggestionsDataSourceManager2 = [(PXFeaturedPhotosAssetsDataSourceManager *)self suggestionsDataSourceManager];
      changeHistory = [suggestionsDataSourceManager2 changeHistory];
      v14 = [changeHistory changeDetailsFromDataSourceIdentifier:objc_msgSend(suggestionsDataSource toDataSourceIdentifier:{"identifier"), objc_msgSend(dataSource, "identifier")}];

      assetCollection = [(PXFeaturedPhotosAssetsDataSourceManager *)self assetCollection];
      keyAssetBySuggestionIdentifierCache = [(PXFeaturedPhotosAssetsDataSourceManager *)self keyAssetBySuggestionIdentifierCache];
      [(PXFeaturedPhotosAssetsDataSourceManager *)self updateDataSourceWithNewSuggestions:dataSource changeDetails:v14 assetCollection:assetCollection cache:keyAssetBySuggestionIdentifierCache];
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PXFeaturedPhotosAssetsDataSourceManager;
    [(PXPhotoKitAssetsDataSourceManager *)&v17 observable:observableCopy didChange:change context:context];
  }
}

- (void)updateDataSourceWithNewSuggestions:(id)suggestions changeDetails:(id)details assetCollection:(id)collection cache:(id)cache
{
  suggestionsCopy = suggestions;
  collectionCopy = collection;
  cacheCopy = cache;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__PXFeaturedPhotosAssetsDataSourceManager_updateDataSourceWithNewSuggestions_changeDetails_assetCollection_cache___block_invoke;
  block[3] = &unk_1E7748228;
  v17 = suggestionsCopy;
  v18 = collectionCopy;
  v19 = cacheCopy;
  v13 = cacheCopy;
  v14 = collectionCopy;
  v15 = suggestionsCopy;
  objc_copyWeak(&v20, &location);
  dispatch_async(queue, block);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&location);
}

void __114__PXFeaturedPhotosAssetsDataSourceManager_updateDataSourceWithNewSuggestions_changeDetails_assetCollection_cache___block_invoke(void **a1)
{
  v2 = allowedUUIDsForSuggestionsDataSource(a1[4], a1[6]);
  objc_copyWeak(&v3, a1 + 7);
  a1[5];
  v2;
  px_dispatch_on_main_queue();
}

void __114__PXFeaturedPhotosAssetsDataSourceManager_updateDataSourceWithNewSuggestions_changeDetails_assetCollection_cache___block_invoke_2(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained photosDataSource];
  v12 = *(a1 + 32);
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:*(a1 + 40)];
  v13[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v6 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v9 = *(a1 + 32);
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  [v3 setAllowedUUIDs:v5 manualOrderUUIDs:v7 forAssetCollections:v8];
}

- (PXFeaturedPhotosAssetsDataSourceManager)initWithSuggestionsDataSourceManager:(id)manager assetCollection:(id)collection
{
  v40[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  collectionCopy = collection;
  photoLibrary = [collectionCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeAssetSourceTypes:5];
  [librarySpecificFetchOptions setIncludeHiddenAssets:0];
  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v29 = librarySpecificFetchOptions;
  v9 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:librarySpecificFetchOptions];
  v10 = MEMORY[0x1E6978650];
  title = [collectionCopy title];

  v33 = v9;
  v12 = [v10 transientAssetCollectionWithAssetFetchResult:v9 title:title identifier:@"PXFeaturedPhotosVirtualCollection"];

  v13 = MEMORY[0x1E6978760];
  v40[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v15 = [v13 transientCollectionListWithCollections:v14 title:0];

  v32 = v15;
  v30 = [MEMORY[0x1E6978650] fetchCollectionsInCollectionList:v15 options:0];
  v28 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v30 options:8392705];
  v16 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v28];
  dataSource = [managerCopy dataSource];
  v18 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v19 = allowedUUIDsForSuggestionsDataSource(dataSource, v18);
  v38 = v12;
  v20 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v19];
  v39 = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v36 = v12;
  v37 = v19;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v35 = v12;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  [(PXPhotosDataSource *)v16 setAllowedUUIDs:v21 manualOrderUUIDs:v22 forAssetCollections:v23];

  v34.receiver = self;
  v34.super_class = PXFeaturedPhotosAssetsDataSourceManager;
  v24 = [(PXPhotoKitAssetsDataSourceManager *)&v34 initWithPhotosDataSource:v16];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_assetCollection, v12);
    objc_storeStrong(&v25->_suggestionsDataSourceManager, manager);
    px_dispatch_queue_create_serial();
  }

  return 0;
}

@end