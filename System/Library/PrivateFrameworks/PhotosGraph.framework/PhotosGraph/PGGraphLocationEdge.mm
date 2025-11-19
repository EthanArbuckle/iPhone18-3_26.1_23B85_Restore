@interface PGGraphLocationEdge
+ (id)filter;
- (MAEdgeFilter)uniquelyIdentifyingFilter;
@end

@implementation PGGraphLocationEdge

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:0 domain:200];

  return v2;
}

- (MAEdgeFilter)uniquelyIdentifyingFilter
{
  v2 = objc_opt_class();

  return [v2 filter];
}

@end