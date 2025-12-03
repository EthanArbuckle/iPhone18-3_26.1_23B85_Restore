@interface SBHCenterAcceleratedAppSuspendSettings
- (void)setDefaultValues;
@end

@implementation SBHCenterAcceleratedAppSuspendSettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = SBHCenterAcceleratedAppSuspendSettings;
  [(SBHCenterAppSuspendSettings *)&v5 setDefaultValues];
  appFadeSettings = [(SBHCenterAppZoomSettings *)self appFadeSettings];
  [appFadeSettings setDelay:0.15];

  appFadeSettings2 = [(SBHCenterAppZoomSettings *)self appFadeSettings];
  [appFadeSettings2 setDuration:0.3];
}

@end