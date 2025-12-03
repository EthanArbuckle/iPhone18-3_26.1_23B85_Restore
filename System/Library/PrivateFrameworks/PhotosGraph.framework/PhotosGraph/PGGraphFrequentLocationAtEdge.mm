@interface PGGraphFrequentLocationAtEdge
+ (id)filter;
- (id)initFromFrequentLocationNode:(id)node toAddressNode:(id)addressNode;
@end

@implementation PGGraphFrequentLocationAtEdge

- (id)initFromFrequentLocationNode:(id)node toAddressNode:(id)addressNode
{
  v5.receiver = self;
  v5.super_class = PGGraphFrequentLocationAtEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:addressNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"AT" domain:204];

  return v2;
}

@end