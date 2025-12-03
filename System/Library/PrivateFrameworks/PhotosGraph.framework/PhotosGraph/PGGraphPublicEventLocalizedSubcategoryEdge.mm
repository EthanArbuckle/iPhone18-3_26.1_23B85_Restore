@interface PGGraphPublicEventLocalizedSubcategoryEdge
- (id)initFromPublicEventNode:(id)node toLocalizedCategoryNode:(id)categoryNode;
@end

@implementation PGGraphPublicEventLocalizedSubcategoryEdge

- (id)initFromPublicEventNode:(id)node toLocalizedCategoryNode:(id)categoryNode
{
  v5.receiver = self;
  v5.super_class = PGGraphPublicEventLocalizedSubcategoryEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:categoryNode];
}

@end