@interface CloseAppApplicationResolutionResult
+ (id)unsupportedForReason:(int64_t)a3;
@end

@implementation CloseAppApplicationResolutionResult

+ (id)unsupportedForReason:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static CloseAppApplicationResolutionResult.unsupported(forReason:)(a3);

  return v4;
}

@end