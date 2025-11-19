@interface SBEntityRemovalDosidoSlideOutDownwardAnimationSettings
- (void)setDefaultValues;
@end

@implementation SBEntityRemovalDosidoSlideOutDownwardAnimationSettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = SBEntityRemovalDosidoSlideOutDownwardAnimationSettings;
  [(SBEntityRemovalDosidoSlideOutAnimationSettings *)&v5 setDefaultValues];
  v3 = [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self defaultAnimationSettings];
  [v3 setToViewScaleAndAlphaResetAnimationDelay:0.0700000003];

  v4 = [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self defaultAnimationSettings];
  [v4 setToViewDimmingViewFadeOutDelay:0.109999999];

  [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self setFromViewSlideOutAnimationDelay:0.0299999993];
}

@end