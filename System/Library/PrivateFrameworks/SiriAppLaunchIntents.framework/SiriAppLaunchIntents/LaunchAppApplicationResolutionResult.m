@interface LaunchAppApplicationResolutionResult
+ (id)unsupportedForReason:(int64_t)a3;
@end

@implementation LaunchAppApplicationResolutionResult

+ (id)unsupportedForReason:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static LaunchAppApplicationResolutionResult.unsupported(forReason:)(a3);

  return v4;
}

@end