@interface PGGraphPersonRelationshipTagNodeCollection
+ (id)nodesWithRelationshipTag:(unint64_t)a3 inGraph:(id)a4;
- (PGGraphPersonNodeCollection)personNodes;
- (id)personNodesWithConfidence:(double)a3;
@end

@implementation PGGraphPersonRelationshipTagNodeCollection

- (id)personNodesWithConfidence:(double)a3
{
  v4 = [PGGraphPersonRelationshipTagNode personWithTagWithConfidence:a3];
  v5 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (PGGraphPersonNodeCollection)personNodes
{
  v3 = +[PGGraphPersonRelationshipTagNode personWithTag];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)nodesWithRelationshipTag:(unint64_t)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphPersonRelationshipTagNode filterWithTag:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

@end