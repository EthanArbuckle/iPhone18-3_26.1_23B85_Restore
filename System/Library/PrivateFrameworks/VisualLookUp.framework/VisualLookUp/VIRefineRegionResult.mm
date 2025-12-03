@interface VIRefineRegionResult
- (VIRefineRegionResult)initWithRefinedRegions:(id)regions version:(unint64_t)version;
@end

@implementation VIRefineRegionResult

- (VIRefineRegionResult)initWithRefinedRegions:(id)regions version:(unint64_t)version
{
  regionsCopy = regions;
  v11.receiver = self;
  v11.super_class = VIRefineRegionResult;
  v7 = [(VIRefineRegionResult *)&v11 init];
  if (v7)
  {
    v8 = [regionsCopy copy];
    refinedRegions = v7->_refinedRegions;
    v7->_refinedRegions = v8;

    v7->_version = version;
  }

  return v7;
}

@end