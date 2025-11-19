@interface PGGraphMonthDayNodeCollection
+ (id)monthDayNodesForLocalDate:(id)a3 inGraph:(id)a4;
+ (id)monthDayNodesForMonth:(int64_t)a3 day:(int64_t)a4 inGraph:(id)a5;
- (PGGraphPersonNodeCollection)anniversaryPersonNodes;
- (PGGraphPersonNodeCollection)birthdayPersonNodes;
@end

@implementation PGGraphMonthDayNodeCollection

- (PGGraphPersonNodeCollection)anniversaryPersonNodes
{
  v3 = +[PGGraphAnniversaryMonthDayEdge filter];
  v4 = [v3 inRelation];
  v5 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (PGGraphPersonNodeCollection)birthdayPersonNodes
{
  v3 = +[PGGraphBirthdayMonthDayEdge filter];
  v4 = [v3 inRelation];
  v5 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

+ (id)monthDayNodesForLocalDate:(id)a3 inGraph:(id)a4
{
  v6 = MEMORY[0x277D27690];
  v7 = a4;
  v8 = [v6 components:24 fromDate:a3];
  v9 = [a1 calendarUnitNodesForUnitValue:+[PGGraphCalendarUnitNode encodedMonthDayForMonth:day:](PGGraphCalendarUnitNode inGraph:{"encodedMonthDayForMonth:day:", objc_msgSend(v8, "month"), objc_msgSend(v8, "day")), v7}];

  return v9;
}

+ (id)monthDayNodesForMonth:(int64_t)a3 day:(int64_t)a4 inGraph:(id)a5
{
  v8 = a5;
  v9 = [a1 calendarUnitNodesForUnitValue:+[PGGraphCalendarUnitNode encodedMonthDayForMonth:day:](PGGraphCalendarUnitNode inGraph:{"encodedMonthDayForMonth:day:", a3, a4), v8}];

  return v9;
}

@end