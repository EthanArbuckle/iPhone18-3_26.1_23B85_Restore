@interface PGGraphPublicEventCategoryNodeCollection
+ (id)publicEventCategoryNodesForCategories:(id)categories inGraph:(id)graph;
+ (id)publicEventCategoryNodesForCategory:(id)category inGraph:(id)graph;
- (PGGraphPublicEventNodeCollection)publicEventNodes;
@end

@implementation PGGraphPublicEventCategoryNodeCollection

- (PGGraphPublicEventNodeCollection)publicEventNodes
{
  v3 = +[PGGraphPublicEventCategoryNode publicEventOfCategory];
  v4 = [(MANodeCollection *)PGGraphPublicEventNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)publicEventCategoryNodesForCategories:(id)categories inGraph:(id)graph
{
  graphCopy = graph;
  v6 = [PGGraphPublicEventCategoryNode filterWithCategories:categories];
  v7 = [(MANodeCollection *)PGGraphPublicEventCategoryNodeCollection nodesMatchingFilter:v6 inGraph:graphCopy];

  return v7;
}

+ (id)publicEventCategoryNodesForCategory:(id)category inGraph:(id)graph
{
  graphCopy = graph;
  v6 = [PGGraphPublicEventCategoryNode filterWithCategory:category];
  v7 = [(MANodeCollection *)PGGraphPublicEventCategoryNodeCollection nodesMatchingFilter:v6 inGraph:graphCopy];

  return v7;
}

@end