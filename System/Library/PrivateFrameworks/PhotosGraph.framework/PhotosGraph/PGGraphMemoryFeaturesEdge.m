@interface PGGraphMemoryFeaturesEdge
+ (id)filter;
- (id)initFromMemoryNode:(id)a3 toFeatureNode:(id)a4;
@end

@implementation PGGraphMemoryFeaturesEdge

- (id)initFromMemoryNode:(id)a3 toFeatureNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphMemoryFeaturesEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"MEMORY_FEATURES" domain:1100];

  return v2;
}

@end