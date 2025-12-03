@interface PGGraphIsOwnedByEdge
+ (id)filter;
- (id)initFromHomeWorkNode:(id)node toPersonNode:(id)personNode;
@end

@implementation PGGraphIsOwnedByEdge

- (id)initFromHomeWorkNode:(id)node toPersonNode:(id)personNode
{
  v5.receiver = self;
  v5.super_class = PGGraphIsOwnedByEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:personNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"IS_OWNED_BY" domain:202];

  return v2;
}

@end