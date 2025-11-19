@interface Int:
- (uint64_t)TNUIAnalyticsEvent.Payload;
@end

@implementation Int:

- (uint64_t)TNUIAnalyticsEvent.Payload
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMd, &_sSDySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

@end