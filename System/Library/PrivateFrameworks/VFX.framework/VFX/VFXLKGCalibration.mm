@interface VFXLKGCalibration
- (VFXLKGCalibration)init;
- (void)dealloc;
@end

@implementation VFXLKGCalibration

- (VFXLKGCalibration)init
{
  v4.receiver = self;
  v4.super_class = VFXLKGCalibration;
  v2 = [(VFXLKGCalibration *)&v4 init];
  if (v2)
  {
    v2->_subpixelData = objc_opt_new();
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXLKGCalibration;
  [(VFXLKGCalibration *)&v3 dealloc];
}

@end