@interface LaunchAppApplicationResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
@end

@implementation LaunchAppApplicationResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = static LaunchAppApplicationResolutionResult.unsupported(forReason:)(reason);

  return v4;
}

@end