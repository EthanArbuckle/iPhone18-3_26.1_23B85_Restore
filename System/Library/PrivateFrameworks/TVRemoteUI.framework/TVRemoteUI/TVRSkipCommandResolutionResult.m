@interface TVRSkipCommandResolutionResult
+ (id)confirmationRequiredWithSkipCommandToConfirm:(int64_t)a3;
+ (id)successWithResolvedSkipCommand:(int64_t)a3;
@end

@implementation TVRSkipCommandResolutionResult

+ (id)successWithResolvedSkipCommand:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TVRSkipCommandResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedValue_, a3);

  return v3;
}

+ (id)confirmationRequiredWithSkipCommandToConfirm:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TVRSkipCommandResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithValueToConfirm_, a3);

  return v3;
}

@end