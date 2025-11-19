@interface PGGraphDateNode
+ (MARelation)dayOfWeekOfDate;
+ (MARelation)momentOfDate;
+ (MARelation)monthDayOfDate;
+ (MARelation)seasonOfDate;
+ (MARelation)yearOfDate;
+ (id)dateNodeForDayNode:(id)a3 monthNode:(id)a4 yearNode:(id)a5;
+ (id)dayOfDate;
+ (id)filter;
+ (id)filterWithDateNames:(id)a3;
+ (id)holidayOfDate;
+ (id)monthOfDate;
+ (id)weekOfMonthOfDate;
+ (id)weekOfYearOfDate;
- (BOOL)hasProperties:(id)a3;
- (MANodeFilter)uniquelyIdentifyingFilter;
- (PGGraphCalendarUnitNode)dayNode;
- (PGGraphCalendarUnitNode)monthDayNode;
- (PGGraphCalendarUnitNode)monthNode;
- (PGGraphCalendarUnitNode)weekOfMonthNode;
- (PGGraphCalendarUnitNode)weekOfYearNode;
- (PGGraphCalendarUnitNode)yearNode;
- (PGGraphDateNode)initWithName:(id)a3;
- (PGGraphDateNodeCollection)collection;
- (PGGraphSeasonNode)seasonNode;
- (id)associatedNodesForRemoval;
- (id)lastWeekDateNodes;
- (id)localDate;
- (id)propertyDictionary;
- (id)propertyForKey:(id)a3;
- (id)sameWeekDateNodes;
- (int64_t)day;
- (int64_t)month;
- (int64_t)monthDay;
- (int64_t)year;
@end

@implementation PGGraphDateNode

- (id)associatedNodesForRemoval
{
  v3 = [MEMORY[0x277CBEB58] set];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__PGGraphDateNode_associatedNodesForRemoval__block_invoke;
  v14[3] = &unk_278888D00;
  v4 = v3;
  v15 = v4;
  [(PGGraphDateNode *)self enumerateHolidayNodesUsingBlock:v14];
  v5 = [(PGGraphDateNode *)self seasonNode];
  v6 = [v5 edgesCount];

  if (v6 == 1)
  {
    v7 = [(PGGraphDateNode *)self seasonNode];
    [v4 addObject:v7];
  }

  if (associatedNodesForRemoval_onceToken != -1)
  {
    dispatch_once(&associatedNodesForRemoval_onceToken, &__block_literal_global_48133);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__PGGraphDateNode_associatedNodesForRemoval__block_invoke_3;
  v12[3] = &unk_27888B590;
  v8 = v4;
  v13 = v8;
  [(MANode *)self enumerateNeighborEdgesAndNodesThroughOutEdgesUsingBlock:v12];
  v9 = v13;
  v10 = v8;

  return v8;
}

void __44__PGGraphDateNode_associatedNodesForRemoval__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 countOfEdgesWithLabel:@"HOLIDAY" domain:401] == 1)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __44__PGGraphDateNode_associatedNodesForRemoval__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 domain] == 400)
  {
    v6 = associatedNodesForRemoval_sDateEdgeLabels;
    v7 = [v8 label];
    LODWORD(v6) = [v6 containsObject:v7];

    if (v6)
    {
      if ([v5 edgesCount] == 1)
      {
        [*(a1 + 32) addObject:v5];
      }
    }
  }
}

void __44__PGGraphDateNode_associatedNodesForRemoval__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"YEAR", @"MONTH", @"WEEKMONTH", @"DAY", @"WEEKYEAR", 0}];
  v1 = associatedNodesForRemoval_sDateEdgeLabels;
  associatedNodesForRemoval_sDateEdgeLabels = v0;
}

- (id)lastWeekDateNodes
{
  v3 = MEMORY[0x277D27690];
  v4 = [(PGGraphDateNode *)self localDate];
  v5 = [v3 dateByAddingWeeksOfYear:-1 toDate:v4];

  v6 = [MEMORY[0x277D27690] components:25088 fromDate:v5];
  [v6 setWeekday:1];
  v7 = MEMORY[0x277D27690];
  v8 = [MEMORY[0x277D27690] dateFromComponents:v6 inTimeZone:0];
  v9 = [v7 yearFromDate:v8];

  if ([v6 weekOfYear] < 2 || (v10 = v9, objc_msgSend(v6, "weekOfYear") >= 52))
  {
    [v6 setWeekday:7];
    v11 = MEMORY[0x277D27690];
    v12 = [MEMORY[0x277D27690] dateFromComponents:v6 inTimeZone:0];
    v10 = [v11 yearFromDate:v12];
  }

  v13 = [(MANode *)self graph];
  if (v9 == v10)
  {
    v14 = MEMORY[0x277CBEB58];
    v15 = [v13 dateNodesForWeekOfYear:{objc_msgSend(v6, "weekOfYear")}];
    v16 = [v14 setWithSet:v15];

    v17 = [v13 dateNodesForYear:v9];
    [v16 intersectSet:v17];
  }

  else
  {
    v17 = [v13 dateNodesForWeekOfYear:{objc_msgSend(v6, "weekOfYear")}];
    v16 = [MEMORY[0x277CBEB58] setWithSet:v17];
    v18 = [v13 dateNodesForYear:v9];
    [v16 intersectSet:v18];

    v19 = [v13 dateNodesForMonth:12];
    [v16 intersectSet:v19];

    v20 = [MEMORY[0x277CBEB58] setWithSet:v17];
    v21 = [v13 dateNodesForYear:v10];
    [v20 intersectSet:v21];

    v22 = [v13 dateNodesForMonth:1];
    [v20 intersectSet:v22];

    [v16 unionSet:v20];
  }

  return v16;
}

- (id)sameWeekDateNodes
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(MANode *)self siblingNodesThroughEdgesWithLabel:@"WEEKYEAR" domain:400];
  v4 = [MEMORY[0x277CBEB58] setWithSet:v3];
  v5 = [(PGGraphDateNode *)self weekOfYearNode];
  v6 = [v5 calendarUnitValue];
  if (v6 == 1 || v6 > 51)
  {
    v9 = [(PGGraphDateNode *)self localDate];
    v8 = [MEMORY[0x277CBEB58] set];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [v15 localDate];
          [v9 timeIntervalSinceDate:v16];
          if (v17 < 0.0)
          {
            v17 = -v17;
          }

          if (v17 <= 604800.0)
          {
            [v8 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v7 = [(MANode *)self siblingNodesThroughEdgesWithLabel:@"YEAR" domain:400];
    [v4 intersectSet:v7];

    v8 = v4;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)localDate
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(PGGraphDateNode *)self dayNode];
  v4 = [(PGGraphDateNode *)self monthNode];
  v5 = [(PGGraphDateNode *)self yearNode];
  v6 = v5;
  if (v3 && v4 && v5)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v7 setDay:{objc_msgSend(v3, "calendarUnitValue")}];
    [v7 setMonth:{objc_msgSend(v4, "calendarUnitValue")}];
    [v7 setYear:{objc_msgSend(v6, "calendarUnitValue")}];
    v8 = [MEMORY[0x277D27690] dateFromComponents:v7 inTimeZone:0];
  }

  else
  {
    v9 = +[PGLogging sharedLogging];
    v10 = [v9 loggingConnection];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [(PGGraphDateNode *)self description];
      v14 = 138413058;
      v15 = v13;
      v16 = 2048;
      v17 = v3;
      v18 = 2048;
      v19 = v4;
      v20 = 2048;
      v21 = v6;
      _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "Cannot create localDate from DateNode %@. dayNode %p, monthNode %p, yearNode %p", &v14, 0x2Au);
    }

    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (PGGraphSeasonNode)seasonNode
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__48141;
  v14 = __Block_byref_object_dispose__48142;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__PGGraphDateNode_seasonNode__block_invoke;
  v9[3] = &unk_2788850B8;
  v9[4] = &v10;
  [(MANode *)self enumerateNeighborNodesThroughEdgesWithLabel:@"SEASON" domain:400 usingBlock:v9];
  v3 = v11[5];
  if (!v3)
  {
    v4 = +[PGLogging sharedLogging];
    v5 = [v4 loggingConnection];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = self;
      _os_log_error_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_ERROR, "Date Node %@ is not linked to any season node", buf, 0xCu);
    }

    v3 = v11[5];
  }

  v6 = v3;
  _Block_object_dispose(&v10, 8);

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (int64_t)day
{
  v2 = [(PGGraphDateNode *)self dayNode];
  v3 = [v2 calendarUnitValue];

  return v3;
}

- (int64_t)month
{
  v2 = [(PGGraphDateNode *)self monthNode];
  v3 = [v2 calendarUnitValue];

  return v3;
}

- (int64_t)monthDay
{
  v2 = [(PGGraphDateNode *)self monthDayNode];
  v3 = [v2 calendarUnitValue];

  return v3;
}

- (int64_t)year
{
  v2 = [(PGGraphDateNode *)self yearNode];
  v3 = [v2 calendarUnitValue];

  return v3;
}

- (PGGraphCalendarUnitNode)weekOfMonthNode
{
  v2 = [(PGGraphDateNode *)self collection];
  v3 = [v2 weekOfMonthNodes];
  v4 = [v3 anyNode];

  return v4;
}

- (PGGraphCalendarUnitNode)weekOfYearNode
{
  v2 = [(PGGraphDateNode *)self collection];
  v3 = [v2 weekOfYearNodes];
  v4 = [v3 anyNode];

  return v4;
}

- (PGGraphCalendarUnitNode)dayNode
{
  v2 = [(PGGraphDateNode *)self collection];
  v3 = [v2 dayNodes];
  v4 = [v3 anyNode];

  return v4;
}

- (PGGraphCalendarUnitNode)monthNode
{
  v2 = [(PGGraphDateNode *)self collection];
  v3 = [v2 monthNodes];
  v4 = [v3 anyNode];

  return v4;
}

- (PGGraphCalendarUnitNode)monthDayNode
{
  v2 = [(PGGraphDateNode *)self collection];
  v3 = [v2 monthDayNodes];
  v4 = [v3 anyNode];

  return v4;
}

- (PGGraphCalendarUnitNode)yearNode
{
  v2 = [(PGGraphDateNode *)self collection];
  v3 = [v2 yearNodes];
  v4 = [v3 anyNode];

  return v4;
}

- (MANodeFilter)uniquelyIdentifyingFilter
{
  v3 = objc_alloc(MEMORY[0x277D22C78]);
  v4 = [(PGGraphDateNode *)self propertyDictionary];
  v5 = [v3 initWithLabel:@"Date" domain:400 properties:v4];

  return v5;
}

- (PGGraphDateNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphDateNodeCollection alloc] initWithNode:self];

  return v2;
}

- (id)propertyForKey:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"name"])
  {
    v5 = self->_name;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Unsupported property '%@' accessed on PGGraphDateNode.", &v8, 0xCu);
    }

    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)propertyDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  name = self->_name;
  v6 = @"name";
  v7[0] = name;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 objectForKeyedSubscript:@"name"];
    v7 = v6;
    v8 = !v6 || [v6 isEqual:self->_name];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (PGGraphDateNode)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphDateNode;
  v6 = [(PGGraphNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
  }

  return v7;
}

+ (id)holidayOfDate
{
  v2 = +[PGGraphHolidayEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)momentOfDate
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphDateEdge filter];
  v4 = [v3 inRelation];
  v11[0] = v4;
  v5 = +[PGGraphMomentNode filter];
  v6 = [v5 relation];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 chain:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)weekOfMonthOfDate
{
  v2 = +[PGGraphCalendarUnitEdge weekOfMonthFilter];
  v3 = [v2 outRelation];

  return v3;
}

+ (id)weekOfYearOfDate
{
  v2 = +[PGGraphCalendarUnitEdge weekOfYearFilter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)dayOfWeekOfDate
{
  v2 = +[PGGraphDayOfWeekEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (id)dayOfDate
{
  v2 = +[PGGraphCalendarUnitEdge dayFilter];
  v3 = [v2 outRelation];

  return v3;
}

+ (id)monthOfDate
{
  v2 = +[PGGraphCalendarUnitEdge monthFilter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)monthDayOfDate
{
  v2 = +[PGGraphCalendarUnitEdge monthDayFilter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)yearOfDate
{
  v2 = +[PGGraphCalendarUnitEdge yearFilter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)seasonOfDate
{
  v2 = +[PGGraphSeasonEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (id)filterWithDateNames:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22C78];
  v4 = a3;
  v5 = [v3 alloc];
  v10 = @"name";
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [v5 initWithLabel:@"Date" domain:400 properties:v6];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)dateNodeForDayNode:(id)a3 monthNode:(id)a4 yearNode:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__48141;
  v22 = __Block_byref_object_dispose__48142;
  v23 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__PGGraphDateNode_dateNodeForDayNode_monthNode_yearNode___block_invoke;
  v14[3] = &unk_278885090;
  v10 = v8;
  v15 = v10;
  v11 = v9;
  v16 = v11;
  v17 = &v18;
  [v7 enumerateNeighborNodesThroughEdgesWithLabel:@"DAY" domain:400 usingBlock:v14];
  v12 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v12;
}

void __57__PGGraphDateNode_dateNodeForDayNode_monthNode_yearNode___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v6 = [v10 monthNode];
  v7 = [v6 isSameNodeAsNode:a1[4]];

  if (v7)
  {
    v8 = [v10 yearNode];
    v9 = [v8 isSameNodeAsNode:a1[5]];

    if (v9)
    {
      objc_storeStrong((*(a1[6] + 8) + 40), a2);
      *a3 = 1;
    }
  }
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Date" domain:400];

  return v2;
}

@end