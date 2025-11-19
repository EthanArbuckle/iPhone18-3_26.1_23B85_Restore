@interface IntentTrunkStatusResolutionResult
+ (id)confirmationRequiredWithIntentTrunkStatusToConfirm:(int64_t)a3;
+ (id)successWithResolvedIntentTrunkStatus:(int64_t)a3;
@end

@implementation IntentTrunkStatusResolutionResult

+ (id)successWithResolvedIntentTrunkStatus:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static IntentTrunkStatusResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithIntentTrunkStatusToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static IntentTrunkStatusResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end