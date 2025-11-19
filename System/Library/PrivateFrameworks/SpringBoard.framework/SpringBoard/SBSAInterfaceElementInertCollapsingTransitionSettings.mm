@interface SBSAInterfaceElementInertCollapsingTransitionSettings
- (void)_setDefaultValuesForBehaviorSettings:(id)a3;
@end

@implementation SBSAInterfaceElementInertCollapsingTransitionSettings

- (void)_setDefaultValuesForBehaviorSettings:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBSAInterfaceElementInertCollapsingTransitionSettings;
  v3 = a3;
  [(SBSystemApertureTransitionSettings *)&v4 _setDefaultValuesForBehaviorSettings:v3];
  [v3 setBehaviorType:{1, v4.receiver, v4.super_class}];
  [v3 setDampingRatio:0.816];
  [v3 setResponse:0.513];
  [v3 setRetargetImpulse:0.008];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v3 setFrameRateRange:1114137 highFrameRateReason:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

@end