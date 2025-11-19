@interface SBFFluidBehaviorSettings(HintCustomization)
- (uint64_t)_setDefaultButtonHintGeometryFastValues;
@end

@implementation SBFFluidBehaviorSettings(HintCustomization)

- (uint64_t)_setDefaultButtonHintGeometryFastValues
{
  [a1 setBehaviorType:2];
  [a1 setDampingRatio:0.7];
  [a1 setResponse:0.3];
  v4 = CAFrameRateRangeMake(80.0, 120.0, 120.0);

  return [a1 setFrameRateRange:1114149 highFrameRateReason:{*&v4.minimum, *&v4.maximum, *&v4.preferred}];
}

@end