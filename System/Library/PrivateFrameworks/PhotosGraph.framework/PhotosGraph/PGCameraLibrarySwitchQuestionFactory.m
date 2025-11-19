@interface PGCameraLibrarySwitchQuestionFactory
+ (BOOL)isSharedLibraryQuestionsEnabledForPhotoLibrary:(id)a3;
+ (id)_libraryScopeFromPhotoLibrary:(id)a3;
- (id)_assetsFetchResultFromMoment:(id)a3;
- (id)_momentsForQuestions;
- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4;
@end

@implementation PGCameraLibrarySwitchQuestionFactory

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
      _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "[PGCameraLibrarySwitchQuestionFactory] more than 1 scope configured, using first one: %@", &v15, 0xCu);
    }
  }

  else
  {
    v12 = +[PGLogging sharedLogging];
    v10 = [v12 loggingConnection];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "[PGCameraLibrarySwitchQuestionFactory] no active scope", &v15, 2u);
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
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGSurveyQuestionFactory *)self workingContext];
  v6 = [v5 photoLibrary];

  v7 = [v6 librarySpecificFetchOptions];
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v18[0] = v8;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  [v7 setSortDescriptors:v10];

  v11 = *MEMORY[0x277CD9AB8];
  v17[0] = *MEMORY[0x277CD9A78];
  v17[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [v7 setFetchPropertySets:v12];

  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d || %K== %d", @"additionalAttributes.importedBy", 1, @"additionalAttributes.importedBy", 2];
  [v7 setInternalPredicate:v13];

  [v7 setWantsIncrementalChangeDetails:0];
  v14 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v4 options:v7];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_momentsForQuestions
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = [(PGSurveyQuestionFactory *)self workingContext];
  v3 = [v2 photoLibrary];

  v4 = [objc_opt_class() _libraryScopeFromPhotoLibrary:v3];
  if (v4)
  {
    v5 = [v3 librarySpecificFetchOptions];
    [v5 setFetchLimit:1];
    v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v32[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    [v5 setSortDescriptors:v7];

    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K & %i) != 0", @"libraryScopeShareState", 8];
    [v5 setInternalPredicate:v8];

    v9 = [MEMORY[0x277CD97A8] fetchAssetsInLibraryScope:v4 options:v5];
    if ([v9 count])
    {
      v10 = [v9 firstObject];
      v11 = [v10 creationDate];

      v12 = +[PGLogging sharedLogging];
      v13 = [v12 loggingConnection];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v4 localIdentifier];
        *buf = 138412546;
        v29 = v14;
        v30 = 2112;
        v31 = v11;
        _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "[PGCameraLibrarySwitchQuestionFactory] getting moments from active scope: %@, first smart share date: %@", buf, 0x16u);
      }

      v15 = [v3 librarySpecificFetchOptions];
      v27 = *MEMORY[0x277CD9AA8];
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
      [v15 setFetchPropertySets:v16];

      [v15 setFetchLimit:100];
      v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
      v26[0] = v17;
      v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
      v26[1] = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
      [v15 setSortDescriptors:v19];

      v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"endDate >= %@", v11];
      [v15 setPredicate:v20];

      [v15 setWantsIncrementalChangeDetails:0];
      v21 = [MEMORY[0x277CD98F8] fetchMomentsWithOptions:v15];
    }

    else
    {
      v22 = +[PGLogging sharedLogging];
      v11 = [v22 loggingConnection];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v23 = [v4 localIdentifier];
        *buf = 138412290;
        v29 = v23;
        _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "[PGCameraLibrarySwitchQuestionFactory] no smart sharing assets in library scope: %@", buf, 0xCu);
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4
{
  v112 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _Block_copy(v5);
  v7 = 0.0;
  if (!v6 || (v8 = CFAbsoluteTimeGetCurrent(), v8 < 0.01))
  {
LABEL_8:
    v10 = [(PGSurveyQuestionFactory *)self workingContext];
    v11 = [v10 photoLibrary];

    if ([objc_opt_class() isSharedLibraryQuestionsEnabledForPhotoLibrary:v11])
    {
      if (a3)
      {
        v12 = [objc_opt_class() _libraryScopeFromPhotoLibrary:v11];
        v13 = v12;
        if (!v12)
        {
          v9 = MEMORY[0x277CBEBF8];
LABEL_100:

          goto LABEL_101;
        }

        v86 = [v12 uuid];
        v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v15 = [(PGCameraLibrarySwitchQuestionFactory *)self _momentsForQuestions];
        v16 = [v15 count];
        if (v16)
        {
          v17 = v16;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v18 = v15;
          v77 = [v18 countByEnumeratingWithState:&v101 objects:v111 count:16];
          if (v77)
          {
            v19 = 1.0 / v17;
            v20 = *v102;
            v21 = 0.0;
            v75 = v6;
            v76 = v5;
            v73 = v13;
            v74 = v11;
            v83 = v14;
            v71 = v18;
            v72 = v15;
            v85 = self;
            v70 = *v102;
LABEL_14:
            v22 = 0;
LABEL_15:
            if (*v102 != v20)
            {
              v23 = v22;
              objc_enumerationMutation(v18);
              v22 = v23;
            }

            v78 = v22;
            v24 = *(*(&v101 + 1) + 8 * v22);
            if (!v6)
            {
              goto LABEL_21;
            }

            Current = CFAbsoluteTimeGetCurrent();
            if (Current - v7 < 0.01)
            {
              goto LABEL_21;
            }

            v105 = 0;
            v6[2](v6, &v105, v21);
            if (!v105)
            {
              v7 = Current;
LABEL_21:
              context = objc_autoreleasePoolPush();
              v26 = [(PGCameraLibrarySwitchQuestionFactory *)self _assetsFetchResultFromMoment:v24];
              v93 = [MEMORY[0x277CBEAA8] distantPast];
              v97 = 0u;
              v98 = 0u;
              v99 = 0u;
              v100 = 0u;
              v27 = v26;
              v28 = [(__CFString *)v27 countByEnumeratingWithState:&v97 objects:v110 count:16];
              if (!v28)
              {
                v64 = v27;
                goto LABEL_68;
              }

              v96 = 0;
              v90 = 0;
              v92 = 0;
              v29 = 0;
              v30 = 0;
              v31 = 0;
              v32 = 0;
              v33 = 0;
              v34 = *v98;
              v35 = v28;
              v80 = *v98;
              v81 = v27;
LABEL_23:
              v36 = 0;
              v82 = v35;
              while (1)
              {
                if (*v98 != v34)
                {
                  objc_enumerationMutation(v27);
                }

                v37 = *(*(&v97 + 1) + 8 * v36);
                if (([v37 isCloudPhotoLibraryAsset] & 1) == 0)
                {
                  break;
                }

LABEL_64:
                if (v35 == ++v36)
                {
                  v35 = [(__CFString *)v27 countByEnumeratingWithState:&v97 objects:v110 count:16];
                  if (v35)
                  {
                    goto LABEL_23;
                  }

                  v6 = v75;
                  v5 = v76;
                  v13 = v73;
                  v11 = v74;
                  v14 = v83;
                  v18 = v71;
                  v15 = v72;
                  self = v85;
                  v64 = v92;
LABEL_68:

                  objc_autoreleasePoolPop(context);
                  v21 = v19 + v21;
                  v22 = v78 + 1;
                  v20 = v70;
                  if (v78 + 1 == v77)
                  {
                    v65 = [v18 countByEnumeratingWithState:&v101 objects:v111 count:16];
                    v20 = v70;
                    v77 = v65;
                    if (!v65)
                    {
                      goto LABEL_91;
                    }

                    goto LABEL_14;
                  }

                  goto LABEL_15;
                }
              }

              v38 = [v37 libraryScopeProperties];
              v39 = [v38 suggestedByClientType];
              v88 = v39 == 3;
              v95 = [v38 assetRejectedByCamera];
              v87 = v39 == 2;
              if (v39 == -1)
              {
                v91 = [v38 assetManuallyRejectedByUser];
              }

              else
              {
                v91 = 0;
                v40 = 0;
                v41 = @"auto on";
                if (v39 == 3)
                {
LABEL_41:
                  v89 = v40;
                  v94 = v41;
                  v43 = [v37 creationDate];
                  [v43 timeIntervalSinceDate:v93];
                  if (v44 >= 180.0 || (v33 & ((v39 & 0xFFFE) == 2)) != 0 || (v32 & (v91 | v95) & 1) != 0 || ((v31 | v30) & ((v39 == 3) | v95) & 1) != 0 || ((v29 ^ v89) & 1) != 0)
                  {
                    v45 = v92;
                    v46 = @"none";
                    if (v92)
                    {
                      v46 = v92;
                    }

                    v47 = v46;
                    v48 = [PGCameraLibrarySwitchQuestion alloc];
                    v49 = [v37 uuid];
                    v50 = [(PGCameraLibrarySwitchQuestion *)v48 initWithAssetUUID:v49 libraryScopeUUID:v86 previousSwitchState:v47 currentSwitchState:v94];

                    v14 = v83;
                    if ([(PGSurveyQuestionFactory *)v85 shouldAddQuestion:v50 toAlreadyGeneratedQuestions:v83])
                    {
                      v51 = +[PGLogging sharedLogging];
                      v52 = [v51 loggingConnection];

                      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                      {
                        v53 = [v37 uuid];
                        *buf = 138412802;
                        *v107 = v53;
                        *&v107[8] = 2112;
                        *&v107[10] = v47;
                        v108 = 2112;
                        v109 = v94;
                        _os_log_impl(&dword_22F0FC000, v52, OS_LOG_TYPE_INFO, "[PGCameraLibrarySwitchQuestionFactory] question for asset %@, camera library switch state: %@ -> %@", buf, 0x20u);
                      }

                      [v83 addObject:v50];
                      if ([v83 count] >= a3)
                      {
                        goto LABEL_90;
                      }
                    }

                    if (v96)
                    {
                      v54 = @"none";
                      if (v90)
                      {
                        v54 = v90;
                      }

                      v55 = v54;
                      v56 = [[PGCameraLibrarySwitchQuestion alloc] initWithAssetUUID:v96 libraryScopeUUID:v86 previousSwitchState:v55 currentSwitchState:v47];
                      if ([(PGSurveyQuestionFactory *)v85 shouldAddQuestion:v56 toAlreadyGeneratedQuestions:v83])
                      {
                        v57 = +[PGLogging sharedLogging];
                        v58 = [v57 loggingConnection];

                        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
                        {
                          *buf = 138412802;
                          *v107 = v96;
                          *&v107[8] = 2112;
                          *&v107[10] = v55;
                          v108 = 2112;
                          v109 = v47;
                          _os_log_impl(&dword_22F0FC000, v58, OS_LOG_TYPE_INFO, "[PGCameraLibrarySwitchQuestionFactory] question for previous asset %@, camera library switch state: %@ -> %@", buf, 0x20u);
                        }

                        v14 = v83;
                        [v83 addObject:v56];
                        if ([v83 count] >= a3)
                        {

                          v45 = v92;
LABEL_90:

                          objc_autoreleasePoolPop(context);
                          v6 = v75;
                          v5 = v76;
                          v13 = v73;
                          v11 = v74;
                          v18 = v71;
                          v15 = v72;
                          goto LABEL_91;
                        }
                      }
                    }
                  }

                  v59 = v43;

                  v60 = @"none";
                  if (v92)
                  {
                    v60 = v92;
                  }

                  v61 = v60;

                  v62 = v94;
                  v63 = [v37 uuid];

                  v96 = v63;
                  v90 = v61;
                  v92 = v62;
                  v93 = v59;
                  v32 = v88;
                  v29 = v89;
                  v30 = v91;
                  v31 = v87;
                  v33 = v95;
                  v27 = v81;
                  v35 = v82;
                  v34 = v80;
                  goto LABEL_64;
                }
              }

              if (v39 == 2)
              {
                v42 = 1;
              }

              else
              {
                v42 = v95;
              }

              v41 = @"user on";
              if (v95)
              {
                v41 = @"auto off";
              }

              if (v42)
              {
                v40 = 0;
              }

              else
              {
                v41 = @"default off";
                if (v91)
                {
                  v41 = @"user off";
                }

                v40 = v91 ^ 1;
              }

              goto LABEL_41;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v107 = 78;
              *&v107[4] = 2080;
              *&v107[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGCameraLibrarySwitchQuestionFactory.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_97;
          }

LABEL_91:

          if (!v6 || CFAbsoluteTimeGetCurrent() - v7 < 0.01 || (v105 = 0, v6[2](v6, &v105, 1.0), !v105))
          {
            v9 = [v14 allObjects];
            goto LABEL_99;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_97:
            v9 = MEMORY[0x277CBEBF8];
LABEL_99:

            goto LABEL_100;
          }

          *buf = 67109378;
          *v107 = 179;
          *&v107[4] = 2080;
          *&v107[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGCameraLibrarySwitchQuestionFactory.m";
          v67 = MEMORY[0x277D86220];
        }

        else
        {
          if (!v6)
          {
            goto LABEL_97;
          }

          if (CFAbsoluteTimeGetCurrent() - v7 < 0.01)
          {
            goto LABEL_97;
          }

          v105 = 0;
          v6[2](v6, &v105, 1.0);
          if (!v105 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_97;
          }

          *buf = 67109378;
          *v107 = 69;
          *&v107[4] = 2080;
          *&v107[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGCameraLibrarySwitchQuestionFactory.m";
          v67 = MEMORY[0x277D86220];
        }

        _os_log_impl(&dword_22F0FC000, v67, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_97;
      }

      if (!v6 || CFAbsoluteTimeGetCurrent() - v7 < 0.01 || (v105 = 0, v6[2](v6, &v105, 1.0), !v105) || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_82:
        v9 = MEMORY[0x277CBEBF8];
LABEL_101:

        goto LABEL_102;
      }

      *buf = 67109378;
      *v107 = 54;
      *&v107[4] = 2080;
      *&v107[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGCameraLibrarySwitchQuestionFactory.m";
      v66 = MEMORY[0x277D86220];
    }

    else
    {
      if (!v6)
      {
        goto LABEL_82;
      }

      if (CFAbsoluteTimeGetCurrent() - v7 < 0.01)
      {
        goto LABEL_82;
      }

      v105 = 0;
      v6[2](v6, &v105, 1.0);
      if (!v105 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_82;
      }

      *buf = 67109378;
      *v107 = 49;
      *&v107[4] = 2080;
      *&v107[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGCameraLibrarySwitchQuestionFactory.m";
      v66 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v66, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_82;
  }

  v105 = 0;
  v6[2](v6, &v105, 0.0);
  if (v105 != 1)
  {
    v7 = v8;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v107 = 45;
    *&v107[4] = 2080;
    *&v107[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGCameraLibrarySwitchQuestionFactory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v9 = MEMORY[0x277CBEBF8];
LABEL_102:

  v68 = *MEMORY[0x277D85DE8];

  return v9;
}

@end