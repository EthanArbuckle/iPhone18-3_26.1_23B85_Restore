@interface PGGraphDateNodeCollection
+ (id)dateNodesForDateComponents:(id)components inGraph:(id)graph;
+ (id)dateNodesForLocalDates:(id)dates inGraph:(id)graph;
- (NSArray)dateNames;
- (NSDateInterval)localDateInterval;
- (PGGraphDayNodeCollection)dayNodes;
- (PGGraphHolidayNodeCollection)holidayNodes;
- (PGGraphMomentNodeCollection)momentNodes;
- (PGGraphMonthDayNodeCollection)monthDayNodes;
- (PGGraphMonthNodeCollection)monthNodes;
- (PGGraphSeasonNodeCollection)seasonNodes;
- (PGGraphWeekOfMonthNodeCollection)weekOfMonthNodes;
- (PGGraphWeekOfYearNodeCollection)weekOfYearNodes;
- (PGGraphYearNodeCollection)yearNodes;
@end

@implementation PGGraphDateNodeCollection

- (NSArray)dateNames
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__PGGraphDateNodeCollection_dateNames__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"name" withBlock:v6];

  return v4;
}

- (NSDateInterval)localDateInterval
{
  v21 = *MEMORY[0x277D85DE8];
  array = [(MAElementCollection *)self array];
  if ([array count])
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = array;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        v9 = 0;
        v10 = distantPast;
        v11 = distantFuture;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          localDate = [*(*(&v16 + 1) + 8 * v9) localDate];
          distantFuture = [v11 earlierDate:localDate];

          distantPast = [v10 laterDate:localDate];

          ++v9;
          v10 = distantPast;
          v11 = distantFuture;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:distantFuture endDate:distantPast];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (PGGraphHolidayNodeCollection)holidayNodes
{
  v3 = +[PGGraphDateNode holidayOfDate];
  v4 = [(MANodeCollection *)PGGraphHolidayNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphSeasonNodeCollection)seasonNodes
{
  v3 = +[PGGraphDateNode seasonOfDate];
  v4 = [(MANodeCollection *)PGGraphSeasonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphWeekOfMonthNodeCollection)weekOfMonthNodes
{
  v3 = +[PGGraphDateNode weekOfMonthOfDate];
  v4 = [(MANodeCollection *)PGGraphWeekOfMonthNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphWeekOfYearNodeCollection)weekOfYearNodes
{
  v3 = +[PGGraphDateNode weekOfYearOfDate];
  v4 = [(MANodeCollection *)PGGraphWeekOfYearNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphDayNodeCollection)dayNodes
{
  v3 = +[PGGraphDateNode dayOfDate];
  v4 = [(MANodeCollection *)PGGraphDayNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMonthNodeCollection)monthNodes
{
  v3 = +[PGGraphDateNode monthOfDate];
  v4 = [(MANodeCollection *)PGGraphMonthNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMonthDayNodeCollection)monthDayNodes
{
  v3 = +[PGGraphDateNode monthDayOfDate];
  v4 = [(MANodeCollection *)PGGraphMonthDayNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphYearNodeCollection)yearNodes
{
  v3 = +[PGGraphDateNode yearOfDate];
  v4 = [(MANodeCollection *)PGGraphYearNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphDateNode momentOfDate];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)dateNodesForDateComponents:(id)components inGraph:(id)graph
{
  v23 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  graphCopy = graph;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = componentsCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [graphCopy dateNodeNameWithDateComponents:{*(*(&v18 + 1) + 8 * i), v18}];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [PGGraphDateNode filterWithDateNames:v7];
  v15 = [(MANodeCollection *)PGGraphDateNodeCollection nodesMatchingFilter:v14 inGraph:graphCopy];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)dateNodesForLocalDates:(id)dates inGraph:(id)graph
{
  v23 = *MEMORY[0x277D85DE8];
  datesCopy = dates;
  graphCopy = graph;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = datesCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [graphCopy dateNodeNameWithLocalDate:{*(*(&v18 + 1) + 8 * i), v18}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [PGGraphDateNode filterWithDateNames:v7];
  v15 = [(MANodeCollection *)PGGraphDateNodeCollection nodesMatchingFilter:v14 inGraph:graphCopy];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end