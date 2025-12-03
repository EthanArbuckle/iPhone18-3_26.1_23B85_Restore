@interface TVRSystemAppearanceToggleResolutionResult
+ (id)confirmationRequiredWithSystemAppearanceToggleToConfirm:(int64_t)confirm;
+ (id)successWithResolvedSystemAppearanceToggle:(int64_t)toggle;
@end

@implementation TVRSystemAppearanceToggleResolutionResult

+ (id)successWithResolvedSystemAppearanceToggle:(int64_t)toggle
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TVRSystemAppearanceToggleResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedValue_, toggle);

  return v3;
}

+ (id)confirmationRequiredWithSystemAppearanceToggleToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TVRSystemAppearanceToggleResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithValueToConfirm_, confirm);

  return v3;
}

@end