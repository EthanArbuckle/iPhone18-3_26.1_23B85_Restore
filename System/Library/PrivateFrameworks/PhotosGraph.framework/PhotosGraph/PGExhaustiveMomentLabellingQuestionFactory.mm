@interface PGExhaustiveMomentLabellingQuestionFactory
- (id)_inferMeaningLabelsForMomentNode:(id)a3 graph:(id)a4 cache:(id)a5 meaningLabels:(id)a6 sceneTaxonomy:(id)a7;
- (id)_meaningLabelsForWhichToGenerateQuestions;
- (id)_questionsToAddWithMomentNodes:(id)a3 graph:(id)a4 localFactoryScore:(double)a5 limit:(unint64_t)a6 sceneTaxonomy:(id)a7 alreadyGeneratedQuestions:(id)a8 progressBlock:(id)a9;
- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4;
@end

@implementation PGExhaustiveMomentLabellingQuestionFactory

- (id)_meaningLabelsForWhichToGenerateQuestions
{
  v5[24] = *MEMORY[0x277D85DE8];
  v5[0] = @"Wedding";
  v5[1] = @"Birthday";
  v5[2] = @"Anniversary";
  v5[3] = @"Celebration";
  v5[4] = @"Concert";
  v5[5] = @"Festival";
  v5[6] = @"Theater";
  v5[7] = @"Dance";
  v5[8] = @"Museum";
  v5[9] = @"AmusementPark";
  v5[10] = @"Performance";
  v5[11] = @"Hiking";
  v5[12] = @"Climbing";
  v5[13] = @"Beaching";
  v5[14] = @"SportEvent";
  v5[15] = @"WinterSport";
  v5[16] = @"Diving";
  v5[17] = @"Lunch";
  v5[18] = @"Dinner";
  v5[19] = @"Breakfast";
  v5[20] = @"Restaurant";
  v5[21] = @"NightOut";
  v5[22] = @"Entertainment";
  v5[23] = @"HolidayEvent";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:24];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_inferMeaningLabelsForMomentNode:(id)a3 graph:(id)a4 cache:(id)a5 meaningLabels:(id)a6 sceneTaxonomy:(id)a7
{
  v61 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v44 = a4;
  v43 = a5;
  v12 = a6;
  v42 = a7;
  v40 = [MEMORY[0x277CBEB38] dictionary];
  v13 = [(PGSurveyQuestionFactory *)self workingContext];
  v14 = [v13 serviceManager];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v54 objects:v60 count:16];
  obj = v15;
  if (v16)
  {
    v17 = v16;
    v18 = *v55;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v55 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v54 + 1) + 8 * i);
        v59 = v20;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
        v22 = [PGMeaningfulEventLooseRequiredCriteriaFactory requiredCriteriaForIdentifiers:v21 graph:v44 sceneTaxonomy:v42];

        v23 = [PGMeaningfulEventProcessor processRequiredCriteria:v22 forMoment:v45 meaningfulEventProcessorCache:v43 serviceManager:v14];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v24 = [v23 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v51;
          v27 = -2147483650.0;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v51 != v26)
              {
                objc_enumerationMutation(v23);
              }

              [*(*(&v50 + 1) + 8 * j) score];
              if (v27 < v29)
              {
                v27 = v29;
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v50 objects:v58 count:16];
          }

          while (v25);
          if (v27 != -2147483650.0)
          {
            v30 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
            [v40 setObject:v30 forKeyedSubscript:v20];
          }
        }
      }

      v15 = obj;
      v17 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v17);
  }

  v31 = objc_alloc_init(MEMORY[0x277CBEB40]);
  if ([v40 count])
  {
    v32 = [v40 keysSortedByValueUsingSelector:sel_compare_];
    v33 = [v32 reverseObjectEnumerator];
    v34 = [v33 allObjects];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __119__PGExhaustiveMomentLabellingQuestionFactory__inferMeaningLabelsForMomentNode_graph_cache_meaningLabels_sceneTaxonomy___block_invoke;
    v48[3] = &unk_278882530;
    v49 = v31;
    [v34 enumerateObjectsUsingBlock:v48];
  }

  if ([v31 count] <= 4)
  {
    do
    {
      v35 = [obj objectAtIndex:{arc4random_uniform(objc_msgSend(obj, "count"))}];
      [v31 addObject:v35];
    }

    while ([v31 count] < 5);
  }

  v36 = [obj sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __119__PGExhaustiveMomentLabellingQuestionFactory__inferMeaningLabelsForMomentNode_graph_cache_meaningLabels_sceneTaxonomy___block_invoke_2;
  v46[3] = &unk_278882530;
  v37 = v31;
  v47 = v37;
  [v36 enumerateObjectsUsingBlock:v46];

  [v37 addObject:PGExhaustiveMomentLabellingNoneOfTheseAnswerString];
  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

uint64_t __119__PGExhaustiveMomentLabellingQuestionFactory__inferMeaningLabelsForMomentNode_graph_cache_meaningLabels_sceneTaxonomy___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  [*(a1 + 32) addObject:a2];
  result = [*(a1 + 32) count];
  if (result == 5)
  {
    *a4 = 1;
  }

  return result;
}

void __119__PGExhaustiveMomentLabellingQuestionFactory__inferMeaningLabelsForMomentNode_graph_cache_meaningLabels_sceneTaxonomy___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)_questionsToAddWithMomentNodes:(id)a3 graph:(id)a4 localFactoryScore:(double)a5 limit:(unint64_t)a6 sceneTaxonomy:(id)a7 alreadyGeneratedQuestions:(id)a8 progressBlock:(id)a9
{
  v63 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  v35 = a9;
  v19 = _Block_copy(v35);
  v36 = [MEMORY[0x277CBEB98] set];
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v20 = [MEMORY[0x277CBEB58] set];
  v21 = [v18 count];
  v22 = [[PGMeaningfulEventProcessorCache alloc] initWithMomentNodes:v37];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __161__PGExhaustiveMomentLabellingQuestionFactory__questionsToAddWithMomentNodes_graph_localFactoryScore_limit_sceneTaxonomy_alreadyGeneratedQuestions_progressBlock___block_invoke;
  v39[3] = &unk_278882508;
  v39[4] = self;
  v23 = v16;
  v40 = v23;
  v24 = v22;
  v41 = v24;
  v25 = v17;
  v42 = v25;
  v48 = a5;
  v26 = v18;
  v43 = v26;
  v27 = v20;
  v44 = v27;
  v49 = a6;
  v28 = v19;
  v45 = v28;
  v46 = &v52;
  v50 = 0x3F847AE147AE147BLL;
  v47 = &v56;
  v51 = v21;
  [v37 enumerateNodesUsingBlock:v39];
  if (v28 && (Current = CFAbsoluteTimeGetCurrent(), Current - v53[3] >= 0.01) && (v53[3] = Current, v38 = 0, (*(v28 + 2))(v28, &v38, 1.0), v30 = *(v57 + 24) | v38, *(v57 + 24) = v30, (v30 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf[0] = 67109378;
      buf[1] = 128;
      v61 = 2080;
      v62 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGExhaustiveMomentLabellingQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v31 = v36;
  }

  else
  {
    v31 = v27;
  }

  v32 = v31;

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

void __161__PGExhaustiveMomentLabellingQuestionFactory__questionsToAddWithMomentNodes_graph_localFactoryScore_limit_sceneTaxonomy_alreadyGeneratedQuestions_progressBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = a2;
  v9 = [v5 _meaningLabelsForWhichToGenerateQuestions];
  v10 = [v5 _inferMeaningLabelsForMomentNode:v8 graph:v6 cache:v7 meaningLabels:v9 sceneTaxonomy:*(a1 + 56)];

  v11 = [PGExhaustiveMomentLabellingQuestion alloc];
  v12 = [v8 uuid];

  v13 = [(PGExhaustiveMomentLabellingQuestion *)v11 initWithMomentUUID:v12 localFactoryScore:v10 meaningLabels:*(a1 + 104)];
  if ([*(a1 + 32) shouldAddQuestion:v13 toAlreadyGeneratedQuestions:*(a1 + 64)])
  {
    [*(a1 + 72) addObject:v13];
  }

  v14 = [*(a1 + 72) count];
  if (*(a1 + 80))
  {
    v15 = v14;
    v16 = *(a1 + 112);
    Current = CFAbsoluteTimeGetCurrent();
    v18 = *(*(a1 + 88) + 8);
    if (Current - *(v18 + 24) >= *(a1 + 120))
    {
      *(v18 + 24) = Current;
      (*(*(a1 + 80) + 16))(v15 / v16);
      *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24);
      v19 = *(*(*(a1 + 96) + 8) + 24);
      if (v19 == 1)
      {
        goto LABEL_10;
      }
    }
  }

  v20 = *(a1 + 128);
  if (([*(a1 + 72) count] + v20) >= *(a1 + 112))
  {
    if (*(a1 + 80))
    {
      v21 = CFAbsoluteTimeGetCurrent();
      v22 = *(*(a1 + 88) + 8);
      if (v21 - *(v22 + 24) >= *(a1 + 120))
      {
        *(v22 + 24) = v21;
        (*(*(a1 + 80) + 16))(1.0);
        *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24);
        v19 = *(*(*(a1 + 96) + 8) + 24);
        if (v19 == 1)
        {
LABEL_10:
          *a3 = v19;
        }
      }
    }
  }
}

- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __87__PGExhaustiveMomentLabellingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
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

void __87__PGExhaustiveMomentLabellingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _Block_copy(*(a1 + 48));
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  if (!v4)
  {
    v8 = (a1 + 56);
    if (!*(a1 + 56))
    {
      goto LABEL_29;
    }

    goto LABEL_13;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current - v46[3] >= 0.01)
  {
    v46[3] = Current;
    LOBYTE(v53) = 0;
    v4[2](v4, &v53, 0.0);
    v6 = *(v50 + 24) | v53;
    *(v50 + 24) = v6;
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 0x3504000202;
        LOWORD(v58) = 2080;
        *(&v58 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGExhaustiveMomentLabellingQuestionFactory.m";
        v7 = MEMORY[0x277D86220];
LABEL_11:
        _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
        goto LABEL_29;
      }

      goto LABEL_29;
    }
  }

  v8 = (a1 + 56);
  if (*(a1 + 56))
  {
LABEL_13:
    v11 = [v3 graph];
    v12 = [MEMORY[0x277CBEAA8] date];
    v13 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v13 setDay:-30];
    v14 = [MEMORY[0x277CBEA80] currentCalendar];
    v15 = [v14 dateByAddingComponents:v13 toDate:v12 options:0];
    v35 = v13;

    v37 = v4;
    v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v15 endDate:v12];
    v17 = v15;
    v18 = v12;
    v36 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:v16 inGraph:v11];
    v34 = v16;
    v19 = v3;
    v20 = [objc_alloc(MEMORY[0x277D3C7B8]) initForSceneNetOnly:1];
    buf = 0;
    *&v58 = &buf;
    *(&v58 + 1) = 0x2020000000;
    v59 = 0;
    v21 = *(a1 + 56);
    v23 = *(a1 + 32);
    v22 = *(a1 + 40);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __87__PGExhaustiveMomentLabellingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_260;
    v39[3] = &unk_278885500;
    p_buf = &buf;
    v33 = v37;
    v40 = v33;
    v42 = &v45;
    v43 = &v49;
    v44 = 0x3F847AE147AE147BLL;
    v24 = [v23 _questionsToAddWithMomentNodes:v36 graph:v11 localFactoryScore:v21 limit:v20 sceneTaxonomy:v22 alreadyGeneratedQuestions:v39 progressBlock:1.0];
    v3 = v19;
    v25 = v18;
    v26 = v17;
    if (*(v50 + 24) == 1)
    {
      v4 = v37;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_28:

        _Block_object_dispose(&buf, 8);
        goto LABEL_29;
      }

      v53 = 67109378;
      v54 = 79;
      v55 = 2080;
      v56 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGExhaustiveMomentLabellingQuestionFactory.m";
      v27 = MEMORY[0x277D86220];
    }

    else
    {
      [*(a1 + 40) unionSet:v24];
      if ([*(a1 + 40) count] >= *v8)
      {
        v4 = v37;
        if (!v37)
        {
          goto LABEL_28;
        }

        v30 = CFAbsoluteTimeGetCurrent();
        if (v30 - v46[3] < 0.01)
        {
          goto LABEL_28;
        }

        v46[3] = v30;
        v38 = 0;
        v33[2](v33, &v38, 1.0);
        v31 = *(v50 + 24) | v38;
        *(v50 + 24) = v31;
        if ((v31 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_28;
        }

        v53 = 67109378;
        v54 = 83;
        v55 = 2080;
        v56 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGExhaustiveMomentLabellingQuestionFactory.m";
        v27 = MEMORY[0x277D86220];
      }

      else
      {
        v4 = v37;
        if (!v37)
        {
          goto LABEL_28;
        }

        v28 = CFAbsoluteTimeGetCurrent();
        if (v28 - v46[3] < 0.01)
        {
          goto LABEL_28;
        }

        v46[3] = v28;
        v38 = 0;
        v33[2](v33, &v38, 1.0);
        v29 = *(v50 + 24) | v38;
        *(v50 + 24) = v29;
        if ((v29 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_28;
        }

        v53 = 67109378;
        v54 = 87;
        v55 = 2080;
        v56 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGExhaustiveMomentLabellingQuestionFactory.m";
        v27 = MEMORY[0x277D86220];
      }
    }

    _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v53, 0x12u);
    goto LABEL_28;
  }

  v9 = CFAbsoluteTimeGetCurrent();
  if (v9 - v46[3] >= 0.01)
  {
    v46[3] = v9;
    LOBYTE(v53) = 0;
    v4[2](v4, &v53, 1.0);
    v10 = *(v50 + 24) | v53;
    *(v50 + 24) = v10;
    if ((v10 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x3804000202;
      LOWORD(v58) = 2080;
      *(&v58 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGExhaustiveMomentLabellingQuestionFactory.m";
      v7 = MEMORY[0x277D86220];
      goto LABEL_11;
    }
  }

LABEL_29:
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  v32 = *MEMORY[0x277D85DE8];
}

void __87__PGExhaustiveMomentLabellingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_260(uint64_t a1, _BYTE *a2, double a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a3 * 0.2 + 0.6;
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = *(*(a1 + 48) + 8);
    if (Current - *(v6 + 24) >= *(a1 + 64))
    {
      *(v6 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(*(*(a1 + 40) + 8) + 24));
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

@end