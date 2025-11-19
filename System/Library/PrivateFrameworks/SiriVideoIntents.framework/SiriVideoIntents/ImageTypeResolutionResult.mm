@interface ImageTypeResolutionResult
+ (id)confirmationRequiredWithImageTypeToConfirm:(int64_t)a3;
+ (id)successWithResolvedImageType:(int64_t)a3;
@end

@implementation ImageTypeResolutionResult

+ (id)successWithResolvedImageType:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static ImageTypeResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithImageTypeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static ImageTypeResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end