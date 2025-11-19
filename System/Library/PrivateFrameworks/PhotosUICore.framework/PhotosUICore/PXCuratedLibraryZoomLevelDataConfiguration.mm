@interface PXCuratedLibraryZoomLevelDataConfiguration
- (PXAssetsDataSourceManager)assetsDataSourceManager;
- (PXCuratedLibraryZoomLevelDataConfiguration)init;
- (PXCuratedLibraryZoomLevelDataConfiguration)initWithZoomLevel:(int64_t)a3 assetsDataSourceManager:(id)a4 enableDays:(BOOL)a5;
- (id)createInitialPhotosDataSourceForDataSourceManager:(id)a3;
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

- (id)createInitialPhotosDataSourceForDataSourceManager:(id)a3
{
  v84[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PHPhotoLibrary *)self->_photoLibrary px_standardLibrarySpecificFetchOptions];
  [v6 setPhotoLibrary:self->_photoLibrary];
  v71 = v6;
  if ([(PXCuratedLibraryZoomLevelDataConfiguration *)self zoomLevel]== 4)
  {
    [v6 setIncludeAllPhotosSmartAlbum:1];
    v7 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:1000000205 options:v6];
    v8 = [off_1E77219A8 sharedInstance];
    v9 = [v8 simulateMinimumPhotoCount];
    v10 = 0x1E695D000;
    if (v9 > 0 || [v8 simulateEmptyLibrary])
    {
      v70 = v5;
      v11 = MEMORY[0x1E6978630];
      v72 = v7;
      v12 = [v7 firstObject];
      v13 = [v11 fetchAssetsInAssetCollection:v12 options:v6];

      v14 = [v13 fetchedObjectIDs];
      v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
      if (v9 >= 1)
      {
        for (i = 0; i != v9; ++i)
        {
          v17 = [v14 objectAtIndexedSubscript:{i % objc_msgSend(v14, "count")}];
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
      v5 = v70;
    }

    v26 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v7 options:33921];
    v27 = [v5 filterPredicate];
    [(PXPhotosDataSourceConfiguration *)v26 setFilterPredicate:v27];

    -[PXPhotosDataSourceConfiguration setLibraryFilter:](v26, "setLibraryFilter:", [v5 libraryFilter]);
    [(PXPhotosDataSourceConfiguration *)v26 setLibraryFilterState:0];
    v28 = [v5 sortDescriptors];
    [(PXPhotosDataSourceConfiguration *)v26 setSortDescriptors:v28];

    v83 = *MEMORY[0x1E6978D08];
    v29 = [*(v10 + 3784) arrayWithObjects:&v83 count:1];
    v30 = [off_1E7721948 standardUserDefaults];
    v31 = [v30 allPhotosCaptionsVisible];
    v32 = [v31 BOOLValue];

    v73 = v7;
    if (v32)
    {
      v33 = [v29 arrayByAddingObject:*MEMORY[0x1E6978C50]];

      v29 = v33;
    }

    [(PXPhotosDataSourceConfiguration *)v26 setFetchPropertySets:v29];
    v34 = [(PXCuratedLibraryZoomLevelDataConfiguration *)self photoLibrary];
    v35 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:v34];

    -[PXPhotosDataSourceConfiguration setCanIncludeUnsavedSyndicatedAssets:](v26, "setCanIncludeUnsavedSyndicatedAssets:", [v35 showUnsavedSyndicatedContentInPhotosGrids]);
    v36 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v26];
    v37 = [v8 maxPhotoCount];
    if (v37)
    {
      [(PXPhotosDataSource *)v36 setFetchLimit:v37];
    }

    if ([v8 onlyPhotosFromToday])
    {
      v38 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v38 setDay:-1];
      v39 = [MEMORY[0x1E695DEE8] currentCalendar];
      v40 = [MEMORY[0x1E695DF00] date];
      v41 = [v39 dateByAddingComponents:v38 toDate:v40 options:0];

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
  v47 = [(PXCuratedLibraryZoomLevelDataConfiguration *)self zoomLevel];
  v48 = -1;
  v49 = 6321;
  if (v47 <= 1)
  {
    if (v47 == 1)
    {
      v49 = 6641;
      goto LABEL_28;
    }

    if (v47)
    {
      goto LABEL_28;
    }

    v50 = [MEMORY[0x1E696AAA8] currentHandler];
    v51 = v50;
    v52 = a2;
    v53 = self;
    v54 = 256;
LABEL_38:
    [v50 handleFailureInMethod:v52 object:v53 file:@"PXCuratedLibraryAssetsDataSourceManagerConfiguration.m" lineNumber:v54 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  switch(v47)
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
      v50 = [MEMORY[0x1E696AAA8] currentHandler];
      v51 = v50;
      v52 = a2;
      v53 = self;
      v54 = 274;
      goto LABEL_38;
  }

LABEL_28:
  v55 = [(PXCuratedLibraryZoomLevelDataConfiguration *)self zoomLevel];
  v56 = [(PXCuratedLibraryZoomLevelDataConfiguration *)self photoLibrary];
  v57 = [v5 libraryFilter];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PXCuratedLibraryZoomLevelDataConfiguration_createInitialPhotosDataSourceForDataSourceManager___block_invoke_285;
  aBlock[3] = &unk_1E7749E68;
  v79 = v55;
  v73 = v56;
  v78 = v73;
  v80 = v57;
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
    v63 = [MEMORY[0x1E69789F0] fetchType];
    v60 = [v61 initWithOids:MEMORY[0x1E695E0F0] photoLibrary:photoLibrary fetchType:v63 fetchPropertySets:0 identifier:0 registerIfNeeded:0];
  }

  v64 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v60 options:v49 & v48];
  v65 = [v5 filterPredicate];
  [(PXPhotosDataSourceConfiguration *)v64 setFilterPredicate:v65];

  -[PXPhotosDataSourceConfiguration setLibraryFilter:](v64, "setLibraryFilter:", [v5 libraryFilter]);
  [(PXPhotosDataSourceConfiguration *)v64 setLibraryFilterState:0];
  [(PXPhotosDataSourceConfiguration *)v64 setWantsCurationByDefault:1];
  v66 = [(PXCuratedLibraryZoomLevelDataConfiguration *)self photoLibrary];
  v67 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:v66];

  -[PXPhotosDataSourceConfiguration setCanIncludeUnsavedSyndicatedAssets:](v64, "setCanIncludeUnsavedSyndicatedAssets:", [v67 showUnsavedSyndicatedContentInPhotosGrids]);
  v36 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v64];
  if (!enableDays)
  {
    v68 = [off_1E7721858 sharedScheduler];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __96__PXCuratedLibraryZoomLevelDataConfiguration_createInitialPhotosDataSourceForDataSourceManager___block_invoke_2;
    v74[3] = &unk_1E774C2F0;
    v76 = v59;
    v75 = v36;
    [v68 scheduleTaskWithQoS:0 block:v74];
  }

  v8 = v78;
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

- (PXCuratedLibraryZoomLevelDataConfiguration)initWithZoomLevel:(int64_t)a3 assetsDataSourceManager:(id)a4 enableDays:(BOOL)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = PXCuratedLibraryZoomLevelDataConfiguration;
  v10 = [(PXCuratedLibraryZoomLevelDataConfiguration *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_zoomLevel = a3;
    objc_storeStrong(&v10->_assetsDataSourceManager, a4);
    v11->_enableDays = a5;
  }

  return v11;
}

- (PXCuratedLibraryZoomLevelDataConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsDataSourceManagerConfiguration.m" lineNumber:145 description:{@"%s is not available as initializer", "-[PXCuratedLibraryZoomLevelDataConfiguration init]"}];

  abort();
}

@end