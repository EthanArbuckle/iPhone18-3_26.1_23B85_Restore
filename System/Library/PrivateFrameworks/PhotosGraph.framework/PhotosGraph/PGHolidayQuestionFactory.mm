@interface PGHolidayQuestionFactory
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGHolidayQuestionFactory

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  blockCopy = block;
  v7 = [MEMORY[0x277CBEB58] set];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __69__PGHolidayQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
  v16 = &unk_27888A2F8;
  v19 = blockCopy;
  limitCopy = limit;
  selfCopy = self;
  v18 = v7;
  v9 = v7;
  v10 = blockCopy;
  [workingContext performSynchronousConcurrentGraphReadUsingBlock:&v13];

  allObjects = [v9 allObjects];

  return allObjects;
}

void __69__PGHolidayQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _Block_copy(*(a1 + 48));
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  if (!v4)
  {
    if (!*(a1 + 56))
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current - v32[3] >= 0.01)
  {
    v32[3] = Current;
    v30 = 0;
    v4[2](v4, &v30, 0.0);
    v6 = *(v36 + 24) | v30;
    *(v36 + 24) = v6;
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v40 = 42;
        v41 = 2080;
        v42 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Holiday/PGHolidayQuestionFactory.m";
        v7 = MEMORY[0x277D86220];
LABEL_11:
        _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  if (*(a1 + 56))
  {
LABEL_13:
    v10 = [v3 graph];
    v11 = objc_alloc(MEMORY[0x277D3C790]);
    v12 = [*(a1 + 32) workingContext];
    v13 = [v12 photoLibrary];
    v14 = [v11 initWithPhotoLibrary:v13];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __69__PGHolidayQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_189;
    v22[3] = &unk_278882F18;
    v22[4] = *(a1 + 32);
    v15 = v14;
    v23 = v15;
    v16 = *(a1 + 40);
    v17 = *(a1 + 56);
    v24 = v16;
    v28 = v17;
    v18 = v4;
    v25 = v18;
    v26 = &v31;
    v29 = 0x3F847AE147AE147BLL;
    v27 = &v35;
    [v10 enumerateCelebratedHolidayNodesUsingBlock:v22];
    if (v4)
    {
      v19 = CFAbsoluteTimeGetCurrent();
      if (v19 - v32[3] >= 0.01)
      {
        v32[3] = v19;
        v30 = 0;
        v18[2](v18, &v30, 1.0);
        v20 = *(v36 + 24) | v30;
        *(v36 + 24) = v20;
        if ((v20 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v40 = 89;
          v41 = 2080;
          v42 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Holiday/PGHolidayQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }
    }

    goto LABEL_19;
  }

  v8 = CFAbsoluteTimeGetCurrent();
  if (v8 - v32[3] >= 0.01)
  {
    v32[3] = v8;
    v30 = 0;
    v4[2](v4, &v30, 0.0);
    v9 = *(v36 + 24) | v30;
    *(v36 + 24) = v9;
    if ((v9 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v40 = 46;
      v41 = 2080;
      v42 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Holiday/PGHolidayQuestionFactory.m";
      v7 = MEMORY[0x277D86220];
      goto LABEL_11;
    }
  }

LABEL_19:
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  v21 = *MEMORY[0x277D85DE8];
}

void __69__PGHolidayQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_189(uint64_t a1, void *a2, _BYTE *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 name];
  if (v6)
  {
    v7 = [v5 localizedName];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__PGHolidayQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_191;
    v15[3] = &unk_278882EF0;
    v8 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v8;
    v17 = v6;
    v9 = v7;
    v18 = v9;
    v10 = *(a1 + 48);
    v11 = *(a1 + 80);
    v19 = v10;
    v22 = v11;
    v23 = a3;
    v20 = *(a1 + 56);
    v24 = *(a1 + 88);
    v21 = *(a1 + 64);
    [v5 enumerateCelebratingMomentNodesUsingBlock:v15];
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  else
  {
    v12 = +[PGLogging sharedLogging];
    v9 = [v12 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = [v5 UUID];
      *buf = 138412290;
      v26 = v14;
      _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "Holiday node with uuid %@ has nil name, not generating question for it", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __69__PGHolidayQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_191(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) representativeAssetsFromMomentNode:a2 curationContext:*(a1 + 40)];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [PGHolidayQuestion alloc];
        v12 = [v10 uuid];
        v13 = [(PGHolidayQuestion *)v11 initWithAssetUUID:v12 holidayName:*(a1 + 48) localizedHolidayName:*(a1 + 56) localFactoryScore:1.0];

        if ([*(a1 + 32) shouldAddQuestion:v13 toAlreadyGeneratedQuestions:*(a1 + 64)])
        {
          [*(a1 + 64) addObject:v13];
          if ([*(a1 + 64) count] >= *(a1 + 96))
          {
            *a3 = 1;
            **(a1 + 104) = 1;
LABEL_16:

            goto LABEL_17;
          }
        }

        v14 = [*(a1 + 64) count];
        if (*(a1 + 72))
        {
          v15 = v14;
          v16 = *(a1 + 96);
          Current = CFAbsoluteTimeGetCurrent();
          v18 = *(*(a1 + 80) + 8);
          if (Current - *(v18 + 24) >= *(a1 + 112))
          {
            *(v18 + 24) = Current;
            (*(*(a1 + 72) + 16))(v15 / v16);
            *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
            if (*(*(*(a1 + 88) + 8) + 24) == 1)
            {
              *a3 = 1;
              goto LABEL_16;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
}

@end