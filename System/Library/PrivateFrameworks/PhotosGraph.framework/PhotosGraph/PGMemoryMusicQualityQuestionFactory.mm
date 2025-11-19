@interface PGMemoryMusicQualityQuestionFactory
- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4;
@end

@implementation PGMemoryMusicQualityQuestionFactory

- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _Block_copy(v6);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  if (v7)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v39[3] >= 0.01)
    {
      v39[3] = Current;
      v37 = 0;
      v7[2](v7, &v37, 0.0);
      v9 = *(v43 + 24) | v37;
      *(v43 + 24) = v9;
      if (v9)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_17:
          v19 = MEMORY[0x277CBEBF8];
          goto LABEL_29;
        }

        *buf = 67109378;
        v47 = 41;
        v48 = 2080;
        v49 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Music/MusicQuality/PGMemoryMusicQualityQuestionFactory.m";
        v10 = MEMORY[0x277D86220];
LABEL_11:
        _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_17;
      }
    }

    if (!a3)
    {
      v11 = CFAbsoluteTimeGetCurrent();
      if (v11 - v39[3] < 0.01)
      {
        goto LABEL_17;
      }

      v39[3] = v11;
      v37 = 0;
      v7[2](v7, &v37, 1.0);
      v12 = *(v43 + 24) | v37;
      *(v43 + 24) = v12;
      if ((v12 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      *buf = 67109378;
      v47 = 45;
      v48 = 2080;
      v49 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Music/MusicQuality/PGMemoryMusicQualityQuestionFactory.m";
      v10 = MEMORY[0x277D86220];
      goto LABEL_11;
    }
  }

  else if (!a3)
  {
    goto LABEL_17;
  }

  v13 = [MEMORY[0x277CBEB58] set];
  v14 = [MEMORY[0x277D22C80] ignoreProgress];
  v15 = [PGMusicCatalogMonitor checkMusicCatalogEligibilityWithProgressReporter:v14];

  v16 = PLStoryGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v47 = v15;
    _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_DEBUG, "[MusicQualityQuestion] isAppleMusicSubscriber = %d", buf, 8u);
  }

  if (v15)
  {
    v17 = [(PGSurveyQuestionFactory *)self workingContext];
    v18 = [v17 photoLibrary];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __80__PGMemoryMusicQualityQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
    v28 = &unk_2788888F8;
    v36 = v15;
    v29 = self;
    v30 = v13;
    v34 = a3;
    v31 = v7;
    v32 = &v38;
    v35 = 0x3F847AE147AE147BLL;
    v33 = &v42;
    [PGMemoryMusicQuestionUtils enumerateMemoryMusicSuggestionsInPhotoLibrary:v18 block:&v25];
  }

  else
  {
    v20 = PLStoryGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "[MusicQualityQuestion] Not an Apple Music subscriber so skipping Apple Music question generation ", buf, 2u);
    }
  }

  if (v7 && (v21 = CFAbsoluteTimeGetCurrent(), v21 - v39[3] >= 0.01) && (v39[3] = v21, v37 = 0, v7[2](v7, &v37, 1.0), v22 = *(v43 + 24) | v37, *(v43 + 24) = v22, (v22 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v47 = 81;
      v48 = 2080;
      v49 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Music/MusicQuality/PGMemoryMusicQualityQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v19 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v19 = [v13 allObjects];
  }

LABEL_29:
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  v23 = *MEMORY[0x277D85DE8];

  return v19;
}

void __80__PGMemoryMusicQualityQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = [PGMemoryMusicQuestionUtils extractKeySongInfoForMemory:v7 isAppleMusicSubscriber:*(a1 + 88)];
  v11 = v10;
  if (!v10 || ([v10 allKeys], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, !v13))
  {
    v14 = PLStoryGetLog();
    if (!os_log_type_enabled(&v14->super.super, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v16 = [v7 uuid];
    v25 = 138412290;
    v26 = v16;
    _os_log_impl(&dword_22F0FC000, &v14->super.super, OS_LOG_TYPE_INFO, "[MusicQualityQuestion] Skipping question for memory %@ since it's customized (song selected changed from system curated)", &v25, 0xCu);
LABEL_11:

    goto LABEL_12;
  }

  v14 = [[PGMemoryMusicQualityQuestion alloc] initWithMemory:v7 withSongInfo:v11 localFactoryScore:1.0];
  v15 = [(PGMemoryMusicQualityQuestion *)v14 additionalInfo];
  if (!v15)
  {
    goto LABEL_12;
  }

  v16 = v15;
  v17 = [(PGMemoryMusicQualityQuestion *)v14 additionalInfo];
  if (![v17 count])
  {

    goto LABEL_11;
  }

  v18 = [*(a1 + 32) shouldAddQuestion:v14 toAlreadyGeneratedQuestions:*(a1 + 40)];

  if (v18)
  {
    [*(a1 + 40) addObject:v14];
    if ([*(a1 + 40) count] >= *(a1 + 72))
    {
      *a4 = 1;
    }
  }

LABEL_12:

  v19 = [*(a1 + 40) count];
  if (*(a1 + 48))
  {
    v20 = v19;
    v21 = *(a1 + 72);
    Current = CFAbsoluteTimeGetCurrent();
    v23 = *(*(a1 + 56) + 8);
    if (Current - *(v23 + 24) >= *(a1 + 80))
    {
      *(v23 + 24) = Current;
      LOBYTE(v25) = 0;
      (*(*(a1 + 48) + 16))(v20 / v21);
      *(*(*(a1 + 64) + 8) + 24) |= v25;
      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        *a4 = 1;
      }
    }
  }

  objc_autoreleasePoolPop(v9);
  v24 = *MEMORY[0x277D85DE8];
}

@end