@interface PGGraphPersonRelationshipTagNodeCollection
+ (id)nodesWithRelationshipTag:(unint64_t)tag inGraph:(id)graph;
- (PGGraphPersonNodeCollection)personNodes;
- (id)personNodesWithConfidence:(double)confidence;
@end

@implementation PGGraphPersonRelationshipTagNodeCollection

- (id)personNodesWithConfidence:(double)confidence
{
  v4 = [PGGraphPersonRelationshipTagNode personWithTagWithConfidence:confidence];
  v5 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (PGGraphPersonNodeCollection)personNodes
{
  v3 = +[PGGraphPersonRelationshipTagNode personWithTag];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)nodesWithRelationshipTag:(unint64_t)tag inGraph:(id)graph
{
  graphCopy = graph;
  v7 = [PGGraphPersonRelationshipTagNode filterWithTag:tag];
  v8 = [self nodesMatchingFilter:v7 inGraph:graphCopy];

  return v8;
}

@end