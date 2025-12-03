@interface PGGraphLocationContinentEdge
+ (id)filter;
- (id)initFromLocationNode:(id)node toContinentNode:(id)continentNode;
@end

@implementation PGGraphLocationContinentEdge

- (id)initFromLocationNode:(id)node toContinentNode:(id)continentNode
{
  v5.receiver = self;
  v5.super_class = PGGraphLocationContinentEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:continentNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"CONTINENT" domain:200];

  return v2;
}

@end