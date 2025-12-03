@interface PGGraphIsHomeWorkEdge
+ (id)filter;
- (id)initFromAddressNode:(id)node toHomeWorkNode:(id)workNode;
@end

@implementation PGGraphIsHomeWorkEdge

- (id)initFromAddressNode:(id)node toHomeWorkNode:(id)workNode
{
  v5.receiver = self;
  v5.super_class = PGGraphIsHomeWorkEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:workNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"IS_HOME_WORK" domain:202];

  return v2;
}

@end