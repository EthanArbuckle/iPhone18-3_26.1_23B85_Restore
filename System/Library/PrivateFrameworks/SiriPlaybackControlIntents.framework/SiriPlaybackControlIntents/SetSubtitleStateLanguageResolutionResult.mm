@interface SetSubtitleStateLanguageResolutionResult
+ (id)unsupportedForReason:(uint64_t)reason;
@end

@implementation SetSubtitleStateLanguageResolutionResult

+ (id)unsupportedForReason:(uint64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = sub_268B17B04(reason);

  return v4;
}

@end