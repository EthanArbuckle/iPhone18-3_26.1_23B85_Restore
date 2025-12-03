@interface PGGraphAudioFeatureNodeCollection
+ (id)audioFeatureNodesForLabel:(id)label inGraph:(id)graph;
+ (id)audioFeatureNodesForLabels:(id)labels inGraph:(id)graph;
- (PGGraphMomentNodeCollection)momentNodes;
@end

@implementation PGGraphAudioFeatureNodeCollection

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphAudioFeatureNode momentOfAudioFeature];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)audioFeatureNodesForLabels:(id)labels inGraph:(id)graph
{
  graphCopy = graph;
  v7 = [PGGraphAudioFeatureNode filterForAudioFeatureLabels:labels];
  v8 = [self nodesMatchingFilter:v7 inGraph:graphCopy];

  return v8;
}

+ (id)audioFeatureNodesForLabel:(id)label inGraph:(id)graph
{
  graphCopy = graph;
  v7 = [PGGraphAudioFeatureNode filterForAudioFeatureLabel:label];
  v8 = [self nodesMatchingFilter:v7 inGraph:graphCopy];

  return v8;
}

@end