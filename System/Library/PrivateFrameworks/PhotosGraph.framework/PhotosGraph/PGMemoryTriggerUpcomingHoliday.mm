@interface PGMemoryTriggerUpcomingHoliday
- (PGMemoryTriggerUpcomingHoliday)initWithLoggingConnection:(id)a3 holidayService:(id)a4;
- (id)relevantFeatureNodesInFeatureNodes:(id)a3;
- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5;
@end

@implementation PGMemoryTriggerUpcomingHoliday

- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v44 = 53;
      v45 = 2080;
      v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerUpcomingHoliday.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    [v8 timeZone];
    v13 = v12 = v8;
    v14 = [v12 localDate];
    v15 = [MEMORY[0x277D27690] universalDateFromLocalDate:v14 inTimeZone:v13];
    v16 = [MEMORY[0x277D27690] dateByAddingDays:1 toDate:v15];
    v35 = v15;
    v17 = [MEMORY[0x277D27690] dateByAddingDays:7 toDate:v15];
    v34 = v16;
    [MEMORY[0x277D27690] localDateFromUniversalDate:v16 inTimeZone:v13];
    v31 = v10;
    v18 = v32 = v13;
    v33 = v17;
    v19 = [MEMORY[0x277D27690] localDateFromUniversalDate:v17 inTimeZone:v13];
    v36 = v14;
    v20 = [MEMORY[0x277D27690] yearFromDate:v14];
    v21 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:16 inGraph:v9];
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = [(PGHolidayMemoryTrigger *)self holidayService];
    validHolidaysNames = self->_validHolidaysNames;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __87__PGMemoryTriggerUpcomingHoliday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
    v37[3] = &unk_2788801F8;
    v37[4] = self;
    v38 = v9;
    v39 = v21;
    v42 = v20;
    v8 = v12;
    v40 = v12;
    v25 = v22;
    v26 = v18;
    v10 = v31;
    v27 = v25;
    v41 = v25;
    v28 = v21;
    [v23 enumerateEventRulesForAllCountriesWithNames:validHolidaysNames betweenLocalDate:v26 andLocalDate:v19 usingBlock:v37];

    if ([v31 isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v44 = 103;
        v45 = 2080;
        v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerUpcomingHoliday.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v11 = v27;
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v11;
}

void __87__PGMemoryTriggerUpcomingHoliday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 name];
  if ([*(*(a1 + 32) + 24) containsObject:v6])
  {
    v7 = [PGGraphHolidayNodeCollection holidayNodesWithName:v6 inGraph:*(a1 + 40)];
    if ([v7 count])
    {
      v46 = v7;
      v47 = v6;
      v8 = [v7 featureNodeCollection];
      v9 = [v8 memoryNodes];

      v45 = v9;
      v10 = [*(a1 + 48) collectionByIntersecting:v9];
      v11 = [v10 momentNodes];
      v12 = [v11 dateNodes];
      v13 = [v12 yearNodes];

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v44 = v13;
      v14 = [v13 years];
      v15 = [v14 countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = *v54;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v54 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = [*(*(&v53 + 1) + 8 * i) integerValue];
            if (v17 < v20 && *(a1 + 72) >= v20)
            {
              v17 = v20;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v16);
      }

      else
      {
        v17 = 0;
      }

      v21 = [PGGraphYearNodeCollection yearNodesForYear:v17 inGraph:*(a1 + 40)];
      v22 = [v21 dateNodes];
      v23 = [v22 momentNodes];
      v24 = [v23 memoryNodes];

      v25 = [v10 collectionByIntersecting:v24];

      if ([v25 count])
      {
        v41 = v24;
        v42 = v21;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v43 = v5;
        obj = v5;
        v26 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v50;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v50 != v28)
              {
                objc_enumerationMutation(obj);
              }

              v30 = *(*(&v49 + 1) + 8 * j);
              v31 = [v30 dateByAddingTimeInterval:{-86400.0, v41, v42, v43}];
              v32 = [v30 dateByAddingTimeInterval:-604800.0];
              v33 = *(a1 + 32);
              v34 = objc_opt_class();
              v35 = [*(a1 + 56) timeZone];
              v36 = [v34 validityIntervalForLocalStartDate:v32 localEndDate:v31 timeZone:v35];

              v37 = *(a1 + 64);
              v38 = *(a1 + 32);
              v39 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v25 withValidityInterval:v36];
              [v37 addObjectsFromArray:v39];
            }

            v27 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
          }

          while (v27);
        }

        v21 = v42;
        v5 = v43;
        v24 = v41;
      }

      v6 = v47;
    }

    else
    {
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (id)relevantFeatureNodesInFeatureNodes:(id)a3
{
  v3 = [(PGGraphNodeCollection *)PGGraphHolidayNodeCollection subsetInCollection:a3];
  v4 = [v3 featureNodeCollection];

  return v4;
}

- (PGMemoryTriggerUpcomingHoliday)initWithLoggingConnection:(id)a3 holidayService:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = PGMemoryTriggerUpcomingHoliday;
  v4 = [(PGHolidayMemoryTrigger *)&v25 initWithLoggingConnection:a3 holidayService:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(PGHolidayMemoryTrigger *)v4 holidayService];
    v7 = [(PGHolidayMemoryTrigger *)v5 holidayService];
    v8 = [v7 locale];
    v9 = [v8 countryCode];
    v10 = [v6 triggerHolidaysForCountryCode:v9];

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v21 + 1) + 8 * v16) name];
          [(NSSet *)v11 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }

    validHolidaysNames = v5->_validHolidaysNames;
    v5->_validHolidaysNames = v11;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

@end