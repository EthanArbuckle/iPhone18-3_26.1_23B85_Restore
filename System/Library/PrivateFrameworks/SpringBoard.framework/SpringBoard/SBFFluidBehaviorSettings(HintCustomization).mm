@interface SBFFluidBehaviorSettings(HintCustomization)
- (uint64_t)_setDefaultButtonHintGeometryFastValues;
@end

@implementation SBFFluidBehaviorSettings(HintCustomization)

- (uint64_t)_setDefaultButtonHintGeometryFastValues
{
  [self setBehaviorType:2];
  [self setDampingRatio:0.7];
  [self setResponse:0.3];
  v4 = CAFrameRateRangeMake(80.0, 120.0, 120.0);

  return [self setFrameRateRange:1114149 highFrameRateReason:{*&v4.minimum, *&v4.maximum, *&v4.preferred}];
}

@end