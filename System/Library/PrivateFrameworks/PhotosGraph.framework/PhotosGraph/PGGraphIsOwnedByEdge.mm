@interface PGGraphIsOwnedByEdge
+ (id)filter;
- (id)initFromHomeWorkNode:(id)a3 toPersonNode:(id)a4;
@end

@implementation PGGraphIsOwnedByEdge

- (id)initFromHomeWorkNode:(id)a3 toPersonNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphIsOwnedByEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"IS_OWNED_BY" domain:202];

  return v2;
}

@end