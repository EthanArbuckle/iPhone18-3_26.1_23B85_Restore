@interface PGGraphAuthorEdge
+ (id)filter;
- (id)initFromPersonNode:(id)node toMomentNode:(id)momentNode;
@end

@implementation PGGraphAuthorEdge

- (id)initFromPersonNode:(id)node toMomentNode:(id)momentNode
{
  v5.receiver = self;
  v5.super_class = PGGraphAuthorEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:momentNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"AUTHOR" domain:300];

  return v2;
}

@end