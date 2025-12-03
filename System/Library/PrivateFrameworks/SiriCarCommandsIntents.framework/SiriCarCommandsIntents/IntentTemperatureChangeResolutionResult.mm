@interface IntentTemperatureChangeResolutionResult
+ (id)confirmationRequiredWithIntentTemperatureChangeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedIntentTemperatureChange:(int64_t)change;
@end

@implementation IntentTemperatureChangeResolutionResult

+ (id)successWithResolvedIntentTemperatureChange:(int64_t)change
{
  swift_getObjCClassMetadata();
  v4 = static IntentTemperatureChangeResolutionResult.success(with:)(change);

  return v4;
}

+ (id)confirmationRequiredWithIntentTemperatureChangeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static IntentTemperatureChangeResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end