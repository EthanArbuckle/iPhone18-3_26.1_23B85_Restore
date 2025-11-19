@interface PGGraphPartOfWeekEdge
+ (id)filter;
- (id)initFromMomentNode:(id)a3 toPartOfWeekNode:(id)a4;
@end

@implementation PGGraphPartOfWeekEdge

- (id)initFromMomentNode:(id)a3 toPartOfWeekNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphPartOfWeekEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"PARTOFWEEK" domain:400];

  return v2;
}

@end