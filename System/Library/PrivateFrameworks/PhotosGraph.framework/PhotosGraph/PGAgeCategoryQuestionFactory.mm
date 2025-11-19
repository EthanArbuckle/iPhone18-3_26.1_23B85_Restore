@interface PGAgeCategoryQuestionFactory
- (BOOL)_shouldAddNewAgeCategoryQuestionForPersonUUID:(id)a3;
- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4;
@end

@implementation PGAgeCategoryQuestionFactory

- (BOOL)_shouldAddNewAgeCategoryQuestionForPersonUUID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  [(PGSurveyQuestionFactory *)self existingQuestionsForEntityIdentifier:a3];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 state] == 2 || !objc_msgSend(v8, "state"))
        {
          v9 = 0;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v9 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 1;
  }

LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __73__PGAgeCategoryQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
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

void __73__PGAgeCategoryQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _Block_copy(*(a1 + 48));
  if (!v4)
  {
    v6 = 0.0;
    if (!*(a1 + 56))
    {
      goto LABEL_61;
    }

LABEL_10:
    v46 = v3;
    v9 = [v3 graph];
    v49 = [*(a1 + 32) _sortedAgeCategories];
    v45 = v9;
    v10 = [v9 personNodesIncludingMe:1];
    v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"localIdentifier" ascending:0];
    v63 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
    v44 = v10;
    v13 = [v10 sortedArrayUsingDescriptors:v12];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v14 = v13;
    v51 = [v14 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (!v51)
    {
LABEL_55:

      v3 = v46;
      if (v4)
      {
        if (CFAbsoluteTimeGetCurrent() - v6 >= 0.01)
        {
          v60 = 0;
          v4[2](v4, &v60, 1.0);
          if (v60)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v65 = 116;
              *&v65[4] = 2080;
              *&v65[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/AgeCategory/PGAgeCategoryQuestionFactory.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }

LABEL_60:

      goto LABEL_61;
    }

    v50 = *v57;
    *&v15 = 138412290;
    v43 = v15;
    v47 = v4;
    v48 = v14;
LABEL_12:
    v16 = 0;
    while (1)
    {
      if (*v57 != v50)
      {
        objc_enumerationMutation(v14);
      }

      v17 = *(*(&v56 + 1) + 8 * v16);
      v18 = [*(a1 + 40) count];
      if (v4)
      {
        v19 = v18;
        v20 = *(a1 + 56);
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v6 >= 0.01)
        {
          v60 = 0;
          v4[2](v4, &v60, v19 / v20);
          if (v60)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v65 = 62;
              *&v65[4] = 2080;
              *&v65[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/AgeCategory/PGAgeCategoryQuestionFactory.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v3 = v46;
            goto LABEL_60;
          }

          v6 = Current;
        }
      }

      v22 = [v17 localIdentifier];
      v23 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:v22];
      if (!v23)
      {
        break;
      }

      if (![*(a1 + 32) _shouldAddNewAgeCategoryQuestionForPersonUUID:v23])
      {
        goto LABEL_29;
      }

      v24 = [v49 mutableCopy];
      v25 = [v17 ageCategory];
      if (v25)
      {
        v26 = v25;
        v27 = [[PGAgeCategoryQuestion alloc] initWithPersonUUID:v23 ageCategory:v25 localFactoryScore:1.0];
        if ([*(a1 + 32) shouldAddQuestion:v27 toAlreadyGeneratedQuestions:*(a1 + 40)])
        {
          [*(a1 + 40) addObject:v27];
          v28 = [*(a1 + 40) count];
          v29 = *(a1 + 56);

          v30 = v28 >= v29;
          v14 = v48;
          if (v30)
          {
            goto LABEL_55;
          }

          goto LABEL_43;
        }

        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
        [v24 removeObject:v33];
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v34 = v24;
      v35 = [v34 countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v53;
        while (2)
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v53 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = -[PGAgeCategoryQuestion initWithPersonUUID:ageCategory:localFactoryScore:]([PGAgeCategoryQuestion alloc], "initWithPersonUUID:ageCategory:localFactoryScore:", v23, [*(*(&v52 + 1) + 8 * i) unsignedIntegerValue], 0.5);
            if ([*(a1 + 32) shouldAddQuestion:v39 toAlreadyGeneratedQuestions:*(a1 + 40)])
            {
              [*(a1 + 40) addObject:v39];

              goto LABEL_41;
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v52 objects:v61 count:16];
          if (v36)
          {
            continue;
          }

          break;
        }
      }

LABEL_41:

      v40 = [*(a1 + 40) count];
      v41 = *(a1 + 56);

      v30 = v40 >= v41;
      v4 = v47;
      v14 = v48;
      if (v30)
      {

        goto LABEL_55;
      }

LABEL_42:

LABEL_43:
      if (++v16 == v51)
      {
        v51 = [v14 countByEnumeratingWithState:&v56 objects:v62 count:16];
        if (v51)
        {
          goto LABEL_12;
        }

        goto LABEL_55;
      }
    }

    v31 = +[PGLogging sharedLogging];
    v32 = [v31 loggingConnection];

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = v43;
      *v65 = v22;
      _os_log_error_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_ERROR, "Person uuid found to be nil given local identifier %@", buf, 0xCu);
    }

LABEL_29:
    goto LABEL_42;
  }

  v5 = CFAbsoluteTimeGetCurrent();
  v6 = 0.0;
  if (v5 >= 0.01)
  {
    v7 = v5;
    v60 = 0;
    v4[2](v4, &v60, 0.0);
    if (v60 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v65 = 45;
        *&v65[4] = 2080;
        *&v65[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/AgeCategory/PGAgeCategoryQuestionFactory.m";
        v8 = MEMORY[0x277D86220];
LABEL_50:
        _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_61;
      }

      goto LABEL_61;
    }

    v6 = v7;
  }

  if (*(a1 + 56))
  {
    goto LABEL_10;
  }

  if (CFAbsoluteTimeGetCurrent() - v6 >= 0.01)
  {
    v60 = 0;
    v4[2](v4, &v60, 1.0);
    if (v60)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v65 = 49;
        *&v65[4] = 2080;
        *&v65[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/AgeCategory/PGAgeCategoryQuestionFactory.m";
        v8 = MEMORY[0x277D86220];
        goto LABEL_50;
      }
    }
  }

LABEL_61:

  v42 = *MEMORY[0x277D85DE8];
}

@end