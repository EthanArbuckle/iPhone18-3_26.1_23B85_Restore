@interface SBFFluidBehaviorSettings(SBSAAdditions)
+ (id)unanimatedBehaviorSettings;
- (uint64_t)isUnanimated;
@end

@implementation SBFFluidBehaviorSettings(SBSAAdditions)

+ (id)unanimatedBehaviorSettings
{
  v0 = objc_alloc_init(MEMORY[0x277D65E60]);
  [v0 setName:@"Unanimated"];
  [v0 setDefaultValues];
  [v0 setDeceleration:0.0];
  [v0 setDampingRatio:0.0];
  [v0 setResponse:0.0];
  [v0 setTrackingDampingRatio:0.0];
  [v0 setTrackingResponse:0.0];
  [v0 setRetargetImpulse:0.0];
  [v0 setTrackingRetargetImpulse:0.0];
  [v0 setDampingRatioSmoothing:0.0];
  [v0 setResponseSmoothing:0.0];
  [v0 setTrackingDampingRatioSmoothing:0.0];
  [v0 setTrackingResponseSmoothing:0.0];

  return v0;
}

- (uint64_t)isUnanimated
{
  [a1 deceleration];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [a1 dampingRatio];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [a1 response];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [a1 trackingDampingRatio];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [a1 trackingResponse];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [a1 retargetImpulse];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [a1 trackingRetargetImpulse];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [a1 dampingRatioSmoothing];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [a1 responseSmoothing];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [a1 trackingDampingRatioSmoothing];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [a1 trackingResponseSmoothing];

  return BSFloatIsZero();
}

@end