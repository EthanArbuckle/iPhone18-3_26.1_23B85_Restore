@interface ContentTypeResolutionResult
+ (id)confirmationRequiredWithContentTypeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedContentType:(int64_t)type;
@end

@implementation ContentTypeResolutionResult

+ (id)successWithResolvedContentType:(int64_t)type
{
  swift_getObjCClassMetadata();
  v4 = static ContentTypeResolutionResult.success(with:)(type);

  return v4;
}

+ (id)confirmationRequiredWithContentTypeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static ContentTypeResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end