@interface SkipContentSkipDurationResolutionResult
+ (id)unsupportedForReason:(int64_t)a3;
@end

@implementation SkipContentSkipDurationResolutionResult

+ (id)unsupportedForReason:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___SkipContentSkipDurationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_unsupportedWithReason_, a3);

  return v3;
}

@end