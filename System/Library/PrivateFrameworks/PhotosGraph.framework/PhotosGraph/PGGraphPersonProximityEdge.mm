@interface PGGraphPersonProximityEdge
+ (id)filter;
- (id)initFromPersonNode:(id)node toMomentNode:(id)momentNode;
@end

@implementation PGGraphPersonProximityEdge

- (id)initFromPersonNode:(id)node toMomentNode:(id)momentNode
{
  v5.receiver = self;
  v5.super_class = PGGraphPersonProximityEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:momentNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"IN_PROXIMITY" domain:300];

  return v2;
}

@end