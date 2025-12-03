@interface STStatusItemsStatusDomainUserInteraction
- (STStatusItemsStatusDomainUserInteraction)initWithData:(id)data;
@end

@implementation STStatusItemsStatusDomainUserInteraction

- (STStatusItemsStatusDomainUserInteraction)initWithData:(id)data
{
  v4.receiver = self;
  v4.super_class = STStatusItemsStatusDomainUserInteraction;
  return [(STStatusItemsStatusDomainData *)&v4 initWithData:data];
}

@end