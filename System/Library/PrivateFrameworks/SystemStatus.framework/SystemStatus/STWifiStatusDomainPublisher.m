@interface STWifiStatusDomainPublisher
+ (id)emptyData;
@end

@implementation STWifiStatusDomainPublisher

+ (id)emptyData
{
  v2 = objc_alloc_init(STWifiStatusDomainData);

  return v2;
}

@end