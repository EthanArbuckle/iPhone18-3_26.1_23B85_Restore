@interface TVRMediaCommandResolutionResult
+ (id)confirmationRequiredWithMediaCommandToConfirm:(int64_t)a3;
+ (id)successWithResolvedMediaCommand:(int64_t)a3;
@end

@implementation TVRMediaCommandResolutionResult

+ (id)successWithResolvedMediaCommand:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TVRMediaCommandResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedValue_, a3);

  return v3;
}

+ (id)confirmationRequiredWithMediaCommandToConfirm:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TVRMediaCommandResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithValueToConfirm_, a3);

  return v3;
}

@end