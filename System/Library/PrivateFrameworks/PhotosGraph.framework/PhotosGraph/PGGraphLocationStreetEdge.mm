@interface PGGraphLocationStreetEdge
+ (id)filter;
- (id)initFromLocationNode:(id)node toStreetNode:(id)streetNode;
@end

@implementation PGGraphLocationStreetEdge

- (id)initFromLocationNode:(id)node toStreetNode:(id)streetNode
{
  v5.receiver = self;
  v5.super_class = PGGraphLocationStreetEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:streetNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"STREET" domain:200];

  return v2;
}

@end