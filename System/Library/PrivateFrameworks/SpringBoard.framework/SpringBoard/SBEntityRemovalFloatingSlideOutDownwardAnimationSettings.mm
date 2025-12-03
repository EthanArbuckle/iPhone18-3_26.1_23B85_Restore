@interface SBEntityRemovalFloatingSlideOutDownwardAnimationSettings
- (void)setDefaultValues;
@end

@implementation SBEntityRemovalFloatingSlideOutDownwardAnimationSettings

- (void)setDefaultValues
{
  v4.receiver = self;
  v4.super_class = SBEntityRemovalFloatingSlideOutDownwardAnimationSettings;
  [(SBEntityRemovalFloatingSlideOutAnimationSettings *)&v4 setDefaultValues];
  toBeRemovedSlideOutAnimationSettings = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self toBeRemovedSlideOutAnimationSettings];
  [toBeRemovedSlideOutAnimationSettings setResponse:0.579999983];

  [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self setToBeRemovedSlideOutAnimationDelay:0.0];
}

@end