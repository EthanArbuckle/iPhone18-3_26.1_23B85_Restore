@interface VIRefineRegionRequest
- (CGRect)regionOfInterest;
- (VIRefineRegionRequest)initWithImage:(id)a3 regionOfInterest:(CGRect)a4 imageType:(int64_t)a5 preferredMetalDevice:(id)a6;
@end

@implementation VIRefineRegionRequest

- (VIRefineRegionRequest)initWithImage:(id)a3 regionOfInterest:(CGRect)a4 imageType:(int64_t)a5 preferredMetalDevice:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a3;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = VIRefineRegionRequest;
  v16 = [(VIRefineRegionRequest *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_image, a3);
    v17->_regionOfInterest.origin.x = x;
    v17->_regionOfInterest.origin.y = y;
    v17->_regionOfInterest.size.width = width;
    v17->_regionOfInterest.size.height = height;
    v17->_imageType = a5;
    objc_storeStrong(&v17->_preferredMetalDevice, a6);
  }

  return v17;
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