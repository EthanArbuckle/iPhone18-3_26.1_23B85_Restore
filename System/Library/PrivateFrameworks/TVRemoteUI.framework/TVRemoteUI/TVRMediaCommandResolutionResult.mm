@interface TVRMediaCommandResolutionResult
+ (id)confirmationRequiredWithMediaCommandToConfirm:(int64_t)confirm;
+ (id)successWithResolvedMediaCommand:(int64_t)command;
@end

@implementation TVRMediaCommandResolutionResult

+ (id)successWithResolvedMediaCommand:(int64_t)command
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TVRMediaCommandResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedValue_, command);

  return v3;
}

+ (id)confirmationRequiredWithMediaCommandToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TVRMediaCommandResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithValueToConfirm_, confirm);

  return v3;
}

@end