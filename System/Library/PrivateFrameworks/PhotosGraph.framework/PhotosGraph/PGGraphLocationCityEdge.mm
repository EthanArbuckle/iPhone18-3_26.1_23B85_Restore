@interface PGGraphLocationCityEdge
+ (id)filter;
- (id)initFromLocationNode:(id)node toCityNode:(id)cityNode;
@end

@implementation PGGraphLocationCityEdge

- (id)initFromLocationNode:(id)node toCityNode:(id)cityNode
{
  v5.receiver = self;
  v5.super_class = PGGraphLocationCityEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:cityNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"CITY" domain:200];

  return v2;
}

@end