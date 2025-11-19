@interface PXContentSyndicationPhotoKitAssetArrivalObserver
- (PXContentSyndicationPhotoKitAssetArrivalObserver)initWithExpectedAssetUUIDs:(id)a3 inPhotoLibrary:(id)a4;
- (void)dealloc;
- (void)photoLibraryDidChange:(id)a3;
- (void)updateWithFetchResult:(id)a3;
- (void)waitForAssetArrivalsWithCompletion:(id)a3;
@end

@implementation PXContentSyndicationPhotoKitAssetArrivalObserver

- (void)photoLibraryDidChange:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self assetsFetchResult];
  v6 = [v4 changeDetailsForFetchResult:v5];

  if (v6)
  {
    v7 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_INFO, "[AssetArrivalObserver] Received updated fetch result.", buf, 2u);
    }

    if ([v6 hasIncrementalChanges])
    {
      v8 = [v6 insertedObjects];
      v9 = [v8 count];

      if (v9)
      {
        v10 = MEMORY[0x1E695DF70];
        v11 = [v6 insertedObjects];
        v12 = [v10 arrayWithCapacity:{objc_msgSend(v11, "count")}];

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v13 = [v6 insertedObjects];
        v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v23;
          do
          {
            v17 = 0;
            do
            {
              if (*v23 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [*(*(&v22 + 1) + 8 * v17) localIdentifier];
              [v12 addObject:v18];

              ++v17;
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v15);
        }

        v19 = PLSyndicationUIGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v12 count];
          *buf = 134218242;
          v27 = v20;
          v28 = 2114;
          v29 = v12;
          _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEFAULT, "[AssetArrivalObserver] %lu assets in updated fetch result %{public}@", buf, 0x16u);
        }
      }
    }

    v21 = [v6 fetchResultAfterChanges];
    [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self updateWithFetchResult:v21];
  }
}

- (void)updateWithFetchResult:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_assetsFetchResult, a3);
  v6 = [(PHFetchResult *)self->_assetsFetchResult count];
  v7 = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self expectedUUIDs];
  v8 = [v7 count];

  if (v6 >= v8)
  {
    v9 = [MEMORY[0x1E695DF00] now];
    v10 = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self waitStartTimestamp];
    [v9 timeIntervalSinceDate:v10];
    v12 = v11;

    v13 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218240;
      v18 = v8;
      v19 = 2048;
      v20 = v12;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "[AssetArrivalObserver] Expected number of assets (%lu) have arrived. Completing observation. Took %.3f seconds", &v17, 0x16u);
    }

    v14 = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self photoLibrary];
    [v14 unregisterChangeObserver:self];

    v15 = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self completionHandler];
    [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self setCompletionHandler:0];
    if (v15)
    {
      v16 = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self assetsFetchResult];
      (v15)[2](v15, v16, 0);
    }
  }

  else
  {
    v9 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218240;
      v18 = v6;
      v19 = 2048;
      v20 = v8;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "[AssetArrivalObserver] %lu out of %lu assets now in library.", &v17, 0x16u);
    }
  }
}

- (void)waitForAssetArrivalsWithCompletion:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  [v6 setIncludePlaceholderAssets:0];
  [v6 setIncludeGuestAssets:0];
  v7 = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self expectedUUIDs];
  v8 = [v7 count];

  v9 = PLSyndicationUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self expectedUUIDs];
    v23 = 134218242;
    v24 = v8;
    v25 = 2114;
    v26 = v10;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "[AssetArrivalObserver] Waiting for the existence of %lu assets in the user library: %{public}@", &v23, 0x16u);
  }

  v11 = MEMORY[0x1E6978630];
  v12 = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self expectedUUIDs];
  v13 = [v12 allObjects];
  v14 = [v11 fetchAssetsWithLocalIdentifiers:v13 options:v6];

  v15 = [(PHFetchResult *)v14 count];
  v16 = PLSyndicationUIGetLog();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15 == v8)
  {
    if (v17)
    {
      v23 = 134217984;
      v24 = v8;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "[AssetArrivalObserver] Expected number of assets (%lu) already found in library. Returning early.", &v23, 0xCu);
    }

    if (v4)
    {
      v4[2](v4, v14, 0);
    }
  }

  else
  {
    if (v17)
    {
      v18 = [(PHFetchResult *)v14 count];
      v23 = 134218240;
      v24 = v18;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "[AssetArrivalObserver] %lu out of %lu assets found in library. Waiting for assets to arrive...", &v23, 0x16u);
    }

    v19 = [MEMORY[0x1E695DF00] now];
    [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self setWaitStartTimestamp:v19];

    v20 = [v4 copy];
    [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self setCompletionHandler:v20];

    v21 = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self photoLibrary];
    [v21 registerChangeObserver:self];
  }

  assetsFetchResult = self->_assetsFetchResult;
  self->_assetsFetchResult = v14;
}

- (void)dealloc
{
  [(PHPhotoLibrary *)self->_photoLibrary unregisterChangeObserver:self];
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  v4.receiver = self;
  v4.super_class = PXContentSyndicationPhotoKitAssetArrivalObserver;
  [(PXContentSyndicationPhotoKitAssetArrivalObserver *)&v4 dealloc];
}

- (PXContentSyndicationPhotoKitAssetArrivalObserver)initWithExpectedAssetUUIDs:(id)a3 inPhotoLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PXContentSyndicationPhotoKitAssetArrivalObserver;
  v8 = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    expectedUUIDs = v8->_expectedUUIDs;
    v8->_expectedUUIDs = v9;

    objc_storeStrong(&v8->_photoLibrary, a4);
  }

  return v8;
}

@end