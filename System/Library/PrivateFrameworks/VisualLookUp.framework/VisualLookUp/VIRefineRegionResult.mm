@interface VIRefineRegionResult
- (VIRefineRegionResult)initWithRefinedRegions:(id)a3 version:(unint64_t)a4;
@end

@implementation VIRefineRegionResult

- (VIRefineRegionResult)initWithRefinedRegions:(id)a3 version:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = VIRefineRegionResult;
  v7 = [(VIRefineRegionResult *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    refinedRegions = v7->_refinedRegions;
    v7->_refinedRegions = v8;

    v7->_version = a4;
  }

  return v7;
}

@end