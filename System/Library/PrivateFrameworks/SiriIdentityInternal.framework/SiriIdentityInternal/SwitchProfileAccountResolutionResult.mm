@interface SwitchProfileAccountResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
@end

@implementation SwitchProfileAccountResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = static SwitchProfileAccountResolutionResult.unsupported(forReason:)(reason);

  return v4;
}

@end