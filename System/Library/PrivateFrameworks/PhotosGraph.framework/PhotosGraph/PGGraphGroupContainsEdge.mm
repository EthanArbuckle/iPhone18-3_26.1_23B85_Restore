@interface PGGraphGroupContainsEdge
+ (id)filter;
- (id)initFromHighlightGroupNode:(id)node toHighlightNode:(id)highlightNode;
@end

@implementation PGGraphGroupContainsEdge

- (id)initFromHighlightGroupNode:(id)node toHighlightNode:(id)highlightNode
{
  v5.receiver = self;
  v5.super_class = PGGraphGroupContainsEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:highlightNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"GROUP_CONTAINS" domain:102];

  return v2;
}

@end