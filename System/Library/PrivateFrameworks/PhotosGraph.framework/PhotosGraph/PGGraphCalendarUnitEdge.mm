@interface PGGraphCalendarUnitEdge
+ (MAEdgeFilter)dayFilter;
+ (MAEdgeFilter)dayOfWeekFilter;
+ (MAEdgeFilter)monthDayFilter;
+ (MAEdgeFilter)monthFilter;
+ (MAEdgeFilter)weekOfMonthFilter;
+ (MAEdgeFilter)weekOfYearFilter;
+ (MAEdgeFilter)yearFilter;
- (PGGraphCalendarUnitEdge)initWithCalendarUnit:(unint64_t)unit fromDateNode:(id)node toCalendarUnitNode:(id)unitNode;
- (PGGraphCalendarUnitEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (id)label;
@end

@implementation PGGraphCalendarUnitEdge

- (id)label
{
  if (*(self + 40) - 1 > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = *off_278887328[(*(self + 40) - 1)];
  }

  return v3;
}

- (PGGraphCalendarUnitEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  labelCopy = label;
  targetNodeCopy = targetNode;
  nodeCopy = node;
  if ([labelCopy isEqualToString:@"DAY"])
  {
    v13 = 1;
  }

  else if ([labelCopy isEqualToString:@"MONTH"])
  {
    v13 = 2;
  }

  else if ([labelCopy isEqualToString:@"MONTH_DAY"])
  {
    v13 = 3;
  }

  else if ([labelCopy isEqualToString:@"YEAR"])
  {
    v13 = 4;
  }

  else if ([labelCopy isEqualToString:@"WEEKMONTH"])
  {
    v13 = 5;
  }

  else if ([labelCopy isEqualToString:@"WEEKYEAR"])
  {
    v13 = 6;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(PGGraphCalendarUnitEdge *)self initWithCalendarUnit:v13 fromDateNode:nodeCopy toCalendarUnitNode:targetNodeCopy];
  return v14;
}

- (PGGraphCalendarUnitEdge)initWithCalendarUnit:(unint64_t)unit fromDateNode:(id)node toCalendarUnitNode:(id)unitNode
{
  nodeCopy = node;
  unitNodeCopy = unitNode;
  if (!unit)
  {
    __assert_rtn("[PGGraphCalendarUnitEdge initWithCalendarUnit:fromDateNode:toCalendarUnitNode:]", "PGGraphCalendarUnitEdge.m", 53, "calendarUnit != PGGraphCalendarUnitUnitUnknown");
  }

  v10 = unitNodeCopy;
  v14.receiver = self;
  v14.super_class = PGGraphCalendarUnitEdge;
  v11 = [(PGGraphEdge *)&v14 initWithSourceNode:nodeCopy targetNode:unitNodeCopy];
  v12 = v11;
  if (v11)
  {
    *(v11 + 40) = unit;
  }

  return v12;
}

+ (MAEdgeFilter)dayOfWeekFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"DAYOFWEEK" domain:400];

  return v2;
}

+ (MAEdgeFilter)weekOfMonthFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"WEEKMONTH" domain:400];

  return v2;
}

+ (MAEdgeFilter)weekOfYearFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"WEEKYEAR" domain:400];

  return v2;
}

+ (MAEdgeFilter)yearFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"YEAR" domain:400];

  return v2;
}

+ (MAEdgeFilter)monthDayFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"MONTH_DAY" domain:400];

  return v2;
}

+ (MAEdgeFilter)monthFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"MONTH" domain:400];

  return v2;
}

+ (MAEdgeFilter)dayFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"DAY" domain:400];

  return v2;
}

@end