@interface PGPersonActivityMeaningQuestionFactory
- (NSSet)personActivityMeaningLabelsForWhichToGenerateQuestions;
- (id)_questionsToAddFromMomentNodes:(id)nodes localFactoryScore:(double)score alreadyGeneratedQuestions:(id)questions limit:(unint64_t)limit graph:(id)graph progressBlock:(id)block;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGPersonActivityMeaningQuestionFactory

- (NSSet)personActivityMeaningLabelsForWhichToGenerateQuestions
{
  v10[6] = *MEMORY[0x277D85DE8];
  personActivityMeaningLabelsForWhichToGenerateQuestions = self->_personActivityMeaningLabelsForWhichToGenerateQuestions;
  if (!personActivityMeaningLabelsForWhichToGenerateQuestions)
  {
    v4 = MEMORY[0x277CBEB98];
    v10[0] = @"PersonBeachWater";
    v10[1] = @"PersonToys";
    v10[2] = @"PersonPlayground";
    v10[3] = @"PersonActionSwimming";
    v10[4] = @"PersonActionPlayingOnASwing";
    v10[5] = @"PersonActionPlayingOnASlide";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:6];
    v6 = [v4 setWithArray:v5];
    v7 = self->_personActivityMeaningLabelsForWhichToGenerateQuestions;
    self->_personActivityMeaningLabelsForWhichToGenerateQuestions = v6;

    personActivityMeaningLabelsForWhichToGenerateQuestions = self->_personActivityMeaningLabelsForWhichToGenerateQuestions;
  }

  v8 = *MEMORY[0x277D85DE8];

  return personActivityMeaningLabelsForWhichToGenerateQuestions;
}

- (id)_questionsToAddFromMomentNodes:(id)nodes localFactoryScore:(double)score alreadyGeneratedQuestions:(id)questions limit:(unint64_t)limit graph:(id)graph progressBlock:(id)block
{
  v71 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  questionsCopy = questions;
  graphCopy = graph;
  v13 = _Block_copy(block);
  v42 = [MEMORY[0x277CBEB98] set];
  v14 = 0.0;
  if (v13)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v64 = 0;
      v13[2](v13, &v64, 0.0);
      if (v64 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v68 = 85;
          v69 = 2080;
          v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v16 = v42;
        goto LABEL_70;
      }

      v14 = Current;
    }
  }

  v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (![nodesCopy count])
  {
    if (!v13 || CFAbsoluteTimeGetCurrent() - v14 < 0.01 || (v64 = 0, v13[2](v13, &v64, 1.0), !v64))
    {
      v38 = [MEMORY[0x277CBEB98] set];
      goto LABEL_68;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_66;
    }

    *buf = 67109378;
    v68 = 91;
    v69 = 2080;
    v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
    v37 = MEMORY[0x277D86220];
    goto LABEL_65;
  }

  v18 = [questionsCopy count];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [(PGPersonActivityMeaningQuestionFactory *)self personActivityMeaningLabelsForWhichToGenerateQuestions];
  v47 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v47)
  {
    v52 = 0;
    v46 = *v61;
    *&v19 = 67109378;
    v41 = v19;
    v44 = nodesCopy;
    v45 = v42;
    while (2)
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v61 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v60 + 1) + 8 * i);
        v22 = [PGGraphPersonActivityMeaningNodeCollection personActivityMeaningNodesForActivityLabel:v21 inGraph:graphCopy, v41];
        featureNodeCollection = [v22 featureNodeCollection];
        v24 = [PGGraphMomentFeaturesEdgeCollection momentFeaturesEdgesFromMomentNodes:nodesCopy toFeatureNodes:featureNodeCollection];

        v51 = v24;
        allRelevantAssetUUIDs = [v24 allRelevantAssetUUIDs];
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v26 = allRelevantAssetUUIDs;
        v27 = [v26 countByEnumeratingWithState:&v56 objects:v65 count:16];
        if (v27)
        {
          v28 = v27;
          v49 = v22;
          v50 = i;
          v29 = *v57;
LABEL_16:
          v30 = 0;
          while (1)
          {
            if (*v57 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = [[PGPersonActivityMeaningQuestion alloc] initWithMeaningLabel:v21 assetUUID:*(*(&v56 + 1) + 8 * v30) localFactoryScore:score];
            if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v31 toAlreadyGeneratedQuestions:questionsCopy])
            {
              [v17 addObject:v31];
            }

            v32 = [v17 count];
            if (v13)
            {
              v33 = v32;
              v34 = CFAbsoluteTimeGetCurrent();
              if (v34 - v14 >= 0.01)
              {
                v64 = 0;
                v13[2](v13, &v64, v33 / limit);
                if (v64 | v52 & 1)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = v41;
                    v68 = 110;
                    v69 = 2080;
                    v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  v45 = v42;
                  v52 = 1;
                  goto LABEL_47;
                }

                v52 = 0;
              }

              else
              {
                v34 = v14;
              }

              if ([v17 count] + v18 >= limit)
              {
                v14 = CFAbsoluteTimeGetCurrent();
                if (v14 - v34 < 0.01)
                {
                  v14 = v34;
                  goto LABEL_45;
                }

                v64 = 0;
                v13[2](v13, &v64, 1.0);
                if (v64 | v52 & 1)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = v41;
                    v68 = 113;
                    v69 = 2080;
                    v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  v45 = v42;
                  v52 = 1;
                }

                else
                {
                  v52 = 0;
LABEL_45:
                  v45 = v17;
                }

                v34 = v14;
LABEL_47:
                nodesCopy = v44;
                i = v50;
                v36 = v51;

                v35 = 0;
                v14 = v34;
                v22 = v49;
                goto LABEL_48;
              }

              v14 = v34;
            }

            else if ([v17 count] + v18 >= limit)
            {
              goto LABEL_45;
            }

            if (v28 == ++v30)
            {
              v28 = [v26 countByEnumeratingWithState:&v56 objects:v65 count:16];
              if (v28)
              {
                goto LABEL_16;
              }

              v35 = 1;
              nodesCopy = v44;
              v22 = v49;
              i = v50;
              goto LABEL_34;
            }
          }
        }

        v35 = 1;
LABEL_34:
        v36 = v51;
LABEL_48:

        if (!v35)
        {

          v16 = v45;
          goto LABEL_69;
        }
      }

      v47 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
      if (v47)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v52 = 0;
  }

  if (v13)
  {
    if (CFAbsoluteTimeGetCurrent() - v14 >= 0.01)
    {
      v64 = 0;
      v13[2](v13, &v64, 1.0);
      if (v64 | v52 & 1)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_66:
          v38 = v42;
          goto LABEL_68;
        }

        *buf = 67109378;
        v68 = 119;
        v69 = 2080;
        v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
        v37 = MEMORY[0x277D86220];
LABEL_65:
        _os_log_impl(&dword_22F0FC000, v37, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_66;
      }
    }
  }

  v38 = v17;
LABEL_68:
  v16 = v38;
LABEL_69:

LABEL_70:
  v39 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  blockCopy = block;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __83__PGPersonActivityMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
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

void __83__PGPersonActivityMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _Block_copy(*(a1 + 48));
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v31 = v4;
  if (!v4)
  {
    v7 = (a1 + 56);
    if (!*(a1 + 56))
    {
      goto LABEL_33;
    }

    goto LABEL_13;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current - v39[3] < 0.01)
  {
    if (v43[3])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v47 = 48;
        v48 = 2080;
        v49 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
        v6 = MEMORY[0x277D86220];
LABEL_11:
        _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_33;
      }

      goto LABEL_33;
    }

    goto LABEL_12;
  }

  v39[3] = Current;
  v37 = 0;
  (v31)[2](v31, &v37, 0.0);
  v8 = *(v43 + 24) | v37;
  *(v43 + 24) = v8;
  if ((v8 & 1) == 0)
  {
LABEL_12:
    v7 = (a1 + 56);
    if (!*(a1 + 56))
    {
      v24 = CFAbsoluteTimeGetCurrent();
      if (v24 - v39[3] >= 0.01)
      {
        v39[3] = v24;
        v37 = 0;
        (v31)[2](v31, &v37, 1.0);
        v25 = *(v43 + 24) | v37;
        *(v43 + 24) = v25;
        if ((v25 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v47 = 51;
          v48 = 2080;
          v49 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
          v6 = MEMORY[0x277D86220];
          goto LABEL_11;
        }
      }

      goto LABEL_33;
    }

LABEL_13:
    v9 = [v3 graph];
    v10 = +[PGMeaningfulEventRequiredCriteriaFactory availablePersonActivityMeaningLabels];
    v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
    v12 = [PGGraphPersonActivityMeaningNodeCollection personActivityMeaningNodesForActivityLabels:v11 inGraph:v9];

    v30 = v10;
    v13 = v3;
    v14 = v12;
    v15 = [v12 momentNodes];
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = *(a1 + 56);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __83__PGPersonActivityMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_254;
    v32[3] = &unk_27888A188;
    v29 = v31;
    v33 = v29;
    v34 = &v38;
    v35 = &v42;
    v36 = 0x3F847AE147AE147BLL;
    v19 = [v16 _questionsToAddFromMomentNodes:v15 localFactoryScore:v17 alreadyGeneratedQuestions:v18 limit:v9 graph:v32 progressBlock:1.0];
    if (*(v43 + 24) == 1)
    {
      v3 = v13;
      v20 = v30;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_32:

        goto LABEL_33;
      }

      *buf = 67109378;
      v47 = 65;
      v48 = 2080;
      v49 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
      v21 = MEMORY[0x277D86220];
    }

    else
    {
      [*(a1 + 40) unionSet:v19];
      v3 = v13;
      if ([*(a1 + 40) count] >= *v7)
      {
        v20 = v30;
        if (!v31)
        {
          goto LABEL_32;
        }

        v26 = CFAbsoluteTimeGetCurrent();
        if (v26 - v39[3] < 0.01)
        {
          goto LABEL_32;
        }

        v39[3] = v26;
        v37 = 0;
        (*(v29 + 2))(v29, &v37, 1.0);
        v27 = *(v43 + 24) | v37;
        *(v43 + 24) = v27;
        if ((v27 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_32;
        }

        *buf = 67109378;
        v47 = 68;
        v48 = 2080;
        v49 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
        v21 = MEMORY[0x277D86220];
      }

      else
      {
        v20 = v30;
        if (!v31)
        {
          goto LABEL_32;
        }

        v22 = CFAbsoluteTimeGetCurrent();
        if (v22 - v39[3] < 0.01)
        {
          goto LABEL_32;
        }

        v39[3] = v22;
        v37 = 0;
        (*(v29 + 2))(v29, &v37, 1.0);
        v23 = *(v43 + 24) | v37;
        *(v43 + 24) = v23;
        if ((v23 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_32;
        }

        *buf = 67109378;
        v47 = 72;
        v48 = 2080;
        v49 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
        v21 = MEMORY[0x277D86220];
      }
    }

    _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v47 = 47;
    v48 = 2080;
    v49 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
    v6 = MEMORY[0x277D86220];
    goto LABEL_11;
  }

LABEL_33:
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  v28 = *MEMORY[0x277D85DE8];
}

void __83__PGPersonActivityMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_254(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

@end