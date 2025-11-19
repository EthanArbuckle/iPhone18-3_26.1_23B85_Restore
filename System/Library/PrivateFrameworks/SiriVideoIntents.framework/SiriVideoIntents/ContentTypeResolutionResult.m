@interface ContentTypeResolutionResult
+ (id)confirmationRequiredWithContentTypeToConfirm:(int64_t)a3;
+ (id)successWithResolvedContentType:(int64_t)a3;
@end

@implementation ContentTypeResolutionResult

+ (id)successWithResolvedContentType:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static ContentTypeResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithContentTypeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static ContentTypeResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end