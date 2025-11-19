@interface PGGraphFrequentLocationInEdge
+ (id)filter;
- (id)initFromMomentNode:(id)a3 toFrequentLocationNode:(id)a4;
@end

@implementation PGGraphFrequentLocationInEdge

- (id)initFromMomentNode:(id)a3 toFrequentLocationNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphFrequentLocationInEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"IN" domain:204];

  return v2;
}

@end