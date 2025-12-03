@interface UserIdentifyIdentityResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
@end

@implementation UserIdentifyIdentityResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = static UserIdentifyIdentityResolutionResult.unsupported(forReason:)(reason);

  return v4;
}

@end