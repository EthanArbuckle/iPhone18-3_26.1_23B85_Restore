@interface SetGeoFenceLocationResolutionResult
+ (id)unsupportedForReason:(uint64_t)reason;
@end

@implementation SetGeoFenceLocationResolutionResult

+ (id)unsupportedForReason:(uint64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = sub_266D9F49C(reason);

  return v4;
}

@end