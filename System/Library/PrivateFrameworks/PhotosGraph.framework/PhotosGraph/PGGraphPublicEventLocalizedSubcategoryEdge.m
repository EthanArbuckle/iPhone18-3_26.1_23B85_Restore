@interface PGGraphPublicEventLocalizedSubcategoryEdge
- (id)initFromPublicEventNode:(id)a3 toLocalizedCategoryNode:(id)a4;
@end

@implementation PGGraphPublicEventLocalizedSubcategoryEdge

- (id)initFromPublicEventNode:(id)a3 toLocalizedCategoryNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphPublicEventLocalizedSubcategoryEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

@end