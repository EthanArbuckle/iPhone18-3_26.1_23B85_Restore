@interface PGGraphCalendarUnitNodeCollection
+ (MARelation)dateOfCalendarUnit;
+ (id)calendarUnitNodesForUnitValue:(int64_t)value inGraph:(id)graph;
+ (id)calendarUnitNodesForUnitValues:(id)values inGraph:(id)graph;
+ (id)filter;
+ (unint64_t)calendarUnit;
- (PGGraphDateNodeCollection)dateNodes;
@end

@implementation PGGraphCalendarUnitNodeCollection

- (PGGraphDateNodeCollection)dateNodes
{
  dateOfCalendarUnit = [objc_opt_class() dateOfCalendarUnit];
  v4 = [(MANodeCollection *)PGGraphDateNodeCollection nodesRelatedToNodes:self withRelation:dateOfCalendarUnit];

  return v4;
}

+ (id)calendarUnitNodesForUnitValues:(id)values inGraph:(id)graph
{
  v15[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  valuesCopy = values;
  filter = [self filter];
  v14 = @"name";
  v15[0] = valuesCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v10 = [filter filterBySettingProperties:v9];

  v11 = [self nodesMatchingFilter:v10 inGraph:graphCopy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)calendarUnitNodesForUnitValue:(int64_t)value inGraph:(id)graph
{
  v15[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  filter = [self filter];
  v14 = @"name";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:value];
  v15[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = [filter filterBySettingProperties:v9];

  v11 = [self nodesMatchingFilter:v10 inGraph:graphCopy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (MARelation)dateOfCalendarUnit
{
  calendarUnit = [self calendarUnit];
  if ((calendarUnit - 1) > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = *off_278887328[calendarUnit - 1];
  }

  v4 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:v3 domain:400];
  inRelation = [v4 inRelation];

  return inRelation;
}

+ (id)filter
{
  calendarUnit = [self calendarUnit];
  if ((calendarUnit - 1) > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = *off_2788872F8[calendarUnit - 1];
  }

  v4 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:v3 domain:400];

  return v4;
}

+ (unint64_t)calendarUnit
{
  v2 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

@end