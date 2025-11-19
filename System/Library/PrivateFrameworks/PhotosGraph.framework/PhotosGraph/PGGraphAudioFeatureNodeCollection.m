@interface PGGraphAudioFeatureNodeCollection
+ (id)audioFeatureNodesForLabel:(id)a3 inGraph:(id)a4;
+ (id)audioFeatureNodesForLabels:(id)a3 inGraph:(id)a4;
- (PGGraphMomentNodeCollection)momentNodes;
@end

@implementation PGGraphAudioFeatureNodeCollection

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphAudioFeatureNode momentOfAudioFeature];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)audioFeatureNodesForLabels:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphAudioFeatureNode filterForAudioFeatureLabels:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

+ (id)audioFeatureNodesForLabel:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphAudioFeatureNode filterForAudioFeatureLabel:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

@end