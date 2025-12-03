@interface TVRSkipCommandResolutionResult
+ (id)confirmationRequiredWithSkipCommandToConfirm:(int64_t)confirm;
+ (id)successWithResolvedSkipCommand:(int64_t)command;
@end

@implementation TVRSkipCommandResolutionResult

+ (id)successWithResolvedSkipCommand:(int64_t)command
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TVRSkipCommandResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedValue_, command);

  return v3;
}

+ (id)confirmationRequiredWithSkipCommandToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TVRSkipCommandResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithValueToConfirm_, confirm);

  return v3;
}

@end