@interface PGGraphBusinessCategoryNodeCollection
+ (id)businessCategoryNodesForCategories:(id)a3 inGraph:(id)a4;
+ (id)businessCategoryNodesForCategory:(id)a3 inGraph:(id)a4;
- (PGGraphBusinessNodeCollection)businessNodes;
@end

@implementation PGGraphBusinessCategoryNodeCollection

- (PGGraphBusinessNodeCollection)businessNodes
{
  v3 = +[PGGraphBusinessCategoryNode businessOfCategory];
  v4 = [(MANodeCollection *)PGGraphBusinessNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)businessCategoryNodesForCategory:(id)a3 inGraph:(id)a4
{
  v5 = a4;
  v6 = [PGGraphBusinessCategoryNode filterWithCategory:a3];
  v7 = [(MANodeCollection *)PGGraphBusinessCategoryNodeCollection nodesMatchingFilter:v6 inGraph:v5];

  return v7;
}

+ (id)businessCategoryNodesForCategories:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphBusinessCategoryNode filterWithCategories:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

@end