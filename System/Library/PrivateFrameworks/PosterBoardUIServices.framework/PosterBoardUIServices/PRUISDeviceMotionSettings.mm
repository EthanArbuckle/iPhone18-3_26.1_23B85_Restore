@interface PRUISDeviceMotionSettings
- (void)setDeviceMotionMode:(unint64_t)a3;
- (void)setLowPowerModeEnabled:(BOOL)a3;
- (void)setReducedMotionEnabled:(BOOL)a3;
- (void)setSignificantMotion:(BOOL)a3;
@end

@implementation PRUISDeviceMotionSettings

- (void)setReducedMotionEnabled:(BOOL)a3
{
  if (self->_reducedMotionEnabled != a3)
  {
    self->_reducedMotionEnabled = a3;
  }
}

- (void)setLowPowerModeEnabled:(BOOL)a3
{
  if (self->_lowPowerModeEnabled != a3)
  {
    self->_lowPowerModeEnabled = a3;
  }
}

- (void)setSignificantMotion:(BOOL)a3
{
  if (self->_significantMotion != a3)
  {
    self->_significantMotion = a3;
  }
}

- (void)setDeviceMotionMode:(unint64_t)a3
{
  if (self->_deviceMotionMode != a3)
  {
    self->_deviceMotionMode = a3;
    self->_shouldIgnoreReducedMotionChange = a3 == 2;
  }
}

@end