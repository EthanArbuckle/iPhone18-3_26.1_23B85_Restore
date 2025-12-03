@interface PGGraphInferredPersonEdge
+ (id)filter;
- (id)initFromPersonNode:(id)node toInferredPersonNode:(id)personNode;
@end

@implementation PGGraphInferredPersonEdge

- (id)initFromPersonNode:(id)node toInferredPersonNode:(id)personNode
{
  v5.receiver = self;
  v5.super_class = PGGraphInferredPersonEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:personNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"INFERRED_TO" domain:300];

  return v2;
}

@end