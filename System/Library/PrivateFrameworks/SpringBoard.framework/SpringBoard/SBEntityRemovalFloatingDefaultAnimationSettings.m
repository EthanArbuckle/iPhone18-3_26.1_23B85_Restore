@interface SBEntityRemovalFloatingDefaultAnimationSettings
- (void)setDefaultValues;
@end

@implementation SBEntityRemovalFloatingDefaultAnimationSettings

- (void)setDefaultValues
{
  v7.receiver = self;
  v7.super_class = SBEntityRemovalFloatingDefaultAnimationSettings;
  [(SBEntityRemovalMedusaDefaultAnimationSettings *)&v7 setDefaultValues];
  v3 = SBEntityRemovalDefaultFluidAnimationSettings();
  [(SBEntityRemovalMedusaDefaultAnimationSettings *)self setToBeRemovedScaleAnimationSettings:v3];

  v4 = [(SBEntityRemovalMedusaDefaultAnimationSettings *)self toBeRemovedScaleAnimationSettings];
  [v4 setResponse:0.550000012];

  v5 = [(SBEntityRemovalMedusaDefaultAnimationSettings *)self toBeRemovedAlphaAnimationSettings];
  [v5 setResponse:0.550000012];

  v6 = SBEntityRemovalDefaultFluidAnimationSettings();
  [(SBEntityRemovalMedusaDefaultAnimationSettings *)self setToBeRemovedAlphaAnimationSettings:v6];

  [(SBEntityRemovalMedusaDefaultAnimationSettings *)self setToBeRemovedFinalScale:1.08000004];
}

@end