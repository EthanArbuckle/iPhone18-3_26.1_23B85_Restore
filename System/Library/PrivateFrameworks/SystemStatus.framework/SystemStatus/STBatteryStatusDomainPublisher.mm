@interface STBatteryStatusDomainPublisher
+ (id)emptyData;
@end

@implementation STBatteryStatusDomainPublisher

+ (id)emptyData
{
  v2 = objc_alloc_init(STBatteryStatusDomainData);

  return v2;
}

@end