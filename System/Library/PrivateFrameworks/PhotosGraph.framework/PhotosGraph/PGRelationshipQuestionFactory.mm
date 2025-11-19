@interface PGRelationshipQuestionFactory
+ (id)displayStringForRelationshipLabel:(id)a3;
+ (id)initialQuestionRelationshipLabelByRelationship;
+ (id)localFactoryScoreByRelationshipLabels;
+ (id)relationshipLabelsRequiringInitialQuestion;
+ (id)relationshipTypesByRelationshipLabel;
+ (unint64_t)relationshipTagForRelatationshipType:(unint64_t)a3;
- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4;
- (id)initialQuestionForRelationshipLabel:(id)a3;
- (void)updateInitialQuestion:(id)a3;
- (void)updateOutdatedAnsweredYesChildRelationshipQuestionsIfNeeded;
@end

@implementation PGRelationshipQuestionFactory

+ (id)displayStringForRelationshipLabel:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CHILD"])
  {
    v4 = @"👶";
  }

  else if ([v3 isEqualToString:@"SIBLING"])
  {
    v4 = @"👧 👦";
  }

  else
  {
    v4 = &stru_2843F5C58;
  }

  return v4;
}

+ (id)relationshipLabelsRequiringInitialQuestion
{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"CHILD";
  v7[1] = @"DAUGHTER";
  v7[2] = @"SON";
  v7[3] = @"SIBLING";
  v7[4] = @"SISTER";
  v7[5] = @"BROTHER";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:6];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (unint64_t)relationshipTagForRelatationshipType:(unint64_t)a3
{
  if (a3 > 0x11)
  {
    return 10;
  }

  else
  {
    return qword_22F78CD80[a3];
  }
}

+ (id)localFactoryScoreByRelationshipLabels
{
  v45[13] = *MEMORY[0x277D85DE8];
  v42[0] = &unk_2844847B8;
  v42[1] = &unk_2844847D0;
  v43[0] = &unk_2844871D8;
  v43[1] = &unk_2844871E8;
  v44[0] = @"PARTNER";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v45[0] = v17;
  v44[1] = @"FAMILY";
  v40[0] = &unk_2844847B8;
  v40[1] = &unk_2844847D0;
  v41[0] = &unk_2844871F8;
  v41[1] = &unk_284487208;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
  v45[1] = v16;
  v44[2] = @"CHILD";
  v38[0] = &unk_2844847B8;
  v38[1] = &unk_2844847D0;
  v39[0] = &unk_2844871E8;
  v39[1] = &unk_284487218;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v45[2] = v15;
  v44[3] = @"SON";
  v36[0] = &unk_2844847B8;
  v36[1] = &unk_2844847D0;
  v37[0] = &unk_284487218;
  v37[1] = &unk_284487228;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v45[3] = v14;
  v44[4] = @"DAUGHTER";
  v34[0] = &unk_2844847B8;
  v34[1] = &unk_2844847D0;
  v35[0] = &unk_284487218;
  v35[1] = &unk_284487228;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  v45[4] = v13;
  v44[5] = @"FRIEND";
  v32[0] = &unk_2844847B8;
  v32[1] = &unk_2844847D0;
  v33[0] = &unk_284487238;
  v33[1] = &unk_284487248;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v45[5] = v12;
  v44[6] = @"PARENT";
  v30[0] = &unk_2844847B8;
  v30[1] = &unk_2844847D0;
  v31[0] = &unk_284487258;
  v31[1] = &unk_284487248;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v45[6] = v2;
  v44[7] = @"FATHER";
  v28[0] = &unk_2844847B8;
  v28[1] = &unk_2844847D0;
  v29[0] = &unk_284487268;
  v29[1] = &unk_284487268;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v45[7] = v3;
  v44[8] = @"MOTHER";
  v26[0] = &unk_2844847B8;
  v26[1] = &unk_2844847D0;
  v27[0] = &unk_284487268;
  v27[1] = &unk_284487268;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v45[8] = v4;
  v44[9] = @"SIBLING";
  v24[0] = &unk_2844847B8;
  v24[1] = &unk_2844847D0;
  v25[0] = &unk_284487278;
  v25[1] = &unk_284487288;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v45[9] = v5;
  v44[10] = @"BROTHER";
  v22[0] = &unk_2844847B8;
  v22[1] = &unk_2844847D0;
  v23[0] = &unk_284487298;
  v23[1] = &unk_2844872A8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v45[10] = v6;
  v44[11] = @"SISTER";
  v20[0] = &unk_2844847B8;
  v20[1] = &unk_2844847D0;
  v21[0] = &unk_284487298;
  v21[1] = &unk_2844872A8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v45[11] = v7;
  v44[12] = @"COWORKER";
  v18[0] = &unk_2844847B8;
  v18[1] = &unk_2844847D0;
  v19[0] = &unk_2844872B8;
  v19[1] = &unk_2844872C8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v45[12] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:13];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)relationshipTypesByRelationshipLabel
{
  v6[13] = *MEMORY[0x277D85DE8];
  v5[0] = @"FAMILY";
  v5[1] = @"PARENT";
  v6[0] = &unk_284486720;
  v6[1] = &unk_284486738;
  v5[2] = @"FATHER";
  v5[3] = @"MOTHER";
  v6[2] = &unk_284486750;
  v6[3] = &unk_284486768;
  v5[4] = @"CHILD";
  v5[5] = @"SON";
  v6[4] = &unk_284486780;
  v6[5] = &unk_284486798;
  v5[6] = @"DAUGHTER";
  v5[7] = @"FRIEND";
  v6[6] = &unk_2844867B0;
  v6[7] = &unk_2844867C8;
  v5[8] = @"COWORKER";
  v5[9] = @"PARTNER";
  v6[8] = &unk_2844867E0;
  v6[9] = &unk_2844867F8;
  v5[10] = @"SIBLING";
  v5[11] = @"SISTER";
  v6[10] = &unk_284486810;
  v6[11] = &unk_284486828;
  v5[12] = @"BROTHER";
  v6[12] = &unk_284486840;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:13];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)initialQuestionRelationshipLabelByRelationship
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = @"SIBLING";
  v5[1] = @"SISTER";
  v6[0] = @"SIBLING";
  v6[1] = @"SIBLING";
  v5[2] = @"BROTHER";
  v5[3] = @"SON";
  v6[2] = @"SIBLING";
  v6[3] = @"CHILD";
  v5[4] = @"DAUGHTER";
  v5[5] = @"CHILD";
  v6[4] = @"CHILD";
  v6[5] = @"CHILD";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)updateOutdatedAnsweredYesChildRelationshipQuestionsIfNeeded
{
  v47[3] = *MEMORY[0x277D85DE8];
  v2 = [(PGSurveyQuestionFactory *)self workingContext];
  v3 = [v2 photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %d", @"type", 5];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %d", @"entityType", 1];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %d", @"state", 2];
  v8 = MEMORY[0x277CCA920];
  v30 = v7;
  v31 = v6;
  v47[0] = v7;
  v47[1] = v6;
  v32 = v5;
  v47[2] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
  v10 = [v8 andPredicateWithSubpredicates:v9];
  [v4 setPredicate:v10];

  v33 = v4;
  v11 = [MEMORY[0x277CD9970] fetchQuestionsWithOptions:v4 validQuestionsOnly:0];
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v41;
    v15 = *MEMORY[0x277D3C9B0];
    v35 = *MEMORY[0x277D3C8B8];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = [v17 additionalInfo];
        v20 = [v19 objectForKeyedSubscript:v15];
        if ([v20 isEqualToString:@"CHILD"])
        {
          v21 = [v19 objectForKeyedSubscript:v35];

          if (!v21)
          {
            [v34 addObject:v17];
          }
        }

        objc_autoreleasePoolPop(v18);
      }

      v13 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v13);
  }

  if ([v34 count])
  {
    v22 = [(PGSurveyQuestionFactory *)self workingContext];
    v23 = [v22 photoLibrary];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __92__PGRelationshipQuestionFactory_updateOutdatedAnsweredYesChildRelationshipQuestionsIfNeeded__block_invoke;
    v38[3] = &unk_27888A660;
    v39 = v34;
    v37 = 0;
    v24 = [v23 performChangesAndWait:v38 error:&v37];
    v25 = v37;

    if ((v24 & 1) == 0)
    {
      v26 = +[PGLogging sharedLogging];
      v27 = [v26 loggingConnection];

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v45 = v25;
        _os_log_error_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_ERROR, "[Questions] Failed to perform library changes for relationship inital question with error: %@", buf, 0xCu);
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __92__PGRelationshipQuestionFactory_updateOutdatedAnsweredYesChildRelationshipQuestionsIfNeeded__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x277CD9978] changeRequestForQuestion:{*(*(&v9 + 1) + 8 * v5), v9}];
        [v6 setState:0];
        v7 = [MEMORY[0x277CBEAA8] date];
        [v6 setCreationDate:v7];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateInitialQuestion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGSurveyQuestionFactory *)self workingContext];
  v6 = [v5 photoLibrary];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__PGRelationshipQuestionFactory_updateInitialQuestion___block_invoke;
  v14[3] = &unk_27888A660;
  v7 = v4;
  v15 = v7;
  v13 = 0;
  v8 = [v6 performChangesAndWait:v14 error:&v13];
  v9 = v13;

  if ((v8 & 1) == 0)
  {
    v10 = +[PGLogging sharedLogging];
    v11 = [v10 loggingConnection];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v9;
      _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "[Questions] Failed to perform library changes for relationship inital question with error: %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __55__PGRelationshipQuestionFactory_updateInitialQuestion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9978] changeRequestForQuestion:*(a1 + 32)];
  [v2 setState:0];
  v1 = [MEMORY[0x277CBEAA8] date];
  [v2 setCreationDate:v1];
}

- (id)initialQuestionForRelationshipLabel:(id)a3
{
  v4 = a3;
  v5 = [(PGSurveyQuestionFactory *)self workingContext];
  v6 = [v5 photoLibrary];
  v7 = [v6 librarySpecificFetchOptions];

  [v7 setFetchLimit:1];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d AND entityType = %d AND entityIdentifier = %@", 5, 4, v4];

  [v7 setPredicate:v8];
  v9 = [MEMORY[0x277CD9970] fetchQuestionsWithOptions:v7 validQuestionsOnly:0];
  v10 = [v9 firstObject];

  return v10;
}

- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4
{
  v6 = a4;
  [(PGRelationshipQuestionFactory *)self updateOutdatedAnsweredYesChildRelationshipQuestionsIfNeeded];
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
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

void __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v181 = *MEMORY[0x277D85DE8];
  v117 = a2;
  v144 = _Block_copy(*(a1 + 48));
  if (!v144)
  {
    v4 = 0.0;
    if (!*(a1 + 56))
    {
      goto LABEL_159;
    }

    goto LABEL_10;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v4 = 0.0;
  if (Current >= 0.01)
  {
    v5 = Current;
    v173 = 0;
    v144[2](v144, &v173, 0.0);
    if (v173 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v180 = 63;
        *&v180[4] = 2080;
        *&v180[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
        v6 = MEMORY[0x277D86220];
LABEL_44:
        _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_159;
      }

      goto LABEL_159;
    }

    v4 = v5;
  }

  if (*(a1 + 56))
  {
LABEL_10:
    v7 = [v117 graph];
    v118 = [PGGraphPersonNodeCollection personNodesExcludingMeInGraph:v7];
    v119 = v7;
    v8 = [v7 meNode];
    v9 = MEMORY[0x277CD9938];
    v10 = [v8 localIdentifier];
    v11 = [v9 uuidFromLocalIdentifier:v10];

    v132 = v8;
    v116 = v11;
    if (v8 && v11)
    {
      v12 = [[PGRelationshipQuestion alloc] initWithRelationshipLabel:@"ME" confirmedPersonUUID:v11];
      if ([*(a1 + 32) shouldAddQuestion:v12 toAlreadyGeneratedQuestions:*(a1 + 40)])
      {
        v13 = v12;
        [*(a1 + 40) addObject:v12];
        if ([*(a1 + 40) count] >= *(a1 + 56))
        {
          if (v144)
          {
            v14 = v116;
            if (CFAbsoluteTimeGetCurrent() - v4 >= 0.01)
            {
              v173 = 0;
              v144[2](v144, &v173, 1.0);
              if (v173)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *v180 = 117;
                  *&v180[4] = 2080;
                  *&v180[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }
              }
            }
          }

          else
          {
            v14 = v116;
          }

LABEL_158:

          goto LABEL_159;
        }
      }

      else
      {
        v13 = v12;
      }
    }

    else
    {
      v15 = [v119 meNode];
      v16 = [v15 inferredPersonNode];

      v13 = v16;
      if (v16)
      {
        v17 = MEMORY[0x277CD9938];
        v18 = [(PGRelationshipQuestion *)v16 localIdentifier];
        v19 = [v17 uuidFromLocalIdentifier:v18];

        v20 = [[PGRelationshipQuestion alloc] initWithRelationshipLabel:@"ME" personUUID:v19 localFactoryScore:1.0];
        if ([*(a1 + 32) shouldAddQuestion:v20 toAlreadyGeneratedQuestions:*(a1 + 40)])
        {
          [*(a1 + 40) addObject:v20];
          if ([*(a1 + 40) count] >= *(a1 + 56))
          {
            v14 = v116;
            if (v144)
            {
              if (CFAbsoluteTimeGetCurrent() - v4 >= 0.01)
              {
                v173 = 0;
                v144[2](v144, &v173, 1.0);
                if (v173)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    *v180 = 87;
                    *&v180[4] = 2080;
                    *&v180[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }
                }
              }
            }

LABEL_157:

            goto LABEL_158;
          }
        }
      }

      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      v19 = [v118 localIdentifiers];
      v21 = [v19 countByEnumeratingWithState:&v169 objects:v178 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v170;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v170 != v23)
            {
              objc_enumerationMutation(v19);
            }

            v25 = *(*(&v169 + 1) + 8 * i);
            v26 = [(PGRelationshipQuestion *)v13 localIdentifier];
            if (v26)
            {
              v27 = v26;
              v28 = [(PGRelationshipQuestion *)v13 localIdentifier];
              v29 = [v25 isEqualToString:v28];

              if (v29)
              {
                continue;
              }
            }

            v20 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:v25];
            v30 = [[PGRelationshipQuestion alloc] initWithRelationshipLabel:@"ME" personUUID:v20 localFactoryScore:0.99];
            if ([*(a1 + 32) shouldAddQuestion:v30 toAlreadyGeneratedQuestions:*(a1 + 40)])
            {
              [*(a1 + 40) addObject:v30];
              if ([*(a1 + 40) count] >= *(a1 + 56))
              {
                v14 = v116;
                if (v144)
                {
                  if (CFAbsoluteTimeGetCurrent() - v4 >= 0.01)
                  {
                    v173 = 0;
                    v144[2](v144, &v173, 1.0);
                    if (v173)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *buf = 67109378;
                        *v180 = 101;
                        *&v180[4] = 2080;
                        *&v180[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
                        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                      }
                    }
                  }
                }

                goto LABEL_156;
              }
            }

            v31 = [*(a1 + 40) count];
            if (v144)
            {
              v32 = v31;
              v33 = *(a1 + 56);
              v34 = CFAbsoluteTimeGetCurrent();
              if (v34 - v4 >= 0.01)
              {
                v173 = 0;
                v144[2](v144, &v173, v32 / v33);
                if (v173)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    *v180 = 106;
                    *&v180[4] = 2080;
                    *&v180[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  v14 = v116;
LABEL_156:

                  goto LABEL_157;
                }

                v4 = v34;
              }
            }
          }

          v22 = [v19 countByEnumeratingWithState:&v169 objects:v178 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }
    }

    v35 = *(a1 + 32);
    v36 = [objc_opt_class() localFactoryScoreByRelationshipLabels];
    v37 = *(a1 + 32);
    v121 = [objc_opt_class() relationshipTypesByRelationshipLabel];
    v38 = [v36 allKeys];
    v167[0] = MEMORY[0x277D85DD0];
    v167[1] = 3221225472;
    v167[2] = __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_191;
    v167[3] = &unk_278889330;
    v122 = v36;
    v168 = v122;
    v39 = [v38 sortedArrayUsingComparator:v167];

    v40 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection nodesInGraph:v119];
    v41 = [v40 relationshipTagNodes];

    v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v164[0] = MEMORY[0x277D85DD0];
    v164[1] = 3221225472;
    v164[2] = __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_195;
    v164[3] = &unk_278889380;
    v131 = v43;
    v165 = v131;
    v130 = v42;
    v166 = v130;
    v115 = v41;
    [v41 enumerateNodesUsingBlock:v164];
    v44 = *(a1 + 32);
    v126 = [objc_opt_class() relationshipLabelsRequiringInitialQuestion];
    v45 = *(a1 + 32);
    v120 = [objc_opt_class() initialQuestionRelationshipLabelByRelationship];
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    obj = v39;
    v125 = [obj countByEnumeratingWithState:&v160 objects:v177 count:16];
    if (v125)
    {
      v142 = 0;
      v124 = *v161;
      while (1)
      {
        for (j = 0; j != v125; ++j)
        {
          if (*v161 != v124)
          {
            objc_enumerationMutation(obj);
          }

          v47 = *(*(&v160 + 1) + 8 * j);
          context = objc_autoreleasePoolPush();
          if ([v126 containsObject:v47])
          {
            v48 = v47;
            v49 = [v120 objectForKeyedSubscript:v47];
            v50 = [*(a1 + 32) initialQuestionForRelationshipLabel:v49];
            v51 = v50;
            if (!v50)
            {
              v55 = *(a1 + 32);
              v56 = [objc_opt_class() displayStringForRelationshipLabel:v49];
              v57 = [[PGRelationshipQuestion alloc] initWithRelationshipLabel:v49 personUUID:v49 displayString:v56 localFactoryScore:1.0];
              [*(a1 + 40) addObject:v57];

LABEL_59:
              objc_autoreleasePoolPop(context);
              continue;
            }

            if (![v50 state])
            {
              goto LABEL_59;
            }

            if ([v51 state] == 3 || objc_msgSend(v51, "state") == 1)
            {
              v52 = [v51 creationDate];
              [v52 timeIntervalSinceNow];
              v54 = v53;

              if (v54 < -15778800.0)
              {
                [*(a1 + 32) updateInitialQuestion:v51];
              }

              goto LABEL_59;
            }

            v47 = v48;
          }

          v127 = j;
          v140 = [(PGRelationshipQuestion *)v122 objectForKeyedSubscript:v47];
          [v140 objectForKeyedSubscript:&unk_2844847D0];
          v59 = v58 = v47;
          [v59 doubleValue];
          v61 = v60;

          v143 = v58;
          v62 = [v121 objectForKeyedSubscript:v58];
          v135 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v156 = 0u;
          v157 = 0u;
          v158 = 0u;
          v159 = 0u;
          v129 = v62;
          v134 = [v129 countByEnumeratingWithState:&v156 objects:v176 count:16];
          if (!v134)
          {
            goto LABEL_102;
          }

          v133 = *v157;
          while (2)
          {
            v63 = 0;
LABEL_64:
            if (*v157 != v133)
            {
              objc_enumerationMutation(v129);
            }

            v64 = [*(*(&v156 + 1) + 8 * v63) unsignedIntegerValue];
            v65 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v66 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v153[0] = MEMORY[0x277D85DD0];
            v153[1] = 3221225472;
            v153[2] = __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_200;
            v153[3] = &unk_2788893A8;
            v67 = v65;
            v154 = v67;
            v68 = v66;
            v155 = v68;
            [v132 enumeratePersonNodesWithRelationship:v64 matchingQuery:3 usingBlock:v153];
            v69 = *(a1 + 32);
            v70 = +[PGGraphPersonRelationshipTagNode labelForRelationshipTag:](PGGraphPersonRelationshipTagNode, "labelForRelationshipTag:", [objc_opt_class() relationshipTagForRelatationshipType:v64]);
            v71 = [v130 objectForKeyedSubscript:v70];
            v72 = [v131 objectForKeyedSubscript:v70];
            v73 = objc_alloc_init(MEMORY[0x277CBEB58]);
            [v73 unionSet:v67];
            [v73 unionSet:v68];
            v141 = v71;
            [v73 unionSet:v71];
            v139 = v72;
            [v73 unionSet:v72];
            [v135 unionSet:v73];
            v151 = 0u;
            v152 = 0u;
            v149 = 0u;
            v150 = 0u;
            v74 = v73;
            v75 = [v74 countByEnumeratingWithState:&v149 objects:v175 count:16];
            if (!v75)
            {
              goto LABEL_84;
            }

            v76 = v75;
            v77 = *v150;
            v137 = v68;
            v138 = v63;
            v136 = v70;
LABEL_68:
            v78 = 0;
            while (1)
            {
              if (*v150 != v77)
              {
                objc_enumerationMutation(v74);
              }

              v79 = *(*(&v149 + 1) + 8 * v78);
              v80 = MEMORY[0x277CD9938];
              v81 = [v79 localIdentifier];
              v82 = [v80 uuidFromLocalIdentifier:v81];

              if (!v82)
              {
                v96 = +[PGLogging sharedLogging];
                p_super = [v96 loggingConnection];

                if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *v180 = v79;
                  _os_log_error_impl(&dword_22F0FC000, p_super, OS_LOG_TYPE_ERROR, "Cannot get uuid for person %@", buf, 0xCu);
                }

                v82 = 0;
                v91 = v4;
                goto LABEL_98;
              }

              if (([v67 containsObject:v79] & 1) != 0 || objc_msgSend(v141, "containsObject:", v79))
              {
                v83 = [[PGRelationshipQuestion alloc] initWithRelationshipLabel:v143 confirmedPersonUUID:v82];
              }

              else
              {
                v84 = [v140 objectForKeyedSubscript:&unk_2844847B8];
                [v84 doubleValue];
                v86 = v85;

                v83 = [[PGRelationshipQuestion alloc] initWithRelationshipLabel:v143 personUUID:v82 localFactoryScore:v86];
              }

              p_super = &v83->super.super;
              if ([*(a1 + 32) shouldAddQuestion:v83 toAlreadyGeneratedQuestions:*(a1 + 40)])
              {
                [*(a1 + 40) addObject:p_super];
                if ([*(a1 + 40) count] >= *(a1 + 56))
                {
                  break;
                }
              }

              v88 = [*(a1 + 40) count];
              if (v144)
              {
                v89 = v88;
                v90 = *(a1 + 56);
                v91 = CFAbsoluteTimeGetCurrent();
                if (v91 - v4 >= 0.01)
                {
                  v173 = 0;
                  v144[2](v144, &v173, v89 / v90);
                  if (v173 | v142 & 1)
                  {
                    v97 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109378;
                      *v180 = 224;
                      *&v180[4] = 2080;
                      *&v180[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
                      _os_log_impl(&dword_22F0FC000, v97, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                    }

                    v142 = 1;
LABEL_98:
                    v68 = v137;

                    v93 = 0;
                    v94 = 0;
                    v95 = 1;
                    v4 = v91;
                    v63 = v138;
                    v70 = v136;
                    goto LABEL_99;
                  }

                  v142 = 0;
                  v4 = v91;
                }
              }

              if (v76 == ++v78)
              {
                v76 = [v74 countByEnumeratingWithState:&v149 objects:v175 count:16];
                v68 = v137;
                v63 = v138;
                v70 = v136;
                if (v76)
                {
                  goto LABEL_68;
                }

LABEL_84:

                if ((v142 & 1) == 0)
                {
                  goto LABEL_92;
                }

LABEL_85:
                v142 = 1;
                v92 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *v180 = 227;
                  *&v180[4] = 2080;
                  *&v180[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
                  v142 = 1;
                  _os_log_impl(&dword_22F0FC000, v92, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v93 = 0;
                v94 = 0;
                v95 = 1;
                goto LABEL_99;
              }
            }

            v68 = v137;
            v63 = v138;
            v70 = v136;
            if (v142)
            {
              goto LABEL_85;
            }

LABEL_92:
            v142 = 0;
            if ([*(a1 + 40) count] >= *(a1 + 56))
            {
              v93 = 0;
              v95 = 6;
              v94 = 1;
            }

            else
            {
              v94 = 0;
              v95 = 0;
              v93 = 1;
            }

LABEL_99:

            if (v93)
            {
              if (++v63 == v134)
              {
                v134 = [v129 countByEnumeratingWithState:&v156 objects:v176 count:16];
                if (!v134)
                {
LABEL_102:

                  goto LABEL_104;
                }

                continue;
              }

              goto LABEL_64;
            }

            break;
          }

          if (!v94)
          {
            goto LABEL_131;
          }

LABEL_104:
          if ([*(a1 + 40) count] >= *(a1 + 56))
          {

            objc_autoreleasePoolPop(context);
            goto LABEL_140;
          }

          v98 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithSet:v135 graph:v119];
          v99 = [v118 collectionBySubtracting:v98];
          v145 = 0u;
          v146 = 0u;
          v147 = 0u;
          v148 = 0u;
          v100 = [v99 uuids];
          v101 = [v100 countByEnumeratingWithState:&v145 objects:v174 count:16];
          if (v101)
          {
            v102 = v101;
            v103 = *v146;
            while (2)
            {
              for (k = 0; k != v102; ++k)
              {
                if (*v146 != v103)
                {
                  objc_enumerationMutation(v100);
                }

                v105 = [[PGRelationshipQuestion alloc] initWithRelationshipLabel:v143 personUUID:*(*(&v145 + 1) + 8 * k) localFactoryScore:v61];
                if ([*(a1 + 32) shouldAddQuestion:v105 toAlreadyGeneratedQuestions:*(a1 + 40)])
                {
                  [*(a1 + 40) addObject:v105];
                  if ([*(a1 + 40) count] >= *(a1 + 56))
                  {

                    goto LABEL_120;
                  }
                }

                v106 = [*(a1 + 40) count];
                if (v144)
                {
                  v107 = v106;
                  v108 = *(a1 + 56);
                  v109 = CFAbsoluteTimeGetCurrent();
                  if (v109 - v4 >= 0.01)
                  {
                    v173 = 0;
                    v144[2](v144, &v173, v107 / v108);
                    if (v173 | v142 & 1)
                    {
                      v113 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *buf = 67109378;
                        *v180 = 251;
                        *&v180[4] = 2080;
                        *&v180[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
                        _os_log_impl(&dword_22F0FC000, v113, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                      }

                      v111 = 1;
                      goto LABEL_129;
                    }

                    v142 = 0;
                    v4 = v109;
                  }
                }
              }

              v102 = [v100 countByEnumeratingWithState:&v145 objects:v174 count:16];
              if (v102)
              {
                continue;
              }

              break;
            }
          }

LABEL_120:

          v110 = [*(a1 + 40) count] >= *(a1 + 56);
          v111 = v110 & v142;
          v95 = 4 * v110;
          if (v110 || (v112 = MEMORY[0x277D86220], (v142 & 1) == 0))
          {
            v109 = v4;
          }

          else
          {
            v111 = 1;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v180 = 258;
              *&v180[4] = 2080;
              *&v180[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
              _os_log_impl(&dword_22F0FC000, v112, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v109 = v4;
LABEL_129:
            v95 = 1;
          }

          v4 = v109;
          v142 = v111;
LABEL_131:

          objc_autoreleasePoolPop(context);
          if (v95 == 5)
          {
            j = v127;
          }

          else
          {
            j = v127;
            if (v95)
            {

              v14 = v116;
              v13 = v122;
              if (v95 != 4)
              {
                goto LABEL_152;
              }

              goto LABEL_141;
            }
          }
        }

        v125 = [obj countByEnumeratingWithState:&v160 objects:v177 count:16];
        if (!v125)
        {
          goto LABEL_140;
        }
      }
    }

    v142 = 0;
LABEL_140:

    v14 = v116;
    v13 = v122;
LABEL_141:
    if (v144)
    {
      if (CFAbsoluteTimeGetCurrent() - v4 >= 0.01)
      {
        v173 = 0;
        v144[2](v144, &v173, 1.0);
        if (v173 | v142 & 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v180 = 261;
            *&v180[4] = 2080;
            *&v180[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

LABEL_152:

    goto LABEL_158;
  }

  if (CFAbsoluteTimeGetCurrent() - v4 >= 0.01)
  {
    v173 = 0;
    v144[2](v144, &v173, 1.0);
    if (v173)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v180 = 67;
        *&v180[4] = 2080;
        *&v180[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
        v6 = MEMORY[0x277D86220];
        goto LABEL_44;
      }
    }
  }

LABEL_159:

  v114 = *MEMORY[0x277D85DE8];
}

BOOL __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_191(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [v7 objectForKeyedSubscript:&unk_2844847B8];
  [v8 doubleValue];
  v10 = v9;

  v11 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v12 = [v11 objectForKeyedSubscript:&unk_2844847B8];
  [v12 doubleValue];
  v14 = v13;

  return v10 <= v14;
}

void __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_195(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_2;
  v5[3] = &unk_278889358;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  [v4 enumerateNeighborEdgesAndNodesThroughInEdgesUsingBlock:v5];
}

void __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_200(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 status];
  v6 = 40;
  if (!v5)
  {
    v6 = 32;
  }

  [*(a1 + v6) addObject:v7];
}

void __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 confidence];
  v4 = v3;
  v11 = [*(a1 + 40) collection];
  v5 = [v11 personNodes];
  v6 = [v5 set];
  v7 = *(a1 + 40);
  v8 = 48;
  if (v4 < 1.0)
  {
    v8 = 32;
  }

  v9 = *(a1 + v8);
  v10 = [v7 label];
  [v9 setObject:v6 forKeyedSubscript:v10];
}

@end