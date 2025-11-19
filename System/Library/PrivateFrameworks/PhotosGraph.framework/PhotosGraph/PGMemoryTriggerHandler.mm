@interface PGMemoryTriggerHandler
+ (double)scoreForTriggerType:(unint64_t)a3;
+ (double)triggerScoreForTriggeredMemory:(id)a3;
+ (id)creationDateWithContext:(id)a3;
+ (id)fallbackTriggeredMemoriesWithContext:(id)a3 excludingTriggeredMemories:(id)a4 inGraph:(id)a5 holidayService:(id)a6;
+ (id)memoryNodesAllowedToBeFallbackFromMemoryNodes:(id)a3 withContext:(id)a4 inGraph:(id)a5 holidayService:(id)a6;
+ (id)personMemoryNodesFeaturingMeNodeInGraph:(id)a3;
+ (unint64_t)maximumValidityPeriodForValidityIntervalByTriggerType:(id)a3 context:(id)a4;
- (PGMemoryTriggerHandler)initWithWorkingContext:(id)a3 momentNodesWithBlockedFeatureCache:(id)a4;
- (id)allTriggeredMemoriesWithContext:(id)a3 forTriggerType:(unint64_t)a4 inGraph:(id)a5 progressReporter:(id)a6;
- (id)futureMemoriesForConfiguration:(id)a3 withGraph:(id)a4 progressReporter:(id)a5;
- (id)relevantFeatureNodesInFeatureNodes:(id)a3 forTriggerType:(unint64_t)a4;
@end

@implementation PGMemoryTriggerHandler

- (id)futureMemoriesForConfiguration:(id)a3 withGraph:(id)a4 progressReporter:(id)a5
{
  v65 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v42 = a4;
  v38 = v7;
  v39 = a5;
  v40 = [v7 futureMemoryCollisionUniversalDateInterval];
  v43 = [v40 startDate];
  v50 = [v40 endDate];
  v8 = v50;
  [v50 timeIntervalSinceDate:v43];
  v10 = (v9 / 86400.0);
  if (v10 < 1)
  {
    v51 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v11 = self->_loggingConnection;
    v12 = os_signpost_id_generate(v11);
    v13 = v11;
    v14 = v13;
    v37 = v12 - 1;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MemoryElectionFutureMemories", "", buf, 2u);
    }

    spid = v12;
    v36 = v14;

    info = 0;
    mach_timebase_info(&info);
    v35 = mach_absolute_time();
    v41 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:v39];
    v45 = [v38 timeZone];
    v51 = [MEMORY[0x277CBEB18] array];
    v52 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([v50 compare:v43] == -1)
    {
      v8 = v50;
    }

    else
    {
      v15 = 1.0 / ((v10 & ~(v10 >> 63)) + 1);
      v16 = v15;
      do
      {
        context = objc_autoreleasePoolPush();
        v49 = [MEMORY[0x277D27690] localDateFromUniversalDate:v50 inTimeZone:{v45, spid}];
        v48 = [[PGMemoryContext alloc] initWithFutureLocalDate:v49 timeZone:v45 photoLibrary:self->_photoLibrary];
        v47 = [v41 childProgressReporterToCheckpoint:v16];
        v17 = [(PGMemoryTriggerHandler *)self allTriggeredMemoriesWithContext:v48 inGraph:v42 progressReporter:v47];
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v57 objects:v64 count:16];
        if (v19)
        {
          v20 = *v58;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v58 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v22 = *(*(&v57 + 1) + 8 * i);
              v23 = objc_autoreleasePoolPush();
              v24 = [v22 uniqueMemoryIdentifier];
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              v63 = 1;
              v25 = [v22 triggerTypes];
              v53[0] = MEMORY[0x277D85DD0];
              v53[1] = 3221225472;
              v53[2] = __84__PGMemoryTriggerHandler_futureMemoriesForConfiguration_withGraph_progressReporter___block_invoke;
              v53[3] = &unk_278883710;
              v54 = v52;
              v26 = v24;
              v55 = v26;
              v56 = buf;
              [v25 enumerateIndexesUsingBlock:v53];

              if (*(*&buf[8] + 24) == 1)
              {
                [v51 addObject:v22];
              }

              _Block_object_dispose(buf, 8);
              objc_autoreleasePoolPop(v23);
            }

            v19 = [v18 countByEnumeratingWithState:&v57 objects:v64 count:16];
          }

          while (v19);
        }

        v8 = [MEMORY[0x277D27690] dateByAddingDays:-1 toDate:v50];

        objc_autoreleasePoolPop(context);
        v16 = v15 + v16;
        v50 = v8;
      }

      while ([v8 compare:v43] != -1);
    }

    v27 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v30 = v36;
    v31 = v30;
    if (v37 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v31, OS_SIGNPOST_INTERVAL_END, spid, "MemoryElectionFutureMemories", "", buf, 2u);
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "MemoryElectionFutureMemories";
      *&buf[12] = 2048;
      *&buf[14] = ((((v27 - v35) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  v32 = *MEMORY[0x277D85DE8];

  return v51;
}

void __84__PGMemoryTriggerHandler_futureMemoriesForConfiguration_withGraph_progressReporter___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v9 = [v4 objectForKeyedSubscript:v5];

  if (v9)
  {
    if ([v9 containsObject:a1[5]])
    {
      *(*(a1[6] + 8) + 24) = 0;
    }

    else
    {
      [v9 addObject:a1[5]];
    }
  }

  else
  {
    v6 = [MEMORY[0x277CBEB58] setWithObject:a1[5]];
    v7 = a1[4];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }
}

- (id)relevantFeatureNodesInFeatureNodes:(id)a3 forTriggerType:(unint64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [PGGraphFeatureNodeCollection alloc];
  v8 = [v6 graph];
  v9 = [(MAElementCollection *)v7 initWithGraph:v8];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_allMemoryTriggers;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if ([v15 triggerType] == a4)
        {
          v16 = [v15 relevantFeatureNodesInFeatureNodes:v6];

          v9 = v16;
          goto LABEL_11;
        }
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)allTriggeredMemoriesWithContext:(id)a3 forTriggerType:(unint64_t)a4 inGraph:(id)a5 progressReporter:(id)a6
{
  v114 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v82 = a5;
  v83 = a6;
  v11 = [(NSArray *)self->_allMemoryTriggers count];
  v81 = self;
  loggingConnection = self->_loggingConnection;
  if (v11)
  {
    v13 = loggingConnection;
    v14 = os_signpost_id_generate(v13);
    v15 = v13;
    v16 = v15;
    v75 = v14 - 1;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "MemoryElectionAllTrigeredMemories", "", buf, 2u);
    }

    spid = v14;
    v76 = v16;

    info = 0;
    mach_timebase_info(&info);
    v74 = mach_absolute_time();
    v91 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v89 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = [(NSArray *)v81->_allMemoryTriggers count];
    v18 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:v83];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    obj = v81->_allMemoryTriggers;
    v19 = [(NSArray *)obj countByEnumeratingWithState:&v101 objects:v113 count:16];
    v79 = v18;
    if (v19)
    {
      v20 = v19;
      v21 = 1.0 / v17;
      v22 = *v102;
      v23 = 0.0;
      v77 = *v102;
      v78 = a4;
      while (2)
      {
        v24 = 0;
        v80 = v20;
        do
        {
          if (*v102 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v101 + 1) + 8 * v24);
          v26 = objc_autoreleasePoolPush();
          v23 = fmin(v21 + v23, 1.0);
          v27 = [v18 childProgressReporterToCheckpoint:v23];
          v90 = [v25 triggerType];
          if ((!a4 || v90 == a4) && (![v10 futureLookup] || objc_msgSend(v25, "supportsFutureLookup")))
          {
            context = v26;
            v88 = v27;
            v86 = v24;
            v28 = v81->_loggingConnection;
            v29 = os_signpost_id_generate(v28);
            v30 = v28;
            v31 = v30;
            if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v29, "MemoryElectionTrigger", "", buf, 2u);
            }

            v100 = 0;
            mach_timebase_info(&v100);
            v32 = mach_absolute_time();
            v33 = [v25 resultsTriggeredWithContext:v10 inGraph:v82 progressReporter:v27];
            if ([v83 isCancelled])
            {

              objc_autoreleasePoolPop(context);
              v70 = MEMORY[0x277CBEBF8];
              v66 = v76;
              goto LABEL_47;
            }

            v34 = mach_absolute_time();
            numer = v100.numer;
            denom = v100.denom;
            v37 = v31;
            v38 = v37;
            if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
            {
              v39 = objc_opt_class();
              v40 = NSStringFromClass(v39);
              *buf = 138412290;
              v108 = v40;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v38, OS_SIGNPOST_INTERVAL_END, v29, "MemoryElectionTrigger", "%@", buf, 0xCu);
            }

            v41 = v38;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              v42 = MEMORY[0x277CCACA8];
              v43 = objc_opt_class();
              v44 = NSStringFromClass(v43);
              [v42 stringWithFormat:@"%@", v44];
              v45 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 136315650;
              v108 = "MemoryElectionTrigger";
              v109 = 2112;
              v110 = v45;
              v111 = 2048;
              v112 = ((((v34 - v32) * numer) / denom) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v41, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
            }

            v85 = v41;

            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            v46 = v33;
            v47 = [v46 countByEnumeratingWithState:&v96 objects:v106 count:16];
            if (v47)
            {
              v48 = v47;
              v49 = *v97;
              do
              {
                for (i = 0; i != v48; ++i)
                {
                  if (*v97 != v49)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v51 = *(*(&v96 + 1) + 8 * i);
                  v52 = [v51 memoryNode];
                  v53 = [v10 categoriesDeniedForContextual];
                  v54 = [v53 containsIndex:{objc_msgSend(v52, "memoryCategory")}];

                  if ((v54 & 1) == 0)
                  {
                    v55 = v10;
                    v56 = [v52 uniqueMemoryIdentifier];
                    v57 = [v91 objectForKeyedSubscript:v56];
                    if (!v57)
                    {
                      v57 = objc_alloc_init(MEMORY[0x277CBEB38]);
                      [v91 setObject:v57 forKeyedSubscript:v56];
                    }

                    v58 = [v51 validityInterval];
                    v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v90];
                    [v57 setObject:v58 forKeyedSubscript:v59];

                    [v89 setObject:v52 forKeyedSubscript:v56];
                    v10 = v55;
                  }
                }

                v48 = [v46 countByEnumeratingWithState:&v96 objects:v106 count:16];
              }

              while (v48);
            }

            a4 = v78;
            v18 = v79;
            v20 = v80;
            v22 = v77;
            v24 = v86;
            v26 = context;
            v27 = v88;
          }

          objc_autoreleasePoolPop(v26);
          ++v24;
        }

        while (v24 != v20);
        v20 = [(NSArray *)obj countByEnumeratingWithState:&v101 objects:v113 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v60 = [objc_opt_class() creationDateWithContext:v10];
    v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __98__PGMemoryTriggerHandler_allTriggeredMemoriesWithContext_forTriggerType_inGraph_progressReporter___block_invoke;
    v92[3] = &unk_278886108;
    v93 = v89;
    obj = v60;
    v94 = obj;
    v62 = v61;
    v95 = v62;
    [v91 enumerateKeysAndObjectsUsingBlock:v92];
    v63 = mach_absolute_time();
    v64 = info.numer;
    v65 = info.denom;
    v66 = v76;
    v67 = v76;
    v68 = v67;
    if (v75 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v67))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v68, OS_SIGNPOST_INTERVAL_END, spid, "MemoryElectionAllTrigeredMemories", "", buf, 2u);
    }

    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v108 = "MemoryElectionAllTrigeredMemories";
      v109 = 2048;
      v110 = ((((v63 - v74) * v64) / v65) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v68, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v69 = v95;
    v70 = v62;

    v18 = v79;
LABEL_47:
  }

  else
  {
    if (os_log_type_enabled(self->_loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGMemoryTriggerHandler] No memory triggers initialized.", buf, 2u);
    }

    v70 = MEMORY[0x277CBEBF8];
  }

  v71 = *MEMORY[0x277D85DE8];

  return v70;
}

void __98__PGMemoryTriggerHandler_allTriggeredMemoriesWithContext_forTriggerType_inGraph_progressReporter___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = [v5 objectForKeyedSubscript:a2];
  v7 = [[PGTriggeredMemory alloc] initWithMemoryNode:v8 validityIntervalByTriggerType:v6 creationDate:*(a1 + 40)];

  [*(a1 + 48) addObject:v7];
}

- (PGMemoryTriggerHandler)initWithWorkingContext:(id)a3 momentNodesWithBlockedFeatureCache:(id)a4
{
  v52[26] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v51.receiver = self;
  v51.super_class = PGMemoryTriggerHandler;
  v8 = [(PGMemoryTriggerHandler *)&v51 init];
  if (v8)
  {
    v9 = os_log_create("com.apple.PhotosGraph", "MemoryTriggerHandler");
    loggingConnection = v8->_loggingConnection;
    v8->_loggingConnection = v9;

    v11 = [v6 photoLibrary];
    photoLibrary = v8->_photoLibrary;
    v8->_photoLibrary = v11;

    v13 = objc_alloc(MEMORY[0x277D276D8]);
    v14 = [MEMORY[0x277CBEAF8] currentLocale];
    v15 = [v13 initWithLocale:v14];
    holidayService = v8->_holidayService;
    v8->_holidayService = v15;

    v49 = [(PGHolidayMemoryTrigger *)[PGMemoryTriggerHoliday alloc] initWithLoggingConnection:v8->_loggingConnection holidayService:v8->_holidayService];
    v52[0] = v49;
    v48 = [[PGMemoryTriggerPersonBirthday alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[1] = v48;
    v47 = [(PGHolidayMemoryTrigger *)[PGMemoryTriggerFeatureCentricHoliday alloc] initWithLoggingConnection:v8->_loggingConnection holidayService:v8->_holidayService];
    v52[2] = v47;
    v46 = [[PGMemoryTriggerSameDayInHistory alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[3] = v46;
    v45 = [[PGMemoryTriggerEndOfYear alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[4] = v45;
    v44 = [[PGMemoryTriggerBeginningOfMonth alloc] initWithLoggingConnection:v8->_loggingConnection momentNodesWithBlockedFeatureCache:v7];
    v52[5] = v44;
    v43 = [[PGMemoryTriggerBeginningOfSeason alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[6] = v43;
    v42 = [[PGMemoryTriggerSeasonInHistory alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[7] = v42;
    v41 = [[PGMemoryTriggerRecentMomentWithPerson alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[8] = v41;
    v40 = [[PGMemoryTriggerThrowbackWeekInHistory alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[9] = v40;
    v39 = [(PGHolidayMemoryTrigger *)[PGMemoryTriggerRecentHolidayCelebration alloc] initWithLoggingConnection:v8->_loggingConnection holidayService:v8->_holidayService];
    v52[10] = v39;
    v38 = [[PGMemoryTriggerRecentMomentWithSocialGroup alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[11] = v38;
    v37 = [[PGMemoryTriggerRecentTrip alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[12] = v37;
    v36 = [[PGMemoryTriggerPersonAnniversary alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[13] = v36;
    v35 = [[PGMemoryTriggerRecentHighlights alloc] initWithLoggingConnection:v8->_loggingConnection momentNodesWithBlockedFeatureCache:v7];
    v52[14] = v35;
    v34 = [[PGMemoryTriggerUpcomingHoliday alloc] initWithLoggingConnection:v8->_loggingConnection holidayService:v8->_holidayService];
    v52[15] = v34;
    v33 = [[PGMemoryTriggerRecentSyndicatedAssets alloc] initWithLoggingConnection:v8->_loggingConnection photoLibrary:v8->_photoLibrary momentNodesWithBlockedFeatureCache:v7];
    v52[16] = v33;
    v32 = [[PGMemoryTriggerRecentMeaningfulEvent alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[17] = v32;
    v17 = [PGMemoryTriggerUpcomingCalendarEvent alloc];
    v31 = [v6 serviceManager];
    v30 = [v6 locationCache];
    v18 = [(PGMemoryTriggerUpcomingCalendarEvent *)v17 initWithServiceManager:v31 locationCache:v30 loggingConnection:v8->_loggingConnection];
    v52[18] = v18;
    v19 = [[PGMemoryTriggerLastWeekend alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[19] = v19;
    v20 = [[PGMemoryTriggerLastWeek alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[20] = v20;
    v50 = v6;
    v21 = [[PGMemoryTriggerRecentBreakoutOfRoutine alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[21] = v21;
    v22 = [(PGHolidayMemoryTrigger *)[PGMemoryTriggerUpcomingPersonCentricHoliday alloc] initWithLoggingConnection:v8->_loggingConnection holidayService:v8->_holidayService];
    v52[22] = v22;
    v23 = [[PGMemoryTriggerUpcomingBirthday alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[23] = v23;
    v24 = [[PGMemoryTriggerUpcomingAnniversary alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[24] = v24;
    v25 = [[PGMemoryTriggerRecentTrendsMoment alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[25] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:26];
    allMemoryTriggers = v8->_allMemoryTriggers;
    v8->_allMemoryTriggers = v26;

    v6 = v50;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (unint64_t)maximumValidityPeriodForValidityIntervalByTriggerType:(id)a3 context:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 localDate];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [v7 objectForKeyedSubscript:{*(*(&v19 + 1) + 8 * i), v19}];
        v14 = [v13 endDate];
        [v14 timeIntervalSinceDate:v6];
        v16 = v15;

        if (v10 <= ((v16 / 86400.0) & ~((v16 / 86400.0) >> 63)))
        {
          v10 = (v16 / 86400.0) & ~((v16 / 86400.0) >> 63);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (double)scoreForTriggerType:(unint64_t)a3
{
  result = 0.0;
  if (a3 - 1 <= 0x1A)
  {
    return dbl_22F78C4D8[a3 - 1];
  }

  return result;
}

+ (double)triggerScoreForTriggeredMemory:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [v4 triggerTypes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__PGMemoryTriggerHandler_triggerScoreForTriggeredMemory___block_invoke;
  v8[3] = &unk_278883738;
  v8[4] = &v9;
  v8[5] = a1;
  [v5 enumerateIndexesUsingBlock:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

double __57__PGMemoryTriggerHandler_triggerScoreForTriggeredMemory___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 40) scoreForTriggerType:a2];
  v3 = *(*(a1 + 32) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

+ (id)creationDateWithContext:(id)a3
{
  v3 = a3;
  v4 = [PGMemoryDate alloc];
  v5 = [v3 localDate];
  v6 = [(PGMemoryDate *)v4 initWithLocalDate:v5];

  v7 = [v3 timeZone];

  v8 = [(PGMemoryDate *)v6 universalDateInTimeZone:v7];

  return v8;
}

+ (id)personMemoryNodesFeaturingMeNodeInGraph:(id)a3
{
  v3 = a3;
  v4 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v3];
  v5 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:3 inGraph:v3];

  v6 = [v4 featureNodeCollection];
  v7 = [v6 memoryNodes];

  v8 = [v5 collectionByIntersecting:v7];

  return v8;
}

+ (id)memoryNodesAllowedToBeFallbackFromMemoryNodes:(id)a3 withContext:(id)a4 inGraph:(id)a5 holidayService:(id)a6
{
  v10 = a4;
  v11 = a5;
  v66 = a6;
  v12 = a3;
  v13 = [v10 categoriesDeniedForFallback];
  v14 = [PGGraphMemoryNodeCollection memoryNodesOfCategories:v13 inGraph:v11];

  v70 = v14;
  v15 = [v12 collectionBySubtracting:v14];

  v16 = MEMORY[0x277D27690];
  v17 = [v10 localDate];
  v18 = +[PGGraphYearNodeCollection yearNodesForYear:inGraph:](PGGraphYearNodeCollection, "yearNodesForYear:inGraph:", [v16 yearFromDate:v17], v11);

  v69 = v18;
  v19 = [v18 featureNodeCollection];
  v20 = [v19 memoryNodes];

  v68 = v20;
  v21 = [v15 collectionBySubtracting:v20];

  v22 = MEMORY[0x277D27690];
  v23 = [v10 localDate];
  v24 = [v22 seasonNameForLocalDate:v23 locale:0];

  v25 = [(PGGraphNodeCollection *)PGGraphSeasonNodeCollection nodesInGraph:v11];
  v65 = v24;
  if (v24)
  {
    v26 = [PGGraphSeasonNodeCollection seasonNodesForSeasonName:v24 inGraph:v11];
    v27 = [v25 collectionBySubtracting:v26];

    v25 = v27;
  }

  v59 = v25;
  v28 = [v25 featureNodeCollection];
  v64 = [v28 memoryNodes];

  v29 = [v21 collectionBySubtracting:v64];

  v63 = [a1 personMemoryNodesFeaturingMeNodeInGraph:v11];
  v30 = [v29 collectionBySubtracting:v63];

  v62 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:17 inGraph:v11];
  v60 = [(PGGraphNodeCollection *)PGGraphHolidayNodeCollection nodesInGraph:v11];
  v31 = [v60 featureNodeCollection];
  v32 = [v31 memoryNodes];
  v61 = [v32 collectionByIntersecting:v62];

  v58 = [v30 collectionBySubtracting:v61];

  v33 = MEMORY[0x277D22BF8];
  v34 = +[PGGraphFeatureNodeCollection memoryOfFeature];
  v35 = [v33 adjacencyWithSources:v60 relation:v34 targetsClass:objc_opt_class()];

  v36 = [v35 sources];
  v55 = [v36 holidayNames];

  v37 = MEMORY[0x277D27690];
  v38 = [v10 localDate];
  v39 = [v10 timeZone];
  v40 = [v37 universalDateFromLocalDate:v38 inTimeZone:v39];

  v56 = [v40 dateByAddingTimeInterval:-5259600.0];
  v54 = [v40 dateByAddingTimeInterval:5259600.0];
  v41 = MEMORY[0x277D27690];
  v42 = [v10 timeZone];
  v43 = [v41 localDateFromUniversalDate:v56 inTimeZone:v42];

  v44 = MEMORY[0x277D27690];
  v45 = [v10 timeZone];
  v46 = [v44 localDateFromUniversalDate:v54 inTimeZone:v45];

  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __107__PGMemoryTriggerHandler_memoryNodesAllowedToBeFallbackFromMemoryNodes_withContext_inGraph_holidayService___block_invoke;
  v71[3] = &unk_2788836E8;
  v72 = v47;
  v57 = v10;
  v48 = v47;
  [v66 enumerateEventRulesForAllCountriesWithNames:v55 betweenLocalDate:v43 andLocalDate:v46 usingBlock:v71];

  v49 = [PGGraphHolidayNodeCollection holidayNodesWithNames:v48 inGraph:v11];
  v50 = v35;
  v51 = [v35 subtractingSourcesWith:v49];
  v52 = [v51 targets];

  v67 = [v58 collectionBySubtracting:v52];

  return v67;
}

void __107__PGMemoryTriggerHandler_memoryNodesAllowedToBeFallbackFromMemoryNodes_withContext_inGraph_holidayService___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  [v2 addObject:v3];
}

+ (id)fallbackTriggeredMemoriesWithContext:(id)a3 excludingTriggeredMemories:(id)a4 inGraph:(id)a5 holidayService:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v32 = a6;
  v13 = [(PGGraphNodeCollection *)PGGraphMemoryNodeCollection nodesInGraph:v12];
  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v37;
    do
    {
      v19 = 0;
      do
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v36 + 1) + 8 * v19) uniqueMemoryIdentifier];
        [v14 addObject:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v17);
  }

  v21 = [PGGraphMemoryNodeCollection memoryNodesWithUniqueIdentifiers:v14 inGraph:v12];
  v22 = [v13 collectionBySubtracting:v21];

  v23 = [a1 memoryNodesAllowedToBeFallbackFromMemoryNodes:v22 withContext:v10 inGraph:v12 holidayService:v32];

  v24 = [a1 creationDateWithContext:v10];
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __113__PGMemoryTriggerHandler_fallbackTriggeredMemoriesWithContext_excludingTriggeredMemories_inGraph_holidayService___block_invoke;
  v33[3] = &unk_2788836C0;
  v34 = v24;
  v26 = v25;
  v35 = v26;
  v27 = v24;
  [v23 enumerateNodesUsingBlock:v33];
  v28 = v35;
  v29 = v26;

  v30 = *MEMORY[0x277D85DE8];
  return v26;
}

void __113__PGMemoryTriggerHandler_fallbackTriggeredMemoriesWithContext_excludingTriggeredMemories_inGraph_holidayService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PGTriggeredMemory alloc];
  v5 = [(PGTriggeredMemory *)v4 initWithMemoryNode:v3 validityIntervalByTriggerType:MEMORY[0x277CBEC10] creationDate:*(a1 + 32)];

  [*(a1 + 40) addObject:v5];
}

@end