@interface PGGraphPublicEventCategoryEdge
+ (id)filter;
- (id)initFromPublicEventNode:(id)a3 toCategoryNode:(id)a4;
@end

@implementation PGGraphPublicEventCategoryEdge

- (id)initFromPublicEventNode:(id)a3 toCategoryNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphPublicEventCategoryEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"CATEGORY" domain:901];

  return v2;
}

@end