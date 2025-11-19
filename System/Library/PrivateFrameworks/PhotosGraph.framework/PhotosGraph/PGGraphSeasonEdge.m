@interface PGGraphSeasonEdge
+ (id)filter;
- (id)initFromDateNode:(id)a3 toSeasonNode:(id)a4;
@end

@implementation PGGraphSeasonEdge

- (id)initFromDateNode:(id)a3 toSeasonNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphSeasonEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"SEASON" domain:400];

  return v2;
}

@end