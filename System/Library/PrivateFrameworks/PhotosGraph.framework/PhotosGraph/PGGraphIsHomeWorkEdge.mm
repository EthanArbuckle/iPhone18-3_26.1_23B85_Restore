@interface PGGraphIsHomeWorkEdge
+ (id)filter;
- (id)initFromAddressNode:(id)a3 toHomeWorkNode:(id)a4;
@end

@implementation PGGraphIsHomeWorkEdge

- (id)initFromAddressNode:(id)a3 toHomeWorkNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphIsHomeWorkEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"IS_HOME_WORK" domain:202];

  return v2;
}

@end