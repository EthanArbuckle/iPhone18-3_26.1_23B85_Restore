@interface SharedLocationVisibilityResolutionResult
+ (id)confirmationRequiredWithSharedLocationVisibilityToConfirm:(int64_t)confirm;
+ (id)successWithResolvedSharedLocationVisibility:(int64_t)visibility;
@end

@implementation SharedLocationVisibilityResolutionResult

+ (id)successWithResolvedSharedLocationVisibility:(int64_t)visibility
{
  swift_getObjCClassMetadata();
  v4 = sub_266DA26D4(visibility);

  return v4;
}

+ (id)confirmationRequiredWithSharedLocationVisibilityToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_266DA2760(confirm);

  return v4;
}

@end