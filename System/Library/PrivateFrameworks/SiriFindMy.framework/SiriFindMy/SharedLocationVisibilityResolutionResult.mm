@interface SharedLocationVisibilityResolutionResult
+ (id)confirmationRequiredWithSharedLocationVisibilityToConfirm:(int64_t)a3;
+ (id)successWithResolvedSharedLocationVisibility:(int64_t)a3;
@end

@implementation SharedLocationVisibilityResolutionResult

+ (id)successWithResolvedSharedLocationVisibility:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_266DA26D4(a3);

  return v4;
}

+ (id)confirmationRequiredWithSharedLocationVisibilityToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_266DA2760(a3);

  return v4;
}

@end