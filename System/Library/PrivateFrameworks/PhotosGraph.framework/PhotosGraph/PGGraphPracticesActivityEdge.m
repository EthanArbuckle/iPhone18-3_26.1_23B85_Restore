@interface PGGraphPracticesActivityEdge
+ (id)filter;
- (id)initFromPersonNode:(id)a3 toActivityNode:(id)a4;
@end

@implementation PGGraphPracticesActivityEdge

- (id)initFromPersonNode:(id)a3 toActivityNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphPracticesActivityEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"PRACTICES_ACTIVITY" domain:701];

  return v2;
}

@end