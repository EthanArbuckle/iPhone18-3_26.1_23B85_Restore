@interface PGMeaningQuestionFactory
- (NSSet)meaningLabelsForWhichToGenerateQuestions;
- (id)_dateNodesFromStartDate:(id)a3 toEndDate:(id)a4 inGraph:(id)a5;
- (id)_expandedDateNodesFromDateNode:(id)a3;
- (id)_expandedDateNodesFromDateNodes:(id)a3;
- (id)_inferMeaningLabelsForMomentNode:(id)a3 meaningLabels:(id)a4 graph:(id)a5 sceneTaxonomy:(id)a6 cache:(id)a7;
- (id)_looseCriteriasForCriteria:(id)a3 graph:(id)a4;
- (id)_meaningLabelsByParentMeaningLabels;
- (id)_questionsToAddFromMomentNodes:(id)a3 useRepresentativeAssets:(BOOL)a4 localFactoryScore:(double)a5 alreadyGeneratedQuestions:(id)a6 limit:(unint64_t)a7 graph:(id)a8 sceneTaxonomy:(id)a9 progressBlock:(id)a10;
- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4;
- (void)_updateMeaningQuestionsIfNeededWithProgressBlock:(id)a3;
@end

@implementation PGMeaningQuestionFactory

- (id)_dateNodesFromStartDate:(id)a3 toEndDate:(id)a4 inGraph:(id)a5
{
  v7 = MEMORY[0x277CCA970];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithStartDate:v10 endDate:v9];

  v12 = [v8 dateNodesForLocalDateInterval:v11];

  return v12;
}

- (id)_expandedDateNodesFromDateNode:(id)a3
{
  v4 = a3;
  v5 = [v4 localDate];
  if ([MEMORY[0x277D276A8] isWeekendDate:v5])
  {
    v18 = 0;
    v19 = 0.0;
    [MEMORY[0x277D276A8] rangeOfWeekendLocalStartDate:&v18 interval:&v19 containingDate:v5];
    v6 = v19;
    v7 = v18;
    v8 = [v7 dateByAddingTimeInterval:v6];
    v9 = [MEMORY[0x277D27690] dateByAddingDays:-2 toDate:v7];

    v10 = [MEMORY[0x277D27690] dateByAddingDays:3 toDate:v8];
  }

  else
  {
    v19 = 0.0;
    v17 = 0;
    [MEMORY[0x277D276A8] nextWeekendLocalStartDate:&v17 interval:&v19 options:4 afterDate:v5];
    v9 = v17;
    v15 = 0;
    v16 = 0.0;
    [MEMORY[0x277D276A8] nextWeekendLocalStartDate:&v15 interval:&v16 options:0 afterDate:v5];
    v10 = [v15 dateByAddingTimeInterval:v16];
  }

  v11 = [v4 graph];

  v12 = [(PGMeaningQuestionFactory *)self _dateNodesFromStartDate:v9 toEndDate:v10 inGraph:v11];

  v13 = [v12 set];

  return v13;
}

- (id)_expandedDateNodesFromDateNodes:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PGMeaningQuestionFactory *)self _expandedDateNodesFromDateNode:*(*(&v14 + 1) + 8 * i), v14];
        [v5 unionSet:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_looseCriteriasForCriteria:(id)a3 graph:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [v6 identifier];
  v10 = [v6 scenesTrait];
  if ([v10 isMatchingRequired])
  {
    v11 = [PGMeaningfulEventSceneCollectionTrait alloc];
    v12 = [v10 nodes];
    v13 = [(PGMeaningfulEventSceneCollectionTrait *)v11 initWithNodes:v12];

    [(PGMeaningfulEventSceneCollectionTrait *)v13 setMinimumNumberOfHighConfidenceAssets:1];
    [(PGMeaningfulEventSceneCollectionTrait *)v13 setMinimumNumberOfNegativeHighConfidenceAssets:0];
    [(PGMeaningfulEventSceneCollectionTrait *)v13 setMinimumRatioOfHighConfidenceAssets:0.0];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:0.00001];
    v14 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:v9 minimumScore:v7 graph:0.00001];
    [(PGMeaningfulEventCriteria *)v14 setScenesTrait:v13];
    [(PGMeaningfulEventRequiredCriteria *)v14 setMustBeInteresting:0];
    [v8 addObject:v14];
  }

  v15 = [v6 roisTrait];
  v16 = [v15 isMatchingRequired];

  if (v16)
  {
    v17 = [PGMeaningfulEventCollectionTrait alloc];
    v18 = [v6 roisTrait];
    v19 = [v18 nodes];
    v20 = [(PGMeaningfulEventCollectionTrait *)v17 initWithNodes:v19];

    [(PGMeaningfulEventTrait *)v20 setMinimumScore:0.00001];
    v21 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:v9 minimumScore:v7 graph:0.00001];
    [(PGMeaningfulEventCriteria *)v21 setRoisTrait:v20];
    [(PGMeaningfulEventRequiredCriteria *)v21 setMustBeInteresting:0];
    [v8 addObject:v21];
  }

  v22 = [v6 poisTrait];
  v23 = [v22 isMatchingRequired];

  if (v23)
  {
    v24 = [PGMeaningfulEventCollectionTrait alloc];
    v25 = [v6 poisTrait];
    v26 = [v25 nodes];
    v27 = [(PGMeaningfulEventCollectionTrait *)v24 initWithNodes:v26];

    [(PGMeaningfulEventTrait *)v27 setMinimumScore:0.00001];
    v28 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:v9 minimumScore:v7 graph:0.00001];
    [(PGMeaningfulEventCriteria *)v28 setPoisTrait:v27];
    [(PGMeaningfulEventRequiredCriteria *)v28 setMustBeInteresting:0];
    [v8 addObject:v28];
  }

  v29 = [v6 datesTrait];
  if ([v29 isMatchingRequired])
  {
    v30 = [v6 peopleTrait];
    v31 = [v30 isMatchingRequired];

    if (!v31)
    {
      goto LABEL_11;
    }

    v32 = [v6 datesTrait];
    v33 = [v32 nodes];
    v34 = [v33 set];
    v29 = [(PGMeaningQuestionFactory *)self _expandedDateNodesFromDateNodes:v34];

    v35 = [PGMeaningfulEventCollectionTrait alloc];
    v36 = [(MAElementCollection *)[PGGraphDateNodeCollection alloc] initWithSet:v29 graph:v7];
    v37 = [(PGMeaningfulEventCollectionTrait *)v35 initWithNodes:v36];

    [(PGMeaningfulEventTrait *)v37 setMinimumScore:0.00001];
    v38 = [PGMeaningfulEventCollectionTrait alloc];
    v39 = [v6 peopleTrait];
    v40 = [v39 nodes];
    v41 = [(PGMeaningfulEventCollectionTrait *)v38 initWithNodes:v40];

    [(PGMeaningfulEventTrait *)v41 setMinimumScore:0.00001];
    v42 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:v9 minimumScore:v7 graph:0.00001];
    [(PGMeaningfulEventCriteria *)v42 setDatesTrait:v37];
    [(PGMeaningfulEventCriteria *)v42 setPeopleTrait:v41];
    [(PGMeaningfulEventRequiredCriteria *)v42 setMustBeInteresting:0];
    [v8 addObject:v42];
  }

LABEL_11:
  v43 = [v6 socialGroupsTrait];
  v44 = [v43 isMatchingRequired];

  if (v44)
  {
    v45 = [PGMeaningfulEventCollectionTrait alloc];
    v46 = [v6 socialGroupsTrait];
    v47 = [v46 nodes];
    v48 = [(PGMeaningfulEventCollectionTrait *)v45 initWithNodes:v47];

    [(PGMeaningfulEventTrait *)v48 setMinimumScore:0.00001];
    v49 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:v9 minimumScore:v7 graph:0.00001];
    [(PGMeaningfulEventCriteria *)v49 setSocialGroupsTrait:v48];
    [(PGMeaningfulEventRequiredCriteria *)v49 setMustBeInteresting:0];
    [v8 addObject:v49];
  }

  v50 = [v6 locationMobilityTrait];
  v51 = [v50 isMatchingRequired];

  if (v51)
  {
    v52 = [PGMeaningfulEventLocationMobilityTrait alloc];
    v53 = [v6 locationMobilityTrait];
    v54 = -[PGMeaningfulEventLocationMobilityTrait initWithMobility:](v52, "initWithMobility:", [v53 value]);

    [(PGMeaningfulEventTrait *)v54 setMinimumScore:0.00001];
    v55 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:v9 minimumScore:v7 graph:0.00001];
    [(PGMeaningfulEventCriteria *)v55 setLocationMobilityTrait:v54];
    [(PGMeaningfulEventRequiredCriteria *)v55 setMustBeInteresting:0];
    [v8 addObject:v55];
  }

  v56 = [v6 publicEventCategoriesTrait];
  v57 = [v56 isMatchingRequired];

  if (v57)
  {
    v58 = [PGMeaningfulEventCollectionTrait alloc];
    v59 = [v6 publicEventCategoriesTrait];
    v60 = [v59 nodes];
    v61 = [(PGMeaningfulEventCollectionTrait *)v58 initWithNodes:v60];

    [(PGMeaningfulEventTrait *)v61 setMinimumScore:0.00001];
    v62 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:v9 minimumScore:v7 graph:0.00001];
    [(PGMeaningfulEventCriteria *)v62 setPublicEventCategoriesTrait:v61];
    [(PGMeaningfulEventRequiredCriteria *)v62 setMustBeInteresting:0];
    [v8 addObject:v62];
  }

  return v8;
}

- (id)_inferMeaningLabelsForMomentNode:(id)a3 meaningLabels:(id)a4 graph:(id)a5 sceneTaxonomy:(id)a6 cache:(id)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v12 = a4;
  v29 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(PGSurveyQuestionFactory *)self workingContext];
  v16 = [v15 serviceManager];

  v28 = [MEMORY[0x277CBEB58] set];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v12;
  v17 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        v35 = v21;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
        v23 = [PGMeaningfulEventLooseRequiredCriteriaFactory requiredCriteriaForIdentifiers:v22 graph:v29 sceneTaxonomy:v13];

        v24 = [PGMeaningfulEventProcessor processRequiredCriteria:v23 forMoment:v30 meaningfulEventProcessorCache:v14 serviceManager:v16];
        if ([v24 count])
        {
          [v28 addObject:v21];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v18);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v28;
}

- (NSSet)meaningLabelsForWhichToGenerateQuestions
{
  v10[24] = *MEMORY[0x277D85DE8];
  meaningLabelsForWhichToGenerateQuestions = self->_meaningLabelsForWhichToGenerateQuestions;
  if (!meaningLabelsForWhichToGenerateQuestions)
  {
    v4 = MEMORY[0x277CBEB98];
    v10[0] = @"Wedding";
    v10[1] = @"Birthday";
    v10[2] = @"Anniversary";
    v10[3] = @"Celebration";
    v10[4] = @"Concert";
    v10[5] = @"Festival";
    v10[6] = @"Theater";
    v10[7] = @"Dance";
    v10[8] = @"Museum";
    v10[9] = @"AmusementPark";
    v10[10] = @"Performance";
    v10[11] = @"Hiking";
    v10[12] = @"Climbing";
    v10[13] = @"Beaching";
    v10[14] = @"SportEvent";
    v10[15] = @"WinterSport";
    v10[16] = @"Diving";
    v10[17] = @"Lunch";
    v10[18] = @"Dinner";
    v10[19] = @"Breakfast";
    v10[20] = @"Restaurant";
    v10[21] = @"NightOut";
    v10[22] = @"Entertainment";
    v10[23] = @"HolidayEvent";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:24];
    v6 = [v4 setWithArray:v5];
    v7 = self->_meaningLabelsForWhichToGenerateQuestions;
    self->_meaningLabelsForWhichToGenerateQuestions = v6;

    meaningLabelsForWhichToGenerateQuestions = self->_meaningLabelsForWhichToGenerateQuestions;
  }

  v8 = *MEMORY[0x277D85DE8];

  return meaningLabelsForWhichToGenerateQuestions;
}

- (id)_questionsToAddFromMomentNodes:(id)a3 useRepresentativeAssets:(BOOL)a4 localFactoryScore:(double)a5 alreadyGeneratedQuestions:(id)a6 limit:(unint64_t)a7 graph:(id)a8 sceneTaxonomy:(id)a9 progressBlock:(id)a10
{
  v108 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v85 = a6;
  v79 = a8;
  v78 = a9;
  v15 = a10;
  v16 = _Block_copy(v15);
  v61 = [MEMORY[0x277CBEB98] set];
  v17 = 0.0;
  if (v16)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v99 = 0;
      v16[2](v16, &v99, 0.0);
      if (v99 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v105 = 225;
          v106 = 2080;
          v107 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v19 = v61;
        goto LABEL_82;
      }

      v17 = Current;
    }
  }

  v20 = [MEMORY[0x277CBEB58] set];
  v60 = v14;
  if ([v14 count])
  {
    v83 = [v85 count];
    v21 = objc_alloc(MEMORY[0x277D3C790]);
    v22 = [(PGSurveyQuestionFactory *)self workingContext];
    v23 = [v22 photoLibrary];
    v67 = [v21 initWithPhotoLibrary:v23];

    v24 = [PGMeaningfulEventProcessorCache alloc];
    v25 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithArray:v14 graph:v79];
    v77 = [(PGMeaningfulEventProcessorCache *)v24 initWithMomentNodes:v25];

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    obj = v14;
    v76 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
    if (v76)
    {
      v82 = 0;
      v70 = *v96;
      v26 = &selRef_assetIsSafeForWidgetDisplay_;
      v62 = v61;
      v59 = v15;
      while (2)
      {
        v27 = 0;
        v65 = v26[375];
        do
        {
          if (*v96 != v70)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v95 + 1) + 8 * v27);
          v29 = objc_autoreleasePoolPush();
          v30 = [(PGMeaningQuestionFactory *)self meaningLabelsForWhichToGenerateQuestions];
          v31 = [(PGMeaningQuestionFactory *)self _inferMeaningLabelsForMomentNode:v28 meaningLabels:v30 graph:v79 sceneTaxonomy:v78 cache:v77];
          if ([v31 count])
          {
            v80 = v27;
            context = v29;
            if (a4)
            {
              v32 = [(PGSurveyQuestionFactory *)self representativeAssetsFromMomentNode:v28 curationContext:v67];
              v33 = [v32 allObjects];
            }

            else
            {
              v33 = [(PGSurveyQuestionFactory *)self assetsFromMomentNode:v28 curationContext:v67];
            }

            v34 = 1;
            v35 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
            v102 = v35;
            v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];
            v37 = [v33 sortedArrayUsingDescriptors:v36];

            v38 = [v31 allObjects];
            v39 = [v38 sortedArrayUsingSelector:v65];

            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v40 = v37;
            v68 = [v40 countByEnumeratingWithState:&v91 objects:v101 count:16];
            if (v68)
            {
              v41 = *v92;
              v74 = v31;
              v75 = v30;
              v72 = v39;
              v73 = v33;
              v71 = v40;
              v64 = *v92;
              do
              {
                v42 = 0;
                do
                {
                  if (*v92 != v41)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v69 = v42;
                  v43 = *(*(&v91 + 1) + 8 * v42);
                  v87 = 0u;
                  v88 = 0u;
                  v89 = 0u;
                  v90 = 0u;
                  v44 = v39;
                  v45 = [v44 countByEnumeratingWithState:&v87 objects:v100 count:16];
                  if (!v45)
                  {
                    goto LABEL_41;
                  }

                  v46 = v45;
                  v47 = *v88;
                  while (2)
                  {
                    for (i = 0; i != v46; ++i)
                    {
                      if (*v88 != v47)
                      {
                        objc_enumerationMutation(v44);
                      }

                      v49 = *(*(&v87 + 1) + 8 * i);
                      v50 = [v43 uuid];
                      v51 = [[PGMeaningQuestion alloc] initWithMeaningLabel:v49 assetUUID:v50 localFactoryScore:a5];
                      if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v51 toAlreadyGeneratedQuestions:v85])
                      {
                        [v20 addObject:v51];
                      }

                      v52 = [v20 count];
                      if (v16)
                      {
                        v53 = v52;
                        v54 = CFAbsoluteTimeGetCurrent();
                        if (v54 - v17 >= 0.01)
                        {
                          v99 = 0;
                          v16[2](v16, &v99, v53 / a7);
                          if (v99 | v82 & 1)
                          {
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                            {
                              *buf = 67109378;
                              v105 = 263;
                              v106 = 2080;
                              v107 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
                              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                            }

                            v62 = v61;
                            v82 = 1;
                            goto LABEL_56;
                          }

                          v82 = 0;
                        }

                        else
                        {
                          v54 = v17;
                        }

                        if ([v20 count] + v83 >= a7)
                        {
                          v17 = CFAbsoluteTimeGetCurrent();
                          if (v17 - v54 < 0.01)
                          {
                            v17 = v54;
                            goto LABEL_54;
                          }

                          v99 = 0;
                          v16[2](v16, &v99, 1.0);
                          if (v99 | v82 & 1)
                          {
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                            {
                              *buf = 67109378;
                              v105 = 267;
                              v106 = 2080;
                              v107 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
                              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                            }

                            v62 = v61;
                            v82 = 1;
                          }

                          else
                          {
                            v82 = 0;
LABEL_54:
                            v62 = v20;
                          }

                          v54 = v17;
LABEL_56:
                          v31 = v74;
                          v30 = v75;
                          v39 = v72;
                          v33 = v73;
                          v40 = v71;

                          v34 = 0;
                          v17 = v54;
                          goto LABEL_57;
                        }

                        v17 = v54;
                      }

                      else if ([v20 count] + v83 >= a7)
                      {
                        goto LABEL_54;
                      }
                    }

                    v46 = [v44 countByEnumeratingWithState:&v87 objects:v100 count:16];
                    if (v46)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_41:

                  v42 = v69 + 1;
                  v31 = v74;
                  v30 = v75;
                  v39 = v72;
                  v33 = v73;
                  v40 = v71;
                  v41 = v64;
                }

                while (v69 + 1 != v68);
                v34 = 1;
                v68 = [v71 countByEnumeratingWithState:&v91 objects:v101 count:16];
              }

              while (v68);
            }

LABEL_57:

            if (!v34)
            {

              objc_autoreleasePoolPop(context);
              v15 = v59;
              goto LABEL_80;
            }

            v27 = v80;
            v29 = context;
          }

          objc_autoreleasePoolPop(v29);
          ++v27;
        }

        while (v27 != v76);
        v15 = v59;
        v76 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
        v26 = &selRef_assetIsSafeForWidgetDisplay_;
        if (v76)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v82 = 0;
    }

    if (v16 && CFAbsoluteTimeGetCurrent() - v17 >= 0.01 && (v99 = 0, v16[2](v16, &v99, 1.0), v99 | v82 & 1))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v105 = 275;
        v106 = 2080;
        v107 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v56 = v61;
    }

    else
    {
      v56 = v20;
    }

    v62 = v56;
LABEL_80:
  }

  else
  {
    if (v16 && CFAbsoluteTimeGetCurrent() - v17 >= 0.01 && (v99 = 0, v16[2](v16, &v99, 1.0), v99))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v105 = 232;
        v106 = 2080;
        v107 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v55 = v61;
    }

    else
    {
      v55 = [MEMORY[0x277CBEB98] set];
    }

    v62 = v55;
  }

  v14 = v60;
  v19 = v62;
LABEL_82:

  v57 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_meaningLabelsByParentMeaningLabels
{
  v18[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v16 = @"Wedding";
  v17[0] = @"Celebration";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v4 = [v2 setWithArray:v3];
  v18[0] = v4;
  v17[1] = @"Entertainment";
  v5 = MEMORY[0x277CBEB98];
  v15[0] = @"AmusementPark";
  v15[1] = @"Festival";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v7 = [v5 setWithArray:v6];
  v18[1] = v7;
  v17[2] = @"Performance";
  v8 = MEMORY[0x277CBEB98];
  v14 = @"Concert";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v10 = [v8 setWithArray:v9];
  v18[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_updateMeaningQuestionsIfNeededWithProgressBlock:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  aBlock = a3;
  v4 = [(PGSurveyQuestionFactory *)self existingQuestionsByEntityIdentifier];
  v5 = [v4 count];

  if (v5)
  {
    v6 = _Block_copy(aBlock);
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    if (v6 && (v7 = CFAbsoluteTimeGetCurrent(), v7 - v54[3] >= 0.01) && (v54[3] = v7, LOBYTE(v61) = 0, (*(v6 + 2))(v6, &v61, 0.0), v8 = *(v58 + 24) | v61, *(v58 + 24) = v8, (v8 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 0x7504000202;
        LOWORD(v64) = 2080;
        *(&v64 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }
    }

    else
    {
      buf = 0;
      *&v64 = &buf;
      *(&v64 + 1) = 0x2020000000;
      v65 = 0;
      v9 = [(PGMeaningQuestionFactory *)self _meaningLabelsByParentMeaningLabels];
      v10 = MEMORY[0x277CBEB98];
      v11 = [v9 allKeys];
      v12 = [v10 setWithArray:v11];

      v13 = [MEMORY[0x277CBEB18] array];
      v14 = [MEMORY[0x277CBEB18] array];
      v15 = [(PGSurveyQuestionFactory *)self existingQuestionsByEntityIdentifier];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __77__PGMeaningQuestionFactory__updateMeaningQuestionsIfNeededWithProgressBlock___block_invoke;
      v42[3] = &unk_278885550;
      p_buf = &buf;
      v51 = 1.0 / v5;
      v16 = v6;
      v47 = v16;
      v52 = 0x3F847AE147AE147BLL;
      v49 = &v53;
      v50 = &v57;
      v17 = v12;
      v43 = v17;
      v18 = v9;
      v44 = v18;
      v19 = v13;
      v45 = v19;
      v20 = v14;
      v46 = v20;
      [v15 enumerateKeysAndObjectsUsingBlock:v42];

      if (*(v58 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v61 = 67109378;
          LODWORD(v62[0]) = 171;
          WORD2(v62[0]) = 2080;
          *(v62 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v61, 0x12u);
        }
      }

      else if ([v20 count] || objc_msgSend(v19, "count"))
      {
        v21 = [(PGSurveyQuestionFactory *)self workingContext];
        v33 = [v21 photoLibrary];

        v22 = [MEMORY[0x277CBEAA8] date];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __77__PGMeaningQuestionFactory__updateMeaningQuestionsIfNeededWithProgressBlock___block_invoke_264;
        v37[3] = &unk_278889470;
        v38 = v20;
        v23 = v22;
        v39 = v23;
        v40 = self;
        v41 = v19;
        v36 = 0;
        v24 = [v33 performChangesAndWait:v37 error:&v36];
        v32 = v36;
        if (v24)
        {
          v25 = +[PGLogging sharedLogging];
          v26 = [v25 loggingConnection];

          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            LOWORD(v61) = 0;
            _os_log_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_INFO, "[Questions] Succeeded persisting meaning questions", &v61, 2u);
          }
        }

        else
        {
          v27 = +[PGLogging sharedLogging];
          v26 = [v27 loggingConnection];

          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v31 = [v32 description];
            v61 = 138412290;
            v62[0] = v31;
            _os_log_error_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_ERROR, "[Questions] Error performing library changes for meaning questions: %@", &v61, 0xCu);
          }
        }

        if (v6)
        {
          Current = CFAbsoluteTimeGetCurrent();
          if (Current - v54[3] >= 0.01)
          {
            v54[3] = Current;
            v35 = 0;
            (*(v16 + 2))(v16, &v35, 1.0);
            v29 = *(v58 + 24) | v35;
            *(v58 + 24) = v29;
            if ((v29 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v61 = 67109378;
              LODWORD(v62[0]) = 204;
              WORD2(v62[0]) = 2080;
              *(v62 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v61, 0x12u);
            }
          }
        }
      }

      _Block_object_dispose(&buf, 8);
    }

    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(&v57, 8);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __77__PGMeaningQuestionFactory__updateMeaningQuestionsIfNeededWithProgressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  *(*(*(a1 + 72) + 8) + 24) = *(a1 + 96) + *(*(*(a1 + 72) + 8) + 24);
  if (*(a1 + 64) && (Current = CFAbsoluteTimeGetCurrent(), v10 = *(*(a1 + 80) + 8), Current - *(v10 + 24) >= *(a1 + 104)) && (*(v10 + 24) = Current, v36 = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
  {
    *a4 = 1;
  }

  else
  {
    v24 = v7;
    v11 = [MEMORY[0x277CBEB58] set];
    v25 = [MEMORY[0x277CBEB38] dictionary];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      v16 = *MEMORY[0x277D3C948];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          v19 = [v18 additionalInfo];
          v20 = [v19 objectForKeyedSubscript:v16];

          if (v20)
          {
            if ([v18 state] == 2)
            {
              [v11 addObject:v20];
            }

            else if ([*(a1 + 32) containsObject:v20])
            {
              [v25 setObject:v18 forKeyedSubscript:v20];
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v14);
    }

    v7 = v24;
    if ([v11 count])
    {
      v21 = *(a1 + 40);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __77__PGMeaningQuestionFactory__updateMeaningQuestionsIfNeededWithProgressBlock___block_invoke_2;
      v26[3] = &unk_278885528;
      v27 = v11;
      v28 = v25;
      v29 = *(a1 + 48);
      v30 = v24;
      v31 = *(a1 + 56);
      [v21 enumerateKeysAndObjectsUsingBlock:v26];
    }

    v8 = v23;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __77__PGMeaningQuestionFactory__updateMeaningQuestionsIfNeededWithProgressBlock___block_invoke_264(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v18 + 1) + 8 * v6++) persistWithCreationDate:*(a1 + 40) questionVersion:{objc_msgSend(*(a1 + 48), "questionVersion")}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = *(a1 + 56);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [MEMORY[0x277CD9978] changeRequestForQuestion:{*(*(&v14 + 1) + 8 * v11), v14}];
        [v12 setState:2];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __77__PGMeaningQuestionFactory__updateMeaningQuestionsIfNeededWithProgressBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v8] & 1) == 0 && objc_msgSend(*(a1 + 32), "intersectsSet:", v5))
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:v8];
    if (v6)
    {
      [*(a1 + 48) addObject:v6];
    }

    else
    {
      v7 = [[PGMeaningQuestion alloc] initWithConfirmedMeaningLabel:v8 assetUUID:*(a1 + 56)];
      [*(a1 + 64) addObject:v7];
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
  v15 = __69__PGMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
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

void __69__PGMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _Block_copy(*(a1 + 48));
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  if (!v4 || (v5 = CFAbsoluteTimeGetCurrent(), v5 - v59[3] < 0.01) || (v59[3] = v5, v66[0] = 0, (*(v4 + 2))(v4, v66, 0.0), v6 = *(v63 + 24) | v66[0], *(v63 + 24) = v6, (v6 & 1) == 0))
  {
    *buf = 0;
    *&v71 = buf;
    *(&v71 + 1) = 0x2020000000;
    v72 = 0;
    if (([*(a1 + 32) ignoreExistingQuestions] & 1) == 0)
    {
      v7 = *(a1 + 32);
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __69__PGMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_251;
      v52[3] = &unk_278885500;
      v54 = buf;
      v53 = v4;
      v55 = &v58;
      v56 = &v62;
      v57 = 0x3F847AE147AE147BLL;
      [v7 _updateMeaningQuestionsIfNeededWithProgressBlock:v52];
    }

    if (*(v63 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_47:
        _Block_object_dispose(buf, 8);
        goto LABEL_48;
      }

      *v66 = 67109378;
      v67 = 63;
      v68 = 2080;
      v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
      v8 = MEMORY[0x277D86220];
LABEL_11:
      _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v66, 0x12u);
      goto LABEL_47;
    }

    if (!*(a1 + 56))
    {
      if (!v4)
      {
        goto LABEL_47;
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v59[3] < 0.01)
      {
        goto LABEL_47;
      }

      v59[3] = Current;
      v51 = 0;
      (*(v4 + 2))(v4, &v51, 1.0);
      v20 = *(v63 + 24) | v51;
      *(v63 + 24) = v20;
      if ((v20 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_47;
      }

      *v66 = 67109378;
      v67 = 67;
      v68 = 2080;
      v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
      v8 = MEMORY[0x277D86220];
      goto LABEL_11;
    }

    v9 = [v3 graph];
    v37 = [objc_alloc(MEMORY[0x277D3C7B8]) initForSceneNetOnly:1];
    v10 = [v9 meaningfulMomentNodesSortedByDate];
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 56);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __69__PGMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_254;
    v45[3] = &unk_278885500;
    v47 = buf;
    v14 = v4;
    v46 = v14;
    v48 = &v58;
    v49 = &v62;
    v50 = 0x3F847AE147AE147BLL;
    v38 = v10;
    v15 = v13;
    v16 = v37;
    v17 = [v11 _questionsToAddFromMomentNodes:v10 useRepresentativeAssets:1 localFactoryScore:v12 alreadyGeneratedQuestions:v15 limit:v9 graph:v37 sceneTaxonomy:1.0 progressBlock:v45];
    if (*(v63 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v66 = 67109378;
        v67 = 80;
        v68 = 2080;
        v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
        v18 = MEMORY[0x277D86220];
LABEL_16:
        _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v66, 0x12u);
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    [*(a1 + 40) unionSet:v17];
    v21 = [*(a1 + 40) count];
    v22 = *(a1 + 56);
    if (v21 >= v22)
    {
      v28 = v10;
      if (!v4)
      {
        v16 = v37;
        goto LABEL_46;
      }

      v30 = CFAbsoluteTimeGetCurrent();
      v16 = v37;
      if (v30 - v59[3] >= 0.01)
      {
        v59[3] = v30;
        v51 = 0;
        (*(v14 + 2))(v14, &v51, 1.0);
        v31 = *(v63 + 24) | v51;
        *(v63 + 24) = v31;
        if ((v31 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v66 = 67109378;
          v67 = 84;
          v68 = 2080;
          v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
          v18 = MEMORY[0x277D86220];
          goto LABEL_16;
        }
      }

LABEL_32:
      v28 = v10;
LABEL_46:

      goto LABEL_47;
    }

    v24 = *(a1 + 32);
    v23 = *(a1 + 40);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __69__PGMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_255;
    v39[3] = &unk_278885500;
    v41 = buf;
    v25 = v14;
    v40 = v25;
    v42 = &v58;
    v43 = &v62;
    v44 = 0x3F847AE147AE147BLL;
    v26 = v22;
    v16 = v37;
    v27 = [v24 _questionsToAddFromMomentNodes:v38 useRepresentativeAssets:0 localFactoryScore:v23 alreadyGeneratedQuestions:v26 limit:v9 graph:v37 sceneTaxonomy:0.5 progressBlock:v39];

    v28 = v38;
    if (*(v63 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_45:

        v17 = v27;
        goto LABEL_46;
      }

      *v66 = 67109378;
      v67 = 92;
      v68 = 2080;
      v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
      v29 = MEMORY[0x277D86220];
    }

    else
    {
      [*(a1 + 40) unionSet:v27];
      if ([*(a1 + 40) count] >= *(a1 + 56))
      {
        v28 = v38;
        if (!v4)
        {
          goto LABEL_45;
        }

        v34 = CFAbsoluteTimeGetCurrent();
        if (v34 - v59[3] < 0.01)
        {
          goto LABEL_45;
        }

        v59[3] = v34;
        v51 = 0;
        (*(v25 + 2))(v25, &v51, 1.0);
        v35 = *(v63 + 24) | v51;
        *(v63 + 24) = v35;
        if ((v35 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_45;
        }

        *v66 = 67109378;
        v67 = 96;
        v68 = 2080;
        v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
        v29 = MEMORY[0x277D86220];
      }

      else
      {
        v28 = v38;
        if (!v4)
        {
          goto LABEL_45;
        }

        v32 = CFAbsoluteTimeGetCurrent();
        if (v32 - v59[3] < 0.01)
        {
          goto LABEL_45;
        }

        v59[3] = v32;
        v51 = 0;
        (*(v25 + 2))(v25, &v51, 1.0);
        v33 = *(v63 + 24) | v51;
        *(v63 + 24) = v33;
        if ((v33 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_45;
        }

        *v66 = 67109378;
        v67 = 100;
        v68 = 2080;
        v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
        v29 = MEMORY[0x277D86220];
      }
    }

    _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v66, 0x12u);
    goto LABEL_45;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 53;
    LOWORD(v71) = 2080;
    *(&v71 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_48:
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);

  v36 = *MEMORY[0x277D85DE8];
}

void __69__PGMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_251(uint64_t a1, _BYTE *a2, double a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a3 * 0.2;
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

void __69__PGMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_254(uint64_t a1, _BYTE *a2, double a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a3 * 0.2 + 0.2;
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

void __69__PGMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_255(uint64_t a1, _BYTE *a2, double a3)
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