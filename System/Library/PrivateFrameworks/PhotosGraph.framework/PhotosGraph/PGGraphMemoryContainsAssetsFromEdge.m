@interface PGGraphMemoryContainsAssetsFromEdge
+ (id)filter;
- (id)initFromMemoryNode:(id)a3 toMomentSourceNode:(id)a4;
@end

@implementation PGGraphMemoryContainsAssetsFromEdge

- (id)initFromMemoryNode:(id)a3 toMomentSourceNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphMemoryContainsAssetsFromEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"CONTAINS_ASSETS_FROM" domain:1100];

  return v2;
}

@end