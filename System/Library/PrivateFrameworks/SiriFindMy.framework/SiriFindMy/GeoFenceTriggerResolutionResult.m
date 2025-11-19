@interface GeoFenceTriggerResolutionResult
+ (id)confirmationRequiredWithGeoFenceTriggerToConfirm:(int64_t)a3;
+ (id)successWithResolvedGeoFenceTrigger:(int64_t)a3;
@end

@implementation GeoFenceTriggerResolutionResult

+ (id)successWithResolvedGeoFenceTrigger:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_266DA26D4(a3);

  return v4;
}

+ (id)confirmationRequiredWithGeoFenceTriggerToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_266DA2760(a3);

  return v4;
}

@end