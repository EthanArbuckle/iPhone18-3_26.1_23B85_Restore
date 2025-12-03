@interface CloseAppApplicationResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
@end

@implementation CloseAppApplicationResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = static CloseAppApplicationResolutionResult.unsupported(forReason:)(reason);

  return v4;
}

@end