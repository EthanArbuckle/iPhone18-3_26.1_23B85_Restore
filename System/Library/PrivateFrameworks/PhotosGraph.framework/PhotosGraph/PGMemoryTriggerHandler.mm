@interface PGMemoryTriggerHandler
+ (double)scoreForTriggerType:(unint64_t)type;
+ (double)triggerScoreForTriggeredMemory:(id)memory;
+ (id)creationDateWithContext:(id)context;
+ (id)fallbackTriggeredMemoriesWithContext:(id)context excludingTriggeredMemories:(id)memories inGraph:(id)graph holidayService:(id)service;
+ (id)memoryNodesAllowedToBeFallbackFromMemoryNodes:(id)nodes withContext:(id)context inGraph:(id)graph holidayService:(id)service;
+ (id)personMemoryNodesFeaturingMeNodeInGraph:(id)graph;
+ (unint64_t)maximumValidityPeriodForValidityIntervalByTriggerType:(id)type context:(id)context;
- (PGMemoryTriggerHandler)initWithWorkingContext:(id)context momentNodesWithBlockedFeatureCache:(id)cache;
- (id)allTriggeredMemoriesWithContext:(id)context forTriggerType:(unint64_t)type inGraph:(id)graph progressReporter:(id)reporter;
- (id)futureMemoriesForConfiguration:(id)configuration withGraph:(id)graph progressReporter:(id)reporter;
- (id)relevantFeatureNodesInFeatureNodes:(id)nodes forTriggerType:(unint64_t)type;
@end

@implementation PGMemoryTriggerHandler

- (id)futureMemoriesForConfiguration:(id)configuration withGraph:(id)graph progressReporter:(id)reporter
{
  v65 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  graphCopy = graph;
  v38 = configurationCopy;
  reporterCopy = reporter;
  futureMemoryCollisionUniversalDateInterval = [configurationCopy futureMemoryCollisionUniversalDateInterval];
  startDate = [futureMemoryCollisionUniversalDateInterval startDate];
  endDate = [futureMemoryCollisionUniversalDateInterval endDate];
  v8 = endDate;
  [endDate timeIntervalSinceDate:startDate];
  v10 = (v9 / 86400.0);
  if (v10 < 1)
  {
    array = MEMORY[0x277CBEBF8];
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
    v41 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:reporterCopy];
    timeZone = [v38 timeZone];
    array = [MEMORY[0x277CBEB18] array];
    v52 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([endDate compare:startDate] == -1)
    {
      v8 = endDate;
    }

    else
    {
      v15 = 1.0 / ((v10 & ~(v10 >> 63)) + 1);
      v16 = v15;
      do
      {
        context = objc_autoreleasePoolPush();
        v49 = [MEMORY[0x277D27690] localDateFromUniversalDate:endDate inTimeZone:{timeZone, spid}];
        v48 = [[PGMemoryContext alloc] initWithFutureLocalDate:v49 timeZone:timeZone photoLibrary:self->_photoLibrary];
        v47 = [v41 childProgressReporterToCheckpoint:v16];
        v17 = [(PGMemoryTriggerHandler *)self allTriggeredMemoriesWithContext:v48 inGraph:graphCopy progressReporter:v47];
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
              uniqueMemoryIdentifier = [v22 uniqueMemoryIdentifier];
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              v63 = 1;
              triggerTypes = [v22 triggerTypes];
              v53[0] = MEMORY[0x277D85DD0];
              v53[1] = 3221225472;
              v53[2] = __84__PGMemoryTriggerHandler_futureMemoriesForConfiguration_withGraph_progressReporter___block_invoke;
              v53[3] = &unk_278883710;
              v54 = v52;
              v26 = uniqueMemoryIdentifier;
              v55 = v26;
              v56 = buf;
              [triggerTypes enumerateIndexesUsingBlock:v53];

              if (*(*&buf[8] + 24) == 1)
              {
                [array addObject:v22];
              }

              _Block_object_dispose(buf, 8);
              objc_autoreleasePoolPop(v23);
            }

            v19 = [v18 countByEnumeratingWithState:&v57 objects:v64 count:16];
          }

          while (v19);
        }

        v8 = [MEMORY[0x277D27690] dateByAddingDays:-1 toDate:endDate];

        objc_autoreleasePoolPop(context);
        v16 = v15 + v16;
        endDate = v8;
      }

      while ([v8 compare:startDate] != -1);
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

  return array;
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

- (id)relevantFeatureNodesInFeatureNodes:(id)nodes forTriggerType:(unint64_t)type
{
  v24 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v7 = [PGGraphFeatureNodeCollection alloc];
  graph = [nodesCopy graph];
  v9 = [(MAElementCollection *)v7 initWithGraph:graph];

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
        if ([v15 triggerType] == type)
        {
          v16 = [v15 relevantFeatureNodesInFeatureNodes:nodesCopy];

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

- (id)allTriggeredMemoriesWithContext:(id)context forTriggerType:(unint64_t)type inGraph:(id)graph progressReporter:(id)reporter
{
  v114 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  v11 = [(NSArray *)self->_allMemoryTriggers count];
  selfCopy = self;
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
    v17 = [(NSArray *)selfCopy->_allMemoryTriggers count];
    v18 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:reporterCopy];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    obj = selfCopy->_allMemoryTriggers;
    v19 = [(NSArray *)obj countByEnumeratingWithState:&v101 objects:v113 count:16];
    v79 = v18;
    if (v19)
    {
      v20 = v19;
      v21 = 1.0 / v17;
      v22 = *v102;
      v23 = 0.0;
      v77 = *v102;
      typeCopy = type;
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
          contextCopy2 = objc_autoreleasePoolPush();
          v23 = fmin(v21 + v23, 1.0);
          v27 = [v18 childProgressReporterToCheckpoint:v23];
          triggerType = [v25 triggerType];
          if ((!type || triggerType == type) && (![contextCopy futureLookup] || objc_msgSend(v25, "supportsFutureLookup")))
          {
            context = contextCopy2;
            v88 = v27;
            v86 = v24;
            v28 = selfCopy->_loggingConnection;
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
            v33 = [v25 resultsTriggeredWithContext:contextCopy inGraph:graphCopy progressReporter:v27];
            if ([reporterCopy isCancelled])
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
                  memoryNode = [v51 memoryNode];
                  categoriesDeniedForContextual = [contextCopy categoriesDeniedForContextual];
                  v54 = [categoriesDeniedForContextual containsIndex:{objc_msgSend(memoryNode, "memoryCategory")}];

                  if ((v54 & 1) == 0)
                  {
                    v55 = contextCopy;
                    uniqueMemoryIdentifier = [memoryNode uniqueMemoryIdentifier];
                    v57 = [v91 objectForKeyedSubscript:uniqueMemoryIdentifier];
                    if (!v57)
                    {
                      v57 = objc_alloc_init(MEMORY[0x277CBEB38]);
                      [v91 setObject:v57 forKeyedSubscript:uniqueMemoryIdentifier];
                    }

                    validityInterval = [v51 validityInterval];
                    v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:triggerType];
                    [v57 setObject:validityInterval forKeyedSubscript:v59];

                    [v89 setObject:memoryNode forKeyedSubscript:uniqueMemoryIdentifier];
                    contextCopy = v55;
                  }
                }

                v48 = [v46 countByEnumeratingWithState:&v96 objects:v106 count:16];
              }

              while (v48);
            }

            type = typeCopy;
            v18 = v79;
            v20 = v80;
            v22 = v77;
            v24 = v86;
            contextCopy2 = context;
            v27 = v88;
          }

          objc_autoreleasePoolPop(contextCopy2);
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

    v60 = [objc_opt_class() creationDateWithContext:contextCopy];
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

- (PGMemoryTriggerHandler)initWithWorkingContext:(id)context momentNodesWithBlockedFeatureCache:(id)cache
{
  v52[26] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  cacheCopy = cache;
  v51.receiver = self;
  v51.super_class = PGMemoryTriggerHandler;
  v8 = [(PGMemoryTriggerHandler *)&v51 init];
  if (v8)
  {
    v9 = os_log_create("com.apple.PhotosGraph", "MemoryTriggerHandler");
    loggingConnection = v8->_loggingConnection;
    v8->_loggingConnection = v9;

    photoLibrary = [contextCopy photoLibrary];
    photoLibrary = v8->_photoLibrary;
    v8->_photoLibrary = photoLibrary;

    v13 = objc_alloc(MEMORY[0x277D276D8]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v15 = [v13 initWithLocale:currentLocale];
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
    v44 = [[PGMemoryTriggerBeginningOfMonth alloc] initWithLoggingConnection:v8->_loggingConnection momentNodesWithBlockedFeatureCache:cacheCopy];
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
    v35 = [[PGMemoryTriggerRecentHighlights alloc] initWithLoggingConnection:v8->_loggingConnection momentNodesWithBlockedFeatureCache:cacheCopy];
    v52[14] = v35;
    v34 = [[PGMemoryTriggerUpcomingHoliday alloc] initWithLoggingConnection:v8->_loggingConnection holidayService:v8->_holidayService];
    v52[15] = v34;
    v33 = [[PGMemoryTriggerRecentSyndicatedAssets alloc] initWithLoggingConnection:v8->_loggingConnection photoLibrary:v8->_photoLibrary momentNodesWithBlockedFeatureCache:cacheCopy];
    v52[16] = v33;
    v32 = [[PGMemoryTriggerRecentMeaningfulEvent alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[17] = v32;
    v17 = [PGMemoryTriggerUpcomingCalendarEvent alloc];
    serviceManager = [contextCopy serviceManager];
    locationCache = [contextCopy locationCache];
    v18 = [(PGMemoryTriggerUpcomingCalendarEvent *)v17 initWithServiceManager:serviceManager locationCache:locationCache loggingConnection:v8->_loggingConnection];
    v52[18] = v18;
    v19 = [[PGMemoryTriggerLastWeekend alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[19] = v19;
    v20 = [[PGMemoryTriggerLastWeek alloc] initWithLoggingConnection:v8->_loggingConnection];
    v52[20] = v20;
    v50 = contextCopy;
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

    contextCopy = v50;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (unint64_t)maximumValidityPeriodForValidityIntervalByTriggerType:(id)type context:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  localDate = [context localDate];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = typeCopy;
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
        endDate = [v13 endDate];
        [endDate timeIntervalSinceDate:localDate];
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

+ (double)scoreForTriggerType:(unint64_t)type
{
  result = 0.0;
  if (type - 1 <= 0x1A)
  {
    return dbl_22F78C4D8[type - 1];
  }

  return result;
}

+ (double)triggerScoreForTriggeredMemory:(id)memory
{
  memoryCopy = memory;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  triggerTypes = [memoryCopy triggerTypes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__PGMemoryTriggerHandler_triggerScoreForTriggeredMemory___block_invoke;
  v8[3] = &unk_278883738;
  v8[4] = &v9;
  v8[5] = self;
  [triggerTypes enumerateIndexesUsingBlock:v8];

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

+ (id)creationDateWithContext:(id)context
{
  contextCopy = context;
  v4 = [PGMemoryDate alloc];
  localDate = [contextCopy localDate];
  v6 = [(PGMemoryDate *)v4 initWithLocalDate:localDate];

  timeZone = [contextCopy timeZone];

  v8 = [(PGMemoryDate *)v6 universalDateInTimeZone:timeZone];

  return v8;
}

+ (id)personMemoryNodesFeaturingMeNodeInGraph:(id)graph
{
  graphCopy = graph;
  v4 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graphCopy];
  v5 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:3 inGraph:graphCopy];

  featureNodeCollection = [v4 featureNodeCollection];
  memoryNodes = [featureNodeCollection memoryNodes];

  v8 = [v5 collectionByIntersecting:memoryNodes];

  return v8;
}

+ (id)memoryNodesAllowedToBeFallbackFromMemoryNodes:(id)nodes withContext:(id)context inGraph:(id)graph holidayService:(id)service
{
  contextCopy = context;
  graphCopy = graph;
  serviceCopy = service;
  nodesCopy = nodes;
  categoriesDeniedForFallback = [contextCopy categoriesDeniedForFallback];
  v14 = [PGGraphMemoryNodeCollection memoryNodesOfCategories:categoriesDeniedForFallback inGraph:graphCopy];

  v70 = v14;
  v15 = [nodesCopy collectionBySubtracting:v14];

  v16 = MEMORY[0x277D27690];
  localDate = [contextCopy localDate];
  v18 = +[PGGraphYearNodeCollection yearNodesForYear:inGraph:](PGGraphYearNodeCollection, "yearNodesForYear:inGraph:", [v16 yearFromDate:localDate], graphCopy);

  v69 = v18;
  featureNodeCollection = [v18 featureNodeCollection];
  memoryNodes = [featureNodeCollection memoryNodes];

  v68 = memoryNodes;
  v21 = [v15 collectionBySubtracting:memoryNodes];

  v22 = MEMORY[0x277D27690];
  localDate2 = [contextCopy localDate];
  v24 = [v22 seasonNameForLocalDate:localDate2 locale:0];

  v25 = [(PGGraphNodeCollection *)PGGraphSeasonNodeCollection nodesInGraph:graphCopy];
  v65 = v24;
  if (v24)
  {
    v26 = [PGGraphSeasonNodeCollection seasonNodesForSeasonName:v24 inGraph:graphCopy];
    v27 = [v25 collectionBySubtracting:v26];

    v25 = v27;
  }

  v59 = v25;
  featureNodeCollection2 = [v25 featureNodeCollection];
  memoryNodes2 = [featureNodeCollection2 memoryNodes];

  v29 = [v21 collectionBySubtracting:memoryNodes2];

  v63 = [self personMemoryNodesFeaturingMeNodeInGraph:graphCopy];
  v30 = [v29 collectionBySubtracting:v63];

  v62 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:17 inGraph:graphCopy];
  v60 = [(PGGraphNodeCollection *)PGGraphHolidayNodeCollection nodesInGraph:graphCopy];
  featureNodeCollection3 = [v60 featureNodeCollection];
  memoryNodes3 = [featureNodeCollection3 memoryNodes];
  v61 = [memoryNodes3 collectionByIntersecting:v62];

  v58 = [v30 collectionBySubtracting:v61];

  v33 = MEMORY[0x277D22BF8];
  v34 = +[PGGraphFeatureNodeCollection memoryOfFeature];
  v35 = [v33 adjacencyWithSources:v60 relation:v34 targetsClass:objc_opt_class()];

  sources = [v35 sources];
  holidayNames = [sources holidayNames];

  v37 = MEMORY[0x277D27690];
  localDate3 = [contextCopy localDate];
  timeZone = [contextCopy timeZone];
  v40 = [v37 universalDateFromLocalDate:localDate3 inTimeZone:timeZone];

  v56 = [v40 dateByAddingTimeInterval:-5259600.0];
  v54 = [v40 dateByAddingTimeInterval:5259600.0];
  v41 = MEMORY[0x277D27690];
  timeZone2 = [contextCopy timeZone];
  v43 = [v41 localDateFromUniversalDate:v56 inTimeZone:timeZone2];

  v44 = MEMORY[0x277D27690];
  timeZone3 = [contextCopy timeZone];
  v46 = [v44 localDateFromUniversalDate:v54 inTimeZone:timeZone3];

  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __107__PGMemoryTriggerHandler_memoryNodesAllowedToBeFallbackFromMemoryNodes_withContext_inGraph_holidayService___block_invoke;
  v71[3] = &unk_2788836E8;
  v72 = v47;
  v57 = contextCopy;
  v48 = v47;
  [serviceCopy enumerateEventRulesForAllCountriesWithNames:holidayNames betweenLocalDate:v43 andLocalDate:v46 usingBlock:v71];

  v49 = [PGGraphHolidayNodeCollection holidayNodesWithNames:v48 inGraph:graphCopy];
  v50 = v35;
  v51 = [v35 subtractingSourcesWith:v49];
  targets = [v51 targets];

  v67 = [v58 collectionBySubtracting:targets];

  return v67;
}

void __107__PGMemoryTriggerHandler_memoryNodesAllowedToBeFallbackFromMemoryNodes_withContext_inGraph_holidayService___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  [v2 addObject:v3];
}

+ (id)fallbackTriggeredMemoriesWithContext:(id)context excludingTriggeredMemories:(id)memories inGraph:(id)graph holidayService:(id)service
{
  v41 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  memoriesCopy = memories;
  graphCopy = graph;
  serviceCopy = service;
  v13 = [(PGGraphNodeCollection *)PGGraphMemoryNodeCollection nodesInGraph:graphCopy];
  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = memoriesCopy;
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

        uniqueMemoryIdentifier = [*(*(&v36 + 1) + 8 * v19) uniqueMemoryIdentifier];
        [v14 addObject:uniqueMemoryIdentifier];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v17);
  }

  v21 = [PGGraphMemoryNodeCollection memoryNodesWithUniqueIdentifiers:v14 inGraph:graphCopy];
  v22 = [v13 collectionBySubtracting:v21];

  v23 = [self memoryNodesAllowedToBeFallbackFromMemoryNodes:v22 withContext:contextCopy inGraph:graphCopy holidayService:serviceCopy];

  v24 = [self creationDateWithContext:contextCopy];
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