@interface DeactivateSignalCarSignalResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
@end

@implementation DeactivateSignalCarSignalResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = static DeactivateSignalCarSignalResolutionResult.unsupported(forReason:)(reason);

  return v4;
}

@end