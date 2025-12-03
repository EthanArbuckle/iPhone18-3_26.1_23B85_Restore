@interface PXCMMPhotoKitContext
- (PXCMMPhotoKitContext)initWithAssetCollection:(id)collection activityType:(unint64_t)type sourceType:(unint64_t)sourceType optionalPeopleFetchResult:(id)result;
- (PXCMMPhotoKitContext)initWithAssets:(id)assets activityType:(unint64_t)type sourceType:(unint64_t)sourceType;
- (PXCMMPhotoKitContext)initWithAssetsDataSourceManager:(id)manager mediaProvider:(id)provider activityType:(unint64_t)type;
- (PXCMMPhotoKitContext)initWithFetchResult:(id)result activityType:(unint64_t)type sourceType:(unint64_t)sourceType optionalPeopleFetchResult:(id)fetchResult;
- (PXCMMPhotoKitContext)initWithMomentShare:(id)share activityType:(unint64_t)type sourceType:(unint64_t)sourceType;
- (PXCMMPhotoKitContext)initWithSuggestion:(id)suggestion activityType:(unint64_t)type sourceType:(unint64_t)sourceType optionalPeopleFetchResult:(id)result;
- (id)createSession;
@end

@implementation PXCMMPhotoKitContext

- (id)createSession
{
  v2 = [[PXCMMPhotoKitSession alloc] initWithPhotoKitContext:self];

  return v2;
}

- (PXCMMPhotoKitContext)initWithSuggestion:(id)suggestion activityType:(unint64_t)type sourceType:(unint64_t)sourceType optionalPeopleFetchResult:(id)result
{
  v23[1] = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  resultCopy = result;
  if (!suggestionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"suggestion"}];
  }

  if (type != 1)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:355 description:{@"Invalid parameter not satisfying: %@", @"activityType == PXCMMActivityTypePublish"}];
  }

  v14 = objc_alloc(MEMORY[0x1E69788E0]);
  v23[0] = suggestionCopy;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  photoLibrary = [suggestionCopy photoLibrary];
  v17 = [v14 initWithObjects:v15 photoLibrary:photoLibrary fetchType:*MEMORY[0x1E6978DA0] fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  v18 = [(PXCMMPhotoKitContext *)self initWithFetchResult:v17 activityType:type sourceType:sourceType optionalPeopleFetchResult:resultCopy];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_suggestion, suggestion);
  }

  return v19;
}

- (PXCMMPhotoKitContext)initWithMomentShare:(id)share activityType:(unint64_t)type sourceType:(unint64_t)sourceType
{
  v52[1] = *MEMORY[0x1E69E9840];
  shareCopy = share;
  if (!shareCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:286 description:{@"Invalid parameter not satisfying: %@", @"momentShare"}];
  }

  if ((type & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:287 description:{@"Invalid parameter not satisfying: %@", @"activityType == PXCMMActivityTypeReceiving || activityType == PXCMMActivityTypeReview"}];
  }

  v39 = a2;
  mEMORY[0x1E69789A8] = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
  librarySpecificFetchOptions = [mEMORY[0x1E69789A8] librarySpecificFetchOptions];
  v11 = MEMORY[0x1E6978650];
  localIdentifier = [shareCopy localIdentifier];
  v52[0] = localIdentifier;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
  v14 = [v11 fetchAssetCollectionsWithLocalIdentifiers:v13 options:librarySpecificFetchOptions];

  v43 = v14;
  v15 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v14 options:0];
  [(PXPhotosDataSourceConfiguration *)v15 setPhotoLibrary:mEMORY[0x1E69789A8]];
  v51 = *MEMORY[0x1E6978C38];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
  [(PXPhotosDataSourceConfiguration *)v15 setFetchPropertySets:v16];

  v17 = +[PXCompleteMyMomentSettings sharedInstance];
  LODWORD(localIdentifier) = [v17 emulatesEmptyMomentShare];

  if (localIdentifier)
  {
    v18 = [MEMORY[0x1E696AE18] predicateWithValue:0];
    [(PXPhotosDataSourceConfiguration *)v15 setFilterPredicate:v18];
  }

  else
  {
    v18 = [PXContentFilterState defaultFilterStateForContainerCollection:shareCopy photoLibrary:mEMORY[0x1E69789A8]];
    v19 = [v18 predicateForUseCase:0];
    [(PXPhotosDataSourceConfiguration *)v15 setFilterPredicate:v19];
  }

  v42 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v15];
  v47 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v42];
  v46 = [PXPhotoKitUIMediaProvider mediaProviderWithLibrary:mEMORY[0x1E69789A8]];
  v48 = 0;
  v49 = 0;
  PXCMMTitleAndSubtitleForAssetCollection(shareCopy, &v49, &v48);
  v45 = v49;
  v44 = v48;
  v20 = 0;
  if ([shareCopy px_momentShareType] == 1)
  {
    librarySpecificFetchOptions2 = [mEMORY[0x1E69789A8] librarySpecificFetchOptions];
    v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"role", 1];
    [librarySpecificFetchOptions2 setPredicate:v22];

    v23 = [MEMORY[0x1E6978AC0] fetchParticipantsInShare:shareCopy options:librarySpecificFetchOptions2];
    firstObject = [v23 firstObject];
    v25 = firstObject;
    if (!firstObject)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:v39 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:320 description:{@"No owner for moment share: %@", shareCopy}];

      firstObject = 0;
    }

    v20 = PXRecipientFromShareParticipant(firstObject);
  }

  [librarySpecificFetchOptions setFetchLimit:1];
  v26 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:shareCopy options:librarySpecificFetchOptions];
  firstObject2 = [v26 firstObject];

  v28 = [[PXCMMPreviewAsset alloc] initWithMomentShare:shareCopy underlyingAsset:firstObject2];
  v29 = objc_alloc_init(PXCMMPreviewUIImageProvider);
  v30 = [(PXCMMPhotoKitContext *)self initWithAssetsDataSourceManager:v47 mediaProvider:v46 activityType:type];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_momentShare, share);
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
    startDate = [shareCopy startDate];
    [(PXCMMContext *)v31 setStartDate:startDate];

    endDate = [shareCopy endDate];
    [(PXCMMContext *)v31 setEndDate:endDate];

    -[PXCMMContext setPhotosCount:](v31, "setPhotosCount:", [shareCopy photosCount]);
    -[PXCMMContext setVideosCount:](v31, "setVideosCount:", [shareCopy videosCount]);
    -[PXCMMContext setCount:](v31, "setCount:", [shareCopy assetCount]);
    [(PXCMMContext *)v31 setPosterAsset:v28];
    [(PXCMMContext *)v31 setPosterMediaProvider:v29];
    [(PXCMMContext *)v31 setSourceType:sourceType];
  }

  return v31;
}

- (PXCMMPhotoKitContext)initWithAssetsDataSourceManager:(id)manager mediaProvider:(id)provider activityType:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = PXCMMPhotoKitContext;
  v5 = [(PXCMMContext *)&v9 initWithAssetsDataSourceManager:manager mediaProvider:provider activityType:type];
  if (v5)
  {
    v6 = objc_alloc_init(PXCMMPhotoKitActionManager);
    photoKitActionManager = v5->_photoKitActionManager;
    v5->_photoKitActionManager = v6;
  }

  return v5;
}

- (PXCMMPhotoKitContext)initWithFetchResult:(id)result activityType:(unint64_t)type sourceType:(unint64_t)sourceType optionalPeopleFetchResult:(id)fetchResult
{
  v82 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  fetchResultCopy = fetchResult;
  if (!resultCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"fetchResult"}];

    resultCopy = 0;
  }

  if ([resultCopy count] != 1)
  {
    v50 = resultCopy;
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"fetchResult.count == 1"}];

    resultCopy = v50;
  }

  photoLibrary = [resultCopy photoLibrary];
  v9 = resultCopy;
  if ([resultCopy count] >= 2)
  {
    firstObject = [resultCopy firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"[fetchResult.firstObject isKindOfClass:[PHMoment class]]"}];
    }

    PXMap();
  }

  v64 = resultCopy;
  firstObject2 = [resultCopy firstObject];
  if ([firstObject2 assetCollectionSubtype] == 101)
  {
    if (type == 2)
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
      v72[13] = firstObject2;
      v72[14] = &buf;
      px_dispatch_on_main_queue_sync();
    }

    goto LABEL_15;
  }

  if (type == 2)
  {
    v76 = *MEMORY[0x1E6978C38];
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
    goto LABEL_17;
  }

  if (type != 1 || sourceType)
  {
LABEL_15:
    v63 = 0;
LABEL_17:
    v58 = 0;
    v59 = 0;
    goto LABEL_18;
  }

  if (fetchResultCopy)
  {
    v59 = [[PXPhotoKitPeopleSuggestionsDataSourceManager alloc] initWithPeopleFetchResult:fetchResultCopy];
  }

  else
  {
    v59 = 0;
  }

  v47 = +[PXCompleteMyMomentSettings sharedInstance];
  peopleSuggestionsDataSourceType = [v47 peopleSuggestionsDataSourceType];

  if (peopleSuggestionsDataSourceType == 1)
  {
    v58 = [PXPhotoKitPeopleSuggestionsDataSourceManager photosGraphPeopleSuggestionsDataSourceManagerWithAssetCollection:firstObject2];
    goto LABEL_51;
  }

  if (!peopleSuggestionsDataSourceType)
  {
    v58 = [PXPhotoKitPeopleSuggestionsDataSourceManager mockDataSourceManagerFromPeopleInPhotosInAssetCollection:firstObject2];
LABEL_51:
    v63 = 0;
    goto LABEL_18;
  }

  v63 = 0;
  v58 = 0;
LABEL_18:
  v13 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v9 options:0];
  [(PXPhotosDataSourceConfiguration *)v13 setPhotoLibrary:photoLibrary];
  [(PXPhotosDataSourceConfiguration *)v13 setFilterPredicate:0];
  [(PXPhotosDataSourceConfiguration *)v13 setFetchPropertySets:v63];
  [(PXPhotosDataSourceConfiguration *)v13 setCurationType:0];
  v66 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v13];
  [(PXPhotosDataSource *)v66 startBackgroundFetchIfNeeded];
  v61 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v66];
  v65 = [PXPhotoKitUIMediaProvider mediaProviderWithLibrary:photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setFetchLimit:1];
  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"curationScore" ascending:0];
  v75[0] = v15;
  v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
  v75[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v17];

  [librarySpecificFetchOptions setInternalPredicate:0];
  if ([firstObject2 assetCollectionType] == 4)
  {
    [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:firstObject2 referenceAsset:0];
    objc_claimAutoreleasedReturnValue();
    PXMap();
  }

  if ([firstObject2 assetCollectionType] == 8)
  {
    px_keyAssetFilteringPredicate = [MEMORY[0x1E6978AE8] px_keyAssetFilteringPredicate];
    [librarySpecificFetchOptions setInternalPredicate:px_keyAssetFilteringPredicate];

    v19 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:firstObject2 options:librarySpecificFetchOptions];
    firstObject3 = [v19 firstObject];
  }

  else
  {
    if ([firstObject2 assetCollectionType] == 3)
    {
      [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:firstObject2 options:librarySpecificFetchOptions];
    }

    else
    {
      [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:firstObject2 options:librarySpecificFetchOptions];
    }
    v19 = ;
    firstObject3 = [v19 firstObject];
  }

  firstObject4 = firstObject3;

  if (firstObject4)
  {
    goto LABEL_30;
  }

  v22 = PLSharingGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = firstObject2;
    _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_ERROR, "No key asset found for %@\n Falling back to any asset.", &buf, 0xCu);
  }

  v23 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:firstObject2 options:librarySpecificFetchOptions];
  firstObject4 = [v23 firstObject];

  if (firstObject4)
  {
LABEL_30:
    startDate = [firstObject2 startDate];
    endDate = [firstObject2 endDate];
    estimatedPhotosCount = [firstObject2 estimatedPhotosCount];
    estimatedVideosCount = [firstObject2 estimatedVideosCount];
    estimatedAssetCount = [firstObject2 estimatedAssetCount];
    localizedTitle = [firstObject2 localizedTitle];
    if (!startDate)
    {
      librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
      [librarySpecificFetchOptions2 setFetchLimit:1];
      v27 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
      v74 = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
      [librarySpecificFetchOptions2 setSortDescriptors:v28];

      v29 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:firstObject2 options:librarySpecificFetchOptions2];
      firstObject5 = [v29 firstObject];

      startDate = [firstObject5 creationDate];
    }

    if (!endDate)
    {
      librarySpecificFetchOptions3 = [photoLibrary librarySpecificFetchOptions];
      [librarySpecificFetchOptions3 setFetchLimit:1];
      v32 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
      v73 = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
      [librarySpecificFetchOptions3 setSortDescriptors:v33];

      v34 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:firstObject2 options:librarySpecificFetchOptions3];
      firstObject6 = [v34 firstObject];

      endDate = [firstObject6 creationDate];
    }

    if ([firstObject2 assetCollectionType] == 8)
    {
      v71 = 0;
      v72[0] = 0;
      PXCMMTitleAndSubtitleForAssetCollection(firstObject2, v72, &v71);
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
    v40 = [(PXCMMPhotoKitContext *)self initWithAssetsDataSourceManager:v61 mediaProvider:v65 activityType:type];
    v41 = v40;
    if (v40)
    {
      [(PXCMMContext *)v40 setPeopleSuggestionsPreviewDataSourceManager:v59];
      [(PXCMMContext *)v41 setPeopleSuggestionsDataSourceManager:v58];
      v42 = [localizedTitle copy];
      [(PXCMMContext *)v41 setOriginalTitle:v42];

      v43 = [v38 copy];
      [(PXCMMContext *)v41 setTitle:v43];

      v44 = [v39 copy];
      [(PXCMMContext *)v41 setSubtitle:v44];

      [(PXCMMContext *)v41 setPosterAsset:firstObject4];
      [(PXCMMContext *)v41 setPosterMediaProvider:v65];
      [(PXCMMContext *)v41 setStartDate:startDate];
      [(PXCMMContext *)v41 setEndDate:endDate];
      [(PXCMMContext *)v41 setPhotosCount:estimatedPhotosCount];
      [(PXCMMContext *)v41 setVideosCount:estimatedVideosCount];
      [(PXCMMContext *)v41 setCount:estimatedAssetCount];
      [(PXCMMContext *)v41 setSourceType:sourceType];
    }

    self = v41;

    selfCopy = self;
  }

  else
  {
    firstObject4 = PLSharingGetLog();
    if (os_log_type_enabled(firstObject4, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = firstObject2;
      _os_log_impl(&dword_1A3C1C000, firstObject4, OS_LOG_TYPE_ERROR, "No assets found for %@\n", &buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
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

- (PXCMMPhotoKitContext)initWithAssetCollection:(id)collection activityType:(unint64_t)type sourceType:(unint64_t)sourceType optionalPeopleFetchResult:(id)result
{
  v21[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  resultCopy = result;
  if (!collectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"assetCollection"}];
  }

  if ([collectionCopy assetCollectionType] == 7)
  {
    v13 = [(PXCMMPhotoKitContext *)self initWithMomentShare:collectionCopy activityType:type sourceType:sourceType];
  }

  else
  {
    if ([collectionCopy assetCollectionType] != 8)
    {
      v15 = objc_alloc(MEMORY[0x1E69788E0]);
      v21[0] = collectionCopy;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      photoLibrary = [collectionCopy photoLibrary];
      v18 = [v15 initWithObjects:v16 photoLibrary:photoLibrary fetchType:*MEMORY[0x1E6978DA0] fetchPropertySets:0 identifier:0 registerIfNeeded:0];

      v14 = [(PXCMMPhotoKitContext *)self initWithFetchResult:v18 activityType:type sourceType:sourceType optionalPeopleFetchResult:resultCopy];
      goto LABEL_9;
    }

    v13 = [(PXCMMPhotoKitContext *)self initWithSuggestion:collectionCopy activityType:type sourceType:sourceType optionalPeopleFetchResult:resultCopy];
  }

  v14 = v13;
LABEL_9:

  return v14;
}

- (PXCMMPhotoKitContext)initWithAssets:(id)assets activityType:(unint64_t)type sourceType:(unint64_t)sourceType
{
  assetsCopy = assets;
  if (!assetsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitContext.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"assets"}];
  }

  v10 = [MEMORY[0x1E6978630] px_orderedAssetsFromAssets:assetsCopy sortDescriptors:0];
  v11 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v10 title:0];
  v12 = [(PXCMMPhotoKitContext *)self initWithAssetCollection:v11 activityType:type sourceType:sourceType optionalPeopleFetchResult:0];

  return v12;
}

@end