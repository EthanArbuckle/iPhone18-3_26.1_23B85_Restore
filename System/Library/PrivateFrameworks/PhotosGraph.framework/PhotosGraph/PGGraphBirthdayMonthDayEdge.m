@interface PGGraphBirthdayMonthDayEdge
+ (id)filter;
- (id)initFromPersonNode:(id)a3 toMonthDayNode:(id)a4;
@end

@implementation PGGraphBirthdayMonthDayEdge

- (id)initFromPersonNode:(id)a3 toMonthDayNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphBirthdayMonthDayEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"BDAY_MONTH_DAY" domain:400];

  return v2;
}

@end