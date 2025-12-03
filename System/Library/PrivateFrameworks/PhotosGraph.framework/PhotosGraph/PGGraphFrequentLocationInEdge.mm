@interface PGGraphFrequentLocationInEdge
+ (id)filter;
- (id)initFromMomentNode:(id)node toFrequentLocationNode:(id)locationNode;
@end

@implementation PGGraphFrequentLocationInEdge

- (id)initFromMomentNode:(id)node toFrequentLocationNode:(id)locationNode
{
  v5.receiver = self;
  v5.super_class = PGGraphFrequentLocationInEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:locationNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"IN" domain:204];

  return v2;
}

@end