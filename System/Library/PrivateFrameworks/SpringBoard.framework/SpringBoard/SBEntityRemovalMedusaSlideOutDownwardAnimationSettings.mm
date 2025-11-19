@interface SBEntityRemovalMedusaSlideOutDownwardAnimationSettings
- (void)setDefaultValues;
@end

@implementation SBEntityRemovalMedusaSlideOutDownwardAnimationSettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = SBEntityRemovalMedusaSlideOutDownwardAnimationSettings;
  [(SBEntityRemovalMedusaSlideOutAnimationSettings *)&v5 setDefaultValues];
  v3 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  [v3 setToBeMadeFullscreenFrameAnimationDelay:0.25];

  v4 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self toBeRemovedSlideOutAnimationSettings];
  [v4 setResponse:0.699999988];

  [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self setToBeRemovedSlideOutAnimationDelay:0.0];
}

@end