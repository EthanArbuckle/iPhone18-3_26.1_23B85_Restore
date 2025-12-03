@interface VIRefineRegionRequest
- (CGRect)regionOfInterest;
- (VIRefineRegionRequest)initWithImage:(id)image regionOfInterest:(CGRect)interest imageType:(int64_t)type preferredMetalDevice:(id)device;
@end

@implementation VIRefineRegionRequest

- (VIRefineRegionRequest)initWithImage:(id)image regionOfInterest:(CGRect)interest imageType:(int64_t)type preferredMetalDevice:(id)device
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  imageCopy = image;
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = VIRefineRegionRequest;
  v16 = [(VIRefineRegionRequest *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_image, image);
    v17->_regionOfInterest.origin.x = x;
    v17->_regionOfInterest.origin.y = y;
    v17->_regionOfInterest.size.width = width;
    v17->_regionOfInterest.size.height = height;
    v17->_imageType = type;
    objc_storeStrong(&v17->_preferredMetalDevice, device);
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