@interface PGMemoryMusicEnergyQuestionFactory
- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4;
@end

@implementation PGMemoryMusicEnergyQuestionFactory

- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _Block_copy(v6);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (v7)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v36[3] >= 0.01)
    {
      v36[3] = Current;
      v34 = 0;
      v7[2](v7, &v34, 0.0);
      v9 = *(v40 + 24) | v34;
      *(v40 + 24) = v9;
      if (v9)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_19:
          v20 = MEMORY[0x277CBEBF8];
          goto LABEL_22;
        }

        *buf = 67109378;
        v44 = 43;
        v45 = 2080;
        v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Music/MusicEnergy/PGMemoryMusicEnergyQuestionFactory.m";
        v10 = MEMORY[0x277D86220];
LABEL_11:
        _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_19;
      }
    }

    if (!a3)
    {
      v11 = CFAbsoluteTimeGetCurrent();
      if (v11 - v36[3] < 0.01)
      {
        goto LABEL_19;
      }

      v36[3] = v11;
      v34 = 0;
      v7[2](v7, &v34, 1.0);
      v12 = *(v40 + 24) | v34;
      *(v40 + 24) = v12;
      if ((v12 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      *buf = 67109378;
      v44 = 47;
      v45 = 2080;
      v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Music/MusicEnergy/PGMemoryMusicEnergyQuestionFactory.m";
      v10 = MEMORY[0x277D86220];
      goto LABEL_11;
    }
  }

  else if (!a3)
  {
    goto LABEL_19;
  }

  v13 = [MEMORY[0x277CBEB58] set];
  v14 = [(PGSurveyQuestionFactory *)self workingContext];
  v15 = [v14 photoLibrary];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __79__PGMemoryMusicEnergyQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
  v26 = &unk_278880550;
  v27 = self;
  v16 = v13;
  v28 = v16;
  v32 = a3;
  v17 = v7;
  v29 = v17;
  v30 = &v35;
  v33 = 0x3F847AE147AE147BLL;
  v31 = &v39;
  [PGMemoryMusicQuestionUtils enumerateMemoryMusicSuggestionsInPhotoLibrary:v15 block:&v23];

  if (v7 && (v18 = CFAbsoluteTimeGetCurrent(), v18 - v36[3] >= 0.01) && (v36[3] = v18, v34 = 0, v17[2](v17, &v34, 1.0), v19 = *(v40 + 24) | v34, *(v40 + 24) = v19, (v19 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v44 = 71;
      v45 = 2080;
      v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Music/MusicEnergy/PGMemoryMusicEnergyQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v20 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v20 = [v16 allObjects];
  }

LABEL_22:
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __79__PGMemoryMusicEnergyQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = [[PGMemoryMusicEnergyQuestion alloc] initWithMemory:v7 song:v8 localFactoryScore:1.0];
  if ([*(a1 + 32) shouldAddQuestion:v10 toAlreadyGeneratedQuestions:*(a1 + 40)])
  {
    [*(a1 + 40) addObject:v10];
    if ([*(a1 + 40) count] >= *(a1 + 72))
    {
      *a4 = 1;
    }
  }

  v11 = [*(a1 + 40) count];
  if (*(a1 + 48))
  {
    v12 = v11;
    v13 = *(a1 + 72);
    Current = CFAbsoluteTimeGetCurrent();
    v15 = *(*(a1 + 56) + 8);
    if (Current - *(v15 + 24) >= *(a1 + 80))
    {
      *(v15 + 24) = Current;
      (*(*(a1 + 48) + 16))(v12 / v13);
      *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        *a4 = 1;
      }
    }
  }

  objc_autoreleasePoolPop(v9);
}

@end