@interface PGTripTitlingQuestionFactory
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGTripTitlingQuestionFactory

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  blockCopy = block;
  v7 = [MEMORY[0x277CBEB58] set];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __73__PGTripTitlingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
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

void __73__PGTripTitlingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _Block_copy(*(a1 + 48));
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  if (!v4)
  {
    if (!*(a1 + 56))
    {
      goto LABEL_36;
    }

    goto LABEL_13;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current - v55[3] >= 0.01)
  {
    v55[3] = Current;
    v53 = 0;
    v4[2](v4, &v53, 0.0);
    v6 = *(v59 + 24) | v53;
    *(v59 + 24) = v6;
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v63 = 40;
        v64 = 2080;
        v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/TripTitling/PGTripTitlingQuestionFactory.m";
        v7 = MEMORY[0x277D86220];
LABEL_11:
        _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_36;
      }

      goto LABEL_36;
    }
  }

  if (*(a1 + 56))
  {
LABEL_13:
    v10 = [v3 graph];
    v40 = [PGGraphHighlightTypeNodeCollection concludedTripTypeNodesInGraph:v10];
    v11 = [v40 highlightGroupNodes];
    if (![v11 count])
    {
      if (v4)
      {
        v33 = CFAbsoluteTimeGetCurrent();
        if (v33 - v55[3] >= 0.01)
        {
          v55[3] = v33;
          v53 = 0;
          v4[2](v4, &v53, 1.0);
          v34 = *(v59 + 24) | v53;
          *(v59 + 24) = v34;
          if ((v34 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v63 = 51;
            v64 = 2080;
            v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/TripTitling/PGTripTitlingQuestionFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }

      goto LABEL_35;
    }

    v12 = [*(a1 + 32) workingContext];
    v13 = [v12 photoLibrary];

    v14 = MEMORY[0x277CD97B8];
    v15 = [v11 localIdentifiers];
    v16 = [v15 allObjects];
    v17 = [v13 librarySpecificFetchOptions];
    v39 = [v14 fetchAssetCollectionsWithLocalIdentifiers:v16 options:v17];

    v18 = MEMORY[0x277CD97A8];
    v19 = [v13 librarySpecificFetchOptions];
    v38 = [v18 fetchKeyAssetByHighlightUUIDForHighlights:v39 options:v19];

    v20 = MEMORY[0x277D22BF8];
    v21 = +[PGGraphHighlightGroupNodeCollection momentsOfHighlightGroup];
    v22 = [v20 adjacencyWithSources:v11 relation:v21 targetsClass:objc_opt_class()];

    if (v4)
    {
      v23 = CFAbsoluteTimeGetCurrent();
      if (v23 - v55[3] >= 0.01)
      {
        v55[3] = v23;
        v53 = 0;
        v4[2](v4, &v53, 0.1);
        v24 = *(v59 + 24) | v53;
        *(v59 + 24) = v24;
        if (v24)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v63 = 59;
            v64 = 2080;
            v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/TripTitling/PGTripTitlingQuestionFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_34;
        }
      }
    }

    v25 = [[PGGraphLocationHelper alloc] initWithGraph:v10];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __73__PGTripTitlingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_231;
    v41[3] = &unk_278886BE0;
    v26 = *(a1 + 40);
    v27 = *(a1 + 56);
    v42 = v26;
    v51 = v27;
    v28 = v4;
    v48 = v28;
    v49 = &v54;
    v52 = 0x3F847AE147AE147BLL;
    v50 = &v58;
    v29 = v38;
    v30 = *(a1 + 32);
    v43 = v29;
    v44 = v30;
    v45 = v10;
    v31 = v25;
    v46 = v31;
    v47 = v22;
    [v11 enumerateUUIDs:v41];
    if (*(v59 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_33:

LABEL_34:
LABEL_35:

        goto LABEL_36;
      }

      *buf = 67109378;
      v63 = 104;
      v64 = 2080;
      v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/TripTitling/PGTripTitlingQuestionFactory.m";
      v32 = MEMORY[0x277D86220];
    }

    else
    {
      if (!v4)
      {
        goto LABEL_33;
      }

      v35 = CFAbsoluteTimeGetCurrent();
      if (v35 - v55[3] < 0.01)
      {
        goto LABEL_33;
      }

      v55[3] = v35;
      v53 = 0;
      v28[2](v28, &v53, 1.0);
      v36 = *(v59 + 24) | v53;
      *(v59 + 24) = v36;
      if ((v36 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_33;
      }

      *buf = 67109378;
      v63 = 105;
      v64 = 2080;
      v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/TripTitling/PGTripTitlingQuestionFactory.m";
      v32 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_33;
  }

  v8 = CFAbsoluteTimeGetCurrent();
  if (v8 - v55[3] >= 0.01)
  {
    v55[3] = v8;
    v53 = 0;
    v4[2](v4, &v53, 1.0);
    v9 = *(v59 + 24) | v53;
    *(v59 + 24) = v9;
    if ((v9 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v63 = 43;
      v64 = 2080;
      v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/TripTitling/PGTripTitlingQuestionFactory.m";
      v7 = MEMORY[0x277D86220];
      goto LABEL_11;
    }
  }

LABEL_36:
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);

  v37 = *MEMORY[0x277D85DE8];
}

void __73__PGTripTitlingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_231(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [*(a1 + 32) count];
  if (!*(a1 + 80))
  {
    goto LABEL_5;
  }

  v9 = v8;
  v10 = *(a1 + 104);
  Current = CFAbsoluteTimeGetCurrent();
  v12 = *(*(a1 + 88) + 8);
  if (Current - *(v12 + 24) < *(a1 + 112))
  {
    goto LABEL_5;
  }

  *(v12 + 24) = Current;
  buf[0] = 0;
  (*(*(a1 + 80) + 16))(v9 / v10 * 0.9);
  *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24);
  if (*(*(*(a1 + 96) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  else
  {
LABEL_5:
    v13 = [*(a1 + 40) objectForKeyedSubscript:v7];
    if (v13)
    {
      v14 = [PGGraphHighlightGroupNodeCollection alloc];
      v15 = *(a1 + 56);
      v16 = [objc_alloc(MEMORY[0x277D22BB0]) initWithElementIdentifier:a2];
      v17 = [(MAElementCollection *)v14 initWithGraph:v15 elementIdentifiers:v16];

      v18 = *(a1 + 64);
      v41 = 0;
      v19 = [PGTripTitleGenerator titleForTripNodeAsCollection:v17 locationHelper:v18 error:&v41];
      v20 = v41;
      v21 = v20;
      if (v19)
      {
        v40 = v20;
        v22 = [PGLocationTripTitleUtility alloc];
        v23 = [*(a1 + 72) targetsForSources:v17];
        v24 = [v23 set];
        v25 = [(PGLocationTripTitleUtility *)v22 initWithMomentNodes:v24 filterMomentsAndCities:1 locationHelper:*(a1 + 64)];

        v26 = [(PGLocationTripTitleUtility *)v25 title];
        if (v26)
        {
          v27 = v26;
          v39 = a4;
          v28 = [MEMORY[0x277D3C7E8] titleWithoutFormattingForTitle:v19];

          v29 = [MEMORY[0x277D3C7E8] titleWithoutFormattingForTitle:v27];

          v30 = [v28 isEqualToString:v29];
          if (v30)
          {
            v31 = 0.5;
          }

          else
          {
            v31 = 1.0;
          }

          v32 = [PGTripTitlingQuestion alloc];
          v33 = [v13 uuid];
          v34 = [(PGTripTitlingQuestion *)v32 initWithTripTitle:v28 legacyTripTitle:v29 keyAssetUUID:v33 localFactoryScore:v30 duplicatedTitles:v31];

          if ([*(a1 + 48) shouldAddQuestion:v34 toAlreadyGeneratedQuestions:*(a1 + 32)])
          {
            [*(a1 + 32) addObject:v34];
            if ([*(a1 + 32) count] >= *(a1 + 104))
            {
              *v39 = 1;
            }
          }

          v19 = v28;
        }

        else
        {
          v37 = [*(a1 + 48) workingContext];
          v29 = [v37 loggingConnection];

          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v43 = v7;
            _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[PGTripTitlingQuestionFactory] No legacy trip title generated from Trip Highlight UUID %@", buf, 0xCu);
          }
        }

        v21 = v40;
      }

      else
      {
        v36 = [*(a1 + 48) workingContext];
        v19 = [v36 loggingConnection];

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v43 = v7;
          v44 = 2112;
          v45 = v21;
          _os_log_error_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_ERROR, "[PGTripTitlingQuestionFactory] No trip title generated from Trip Highlight UUID %@ with error %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v35 = [*(a1 + 48) workingContext];
      v17 = [v35 loggingConnection];

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = v7;
        _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "[PGTripTitlingQuestionFactory] No key asset for Trip Highlight UUID %@", buf, 0xCu);
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

@end