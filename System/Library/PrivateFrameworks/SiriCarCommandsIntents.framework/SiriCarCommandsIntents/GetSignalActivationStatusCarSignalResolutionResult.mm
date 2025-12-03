@interface GetSignalActivationStatusCarSignalResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
@end

@implementation GetSignalActivationStatusCarSignalResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = static GetSignalActivationStatusCarSignalResolutionResult.unsupported(forReason:)(reason);

  return v4;
}

@end