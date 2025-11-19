@interface STStewieStatusDomainPublisher
+ (id)emptyData;
@end

@implementation STStewieStatusDomainPublisher

+ (id)emptyData
{
  v2 = objc_alloc_init(STStewieStatusDomainData);

  return v2;
}

@end