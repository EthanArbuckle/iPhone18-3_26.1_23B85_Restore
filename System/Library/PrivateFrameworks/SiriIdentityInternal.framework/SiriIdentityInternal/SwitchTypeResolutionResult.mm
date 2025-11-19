@interface SwitchTypeResolutionResult
+ (id)confirmationRequiredWithSwitchTypeToConfirm:(int64_t)a3;
+ (id)successWithResolvedSwitchType:(int64_t)a3;
@end

@implementation SwitchTypeResolutionResult

+ (id)successWithResolvedSwitchType:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static SwitchTypeResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithSwitchTypeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static SwitchTypeResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end