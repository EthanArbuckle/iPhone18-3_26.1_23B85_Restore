@interface PRProximityDeviceParameters
- (PRProximityDeviceParameters)init;
- (PRProximityDeviceParameters)initWithFilter:(void *)filter sampleSize:(unint64_t)size rssiImmediate:(id)immediate rssiNear:(id)near;
@end

@implementation PRProximityDeviceParameters

- (PRProximityDeviceParameters)init
{
  [(PRProximityDeviceParameters *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRProximityDeviceParameters)initWithFilter:(void *)filter sampleSize:(unint64_t)size rssiImmediate:(id)immediate rssiNear:(id)near
{
  immediateCopy = immediate;
  nearCopy = near;
  v16.receiver = self;
  v16.super_class = PRProximityDeviceParameters;
  v13 = [(PRProximityDeviceParameters *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_filter = filter;
    v13->_samplesize = size;
    objc_storeStrong(&v13->_rssiImmediate, immediate);
    objc_storeStrong(&v14->_rssiNear, near);
  }

  return v14;
}

@end