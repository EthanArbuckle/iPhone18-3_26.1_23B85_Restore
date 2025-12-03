@interface ImageTypeResolutionResult
+ (id)confirmationRequiredWithImageTypeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedImageType:(int64_t)type;
@end

@implementation ImageTypeResolutionResult

+ (id)successWithResolvedImageType:(int64_t)type
{
  swift_getObjCClassMetadata();
  v4 = static ImageTypeResolutionResult.success(with:)(type);

  return v4;
}

+ (id)confirmationRequiredWithImageTypeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static ImageTypeResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end