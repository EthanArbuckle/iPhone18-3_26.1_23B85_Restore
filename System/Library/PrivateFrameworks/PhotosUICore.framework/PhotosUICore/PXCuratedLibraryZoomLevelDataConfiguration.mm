@interface PXCuratedLibraryZoomLevelDataConfiguration
- (PXAssetsDataSourceManager)assetsDataSourceManager;
- (PXCuratedLibraryZoomLevelDataConfiguration)init;
- (PXCuratedLibraryZoomLevelDataConfiguration)initWithZoomLevel:(int64_t)level assetsDataSourceManager:(id)manager enableDays:(BOOL)days;
- (id)createInitialPhotosDataSourceForDataSourceManager:(id)manager;
@end

@implementation PXCuratedLibraryZoomLevelDataConfiguration

- (PXAssetsDataSourceManager)assetsDataSourceManager
{
  v3 = self->_assetsDataSourceManager;
  if (!v3)
  {
    v3 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSourceProvider:self];
  }

  return v3;
}

- (id)createInitialPhotosDataSourceForDataSourceManager:(id)manager
{
  v84[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  px_standardLibrarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary px_standardLibrarySpecificFetchOptions];
  [px_standardLibrarySpecificFetchOptions setPhotoLibrary:self->_photoLibrary];
  v71 = px_standardLibrarySpecificFetchOptions;
  if ([(PXCuratedLibraryZoomLevelDataConfiguration *)self zoomLevel]== 4)
  {
    [px_standardLibrarySpecificFetchOptions setIncludeAllPhotosSmartAlbum:1];
    v7 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:1000000205 options:px_standardLibrarySpecificFetchOptions];
    sharedInstance = [off_1E77219A8 sharedInstance];
    simulateMinimumPhotoCount = [sharedInstance simulateMinimumPhotoCount];
    v10 = 0x1E695D000;
    if (simulateMinimumPhotoCount > 0 || [sharedInstance simulateEmptyLibrary])
    {
      v70 = managerCopy;
      v11 = MEMORY[0x1E6978630];
      v72 = v7;
      firstObject = [v7 firstObject];
      v13 = [v11 fetchAssetsInAssetCollection:firstObject options:px_standardLibrarySpecificFetchOptions];

      fetchedObjectIDs = [v13 fetchedObjectIDs];
      v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:simulateMinimumPhotoCount];
      if (simulateMinimumPhotoCount >= 1)
      {
        for (i = 0; i != simulateMinimumPhotoCount; ++i)
        {
          v17 = [fetchedObjectIDs objectAtIndexedSubscript:{i % objc_msgSend(fetchedObjectIDs, "count")}];
          [v15 addObject:v17];
        }
      }

      v18 = objc_alloc(MEMORY[0x1E69788E0]);
      v19 = [v18 initWithOids:v15 photoLibrary:self->_photoLibrary fetchType:*MEMORY[0x1E6978D98] fetchPropertySets:0 identifier:0 registerIfNeeded:1];
      v20 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v19 title:@"All Photos"];
      v21 = MEMORY[0x1E6978650];
      v22 = MEMORY[0x1E6978760];
      v84[0] = v20;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];
      v24 = [v22 transientCollectionListWithCollections:v23 title:0];
      v25 = [v21 fetchCollectionsInCollectionList:v24 options:v71];

      v10 = 0x1E695D000uLL;
      v7 = v25;
      managerCopy = v70;
    }

    v26 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v7 options:33921];
    filterPredicate = [managerCopy filterPredicate];
    [(PXPhotosDataSourceConfiguration *)v26 setFilterPredicate:filterPredicate];

    -[PXPhotosDataSourceConfiguration setLibraryFilter:](v26, "setLibraryFilter:", [managerCopy libraryFilter]);
    [(PXPhotosDataSourceConfiguration *)v26 setLibraryFilterState:0];
    sortDescriptors = [managerCopy sortDescriptors];
    [(PXPhotosDataSourceConfiguration *)v26 setSortDescriptors:sortDescriptors];

    v83 = *MEMORY[0x1E6978D08];
    v29 = [*(v10 + 3784) arrayWithObjects:&v83 count:1];
    standardUserDefaults = [off_1E7721948 standardUserDefaults];
    allPhotosCaptionsVisible = [standardUserDefaults allPhotosCaptionsVisible];
    bOOLValue = [allPhotosCaptionsVisible BOOLValue];

    v73 = v7;
    if (bOOLValue)
    {
      v33 = [v29 arrayByAddingObject:*MEMORY[0x1E6978C50]];

      v29 = v33;
    }

    [(PXPhotosDataSourceConfiguration *)v26 setFetchPropertySets:v29];
    photoLibrary = [(PXCuratedLibraryZoomLevelDataConfiguration *)self photoLibrary];
    v35 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:photoLibrary];

    -[PXPhotosDataSourceConfiguration setCanIncludeUnsavedSyndicatedAssets:](v26, "setCanIncludeUnsavedSyndicatedAssets:", [v35 showUnsavedSyndicatedContentInPhotosGrids]);
    v36 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v26];
    maxPhotoCount = [sharedInstance maxPhotoCount];
    if (maxPhotoCount)
    {
      [(PXPhotosDataSource *)v36 setFetchLimit:maxPhotoCount];
    }

    if ([sharedInstance onlyPhotosFromToday])
    {
      v38 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v38 setDay:-1];
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      date = [MEMORY[0x1E695DF00] date];
      v41 = [currentCalendar dateByAddingComponents:v38 toDate:date options:0];

      v42 = [MEMORY[0x1E696AE18] predicateWithFormat:@"dateCreated >= %@", v41];
      [(PXPhotosDataSource *)v36 setFilterPredicate:v42];
    }

    v43 = [(PXPhotosDataSource *)v36 assetsInSection:0];
    v44 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__PXCuratedLibraryZoomLevelDataConfiguration_createInitialPhotosDataSourceForDataSourceManager___block_invoke;
    block[3] = &unk_1E774C648;
    v82 = v43;
    v45 = v43;
    dispatch_async(v44, block);

    goto LABEL_34;
  }

  enableDays = self->_enableDays;
  zoomLevel = [(PXCuratedLibraryZoomLevelDataConfiguration *)self zoomLevel];
  v48 = -1;
  v49 = 6321;
  if (zoomLevel <= 1)
  {
    if (zoomLevel == 1)
    {
      v49 = 6641;
      goto LABEL_28;
    }

    if (zoomLevel)
    {
      goto LABEL_28;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v51 = currentHandler;
    v52 = a2;
    selfCopy2 = self;
    v54 = 256;
LABEL_38:
    [currentHandler handleFailureInMethod:v52 object:selfCopy2 file:@"PXCuratedLibraryAssetsDataSourceManagerConfiguration.m" lineNumber:v54 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  switch(zoomLevel)
  {
    case 2:
      v49 = 7153;
      break;
    case 3:
      if (enableDays)
      {
        v48 = -1;
      }

      else
      {
        v48 = -49;
      }

      v49 = 6385;
      break;
    case 4:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v51 = currentHandler;
      v52 = a2;
      selfCopy2 = self;
      v54 = 274;
      goto LABEL_38;
  }

LABEL_28:
  zoomLevel2 = [(PXCuratedLibraryZoomLevelDataConfiguration *)self zoomLevel];
  photoLibrary2 = [(PXCuratedLibraryZoomLevelDataConfiguration *)self photoLibrary];
  libraryFilter = [managerCopy libraryFilter];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PXCuratedLibraryZoomLevelDataConfiguration_createInitialPhotosDataSourceForDataSourceManager___block_invoke_285;
  aBlock[3] = &unk_1E7749E68;
  v79 = zoomLevel2;
  v73 = photoLibrary2;
  v78 = v73;
  v80 = libraryFilter;
  v58 = _Block_copy(aBlock);
  v59 = v58;
  if (enableDays)
  {
    v60 = (*(v58 + 2))(v58);
  }

  else
  {
    v61 = objc_alloc(MEMORY[0x1E69788E0]);
    photoLibrary = self->_photoLibrary;
    fetchType = [MEMORY[0x1E69789F0] fetchType];
    v60 = [v61 initWithOids:MEMORY[0x1E695E0F0] photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:0];
  }

  v64 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v60 options:v49 & v48];
  filterPredicate2 = [managerCopy filterPredicate];
  [(PXPhotosDataSourceConfiguration *)v64 setFilterPredicate:filterPredicate2];

  -[PXPhotosDataSourceConfiguration setLibraryFilter:](v64, "setLibraryFilter:", [managerCopy libraryFilter]);
  [(PXPhotosDataSourceConfiguration *)v64 setLibraryFilterState:0];
  [(PXPhotosDataSourceConfiguration *)v64 setWantsCurationByDefault:1];
  photoLibrary3 = [(PXCuratedLibraryZoomLevelDataConfiguration *)self photoLibrary];
  v67 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:photoLibrary3];

  -[PXPhotosDataSourceConfiguration setCanIncludeUnsavedSyndicatedAssets:](v64, "setCanIncludeUnsavedSyndicatedAssets:", [v67 showUnsavedSyndicatedContentInPhotosGrids]);
  v36 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v64];
  if (!enableDays)
  {
    sharedScheduler = [off_1E7721858 sharedScheduler];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __96__PXCuratedLibraryZoomLevelDataConfiguration_createInitialPhotosDataSourceForDataSourceManager___block_invoke_2;
    v74[3] = &unk_1E774C2F0;
    v76 = v59;
    v75 = v36;
    [sharedScheduler scheduleTaskWithQoS:0 block:v74];
  }

  sharedInstance = v78;
LABEL_34:

  return v36;
}

void __96__PXCuratedLibraryZoomLevelDataConfiguration_createInitialPhotosDataSourceForDataSourceManager___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = PLCuratedLibraryGetLog();
    v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 32));
    v4 = v2;
    v5 = v4;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CuratedLibrary.PrefetchAssets", "", buf, 2u);
    }

    v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(*(a1 + 32), "count") - 1}];
    [*(a1 + 32) prefetchObjectsAtIndexes:v6];
    [*(a1 + 32) prefetchThumbnailAssetsAtIndexes:v6];
    v7 = v5;
    v8 = v7;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_END, v3, "CuratedLibrary.PrefetchAssets", "", v9, 2u);
    }
  }
}

void __96__PXCuratedLibraryZoomLevelDataConfiguration_createInitialPhotosDataSourceForDataSourceManager___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(v2, "count")}];
  [v2 prefetchObjectsAtIndexes:v3];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __96__PXCuratedLibraryZoomLevelDataConfiguration_createInitialPhotosDataSourceForDataSourceManager___block_invoke_3;
  v5[3] = &unk_1E774C620;
  v6 = v2;
  v7 = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __96__PXCuratedLibraryZoomLevelDataConfiguration_createInitialPhotosDataSourceForDataSourceManager___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = PLCuratedLibraryGetLog();
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 32));
  v4 = v2;
  v5 = v4;
  if (v3 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    [*(a1 + 40) setCollectionListFetchResult:*(a1 + 32)];
    v8 = v5;
  }

  else
  {
    if (os_signpost_enabled(v4))
    {
      v6 = [*(a1 + 32) count];
      v9 = 134217984;
      v10 = v6;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CuratedLibrary.setCollectionListFetchResult", "count: %lu", &v9, 0xCu);
    }

    [*(a1 + 40) setCollectionListFetchResult:*(a1 + 32)];
    v7 = v5;
    if (os_signpost_enabled(v7))
    {
      LOWORD(v9) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, v3, "CuratedLibrary.setCollectionListFetchResult", "", &v9, 2u);
    }
  }
}

- (PXCuratedLibraryZoomLevelDataConfiguration)initWithZoomLevel:(int64_t)level assetsDataSourceManager:(id)manager enableDays:(BOOL)days
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = PXCuratedLibraryZoomLevelDataConfiguration;
  v10 = [(PXCuratedLibraryZoomLevelDataConfiguration *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_zoomLevel = level;
    objc_storeStrong(&v10->_assetsDataSourceManager, manager);
    v11->_enableDays = days;
  }

  return v11;
}

- (PXCuratedLibraryZoomLevelDataConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsDataSourceManagerConfiguration.m" lineNumber:145 description:{@"%s is not available as initializer", "-[PXCuratedLibraryZoomLevelDataConfiguration init]"}];

  abort();
}

@end