@interface PGRelationshipHomeAnalyzer
- (PGRelationshipHomeAnalyzer)initWithRelationshipProcessor:(id)processor;
- (void)runAnalysisWithProgressBlock:(id)block;
@end

@implementation PGRelationshipHomeAnalyzer

- (void)runAnalysisWithProgressBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = _Block_copy(block);
  v5 = 0.0;
  if (!v4 || (Current = CFAbsoluteTimeGetCurrent(), Current < 0.01))
  {
    v7 = 0;
LABEL_4:
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    momentNodes = [WeakRetained momentNodes];
    v10 = [PGPeopleInferencesConveniences momentNodesAtHomeInMomentNodes:momentNodes];

    v11 = [v10 count];
    if (v11)
    {
      v12 = v11;
      v25 = v7;
      v26 = v4;
      personNodes = [WeakRetained personNodes];
      v14 = [PGPeopleInferencesConveniences countedPersonNodesFromMomentNodes:v10 amongPersonNodes:personNodes];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v28;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v28 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v27 + 1) + 8 * i);
            v21 = [v15 countForObject:v20];
            localIdentifier = [v20 localIdentifier];
            v23 = [WeakRetained relationshipAnalyzerPropertiesForPersonLocalIdentifier:localIdentifier];

            if (v23)
            {
              [v23 registerNumberOfMomentsAtHome:v21 amongMomentsAtHome:v12];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v17);
      }

      v4 = v26;
      if (v26)
      {
        if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
        {
          v31 = 0;
          v26[2](v26, &v31, 1.0);
          if (v25 | v31)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v34 = 56;
              v35 = 2080;
              v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipHomeAnalyzer.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }
    }

    goto LABEL_21;
  }

  v31 = 0;
  v4[2](v4, &v31, 0.0);
  v7 = v31;
  if (v31 != 1)
  {
    v5 = Current;
    goto LABEL_4;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v34 = 34;
    v35 = 2080;
    v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipHomeAnalyzer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_21:

  v24 = *MEMORY[0x277D85DE8];
}

- (PGRelationshipHomeAnalyzer)initWithRelationshipProcessor:(id)processor
{
  processorCopy = processor;
  v8.receiver = self;
  v8.super_class = PGRelationshipHomeAnalyzer;
  v5 = [(PGRelationshipHomeAnalyzer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processor, processorCopy);
  }

  return v6;
}

@end