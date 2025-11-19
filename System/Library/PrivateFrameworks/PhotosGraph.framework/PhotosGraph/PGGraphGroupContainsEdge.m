@interface PGGraphGroupContainsEdge
+ (id)filter;
- (id)initFromHighlightGroupNode:(id)a3 toHighlightNode:(id)a4;
@end

@implementation PGGraphGroupContainsEdge

- (id)initFromHighlightGroupNode:(id)a3 toHighlightNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphGroupContainsEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"GROUP_CONTAINS" domain:102];

  return v2;
}

@end