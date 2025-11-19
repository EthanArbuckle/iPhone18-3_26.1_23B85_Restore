@interface STPlaygroundsStatusDomainPublisher
+ (id)emptyData;
@end

@implementation STPlaygroundsStatusDomainPublisher

+ (id)emptyData
{
  v2 = objc_alloc_init(STPlaygroundsStatusDomainData);

  return v2;
}

@end