@interface PGGraphIsOwnerOfPetEdge
+ (id)filter;
- (id)initFromPersonNode:(id)a3 toPetNode:(id)a4;
@end

@implementation PGGraphIsOwnerOfPetEdge

- (id)initFromPersonNode:(id)a3 toPetNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphIsOwnerOfPetEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"IS_OWNER_OF" domain:304];

  return v2;
}

@end