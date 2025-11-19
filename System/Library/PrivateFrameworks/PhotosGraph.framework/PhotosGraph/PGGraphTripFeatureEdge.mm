@interface PGGraphTripFeatureEdge
+ (id)filter;
- (id)initFromHighlightGroupNode:(id)a3 toFeatureNode:(id)a4;
@end

@implementation PGGraphTripFeatureEdge

- (id)initFromHighlightGroupNode:(id)a3 toFeatureNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphTripFeatureEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"TRIP_FEATURES" domain:200];

  return v2;
}

@end