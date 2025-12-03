@interface PGGraphAnniversaryMonthDayEdge
+ (id)filter;
- (id)initFromPersonNode:(id)node toMonthDayNode:(id)dayNode;
@end

@implementation PGGraphAnniversaryMonthDayEdge

- (id)initFromPersonNode:(id)node toMonthDayNode:(id)dayNode
{
  v5.receiver = self;
  v5.super_class = PGGraphAnniversaryMonthDayEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:dayNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"ANNIVERSARY_MONTH_DAY" domain:400];

  return v2;
}

@end