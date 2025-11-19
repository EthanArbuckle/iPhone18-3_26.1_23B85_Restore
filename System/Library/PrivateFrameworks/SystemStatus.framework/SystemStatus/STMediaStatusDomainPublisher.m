@interface STMediaStatusDomainPublisher
+ (id)emptyData;
@end

@implementation STMediaStatusDomainPublisher

+ (id)emptyData
{
  v2 = objc_alloc_init(STMediaStatusDomainData);

  return v2;
}

@end