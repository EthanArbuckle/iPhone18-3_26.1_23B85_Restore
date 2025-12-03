@interface IntentSeatTypeResolutionResult
+ (id)confirmationRequiredWithIntentSeatTypeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedIntentSeatType:(int64_t)type;
@end

@implementation IntentSeatTypeResolutionResult

+ (id)successWithResolvedIntentSeatType:(int64_t)type
{
  swift_getObjCClassMetadata();
  v4 = static IntentSeatTypeResolutionResult.success(with:)(type);

  return v4;
}

+ (id)confirmationRequiredWithIntentSeatTypeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static IntentSeatTypeResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end