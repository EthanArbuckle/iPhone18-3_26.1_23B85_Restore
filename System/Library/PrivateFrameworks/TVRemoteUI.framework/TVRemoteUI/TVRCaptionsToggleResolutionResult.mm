@interface TVRCaptionsToggleResolutionResult
+ (id)confirmationRequiredWithCaptionsToggleToConfirm:(int64_t)confirm;
+ (id)successWithResolvedCaptionsToggle:(int64_t)toggle;
@end

@implementation TVRCaptionsToggleResolutionResult

+ (id)successWithResolvedCaptionsToggle:(int64_t)toggle
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TVRCaptionsToggleResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedValue_, toggle);

  return v3;
}

+ (id)confirmationRequiredWithCaptionsToggleToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TVRCaptionsToggleResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithValueToConfirm_, confirm);

  return v3;
}

@end