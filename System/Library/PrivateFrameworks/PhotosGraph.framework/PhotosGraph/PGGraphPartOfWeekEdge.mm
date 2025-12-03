@interface PGGraphPartOfWeekEdge
+ (id)filter;
- (id)initFromMomentNode:(id)node toPartOfWeekNode:(id)weekNode;
@end

@implementation PGGraphPartOfWeekEdge

- (id)initFromMomentNode:(id)node toPartOfWeekNode:(id)weekNode
{
  v5.receiver = self;
  v5.super_class = PGGraphPartOfWeekEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:weekNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"PARTOFWEEK" domain:400];

  return v2;
}

@end