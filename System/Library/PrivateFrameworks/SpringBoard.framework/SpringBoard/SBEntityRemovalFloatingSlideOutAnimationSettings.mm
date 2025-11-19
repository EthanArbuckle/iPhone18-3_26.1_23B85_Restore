@interface SBEntityRemovalFloatingSlideOutAnimationSettings
- (void)setDefaultValues;
@end

@implementation SBEntityRemovalFloatingSlideOutAnimationSettings

- (void)setDefaultValues
{
  v15.receiver = self;
  v15.super_class = SBEntityRemovalFloatingSlideOutAnimationSettings;
  [(SBEntityRemovalMedusaSlideOutAnimationSettings *)&v15 setDefaultValues];
  v3 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  v4 = [v3 toBeRemovedScaleAnimationSettings];
  [v4 setDampingRatio:1.0];

  v5 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  v6 = [v5 toBeRemovedScaleAnimationSettings];
  [v6 setResponse:0.800000012];

  v7 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  v8 = [v7 toBeRemovedScaleAnimationSettings];
  [v8 setTrackingDampingRatio:0.860000014];

  v9 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  v10 = [v9 toBeRemovedScaleAnimationSettings];
  [v10 setTrackingResponse:0.150000006];

  v11 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  [v11 setToBeRemovedFinalScale:1.0];

  v12 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  [v12 setToBeRemovedFinalAlpha:1.0];

  v13 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  [v13 setToBeRemovedFinalBlurRadius:0.0];

  v14 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self toBeRemovedSlideOutAnimationSettings];
  [v14 setResponse:0.61500001];

  [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self setToBeRemovedSlideOutAnimationDelay:0.270000011];
}

@end