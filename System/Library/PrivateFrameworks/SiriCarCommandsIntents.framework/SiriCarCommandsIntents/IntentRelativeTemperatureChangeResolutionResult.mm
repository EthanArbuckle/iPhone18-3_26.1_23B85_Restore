@interface IntentRelativeTemperatureChangeResolutionResult
+ (id)confirmationRequiredWithIntentRelativeTemperatureChangeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedIntentRelativeTemperatureChange:(int64_t)change;
@end

@implementation IntentRelativeTemperatureChangeResolutionResult

+ (id)successWithResolvedIntentRelativeTemperatureChange:(int64_t)change
{
  swift_getObjCClassMetadata();
  v4 = static IntentRelativeTemperatureChangeResolutionResult.success(with:)(change);

  return v4;
}

+ (id)confirmationRequiredWithIntentRelativeTemperatureChangeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static IntentRelativeTemperatureChangeResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end