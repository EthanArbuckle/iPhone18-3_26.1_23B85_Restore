@interface PGGraphSubmeaningOfEdge
+ (id)filter;
- (id)initFromSubmeaningNode:(id)a3 toParentMeaningNode:(id)a4;
@end

@implementation PGGraphSubmeaningOfEdge

- (id)initFromSubmeaningNode:(id)a3 toParentMeaningNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphSubmeaningOfEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"SUBMEANING_OF" domain:700];

  return v2;
}

@end