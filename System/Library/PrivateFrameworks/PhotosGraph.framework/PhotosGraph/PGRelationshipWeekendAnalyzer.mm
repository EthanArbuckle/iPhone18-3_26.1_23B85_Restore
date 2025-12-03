@interface PGRelationshipWeekendAnalyzer
- (PGRelationshipWeekendAnalyzer)initWithRelationshipProcessor:(id)processor;
- (void)runAnalysisWithProgressBlock:(id)block;
@end

@implementation PGRelationshipWeekendAnalyzer

- (void)runAnalysisWithProgressBlock:(id)block
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = _Block_copy(block);
  v5 = 0.0;
  if (!v4 || (v6 = CFAbsoluteTimeGetCurrent(), v6 < 0.01))
  {
LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    graph = [WeakRetained graph];
    v9 = [graph anyNodeForLabel:@"Weekend" domain:400 properties:0];

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
              v40 = 41;
              v41 = 2080;
              v42 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipWeekendAnalyzer.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }

      goto LABEL_42;
    }

    edgesCount = [v9 edgesCount];
    collection = [v9 collection];
    momentNodes = [collection momentNodes];

    personNodes = [WeakRetained personNodes];
    v14 = [PGPeopleInferencesConveniences countedPersonNodesFromMomentNodes:momentNodes amongPersonNodes:personNodes];

    v15 = [v14 count];
    if (v15)
    {
      v16 = v15;
      v31 = momentNodes;
      v32 = v9;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v30 = v14;
      v17 = v14;
      v18 = [v17 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 1.0 / v16;
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
            localIdentifier = [v24 localIdentifier];
            v26 = [WeakRetained relationshipAnalyzerPropertiesForPersonLocalIdentifier:localIdentifier];
            if (v26)
            {
              [v26 registerNumberOfWeekendMoments:objc_msgSend(v17 amongWeekends:{"countForObject:", v24), edgesCount}];
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
                    v40 = 68;
                    v41 = 2080;
                    v42 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipWeekendAnalyzer.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  momentNodes = v31;
                  v9 = v32;
                  v14 = v30;
                  goto LABEL_41;
                }

                v5 = Current;
              }
            }

            v22 = v20 + v22;
          }

          v19 = [v17 countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      momentNodes = v31;
      v9 = v32;
      v14 = v30;
      if (!v4)
      {
        goto LABEL_41;
      }

      if (CFAbsoluteTimeGetCurrent() - v5 < 0.01)
      {
        goto LABEL_41;
      }

      v37 = 0;
      v4[2](v4, &v37, 1.0);
      if (!v37 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_41;
      }

      *buf = 67109378;
      v40 = 72;
      v41 = 2080;
      v42 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipWeekendAnalyzer.m";
      v28 = MEMORY[0x277D86220];
    }

    else
    {
      if (!v4)
      {
        goto LABEL_41;
      }

      if (CFAbsoluteTimeGetCurrent() - v5 < 0.01)
      {
        goto LABEL_41;
      }

      v37 = 0;
      v4[2](v4, &v37, 1.0);
      if (!v37 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_41;
      }

      *buf = 67109378;
      v40 = 53;
      v41 = 2080;
      v42 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipWeekendAnalyzer.m";
      v28 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
LABEL_41:

LABEL_42:
    goto LABEL_43;
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
    v40 = 35;
    v41 = 2080;
    v42 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipWeekendAnalyzer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_43:

  v29 = *MEMORY[0x277D85DE8];
}

- (PGRelationshipWeekendAnalyzer)initWithRelationshipProcessor:(id)processor
{
  processorCopy = processor;
  v8.receiver = self;
  v8.super_class = PGRelationshipWeekendAnalyzer;
  v5 = [(PGRelationshipWeekendAnalyzer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processor, processorCopy);
  }

  return v6;
}

@end