@interface IntentRadioBandResolutionResult
+ (id)confirmationRequiredWithIntentRadioBandToConfirm:(int64_t)a3;
+ (id)successWithResolvedIntentRadioBand:(int64_t)a3;
@end

@implementation IntentRadioBandResolutionResult

+ (id)successWithResolvedIntentRadioBand:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static IntentRadioBandResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithIntentRadioBandToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static IntentRadioBandResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end