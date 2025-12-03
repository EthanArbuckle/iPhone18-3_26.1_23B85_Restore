@interface SBHScrollableConfiguringIconViewInteraction
- (void)handleTargetIconViewClipped:(id)clipped;
@end

@implementation SBHScrollableConfiguringIconViewInteraction

- (void)handleTargetIconViewClipped:(id)clipped
{
  v4.receiver = self;
  v4.super_class = SBHScrollableConfiguringIconViewInteraction;
  clippedCopy = clipped;
  [(SBHScrollableIconViewInteraction *)&v4 handleTargetIconViewClipped:clippedCopy];
  [clippedCopy dismissConfigurationCardImmediately];
}

@end