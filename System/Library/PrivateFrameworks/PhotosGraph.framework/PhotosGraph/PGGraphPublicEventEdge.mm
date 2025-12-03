@interface PGGraphPublicEventEdge
+ (id)filter;
- (id)initFromMomentNode:(id)node toPublicEventNode:(id)eventNode;
@end

@implementation PGGraphPublicEventEdge

- (id)initFromMomentNode:(id)node toPublicEventNode:(id)eventNode
{
  v5.receiver = self;
  v5.super_class = PGGraphPublicEventEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:eventNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"PUBLIC_EVENT" domain:900];

  return v2;
}

@end