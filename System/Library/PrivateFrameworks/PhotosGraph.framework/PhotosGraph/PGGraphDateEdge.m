@interface PGGraphDateEdge
+ (id)filter;
- (id)initFromMomentNode:(id)a3 toDateNode:(id)a4;
@end

@implementation PGGraphDateEdge

- (id)initFromMomentNode:(id)a3 toDateNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphDateEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"DATE" domain:400];

  return v2;
}

@end