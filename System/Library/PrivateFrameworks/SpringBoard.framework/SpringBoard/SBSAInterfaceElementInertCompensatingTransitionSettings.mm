@interface SBSAInterfaceElementInertCompensatingTransitionSettings
- (void)_setDefaultValuesForBehaviorSettings:(id)settings;
@end

@implementation SBSAInterfaceElementInertCompensatingTransitionSettings

- (void)_setDefaultValuesForBehaviorSettings:(id)settings
{
  settingsCopy = settings;
  [settingsCopy setDefaultValues];
  [settingsCopy setBehaviorType:1];
  [settingsCopy setDampingRatio:0.816];
  [settingsCopy setResponse:0.513];
  [settingsCopy setRetargetImpulse:0.008];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [settingsCopy setFrameRateRange:1114137 highFrameRateReason:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

@end