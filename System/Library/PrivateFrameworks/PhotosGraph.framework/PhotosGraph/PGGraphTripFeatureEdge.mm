@interface PGGraphTripFeatureEdge
+ (id)filter;
- (id)initFromHighlightGroupNode:(id)node toFeatureNode:(id)featureNode;
@end

@implementation PGGraphTripFeatureEdge

- (id)initFromHighlightGroupNode:(id)node toFeatureNode:(id)featureNode
{
  v5.receiver = self;
  v5.super_class = PGGraphTripFeatureEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:featureNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"TRIP_FEATURES" domain:200];

  return v2;
}

@end