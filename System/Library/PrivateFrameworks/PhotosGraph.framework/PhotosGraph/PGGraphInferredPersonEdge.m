@interface PGGraphInferredPersonEdge
+ (id)filter;
- (id)initFromPersonNode:(id)a3 toInferredPersonNode:(id)a4;
@end

@implementation PGGraphInferredPersonEdge

- (id)initFromPersonNode:(id)a3 toInferredPersonNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphInferredPersonEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"INFERRED_TO" domain:300];

  return v2;
}

@end