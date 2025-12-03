@interface GeoFenceActionResolutionResult
+ (id)confirmationRequiredWithGeoFenceActionToConfirm:(int64_t)confirm;
+ (id)successWithResolvedGeoFenceAction:(int64_t)action;
@end

@implementation GeoFenceActionResolutionResult

+ (id)successWithResolvedGeoFenceAction:(int64_t)action
{
  swift_getObjCClassMetadata();
  v4 = sub_266DA26D4(action);

  return v4;
}

+ (id)confirmationRequiredWithGeoFenceActionToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_266DA2760(confirm);

  return v4;
}

@end