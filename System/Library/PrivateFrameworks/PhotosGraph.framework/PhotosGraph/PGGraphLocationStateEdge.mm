@interface PGGraphLocationStateEdge
+ (id)filter;
- (id)initFromLocationNode:(id)node toStateNode:(id)stateNode;
@end

@implementation PGGraphLocationStateEdge

- (id)initFromLocationNode:(id)node toStateNode:(id)stateNode
{
  v5.receiver = self;
  v5.super_class = PGGraphLocationStateEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:stateNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"STATE" domain:200];

  return v2;
}

@end