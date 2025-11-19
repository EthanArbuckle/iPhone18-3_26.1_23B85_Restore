@interface PGPublicEventQuestionFactory
- (BOOL)_shouldAddNewPublicEventQuestionForAssetUUID:(id)a3;
- (double)_publicEventLocalFactoryScoreForMomentNode:(id)a3;
- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4;
@end

@implementation PGPublicEventQuestionFactory

- (BOOL)_shouldAddNewPublicEventQuestionForAssetUUID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  [(PGSurveyQuestionFactory *)self existingQuestionsForEntityIdentifier:a3];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v11 + 1) + 8 * i) state] == 2)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (double)_publicEventLocalFactoryScoreForMomentNode:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 publicEventNodes];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 1.0 / v5;
    if (v6 != 0.0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0.0;
  }

  v7 = +[PGLogging sharedLogging];
  v8 = [v7 loggingConnection];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = [v3 localIdentifier];
    v12 = 138412290;
    v13 = v11;
    _os_log_error_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_ERROR, "Moment node %@ found to have no public event nodes which is unexpected.", &v12, 0xCu);
  }

LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __73__PGPublicEventQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
  v16 = &unk_27888A2F8;
  v19 = v6;
  v20 = a3;
  v17 = self;
  v18 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performSynchronousConcurrentGraphReadUsingBlock:&v13];

  v11 = [v9 allObjects];

  return v11;
}

void __73__PGPublicEventQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
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
        v40 = 47;
        v41 = 2080;
        v42 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/PublicEvent/PGPublicEventQuestionFactory.m";
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
    v22[2] = __73__PGPublicEventQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_189;
    v22[3] = &unk_27888A2D0;
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
    [v10 enumeratePublicEventNodesUsingBlock:v22];
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
          v40 = 103;
          v41 = 2080;
          v42 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/PublicEvent/PGPublicEventQuestionFactory.m";
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
    v4[2](v4, &v30, 1.0);
    v9 = *(v36 + 24) | v30;
    *(v36 + 24) = v9;
    if ((v9 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v40 = 51;
      v41 = 2080;
      v42 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/PublicEvent/PGPublicEventQuestionFactory.m";
      v7 = MEMORY[0x277D86220];
      goto LABEL_11;
    }
  }

LABEL_19:
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  v21 = *MEMORY[0x277D85DE8];
}

void __73__PGPublicEventQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_189(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 collection];
  v7 = [v6 momentNodes];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__PGPublicEventQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_2;
  v14[3] = &unk_27888A2A8;
  v8 = v5;
  v15 = v8;
  v13 = *(a1 + 32);
  v9 = *(&v13 + 1);
  v10 = *(a1 + 48);
  v19 = *(a1 + 80);
  v20 = a3;
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v16 = v13;
  v17 = v12;
  v21 = *(a1 + 88);
  v18 = *(a1 + 64);
  [v7 enumerateNodesUsingBlock:v14];

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void __73__PGPublicEventQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) muid];
  v7 = [*(a1 + 32) name];
  if (v7)
  {
    [*(a1 + 40) _publicEventLocalFactoryScoreForMomentNode:v5];
    v9 = v8;
    v10 = [*(a1 + 32) businessNode];
    [v10 coordinates];
    v12 = v11;
    v14 = v13;
    v15 = *(a1 + 40);
    [v10 radius];
    v17 = [v15 assetFromMomentNode:v5 closestToLocationCoordinate:*(a1 + 48) radius:v12 curationContext:{v14, v16}];
    v18 = v17;
    if (v17)
    {
      v19 = *(a1 + 40);
      v20 = [v17 uuid];
      LODWORD(v19) = [v19 _shouldAddNewPublicEventQuestionForAssetUUID:v20];

      if (v19)
      {
        v21 = _os_feature_enabled_impl();
        v22 = MEMORY[0x277D3C9A8];
        if (!v21)
        {
          v22 = MEMORY[0x277D3C9A0];
        }

        v23 = *v22;
        v24 = [PGPublicEventQuestion alloc];
        v25 = [v18 uuid];
        v26 = [(PGPublicEventQuestion *)v24 initWithAssetUUID:v25 publicEventMUID:v6 publicEventName:v7 publicEventSource:v23 localFactoryScore:v9];

        if (![*(a1 + 40) shouldAddQuestion:v26 toAlreadyGeneratedQuestions:*(a1 + 56)] || (objc_msgSend(*(a1 + 56), "addObject:", v26), objc_msgSend(*(a1 + 56), "count") < *(a1 + 88)))
        {

          goto LABEL_9;
        }

        *a3 = 1;
        **(a1 + 96) = 1;
      }

LABEL_16:

      goto LABEL_17;
    }

LABEL_9:
    v27 = [*(a1 + 56) count];
    if (*(a1 + 64))
    {
      v28 = v27;
      v29 = *(a1 + 88);
      Current = CFAbsoluteTimeGetCurrent();
      v31 = *(*(a1 + 72) + 8);
      if (Current - *(v31 + 24) >= *(a1 + 104))
      {
        *(v31 + 24) = Current;
        LOBYTE(v34[0]) = 0;
        (*(*(a1 + 64) + 16))(v28 / v29);
        *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 80) + 8) + 24);
        if (*(*(*(a1 + 80) + 8) + 24) == 1)
        {
          *a3 = 1;
        }
      }
    }

    goto LABEL_16;
  }

  v32 = +[PGLogging sharedLogging];
  v10 = [v32 loggingConnection];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v34[0] = 67109120;
    v34[1] = v6;
    _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "Public event with muid %d has nil name, not generating question for it", v34, 8u);
  }

LABEL_17:

  v33 = *MEMORY[0x277D85DE8];
}

@end