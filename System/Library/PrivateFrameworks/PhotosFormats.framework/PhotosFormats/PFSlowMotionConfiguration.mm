@interface PFSlowMotionConfiguration
- (PFSlowMotionConfiguration)init;
@end

@implementation PFSlowMotionConfiguration

- (PFSlowMotionConfiguration)init
{
  v9.receiver = self;
  v9.super_class = PFSlowMotionConfiguration;
  v2 = [(PFSlowMotionConfiguration *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_volumeDuringSlowMotion = 0x3E19999A3E800000;
    v4 = [[PFSlowMotionRampConfiguration alloc] initForRampDown:1];
    rampDown = v3->_rampDown;
    v3->_rampDown = v4;

    v6 = [[PFSlowMotionRampConfiguration alloc] initForRampDown:0];
    rampUp = v3->_rampUp;
    v3->_rampUp = v6;
  }

  return v3;
}

@end