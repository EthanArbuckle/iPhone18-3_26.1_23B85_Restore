@interface PGRelationshipHolidayAnalyzer
- (PGRelationshipHolidayAnalyzer)initWithRelationshipProcessor:(id)a3;
- (id)_familyHolidayMomentsFromMomentNodes:(id)a3 inGraph:(id)a4;
- (void)runAnalysisWithProgressBlock:(id)a3;
@end

@implementation PGRelationshipHolidayAnalyzer

- (id)_familyHolidayMomentsFromMomentNodes:(id)a3 inGraph:(id)a4
{
  v5 = a3;
  v6 = [PGGraphHolidayNodeCollection holidayNodesWithCategory:2 inGraph:a4];
  v7 = [v6 celebratingMomentNodes];
  v8 = [v7 collectionByIntersecting:v5];

  return v8;
}

- (void)runAnalysisWithProgressBlock:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = _Block_copy(a3);
  v5 = 0.0;
  if (!v4 || (v6 = CFAbsoluteTimeGetCurrent(), v6 < 0.01))
  {
LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    v8 = [WeakRetained momentNodes];
    v9 = [WeakRetained graph];
    v10 = [(PGRelationshipHolidayAnalyzer *)self _familyHolidayMomentsFromMomentNodes:v8 inGraph:v9];

    v11 = [v10 count];
    if (v11)
    {
      v12 = v11;
      v13 = [WeakRetained personNodes];
      v14 = [PGPeopleInferencesConveniences countedPersonNodesFromMomentNodes:v10 amongPersonNodes:v13];

      if (v4)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v5 >= 0.01)
        {
          v31 = 0;
          v4[2](v4, &v31, 0.5);
          if (v31)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v34 = 46;
              v35 = 2080;
              v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipHolidayAnalyzer.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

LABEL_30:
            goto LABEL_31;
          }

          v5 = Current;
        }
      }

      v26 = v10;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v27 + 1) + 8 * i);
            v22 = [v16 countForObject:v21];
            v23 = [v21 localIdentifier];
            v24 = [WeakRetained relationshipAnalyzerPropertiesForPersonLocalIdentifier:v23];

            if (v24)
            {
              [v24 registerAttendance:v22 amongFamilyHolidays:v12];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v18);
      }

      v10 = v26;
    }

    if (v4)
    {
      if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
      {
        v31 = 0;
        v4[2](v4, &v31, 1.0);
        if (v31)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v34 = 58;
            v35 = 2080;
            v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipHolidayAnalyzer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_30;
  }

  v31 = 0;
  v4[2](v4, &v31, 0.0);
  if (v31 != 1)
  {
    v5 = v6;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v34 = 34;
    v35 = 2080;
    v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipHolidayAnalyzer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_31:

  v25 = *MEMORY[0x277D85DE8];
}

- (PGRelationshipHolidayAnalyzer)initWithRelationshipProcessor:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PGRelationshipHolidayAnalyzer;
  v5 = [(PGRelationshipHolidayAnalyzer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processor, v4);
  }

  return v6;
}

@end