@interface PGGraphLocationNumberEdge
+ (id)filter;
- (id)initFromLocationNode:(id)node toLocationNumberNode:(id)numberNode;
@end

@implementation PGGraphLocationNumberEdge

- (id)initFromLocationNode:(id)node toLocationNumberNode:(id)numberNode
{
  v5.receiver = self;
  v5.super_class = PGGraphLocationNumberEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:numberNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"NUMBER" domain:200];

  return v2;
}

@end