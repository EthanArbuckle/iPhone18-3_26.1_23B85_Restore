@interface VIRefinedRegion
- (CGRect)regionOfInterest;
- (VIRefinedRegion)initWithRegionOfInterest:(CGRect)a3 confidence:(float)a4;
@end

@implementation VIRefinedRegion

- (VIRefinedRegion)initWithRegionOfInterest:(CGRect)a3 confidence:(float)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = VIRefinedRegion;
  result = [(VIRefinedRegion *)&v10 init];
  if (result)
  {
    result->_regionOfInterest.origin.x = x;
    result->_regionOfInterest.origin.y = y;
    result->_regionOfInterest.size.width = width;
    result->_regionOfInterest.size.height = height;
    result->_confidence = a4;
  }

  return result;
}

- (CGRect)regionOfInterest
{
  x = self->_regionOfInterest.origin.x;
  y = self->_regionOfInterest.origin.y;
  width = self->_regionOfInterest.size.width;
  height = self->_regionOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end