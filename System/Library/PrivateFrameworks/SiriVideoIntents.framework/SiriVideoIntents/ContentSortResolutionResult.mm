@interface ContentSortResolutionResult
+ (id)confirmationRequiredWithContentSortToConfirm:(int64_t)a3;
+ (id)successWithResolvedContentSort:(int64_t)a3;
@end

@implementation ContentSortResolutionResult

+ (id)successWithResolvedContentSort:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static ContentSortResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithContentSortToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static ContentSortResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end