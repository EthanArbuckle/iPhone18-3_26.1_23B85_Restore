@interface GetContactSiriMatchesResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
@end

@implementation GetContactSiriMatchesResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = static GetContactSiriMatchesResolutionResult.unsupported(forReason:)(reason);

  return v4;
}

@end