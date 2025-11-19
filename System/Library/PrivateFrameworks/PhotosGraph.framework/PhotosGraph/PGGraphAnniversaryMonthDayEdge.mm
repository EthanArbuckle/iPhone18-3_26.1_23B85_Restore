@interface PGGraphAnniversaryMonthDayEdge
+ (id)filter;
- (id)initFromPersonNode:(id)a3 toMonthDayNode:(id)a4;
@end

@implementation PGGraphAnniversaryMonthDayEdge

- (id)initFromPersonNode:(id)a3 toMonthDayNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphAnniversaryMonthDayEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"ANNIVERSARY_MONTH_DAY" domain:400];

  return v2;
}

@end