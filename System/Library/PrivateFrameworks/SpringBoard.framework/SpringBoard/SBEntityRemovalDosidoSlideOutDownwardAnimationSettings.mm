@interface SBEntityRemovalDosidoSlideOutDownwardAnimationSettings
- (void)setDefaultValues;
@end

@implementation SBEntityRemovalDosidoSlideOutDownwardAnimationSettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = SBEntityRemovalDosidoSlideOutDownwardAnimationSettings;
  [(SBEntityRemovalDosidoSlideOutAnimationSettings *)&v5 setDefaultValues];
  defaultAnimationSettings = [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self defaultAnimationSettings];
  [defaultAnimationSettings setToViewScaleAndAlphaResetAnimationDelay:0.0700000003];

  defaultAnimationSettings2 = [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self defaultAnimationSettings];
  [defaultAnimationSettings2 setToViewDimmingViewFadeOutDelay:0.109999999];

  [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self setFromViewSlideOutAnimationDelay:0.0299999993];
}

@end