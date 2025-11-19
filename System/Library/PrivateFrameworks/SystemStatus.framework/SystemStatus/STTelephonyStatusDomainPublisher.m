@interface STTelephonyStatusDomainPublisher
+ (id)emptyData;
@end

@implementation STTelephonyStatusDomainPublisher

+ (id)emptyData
{
  v2 = objc_alloc_init(STTelephonyStatusDomainData);

  return v2;
}

@end