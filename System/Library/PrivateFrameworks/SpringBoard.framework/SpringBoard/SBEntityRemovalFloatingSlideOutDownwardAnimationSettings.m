@interface SBEntityRemovalFloatingSlideOutDownwardAnimationSettings
- (void)setDefaultValues;
@end

@implementation SBEntityRemovalFloatingSlideOutDownwardAnimationSettings

- (void)setDefaultValues
{
  v4.receiver = self;
  v4.super_class = SBEntityRemovalFloatingSlideOutDownwardAnimationSettings;
  [(SBEntityRemovalFloatingSlideOutAnimationSettings *)&v4 setDefaultValues];
  v3 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self toBeRemovedSlideOutAnimationSettings];
  [v3 setResponse:0.579999983];

  [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self setToBeRemovedSlideOutAnimationDelay:0.0];
}

@end