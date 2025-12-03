@interface PGGraphMomentNextEdge
+ (id)filter;
- (id)initFromMomentNode:(id)node toMomentNode:(id)momentNode;
@end

@implementation PGGraphMomentNextEdge

- (id)initFromMomentNode:(id)node toMomentNode:(id)momentNode
{
  v5.receiver = self;
  v5.super_class = PGGraphMomentNextEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:momentNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"NEXT" domain:101];

  return v2;
}

@end