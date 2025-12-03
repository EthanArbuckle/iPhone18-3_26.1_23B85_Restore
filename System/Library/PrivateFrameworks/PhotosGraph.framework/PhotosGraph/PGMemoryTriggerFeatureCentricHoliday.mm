@interface PGMemoryTriggerFeatureCentricHoliday
+ (id)_relationshipForHolidayName:(id)name;
- (id)personNodesForRelationship:(id)relationship inGraph:(id)graph;
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerFeatureCentricHoliday

+ (id)_relationshipForHolidayName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Mother’s Day"])
  {
    v4 = kPGGraphEdgePeopleMother;
LABEL_7:
    v5 = *v4;
    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"Father’s Day"])
  {
    v4 = kPGGraphEdgePeopleFather;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"Valentine’s Day"])
  {
    v4 = kPGGraphEdgePeoplePartner;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (id)personNodesForRelationship:(id)relationship inGraph:(id)graph
{
  relationshipCopy = relationship;
  graphCopy = graph;
  v7 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithGraph:graphCopy];
  if ([relationshipCopy isEqualToString:@"MOTHER"])
  {
    meNodeCollection = [graphCopy meNodeCollection];
    motherPersonNodes = [meNodeCollection motherPersonNodes];
  }

  else if ([relationshipCopy isEqualToString:@"FATHER"])
  {
    meNodeCollection = [graphCopy meNodeCollection];
    motherPersonNodes = [meNodeCollection fatherPersonNodes];
  }

  else
  {
    if (![relationshipCopy isEqualToString:@"PARTNER"])
    {
      goto LABEL_8;
    }

    meNodeCollection = [graphCopy meNodeCollection];
    motherPersonNodes = [meNodeCollection partnerPersonNodes];
  }

  v10 = motherPersonNodes;

  v7 = v10;
LABEL_8:

  return v7;
}

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v31 = 36;
      v32 = 2080;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerFeatureCentricHoliday.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    infoNode = [graphCopy infoNode];
    locale = [infoNode locale];

    if (!locale)
    {
      locale = [MEMORY[0x277CBEAF8] currentLocale];
    }

    v14 = objc_alloc_init(MEMORY[0x277D22BD0]);
    holidayService = [(PGHolidayMemoryTrigger *)self holidayService];
    localDate = [contextCopy localDate];
    localDate2 = [contextCopy localDate];
    v25 = locale;
    countryCode = [locale countryCode];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __93__PGMemoryTriggerFeatureCentricHoliday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
    v26[3] = &unk_2788829F8;
    v19 = graphCopy;
    v27 = v19;
    v20 = v14;
    v28 = v20;
    selfCopy = self;
    [holidayService enumerateEventRulesBetweenLocalDate:localDate andLocalDate:localDate2 supportedCountryCode:countryCode usingBlock:v26];

    v21 = [(MAElementCollection *)[PGGraphMemoryNodeCollection alloc] initWithGraph:v19 elementIdentifiers:v20];
    v22 = [objc_opt_class() singleDayValidityIntervalWithContext:contextCopy];
    if ([reporterCopy isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v31 = 67;
        v32 = 2080;
        v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerFeatureCentricHoliday.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v11 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v21 withValidityInterval:v22];
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v11;
}

void __93__PGMemoryTriggerFeatureCentricHoliday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = [v22 name];
  v4 = [v3 isEqualToString:@"National Dog Day"];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = 2;
LABEL_5:
    v9 = [PGGraphPetNodeCollection petNodesForSpecies:v6 inGraph:v5];
LABEL_6:
    v10 = v9;
    v11 = *(a1 + 40);
    v12 = [v9 featureNodeCollection];
    v13 = [v12 memoryNodes];
    v14 = [v13 elementIdentifiers];
    [v11 unionWithIdentifierSet:v14];
LABEL_7:

    goto LABEL_8;
  }

  v7 = [v22 name];
  v8 = [v7 isEqualToString:@"National Cat Day"];

  if (v8)
  {
    v5 = *(a1 + 32);
    v6 = 1;
    goto LABEL_5;
  }

  v15 = [v22 name];
  v16 = [v15 isEqualToString:@"Earth Day"];

  if (v16)
  {
    v9 = [PGGraphROINodeCollection roiNodesOfType:4 inGraph:*(a1 + 32)];
    goto LABEL_6;
  }

  v17 = *(a1 + 48);
  v18 = objc_opt_class();
  v19 = [v22 name];
  v10 = [v18 _relationshipForHolidayName:v19];

  if (v10)
  {
    v12 = [*(a1 + 48) personNodesForRelationship:v10 inGraph:*(a1 + 32)];
    v20 = *(a1 + 40);
    v13 = [v12 featureNodeCollection];
    v14 = [v13 memoryNodes];
    v21 = [v14 elementIdentifiers];
    [v20 unionWithIdentifierSet:v21];

    goto LABEL_7;
  }

LABEL_8:
}

@end