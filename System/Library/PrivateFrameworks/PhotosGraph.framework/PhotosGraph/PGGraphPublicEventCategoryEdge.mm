@interface PGGraphPublicEventCategoryEdge
+ (id)filter;
- (id)initFromPublicEventNode:(id)node toCategoryNode:(id)categoryNode;
@end

@implementation PGGraphPublicEventCategoryEdge

- (id)initFromPublicEventNode:(id)node toCategoryNode:(id)categoryNode
{
  v5.receiver = self;
  v5.super_class = PGGraphPublicEventCategoryEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:categoryNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"CATEGORY" domain:901];

  return v2;
}

@end