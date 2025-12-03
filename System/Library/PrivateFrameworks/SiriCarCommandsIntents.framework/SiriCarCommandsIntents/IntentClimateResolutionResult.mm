@interface IntentClimateResolutionResult
+ (id)confirmationRequiredWithIntentClimateToConfirm:(int64_t)confirm;
+ (id)successWithResolvedIntentClimate:(int64_t)climate;
@end

@implementation IntentClimateResolutionResult

+ (id)successWithResolvedIntentClimate:(int64_t)climate
{
  swift_getObjCClassMetadata();
  v4 = static IntentClimateResolutionResult.success(with:)(climate);

  return v4;
}

+ (id)confirmationRequiredWithIntentClimateToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static IntentClimateResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end