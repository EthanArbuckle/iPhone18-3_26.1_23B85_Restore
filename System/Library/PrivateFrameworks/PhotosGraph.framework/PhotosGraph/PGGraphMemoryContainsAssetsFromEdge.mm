@interface PGGraphMemoryContainsAssetsFromEdge
+ (id)filter;
- (id)initFromMemoryNode:(id)node toMomentSourceNode:(id)sourceNode;
@end

@implementation PGGraphMemoryContainsAssetsFromEdge

- (id)initFromMemoryNode:(id)node toMomentSourceNode:(id)sourceNode
{
  v5.receiver = self;
  v5.super_class = PGGraphMemoryContainsAssetsFromEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:sourceNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"CONTAINS_ASSETS_FROM" domain:1100];

  return v2;
}

@end