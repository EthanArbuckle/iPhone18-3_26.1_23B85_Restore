@interface PGLocationRepresentativeAssetQuestionFactory
- (id)_addQuestionsForAssetUUIDs:(id)a3 photoLibrary:(id)a4;
- (id)_fetchAssetsWithLibrary:(id)a3 internalPredicate:(id)a4;
- (id)_selectAssetsFromAssets:(id)a3 limit:(unint64_t)a4;
- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4;
@end

@implementation PGLocationRepresentativeAssetQuestionFactory

- (id)_addQuestionsForAssetUUIDs:(id)a3 photoLibrary:(id)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v24 = a4;
  v7 = [v24 librarySpecificFetchOptions];
  v27[0] = *MEMORY[0x277CD9AF8];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  [v7 setFetchPropertySets:v8];

  v25 = v6;
  v23 = v7;
  v9 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v6 options:v7];
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
      v16 = [v15 photosOneUpProperties];
      v17 = [v16 localizedGeoDescriptionIsHome:&v26];

      if (v17)
      {
        v18 = [PGLocationRepresentativeAssetQuestion alloc];
        v19 = [v15 uuid];
        v20 = [(PGLocationRepresentativeAssetQuestion *)v18 initWithAssetUUID:v19 locationName:v17];

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

- (id)_selectAssetsFromAssets:(id)a3 limit:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([v6 count] < a4)
  {
    v29 = 0;
    v8 = 0;
    v31 = (a4 + 1) >> 1;
    v32 = 0;
    v9 = *MEMORY[0x277D3C8A8];
    v30 = v7;
    do
    {
      if (v8 >= [v5 count])
      {
        break;
      }

      v10 = [v5 objectAtIndexedSubscript:v8];
      v11 = [v10 location];
      [v11 coordinate];
      v13 = v12;
      v15 = v14;

      v16 = [MEMORY[0x277CD97E8] poiGeoHashWithGeoHashSize:v9 latitude:v13 longitude:v15];
      if (([v7 containsObject:v16] & 1) == 0)
      {
        v17 = a4;
        v18 = v9;
        v19 = [v10 iconicScoreProperties];
        [v19 iconicScore];
        v21 = v20;

        v22 = [v10 curationModel];
        v23 = [v22 iconicScoreModel];
        [v23 minimumMeaningfulIconicScore];
        v25 = v24;

        if (v21 < v25 || v32 >= v31)
        {
          if (v21 < v25 && v29 < v31)
          {
            v27 = [v10 localIdentifier];
            [v6 addObject:v27];

            ++v29;
          }
        }

        else
        {
          v26 = [v10 localIdentifier];
          [v6 addObject:v26];

          ++v32;
        }

        v9 = v18;
        a4 = v17;
        v7 = v30;
      }

      ++v8;
    }

    while ([v6 count] < a4);
  }

  return v6;
}

- (id)_fetchAssetsWithLibrary:(id)a3 internalPredicate:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 librarySpecificFetchOptions];
  v8 = [MEMORY[0x277D3C7D8] requiredFetchPropertySets];
  [v7 setFetchPropertySets:v8];

  [v7 setFetchLimit:1000];
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v21[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  [v7 setSortDescriptors:v10];

  v11 = [(PGSurveyQuestionFactory *)self existingQuestionsByEntityIdentifier];
  v12 = [v11 allKeys];

  v13 = MEMORY[0x277CCA920];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (uuid IN %@)", v12];
  v20[0] = v14;
  v20[1] = v6;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v16 = [v13 andPredicateWithSubpredicates:v15];
  [v7 setInternalPredicate:v16];

  v17 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v7];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = _Block_copy(a4);
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
          v20 = MEMORY[0x277CBEBF8];
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

    if (!a3)
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
    if (!a3)
    {
      goto LABEL_23;
    }
  }

  v11 = [(PGSurveyQuestionFactory *)self workingContext];
  v12 = [v11 photoLibrary];

  v13 = [MEMORY[0x277D3ACD0] predicateForAssetWithLocation];
  v14 = [(PGLocationRepresentativeAssetQuestionFactory *)self _fetchAssetsWithLibrary:v12 internalPredicate:v13];
  v15 = [v14 fetchedObjects];

  v16 = [(PGSurveyQuestionFactory *)self curationSession];

  if (!v16)
  {
    v17 = objc_alloc_init(MEMORY[0x277D3C7A0]);
    [(PGSurveyQuestionFactory *)self setCurationSession:v17];
  }

  v18 = [(PGSurveyQuestionFactory *)self curationSession];
  [v18 prepareAssets:v15];

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
    v21 = [(PGLocationRepresentativeAssetQuestionFactory *)self _selectAssetsFromAssets:v15 limit:a3];
    v22 = [v21 allObjects];
    v23 = [(PGLocationRepresentativeAssetQuestionFactory *)self _addQuestionsForAssetUUIDs:v22 photoLibrary:v12];

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

      v20 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v20 = [v23 allObjects];
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

  v20 = MEMORY[0x277CBEBF8];
LABEL_33:

LABEL_34:
  v24 = *MEMORY[0x277D85DE8];

  return v20;
}

@end