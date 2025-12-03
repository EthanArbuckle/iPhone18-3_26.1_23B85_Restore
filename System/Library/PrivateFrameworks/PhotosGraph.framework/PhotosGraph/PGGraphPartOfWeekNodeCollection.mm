@interface PGGraphPartOfWeekNodeCollection
- (PGGraphMomentNodeCollection)momentNodes;
@end

@implementation PGGraphPartOfWeekNodeCollection

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphPartOfWeekEdge filter];
  inRelation = [v3 inRelation];
  v5 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:inRelation];

  return v5;
}

@end