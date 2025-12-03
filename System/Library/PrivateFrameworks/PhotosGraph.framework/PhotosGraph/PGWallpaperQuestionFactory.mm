@interface PGWallpaperQuestionFactory
+ (BOOL)isHighRecallCityscapeAsset:(id)asset;
+ (BOOL)isHighRecallLandscapeAsset:(id)asset;
- (id)_generateQuestionsWithLimit:(unint64_t)limit progressReporter:(id)reporter;
- (id)_generateTruePositiveCityscapeQuestionWithLimit:(unint64_t)limit suggestionSession:(id)session alreadyGeneratedQuestions:(id)questions progressReporter:(id)reporter;
- (id)_generateTruePositiveLandscapeQuestionWithLimit:(unint64_t)limit suggestionSession:(id)session alreadyGeneratedQuestions:(id)questions progressReporter:(id)reporter;
- (id)_generateTruePositivePeopleQuestionWithLimit:(unint64_t)limit suggestionSession:(id)session alreadyGeneratedQuestions:(id)questions progressReporter:(id)reporter;
- (id)_generateTruePositivePetQuestionWithLimit:(unint64_t)limit suggestionSession:(id)session alreadyGeneratedQuestions:(id)questions progressReporter:(id)reporter;
- (id)_generateTruePositiveQuestionsWithLimit:(unint64_t)limit progressReporter:(id)reporter;
- (id)evenlySelectQuestionsByType:(id)type limit:(unint64_t)limit;
- (id)fetchAssetsWithPredicate:(id)predicate assetFilter:(id)filter;
- (id)fetchCityscapeAssets;
- (id)fetchLandscapeAssets;
- (id)fetchPeopleAssets;
- (id)fetchPetAssets;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGWallpaperQuestionFactory

+ (BOOL)isHighRecallCityscapeAsset:(id)asset
{
  v18 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  [assetCopy clsSceneClassifications];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  curationModel = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (curationModel)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != curationModel; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 extendedSceneIdentifier] == 2147481598)
        {
          curationModel = [assetCopy curationModel];
          cityNatureModel = [curationModel cityNatureModel];

          cityNode = [cityNatureModel cityNode];
          LOBYTE(curationModel) = [cityNode passesHighRecallWithSignal:v8];

          goto LABEL_11;
        }
      }

      curationModel = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (curationModel)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return curationModel;
}

+ (BOOL)isHighRecallLandscapeAsset:(id)asset
{
  v18 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  [assetCopy sceneClassifications];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  curationModel = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (curationModel)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != curationModel; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 extendedSceneIdentifier] == 2147481597)
        {
          curationModel = [assetCopy curationModel];
          cityNatureModel = [curationModel cityNatureModel];

          natureNode = [cityNatureModel natureNode];
          LOBYTE(curationModel) = [natureNode passesHighRecallWithSignal:v8];

          goto LABEL_11;
        }
      }

      curationModel = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (curationModel)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return curationModel;
}

- (id)fetchCityscapeAssets
{
  v3 = [PGCityscapeWallpaperSuggester prefilteringInternalPredicateWithForbiddenAssetUUIDs:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__PGWallpaperQuestionFactory_fetchCityscapeAssets__block_invoke;
  v6[3] = &unk_278881390;
  v6[4] = self;
  v4 = [(PGWallpaperQuestionFactory *)self fetchAssetsWithPredicate:v3 assetFilter:v6];

  return v4;
}

uint64_t __50__PGWallpaperQuestionFactory_fetchCityscapeAssets__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() isHighRecallCityscapeAsset:v3];

  return v4;
}

- (id)fetchLandscapeAssets
{
  v3 = [PGLandscapeWallpaperSuggester prefilteringInternalPredicateWithForbiddenAssetUUIDs:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__PGWallpaperQuestionFactory_fetchLandscapeAssets__block_invoke;
  v6[3] = &unk_278881390;
  v6[4] = self;
  v4 = [(PGWallpaperQuestionFactory *)self fetchAssetsWithPredicate:v3 assetFilter:v6];

  return v4;
}

uint64_t __50__PGWallpaperQuestionFactory_fetchLandscapeAssets__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() isHighRecallLandscapeAsset:v3];

  return v4;
}

- (id)fetchPetAssets
{
  v42 = *MEMORY[0x277D85DE8];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];

  v34 = objc_alloc_init(MEMORY[0x277D3C7A0]);
  v5 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:photoLibrary curationSession:v34];
  workingContext2 = [(PGSurveyQuestionFactory *)self workingContext];
  v33 = v5;
  v7 = [PGGraphPetIdentityProcessor fetchInterestingEligiblePetsForWallpaperWithWorkingContext:workingContext2 curationContext:v5];

  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        uuid = [*(*(&v35 + 1) + 8 * i) uuid];
        [v8 addObject:uuid];
      }

      v11 = [v9 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v11);
  }

  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_284485940];
  v16 = MEMORY[0x277CCA920];
  v17 = [PGPetWallpaperSuggesterFilteringContext alloc];
  v18 = -[PGPetWallpaperSuggesterFilteringContext initForPetsInOrientation:](v17, "initForPetsInOrientation:", [MEMORY[0x277D3C810] primaryOrientation]);
  v19 = [PGPetWallpaperSuggester prefilteringInternalPredicateWithContext:v18];
  v40[0] = v19;
  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K IN %@", @"personForFace", @"personUUID", v8];
  v40[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  v22 = [v16 andPredicateWithSubpredicates:v21];
  [librarySpecificFetchOptions setInternalPredicate:v22];

  v23 = [MEMORY[0x277CD9868] fetchFacesWithOptions:librarySpecificFetchOptions];
  librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions2 setCacheSizeForFetch:200];
  [librarySpecificFetchOptions2 setChunkSizeForFetch:200];
  [librarySpecificFetchOptions2 setFetchLimit:200];
  v25 = +[PGCurationManager assetPropertySetsForCuration];
  [librarySpecificFetchOptions2 setFetchPropertySets:v25];

  v26 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v39 = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  [librarySpecificFetchOptions2 setSortDescriptors:v27];

  v28 = MEMORY[0x277CD97A8];
  fetchedObjects = [v23 fetchedObjects];
  v30 = [v28 fetchAssetsForFaces:fetchedObjects options:librarySpecificFetchOptions2];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)fetchPeopleAssets
{
  v26[2] = *MEMORY[0x277D85DE8];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];

  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v6 = MEMORY[0x277CCA920];
  v7 = [PGSinglePersonWallpaperAssetSuggesterFilteringContext alloc];
  v8 = -[PGSinglePersonWallpaperAssetSuggesterFilteringContext initForPeopleInOrientation:](v7, "initForPeopleInOrientation:", [MEMORY[0x277D3C810] primaryOrientation]);
  v9 = [PGSinglePersonWallpaperAssetSuggester prefilteringInternalPredicateWithContext:v8];
  v26[0] = v9;
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K > %d OR %K.%K >= %f", @"personForFace", @"verifiedType", 0, @"personForFace", @"mergeCandidateConfidence", *MEMORY[0x277CD9C50]];
  v26[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v12 = [v6 andPredicateWithSubpredicates:v11];
  [librarySpecificFetchOptions setInternalPredicate:v12];

  v13 = [MEMORY[0x277CD9868] fetchFacesWithOptions:librarySpecificFetchOptions];
  workingContext2 = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary2 = [workingContext2 photoLibrary];
  librarySpecificFetchOptions2 = [photoLibrary2 librarySpecificFetchOptions];

  [librarySpecificFetchOptions2 setCacheSizeForFetch:200];
  [librarySpecificFetchOptions2 setChunkSizeForFetch:200];
  [librarySpecificFetchOptions2 setFetchLimit:200];
  v17 = +[PGCurationManager assetPropertySetsForCuration];
  [librarySpecificFetchOptions2 setFetchPropertySets:v17];

  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v25 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  [librarySpecificFetchOptions2 setSortDescriptors:v19];

  v20 = MEMORY[0x277CD97A8];
  fetchedObjects = [v13 fetchedObjects];
  v22 = [v20 fetchAssetsForFaces:fetchedObjects options:librarySpecificFetchOptions2];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)fetchAssetsWithPredicate:(id)predicate assetFilter:(id)filter
{
  v48[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  filterCopy = filter;
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];

  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setCacheSizeForFetch:200];
  [librarySpecificFetchOptions setChunkSizeForFetch:200];
  v37 = predicateCopy;
  [librarySpecificFetchOptions setInternalPredicate:predicateCopy];
  v11 = +[PGCurationManager assetPropertySetsForCuration];
  [librarySpecificFetchOptions setFetchPropertySets:v11];

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v48[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v13];

  v35 = librarySpecificFetchOptions;
  v14 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  v36 = photoLibrary;
  v34 = objc_alloc_init(MEMORY[0x277D3C7A0]);
  v39 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:photoLibrary curationSession:v34];
  v40 = v14;
  v38 = [v14 count] / 0xC8uLL;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0;
  do
  {
    context = objc_autoreleasePoolPush();
    v41 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:?];
    v17 = [v40 objectsAtIndexes:?];
    [MEMORY[0x277CD97A8] prefetchOnAssets:v17 options:31 curationContext:v39];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v44;
LABEL_4:
      v22 = 0;
      while (1)
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v43 + 1) + 8 * v22);
        v24 = objc_autoreleasePoolPush();
        if (filterCopy[2](filterCopy, v23))
        {
          [v15 addObject:v23];
        }

        v25 = [v15 count];
        objc_autoreleasePoolPop(v24);
        if (v25 > 0xC7)
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [v18 countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (v20)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v26 = [v15 count];
    objc_autoreleasePoolPop(context);
    if (v26 > 0xC7)
    {
      break;
    }
  }

  while (v16++ != v38);
  v28 = objc_alloc(MEMORY[0x277CD98D0]);
  v29 = *MEMORY[0x277CD9BE0];
  fetchPropertySets = [v40 fetchPropertySets];
  v31 = [v28 initWithObjects:v15 photoLibrary:v36 fetchType:v29 fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:0];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)_generateQuestionsWithLimit:(unint64_t)limit progressReporter:(id)reporter
{
  v154 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  v7 = [MEMORY[0x277CBEB98] set];
  if (![reporterCopy isCancelledWithProgress:0.0])
  {
    v9 = +[PGLogging sharedLogging];
    loggingConnection = [v9 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v153 = limit;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Generating regular wallpaper questions with limit: %lu", buf, 0xCu);
    }

    workingContext = [(PGSurveyQuestionFactory *)self workingContext];
    loggingConnection2 = [workingContext loggingConnection];

    v13 = loggingConnection2;
    v14 = os_signpost_id_generate(v13);
    v15 = v13;
    v16 = v15;
    v141 = v14 - 1;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "OtherWallpaperQuestionGeneration", "", buf, 2u);
    }

    limitCopy = limit;
    spid = v14;

    info = 0;
    mach_timebase_info(&info);
    v140 = mach_absolute_time();
    v17 = [MEMORY[0x277CBEB58] set];
    v146 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = v16;
    v19 = os_signpost_id_generate(v18);
    v20 = v18;
    v21 = v20;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "WallpaperQuestionFetchPeopleAsset", "", buf, 2u);
    }

    v150 = 0;
    mach_timebase_info(&v150);
    v22 = mach_absolute_time();
    selfCopy = self;
    fetchPeopleAssets = [(PGWallpaperQuestionFactory *)self fetchPeopleAssets];
    v24 = +[PGLogging sharedLogging];
    loggingConnection3 = [v24 loggingConnection];

    if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [fetchPeopleAssets count];
      *buf = 134217984;
      *v153 = v26;
      _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Fetched %lu People assets", buf, 0xCu);
    }

    v27 = fetchPeopleAssets;
    if ([fetchPeopleAssets count])
    {
      v28 = objc_alloc(MEMORY[0x277CBEB18]);
      fetchedObjects = [fetchPeopleAssets fetchedObjects];
      v30 = [v28 initWithArray:fetchedObjects];
      [v146 setObject:v30 forKeyedSubscript:&unk_284483090];
    }

    v144 = v27;
    v31 = mach_absolute_time();
    numer = v150.numer;
    denom = v150.denom;
    v34 = v21;
    v35 = v34;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v35, OS_SIGNPOST_INTERVAL_END, v19, "WallpaperQuestionFetchPeopleAsset", "", buf, 2u);
    }

    v36 = v35;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v153 = "WallpaperQuestionFetchPeopleAsset";
      *&v153[8] = 2048;
      *&v153[10] = ((((v31 - v22) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if ([reporterCopy isCancelledWithProgress:0.1])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v153 = 381;
        *&v153[4] = 2080;
        *&v153[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v8 = v7;
      v37 = v146;
      goto LABEL_119;
    }

    v142 = v36;
    v38 = v36;
    v39 = os_signpost_id_generate(v38);
    v40 = v38;
    v41 = v40;
    if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v41, OS_SIGNPOST_INTERVAL_BEGIN, v39, "WallpaperQuestionFetchPetAsset", "", buf, 2u);
    }

    v149 = 0;
    mach_timebase_info(&v149);
    v42 = mach_absolute_time();
    fetchPetAssets = [(PGWallpaperQuestionFactory *)selfCopy fetchPetAssets];
    v44 = +[PGLogging sharedLogging];
    loggingConnection4 = [v44 loggingConnection];

    if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [fetchPetAssets count];
      *buf = 134217984;
      *v153 = v46;
      _os_log_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Fetched %lu Pet assets", buf, 0xCu);
    }

    if ([fetchPetAssets count])
    {
      v47 = objc_alloc(MEMORY[0x277CBEB18]);
      fetchedObjects2 = [fetchPetAssets fetchedObjects];
      v49 = [v47 initWithArray:fetchedObjects2];
      [v146 setObject:v49 forKeyedSubscript:&unk_2844830A8];
    }

    v50 = mach_absolute_time();
    v52 = v149.numer;
    v51 = v149.denom;
    v53 = v41;
    v54 = v53;
    if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v54, OS_SIGNPOST_INTERVAL_END, v39, "WallpaperQuestionFetchPetAsset", "", buf, 2u);
    }

    v55 = v54;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v153 = "WallpaperQuestionFetchPetAsset";
      *&v153[8] = 2048;
      *&v153[10] = ((((v50 - v42) * v52) / v51) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v55, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v138 = fetchPetAssets;
    if ([reporterCopy isCancelledWithProgress:0.2])
    {
      v36 = v142;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v153 = 390;
        *&v153[4] = 2080;
        *&v153[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v8 = v7;
      v37 = v146;
      goto LABEL_118;
    }

    v132 = v55;
    v56 = v55;
    v57 = os_signpost_id_generate(v56);
    v58 = v56;
    v59 = v58;
    if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v59, OS_SIGNPOST_INTERVAL_BEGIN, v57, "WallpaperQuestionFetchLandscapeAsset", "", buf, 2u);
    }

    v148 = 0;
    mach_timebase_info(&v148);
    context = mach_absolute_time();
    fetchLandscapeAssets = [(PGWallpaperQuestionFactory *)selfCopy fetchLandscapeAssets];
    v61 = +[PGLogging sharedLogging];
    loggingConnection5 = [v61 loggingConnection];

    v63 = fetchLandscapeAssets;
    if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_DEFAULT))
    {
      v64 = [fetchLandscapeAssets count];
      *buf = 134217984;
      *v153 = v64;
      _os_log_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Fetched %lu Landscape assets", buf, 0xCu);
    }

    if ([fetchLandscapeAssets count])
    {
      v65 = objc_alloc(MEMORY[0x277CBEB18]);
      fetchedObjects3 = [fetchLandscapeAssets fetchedObjects];
      v67 = [v65 initWithArray:fetchedObjects3];
      [v146 setObject:v67 forKeyedSubscript:&unk_2844830C0];

      v63 = fetchLandscapeAssets;
    }

    v68 = mach_absolute_time();
    v70 = v148.numer;
    v69 = v148.denom;
    v71 = v59;
    v72 = v71;
    if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v72, OS_SIGNPOST_INTERVAL_END, v57, "WallpaperQuestionFetchLandscapeAsset", "", buf, 2u);
    }

    v73 = v72;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v153 = "WallpaperQuestionFetchLandscapeAsset";
      *&v153[8] = 2048;
      *&v153[10] = ((((v68 - context) * v70) / v69) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v73, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if ([reporterCopy isCancelledWithProgress:0.3])
    {
      v36 = v142;
      v55 = v132;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v153 = 399;
        *&v153[4] = 2080;
        *&v153[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v8 = v7;
      v37 = v146;
      goto LABEL_117;
    }

    v131 = v63;
    v129 = v73;
    v74 = v73;
    v75 = os_signpost_id_generate(v74);
    v76 = v74;
    v77 = v76;
    if (v75 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v76))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v77, OS_SIGNPOST_INTERVAL_BEGIN, v75, "WallpaperQuestionFetchCityscapeAsset", "", buf, 2u);
    }

    v147 = 0;
    mach_timebase_info(&v147);
    contexta = mach_absolute_time();
    fetchCityscapeAssets = [(PGWallpaperQuestionFactory *)selfCopy fetchCityscapeAssets];
    v79 = +[PGLogging sharedLogging];
    loggingConnection6 = [v79 loggingConnection];

    if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_DEFAULT))
    {
      v81 = [fetchCityscapeAssets count];
      *buf = 134217984;
      *v153 = v81;
      _os_log_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Fetched %lu Cityscape assets", buf, 0xCu);
    }

    v128 = fetchCityscapeAssets;
    if ([fetchCityscapeAssets count])
    {
      v82 = objc_alloc(MEMORY[0x277CBEB18]);
      fetchedObjects4 = [fetchCityscapeAssets fetchedObjects];
      v84 = [v82 initWithArray:fetchedObjects4];
      [v146 setObject:v84 forKeyedSubscript:&unk_2844830D8];
    }

    v85 = mach_absolute_time();
    v87 = v147.numer;
    v86 = v147.denom;
    v88 = v77;
    v89 = v88;
    if (v75 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v88))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v89, OS_SIGNPOST_INTERVAL_END, v75, "WallpaperQuestionFetchCityscapeAsset", "", buf, 2u);
    }

    v90 = v89;
    v63 = v131;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v153 = "WallpaperQuestionFetchCityscapeAsset";
      *&v153[8] = 2048;
      *&v153[10] = ((((v85 - contexta) * v87) / v86) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v90, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v130 = v90;

    v36 = v142;
    v55 = v132;
    if ([reporterCopy isCancelledWithProgress:0.4])
    {
      v73 = v129;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_74:
        v8 = v7;
        v37 = v146;
LABEL_116:

LABEL_117:
LABEL_118:

LABEL_119:
        goto LABEL_120;
      }

      *buf = 67109378;
      *v153 = 408;
      *&v153[4] = 2080;
      *&v153[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
      v91 = MEMORY[0x277D86220];
LABEL_73:
      _os_log_impl(&dword_22F0FC000, v91, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_74;
    }

    if ([v146 count])
    {
      v133 = v17;
      v127 = v7;
      v92 = 0;
      v37 = v146;
      while (1)
      {
        contextb = objc_autoreleasePoolPush();
        allKeys = [v37 allKeys];
        v93 = [allKeys objectAtIndexedSubscript:v92];
        v94 = [v37 objectForKeyedSubscript:v93];
        v95 = arc4random_uniform([v94 count]);
        v96 = [v94 objectAtIndex:v95];
        v97 = [PGWallpaperQuestion alloc];
        uuid = [v96 uuid];
        v99 = -[PGWallpaperQuestion initWithAssetUUID:suggestionSubtype:](v97, "initWithAssetUUID:suggestionSubtype:", uuid, [v93 unsignedIntValue]);

        v17 = v133;
        if ([(PGSurveyQuestionFactory *)selfCopy shouldAddQuestion:v99 toAlreadyGeneratedQuestions:v133])
        {
          [v133 addObject:v99];
          v100 = +[PGLogging sharedLogging];
          loggingConnection7 = [v100 loggingConnection];

          if (os_log_type_enabled(loggingConnection7, OS_LOG_TYPE_DEFAULT))
          {
            [v93 integerValue];
            v102 = PHSuggestionStringWithSubtype();
            uuid2 = [v96 uuid];
            *buf = 138412546;
            *v153 = v102;
            *&v153[8] = 2112;
            *&v153[10] = uuid2;
            _os_log_impl(&dword_22F0FC000, loggingConnection7, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Generated %@ question with asset %@", buf, 0x16u);

            v27 = v144;
          }

          v17 = v133;
          v37 = v146;
        }

        [v94 removeObjectAtIndex:v95];
        if (![v94 count])
        {
          [v37 setObject:0 forKeyedSubscript:v93];
          v104 = +[PGLogging sharedLogging];
          loggingConnection8 = [v104 loggingConnection];

          if (os_log_type_enabled(loggingConnection8, OS_LOG_TYPE_DEFAULT))
          {
            [v93 integerValue];
            v106 = PHSuggestionStringWithSubtype();
            *buf = 138412290;
            *v153 = v106;
            _os_log_impl(&dword_22F0FC000, loggingConnection8, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Used all %@ assets", buf, 0xCu);
          }

          v27 = v144;
        }

        if ([v17 count] >= limitCopy || !objc_msgSend(v37, "count"))
        {
          break;
        }

        if ([reporterCopy isCancelledWithProgress:{objc_msgSend(v17, "count") / limitCopy * 0.6 + 0.4}])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v153 = 445;
            *&v153[4] = 2080;
            *&v153[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v8 = v127;

          v7 = v127;
          objc_autoreleasePoolPop(contextb);
          v36 = v142;
          v63 = v131;
          v55 = v132;
          v73 = v129;
          goto LABEL_116;
        }

        v92 = (v92 + 1) % [v37 count];

        objc_autoreleasePoolPop(contextb);
      }

      objc_autoreleasePoolPop(contextb);
      v107 = +[PGLogging sharedLogging];
      loggingConnection9 = [v107 loggingConnection];

      if (os_log_type_enabled(loggingConnection9, OS_LOG_TYPE_DEFAULT))
      {
        v109 = [v17 count];
        *buf = 134217984;
        *v153 = v109;
        _os_log_impl(&dword_22F0FC000, loggingConnection9, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Generated %lu regular wallpaper questions.", buf, 0xCu);
      }

      v7 = v127;
      v36 = v142;
      v63 = v131;
      v73 = v129;
      if ([reporterCopy isCancelledWithProgress:1.0])
      {
        v110 = MEMORY[0x277D86220];
        v111 = MEMORY[0x277D86220];
        v55 = v132;
        if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v153 = 452;
          *&v153[4] = 2080;
          *&v153[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v8 = v127;
        goto LABEL_116;
      }

      v114 = mach_absolute_time();
      v116 = info.numer;
      v115 = info.denom;
      v117 = v130;
      v118 = v117;
      if (v141 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v117))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v118, OS_SIGNPOST_INTERVAL_END, spid, "OtherWallpaperQuestionGeneration", "", buf, 2u);
      }

      v119 = v118;
      if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v153 = "OtherWallpaperQuestionGeneration";
        *&v153[8] = 2048;
        *&v153[10] = ((((v114 - v140) * v116) / v115) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v119, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v8 = v17;
    }

    else
    {
      v112 = +[PGLogging sharedLogging];
      loggingConnection10 = [v112 loggingConnection];

      if (os_log_type_enabled(loggingConnection10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection10, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Found 0 candidate assets for question generation", buf, 2u);
      }

      v73 = v129;
      if ([reporterCopy isCancelledWithProgress:1.0])
      {
        v55 = v132;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_74;
        }

        *buf = 67109378;
        *v153 = 412;
        *&v153[4] = 2080;
        *&v153[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
        v91 = MEMORY[0x277D86220];
        goto LABEL_73;
      }

      v120 = mach_absolute_time();
      v122 = info.numer;
      v121 = info.denom;
      v123 = v130;
      v124 = v123;
      if (v141 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v123))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v124, OS_SIGNPOST_INTERVAL_END, spid, "OtherWallpaperQuestionGeneration", "", buf, 2u);
      }

      if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v153 = "OtherWallpaperQuestionGeneration";
        *&v153[8] = 2048;
        *&v153[10] = ((((v120 - v140) * v122) / v121) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v124, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v8 = [MEMORY[0x277CBEB98] set];
      v37 = v146;
    }

    v55 = v132;
    goto LABEL_116;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v153 = 364;
    *&v153[4] = 2080;
    *&v153[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v8 = v7;
LABEL_120:

  v125 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_generateTruePositiveCityscapeQuestionWithLimit:(unint64_t)limit suggestionSession:(id)session alreadyGeneratedQuestions:(id)questions progressReporter:(id)reporter
{
  v50 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  questionsCopy = questions;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v48 = 333;
      *&v48[4] = 2080;
      *&v48[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v12 = 0;
  }

  else
  {
    v38 = sessionCopy;
    v36 = [[PGCityscapeWallpaperSuggester alloc] initWithSession:sessionCopy];
    v37 = reporterCopy;
    v13 = [(PGCityscapeWallpaperSuggester *)v36 fetchUnsortedCandidatesWithProgressReporter:reporterCopy];
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v15 = v13;
    v39 = v15;
    v42 = [v15 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v42)
    {
      v16 = *v44;
      while (2)
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v44 != v16)
          {
            objc_enumerationMutation(v15);
          }

          v18 = *(*(&v43 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          asset = [v18 asset];
          v21 = [PGWallpaperQuestion alloc];
          uuid = [asset uuid];
          v23 = [(PGWallpaperQuestion *)v21 initWithAssetUUID:uuid suggestionSubtype:655];

          if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v23 toAlreadyGeneratedQuestions:questionsCopy])
          {
            v41 = v19;
            v24 = v16;
            selfCopy = self;
            v26 = +[PGLogging sharedLogging];
            loggingConnection = [v26 loggingConnection];

            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
            {
              v28 = PHSuggestionStringWithSubtype();
              [asset uuid];
              v29 = v14;
              v31 = v30 = questionsCopy;
              *buf = 138412546;
              *v48 = v28;
              *&v48[8] = 2112;
              *&v48[10] = v31;
              _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Elected True Positive %@ question with asset %@", buf, 0x16u);

              questionsCopy = v30;
              v14 = v29;
              v15 = v39;
            }

            [v14 addObject:v23];
            self = selfCopy;
            v16 = v24;
            v19 = v41;
            if ([v14 count] == limit)
            {
              reporterCopy = v37;
              if ([v37 isCancelledWithProgress:1.0])
              {
                sessionCopy = v38;
                v32 = v36;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *v48 = 352;
                  *&v48[4] = 2080;
                  *&v48[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v12 = 0;
              }

              else
              {
                v12 = v14;
                sessionCopy = v38;
                v32 = v36;
              }

              objc_autoreleasePoolPop(v41);
              v33 = v39;

              goto LABEL_28;
            }
          }

          objc_autoreleasePoolPop(v19);
        }

        v42 = [v15 countByEnumeratingWithState:&v43 objects:v49 count:16];
        if (v42)
        {
          continue;
        }

        break;
      }
    }

    reporterCopy = v37;
    if ([v37 isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v48 = 356;
        *&v48[4] = 2080;
        *&v48[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v12 = 0;
    }

    else
    {
      v12 = v14;
    }

    sessionCopy = v38;
    v32 = v36;
    v33 = v39;
LABEL_28:
  }

  v34 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_generateTruePositiveLandscapeQuestionWithLimit:(unint64_t)limit suggestionSession:(id)session alreadyGeneratedQuestions:(id)questions progressReporter:(id)reporter
{
  v50 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  questionsCopy = questions;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v48 = 304;
      *&v48[4] = 2080;
      *&v48[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v12 = 0;
  }

  else
  {
    v38 = sessionCopy;
    v36 = [[PGLandscapeWallpaperSuggester alloc] initWithSession:sessionCopy];
    v37 = reporterCopy;
    v13 = [(PGLandscapeWallpaperSuggester *)v36 fetchUnsortedCandidatesWithProgressReporter:reporterCopy];
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v15 = v13;
    v39 = v15;
    v42 = [v15 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v42)
    {
      v16 = *v44;
      while (2)
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v44 != v16)
          {
            objc_enumerationMutation(v15);
          }

          v18 = *(*(&v43 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          asset = [v18 asset];
          v21 = [PGWallpaperQuestion alloc];
          uuid = [asset uuid];
          v23 = [(PGWallpaperQuestion *)v21 initWithAssetUUID:uuid suggestionSubtype:654];

          if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v23 toAlreadyGeneratedQuestions:questionsCopy])
          {
            v41 = v19;
            v24 = v16;
            selfCopy = self;
            v26 = +[PGLogging sharedLogging];
            loggingConnection = [v26 loggingConnection];

            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
            {
              v28 = PHSuggestionStringWithSubtype();
              [asset uuid];
              v29 = v14;
              v31 = v30 = questionsCopy;
              *buf = 138412546;
              *v48 = v28;
              *&v48[8] = 2112;
              *&v48[10] = v31;
              _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Elected True Positive %@ question with asset %@", buf, 0x16u);

              questionsCopy = v30;
              v14 = v29;
              v15 = v39;
            }

            [v14 addObject:v23];
            self = selfCopy;
            v16 = v24;
            v19 = v41;
            if ([v14 count] == limit)
            {
              reporterCopy = v37;
              if ([v37 isCancelledWithProgress:1.0])
              {
                sessionCopy = v38;
                v32 = v36;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *v48 = 323;
                  *&v48[4] = 2080;
                  *&v48[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v12 = 0;
              }

              else
              {
                v12 = v14;
                sessionCopy = v38;
                v32 = v36;
              }

              objc_autoreleasePoolPop(v41);
              v33 = v39;

              goto LABEL_28;
            }
          }

          objc_autoreleasePoolPop(v19);
        }

        v42 = [v15 countByEnumeratingWithState:&v43 objects:v49 count:16];
        if (v42)
        {
          continue;
        }

        break;
      }
    }

    reporterCopy = v37;
    if ([v37 isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v48 = 327;
        *&v48[4] = 2080;
        *&v48[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v12 = 0;
    }

    else
    {
      v12 = v14;
    }

    sessionCopy = v38;
    v32 = v36;
    v33 = v39;
LABEL_28:
  }

  v34 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_generateTruePositivePetQuestionWithLimit:(unint64_t)limit suggestionSession:(id)session alreadyGeneratedQuestions:(id)questions progressReporter:(id)reporter
{
  v76 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  questionsCopy = questions;
  reporterCopy = reporter;
  if (![reporterCopy isCancelledWithProgress:0.0])
  {
    v48 = sessionCopy;
    v13 = [[PGPetWallpaperSuggester alloc] initWithSession:sessionCopy];
    v60 = objc_alloc_init(MEMORY[0x277CBEB58]);
    randomNumberGeneratorForWallpaperDonation = [MEMORY[0x277D3C810] randomNumberGeneratorForWallpaperDonation];
    v55 = v13;
    fetchPets = [(PGPetWallpaperSuggester *)v13 fetchPets];
    v16 = objc_alloc(MEMORY[0x277CBEA60]);
    v47 = fetchPets;
    fetchedObjects = [fetchPets fetchedObjects];
    v18 = [v16 initWithArray:fetchedObjects];
    v54 = randomNumberGeneratorForWallpaperDonation;
    v19 = PFShuffledArrayWithRandomNumberGenerator();

    if ([reporterCopy isCancelledWithProgress:0.5])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v73 = 277;
        *&v73[4] = 2080;
        *&v73[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v6 = 0;
      v12 = v48;
      v20 = v60;
      goto LABEL_50;
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v46 = v19;
    v21 = v19;
    v53 = [v21 countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (v53)
    {
      obj = v21;
      v56 = 0;
      v52 = *v69;
      v20 = v60;
      v50 = reporterCopy;
      while (2)
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v69 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v68 + 1) + 8 * i);
          v24 = objc_autoreleasePoolPush();
          v25 = [(PGPetWallpaperSuggester *)v55 candidatesForPet:v23];
          v26 = PFShuffledArrayWithRandomNumberGenerator();
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v62 = v26;
          v27 = [v62 countByEnumeratingWithState:&v64 objects:v74 count:16];
          if (v27)
          {
            v28 = v27;
            v57 = v25;
            v58 = v24;
            v59 = i;
            v51 = v6;
            v29 = *v65;
            while (2)
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v65 != v29)
                {
                  objc_enumerationMutation(v62);
                }

                v31 = *(*(&v64 + 1) + 8 * j);
                v32 = objc_autoreleasePoolPush();
                asset = [v31 asset];
                v34 = [PGWallpaperQuestion alloc];
                uuid = [asset uuid];
                v36 = [(PGWallpaperQuestion *)v34 initWithAssetUUID:uuid suggestionSubtype:653];

                if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v36 toAlreadyGeneratedQuestions:questionsCopy])
                {
                  v37 = +[PGLogging sharedLogging];
                  loggingConnection = [v37 loggingConnection];

                  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
                  {
                    v39 = PHSuggestionStringWithSubtype();
                    [asset uuid];
                    v41 = v40 = questionsCopy;
                    *buf = 138412546;
                    *v73 = v39;
                    *&v73[8] = 2112;
                    *&v73[10] = v41;
                    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Elected True Positive %@ question with asset %@", buf, 0x16u);

                    questionsCopy = v40;
                    v20 = v60;
                  }

                  [v20 addObject:v36];
                  if ([v20 count] == limit)
                  {
                    reporterCopy = v50;
                    if ((v56 & 1) != 0 || [v50 isCancelledWithProgress:1.0])
                    {
                      v43 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *buf = 67109378;
                        *v73 = 293;
                        *&v73[4] = 2080;
                        *&v73[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
                        v56 = 1;
                        _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                      }

                      else
                      {
                        v56 = 1;
                      }

                      v6 = 0;
                    }

                    else
                    {
                      v6 = v20;
                      v56 = 0;
                    }

                    objc_autoreleasePoolPop(v32);
                    v42 = 0;
                    goto LABEL_35;
                  }
                }

                objc_autoreleasePoolPop(v32);
              }

              v28 = [v62 countByEnumeratingWithState:&v64 objects:v74 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }

            v42 = 1;
            reporterCopy = v50;
            v6 = v51;
LABEL_35:
            v24 = v58;
            i = v59;
            v25 = v57;
          }

          else
          {
            v42 = 1;
          }

          objc_autoreleasePoolPop(v24);
          if (!v42)
          {

            goto LABEL_48;
          }
        }

        v53 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
        if (v53)
        {
          continue;
        }

        break;
      }

      if (v56)
      {
        goto LABEL_44;
      }
    }

    else
    {

      v20 = v60;
    }

    if (![reporterCopy isCancelledWithProgress:1.0])
    {
      v6 = v20;
LABEL_48:
      v12 = v48;
      goto LABEL_49;
    }

LABEL_44:
    v12 = v48;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v73 = 298;
      *&v73[4] = 2080;
      *&v73[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v6 = 0;
LABEL_49:
    v19 = v46;
LABEL_50:

    goto LABEL_51;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v73 = 267;
    *&v73[4] = 2080;
    *&v73[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v6 = 0;
  v12 = sessionCopy;
LABEL_51:

  v44 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_generateTruePositivePeopleQuestionWithLimit:(unint64_t)limit suggestionSession:(id)session alreadyGeneratedQuestions:(id)questions progressReporter:(id)reporter
{
  v90 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  questionsCopy = questions;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  reporterCopy = reporter;
  v8 = [reporterCopy isCancelledWithProgress:0.0];
  *(v80 + 24) = v8;
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 212;
      LOWORD(v88) = 2080;
      *(&v88 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v59 = 0;
    goto LABEL_53;
  }

  v9 = [[PGPeopleWallpaperSuggester alloc] initWithSession:sessionCopy];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __136__PGWallpaperQuestionFactory__generateTruePositivePeopleQuestionWithLimit_suggestionSession_alreadyGeneratedQuestions_progressReporter___block_invoke;
  v76[3] = &unk_278889448;
  v78 = &v79;
  v51 = reporterCopy;
  v77 = v51;
  v42 = v9;
  v43 = [(PGPeopleWallpaperSuggester *)v9 personLocalIdentifiersByOriginalPersonLocalIdentifierWithProgress:v76];
  if (v80[3])
  {
    *(v80 + 24) = 1;
LABEL_8:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 221;
      LOWORD(v88) = 2080;
      *(&v88 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v59 = 0;
    goto LABEL_52;
  }

  v10 = [v51 isCancelledWithProgress:0.5];
  *(v80 + 24) = v10;
  if (v10)
  {
    goto LABEL_8;
  }

  curationContext = [sessionCopy curationContext];
  *buf = 0;
  *&v88 = buf;
  *(&v88 + 1) = 0x2020000000;
  v89 = 0x3FE0000000000000;
  v11 = [v43 count];
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  randomNumberGeneratorForWallpaperDonation = [MEMORY[0x277D3C810] randomNumberGeneratorForWallpaperDonation];
  allValues = [v43 allValues];
  v14 = PFShuffledArrayWithRandomNumberGenerator();

  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  loggingConnection = [workingContext loggingConnection];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v14;
  v16 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
  if (!v16)
  {
    goto LABEL_43;
  }

  v17 = 0.5 / v11;
  v46 = *v73;
  v18 = v16;
  do
  {
    v56 = 0;
    v45 = v18;
    do
    {
      if (*v73 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v72 + 1) + 8 * v56);
      context = objc_autoreleasePoolPush();
      v57 = [[PGSinglePersonWallpaperAssetSuggester alloc] initWithPersonLocalIdentifiers:v19 curationContext:curationContext loggingConnection:loggingConnection];
      v20 = +[PGCurationManager assetPropertySetsForCuration];
      [(PGSinglePersonWallpaperAssetSuggester *)v57 setAssetFetchPropertySets:v20];

      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __136__PGWallpaperQuestionFactory__generateTruePositivePeopleQuestionWithLimit_suggestionSession_alreadyGeneratedQuestions_progressReporter___block_invoke_351;
      v67[3] = &unk_278881368;
      v69 = &v79;
      v58 = v51;
      v68 = v58;
      v70 = buf;
      v71 = v17;
      v54 = [(PGSinglePersonWallpaperAssetSuggester *)v57 unsortedCandidatesFromPersonLocalIdentifiers:v19 progressBlock:v67];
      v53 = PFShuffledArrayWithRandomNumberGenerator();
      v21 = [(PGSinglePersonWallpaperAssetSuggester *)v57 assetsFromCandidates:?];
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v63 objects:v85 count:16];
      if (v23)
      {
        v24 = *v64;
LABEL_18:
        v25 = 0;
        while (1)
        {
          if (*v64 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v63 + 1) + 8 * v25);
          v27 = objc_autoreleasePoolPush();
          v28 = [PGWallpaperQuestion alloc];
          uuid = [v26 uuid];
          v30 = [(PGWallpaperQuestion *)v28 initWithAssetUUID:uuid suggestionSubtype:652];

          if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v30 toAlreadyGeneratedQuestions:questionsCopy])
          {
            v31 = +[PGLogging sharedLogging];
            loggingConnection2 = [v31 loggingConnection];

            if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_DEFAULT))
            {
              v33 = PHSuggestionStringWithSubtype();
              uuid2 = [v26 uuid];
              *v83 = 138412546;
              *v84 = v33;
              *&v84[8] = 2112;
              *&v84[10] = uuid2;
              _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Elected True Positive %@ question with asset %@", v83, 0x16u);
            }

            [v12 addObject:v30];
            if ([v12 count] == limit)
            {
              if (v80[3])
              {
                *(v80 + 24) = 1;
LABEL_30:
                v35 = 1;
                v37 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *v83 = 67109378;
                  *v84 = 254;
                  *&v84[4] = 2080;
                  *&v84[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
                  _os_log_impl(&dword_22F0FC000, v37, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v83, 0x12u);
                }

                v59 = 0;
                goto LABEL_34;
              }

              v36 = [v58 isCancelledWithProgress:1.0];
              *(v80 + 24) = v36;
              if (v36)
              {
                goto LABEL_30;
              }

              v59 = v12;
              v35 = 1;
            }

            else
            {
              v35 = 0;
            }
          }

          else
          {
            v35 = 5;
          }

LABEL_34:

          objc_autoreleasePoolPop(v27);
          if (v35 != 5 && v35)
          {

            v38 = 0;
            goto LABEL_40;
          }

          if (v23 == ++v25)
          {
            v23 = [v22 countByEnumeratingWithState:&v63 objects:v85 count:16];
            if (v23)
            {
              goto LABEL_18;
            }

            break;
          }
        }
      }

      *(v88 + 24) = v17 + *(v88 + 24);
      v38 = 1;
LABEL_40:

      objc_autoreleasePoolPop(context);
      if (!v38)
      {

        goto LABEL_51;
      }

      ++v56;
    }

    while (v56 != v45);
    v18 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
  }

  while (v18);
LABEL_43:

  if (v80[3])
  {
    *(v80 + 24) = 1;
    goto LABEL_47;
  }

  v39 = [v51 isCancelledWithProgress:1.0];
  *(v80 + 24) = v39;
  if (v39)
  {
LABEL_47:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v83 = 67109378;
      *v84 = 261;
      *&v84[4] = 2080;
      *&v84[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v83, 0x12u);
    }

    v59 = 0;
  }

  else
  {
    v59 = v12;
  }

LABEL_51:

  _Block_object_dispose(buf, 8);
LABEL_52:

LABEL_53:
  _Block_object_dispose(&v79, 8);

  v40 = *MEMORY[0x277D85DE8];

  return v59;
}

uint64_t __136__PGWallpaperQuestionFactory__generateTruePositivePeopleQuestionWithLimit_suggestionSession_alreadyGeneratedQuestions_progressReporter___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.5];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __136__PGWallpaperQuestionFactory__generateTruePositivePeopleQuestionWithLimit_suggestionSession_alreadyGeneratedQuestions_progressReporter___block_invoke_351(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:*(*(*(a1 + 48) + 8) + 24) + *(a1 + 56) * a3];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (id)evenlySelectQuestionsByType:(id)type limit:(unint64_t)limit
{
  v35 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v23 = 0;
  v24 = 0;
  v20 = 0;
  v22 = 0;
  v7 = 0;
  while (1)
  {
    allKeys = [typeCopy allKeys];
    v9 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v10 = [v9 objectAtIndexedSubscript:v7];
    v11 = [typeCopy objectForKeyedSubscript:v10];
    anyObject = [v11 anyObject];
    if (anyObject)
    {
      [v6 addObject:anyObject];
      [v11 removeObject:anyObject];
    }

    if ([v11 count])
    {
      ++v7;
    }

    else
    {
      [typeCopy removeObjectForKey:v10];
    }

    v13 = [typeCopy count];
    unsignedIntValue = [v10 unsignedIntValue];
    if (unsignedIntValue > 0x28D)
    {
      if (unsignedIntValue == 654)
      {
        ++v23;
      }

      else if (unsignedIntValue == 655)
      {
        ++v24;
      }
    }

    else if (unsignedIntValue == 652)
    {
      ++v21;
    }

    else if (unsignedIntValue == 653)
    {
      ++v22;
    }

    if ([v6 count] == limit)
    {
      break;
    }

    v7 %= v13;
    v15 = [typeCopy count];

    if (!v15)
    {
      goto LABEL_20;
    }
  }

LABEL_20:
  v16 = +[PGLogging sharedLogging];
  loggingConnection = [v16 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219008;
    v26 = [v6 count];
    v27 = 2048;
    v28 = v20;
    v29 = 2048;
    v30 = v22;
    v31 = 2048;
    v32 = v23;
    v33 = 2048;
    v34 = v24;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Selected %lu true positive questions. People:%lu, Pet:%lu, Landscape:%lu, Cityscape:%lu", buf, 0x34u);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_generateTruePositiveQuestionsWithLimit:(unint64_t)limit progressReporter:(id)reporter
{
  v53 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  v48 = [MEMORY[0x277CBEB98] set];
  v7 = +[PGLogging sharedLogging];
  loggingConnection = [v7 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v52 = limit;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Generating true positive wallpaper questions with limit: %lu", buf, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [PGSuggestionSession alloc];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  v12 = [(PGSuggestionSession *)v10 initWithProfile:2 workingContext:workingContext];

  workingContext2 = [(PGSurveyQuestionFactory *)self workingContext];
  loggingConnection2 = [workingContext2 loggingConnection];

  v15 = os_signpost_id_generate(loggingConnection2);
  v16 = loggingConnection2;
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "TruePositiveWallpaperQuestionGeneration", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v47 = mach_absolute_time();
  v18 = [reporterCopy childProgressReporterFromStart:0.01 toEnd:0.24];
  v19 = [(PGWallpaperQuestionFactory *)self _generateTruePositivePeopleQuestionWithLimit:limit suggestionSession:v12 alreadyGeneratedQuestions:v9 progressReporter:v18];
  if ([v19 count])
  {
    [v9 unionSet:v19];
    [v49 setObject:v19 forKeyedSubscript:&unk_284483090];
  }

  if ([reporterCopy isCancelledWithProgress:0.25])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v52 = 112;
      *&v52[4] = 2080;
      *&v52[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v20 = v48;
    v21 = v48;
  }

  else
  {
    v45 = v18;
    v46 = [reporterCopy childProgressReporterFromStart:0.25 toEnd:0.49];
    v22 = [(PGWallpaperQuestionFactory *)self _generateTruePositivePetQuestionWithLimit:limit suggestionSession:v12 alreadyGeneratedQuestions:v9 progressReporter:?];
    if ([v22 count])
    {
      [v9 unionSet:v22];
      [v49 setObject:v22 forKeyedSubscript:&unk_2844830A8];
    }

    if ([reporterCopy isCancelledWithProgress:0.5])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v52 = 121;
        *&v52[4] = 2080;
        *&v52[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v20 = v48;
      v21 = v48;
    }

    else
    {
      v43 = [reporterCopy childProgressReporterFromStart:0.5 toEnd:0.74];
      v44 = v12;
      v23 = [(PGWallpaperQuestionFactory *)self _generateTruePositiveLandscapeQuestionWithLimit:limit suggestionSession:v12 alreadyGeneratedQuestions:v9 progressReporter:?];
      if ([v23 count])
      {
        [v9 unionSet:v23];
        [v49 setObject:v23 forKeyedSubscript:&unk_2844830C0];
      }

      if ([reporterCopy isCancelledWithProgress:0.75])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v52 = 130;
          *&v52[4] = 2080;
          *&v52[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v20 = v48;
        v21 = v48;
      }

      else
      {
        v42 = v17;
        v41 = [reporterCopy childProgressReporterFromStart:0.75 toEnd:0.99];
        v24 = [(PGWallpaperQuestionFactory *)self _generateTruePositiveCityscapeQuestionWithLimit:limit suggestionSession:v44 alreadyGeneratedQuestions:v9 progressReporter:?];
        if ([v24 count])
        {
          [v9 unionSet:v24];
          [v49 setObject:v24 forKeyedSubscript:&unk_2844830D8];
        }

        v40 = v24;
        v25 = v9;
        if ([v25 count] > limit)
        {
          v26 = [(PGWallpaperQuestionFactory *)self evenlySelectQuestionsByType:v49 limit:limit];

          v25 = v26;
        }

        v27 = +[PGLogging sharedLogging];
        loggingConnection3 = [v27 loggingConnection];

        if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v25 count];
          *buf = 134217984;
          *v52 = v29;
          _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Generated %lu true positive wallpaper questions.", buf, 0xCu);
        }

        v30 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v33 = v42;
        v34 = v33;
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v34, OS_SIGNPOST_INTERVAL_END, v15, "TruePositiveWallpaperQuestionGeneration", "", buf, 2u);
        }

        v20 = v48;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *v52 = "TruePositiveWallpaperQuestionGeneration";
          *&v52[8] = 2048;
          *&v52[10] = ((((v30 - v47) * numer) / denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        v35 = [reporterCopy isCancelledWithProgress:1.0];
        v36 = v25;
        if (v35)
        {
          v37 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
          v36 = v48;
          if (v37)
          {
            *buf = 67109378;
            *v52 = 148;
            *&v52[4] = 2080;
            *&v52[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            v36 = v48;
          }
        }

        v21 = v36;

        v17 = v42;
      }

      v12 = v44;
    }

    v18 = v45;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:block];
  if ([v6 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v36 = 58;
      *&v36[4] = 2080;
      *&v36[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    allObjects = MEMORY[0x277CBEBF8];
  }

  else
  {
    workingContext = [(PGSurveyQuestionFactory *)self workingContext];
    loggingConnection = [workingContext loggingConnection];

    if (limit)
    {
      v33 = loggingConnection;
      v10 = loggingConnection;
      v11 = os_signpost_id_generate(v10);
      v12 = v10;
      v13 = v12;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "WallpaperQuestionGeneration", "", buf, 2u);
      }

      info = 0;
      mach_timebase_info(&info);
      v30 = mach_absolute_time();
      v14 = [MEMORY[0x277CBEB58] set];
      if (limit >= 4)
      {
        limitCopy = 4;
      }

      else
      {
        limitCopy = limit;
      }

      v32 = [v6 childProgressReporterFromStart:0.0 toEnd:0.4];
      v16 = [(PGWallpaperQuestionFactory *)self _generateTruePositiveQuestionsWithLimit:limitCopy progressReporter:?];
      [v14 unionSet:v16];
      v17 = limit - [v16 count];
      v31 = [v6 childProgressReporterFromStart:0.4 toEnd:1.0];
      v18 = [(PGWallpaperQuestionFactory *)self _generateQuestionsWithLimit:v17 progressReporter:?];
      [v14 unionSet:v18];
      v19 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v22 = v13;
      v23 = v22;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v23, OS_SIGNPOST_INTERVAL_END, v11, "WallpaperQuestionGeneration", "", buf, 2u);
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v36 = "WallpaperQuestionGeneration";
        *&v36[8] = 2048;
        *&v36[10] = ((((v19 - v30) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      if ([v6 isCancelledWithProgress:1.0])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v36 = 85;
          *&v36[4] = 2080;
          *&v36[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        allObjects = MEMORY[0x277CBEBF8];
      }

      else
      {
        v24 = +[PGLogging sharedLogging];
        loggingConnection2 = [v24 loggingConnection];

        if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v16 count];
          v27 = [v18 count];
          *buf = 134218496;
          *v36 = v26;
          *&v36[8] = 2048;
          *&v36[10] = v27;
          v37 = 2048;
          limitCopy2 = limit;
          _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Generated %lu true positive, %lu regular wallpaper questions, limit %lu", buf, 0x20u);
        }

        allObjects = [v14 allObjects];
      }

      loggingConnection = v33;
    }

    else
    {
      if ([v6 isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v36 = 63;
        *&v36[4] = 2080;
        *&v36[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      allObjects = MEMORY[0x277CBEBF8];
    }
  }

  v28 = *MEMORY[0x277D85DE8];

  return allObjects;
}

@end