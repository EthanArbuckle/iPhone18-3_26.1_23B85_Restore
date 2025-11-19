@interface PXCMMPhotoKitContext
- (PXCMMPhotoKitContext)initWithAssetCollection:(id)a3 activityType:(unint64_t)a4 sourceType:(unint64_t)a5 optionalPeopleFetchResult:(id)a6;
- (PXCMMPhotoKitContext)initWithAssets:(id)a3 activityType:(unint64_t)a4 sourceType:(unint64_t)a5;
- (PXCMMPhotoKitContext)initWithAssetsDataSourceManager:(id)a3 mediaProvider:(id)a4 activityType:(unint64_t)a5;
- (PXCMMPhotoKitContext)initWithFetchResult:(id)a3 activityType:(unint64_t)a4 sourceType:(unint64_t)a5 optionalPeopleFetchResult:(id)a6;
- (PXCMMPhotoKitContext)initWithMomentShare:(id)a3 activityType:(unint64_t)a4 sourceType:(unint64_t)a5;
- (PXCMMPhotoKitContext)initWithSuggestion:(id)a3 activityType:(unint64_t)a4 sourceType:(unint64_t)a5 optionalPeopleFetchResult:(id)a6;
- (id)createSession;
@end

@implementation PXCMMPhotoKitContext

- (id)createSession
{
  v2 = [[PXCMMPhotoKitSession alloc] initWithPhotoKitContext:self];

  return v2;
}

- (PXCMMPhotoKitContext)initWithSuggestion:(id)a3 activityType:(unint64_t)a4 sourceType:(unint64_t)a5 optionalPeopleFetchResult:(id)a6
{
  v23[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  if (!v12)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"suggestion"}];
  }

  if (a4 != 1)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:355 description:{@"Invalid parameter not satisfying: %@", @"activityType == PXCMMActivityTypePublish"}];
  }

  v14 = objc_alloc(MEMORY[0x1E69788E0]);
  v23[0] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v16 = [v12 photoLibrary];
  v17 = [v14 initWithObjects:v15 photoLibrary:v16 fetchType:*MEMORY[0x1E6978DA0] fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  v18 = [(PXCMMPhotoKitContext *)self initWithFetchResult:v17 activityType:a4 sourceType:a5 optionalPeopleFetchResult:v13];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_suggestion, a3);
  }

  return v19;
}

- (PXCMMPhotoKitContext)initWithMomentShare:(id)a3 activityType:(unint64_t)a4 sourceType:(unint64_t)a5
{
  v52[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!v8)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:286 description:{@"Invalid parameter not satisfying: %@", @"momentShare"}];
  }

  if ((a4 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:287 description:{@"Invalid parameter not satisfying: %@", @"activityType == PXCMMActivityTypeReceiving || activityType == PXCMMActivityTypeReview"}];
  }

  v39 = a2;
  v9 = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
  v10 = [v9 librarySpecificFetchOptions];
  v11 = MEMORY[0x1E6978650];
  v12 = [v8 localIdentifier];
  v52[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
  v14 = [v11 fetchAssetCollectionsWithLocalIdentifiers:v13 options:v10];

  v43 = v14;
  v15 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v14 options:0];
  [(PXPhotosDataSourceConfiguration *)v15 setPhotoLibrary:v9];
  v51 = *MEMORY[0x1E6978C38];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
  [(PXPhotosDataSourceConfiguration *)v15 setFetchPropertySets:v16];

  v17 = +[PXCompleteMyMomentSettings sharedInstance];
  LODWORD(v12) = [v17 emulatesEmptyMomentShare];

  if (v12)
  {
    v18 = [MEMORY[0x1E696AE18] predicateWithValue:0];
    [(PXPhotosDataSourceConfiguration *)v15 setFilterPredicate:v18];
  }

  else
  {
    v18 = [PXContentFilterState defaultFilterStateForContainerCollection:v8 photoLibrary:v9];
    v19 = [v18 predicateForUseCase:0];
    [(PXPhotosDataSourceConfiguration *)v15 setFilterPredicate:v19];
  }

  v42 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v15];
  v47 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v42];
  v46 = [PXPhotoKitUIMediaProvider mediaProviderWithLibrary:v9];
  v48 = 0;
  v49 = 0;
  PXCMMTitleAndSubtitleForAssetCollection(v8, &v49, &v48);
  v45 = v49;
  v44 = v48;
  v20 = 0;
  if ([v8 px_momentShareType] == 1)
  {
    v21 = [v9 librarySpecificFetchOptions];
    v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"role", 1];
    [v21 setPredicate:v22];

    v23 = [MEMORY[0x1E6978AC0] fetchParticipantsInShare:v8 options:v21];
    v24 = [v23 firstObject];
    v25 = v24;
    if (!v24)
    {
      v38 = [MEMORY[0x1E696AAA8] currentHandler];
      [v38 handleFailureInMethod:v39 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:320 description:{@"No owner for moment share: %@", v8}];

      v24 = 0;
    }

    v20 = PXRecipientFromShareParticipant(v24);
  }

  [v10 setFetchLimit:1];
  v26 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:v8 options:v10];
  v27 = [v26 firstObject];

  v28 = [[PXCMMPreviewAsset alloc] initWithMomentShare:v8 underlyingAsset:v27];
  v29 = objc_alloc_init(PXCMMPreviewUIImageProvider);
  v30 = [(PXCMMPhotoKitContext *)self initWithAssetsDataSourceManager:v47 mediaProvider:v46 activityType:a4];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_momentShare, a3);
    [(PXCMMContext *)v31 setTitle:v45];
    [(PXCMMContext *)v31 setSubtitle:v44];
    if (v20)
    {
      v50 = v20;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
      [(PXCMMContext *)v31 setRecipients:v32];
    }

    else
    {
      [(PXCMMContext *)v31 setRecipients:MEMORY[0x1E695E0F0]];
    }

    [(PXCMMContext *)v31 setOriginatorRecipient:v20];
    v33 = [v8 startDate];
    [(PXCMMContext *)v31 setStartDate:v33];

    v34 = [v8 endDate];
    [(PXCMMContext *)v31 setEndDate:v34];

    -[PXCMMContext setPhotosCount:](v31, "setPhotosCount:", [v8 photosCount]);
    -[PXCMMContext setVideosCount:](v31, "setVideosCount:", [v8 videosCount]);
    -[PXCMMContext setCount:](v31, "setCount:", [v8 assetCount]);
    [(PXCMMContext *)v31 setPosterAsset:v28];
    [(PXCMMContext *)v31 setPosterMediaProvider:v29];
    [(PXCMMContext *)v31 setSourceType:a5];
  }

  return v31;
}

- (PXCMMPhotoKitContext)initWithAssetsDataSourceManager:(id)a3 mediaProvider:(id)a4 activityType:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = PXCMMPhotoKitContext;
  v5 = [(PXCMMContext *)&v9 initWithAssetsDataSourceManager:a3 mediaProvider:a4 activityType:a5];
  if (v5)
  {
    v6 = objc_alloc_init(PXCMMPhotoKitActionManager);
    photoKitActionManager = v5->_photoKitActionManager;
    v5->_photoKitActionManager = v6;
  }

  return v5;
}

- (PXCMMPhotoKitContext)initWithFetchResult:(id)a3 activityType:(unint64_t)a4 sourceType:(unint64_t)a5 optionalPeopleFetchResult:(id)a6
{
  v82 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v57 = a6;
  if (!v8)
  {
    v49 = [MEMORY[0x1E696AAA8] currentHandler];
    [v49 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"fetchResult"}];

    v8 = 0;
  }

  if ([v8 count] != 1)
  {
    v50 = v8;
    v51 = [MEMORY[0x1E696AAA8] currentHandler];
    [v51 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"fetchResult.count == 1"}];

    v8 = v50;
  }

  v68 = [v8 photoLibrary];
  v9 = v8;
  if ([v8 count] >= 2)
  {
    v10 = [v8 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v52 = [MEMORY[0x1E696AAA8] currentHandler];
      [v52 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"[fetchResult.firstObject isKindOfClass:[PHMoment class]]"}];
    }

    PXMap();
  }

  v64 = v8;
  v12 = [v8 firstObject];
  if ([v12 assetCollectionSubtype] == 101)
  {
    if (a4 == 2)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v78 = 0x3032000000;
      v79 = __Block_byref_object_copy__93747;
      v80 = __Block_byref_object_dispose__93748;
      v81 = 0;
      v72[9] = MEMORY[0x1E69E9820];
      v72[10] = 3221225472;
      v72[11] = __94__PXCMMPhotoKitContext_initWithFetchResult_activityType_sourceType_optionalPeopleFetchResult___block_invoke_219;
      v72[12] = &unk_1E7749A28;
      v72[13] = v12;
      v72[14] = &buf;
      px_dispatch_on_main_queue_sync();
    }

    goto LABEL_15;
  }

  if (a4 == 2)
  {
    v76 = *MEMORY[0x1E6978C38];
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
    goto LABEL_17;
  }

  if (a4 != 1 || a5)
  {
LABEL_15:
    v63 = 0;
LABEL_17:
    v58 = 0;
    v59 = 0;
    goto LABEL_18;
  }

  if (v57)
  {
    v59 = [[PXPhotoKitPeopleSuggestionsDataSourceManager alloc] initWithPeopleFetchResult:v57];
  }

  else
  {
    v59 = 0;
  }

  v47 = +[PXCompleteMyMomentSettings sharedInstance];
  v48 = [v47 peopleSuggestionsDataSourceType];

  if (v48 == 1)
  {
    v58 = [PXPhotoKitPeopleSuggestionsDataSourceManager photosGraphPeopleSuggestionsDataSourceManagerWithAssetCollection:v12];
    goto LABEL_51;
  }

  if (!v48)
  {
    v58 = [PXPhotoKitPeopleSuggestionsDataSourceManager mockDataSourceManagerFromPeopleInPhotosInAssetCollection:v12];
LABEL_51:
    v63 = 0;
    goto LABEL_18;
  }

  v63 = 0;
  v58 = 0;
LABEL_18:
  v13 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v9 options:0];
  [(PXPhotosDataSourceConfiguration *)v13 setPhotoLibrary:v68];
  [(PXPhotosDataSourceConfiguration *)v13 setFilterPredicate:0];
  [(PXPhotosDataSourceConfiguration *)v13 setFetchPropertySets:v63];
  [(PXPhotosDataSourceConfiguration *)v13 setCurationType:0];
  v66 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v13];
  [(PXPhotosDataSource *)v66 startBackgroundFetchIfNeeded];
  v61 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v66];
  v65 = [PXPhotoKitUIMediaProvider mediaProviderWithLibrary:v68];
  v14 = [v68 librarySpecificFetchOptions];
  [v14 setFetchLimit:1];
  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"curationScore" ascending:0];
  v75[0] = v15;
  v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
  v75[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
  [v14 setSortDescriptors:v17];

  [v14 setInternalPredicate:0];
  if ([v12 assetCollectionType] == 4)
  {
    [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:v12 referenceAsset:0];
    objc_claimAutoreleasedReturnValue();
    PXMap();
  }

  if ([v12 assetCollectionType] == 8)
  {
    v18 = [MEMORY[0x1E6978AE8] px_keyAssetFilteringPredicate];
    [v14 setInternalPredicate:v18];

    v19 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:v12 options:v14];
    v20 = [v19 firstObject];
  }

  else
  {
    if ([v12 assetCollectionType] == 3)
    {
      [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v12 options:v14];
    }

    else
    {
      [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:v12 options:v14];
    }
    v19 = ;
    v20 = [v19 firstObject];
  }

  v21 = v20;

  if (v21)
  {
    goto LABEL_30;
  }

  v22 = PLSharingGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v12;
    _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_ERROR, "No key asset found for %@\n Falling back to any asset.", &buf, 0xCu);
  }

  v23 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v12 options:v14];
  v21 = [v23 firstObject];

  if (v21)
  {
LABEL_30:
    v24 = [v12 startDate];
    v25 = [v12 endDate];
    v55 = [v12 estimatedPhotosCount];
    v54 = [v12 estimatedVideosCount];
    v53 = [v12 estimatedAssetCount];
    v60 = [v12 localizedTitle];
    if (!v24)
    {
      v26 = [v68 librarySpecificFetchOptions];
      [v26 setFetchLimit:1];
      v27 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
      v74 = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
      [v26 setSortDescriptors:v28];

      v29 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v12 options:v26];
      v30 = [v29 firstObject];

      v24 = [v30 creationDate];
    }

    if (!v25)
    {
      v31 = [v68 librarySpecificFetchOptions];
      [v31 setFetchLimit:1];
      v32 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
      v73 = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
      [v31 setSortDescriptors:v33];

      v34 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v12 options:v31];
      v35 = [v34 firstObject];

      v25 = [v35 creationDate];
    }

    if ([v12 assetCollectionType] == 8)
    {
      v71 = 0;
      v72[0] = 0;
      PXCMMTitleAndSubtitleForAssetCollection(v12, v72, &v71);
      v36 = &v71;
      v37 = v72;
    }

    else
    {
      v69 = 0;
      v70 = 0;
      PLCMMTitleAndSubtitleForTitleAndFallbackDates();
      v36 = &v69;
      v37 = &v70;
    }

    v38 = *v37;
    v39 = *v36;
    v40 = [(PXCMMPhotoKitContext *)self initWithAssetsDataSourceManager:v61 mediaProvider:v65 activityType:a4];
    v41 = v40;
    if (v40)
    {
      [(PXCMMContext *)v40 setPeopleSuggestionsPreviewDataSourceManager:v59];
      [(PXCMMContext *)v41 setPeopleSuggestionsDataSourceManager:v58];
      v42 = [v60 copy];
      [(PXCMMContext *)v41 setOriginalTitle:v42];

      v43 = [v38 copy];
      [(PXCMMContext *)v41 setTitle:v43];

      v44 = [v39 copy];
      [(PXCMMContext *)v41 setSubtitle:v44];

      [(PXCMMContext *)v41 setPosterAsset:v21];
      [(PXCMMContext *)v41 setPosterMediaProvider:v65];
      [(PXCMMContext *)v41 setStartDate:v24];
      [(PXCMMContext *)v41 setEndDate:v25];
      [(PXCMMContext *)v41 setPhotosCount:v55];
      [(PXCMMContext *)v41 setVideosCount:v54];
      [(PXCMMContext *)v41 setCount:v53];
      [(PXCMMContext *)v41 setSourceType:a5];
    }

    self = v41;

    v45 = self;
  }

  else
  {
    v21 = PLSharingGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_ERROR, "No assets found for %@\n", &buf, 0xCu);
    }

    v45 = 0;
  }

  return v45;
}

void __94__PXCMMPhotoKitContext_initWithFetchResult_activityType_sourceType_optionalPeopleFetchResult___block_invoke_219(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) pl_assetContainer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 cloudAlbumSubscriberRecords];
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v13 + 1) + 8 * v11) inviteeFirstName];
          if (v12)
          {
            [*(*(*(a1 + 40) + 8) + 40) addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (PXCMMPhotoKitContext)initWithAssetCollection:(id)a3 activityType:(unint64_t)a4 sourceType:(unint64_t)a5 optionalPeopleFetchResult:(id)a6
{
  v21[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  if (!v11)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"assetCollection"}];
  }

  if ([v11 assetCollectionType] == 7)
  {
    v13 = [(PXCMMPhotoKitContext *)self initWithMomentShare:v11 activityType:a4 sourceType:a5];
  }

  else
  {
    if ([v11 assetCollectionType] != 8)
    {
      v15 = objc_alloc(MEMORY[0x1E69788E0]);
      v21[0] = v11;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      v17 = [v11 photoLibrary];
      v18 = [v15 initWithObjects:v16 photoLibrary:v17 fetchType:*MEMORY[0x1E6978DA0] fetchPropertySets:0 identifier:0 registerIfNeeded:0];

      v14 = [(PXCMMPhotoKitContext *)self initWithFetchResult:v18 activityType:a4 sourceType:a5 optionalPeopleFetchResult:v12];
      goto LABEL_9;
    }

    v13 = [(PXCMMPhotoKitContext *)self initWithSuggestion:v11 activityType:a4 sourceType:a5 optionalPeopleFetchResult:v12];
  }

  v14 = v13;
LABEL_9:

  return v14;
}

- (PXCMMPhotoKitContext)initWithAssets:(id)a3 activityType:(unint64_t)a4 sourceType:(unint64_t)a5
{
  v9 = a3;
  if (!v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"assets"}];
  }

  v10 = [MEMORY[0x1E6978630] px_orderedAssetsFromAssets:v9 sortDescriptors:0];
  v11 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v10 title:0];
  v12 = [(PXCMMPhotoKitContext *)self initWithAssetCollection:v11 activityType:a4 sourceType:a5 optionalPeopleFetchResult:0];

  return v12;
}

@end