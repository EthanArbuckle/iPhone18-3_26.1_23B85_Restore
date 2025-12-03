@interface PGGraphMonthDayNodeCollection
+ (id)monthDayNodesForLocalDate:(id)date inGraph:(id)graph;
+ (id)monthDayNodesForMonth:(int64_t)month day:(int64_t)day inGraph:(id)graph;
- (PGGraphPersonNodeCollection)anniversaryPersonNodes;
- (PGGraphPersonNodeCollection)birthdayPersonNodes;
@end

@implementation PGGraphMonthDayNodeCollection

- (PGGraphPersonNodeCollection)anniversaryPersonNodes
{
  v3 = +[PGGraphAnniversaryMonthDayEdge filter];
  inRelation = [v3 inRelation];
  v5 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:inRelation];

  return v5;
}

- (PGGraphPersonNodeCollection)birthdayPersonNodes
{
  v3 = +[PGGraphBirthdayMonthDayEdge filter];
  inRelation = [v3 inRelation];
  v5 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:inRelation];

  return v5;
}

+ (id)monthDayNodesForLocalDate:(id)date inGraph:(id)graph
{
  v6 = MEMORY[0x277D27690];
  graphCopy = graph;
  v8 = [v6 components:24 fromDate:date];
  v9 = [self calendarUnitNodesForUnitValue:+[PGGraphCalendarUnitNode encodedMonthDayForMonth:day:](PGGraphCalendarUnitNode inGraph:{"encodedMonthDayForMonth:day:", objc_msgSend(v8, "month"), objc_msgSend(v8, "day")), graphCopy}];

  return v9;
}

+ (id)monthDayNodesForMonth:(int64_t)month day:(int64_t)day inGraph:(id)graph
{
  graphCopy = graph;
  v9 = [self calendarUnitNodesForUnitValue:+[PGGraphCalendarUnitNode encodedMonthDayForMonth:day:](PGGraphCalendarUnitNode inGraph:{"encodedMonthDayForMonth:day:", month, day), graphCopy}];

  return v9;
}

@end