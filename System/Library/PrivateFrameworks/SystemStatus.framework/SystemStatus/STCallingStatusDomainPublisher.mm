@interface STCallingStatusDomainPublisher
+ (id)emptyData;
@end

@implementation STCallingStatusDomainPublisher

+ (id)emptyData
{
  v2 = objc_alloc_init(STCallingStatusDomainData);

  return v2;
}

@end