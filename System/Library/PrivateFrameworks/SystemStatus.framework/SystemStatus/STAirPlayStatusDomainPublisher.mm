@interface STAirPlayStatusDomainPublisher
+ (id)emptyData;
@end

@implementation STAirPlayStatusDomainPublisher

+ (id)emptyData
{
  v2 = objc_alloc_init(STAirPlayStatusDomainData);

  return v2;
}

@end