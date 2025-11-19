@interface PGGraphLocationCountryEdge
+ (id)filter;
- (id)initFromLocationNode:(id)a3 toCountryNode:(id)a4;
@end

@implementation PGGraphLocationCountryEdge

- (id)initFromLocationNode:(id)a3 toCountryNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphLocationCountryEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"COUNTRY" domain:200];

  return v2;
}

@end