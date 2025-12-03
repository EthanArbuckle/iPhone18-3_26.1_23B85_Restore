@interface GeoFenceTriggerResolutionResult
+ (id)confirmationRequiredWithGeoFenceTriggerToConfirm:(int64_t)confirm;
+ (id)successWithResolvedGeoFenceTrigger:(int64_t)trigger;
@end

@implementation GeoFenceTriggerResolutionResult

+ (id)successWithResolvedGeoFenceTrigger:(int64_t)trigger
{
  swift_getObjCClassMetadata();
  v4 = sub_266DA26D4(trigger);

  return v4;
}

+ (id)confirmationRequiredWithGeoFenceTriggerToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_266DA2760(confirm);

  return v4;
}

@end