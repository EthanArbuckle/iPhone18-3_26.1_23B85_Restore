@interface PGGraphDateEdge
+ (id)filter;
- (id)initFromMomentNode:(id)node toDateNode:(id)dateNode;
@end

@implementation PGGraphDateEdge

- (id)initFromMomentNode:(id)node toDateNode:(id)dateNode
{
  v5.receiver = self;
  v5.super_class = PGGraphDateEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:dateNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"DATE" domain:400];

  return v2;
}

@end