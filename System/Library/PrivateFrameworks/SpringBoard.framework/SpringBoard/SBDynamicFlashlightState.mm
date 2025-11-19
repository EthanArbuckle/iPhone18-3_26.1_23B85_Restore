@interface SBDynamicFlashlightState
+ (id)offState;
+ (id)onStateWithInitialIntensity:(double)a3 width:(double)a4;
+ (id)unavailableState;
@end

@implementation SBDynamicFlashlightState

+ (id)onStateWithInitialIntensity:(double)a3 width:(double)a4
{
  v4 = [[SBDynamicFlashlightStateOn alloc] initWithInitialIntensity:a3 width:a4];

  return v4;
}

+ (id)offState
{
  v2 = objc_alloc_init(SBDynamicFlashlightStateOff);

  return v2;
}

+ (id)unavailableState
{
  v2 = objc_alloc_init(SBDynamicFlashlightStateUnavailable);

  return v2;
}

@end