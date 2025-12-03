@interface PGAlbumClassificationQuestionFactory
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGAlbumClassificationQuestionFactory

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  v41 = *MEMORY[0x277D85DE8];
  v30 = _Block_copy(block);
  if (v30)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = 0.0;
    if (Current >= 0.01)
    {
      v8 = Current;
      v35 = 0;
      v30[2](v30, &v35, 0.0);
      if (v35 == 1)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_36:
          allObjects = MEMORY[0x277CBEBF8];
          goto LABEL_42;
        }

        *buf = 67109378;
        v38 = 33;
        v39 = 2080;
        v40 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/AlbumClassification/PGAlbumClassificationQuestionFactory.m";
        v9 = MEMORY[0x277D86220];
LABEL_35:
        _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_36;
      }

      v7 = v8;
    }

    if (!limit)
    {
      if (CFAbsoluteTimeGetCurrent() - v7 < 0.01)
      {
        goto LABEL_36;
      }

      v35 = 0;
      v30[2](v30, &v35, 1.0);
      if (!v35 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_36;
      }

      *buf = 67109378;
      v38 = 36;
      v39 = 2080;
      v40 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/AlbumClassification/PGAlbumClassificationQuestionFactory.m";
      v9 = MEMORY[0x277D86220];
      goto LABEL_35;
    }
  }

  else
  {
    v7 = 0.0;
    if (!limit)
    {
      goto LABEL_36;
    }
  }

  v10 = [MEMORY[0x277CBEB58] set];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"estimatedAssetCount > 0"];
  [librarySpecificFetchOptions setPredicate:v14];

  [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:1 subtype:2 options:librarySpecificFetchOptions];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v15 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        v20 = [PGAlbumClassificationQuestion alloc];
        uuid = [v19 uuid];
        v22 = [(PGAlbumClassificationQuestion *)v20 initWithAlbumUUID:uuid localFactoryScore:1.0];

        if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v22 toAlreadyGeneratedQuestions:v10])
        {
          [v10 addObject:v22];
          v23 = [v10 count];
          if (v30)
          {
            v24 = v23;
            v25 = CFAbsoluteTimeGetCurrent();
            if (v25 - v7 >= 0.01)
            {
              v35 = 0;
              v30[2](v30, &v35, (v24 / limit));
              if (v35)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v38 = 50;
                  v39 = 2080;
                  v40 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/AlbumClassification/PGAlbumClassificationQuestionFactory.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                goto LABEL_40;
              }

              v7 = v25;
            }
          }

          if ([v10 count] >= limit)
          {

            goto LABEL_25;
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  if (v30 && CFAbsoluteTimeGetCurrent() - v7 >= 0.01 && (v35 = 0, v30[2](v30, &v35, 1.0), v35))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v38 = 57;
      v39 = 2080;
      v40 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/AlbumClassification/PGAlbumClassificationQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_40:
    allObjects = MEMORY[0x277CBEBF8];
  }

  else
  {
    allObjects = [v10 allObjects];
  }

LABEL_42:
  v27 = *MEMORY[0x277D85DE8];

  return allObjects;
}

@end