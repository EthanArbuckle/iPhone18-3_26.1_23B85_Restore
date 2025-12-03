@interface PXContentSyndicationPhotoKitDataSourceManager
+ (id)createCountsController;
- (PXContentSyndicationPhotoKitDataSourceManager)init;
- (PXContentSyndicationPhotoKitDataSourceManager)initWithPhotoLibrary:(id)library;
- (id)assetFetchResultProvider;
- (id)createAssetsDataSourceManager;
- (id)createInitialDataSource;
- (id)imageProvider;
- (id)prepareForPhotoLibraryChange:(id)change;
- (id)socialLayerHighlightProvider;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info;
- (void)setDataSource:(id)source changeDetails:(id)details;
@end

@implementation PXContentSyndicationPhotoKitDataSourceManager

- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info
{
  v34[1] = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  infoCopy = info;
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  if (dataSource)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = objc_opt_class();
    v24 = NSStringFromClass(v25);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:355 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.dataSource", v24, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:355 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.dataSource", v24}];
  }

LABEL_3:
  v10 = [infoCopy objectForKeyedSubscript:@"currentDataSource"];

  if (v10 == dataSource)
  {
    v11 = [infoCopy objectForKeyedSubscript:@"preparedDataSource"];
    v12 = [infoCopy objectForKeyedSubscript:@"preparedUnderlyingChangeDetails"];
  }

  else
  {
    v28 = 0;
    v11 = [dataSource dataSourceUpdatedWithChange:queueCopy underlyingArrayChangeDetails:&v28];
    v12 = v28;
  }

  v13 = v12;
  if ([v12 hasAnyChanges])
  {
    v14 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = v13;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "ContentSyndicationPhotoKitDataSourceManager: Data Source has non-empty underlying change details: %{public}@.", buf, 0xCu);
    }
  }

  if (v11 != dataSource)
  {
    v27 = queueCopy;
    v15 = [off_1E77218B0 alloc];
    identifier = [dataSource identifier];
    identifier2 = [v11 identifier];
    changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
    v33 = &unk_1F190DB88;
    v34[0] = v13;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v20 = [v15 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v19 subitemChangeDetailsByItemBySection:0];

    v21 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v30 = dataSource;
      v31 = 2114;
      v32 = v11;
      _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_DEFAULT, "ContentSyndicationPhotoKitDataSourceManager: Updating data Source from: %{public}@ to %{public}@", buf, 0x16u);
    }

    [(PXContentSyndicationPhotoKitDataSourceManager *)self setDataSource:v11 changeDetails:v20];
    queueCopy = v27;
  }
}

- (id)prepareForPhotoLibraryChange:(id)change
{
  v21[3] = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__220933;
  v18 = __Block_byref_object_dispose__220934;
  v19 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PXContentSyndicationPhotoKitDataSourceManager_prepareForPhotoLibraryChange___block_invoke;
  block[3] = &unk_1E77477B8;
  block[4] = self;
  block[5] = &v14;
  block[6] = a2;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v6 = v15[5];
  v12 = 0;
  v7 = [v6 dataSourceUpdatedWithChange:changeCopy underlyingArrayChangeDetails:&v12];
  v8 = v12;
  v9 = v15[5];
  v20[0] = @"currentDataSource";
  v20[1] = @"preparedDataSource";
  v21[0] = v9;
  v21[1] = v7;
  v20[2] = @"preparedUnderlyingChangeDetails";
  v21[2] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  _Block_object_dispose(&v14, 8);

  return v10;
}

void __78__PXContentSyndicationPhotoKitDataSourceManager_prepareForPhotoLibraryChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v9 = NSStringFromClass(v12);
    v13 = [v2 px_descriptionForAssertionMessage];
    [v5 handleFailureInMethod:v10 object:v11 file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:341 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.dataSource", v9, v13}];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v5 handleFailureInMethod:v6 object:v7 file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:341 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.dataSource", v9}];
  }

LABEL_3:
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)createAssetsDataSourceManager
{
  v2 = PXContentSyndicationCollectionsFetchResultForPhotoLibraryWithFetchLimit(self->_photoLibrary, 0, 0);
  v3 = PXContentSyndicationAssetsDataSourceManagerForAssetCollectionFetchResult(v2);

  return v3;
}

- (id)socialLayerHighlightProvider
{
  highlightProvider = self->_highlightProvider;
  if (!highlightProvider)
  {
    v4 = +[PXContentSyndicationPhotoKitSocialLayerHighlightProvider sharedInstance];
    v5 = self->_highlightProvider;
    self->_highlightProvider = v4;

    highlightProvider = self->_highlightProvider;
  }

  return highlightProvider;
}

- (id)imageProvider
{
  imageProvider = self->_imageProvider;
  if (!imageProvider)
  {
    v4 = PXContentSyndicationImageProviderForPhotoLibrary(self->_photoLibrary);
    v5 = self->_imageProvider;
    self->_imageProvider = v4;

    imageProvider = self->_imageProvider;
  }

  return imageProvider;
}

- (id)assetFetchResultProvider
{
  assetFetchResultProvider = self->_assetFetchResultProvider;
  if (!assetFetchResultProvider)
  {
    v4 = PXContentSyndicationAssetFetchResultProviderForPhotoLibrary(self->_photoLibrary);
    v5 = self->_assetFetchResultProvider;
    self->_assetFetchResultProvider = v4;

    assetFetchResultProvider = self->_assetFetchResultProvider;
  }

  return assetFetchResultProvider;
}

- (void)setDataSource:(id)source changeDetails:(id)details
{
  v49 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  detailsCopy = details;
  if (!detailsCopy)
  {
    goto LABEL_21;
  }

  v9 = PLSyndicationUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "ContentSyndicationPhotoKitDataSourceManager: setDataSource: has non-nil change details. Attempting to invalidate key asset fetch results for affected asset collections", buf, 2u);
  }

  assetFetchResultProvider = [detailsCopy itemChangesInSection:0];
  if (![assetFetchResultProvider hasIncrementalChanges])
  {
LABEL_20:

LABEL_21:
    assetFetchResultProvider = [(PXContentSyndicationPhotoKitDataSourceManager *)self assetFetchResultProvider];
    [assetFetchResultProvider invalidateAllAssetFetchResults];
    goto LABEL_22;
  }

  *buf = 0;
  v40 = buf;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__220933;
  v43 = __Block_byref_object_dispose__220934;
  v44 = [MEMORY[0x1E695DFA8] set];
  removedIndexes = [assetFetchResultProvider removedIndexes];
  if ([removedIndexes count])
  {
    dataSource = [(PXSectionedDataSourceManager *)self dataSource];
    if (dataSource)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_8:
        v13 = [dataSource numberOfItemsInSection:0];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __77__PXContentSyndicationPhotoKitDataSourceManager_setDataSource_changeDetails___block_invoke;
        v34[3] = &unk_1E7747118;
        v37 = v13;
        v14 = dataSource;
        v38 = 0;
        v35 = v14;
        v36 = buf;
        [removedIndexes enumerateIndexesUsingBlock:v34];
        v15 = PLSyndicationUIGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *v45 = 138543362;
          v46 = removedIndexes;
          _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_INFO, "ContentSyndicationPhotoKitDataSourceManager: Invalidating key asset fetchresults for removed indexes (relative to old data source): %{public}@", v45, 0xCu);
        }

        goto LABEL_11;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = objc_opt_class();
      v26 = NSStringFromClass(v24);
      px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:247 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.dataSource", v26, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = objc_opt_class();
      v26 = NSStringFromClass(v23);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:247 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.dataSource", v26}];
    }

    goto LABEL_8;
  }

LABEL_11:
  changedIndexes = [assetFetchResultProvider changedIndexes];
  if (changedIndexes)
  {
    v17 = [sourceCopy numberOfItemsInSection:0];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __77__PXContentSyndicationPhotoKitDataSourceManager_setDataSource_changeDetails___block_invoke_269;
    v29[3] = &unk_1E7747118;
    v32 = v17;
    v33 = 0;
    v30 = sourceCopy;
    v31 = buf;
    [changedIndexes enumerateIndexesUsingBlock:v29];
    v18 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v45 = 138543362;
      v46 = changedIndexes;
      _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_INFO, "ContentSyndicationPhotoKitDataSourceManager: Invalidating key asset fetchresults for changed indexes (relative to new data source): %{public}@", v45, 0xCu);
    }
  }

  if (![*(v40 + 5) count])
  {

    _Block_object_dispose(buf, 8);
    goto LABEL_20;
  }

  v19 = PLSyndicationUIGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [*(v40 + 5) count];
    v21 = *(v40 + 5);
    *v45 = 134218242;
    v46 = v20;
    v47 = 2112;
    v48 = v21;
    _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_INFO, "ContentSyndicationPhotoKitDataSourceManager: Invalidating %tu asset collection fetch results after change notification: %@", v45, 0x16u);
  }

  assetFetchResultProvider2 = [(PXContentSyndicationPhotoKitDataSourceManager *)self assetFetchResultProvider];
  [assetFetchResultProvider2 invalidateAssetFetchResultsInAssetCollections:*(v40 + 5)];

  _Block_object_dispose(buf, 8);
LABEL_22:

  v28.receiver = self;
  v28.super_class = PXContentSyndicationPhotoKitDataSourceManager;
  [(PXSectionedDataSourceManager *)&v28 setDataSource:sourceCopy changeDetails:detailsCopy];
}

void __77__PXContentSyndicationPhotoKitDataSourceManager_setDataSource_changeDetails___block_invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) > a2)
  {
    v10[6] = v2;
    v10[7] = v3;
    v6 = [*(a1 + 32) identifier];
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = a2;
    v10[3] = 0x7FFFFFFFFFFFFFFFLL;
    v9 = [v8 objectAtIndexPath:v10];
    [*(*(*(a1 + 40) + 8) + 40) addObject:v9];
  }
}

void __77__PXContentSyndicationPhotoKitDataSourceManager_setDataSource_changeDetails___block_invoke_269(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) > a2)
  {
    v10[6] = v2;
    v10[7] = v3;
    v6 = [*(a1 + 32) identifier];
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = a2;
    v10[3] = 0x7FFFFFFFFFFFFFFFLL;
    v9 = [v8 objectAtIndexPath:v10];
    [*(*(*(a1 + 40) + 8) + 40) addObject:v9];
  }
}

- (id)createInitialDataSource
{
  [(PHPhotoLibrary *)self->_photoLibrary px_registerChangeObserver:self];
  v3 = PLSyndicationGetLog();
  v4 = os_signpost_id_generate(v3);
  if (PFProcessIsLaunchedToExecuteTests())
  {
    loadVerySmallInitialBatchOfRecentCollections = 0;
  }

  else
  {
    v6 = +[PXContentSyndicationSettings sharedInstance];
    loadVerySmallInitialBatchOfRecentCollections = [v6 loadVerySmallInitialBatchOfRecentCollections];
  }

  date = [MEMORY[0x1E695DF00] date];
  v8 = PLSyndicationUIGetLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (loadVerySmallInitialBatchOfRecentCollections)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "ContentSyndicationPhotoKitDataSourceManager: Loading a very small batch of initial Shared with You items", buf, 2u);
    }

    v10 = PXContentSyndicationCollectionsFetchResultForPhotoLibraryWithFetchLimit(self->_photoLibrary, 1, 1);
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "ContentSyndicationPhotoKitDataSourceManager: Loading full batch of initial Shared with You items", buf, 2u);
    }

    v11 = v3;
    v12 = v11;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PXContentSyndicationPhotoKitDataSource.fullBatchFetch", "", buf, 2u);
    }

    v10 = PXContentSyndicationCollectionsFetchResultForPhotoLibraryWithFetchLimit(self->_photoLibrary, 0, 0);
    v13 = v12;
    v14 = v13;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_END, v4, "PXContentSyndicationPhotoKitDataSource.fullBatchFetch", "", buf, 2u);
    }
  }

  v15 = [[PXContentSyndicationPhotoKitDataSource alloc] initWithFetchResult:v10];
  if (loadVerySmallInitialBatchOfRecentCollections)
  {
    date2 = [MEMORY[0x1E695DF00] date];
    v17 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "ContentSyndicationPhotoKitDataSourceManager: Kicking off loading of the delayed full batch of Shared with You items", buf, 2u);
    }

    v18 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__PXContentSyndicationPhotoKitDataSourceManager_createInitialDataSource__block_invoke;
    block[3] = &unk_1E7747928;
    v26 = v4;
    v22 = v3;
    selfCopy = self;
    v24 = date;
    v25 = date2;
    v19 = date2;
    dispatch_async(v18, block);
  }

  return v15;
}

void __72__PXContentSyndicationPhotoKitDataSourceManager_createInitialDataSource__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 64);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PXContentSyndicationPhotoKitDataSource.fullBatchFetch", "", buf, 2u);
  }

  v5 = PXContentSyndicationCollectionsFetchResultForPhotoLibraryWithFetchLimit(*(*(a1 + 40) + 128), 0, 0);
  v6 = *(a1 + 32);
  v7 = v6;
  v8 = *(a1 + 64);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, v8, "PXContentSyndicationPhotoKitDataSource.fullBatchFetch", "", buf, 2u);
  }

  v9 = [MEMORY[0x1E695DF00] date];
  [v9 timeIntervalSinceDate:*(a1 + 48)];
  v11 = v10;
  [v9 timeIntervalSinceDate:*(a1 + 56)];
  v13 = v12;
  v14 = PLSyndicationUIGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v5 count];
    *buf = 134218496;
    v22 = v15;
    v23 = 2048;
    v24 = v13 * 1000.0;
    v25 = 2048;
    v26 = v11 * 1000.0;
    _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "ContentSyndicationPhotoKitDataSourceManager: Loaded delayed full batch of Shared with You items: %lu items. Took %.0fms for full batch fetch, %.0fms since initial data source", buf, 0x20u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__PXContentSyndicationPhotoKitDataSourceManager_createInitialDataSource__block_invoke_262;
  v18[3] = &unk_1E774C620;
  v16 = *(a1 + 40);
  v19 = v5;
  v20 = v16;
  v17 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v18);
}

void __72__PXContentSyndicationPhotoKitDataSourceManager_createInitialDataSource__block_invoke_262(uint64_t a1)
{
  v2 = [[PXContentSyndicationPhotoKitDataSource alloc] initWithFetchResult:*(a1 + 32)];
  [*(a1 + 40) setDataSource:v2 changeDetails:0];
}

- (PXContentSyndicationPhotoKitDataSourceManager)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v11.receiver = self;
  v11.super_class = PXContentSyndicationPhotoKitDataSourceManager;
  v7 = [(PXSectionedDataSourceManager *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, library);
  }

  return v8;
}

- (PXContentSyndicationPhotoKitDataSourceManager)init
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [MEMORY[0x1E69789A8] openPhotoLibraryWithWellKnownIdentifier:3 error:&v8];
  v4 = v8;
  if (v3)
  {
    self = [(PXContentSyndicationPhotoKitDataSourceManager *)self initWithPhotoLibrary:v3];
    selfCopy = self;
  }

  else
  {
    v6 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Error opening syndication library: %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)createCountsController
{
  v2 = objc_alloc_init(PXContentSyndicationPhotoKitCountsController);

  return v2;
}

@end