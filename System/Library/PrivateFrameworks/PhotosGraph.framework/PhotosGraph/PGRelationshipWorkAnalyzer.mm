@interface PGRelationshipWorkAnalyzer
- (PGRelationshipWorkAnalyzer)initWithRelationshipProcessor:(id)processor;
- (void)runAnalysisWithProgressBlock:(id)block;
@end

@implementation PGRelationshipWorkAnalyzer

- (void)runAnalysisWithProgressBlock:(id)block
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = _Block_copy(block);
  v5 = 0.0;
  if (!v4 || (v6 = CFAbsoluteTimeGetCurrent(), v6 < 0.01))
  {
LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    momentNodes = [WeakRetained momentNodes];
    v8 = [PGPeopleInferencesConveniences momentNodesAtWorkInMomentNodes:momentNodes];

    v9 = [v8 count];
    v10 = +[PGLogging sharedLogging];
    loggingConnection = [v10 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *v40 = v9;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGRelationshipWorkAnalyzer] Number of moments at work: %lu", buf, 0xCu);
    }

    if (!v9)
    {
      if (v4)
      {
        if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
        {
          v37 = 0;
          v4[2](v4, &v37, 1.0);
          if (v37)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v40 = 43;
              *&v40[4] = 2080;
              *&v40[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipWorkAnalyzer.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }

      goto LABEL_48;
    }

    personNodes = [WeakRetained personNodes];
    v31 = v8;
    v13 = [PGPeopleInferencesConveniences countedPersonNodesFromMomentNodes:v8 amongPersonNodes:personNodes];

    v14 = [v13 count];
    v15 = +[PGLogging sharedLogging];
    loggingConnection2 = [v15 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *v40 = v14;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[PGRelationshipWorkAnalyzer] Number of people at work: %lu", buf, 0xCu);
    }

    if (v14)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v30 = v13;
      v17 = v13;
      v18 = [v17 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 1.0 / v14;
        v21 = *v34;
        v22 = 0.0;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v24 = *(*(&v33 + 1) + 8 * i);
            if (([v24 ageCategory] - 1) >= 2)
            {
              localIdentifier = [v24 localIdentifier];
              v26 = [WeakRetained relationshipAnalyzerPropertiesForPersonLocalIdentifier:localIdentifier];
              if (v26)
              {
                [v26 registerNumberOfMomentsAtWork:objc_msgSend(v17 amongMomentsAtWork:{"countForObject:", v24), v9}];
              }

              if (v4)
              {
                Current = CFAbsoluteTimeGetCurrent();
                if (Current - v5 >= 0.01)
                {
                  v37 = 0;
                  v4[2](v4, &v37, v22);
                  if (v37)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109378;
                      *v40 = 72;
                      *&v40[4] = 2080;
                      *&v40[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipWorkAnalyzer.m";
                      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                    }

                    v13 = v30;
                    v8 = v31;
                    goto LABEL_47;
                  }

                  v5 = Current;
                }
              }

              v22 = v20 + v22;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v13 = v30;
      v8 = v31;
      if (!v4)
      {
        goto LABEL_47;
      }

      if (CFAbsoluteTimeGetCurrent() - v5 < 0.01)
      {
        goto LABEL_47;
      }

      v37 = 0;
      v4[2](v4, &v37, 1.0);
      if (!v37 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_47;
      }

      *buf = 67109378;
      *v40 = 76;
      *&v40[4] = 2080;
      *&v40[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipWorkAnalyzer.m";
      v28 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = v31;
      if (!v4)
      {
        goto LABEL_47;
      }

      if (CFAbsoluteTimeGetCurrent() - v5 < 0.01)
      {
        goto LABEL_47;
      }

      v37 = 0;
      v4[2](v4, &v37, 1.0);
      if (!v37 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_47;
      }

      *buf = 67109378;
      *v40 = 52;
      *&v40[4] = 2080;
      *&v40[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipWorkAnalyzer.m";
      v28 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
LABEL_47:

LABEL_48:
    goto LABEL_49;
  }

  v37 = 0;
  v4[2](v4, &v37, 0.0);
  if (v37 != 1)
  {
    v5 = v6;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v40 = 34;
    *&v40[4] = 2080;
    *&v40[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipWorkAnalyzer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_49:

  v29 = *MEMORY[0x277D85DE8];
}

- (PGRelationshipWorkAnalyzer)initWithRelationshipProcessor:(id)processor
{
  processorCopy = processor;
  v8.receiver = self;
  v8.super_class = PGRelationshipWorkAnalyzer;
  v5 = [(PGRelationshipWorkAnalyzer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processor, processorCopy);
  }

  return v6;
}

@end