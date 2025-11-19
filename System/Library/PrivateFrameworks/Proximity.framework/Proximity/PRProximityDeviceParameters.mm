@interface PRProximityDeviceParameters
- (PRProximityDeviceParameters)init;
- (PRProximityDeviceParameters)initWithFilter:(void *)a3 sampleSize:(unint64_t)a4 rssiImmediate:(id)a5 rssiNear:(id)a6;
@end

@implementation PRProximityDeviceParameters

- (PRProximityDeviceParameters)init
{
  [(PRProximityDeviceParameters *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRProximityDeviceParameters)initWithFilter:(void *)a3 sampleSize:(unint64_t)a4 rssiImmediate:(id)a5 rssiNear:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = PRProximityDeviceParameters;
  v13 = [(PRProximityDeviceParameters *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_filter = a3;
    v13->_samplesize = a4;
    objc_storeStrong(&v13->_rssiImmediate, a5);
    objc_storeStrong(&v14->_rssiNear, a6);
  }

  return v14;
}

@end