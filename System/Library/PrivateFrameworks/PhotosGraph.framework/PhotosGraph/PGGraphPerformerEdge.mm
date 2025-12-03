@interface PGGraphPerformerEdge
+ (id)filter;
- (id)initFromPublicEventNode:(id)node toPerformerNode:(id)performerNode;
@end

@implementation PGGraphPerformerEdge

- (id)initFromPublicEventNode:(id)node toPerformerNode:(id)performerNode
{
  v5.receiver = self;
  v5.super_class = PGGraphPerformerEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:performerNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"PERFORMER" domain:900];

  return v2;
}

@end