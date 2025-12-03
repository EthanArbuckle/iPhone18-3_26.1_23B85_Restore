@interface PGGraphBusinessCategoryEdge
+ (id)filter;
- (id)initFromBusinessNode:(id)node toBusinessCategoryNode:(id)categoryNode;
@end

@implementation PGGraphBusinessCategoryEdge

- (id)initFromBusinessNode:(id)node toBusinessCategoryNode:(id)categoryNode
{
  v5.receiver = self;
  v5.super_class = PGGraphBusinessCategoryEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:categoryNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"BUSINESSCATEGORY" domain:504];

  return v2;
}

@end