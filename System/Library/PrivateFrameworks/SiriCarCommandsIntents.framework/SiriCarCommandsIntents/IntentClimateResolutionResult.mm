@interface IntentClimateResolutionResult
+ (id)confirmationRequiredWithIntentClimateToConfirm:(int64_t)a3;
+ (id)successWithResolvedIntentClimate:(int64_t)a3;
@end

@implementation IntentClimateResolutionResult

+ (id)successWithResolvedIntentClimate:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static IntentClimateResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithIntentClimateToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static IntentClimateResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end