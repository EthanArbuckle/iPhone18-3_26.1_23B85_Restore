@interface ContentSortResolutionResult
+ (id)confirmationRequiredWithContentSortToConfirm:(int64_t)confirm;
+ (id)successWithResolvedContentSort:(int64_t)sort;
@end

@implementation ContentSortResolutionResult

+ (id)successWithResolvedContentSort:(int64_t)sort
{
  swift_getObjCClassMetadata();
  v4 = static ContentSortResolutionResult.success(with:)(sort);

  return v4;
}

+ (id)confirmationRequiredWithContentSortToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static ContentSortResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end