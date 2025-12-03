@interface PGGraphLocationCountryEdge
+ (id)filter;
- (id)initFromLocationNode:(id)node toCountryNode:(id)countryNode;
@end

@implementation PGGraphLocationCountryEdge

- (id)initFromLocationNode:(id)node toCountryNode:(id)countryNode
{
  v5.receiver = self;
  v5.super_class = PGGraphLocationCountryEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:countryNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"COUNTRY" domain:200];

  return v2;
}

@end