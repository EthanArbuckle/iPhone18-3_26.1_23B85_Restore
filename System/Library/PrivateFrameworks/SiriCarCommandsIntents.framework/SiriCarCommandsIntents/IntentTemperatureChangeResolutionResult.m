@interface IntentTemperatureChangeResolutionResult
+ (id)confirmationRequiredWithIntentTemperatureChangeToConfirm:(int64_t)a3;
+ (id)successWithResolvedIntentTemperatureChange:(int64_t)a3;
@end

@implementation IntentTemperatureChangeResolutionResult

+ (id)successWithResolvedIntentTemperatureChange:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static IntentTemperatureChangeResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithIntentTemperatureChangeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static IntentTemperatureChangeResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end