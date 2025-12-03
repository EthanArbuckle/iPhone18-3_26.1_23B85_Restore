@interface SkipContentSkipDurationResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
@end

@implementation SkipContentSkipDurationResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___SkipContentSkipDurationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_unsupportedWithReason_, reason);

  return v3;
}

@end