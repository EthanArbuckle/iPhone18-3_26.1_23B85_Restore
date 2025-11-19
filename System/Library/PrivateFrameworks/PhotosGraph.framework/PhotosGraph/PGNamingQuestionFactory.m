@interface PGNamingQuestionFactory
- (BOOL)_persistQuestions:(id)a3 questionsToRemove:(id)a4;
- (BOOL)_shouldAddNewNamingQuestionForPersonUUID:(id)a3;
- (PHFetchResult)persons;
- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4;
@end

@implementation PGNamingQuestionFactory

- (BOOL)_persistQuestions:(id)a3 questionsToRemove:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count] || objc_msgSend(v7, "count"))
  {
    v8 = [(PGSurveyQuestionFactory *)self workingContext];
    v9 = [v8 photoLibrary];

    v10 = [MEMORY[0x277CBEAA8] date];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __63__PGNamingQuestionFactory__persistQuestions_questionsToRemove___block_invoke;
    v20[3] = &unk_278889470;
    v21 = v7;
    v22 = v6;
    v11 = v10;
    v23 = v11;
    v24 = self;
    v19 = 0;
    v12 = [v9 performChangesAndWait:v20 error:&v19];
    v13 = v19;
    v14 = +[PGLogging sharedLogging];
    v15 = [v14 loggingConnection];

    if (v12)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "[Questions] Succeeded persisting naming questions", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [v13 description];
      *buf = 138412290;
      v26 = v18;
      _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "[Questions] Error performing library changes for naming questions: %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

void __63__PGNamingQuestionFactory__persistQuestions_questionsToRemove___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CD9978] deleteQuestions:*(a1 + 32)];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) persistWithCreationDate:*(a1 + 48) questionVersion:{objc_msgSend(*(a1 + 56), "questionVersion", v8)}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldAddNewNamingQuestionForPersonUUID:(id)a3
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

- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __68__PGNamingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
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

void __68__PGNamingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _Block_copy(*(a1 + 48));
  if (!v4)
  {
    v6 = 0.0;
    if (!*(a1 + 56))
    {
      goto LABEL_51;
    }

    goto LABEL_10;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v6 = 0.0;
  if (Current >= 0.01)
  {
    v7 = Current;
    v72 = 0;
    v4[2](v4, &v72, 0.0);
    if (v72 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v76 = 60;
        v77 = 2080;
        v78 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Deprecated/Naming/PGNamingQuestionFactory.m";
        v8 = MEMORY[0x277D86220];
LABEL_42:
        _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_51;
      }

      goto LABEL_51;
    }

    v6 = v7;
  }

  if (*(a1 + 56))
  {
LABEL_10:
    v55 = v4;
    v52 = v3;
    v9 = [v3 graph];
    v10 = [*(a1 + 32) persons];
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v68 objects:v74 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v69;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v69 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v68 + 1) + 8 * i);
          v18 = [v17 localIdentifier];
          [v11 setObject:v17 forKeyedSubscript:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v68 objects:v74 count:16];
      }

      while (v14);
    }

    v54 = [MEMORY[0x277CBEB58] set];
    v53 = [MEMORY[0x277CBEB58] set];
    v19 = MEMORY[0x277CBEB98];
    v20 = [v11 allKeys];
    v51 = v9;
    v21 = [v9 personNodesForPersonLocalIdentifiers:v20];
    v22 = [v19 setWithArray:v21];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v22;
    v58 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
    if (v58)
    {
      v57 = *v65;
      v4 = v55;
      while (2)
      {
        for (j = 0; j != v58; ++j)
        {
          if (*v65 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v64 + 1) + 8 * j);
          v25 = [*(a1 + 40) count];
          if (v4)
          {
            v26 = v25;
            v27 = *(a1 + 56);
            v28 = CFAbsoluteTimeGetCurrent();
            if (v28 - v6 >= 0.01)
            {
              v72 = 0;
              v4[2](v4, &v72, v26 / v27);
              if (v72)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v76 = 87;
                  v77 = 2080;
                  v78 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Deprecated/Naming/PGNamingQuestionFactory.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v49 = v51;
                v3 = v52;
                goto LABEL_50;
              }

              v6 = v28;
            }
          }

          v29 = [v24 localIdentifier];
          v30 = [v11 objectForKeyedSubscript:v29];
          v31 = v30;
          if (v30)
          {
            v32 = *(a1 + 32);
            v33 = [v30 uuid];
            LODWORD(v32) = [v32 _shouldAddNewNamingQuestionForPersonUUID:v33];

            if (v32)
            {
              v34 = [v24 contactIdentifier];
              if ([v34 length])
              {
                v35 = [PGNamingQuestion alloc];
                v36 = [*(a1 + 32) workingContext];
                v37 = [v36 serviceManager];
                v38 = [(PGNamingQuestion *)v35 initWithConfirmedPerson:v31 contactIdentifier:v34 localFactoryScore:v37 serviceManager:1.0];

                [v53 addObject:v38];
                v39 = *(a1 + 32);
                v40 = [v31 uuid];
                v41 = [v39 existingQuestionsForEntityIdentifier:v40];
                [v54 addObjectsFromArray:v41];
              }

              else
              {
                v59[0] = MEMORY[0x277D85DD0];
                v59[1] = 3221225472;
                v59[2] = __68__PGNamingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_192;
                v59[3] = &unk_27887F300;
                v42 = v31;
                v43 = *(a1 + 32);
                v44 = *(a1 + 40);
                v60 = v42;
                v61 = v43;
                v45 = v44;
                v46 = *(a1 + 56);
                v62 = v45;
                v63 = v46;
                [v24 enumerateContactSuggestionsSortedByConfidenceMatchingQuery:1 usingBlock:v59];
                v47 = [*(a1 + 40) count];
                v48 = *(a1 + 56);

                if (v47 >= v48)
                {

                  goto LABEL_44;
                }
              }

              v4 = v55;
            }
          }
        }

        v58 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
        if (v58)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_44:
      v4 = v55;
    }

    [*(a1 + 32) _persistQuestions:v53 questionsToRemove:v54];
    v49 = v51;
    v3 = v52;
    if (v4)
    {
      if (CFAbsoluteTimeGetCurrent() - v6 >= 0.01)
      {
        v72 = 0;
        v4[2](v4, &v72, 1.0);
        if (v72)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v76 = 133;
            v77 = 2080;
            v78 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Deprecated/Naming/PGNamingQuestionFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

LABEL_50:

    goto LABEL_51;
  }

  if (CFAbsoluteTimeGetCurrent() - v6 >= 0.01)
  {
    v72 = 0;
    v4[2](v4, &v72, 1.0);
    if (v72)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v76 = 64;
        v77 = 2080;
        v78 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Deprecated/Naming/PGNamingQuestionFactory.m";
        v8 = MEMORY[0x277D86220];
        goto LABEL_42;
      }
    }
  }

LABEL_51:

  v50 = *MEMORY[0x277D85DE8];
}

void __68__PGNamingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_192(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v16 = a3;
  v8 = [a2 contactIdentifier];
  if ([v8 length])
  {
    v9 = [PGNamingQuestion alloc];
    v10 = *(a1 + 32);
    [v16 confidence];
    v12 = v11;
    v13 = [*(a1 + 40) workingContext];
    v14 = [v13 serviceManager];
    v15 = [(PGNamingQuestion *)v9 initWithPerson:v10 contactIdentifier:v8 localFactoryScore:v14 serviceManager:v12];

    if ([*(a1 + 40) shouldAddQuestion:v15 toAlreadyGeneratedQuestions:*(a1 + 48)])
    {
      [*(a1 + 48) addObject:v15];
      if ([*(a1 + 48) count] >= *(a1 + 56))
      {
        *a5 = 1;
      }
    }
  }
}

- (PHFetchResult)persons
{
  persons = self->_persons;
  if (!persons)
  {
    v4 = [(PGSurveyQuestionFactory *)self workingContext];
    v5 = [v4 photoLibrary];
    v6 = [PGPeopleQuestionFactoryUtils personsWithPeopleHomeContextForPhotoLibrary:v5];
    v7 = self->_persons;
    self->_persons = v6;

    persons = self->_persons;
  }

  return persons;
}

@end