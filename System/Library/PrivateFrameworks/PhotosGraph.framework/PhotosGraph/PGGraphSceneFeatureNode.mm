@interface PGGraphSceneFeatureNode
+ (id)filter;
+ (id)filterForSceneName:(id)name;
+ (id)filterForSceneNames:(id)names;
+ (id)momentOfSceneFeature;
- (NSString)featureIdentifier;
- (PGGraphSceneFeatureNode)initWithLabel:(id)label;
- (PGGraphSceneFeatureNodeCollection)collection;
@end

@implementation PGGraphSceneFeatureNode

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  label = [(PGGraphSceneFeatureNode *)self label];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, label];

  return v7;
}

- (PGGraphSceneFeatureNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphSceneFeatureNodeCollection alloc] initWithNode:self];

  return v2;
}

- (PGGraphSceneFeatureNode)initWithLabel:(id)label
{
  labelCopy = label;
  v9.receiver = self;
  v9.super_class = PGGraphSceneFeatureNode;
  v5 = [(PGGraphNode *)&v9 init];
  if (v5)
  {
    v6 = [labelCopy copy];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

+ (id)momentOfSceneFeature
{
  v2 = +[PGGraphMomentFeaturesEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (id)filterForSceneNames:(id)names
{
  v3 = MEMORY[0x277CBEB98];
  namesCopy = names;
  v5 = [[v3 alloc] initWithArray:namesCopy];

  v6 = objc_alloc(MEMORY[0x277D22C78]);
  v7 = [v6 initWithLabels:v5 domain:601 properties:MEMORY[0x277CBEC10]];

  return v7;
}

+ (id)filterForSceneName:(id)name
{
  v3 = MEMORY[0x277D22C78];
  nameCopy = name;
  v5 = [[v3 alloc] initWithLabel:nameCopy domain:601];

  return v5;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:601];

  return v2;
}

@end