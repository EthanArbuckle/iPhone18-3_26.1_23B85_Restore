@interface PGGraphFrequentLocationAtEdge
+ (id)filter;
- (id)initFromFrequentLocationNode:(id)a3 toAddressNode:(id)a4;
@end

@implementation PGGraphFrequentLocationAtEdge

- (id)initFromFrequentLocationNode:(id)a3 toAddressNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphFrequentLocationAtEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"AT" domain:204];

  return v2;
}

@end