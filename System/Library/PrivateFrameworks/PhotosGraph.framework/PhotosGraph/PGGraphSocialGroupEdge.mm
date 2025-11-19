@interface PGGraphSocialGroupEdge
+ (id)filter;
- (id)initFromMomentNode:(id)a3 toSocialGroupNode:(id)a4;
@end

@implementation PGGraphSocialGroupEdge

- (id)initFromMomentNode:(id)a3 toSocialGroupNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphSocialGroupEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"SOCIALGROUP" domain:302];

  return v2;
}

@end