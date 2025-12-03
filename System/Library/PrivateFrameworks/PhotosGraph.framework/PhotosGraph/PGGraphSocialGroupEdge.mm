@interface PGGraphSocialGroupEdge
+ (id)filter;
- (id)initFromMomentNode:(id)node toSocialGroupNode:(id)groupNode;
@end

@implementation PGGraphSocialGroupEdge

- (id)initFromMomentNode:(id)node toSocialGroupNode:(id)groupNode
{
  v5.receiver = self;
  v5.super_class = PGGraphSocialGroupEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:groupNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"SOCIALGROUP" domain:302];

  return v2;
}

@end