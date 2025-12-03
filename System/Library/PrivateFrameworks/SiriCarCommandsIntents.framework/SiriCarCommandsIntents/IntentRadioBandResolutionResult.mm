@interface IntentRadioBandResolutionResult
+ (id)confirmationRequiredWithIntentRadioBandToConfirm:(int64_t)confirm;
+ (id)successWithResolvedIntentRadioBand:(int64_t)band;
@end

@implementation IntentRadioBandResolutionResult

+ (id)successWithResolvedIntentRadioBand:(int64_t)band
{
  swift_getObjCClassMetadata();
  v4 = static IntentRadioBandResolutionResult.success(with:)(band);

  return v4;
}

+ (id)confirmationRequiredWithIntentRadioBandToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static IntentRadioBandResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end