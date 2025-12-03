@interface SBEntityRemovalFloatingSlideOutAnimationSettings
- (void)setDefaultValues;
@end

@implementation SBEntityRemovalFloatingSlideOutAnimationSettings

- (void)setDefaultValues
{
  v15.receiver = self;
  v15.super_class = SBEntityRemovalFloatingSlideOutAnimationSettings;
  [(SBEntityRemovalMedusaSlideOutAnimationSettings *)&v15 setDefaultValues];
  defaultAnimationSettings = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  toBeRemovedScaleAnimationSettings = [defaultAnimationSettings toBeRemovedScaleAnimationSettings];
  [toBeRemovedScaleAnimationSettings setDampingRatio:1.0];

  defaultAnimationSettings2 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  toBeRemovedScaleAnimationSettings2 = [defaultAnimationSettings2 toBeRemovedScaleAnimationSettings];
  [toBeRemovedScaleAnimationSettings2 setResponse:0.800000012];

  defaultAnimationSettings3 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  toBeRemovedScaleAnimationSettings3 = [defaultAnimationSettings3 toBeRemovedScaleAnimationSettings];
  [toBeRemovedScaleAnimationSettings3 setTrackingDampingRatio:0.860000014];

  defaultAnimationSettings4 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  toBeRemovedScaleAnimationSettings4 = [defaultAnimationSettings4 toBeRemovedScaleAnimationSettings];
  [toBeRemovedScaleAnimationSettings4 setTrackingResponse:0.150000006];

  defaultAnimationSettings5 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  [defaultAnimationSettings5 setToBeRemovedFinalScale:1.0];

  defaultAnimationSettings6 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  [defaultAnimationSettings6 setToBeRemovedFinalAlpha:1.0];

  defaultAnimationSettings7 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  [defaultAnimationSettings7 setToBeRemovedFinalBlurRadius:0.0];

  toBeRemovedSlideOutAnimationSettings = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self toBeRemovedSlideOutAnimationSettings];
  [toBeRemovedSlideOutAnimationSettings setResponse:0.61500001];

  [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self setToBeRemovedSlideOutAnimationDelay:0.270000011];
}

@end