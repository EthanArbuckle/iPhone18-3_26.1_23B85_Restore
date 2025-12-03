@interface PGGraphSceneFeatureNodeCollection
+ (id)sceneFeatureNodesForSceneName:(id)name inGraph:(id)graph;
+ (id)sceneFeatureNodesForSceneNames:(id)names inGraph:(id)graph;
- (PGGraphMomentNodeCollection)momentNodes;
@end

@implementation PGGraphSceneFeatureNodeCollection

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphSceneFeatureNode momentOfSceneFeature];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)sceneFeatureNodesForSceneNames:(id)names inGraph:(id)graph
{
  graphCopy = graph;
  v7 = [PGGraphSceneFeatureNode filterForSceneNames:names];
  v8 = [self nodesMatchingFilter:v7 inGraph:graphCopy];

  return v8;
}

+ (id)sceneFeatureNodesForSceneName:(id)name inGraph:(id)graph
{
  graphCopy = graph;
  v7 = [PGGraphSceneFeatureNode filterForSceneName:name];
  v8 = [self nodesMatchingFilter:v7 inGraph:graphCopy];

  return v8;
}

@end