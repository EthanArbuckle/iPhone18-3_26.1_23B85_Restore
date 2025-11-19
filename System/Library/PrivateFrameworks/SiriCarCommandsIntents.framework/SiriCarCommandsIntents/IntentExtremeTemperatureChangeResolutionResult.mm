@interface IntentExtremeTemperatureChangeResolutionResult
+ (id)confirmationRequiredWithIntentExtremeTemperatureChangeToConfirm:(int64_t)a3;
+ (id)successWithResolvedIntentExtremeTemperatureChange:(int64_t)a3;
@end

@implementation IntentExtremeTemperatureChangeResolutionResult

+ (id)successWithResolvedIntentExtremeTemperatureChange:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static IntentExtremeTemperatureChangeResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithIntentExtremeTemperatureChangeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static IntentExtremeTemperatureChangeResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end