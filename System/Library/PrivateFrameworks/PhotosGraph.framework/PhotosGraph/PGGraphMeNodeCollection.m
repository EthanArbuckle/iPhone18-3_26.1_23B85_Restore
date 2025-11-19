@interface PGGraphMeNodeCollection
- (id)inferredPersonNodes;
@end

@implementation PGGraphMeNodeCollection

- (id)inferredPersonNodes
{
  v3 = +[PGGraphMeNode inferredPersonOfMe];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

@end