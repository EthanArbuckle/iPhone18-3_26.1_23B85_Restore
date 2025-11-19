@interface PGGraphHasTypeEdge
+ (id)filter;
- (id)initFromHighlightGroupNode:(id)a3 toHighlightTypeNode:(id)a4;
@end

@implementation PGGraphHasTypeEdge

- (id)initFromHighlightGroupNode:(id)a3 toHighlightTypeNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphHasTypeEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"HAS_TYPE" domain:103];

  return v2;
}

@end