@interface PGGraphSceneFeatureNodeCollection
+ (id)sceneFeatureNodesForSceneName:(id)a3 inGraph:(id)a4;
+ (id)sceneFeatureNodesForSceneNames:(id)a3 inGraph:(id)a4;
- (PGGraphMomentNodeCollection)momentNodes;
@end

@implementation PGGraphSceneFeatureNodeCollection

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphSceneFeatureNode momentOfSceneFeature];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)sceneFeatureNodesForSceneNames:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphSceneFeatureNode filterForSceneNames:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

+ (id)sceneFeatureNodesForSceneName:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphSceneFeatureNode filterForSceneName:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

@end