@interface IntentExtremeTemperatureChangeResolutionResult
+ (id)confirmationRequiredWithIntentExtremeTemperatureChangeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedIntentExtremeTemperatureChange:(int64_t)change;
@end

@implementation IntentExtremeTemperatureChangeResolutionResult

+ (id)successWithResolvedIntentExtremeTemperatureChange:(int64_t)change
{
  swift_getObjCClassMetadata();
  v4 = static IntentExtremeTemperatureChangeResolutionResult.success(with:)(change);

  return v4;
}

+ (id)confirmationRequiredWithIntentExtremeTemperatureChangeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static IntentExtremeTemperatureChangeResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end