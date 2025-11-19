@interface STDataAccessStatusDomainPublisher
+ (id)emptyData;
@end

@implementation STDataAccessStatusDomainPublisher

+ (id)emptyData
{
  v2 = objc_alloc_init(STDataAccessStatusDomainData);

  return v2;
}

@end