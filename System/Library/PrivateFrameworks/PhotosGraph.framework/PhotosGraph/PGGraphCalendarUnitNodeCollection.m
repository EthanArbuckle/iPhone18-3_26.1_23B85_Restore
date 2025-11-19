@interface PGGraphCalendarUnitNodeCollection
+ (MARelation)dateOfCalendarUnit;
+ (id)calendarUnitNodesForUnitValue:(int64_t)a3 inGraph:(id)a4;
+ (id)calendarUnitNodesForUnitValues:(id)a3 inGraph:(id)a4;
+ (id)filter;
+ (unint64_t)calendarUnit;
- (PGGraphDateNodeCollection)dateNodes;
@end

@implementation PGGraphCalendarUnitNodeCollection

- (PGGraphDateNodeCollection)dateNodes
{
  v3 = [objc_opt_class() dateOfCalendarUnit];
  v4 = [(MANodeCollection *)PGGraphDateNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)calendarUnitNodesForUnitValues:(id)a3 inGraph:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [a1 filter];
  v14 = @"name";
  v15[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v10 = [v8 filterBySettingProperties:v9];

  v11 = [a1 nodesMatchingFilter:v10 inGraph:v6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)calendarUnitNodesForUnitValue:(int64_t)a3 inGraph:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a1 filter];
  v14 = @"name";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v15[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = [v7 filterBySettingProperties:v9];

  v11 = [a1 nodesMatchingFilter:v10 inGraph:v6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (MARelation)dateOfCalendarUnit
{
  v2 = [a1 calendarUnit];
  if ((v2 - 1) > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = *off_278887328[v2 - 1];
  }

  v4 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:v3 domain:400];
  v5 = [v4 inRelation];

  return v5;
}

+ (id)filter
{
  v2 = [a1 calendarUnit];
  if ((v2 - 1) > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = *off_2788872F8[v2 - 1];
  }

  v4 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:v3 domain:400];

  return v4;
}

+ (unint64_t)calendarUnit
{
  v2 = PGAbstractMethodException(a1, a2);
  objc_exception_throw(v2);
}

@end