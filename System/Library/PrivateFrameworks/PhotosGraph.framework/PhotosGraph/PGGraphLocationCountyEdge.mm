@interface PGGraphLocationCountyEdge
+ (id)filter;
- (id)initFromLocationNode:(id)node toCountyNode:(id)countyNode;
@end

@implementation PGGraphLocationCountyEdge

- (id)initFromLocationNode:(id)node toCountyNode:(id)countyNode
{
  v5.receiver = self;
  v5.super_class = PGGraphLocationCountyEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:countyNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"COUNTY" domain:200];

  return v2;
}

@end