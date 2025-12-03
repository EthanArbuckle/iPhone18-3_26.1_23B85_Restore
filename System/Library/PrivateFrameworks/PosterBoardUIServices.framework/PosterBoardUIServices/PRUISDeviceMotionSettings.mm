@interface PRUISDeviceMotionSettings
- (void)setDeviceMotionMode:(unint64_t)mode;
- (void)setLowPowerModeEnabled:(BOOL)enabled;
- (void)setReducedMotionEnabled:(BOOL)enabled;
- (void)setSignificantMotion:(BOOL)motion;
@end

@implementation PRUISDeviceMotionSettings

- (void)setReducedMotionEnabled:(BOOL)enabled
{
  if (self->_reducedMotionEnabled != enabled)
  {
    self->_reducedMotionEnabled = enabled;
  }
}

- (void)setLowPowerModeEnabled:(BOOL)enabled
{
  if (self->_lowPowerModeEnabled != enabled)
  {
    self->_lowPowerModeEnabled = enabled;
  }
}

- (void)setSignificantMotion:(BOOL)motion
{
  if (self->_significantMotion != motion)
  {
    self->_significantMotion = motion;
  }
}

- (void)setDeviceMotionMode:(unint64_t)mode
{
  if (self->_deviceMotionMode != mode)
  {
    self->_deviceMotionMode = mode;
    self->_shouldIgnoreReducedMotionChange = mode == 2;
  }
}

@end