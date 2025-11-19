@interface IntentRelativeTemperatureChangeResolutionResult
+ (id)confirmationRequiredWithIntentRelativeTemperatureChangeToConfirm:(int64_t)a3;
+ (id)successWithResolvedIntentRelativeTemperatureChange:(int64_t)a3;
@end

@implementation IntentRelativeTemperatureChangeResolutionResult

+ (id)successWithResolvedIntentRelativeTemperatureChange:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static IntentRelativeTemperatureChangeResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithIntentRelativeTemperatureChangeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static IntentRelativeTemperatureChangeResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end