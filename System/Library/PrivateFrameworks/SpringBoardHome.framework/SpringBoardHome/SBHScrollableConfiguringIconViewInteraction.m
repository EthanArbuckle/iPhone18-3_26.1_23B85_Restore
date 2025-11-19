@interface SBHScrollableConfiguringIconViewInteraction
- (void)handleTargetIconViewClipped:(id)a3;
@end

@implementation SBHScrollableConfiguringIconViewInteraction

- (void)handleTargetIconViewClipped:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBHScrollableConfiguringIconViewInteraction;
  v3 = a3;
  [(SBHScrollableIconViewInteraction *)&v4 handleTargetIconViewClipped:v3];
  [v3 dismissConfigurationCardImmediately];
}

@end