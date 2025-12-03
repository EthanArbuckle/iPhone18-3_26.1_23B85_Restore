@interface PGGraphMemoryFeaturesEdge
+ (id)filter;
- (id)initFromMemoryNode:(id)node toFeatureNode:(id)featureNode;
@end

@implementation PGGraphMemoryFeaturesEdge

- (id)initFromMemoryNode:(id)node toFeatureNode:(id)featureNode
{
  v5.receiver = self;
  v5.super_class = PGGraphMemoryFeaturesEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:featureNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"MEMORY_FEATURES" domain:1100];

  return v2;
}

@end