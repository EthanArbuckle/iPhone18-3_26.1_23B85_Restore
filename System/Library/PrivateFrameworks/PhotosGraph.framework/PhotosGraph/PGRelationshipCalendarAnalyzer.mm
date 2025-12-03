@interface PGRelationshipCalendarAnalyzer
- (PGRelationshipCalendarAnalyzer)initWithRelationshipProcessor:(id)processor;
- (void)runAnalysisWithProgressBlock:(id)block;
@end

@implementation PGRelationshipCalendarAnalyzer

- (void)runAnalysisWithProgressBlock:(id)block
{
  v70 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = _Block_copy(blockCopy);
  v6 = 0.0;
  if (!v5 || (v7 = CFAbsoluteTimeGetCurrent(), v7 < 0.01))
  {
LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    serviceManager = [WeakRetained serviceManager];
    date = [MEMORY[0x277CBEAA8] date];
    v11 = [MEMORY[0x277D27690] dateByAddingMonths:-2 toDate:date];
    v12 = [MEMORY[0x277CCA940] set];
    v46 = WeakRetained;
    contactIdentifiers = [WeakRetained contactIdentifiers];
    v49 = serviceManager;
    v14 = [serviceManager workCalendarEventsMatchingContactIdentifiers:contactIdentifiers fromUniversalDate:v11 toUniversalDate:date];

    v47 = [v14 count];
    if (v5)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v6 >= 0.01)
      {
        v62 = 0;
        v5[2](v5, &v62, 0.7);
        if (v62)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v67 = 50;
            v68 = 2080;
            v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipCalendarAnalyzer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v16 = v46;
LABEL_46:

          goto LABEL_47;
        }

        v6 = Current;
      }
    }

    v42 = v11;
    v43 = date;
    v44 = v5;
    v45 = blockCopy;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v41 = v14;
    obj = v14;
    v17 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v59;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v59 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v58 + 1) + 8 * i);
          v22 = objc_autoreleasePoolPush();
          attendees = [v21 attendees];
          v24 = [v49 personsFromEventParticipants:attendees excludeCurrentUser:1];
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v25 = [v24 countByEnumeratingWithState:&v54 objects:v64 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v55;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v55 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                [v12 addObject:*(*(&v54 + 1) + 8 * j)];
              }

              v26 = [v24 countByEnumeratingWithState:&v54 objects:v64 count:16];
            }

            while (v26);
          }

          objc_autoreleasePoolPop(v22);
        }

        v18 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
      }

      while (v18);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v29 = v12;
    v30 = [v29 countByEnumeratingWithState:&v50 objects:v63 count:16];
    v16 = v46;
    if (v30)
    {
      v31 = v30;
      v32 = *v51;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v51 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v50 + 1) + 8 * k);
          v35 = [v29 countForObject:v34];
          cNIdentifier = [v34 CNIdentifier];
          if (cNIdentifier)
          {
            v37 = [v46 personLocalIdentifierForContactIdentifier:cNIdentifier];
            if ([v37 length])
            {
              v38 = [v46 relationshipAnalyzerPropertiesForPersonLocalIdentifier:v37];
              v39 = v38;
              if (v38)
              {
                [v38 registerAttendance:v35 amongWorkCalendarEvents:v47];
              }
            }
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v50 objects:v63 count:16];
      }

      while (v31);
    }

    v5 = v44;
    blockCopy = v45;
    v11 = v42;
    date = v43;
    v14 = v41;
    if (v44)
    {
      if (CFAbsoluteTimeGetCurrent() - v6 >= 0.01)
      {
        v62 = 0;
        v44[2](v44, &v62, 1.0);
        if (v62)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v67 = 79;
            v68 = 2080;
            v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipCalendarAnalyzer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_46;
  }

  v62 = 0;
  v5[2](v5, &v62, 0.0);
  if (v62 != 1)
  {
    v6 = v7;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v67 = 39;
    v68 = 2080;
    v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipCalendarAnalyzer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_47:

  v40 = *MEMORY[0x277D85DE8];
}

- (PGRelationshipCalendarAnalyzer)initWithRelationshipProcessor:(id)processor
{
  processorCopy = processor;
  v8.receiver = self;
  v8.super_class = PGRelationshipCalendarAnalyzer;
  v5 = [(PGRelationshipCalendarAnalyzer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processor, processorCopy);
  }

  return v6;
}

@end