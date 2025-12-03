@interface GetContactAttributeContactAttributeToGetResolutionResult
+ (id)unsupportedForReason:(uint64_t)reason;
@end

@implementation GetContactAttributeContactAttributeToGetResolutionResult

+ (id)unsupportedForReason:(uint64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = static GetContactSiriMatchesResolutionResult.unsupported(forReason:)(reason);

  return v4;
}

@end