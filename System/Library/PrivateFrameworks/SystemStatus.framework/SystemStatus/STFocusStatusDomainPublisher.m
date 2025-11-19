@interface STFocusStatusDomainPublisher
+ (id)emptyData;
@end

@implementation STFocusStatusDomainPublisher

+ (id)emptyData
{
  v2 = objc_alloc_init(STFocusStatusDomainData);

  return v2;
}

@end