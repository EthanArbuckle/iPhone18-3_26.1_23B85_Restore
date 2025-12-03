@interface PGGraphIsOwnerOfPetEdge
+ (id)filter;
- (id)initFromPersonNode:(id)node toPetNode:(id)petNode;
@end

@implementation PGGraphIsOwnerOfPetEdge

- (id)initFromPersonNode:(id)node toPetNode:(id)petNode
{
  v5.receiver = self;
  v5.super_class = PGGraphIsOwnerOfPetEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:petNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"IS_OWNER_OF" domain:304];

  return v2;
}

@end