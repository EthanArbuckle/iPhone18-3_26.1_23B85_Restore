@interface PGGraphHasTypeEdge
+ (id)filter;
- (id)initFromHighlightGroupNode:(id)node toHighlightTypeNode:(id)typeNode;
@end

@implementation PGGraphHasTypeEdge

- (id)initFromHighlightGroupNode:(id)node toHighlightTypeNode:(id)typeNode
{
  v5.receiver = self;
  v5.super_class = PGGraphHasTypeEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:typeNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"HAS_TYPE" domain:103];

  return v2;
}

@end