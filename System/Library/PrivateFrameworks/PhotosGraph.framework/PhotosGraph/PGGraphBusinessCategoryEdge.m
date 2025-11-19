@interface PGGraphBusinessCategoryEdge
+ (id)filter;
- (id)initFromBusinessNode:(id)a3 toBusinessCategoryNode:(id)a4;
@end

@implementation PGGraphBusinessCategoryEdge

- (id)initFromBusinessNode:(id)a3 toBusinessCategoryNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphBusinessCategoryEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"BUSINESSCATEGORY" domain:504];

  return v2;
}

@end