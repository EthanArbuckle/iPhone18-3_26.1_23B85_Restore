@interface PGHighlightTitlingQuestionFactory
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGHighlightTitlingQuestionFactory

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  blockCopy = block;
  v7 = [MEMORY[0x277CBEB58] set];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __78__PGHighlightTitlingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
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

void __78__PGHighlightTitlingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v91 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _Block_copy(*(a1 + 48));
  if (v4)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = 0.0;
    if (Current >= 0.01)
    {
      v7 = Current;
      v85 = 0;
      v4[2](v4, &v85, 0.0);
      if (v85 == 1)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_66;
        }

        *buf = 67109378;
        v88 = 39;
        v89 = 2080;
        v90 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/HighlightTitling/PGHighlightTitlingQuestionFactory.m";
        v8 = MEMORY[0x277D86220];
        goto LABEL_54;
      }

      v6 = v7;
    }

    if (!*(a1 + 56))
    {
      if (CFAbsoluteTimeGetCurrent() - v6 < 0.01)
      {
        goto LABEL_66;
      }

      v85 = 0;
      v4[2](v4, &v85, 1.0);
      if (!v85 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_66;
      }

      *buf = 67109378;
      v88 = 42;
      v89 = 2080;
      v90 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/HighlightTitling/PGHighlightTitlingQuestionFactory.m";
      v8 = MEMORY[0x277D86220];
LABEL_54:
      _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_66;
    }
  }

  else
  {
    v6 = 0.0;
    if (!*(a1 + 56))
    {
      goto LABEL_66;
    }
  }

  v9 = [*(a1 + 32) workingContext];
  v10 = [v9 photoLibrary];
  v11 = [v10 librarySpecificFetchOptions];

  v12 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000301 options:v11];
  if (![v12 count])
  {
    if (v4)
    {
      if (CFAbsoluteTimeGetCurrent() - v6 >= 0.01)
      {
        v85 = 0;
        v4[2](v4, &v85, 1.0);
        if (v85)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v88 = 51;
            v89 = 2080;
            v90 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/HighlightTitling/PGHighlightTitlingQuestionFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_65;
  }

  v69 = v11;
  v70 = v3;
  v13 = [v3 graph];
  v14 = [*(a1 + 32) workingContext];
  v15 = [v14 photoLibrary];
  v16 = [PGHighlightTailorContext alloc];
  v17 = [v14 serviceManager];
  v18 = [v14 loggingConnection];
  v80 = [(PGHighlightTailorContext *)v16 initWithPhotoLibrary:v15 graph:v13 serviceManager:v17 loggingConnection:v18];

  v19 = [PGTitleGenerationContext alloc];
  v75 = v14;
  v20 = [v14 serviceManager];
  v77 = [(PGTitleGenerationContext *)v19 initWithGraph:v13 serviceManager:v20];

  v68 = v15;
  v21 = [v15 librarySpecificFetchOptions];
  v86 = *MEMORY[0x277CD9AA8];
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
  [v21 setFetchPropertySets:v22];

  v67 = v21;
  v79 = [MEMORY[0x277CD97A8] fetchKeyAssetByHighlightUUIDForHighlights:v12 options:v21];
  if (![v12 count])
  {
LABEL_56:
    if (v4)
    {
      if (CFAbsoluteTimeGetCurrent() - v6 >= 0.01)
      {
        v85 = 0;
        v4[2](v4, &v85, 1.0);
        if (v85 == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v88 = 134;
          v89 = 2080;
          v90 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/HighlightTitling/PGHighlightTitlingQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }
    }

    goto LABEL_64;
  }

  v23 = 0;
  v76 = v13;
  v72 = v4;
  v74 = v12;
  v78 = a1;
  while (1)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = [v12 objectAtIndexedSubscript:v23];
    v26 = [*(a1 + 40) count];
    if (v4)
    {
      v27 = v26;
      v28 = *(a1 + 56);
      v29 = CFAbsoluteTimeGetCurrent();
      if (v29 - v6 >= 0.01)
      {
        break;
      }
    }

LABEL_17:
    context = v24;
    v30 = v25;
    v31 = [[PGHighlightTailorHighlightInfo alloc] initWithHighlight:v30 graph:v13 highlightTailorContext:v80];
    v32 = [(PGHighlightTailorHighlightInfo *)v31 highlightNode];
    v33 = [v32 uuid];
    v34 = [v79 objectForKeyedSubscript:v33];
    if (v34)
    {
      v83 = v33;
      v35 = [PGGraphMomentNodeCollection alloc];
      v36 = [(PGHighlightTailorHighlightInfo *)v31 momentNodes];
      v37 = [(MAElementCollection *)v35 initWithSet:v36 graph:v13];

      v38 = [v32 sharingComposition];
      if (v38 == 2)
      {
        v39 = 2;
      }

      else
      {
        v39 = v38 == 1;
      }

      v40 = [PGHighlightEnrichmentUtilities filteredSummarizedFeaturesForHighlightWithInfo:v31 sharingFilter:v39];
      v41 = [PGDayHighlightTitleGenerator alloc];
      v42 = [v75 loggingConnection];
      v82 = v40;
      v43 = [(PGDayHighlightTitleGenerator *)v41 initWithSummarizedFeatures:v40 momentNodes:v37 titleGenerationContext:v77 loggingConnection:v42];

      v81 = v43;
      v44 = [(PGDayHighlightTitleGenerator *)v43 titleTuple];
      v45 = v44;
      if (v44)
      {
        v46 = [v44 title];
        v47 = [v46 stringValue];

        if (v47)
        {
          v48 = [PGHighlightTitleGenerator alloc];
          v49 = [(PGHighlightTailorHighlightInfo *)v31 highlightNode];
          v50 = [(PGHighlightTitleGenerator *)v48 initWithCollection:v49 curatedAssetCollection:0 keyAsset:v34 createVerboseTitle:0 titleGenerationContext:v77];

          v73 = v50;
          v51 = [(PGHighlightTitleGenerator *)v50 titleTuple];
          if (v51)
          {
            v71 = v51;
            v52 = [v51 title];
            v53 = [v52 stringValue];

            if (v53)
            {
              v64 = v37;
              v54 = [MEMORY[0x277D3C7E8] titleWithoutFormattingForTitle:v47];

              v55 = [MEMORY[0x277D3C7E8] titleWithoutFormattingForTitle:v53];

              v56 = [v54 isEqualToString:v55];
              if (v56)
              {
                v57 = 0.5;
              }

              else
              {
                v57 = 1.0;
              }

              v65 = [PGHighlightTitlingQuestion alloc];
              v58 = [v34 uuid];
              v59 = v65;
              v66 = v54;
              v63 = v55;
              v60 = [(PGHighlightTitlingQuestion *)v59 initWithHighlightTitle:v54 legacyHighlightTitle:v55 keyAssetUUID:v58 localFactoryScore:v56 duplicatedTitles:v57];

              if ([*(v78 + 32) shouldAddQuestion:v60 toAlreadyGeneratedQuestions:*(v78 + 40)] && (objc_msgSend(*(v78 + 40), "addObject:", v60), objc_msgSend(*(v78 + 40), "count") >= *(v78 + 56)))
              {
                v61 = 2;
              }

              else
              {
                v61 = 0;
              }

              v4 = v72;
              v37 = v64;

              v47 = v66;
            }

            else
            {
              v61 = 4;
              v4 = v72;
            }

            v51 = v71;
          }

          else
          {
            v61 = 4;
            v4 = v72;
          }
        }

        else
        {
          v61 = 4;
          v4 = v72;
        }
      }

      else
      {
        v61 = 4;
      }

      v12 = v74;
      v33 = v83;
    }

    else
    {
      v61 = 4;
    }

    objc_autoreleasePoolPop(context);
    if (v61 && v61 != 4)
    {
      v13 = v76;
      goto LABEL_56;
    }

    ++v23;
    v13 = v76;
    a1 = v78;
    if (v23 >= [v12 count])
    {
      goto LABEL_56;
    }
  }

  v85 = 0;
  v4[2](v4, &v85, v27 / v28 * 0.9);
  if (!v85)
  {
    v6 = v29;
    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v88 = 69;
    v89 = 2080;
    v90 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/HighlightTitling/PGHighlightTitlingQuestionFactory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v24);
LABEL_64:

  v11 = v69;
  v3 = v70;
LABEL_65:

LABEL_66:
  v62 = *MEMORY[0x277D85DE8];
}

@end