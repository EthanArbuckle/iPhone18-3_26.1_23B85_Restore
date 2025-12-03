@interface PGRelationshipNightOutAnalyzer
- (PGRelationshipNightOutAnalyzer)initWithRelationshipProcessor:(id)processor;
- (void)runAnalysisWithProgressBlock:(id)block;
@end

@implementation PGRelationshipNightOutAnalyzer

- (void)runAnalysisWithProgressBlock:(id)block
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = _Block_copy(block);
  v5 = 0.0;
  if (!v4 || (v6 = CFAbsoluteTimeGetCurrent(), v6 < 0.01))
  {
LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    graph = [WeakRetained graph];
    v9 = [graph momentNodesWithMeaning:8];

    v10 = [v9 count];
    v11 = [PGGraphMomentNodeCollection alloc];
    graph2 = [WeakRetained graph];
    v13 = [(MAElementCollection *)v11 initWithSet:v9 graph:graph2];

    personNodes = [WeakRetained personNodes];
    v15 = [PGPeopleInferencesConveniences countedPersonNodesFromMomentNodes:v13 amongPersonNodes:personNodes];

    v16 = [v15 count];
    if (v16)
    {
      v17 = v16;
      v32 = v13;
      v33 = v9;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v31 = v15;
      v18 = v15;
      v19 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = 1.0 / v17;
        v22 = *v35;
        v23 = 0.0;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v35 != v22)
            {
              objc_enumerationMutation(v18);
            }

            v25 = *(*(&v34 + 1) + 8 * i);
            localIdentifier = [v25 localIdentifier];
            v27 = [WeakRetained relationshipAnalyzerPropertiesForPersonLocalIdentifier:localIdentifier];
            if (v27)
            {
              [v27 registerNumberOfNightsOut:objc_msgSend(v18 amongNightsOut:{"countForObject:", v25), v10}];
            }

            if (v4)
            {
              Current = CFAbsoluteTimeGetCurrent();
              if (Current - v5 >= 0.01)
              {
                v38 = 0;
                v4[2](v4, &v38, v23);
                if (v38)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    v41 = 60;
                    v42 = 2080;
                    v43 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipNightOutAnalyzer.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  v13 = v32;
                  v9 = v33;
                  v15 = v31;
                  goto LABEL_35;
                }

                v5 = Current;
              }
            }

            v23 = v21 + v23;
          }

          v20 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v13 = v32;
      v9 = v33;
      v15 = v31;
      if (!v4)
      {
        goto LABEL_35;
      }

      if (CFAbsoluteTimeGetCurrent() - v5 < 0.01)
      {
        goto LABEL_35;
      }

      v38 = 0;
      v4[2](v4, &v38, 1.0);
      if (!v38 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      *buf = 67109378;
      v41 = 64;
      v42 = 2080;
      v43 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipNightOutAnalyzer.m";
      v29 = MEMORY[0x277D86220];
    }

    else
    {
      if (!v4)
      {
        goto LABEL_35;
      }

      if (CFAbsoluteTimeGetCurrent() - v5 < 0.01)
      {
        goto LABEL_35;
      }

      v38 = 0;
      v4[2](v4, &v38, 1.0);
      if (!v38 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      *buf = 67109378;
      v41 = 45;
      v42 = 2080;
      v43 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipNightOutAnalyzer.m";
      v29 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
LABEL_35:

    goto LABEL_36;
  }

  v38 = 0;
  v4[2](v4, &v38, 0.0);
  if (v38 != 1)
  {
    v5 = v6;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v41 = 34;
    v42 = 2080;
    v43 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipNightOutAnalyzer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_36:

  v30 = *MEMORY[0x277D85DE8];
}

- (PGRelationshipNightOutAnalyzer)initWithRelationshipProcessor:(id)processor
{
  processorCopy = processor;
  v8.receiver = self;
  v8.super_class = PGRelationshipNightOutAnalyzer;
  v5 = [(PGRelationshipNightOutAnalyzer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processor, processorCopy);
  }

  return v6;
}

@end