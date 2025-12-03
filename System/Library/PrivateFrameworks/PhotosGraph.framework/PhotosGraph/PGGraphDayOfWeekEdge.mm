@interface PGGraphDayOfWeekEdge
+ (id)filter;
- (id)initFromDateNode:(id)node toDayOfWeekNode:(id)weekNode;
@end

@implementation PGGraphDayOfWeekEdge

- (id)initFromDateNode:(id)node toDayOfWeekNode:(id)weekNode
{
  v5.receiver = self;
  v5.super_class = PGGraphDayOfWeekEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:weekNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"DAYOFWEEK" domain:400];

  return v2;
}

@end