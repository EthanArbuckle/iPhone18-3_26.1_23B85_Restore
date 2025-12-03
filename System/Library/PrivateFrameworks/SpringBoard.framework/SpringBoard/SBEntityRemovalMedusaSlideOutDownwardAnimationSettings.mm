@interface SBEntityRemovalMedusaSlideOutDownwardAnimationSettings
- (void)setDefaultValues;
@end

@implementation SBEntityRemovalMedusaSlideOutDownwardAnimationSettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = SBEntityRemovalMedusaSlideOutDownwardAnimationSettings;
  [(SBEntityRemovalMedusaSlideOutAnimationSettings *)&v5 setDefaultValues];
  defaultAnimationSettings = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  [defaultAnimationSettings setToBeMadeFullscreenFrameAnimationDelay:0.25];

  toBeRemovedSlideOutAnimationSettings = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self toBeRemovedSlideOutAnimationSettings];
  [toBeRemovedSlideOutAnimationSettings setResponse:0.699999988];

  [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self setToBeRemovedSlideOutAnimationDelay:0.0];
}

@end