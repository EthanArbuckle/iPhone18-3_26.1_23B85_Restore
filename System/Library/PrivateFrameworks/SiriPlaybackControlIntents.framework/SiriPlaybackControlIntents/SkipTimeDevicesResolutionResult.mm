@interface SkipTimeDevicesResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
@end

@implementation SkipTimeDevicesResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = sub_268B17B04(reason);

  return v4;
}

@end