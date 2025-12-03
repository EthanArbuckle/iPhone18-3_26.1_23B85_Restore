@interface PGMemoryTriggerUpcomingPersonCentricHoliday
- (id)allSingleMomentMemoryNodesInGraph:(id)graph;
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
- (id)singleMomentMemoryNodesWithRelevantPersonNodes:(id)nodes inGraph:(id)graph;
@end

@implementation PGMemoryTriggerUpcomingPersonCentricHoliday

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v53 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v50 = 62;
      v51 = 2080;
      v52 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerUpcomingPersonCentricHoliday.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v40 = reporterCopy;
    infoNode = [graphCopy infoNode];
    locale = [infoNode locale];

    if (!locale)
    {
      locale = [MEMORY[0x277CBEAF8] currentLocale];
    }

    v14 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graphCopy];
    partnerPersonNodes = [v14 partnerPersonNodes];
    motherPersonNodes = [v14 motherPersonNodes];
    fatherPersonNodes = [v14 fatherPersonNodes];
    v41 = partnerPersonNodes;
    if ([partnerPersonNodes count] || objc_msgSend(motherPersonNodes, "count") || objc_msgSend(fatherPersonNodes, "count"))
    {
      v35 = v14;
      localDate = [contextCopy localDate];
      v39 = contextCopy;
      timeZone = [contextCopy timeZone];
      v36 = localDate;
      v20 = [MEMORY[0x277D27690] universalDateFromLocalDate:localDate inTimeZone:timeZone];
      v33 = [MEMORY[0x277D27690] dateByAddingDays:1 toDate:v20];
      v21 = [MEMORY[0x277D27690] localDateFromUniversalDate:? inTimeZone:?];
      v34 = v20;
      v32 = [MEMORY[0x277D27690] dateByAddingDays:7 toDate:v20];
      v22 = [MEMORY[0x277D27690] localDateFromUniversalDate:? inTimeZone:?];
      v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
      holidayService = [(PGHolidayMemoryTrigger *)self holidayService];
      v38 = locale;
      countryCode = [locale countryCode];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __100__PGMemoryTriggerUpcomingPersonCentricHoliday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
      v42[3] = &unk_278883FD8;
      v42[4] = self;
      v43 = timeZone;
      v44 = v41;
      v45 = graphCopy;
      v26 = v23;
      v27 = v21;
      v28 = v26;
      v46 = v26;
      v37 = motherPersonNodes;
      v47 = motherPersonNodes;
      v48 = fatherPersonNodes;
      v29 = timeZone;
      [holidayService enumerateEventRulesBetweenLocalDate:v21 andLocalDate:v22 supportedCountryCode:countryCode usingBlock:v42];

      reporterCopy = v40;
      if ([v40 isCancelledWithProgress:1.0])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v50 = 116;
          v51 = 2080;
          v52 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerUpcomingPersonCentricHoliday.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v11 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v11 = v28;
      }

      locale = v38;
      v14 = v35;

      contextCopy = v39;
      motherPersonNodes = v37;
    }

    else
    {
      v11 = MEMORY[0x277CBEBF8];
      reporterCopy = v40;
    }
  }

  v30 = *MEMORY[0x277D85DE8];

  return v11;
}

void __100__PGMemoryTriggerUpcomingPersonCentricHoliday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(void *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 requiredTraits];
  v7 = [v6 peopleTrait];

  if ((v7 - 1) <= 0x3F && ((1 << (v7 - 1)) & 0x8000000080000001) != 0)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = v5;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (!v9)
    {
      goto LABEL_23;
    }

    v10 = v9;
    v11 = *v32;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        v14 = [v13 dateByAddingTimeInterval:-86400.0];
        v15 = [v13 dateByAddingTimeInterval:-604800.0];
        v16 = a1[4];
        v17 = [objc_opt_class() validityIntervalForLocalStartDate:v15 localEndDate:v14 timeZone:a1[5]];
        switch(v7)
        {
          case 64:
            v18 = a1[4];
            v19 = 48;
            v20 = a1 + 10;
            if (v18[6])
            {
              break;
            }

LABEL_16:
            v21 = [v18 singleMomentMemoryNodesWithRelevantPersonNodes:*v20 inGraph:a1[7]];
            v22 = a1[4];
            v23 = *(v22 + v19);
            *(v22 + v19) = v21;

            v24 = a1[4];
            break;
          case 32:
            v18 = a1[4];
            v19 = 40;
            v20 = a1 + 9;
            if (!v18[5])
            {
              goto LABEL_16;
            }

            break;
          case 1:
            v18 = a1[4];
            v19 = 32;
            v20 = a1 + 6;
            if (!v18[4])
            {
              goto LABEL_16;
            }

            break;
          default:
            goto LABEL_18;
        }

        v25 = a1[8];
        v26 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:*(a1[4] + v19) withValidityInterval:v17];
        [v25 addObjectsFromArray:v26];

LABEL_18:
        ++v12;
      }

      while (v10 != v12);
      v27 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      v10 = v27;
      if (!v27)
      {
LABEL_23:

        v5 = v29;
        break;
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)singleMomentMemoryNodesWithRelevantPersonNodes:(id)nodes inGraph:(id)graph
{
  nodesCopy = nodes;
  v7 = [(PGMemoryTriggerUpcomingPersonCentricHoliday *)self allSingleMomentMemoryNodesInGraph:graph];
  featureNodeCollection = [nodesCopy featureNodeCollection];

  momentNodes = [featureNodeCollection momentNodes];
  memoryNodes = [momentNodes memoryNodes];

  v11 = [v7 collectionByIntersecting:memoryNodes];

  return v11;
}

- (id)allSingleMomentMemoryNodesInGraph:(id)graph
{
  allSingleMomentMemoryNodes = self->_allSingleMomentMemoryNodes;
  if (!allSingleMomentMemoryNodes)
  {
    v5 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:1 inGraph:graph];
    v6 = self->_allSingleMomentMemoryNodes;
    self->_allSingleMomentMemoryNodes = v5;

    allSingleMomentMemoryNodes = self->_allSingleMomentMemoryNodes;
  }

  return allSingleMomentMemoryNodes;
}

@end