@interface PXFeaturedPhotosAssetsDataSourceManager
- (PXFeaturedPhotosAssetsDataSourceManager)initWithSuggestionsDataSourceManager:(id)a3 assetCollection:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)updateDataSourceWithNewSuggestions:(id)a3 changeDetails:(id)a4 assetCollection:(id)a5 cache:(id)a6;
@end

@implementation PXFeaturedPhotosAssetsDataSourceManager

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (dataSourceManagerObservationContext == a5)
  {
    if (a4)
    {
      v9 = [(PXFeaturedPhotosAssetsDataSourceManager *)self suggestionsDataSource];
      v10 = [(PXFeaturedPhotosAssetsDataSourceManager *)self suggestionsDataSourceManager];
      v11 = [v10 dataSource];

      [(PXFeaturedPhotosAssetsDataSourceManager *)self setSuggestionsDataSource:v11];
      v12 = [(PXFeaturedPhotosAssetsDataSourceManager *)self suggestionsDataSourceManager];
      v13 = [v12 changeHistory];
      v14 = [v13 changeDetailsFromDataSourceIdentifier:objc_msgSend(v9 toDataSourceIdentifier:{"identifier"), objc_msgSend(v11, "identifier")}];

      v15 = [(PXFeaturedPhotosAssetsDataSourceManager *)self assetCollection];
      v16 = [(PXFeaturedPhotosAssetsDataSourceManager *)self keyAssetBySuggestionIdentifierCache];
      [(PXFeaturedPhotosAssetsDataSourceManager *)self updateDataSourceWithNewSuggestions:v11 changeDetails:v14 assetCollection:v15 cache:v16];
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PXFeaturedPhotosAssetsDataSourceManager;
    [(PXPhotoKitAssetsDataSourceManager *)&v17 observable:v8 didChange:a4 context:a5];
  }
}

- (void)updateDataSourceWithNewSuggestions:(id)a3 changeDetails:(id)a4 assetCollection:(id)a5 cache:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__PXFeaturedPhotosAssetsDataSourceManager_updateDataSourceWithNewSuggestions_changeDetails_assetCollection_cache___block_invoke;
  block[3] = &unk_1E7748228;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
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

- (PXFeaturedPhotosAssetsDataSourceManager)initWithSuggestionsDataSourceManager:(id)a3 assetCollection:(id)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 photoLibrary];
  v8 = [v7 librarySpecificFetchOptions];

  [v8 setIncludeAssetSourceTypes:5];
  [v8 setIncludeHiddenAssets:0];
  [v8 setIncludeGuestAssets:1];
  v29 = v8;
  v9 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v8];
  v10 = MEMORY[0x1E6978650];
  v11 = [v6 title];

  v33 = v9;
  v12 = [v10 transientAssetCollectionWithAssetFetchResult:v9 title:v11 identifier:@"PXFeaturedPhotosVirtualCollection"];

  v13 = MEMORY[0x1E6978760];
  v40[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v15 = [v13 transientCollectionListWithCollections:v14 title:0];

  v32 = v15;
  v30 = [MEMORY[0x1E6978650] fetchCollectionsInCollectionList:v15 options:0];
  v28 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v30 options:8392705];
  v16 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v28];
  v17 = [v5 dataSource];
  v18 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v19 = allowedUUIDsForSuggestionsDataSource(v17, v18);
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
    objc_storeStrong(&v25->_suggestionsDataSourceManager, a3);
    px_dispatch_queue_create_serial();
  }

  return 0;
}

@end