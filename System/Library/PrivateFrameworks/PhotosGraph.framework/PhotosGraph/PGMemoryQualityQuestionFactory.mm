@interface PGMemoryQualityQuestionFactory
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGMemoryQualityQuestionFactory

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  v73 = *MEMORY[0x277D85DE8];
  v60 = _Block_copy(block);
  if (v60)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = 0.0;
    if (Current >= 0.01)
    {
      v8 = Current;
      v65 = 0;
      v60[2](v60, &v65, 0.0);
      if (v65 == 1)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_28:
          allObjects = MEMORY[0x277CBEBF8];
          goto LABEL_58;
        }

        *buf = 67109378;
        v70 = 38;
        v71 = 2080;
        v72 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/MemoryQuality/PGMemoryQualityQuestionFactory.m";
        v9 = MEMORY[0x277D86220];
LABEL_27:
        _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_28;
      }

      v7 = v8;
    }

    if (!limit)
    {
      if (CFAbsoluteTimeGetCurrent() - v7 < 0.01)
      {
        goto LABEL_28;
      }

      v65 = 0;
      v60[2](v60, &v65, 1.0);
      if (!v65 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_28;
      }

      *buf = 67109378;
      v70 = 42;
      v71 = 2080;
      v72 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/MemoryQuality/PGMemoryQualityQuestionFactory.m";
      v9 = MEMORY[0x277D86220];
      goto LABEL_27;
    }
  }

  else
  {
    v7 = 0.0;
    if (!limit)
    {
      goto LABEL_28;
    }
  }

  v10 = [MEMORY[0x277CBEB58] set];
  fetchExistingQuestions = [(PGSurveyQuestionFactory *)self fetchExistingQuestions];
  array = [MEMORY[0x277CBEB18] array];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v13 = fetchExistingQuestions;
  v14 = [v13 countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v62;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v62 != v16)
        {
          objc_enumerationMutation(v13);
        }

        entityIdentifier = [*(*(&v61 + 1) + 8 * i) entityIdentifier];
        [array addObject:entityIdentifier];
      }

      v15 = [v13 countByEnumeratingWithState:&v61 objects:v68 count:16];
    }

    while (v15);
  }

  if (v60)
  {
    v19 = CFAbsoluteTimeGetCurrent();
    if (v19 - v7 >= 0.01)
    {
      v65 = 0;
      v60[2](v60, &v65, 0.25);
      if (v65)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v70 = 55;
          v71 = 2080;
          v72 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/MemoryQuality/PGMemoryQualityQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        allObjects = MEMORY[0x277CBEBF8];
        goto LABEL_57;
      }

      v7 = v19;
    }
  }

  limitCopy = limit;
  date = [MEMORY[0x277CBEAA8] date];
  v22 = [date dateByAddingTimeInterval:-31557600.0];

  v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (uuid IN %@)", array];
  v67[0] = v23;
  v56 = v22;
  [MEMORY[0x277CCAC30] predicateWithFormat:@"creationDate >= %@", v22];
  v24 = v58 = self;
  v67[1] = v24;
  v25 = [MEMORY[0x277CCAC30] predicateWithFormat:@"curatedAssets.@count >= %d", 13];
  v67[2] = v25;
  v26 = MEMORY[0x277CD98D8];
  v27 = [MEMORY[0x277CCA918] predicateWithFormat:@"userCreated == NO"];
  v28 = [v26 fetchPredicateFromUserCreatedComparisonPredicate:v27];
  v67[3] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];

  workingContext = [(PGSurveyQuestionFactory *)v58 workingContext];
  photoLibrary = [workingContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v55 = v29;
  v33 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v29];
  [librarySpecificFetchOptions setInternalPredicate:v33];

  v34 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:1];
  v66[0] = v34;
  v35 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v66[1] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v36];

  v59 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  if (v60)
  {
    v37 = CFAbsoluteTimeGetCurrent();
    v38 = limitCopy;
    if (v37 - v7 >= 0.01)
    {
      v65 = 0;
      v60[2](v60, &v65, 0.5);
      if (v65)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v70 = 67;
          v71 = 2080;
          v72 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/MemoryQuality/PGMemoryQualityQuestionFactory.m";
          v39 = MEMORY[0x277D86220];
LABEL_53:
          _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_54;
        }

        goto LABEL_54;
      }

      v7 = v37;
    }
  }

  else
  {
    v38 = limitCopy;
  }

  v54 = librarySpecificFetchOptions;
  v40 = [v59 count];
  v41 = v38;
  v42 = vcvtmd_u64_f64(v40 / v38);
  if (v42 <= 1)
  {
    v43 = 1;
  }

  else
  {
    v43 = v42;
  }

  if (!v40)
  {
LABEL_48:
    librarySpecificFetchOptions = v54;
    if (!v60 || CFAbsoluteTimeGetCurrent() - v7 < 0.01 || (v65 = 0, v60[2](v60, &v65, 1.0), !v65))
    {
      allObjects = [v10 allObjects];
      goto LABEL_56;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v70 = 86;
      v71 = 2080;
      v72 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/MemoryQuality/PGMemoryQualityQuestionFactory.m";
      v39 = MEMORY[0x277D86220];
      goto LABEL_53;
    }

LABEL_54:
    allObjects = MEMORY[0x277CBEBF8];
    goto LABEL_56;
  }

  v44 = v40;
  v45 = 0;
  while (1)
  {
    v46 = [v10 count];
    if (!v60)
    {
      goto LABEL_46;
    }

    v47 = v46;
    v48 = CFAbsoluteTimeGetCurrent();
    if (v48 - v7 < 0.01)
    {
      goto LABEL_46;
    }

    v65 = 0;
    v60[2](v60, &v65, vcvtd_n_f64_u64(v47, 1uLL) / v41 + 0.5);
    if (v65)
    {
      break;
    }

    v7 = v48;
LABEL_46:
    v49 = [v59 objectAtIndexedSubscript:v45];
    v50 = [[PGMemoryQualityQuestion alloc] initWithMemory:v49 localFactoryScore:1.0];
    [v10 addObject:v50];
    v51 = [v10 count];

    if (v51 < limitCopy)
    {
      v45 += v43;
      if (v45 < v44)
      {
        continue;
      }
    }

    goto LABEL_48;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v70 = 75;
    v71 = 2080;
    v72 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/MemoryQuality/PGMemoryQualityQuestionFactory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  allObjects = MEMORY[0x277CBEBF8];
  librarySpecificFetchOptions = v54;
LABEL_56:

LABEL_57:
LABEL_58:

  v52 = *MEMORY[0x277D85DE8];

  return allObjects;
}

@end