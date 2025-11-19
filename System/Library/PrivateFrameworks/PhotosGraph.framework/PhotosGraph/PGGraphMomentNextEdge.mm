@interface PGGraphMomentNextEdge
+ (id)filter;
- (id)initFromMomentNode:(id)a3 toMomentNode:(id)a4;
@end

@implementation PGGraphMomentNextEdge

- (id)initFromMomentNode:(id)a3 toMomentNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphMomentNextEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"NEXT" domain:101];

  return v2;
}

@end