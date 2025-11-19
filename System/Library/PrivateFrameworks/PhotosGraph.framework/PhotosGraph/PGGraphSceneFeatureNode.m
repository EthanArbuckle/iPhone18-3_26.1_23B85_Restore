@interface PGGraphSceneFeatureNode
+ (id)filter;
+ (id)filterForSceneName:(id)a3;
+ (id)filterForSceneNames:(id)a3;
+ (id)momentOfSceneFeature;
- (NSString)featureIdentifier;
- (PGGraphSceneFeatureNode)initWithLabel:(id)a3;
- (PGGraphSceneFeatureNodeCollection)collection;
@end

@implementation PGGraphSceneFeatureNode

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PGGraphSceneFeatureNode *)self label];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, v6];

  return v7;
}

- (PGGraphSceneFeatureNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphSceneFeatureNodeCollection alloc] initWithNode:self];

  return v2;
}

- (PGGraphSceneFeatureNode)initWithLabel:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphSceneFeatureNode;
  v5 = [(PGGraphNode *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

+ (id)momentOfSceneFeature
{
  v2 = +[PGGraphMomentFeaturesEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (id)filterForSceneNames:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [[v3 alloc] initWithArray:v4];

  v6 = objc_alloc(MEMORY[0x277D22C78]);
  v7 = [v6 initWithLabels:v5 domain:601 properties:MEMORY[0x277CBEC10]];

  return v7;
}

+ (id)filterForSceneName:(id)a3
{
  v3 = MEMORY[0x277D22C78];
  v4 = a3;
  v5 = [[v3 alloc] initWithLabel:v4 domain:601];

  return v5;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:601];

  return v2;
}

@end