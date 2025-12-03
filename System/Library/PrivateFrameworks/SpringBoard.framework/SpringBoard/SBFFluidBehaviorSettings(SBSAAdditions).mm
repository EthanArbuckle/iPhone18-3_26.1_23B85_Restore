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
  [self deceleration];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [self dampingRatio];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [self response];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [self trackingDampingRatio];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [self trackingResponse];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [self retargetImpulse];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [self trackingRetargetImpulse];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [self dampingRatioSmoothing];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [self responseSmoothing];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [self trackingDampingRatioSmoothing];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [self trackingResponseSmoothing];

  return BSFloatIsZero();
}

@end