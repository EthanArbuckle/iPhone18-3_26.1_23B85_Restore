@interface STVoiceControlStatusDomainPublisher
+ (id)emptyData;
@end

@implementation STVoiceControlStatusDomainPublisher

+ (id)emptyData
{
  v2 = objc_alloc_init(STVoiceControlStatusDomainData);

  return v2;
}

@end