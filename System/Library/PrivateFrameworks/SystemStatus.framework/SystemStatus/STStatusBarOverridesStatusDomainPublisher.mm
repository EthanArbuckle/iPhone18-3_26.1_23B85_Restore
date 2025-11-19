@interface STStatusBarOverridesStatusDomainPublisher
+ (id)emptyData;
@end

@implementation STStatusBarOverridesStatusDomainPublisher

+ (id)emptyData
{
  v2 = objc_alloc_init(STStatusBarOverridesStatusDomainData);

  return v2;
}

@end