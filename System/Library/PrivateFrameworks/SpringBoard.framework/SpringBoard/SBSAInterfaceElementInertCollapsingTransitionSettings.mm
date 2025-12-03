@interface SBSAInterfaceElementInertCollapsingTransitionSettings
- (void)_setDefaultValuesForBehaviorSettings:(id)settings;
@end

@implementation SBSAInterfaceElementInertCollapsingTransitionSettings

- (void)_setDefaultValuesForBehaviorSettings:(id)settings
{
  v4.receiver = self;
  v4.super_class = SBSAInterfaceElementInertCollapsingTransitionSettings;
  settingsCopy = settings;
  [(SBSystemApertureTransitionSettings *)&v4 _setDefaultValuesForBehaviorSettings:settingsCopy];
  [settingsCopy setBehaviorType:{1, v4.receiver, v4.super_class}];
  [settingsCopy setDampingRatio:0.816];
  [settingsCopy setResponse:0.513];
  [settingsCopy setRetargetImpulse:0.008];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [settingsCopy setFrameRateRange:1114137 highFrameRateReason:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

@end