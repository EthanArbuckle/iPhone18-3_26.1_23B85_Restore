@interface PGGraphAudioFeatureNode
+ (id)filter;
+ (id)filterForAudioFeatureLabel:(id)label;
+ (id)filterForAudioFeatureLabels:(id)labels;
+ (id)momentOfAudioFeature;
- (NSString)featureIdentifier;
- (PGGraphAudioFeatureNode)initWithLabel:(id)label;
- (PGGraphAudioFeatureNodeCollection)collection;
@end

@implementation PGGraphAudioFeatureNode

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  label = [(PGGraphAudioFeatureNode *)self label];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, label];

  return v7;
}

- (PGGraphAudioFeatureNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphAudioFeatureNodeCollection alloc] initWithNode:self];

  return v2;
}

- (PGGraphAudioFeatureNode)initWithLabel:(id)label
{
  labelCopy = label;
  v9.receiver = self;
  v9.super_class = PGGraphAudioFeatureNode;
  v5 = [(PGGraphNode *)&v9 init];
  if (v5)
  {
    v6 = [labelCopy copy];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

+ (id)momentOfAudioFeature
{
  v2 = +[PGGraphMomentFeaturesEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (id)filterForAudioFeatureLabels:(id)labels
{
  v3 = MEMORY[0x277D22C78];
  labelsCopy = labels;
  v5 = [v3 alloc];
  v6 = [v5 initWithLabels:labelsCopy domain:1201 properties:MEMORY[0x277CBEC10]];

  return v6;
}

+ (id)filterForAudioFeatureLabel:(id)label
{
  v3 = MEMORY[0x277D22C78];
  labelCopy = label;
  v5 = [[v3 alloc] initWithLabel:labelCopy domain:1201];

  return v5;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:1201];

  return v2;
}

@end