@interface PXContentSyndicationPhotoKitAssetArrivalObserver
- (PXContentSyndicationPhotoKitAssetArrivalObserver)initWithExpectedAssetUUIDs:(id)ds inPhotoLibrary:(id)library;
- (void)dealloc;
- (void)photoLibraryDidChange:(id)change;
- (void)updateWithFetchResult:(id)result;
- (void)waitForAssetArrivalsWithCompletion:(id)completion;
@end

@implementation PXContentSyndicationPhotoKitAssetArrivalObserver

- (void)photoLibraryDidChange:(id)change
{
  v31 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  assetsFetchResult = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self assetsFetchResult];
  v6 = [changeCopy changeDetailsForFetchResult:assetsFetchResult];

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
      insertedObjects = [v6 insertedObjects];
      v9 = [insertedObjects count];

      if (v9)
      {
        v10 = MEMORY[0x1E695DF70];
        insertedObjects2 = [v6 insertedObjects];
        v12 = [v10 arrayWithCapacity:{objc_msgSend(insertedObjects2, "count")}];

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        insertedObjects3 = [v6 insertedObjects];
        v14 = [insertedObjects3 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                objc_enumerationMutation(insertedObjects3);
              }

              localIdentifier = [*(*(&v22 + 1) + 8 * v17) localIdentifier];
              [v12 addObject:localIdentifier];

              ++v17;
            }

            while (v15 != v17);
            v15 = [insertedObjects3 countByEnumeratingWithState:&v22 objects:v30 count:16];
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

    fetchResultAfterChanges = [v6 fetchResultAfterChanges];
    [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self updateWithFetchResult:fetchResultAfterChanges];
  }
}

- (void)updateWithFetchResult:(id)result
{
  v21 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  objc_storeStrong(&self->_assetsFetchResult, result);
  v6 = [(PHFetchResult *)self->_assetsFetchResult count];
  expectedUUIDs = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self expectedUUIDs];
  v8 = [expectedUUIDs count];

  if (v6 >= v8)
  {
    v9 = [MEMORY[0x1E695DF00] now];
    waitStartTimestamp = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self waitStartTimestamp];
    [v9 timeIntervalSinceDate:waitStartTimestamp];
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

    photoLibrary = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self photoLibrary];
    [photoLibrary unregisterChangeObserver:self];

    completionHandler = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self completionHandler];
    [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self setCompletionHandler:0];
    if (completionHandler)
    {
      assetsFetchResult = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self assetsFetchResult];
      (completionHandler)[2](completionHandler, assetsFetchResult, 0);
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

- (void)waitForAssetArrivalsWithCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  photoLibrary = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludePlaceholderAssets:0];
  [librarySpecificFetchOptions setIncludeGuestAssets:0];
  expectedUUIDs = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self expectedUUIDs];
  v8 = [expectedUUIDs count];

  v9 = PLSyndicationUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    expectedUUIDs2 = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self expectedUUIDs];
    v23 = 134218242;
    v24 = v8;
    v25 = 2114;
    v26 = expectedUUIDs2;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "[AssetArrivalObserver] Waiting for the existence of %lu assets in the user library: %{public}@", &v23, 0x16u);
  }

  v11 = MEMORY[0x1E6978630];
  expectedUUIDs3 = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self expectedUUIDs];
  allObjects = [expectedUUIDs3 allObjects];
  v14 = [v11 fetchAssetsWithLocalIdentifiers:allObjects options:librarySpecificFetchOptions];

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

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v14, 0);
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

    v20 = [completionCopy copy];
    [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self setCompletionHandler:v20];

    photoLibrary2 = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)self photoLibrary];
    [photoLibrary2 registerChangeObserver:self];
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

- (PXContentSyndicationPhotoKitAssetArrivalObserver)initWithExpectedAssetUUIDs:(id)ds inPhotoLibrary:(id)library
{
  dsCopy = ds;
  libraryCopy = library;
  v12.receiver = self;
  v12.super_class = PXContentSyndicationPhotoKitAssetArrivalObserver;
  v8 = [(PXContentSyndicationPhotoKitAssetArrivalObserver *)&v12 init];
  if (v8)
  {
    v9 = [dsCopy copy];
    expectedUUIDs = v8->_expectedUUIDs;
    v8->_expectedUUIDs = v9;

    objc_storeStrong(&v8->_photoLibrary, library);
  }

  return v8;
}

@end