@interface IntentTrunkStatusResolutionResult
+ (id)confirmationRequiredWithIntentTrunkStatusToConfirm:(int64_t)confirm;
+ (id)successWithResolvedIntentTrunkStatus:(int64_t)status;
@end

@implementation IntentTrunkStatusResolutionResult

+ (id)successWithResolvedIntentTrunkStatus:(int64_t)status
{
  swift_getObjCClassMetadata();
  v4 = static IntentTrunkStatusResolutionResult.success(with:)(status);

  return v4;
}

+ (id)confirmationRequiredWithIntentTrunkStatusToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static IntentTrunkStatusResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end