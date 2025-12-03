@interface PGGraphPracticesActivityEdge
+ (id)filter;
- (id)initFromPersonNode:(id)node toActivityNode:(id)activityNode;
@end

@implementation PGGraphPracticesActivityEdge

- (id)initFromPersonNode:(id)node toActivityNode:(id)activityNode
{
  v5.receiver = self;
  v5.super_class = PGGraphPracticesActivityEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:activityNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"PRACTICES_ACTIVITY" domain:701];

  return v2;
}

@end