@interface PGGraphContainsEdge
+ (id)filter;
- (id)initFromHighlightNode:(id)a3 toMomentNode:(id)a4;
@end

@implementation PGGraphContainsEdge

- (id)initFromHighlightNode:(id)a3 toMomentNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphContainsEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"CONTAINS" domain:102];

  return v2;
}

@end