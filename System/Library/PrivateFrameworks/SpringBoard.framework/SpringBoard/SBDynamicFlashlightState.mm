@interface SBDynamicFlashlightState
+ (id)offState;
+ (id)onStateWithInitialIntensity:(double)intensity width:(double)width;
+ (id)unavailableState;
@end

@implementation SBDynamicFlashlightState

+ (id)onStateWithInitialIntensity:(double)intensity width:(double)width
{
  v4 = [[SBDynamicFlashlightStateOn alloc] initWithInitialIntensity:intensity width:width];

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