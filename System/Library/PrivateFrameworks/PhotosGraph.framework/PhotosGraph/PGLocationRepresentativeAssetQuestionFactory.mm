@interface PGLocationRepresentativeAssetQuestionFactory
- (id)_addQuestionsForAssetUUIDs:(id)ds photoLibrary:(id)library;
- (id)_fetchAssetsWithLibrary:(id)library internalPredicate:(id)predicate;
- (id)_selectAssetsFromAssets:(id)assets limit:(unint64_t)limit;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGLocationRepresentativeAssetQuestionFactory

- (id)_addQuestionsForAssetUUIDs:(id)ds photoLibrary:(id)library
{
  v27[1] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  libraryCopy = library;
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v27[0] = *MEMORY[0x277CD9AF8];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v8];

  v25 = dsCopy;
  v23 = librarySpecificFetchOptions;
  v9 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:dsCopy options:librarySpecificFetchOptions];
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = [v9 count];
  if (v11)
  {
    v12 = v11;
    for (i = 0; i != v12; ++i)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [v9 objectAtIndex:i];
      v26 = 0;
      photosOneUpProperties = [v15 photosOneUpProperties];
      v17 = [photosOneUpProperties localizedGeoDescriptionIsHome:&v26];

      if (v17)
      {
        v18 = [PGLocationRepresentativeAssetQuestion alloc];
        uuid = [v15 uuid];
        v20 = [(PGLocationRepresentativeAssetQuestion *)v18 initWithAssetUUID:uuid locationName:v17];

        if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v20 toAlreadyGeneratedQuestions:v10])
        {
          [v10 addObject:v20];
        }
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_selectAssetsFromAssets:(id)assets limit:(unint64_t)limit
{
  assetsCopy = assets;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([v6 count] < limit)
  {
    v29 = 0;
    v8 = 0;
    v31 = (limit + 1) >> 1;
    v32 = 0;
    v9 = *MEMORY[0x277D3C8A8];
    v30 = v7;
    do
    {
      if (v8 >= [assetsCopy count])
      {
        break;
      }

      v10 = [assetsCopy objectAtIndexedSubscript:v8];
      location = [v10 location];
      [location coordinate];
      v13 = v12;
      v15 = v14;

      v16 = [MEMORY[0x277CD97E8] poiGeoHashWithGeoHashSize:v9 latitude:v13 longitude:v15];
      if (([v7 containsObject:v16] & 1) == 0)
      {
        limitCopy = limit;
        v18 = v9;
        iconicScoreProperties = [v10 iconicScoreProperties];
        [iconicScoreProperties iconicScore];
        v21 = v20;

        curationModel = [v10 curationModel];
        iconicScoreModel = [curationModel iconicScoreModel];
        [iconicScoreModel minimumMeaningfulIconicScore];
        v25 = v24;

        if (v21 < v25 || v32 >= v31)
        {
          if (v21 < v25 && v29 < v31)
          {
            localIdentifier = [v10 localIdentifier];
            [v6 addObject:localIdentifier];

            ++v29;
          }
        }

        else
        {
          localIdentifier2 = [v10 localIdentifier];
          [v6 addObject:localIdentifier2];

          ++v32;
        }

        v9 = v18;
        limit = limitCopy;
        v7 = v30;
      }

      ++v8;
    }

    while ([v6 count] < limit);
  }

  return v6;
}

- (id)_fetchAssetsWithLibrary:(id)library internalPredicate:(id)predicate
{
  v21[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  requiredFetchPropertySets = [MEMORY[0x277D3C7D8] requiredFetchPropertySets];
  [librarySpecificFetchOptions setFetchPropertySets:requiredFetchPropertySets];

  [librarySpecificFetchOptions setFetchLimit:1000];
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v21[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v10];

  existingQuestionsByEntityIdentifier = [(PGSurveyQuestionFactory *)self existingQuestionsByEntityIdentifier];
  allKeys = [existingQuestionsByEntityIdentifier allKeys];

  v13 = MEMORY[0x277CCA920];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (uuid IN %@)", allKeys];
  v20[0] = v14;
  v20[1] = predicateCopy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v16 = [v13 andPredicateWithSubpredicates:v15];
  [librarySpecificFetchOptions setInternalPredicate:v16];

  v17 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = _Block_copy(block);
  if (v6)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v8 = 0.0;
    if (Current >= 0.01)
    {
      v9 = Current;
      v26 = 0;
      v6[2](v6, &v26, 0.0);
      if (v26 == 1)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_23:
          allObjects2 = MEMORY[0x277CBEBF8];
          goto LABEL_34;
        }

        *buf = 67109378;
        v28 = 33;
        v29 = 2080;
        v30 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/LocationRepresentativeAsset/PGLocationRepresentativeAssetQuestionFactory.m";
        v10 = MEMORY[0x277D86220];
LABEL_22:
        _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_23;
      }

      v8 = v9;
    }

    if (!limit)
    {
      if (CFAbsoluteTimeGetCurrent() - v8 < 0.01)
      {
        goto LABEL_23;
      }

      v26 = 0;
      v6[2](v6, &v26, 1.0);
      if (!v26 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      *buf = 67109378;
      v28 = 36;
      v29 = 2080;
      v30 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/LocationRepresentativeAsset/PGLocationRepresentativeAssetQuestionFactory.m";
      v10 = MEMORY[0x277D86220];
      goto LABEL_22;
    }
  }

  else
  {
    v8 = 0.0;
    if (!limit)
    {
      goto LABEL_23;
    }
  }

  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];

  predicateForAssetWithLocation = [MEMORY[0x277D3ACD0] predicateForAssetWithLocation];
  v14 = [(PGLocationRepresentativeAssetQuestionFactory *)self _fetchAssetsWithLibrary:photoLibrary internalPredicate:predicateForAssetWithLocation];
  fetchedObjects = [v14 fetchedObjects];

  curationSession = [(PGSurveyQuestionFactory *)self curationSession];

  if (!curationSession)
  {
    v17 = objc_alloc_init(MEMORY[0x277D3C7A0]);
    [(PGSurveyQuestionFactory *)self setCurationSession:v17];
  }

  curationSession2 = [(PGSurveyQuestionFactory *)self curationSession];
  [curationSession2 prepareAssets:fetchedObjects];

  if (!v6)
  {
    goto LABEL_25;
  }

  v19 = CFAbsoluteTimeGetCurrent();
  if (v19 - v8 < 0.01)
  {
    goto LABEL_25;
  }

  v26 = 0;
  v6[2](v6, &v26, 0.7);
  if (!v26)
  {
    v8 = v19;
LABEL_25:
    v21 = [(PGLocationRepresentativeAssetQuestionFactory *)self _selectAssetsFromAssets:fetchedObjects limit:limit];
    allObjects = [v21 allObjects];
    v23 = [(PGLocationRepresentativeAssetQuestionFactory *)self _addQuestionsForAssetUUIDs:allObjects photoLibrary:photoLibrary];

    if (v6 && CFAbsoluteTimeGetCurrent() - v8 >= 0.01 && (v26 = 0, v6[2](v6, &v26, 1.0), v26))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v28 = 53;
        v29 = 2080;
        v30 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/LocationRepresentativeAsset/PGLocationRepresentativeAssetQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      allObjects2 = MEMORY[0x277CBEBF8];
    }

    else
    {
      allObjects2 = [v23 allObjects];
    }

    goto LABEL_33;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v28 = 49;
    v29 = 2080;
    v30 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/LocationRepresentativeAsset/PGLocationRepresentativeAssetQuestionFactory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  allObjects2 = MEMORY[0x277CBEBF8];
LABEL_33:

LABEL_34:
  v24 = *MEMORY[0x277D85DE8];

  return allObjects2;
}

@end