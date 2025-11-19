@interface PGGraphAudioFeatureNode
+ (id)filter;
+ (id)filterForAudioFeatureLabel:(id)a3;
+ (id)filterForAudioFeatureLabels:(id)a3;
+ (id)momentOfAudioFeature;
- (NSString)featureIdentifier;
- (PGGraphAudioFeatureNode)initWithLabel:(id)a3;
- (PGGraphAudioFeatureNodeCollection)collection;
@end

@implementation PGGraphAudioFeatureNode

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PGGraphAudioFeatureNode *)self label];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, v6];

  return v7;
}

- (PGGraphAudioFeatureNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphAudioFeatureNodeCollection alloc] initWithNode:self];

  return v2;
}

- (PGGraphAudioFeatureNode)initWithLabel:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphAudioFeatureNode;
  v5 = [(PGGraphNode *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

+ (id)momentOfAudioFeature
{
  v2 = +[PGGraphMomentFeaturesEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (id)filterForAudioFeatureLabels:(id)a3
{
  v3 = MEMORY[0x277D22C78];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithLabels:v4 domain:1201 properties:MEMORY[0x277CBEC10]];

  return v6;
}

+ (id)filterForAudioFeatureLabel:(id)a3
{
  v3 = MEMORY[0x277D22C78];
  v4 = a3;
  v5 = [[v3 alloc] initWithLabel:v4 domain:1201];

  return v5;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:1201];

  return v2;
}

@end