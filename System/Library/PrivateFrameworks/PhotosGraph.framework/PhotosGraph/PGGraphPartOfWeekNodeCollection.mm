@interface PGGraphPartOfWeekNodeCollection
- (PGGraphMomentNodeCollection)momentNodes;
@end

@implementation PGGraphPartOfWeekNodeCollection

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphPartOfWeekEdge filter];
  v4 = [v3 inRelation];
  v5 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

@end