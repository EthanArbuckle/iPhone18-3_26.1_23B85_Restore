@interface IntentSeatTypeResolutionResult
+ (id)confirmationRequiredWithIntentSeatTypeToConfirm:(int64_t)a3;
+ (id)successWithResolvedIntentSeatType:(int64_t)a3;
@end

@implementation IntentSeatTypeResolutionResult

+ (id)successWithResolvedIntentSeatType:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static IntentSeatTypeResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithIntentSeatTypeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static IntentSeatTypeResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end