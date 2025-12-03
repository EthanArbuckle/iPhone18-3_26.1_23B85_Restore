@interface PlayVideoContentResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
@end

@implementation PlayVideoContentResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = static PlayVideoContentResolutionResult.unsupported(forReason:)(reason);

  return v4;
}

@end