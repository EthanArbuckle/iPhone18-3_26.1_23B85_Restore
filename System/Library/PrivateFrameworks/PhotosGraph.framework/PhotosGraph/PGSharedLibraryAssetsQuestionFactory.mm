@interface PGSharedLibraryAssetsQuestionFactory
+ (BOOL)isSharedLibraryQuestionsEnabledForPhotoLibrary:(id)library;
+ (id)_libraryScopeFromPhotoLibrary:(id)library;
- (id)_assetsFetchResultFromMoment:(id)moment;
- (id)_eligibleMomentsFetchResult;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGSharedLibraryAssetsQuestionFactory

+ (id)_libraryScopeFromPhotoLibrary:(id)library
{
  v17[2] = *MEMORY[0x277D85DE8];
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v17[0] = v4;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v17[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v6];

  v7 = [MEMORY[0x277CD98A8] fetchActiveLibraryScopeWithOptions:librarySpecificFetchOptions];
  if ([v7 count])
  {
    firstObject = [v7 firstObject];
    if ([v7 count] < 2)
    {
      goto LABEL_9;
    }

    v9 = +[PGLogging sharedLogging];
    loggingConnection = [v9 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      localIdentifier = [firstObject localIdentifier];
      v15 = 138412290;
      v16 = localIdentifier;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGSharedLibraryAssetsQuestionFactory] more than 1 scope configured, using first one: %@", &v15, 0xCu);
    }
  }

  else
  {
    v12 = +[PGLogging sharedLogging];
    loggingConnection = [v12 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGSharedLibraryAssetsQuestionFactory] no active scope", &v15, 2u);
    }

    firstObject = 0;
  }

LABEL_9:
  v13 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (BOOL)isSharedLibraryQuestionsEnabledForPhotoLibrary:(id)library
{
  v3 = [self _libraryScopeFromPhotoLibrary:library];
  v4 = v3 != 0;

  return v4;
}

- (id)_assetsFetchResultFromMoment:(id)moment
{
  v20[2] = *MEMORY[0x277D85DE8];
  momentCopy = moment;
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];

  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v8 = MEMORY[0x277CCA920];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"kindSubtype", 10];
  v20[0] = v9;
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"kindSubtype", 103];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v12 = [v8 andPredicateWithSubpredicates:v11];

  [librarySpecificFetchOptions setInternalPredicate:v12];
  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v19[0] = v13;
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v19[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v15];

  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  v16 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:momentCopy options:librarySpecificFetchOptions];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_eligibleMomentsFetchResult
{
  v39 = *MEMORY[0x277D85DE8];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];

  v4 = [objc_opt_class() _libraryScopeFromPhotoLibrary:photoLibrary];
  if (v4)
  {
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v6 = [MEMORY[0x277CD98C0] fetchLibraryScopeRulesForLibraryScope:v4 options:librarySpecificFetchOptions];
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dateRangeCondition = [*(*(&v28 + 1) + 8 * i) dateRangeCondition];
          v14 = dateRangeCondition;
          if (dateRangeCondition && [dateRangeCondition criteria] == 2)
          {
            endDate = [v14 endDate];

            distantPast = endDate;
            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v28 objects:v38 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v17 = +[PGLogging sharedLogging];
    loggingConnection = [v17 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      localIdentifier = [v4 localIdentifier];
      *buf = 138412546;
      v35 = localIdentifier;
      v36 = 2112;
      v37 = distantPast;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGSharedLibraryAssetsQuestionFactory] using scope: %@, with %@ start date", buf, 0x16u);
    }

    librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
    v33 = *MEMORY[0x277CD9AA8];
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [librarySpecificFetchOptions2 setFetchPropertySets:v21];

    v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"startDate >= %@", distantPast];
    [librarySpecificFetchOptions2 setInternalPredicate:v22];

    v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
    v32[0] = v23;
    v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
    v32[1] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    [librarySpecificFetchOptions2 setSortDescriptors:v25];

    [librarySpecificFetchOptions2 setWantsIncrementalChangeDetails:0];
    v15 = [MEMORY[0x277CD98F8] fetchMomentsWithOptions:librarySpecificFetchOptions2];
  }

  else
  {
    v15 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  v68 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = _Block_copy(blockCopy);
  v6 = 0.0;
  if (!v5 || (v7 = CFAbsoluteTimeGetCurrent(), v7 < 0.01))
  {
LABEL_8:
    workingContext = [(PGSurveyQuestionFactory *)self workingContext];
    photoLibrary = [workingContext photoLibrary];

    if ([objc_opt_class() isSharedLibraryQuestionsEnabledForPhotoLibrary:photoLibrary])
    {
      if (limit)
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
        _eligibleMomentsFetchResult = [(PGSharedLibraryAssetsQuestionFactory *)self _eligibleMomentsFetchResult];
        v13 = [_eligibleMomentsFetchResult count];
        if (v13)
        {
          v14 = v13;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v15 = _eligibleMomentsFetchResult;
          v43 = [v15 countByEnumeratingWithState:&v57 objects:v63 count:16];
          if (v43)
          {
            v16 = 1.0 / v14;
            v17 = *v58;
            v41 = v5 + 16;
            v18 = 0.0;
            v19 = 0x277CBE000uLL;
            v48 = v5;
            v49 = blockCopy;
            v46 = _eligibleMomentsFetchResult;
            v47 = photoLibrary;
            v45 = v15;
            v42 = *v58;
            while (2)
            {
              v20 = 0;
              do
              {
                if (*v58 != v17)
                {
                  objc_enumerationMutation(v15);
                }

                v21 = *(*(&v57 + 1) + 8 * v20);
                if (v5)
                {
                  Current = CFAbsoluteTimeGetCurrent();
                  if (Current - v6 >= 0.01)
                  {
                    v61 = 0;
                    (*(v5 + 2))(v5, &v61, v18);
                    if (v61)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *buf = 67109378;
                        v65 = 72;
                        v66 = 2080;
                        v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGSharedLibraryAssetsQuestionFactory.m";
                        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                      }

                      goto LABEL_61;
                    }

                    v6 = Current;
                  }
                }

                v44 = v20;
                context = objc_autoreleasePoolPush();
                v23 = [(PGSharedLibraryAssetsQuestionFactory *)self _assetsFetchResultFromMoment:v21];
                lastObject = [v23 lastObject];
                uuid = [lastObject uuid];

                distantPast = [*(v19 + 2728) distantPast];
                v53 = 0u;
                v54 = 0u;
                v55 = 0u;
                v56 = 0u;
                v27 = v23;
                v28 = [v27 countByEnumeratingWithState:&v53 objects:v62 count:16];
                if (v28)
                {
                  v29 = v28;
                  v30 = *v54;
                  while (2)
                  {
                    for (i = 0; i != v29; ++i)
                    {
                      if (*v54 != v30)
                      {
                        objc_enumerationMutation(v27);
                      }

                      v32 = *(*(&v53 + 1) + 8 * i);
                      creationDate = [v32 creationDate];
                      uuid2 = [v32 uuid];
                      if (([uuid isEqualToString:uuid2] & 1) != 0 || (-[PGSharedLibraryAssetsQuestion timeIntervalSinceDate:](creationDate, "timeIntervalSinceDate:", distantPast), v35 >= 600.0))
                      {
                        v36 = [[PGSharedLibraryAssetsQuestion alloc] initWithAssetUUID:uuid2];
                        if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v36 toAlreadyGeneratedQuestions:v11])
                        {
                          [v11 addObject:v36];
                          if ([v11 count] >= limit)
                          {

                            objc_autoreleasePoolPop(context);
                            v5 = v48;
                            blockCopy = v49;
                            _eligibleMomentsFetchResult = v46;
                            photoLibrary = v47;
                            v15 = v45;
                            goto LABEL_49;
                          }
                        }

                        distantPast = creationDate;
                      }

                      else
                      {
                        v36 = uuid2;
                        uuid2 = creationDate;
                      }
                    }

                    v29 = [v27 countByEnumeratingWithState:&v53 objects:v62 count:16];
                    if (v29)
                    {
                      continue;
                    }

                    break;
                  }
                }

                objc_autoreleasePoolPop(context);
                v18 = v16 + v18;
                v20 = v44 + 1;
                v5 = v48;
                blockCopy = v49;
                _eligibleMomentsFetchResult = v46;
                photoLibrary = v47;
                v15 = v45;
                v17 = v42;
                v19 = 0x277CBE000;
              }

              while (v44 + 1 != v43);
              v43 = [v45 countByEnumeratingWithState:&v57 objects:v63 count:16];
              if (v43)
              {
                continue;
              }

              break;
            }
          }

LABEL_49:

          if (!v5 || CFAbsoluteTimeGetCurrent() - v6 < 0.01 || (v61 = 0, (*(v5 + 2))(v5, &v61, 1.0), !v61))
          {
            allObjects = [v11 allObjects];
LABEL_62:

            goto LABEL_63;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_61:
            allObjects = MEMORY[0x277CBEBF8];
            goto LABEL_62;
          }

          *buf = 67109378;
          v65 = 103;
          v66 = 2080;
          v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGSharedLibraryAssetsQuestionFactory.m";
          v38 = MEMORY[0x277D86220];
        }

        else
        {
          if (!v5)
          {
            goto LABEL_61;
          }

          if (CFAbsoluteTimeGetCurrent() - v6 < 0.01)
          {
            goto LABEL_61;
          }

          v61 = 0;
          (*(v5 + 2))(v5, &v61, 1.0);
          if (!v61 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_61;
          }

          *buf = 67109378;
          v65 = 64;
          v66 = 2080;
          v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGSharedLibraryAssetsQuestionFactory.m";
          v38 = MEMORY[0x277D86220];
        }

        _os_log_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_61;
      }

      if (!v5 || CFAbsoluteTimeGetCurrent() - v6 < 0.01 || (v61 = 0, (*(v5 + 2))(v5, &v61, 1.0), !v61) || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_47:
        allObjects = MEMORY[0x277CBEBF8];
LABEL_63:

        goto LABEL_64;
      }

      *buf = 67109378;
      v65 = 54;
      v66 = 2080;
      v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGSharedLibraryAssetsQuestionFactory.m";
      v37 = MEMORY[0x277D86220];
    }

    else
    {
      if (!v5)
      {
        goto LABEL_47;
      }

      if (CFAbsoluteTimeGetCurrent() - v6 < 0.01)
      {
        goto LABEL_47;
      }

      v61 = 0;
      (*(v5 + 2))(v5, &v61, 1.0);
      if (!v61 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_47;
      }

      *buf = 67109378;
      v65 = 49;
      v66 = 2080;
      v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGSharedLibraryAssetsQuestionFactory.m";
      v37 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v37, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_47;
  }

  v61 = 0;
  (*(v5 + 2))(v5, &v61, 0.0);
  if (v61 != 1)
  {
    v6 = v7;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v65 = 45;
    v66 = 2080;
    v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGSharedLibraryAssetsQuestionFactory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  allObjects = MEMORY[0x277CBEBF8];
LABEL_64:

  v39 = *MEMORY[0x277D85DE8];

  return allObjects;
}

@end