@interface PGGraphSeasonEdge
+ (id)filter;
- (id)initFromDateNode:(id)node toSeasonNode:(id)seasonNode;
@end

@implementation PGGraphSeasonEdge

- (id)initFromDateNode:(id)node toSeasonNode:(id)seasonNode
{
  v5.receiver = self;
  v5.super_class = PGGraphSeasonEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:seasonNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"SEASON" domain:400];

  return v2;
}

@end