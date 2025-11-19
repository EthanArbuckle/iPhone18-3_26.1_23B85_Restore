@interface PGSharedLibraryAssetsQuestionFactory
+ (BOOL)isSharedLibraryQuestionsEnabledForPhotoLibrary:(id)a3;
+ (id)_libraryScopeFromPhotoLibrary:(id)a3;
- (id)_assetsFetchResultFromMoment:(id)a3;
- (id)_eligibleMomentsFetchResult;
- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4;
@end

@implementation PGSharedLibraryAssetsQuestionFactory

+ (id)_libraryScopeFromPhotoLibrary:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = [a3 librarySpecificFetchOptions];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v17[0] = v4;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v17[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [v3 setSortDescriptors:v6];

  v7 = [MEMORY[0x277CD98A8] fetchActiveLibraryScopeWithOptions:v3];
  if ([v7 count])
  {
    v8 = [v7 firstObject];
    if ([v7 count] < 2)
    {
      goto LABEL_9;
    }

    v9 = +[PGLogging sharedLogging];
    v10 = [v9 loggingConnection];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 localIdentifier];
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "[PGSharedLibraryAssetsQuestionFactory] more than 1 scope configured, using first one: %@", &v15, 0xCu);
    }
  }

  else
  {
    v12 = +[PGLogging sharedLogging];
    v10 = [v12 loggingConnection];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "[PGSharedLibraryAssetsQuestionFactory] no active scope", &v15, 2u);
    }

    v8 = 0;
  }

LABEL_9:
  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (BOOL)isSharedLibraryQuestionsEnabledForPhotoLibrary:(id)a3
{
  v3 = [a1 _libraryScopeFromPhotoLibrary:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)_assetsFetchResultFromMoment:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGSurveyQuestionFactory *)self workingContext];
  v6 = [v5 photoLibrary];

  v7 = [v6 librarySpecificFetchOptions];
  v8 = MEMORY[0x277CCA920];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"kindSubtype", 10];
  v20[0] = v9;
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"kindSubtype", 103];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v12 = [v8 andPredicateWithSubpredicates:v11];

  [v7 setInternalPredicate:v12];
  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v19[0] = v13;
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v19[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [v7 setSortDescriptors:v15];

  [v7 setWantsIncrementalChangeDetails:0];
  v16 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v4 options:v7];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_eligibleMomentsFetchResult
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [(PGSurveyQuestionFactory *)self workingContext];
  v3 = [v2 photoLibrary];

  v4 = [objc_opt_class() _libraryScopeFromPhotoLibrary:v3];
  if (v4)
  {
    v5 = [v3 librarySpecificFetchOptions];
    v6 = [MEMORY[0x277CD98C0] fetchLibraryScopeRulesForLibraryScope:v4 options:v5];
    v7 = [MEMORY[0x277CBEAA8] distantPast];
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

          v13 = [*(*(&v28 + 1) + 8 * i) dateRangeCondition];
          v14 = v13;
          if (v13 && [v13 criteria] == 2)
          {
            v16 = [v14 endDate];

            v7 = v16;
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
    v18 = [v17 loggingConnection];

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v4 localIdentifier];
      *buf = 138412546;
      v35 = v19;
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "[PGSharedLibraryAssetsQuestionFactory] using scope: %@, with %@ start date", buf, 0x16u);
    }

    v20 = [v3 librarySpecificFetchOptions];
    v33 = *MEMORY[0x277CD9AA8];
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [v20 setFetchPropertySets:v21];

    v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"startDate >= %@", v7];
    [v20 setInternalPredicate:v22];

    v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
    v32[0] = v23;
    v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
    v32[1] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    [v20 setSortDescriptors:v25];

    [v20 setWantsIncrementalChangeDetails:0];
    v15 = [MEMORY[0x277CD98F8] fetchMomentsWithOptions:v20];
  }

  else
  {
    v15 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = _Block_copy(v4);
  v6 = 0.0;
  if (!v5 || (v7 = CFAbsoluteTimeGetCurrent(), v7 < 0.01))
  {
LABEL_8:
    v9 = [(PGSurveyQuestionFactory *)self workingContext];
    v10 = [v9 photoLibrary];

    if ([objc_opt_class() isSharedLibraryQuestionsEnabledForPhotoLibrary:v10])
    {
      if (a3)
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v12 = [(PGSharedLibraryAssetsQuestionFactory *)self _eligibleMomentsFetchResult];
        v13 = [v12 count];
        if (v13)
        {
          v14 = v13;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v15 = v12;
          v43 = [v15 countByEnumeratingWithState:&v57 objects:v63 count:16];
          if (v43)
          {
            v16 = 1.0 / v14;
            v17 = *v58;
            v41 = v5 + 16;
            v18 = 0.0;
            v19 = 0x277CBE000uLL;
            v48 = v5;
            v49 = v4;
            v46 = v12;
            v47 = v10;
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
                v24 = [v23 lastObject];
                v25 = [v24 uuid];

                v26 = [*(v19 + 2728) distantPast];
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
                      v33 = [v32 creationDate];
                      v34 = [v32 uuid];
                      if (([v25 isEqualToString:v34] & 1) != 0 || (-[PGSharedLibraryAssetsQuestion timeIntervalSinceDate:](v33, "timeIntervalSinceDate:", v26), v35 >= 600.0))
                      {
                        v36 = [[PGSharedLibraryAssetsQuestion alloc] initWithAssetUUID:v34];
                        if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v36 toAlreadyGeneratedQuestions:v11])
                        {
                          [v11 addObject:v36];
                          if ([v11 count] >= a3)
                          {

                            objc_autoreleasePoolPop(context);
                            v5 = v48;
                            v4 = v49;
                            v12 = v46;
                            v10 = v47;
                            v15 = v45;
                            goto LABEL_49;
                          }
                        }

                        v26 = v33;
                      }

                      else
                      {
                        v36 = v34;
                        v34 = v33;
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
                v4 = v49;
                v12 = v46;
                v10 = v47;
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
            v8 = [v11 allObjects];
LABEL_62:

            goto LABEL_63;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_61:
            v8 = MEMORY[0x277CBEBF8];
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
        v8 = MEMORY[0x277CBEBF8];
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

  v8 = MEMORY[0x277CBEBF8];
LABEL_64:

  v39 = *MEMORY[0x277D85DE8];

  return v8;
}

@end