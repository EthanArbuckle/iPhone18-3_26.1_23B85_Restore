@interface PGGraphSubmeaningOfEdge
+ (id)filter;
- (id)initFromSubmeaningNode:(id)node toParentMeaningNode:(id)meaningNode;
@end

@implementation PGGraphSubmeaningOfEdge

- (id)initFromSubmeaningNode:(id)node toParentMeaningNode:(id)meaningNode
{
  v5.receiver = self;
  v5.super_class = PGGraphSubmeaningOfEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:meaningNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"SUBMEANING_OF" domain:700];

  return v2;
}

@end