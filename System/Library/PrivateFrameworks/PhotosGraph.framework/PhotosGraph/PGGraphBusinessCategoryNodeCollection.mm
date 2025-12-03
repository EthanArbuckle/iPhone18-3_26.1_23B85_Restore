@interface PGGraphBusinessCategoryNodeCollection
+ (id)businessCategoryNodesForCategories:(id)categories inGraph:(id)graph;
+ (id)businessCategoryNodesForCategory:(id)category inGraph:(id)graph;
- (PGGraphBusinessNodeCollection)businessNodes;
@end

@implementation PGGraphBusinessCategoryNodeCollection

- (PGGraphBusinessNodeCollection)businessNodes
{
  v3 = +[PGGraphBusinessCategoryNode businessOfCategory];
  v4 = [(MANodeCollection *)PGGraphBusinessNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)businessCategoryNodesForCategory:(id)category inGraph:(id)graph
{
  graphCopy = graph;
  v6 = [PGGraphBusinessCategoryNode filterWithCategory:category];
  v7 = [(MANodeCollection *)PGGraphBusinessCategoryNodeCollection nodesMatchingFilter:v6 inGraph:graphCopy];

  return v7;
}

+ (id)businessCategoryNodesForCategories:(id)categories inGraph:(id)graph
{
  graphCopy = graph;
  v7 = [PGGraphBusinessCategoryNode filterWithCategories:categories];
  v8 = [self nodesMatchingFilter:v7 inGraph:graphCopy];

  return v8;
}

@end