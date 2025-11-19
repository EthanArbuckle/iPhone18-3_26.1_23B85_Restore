@interface NLMediaTypeResolutionResult
+ (id)confirmationRequiredWithNLMediaTypeToConfirm:(int64_t)a3;
+ (id)successWithResolvedNLMediaType:(int64_t)a3;
@end

@implementation NLMediaTypeResolutionResult

+ (id)successWithResolvedNLMediaType:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(a3);

  return v4;
}

+ (id)confirmationRequiredWithNLMediaTypeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(a3);

  return v4;
}

@end