@interface STStatusBarDataAdditionsStatusDomainPublisher
+ (id)emptyData;
@end

@implementation STStatusBarDataAdditionsStatusDomainPublisher

+ (id)emptyData
{
  v2 = objc_alloc_init(STStatusBarDataAdditionsStatusDomainData);

  return v2;
}

@end