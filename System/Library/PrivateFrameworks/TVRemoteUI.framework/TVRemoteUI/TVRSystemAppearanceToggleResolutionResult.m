@interface TVRSystemAppearanceToggleResolutionResult
+ (id)confirmationRequiredWithSystemAppearanceToggleToConfirm:(int64_t)a3;
+ (id)successWithResolvedSystemAppearanceToggle:(int64_t)a3;
@end

@implementation TVRSystemAppearanceToggleResolutionResult

+ (id)successWithResolvedSystemAppearanceToggle:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TVRSystemAppearanceToggleResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedValue_, a3);

  return v3;
}

+ (id)confirmationRequiredWithSystemAppearanceToggleToConfirm:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TVRSystemAppearanceToggleResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithValueToConfirm_, a3);

  return v3;
}

@end