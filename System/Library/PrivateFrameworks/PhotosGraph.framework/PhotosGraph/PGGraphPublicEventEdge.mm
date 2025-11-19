@interface PGGraphPublicEventEdge
+ (id)filter;
- (id)initFromMomentNode:(id)a3 toPublicEventNode:(id)a4;
@end

@implementation PGGraphPublicEventEdge

- (id)initFromMomentNode:(id)a3 toPublicEventNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphPublicEventEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"PUBLIC_EVENT" domain:900];

  return v2;
}

@end