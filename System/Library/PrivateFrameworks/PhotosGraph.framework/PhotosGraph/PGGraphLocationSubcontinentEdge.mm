@interface PGGraphLocationSubcontinentEdge
+ (id)filter;
- (id)initFromLocationNode:(id)node toSubcontinentNode:(id)subcontinentNode;
@end

@implementation PGGraphLocationSubcontinentEdge

- (id)initFromLocationNode:(id)node toSubcontinentNode:(id)subcontinentNode
{
  v5.receiver = self;
  v5.super_class = PGGraphLocationSubcontinentEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:subcontinentNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"SUBCONTINENT" domain:200];

  return v2;
}

@end