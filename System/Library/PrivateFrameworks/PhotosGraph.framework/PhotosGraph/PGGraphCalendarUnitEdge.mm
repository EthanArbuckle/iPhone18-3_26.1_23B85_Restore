@interface PGGraphCalendarUnitEdge
+ (MAEdgeFilter)dayFilter;
+ (MAEdgeFilter)dayOfWeekFilter;
+ (MAEdgeFilter)monthDayFilter;
+ (MAEdgeFilter)monthFilter;
+ (MAEdgeFilter)weekOfMonthFilter;
+ (MAEdgeFilter)weekOfYearFilter;
+ (MAEdgeFilter)yearFilter;
- (PGGraphCalendarUnitEdge)initWithCalendarUnit:(unint64_t)a3 fromDateNode:(id)a4 toCalendarUnitNode:(id)a5;
- (PGGraphCalendarUnitEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7;
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

- (PGGraphCalendarUnitEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  if ([v10 isEqualToString:@"DAY"])
  {
    v13 = 1;
  }

  else if ([v10 isEqualToString:@"MONTH"])
  {
    v13 = 2;
  }

  else if ([v10 isEqualToString:@"MONTH_DAY"])
  {
    v13 = 3;
  }

  else if ([v10 isEqualToString:@"YEAR"])
  {
    v13 = 4;
  }

  else if ([v10 isEqualToString:@"WEEKMONTH"])
  {
    v13 = 5;
  }

  else if ([v10 isEqualToString:@"WEEKYEAR"])
  {
    v13 = 6;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(PGGraphCalendarUnitEdge *)self initWithCalendarUnit:v13 fromDateNode:v12 toCalendarUnitNode:v11];
  return v14;
}

- (PGGraphCalendarUnitEdge)initWithCalendarUnit:(unint64_t)a3 fromDateNode:(id)a4 toCalendarUnitNode:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!a3)
  {
    __assert_rtn("[PGGraphCalendarUnitEdge initWithCalendarUnit:fromDateNode:toCalendarUnitNode:]", "PGGraphCalendarUnitEdge.m", 53, "calendarUnit != PGGraphCalendarUnitUnitUnknown");
  }

  v10 = v9;
  v14.receiver = self;
  v14.super_class = PGGraphCalendarUnitEdge;
  v11 = [(PGGraphEdge *)&v14 initWithSourceNode:v8 targetNode:v9];
  v12 = v11;
  if (v11)
  {
    *(v11 + 40) = a3;
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