@interface SwitchTypeResolutionResult
+ (id)confirmationRequiredWithSwitchTypeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedSwitchType:(int64_t)type;
@end

@implementation SwitchTypeResolutionResult

+ (id)successWithResolvedSwitchType:(int64_t)type
{
  swift_getObjCClassMetadata();
  v4 = static SwitchTypeResolutionResult.success(with:)(type);

  return v4;
}

+ (id)confirmationRequiredWithSwitchTypeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static SwitchTypeResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end