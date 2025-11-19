@interface STStatusItemsStatusDomainUserInteraction
- (STStatusItemsStatusDomainUserInteraction)initWithData:(id)a3;
@end

@implementation STStatusItemsStatusDomainUserInteraction

- (STStatusItemsStatusDomainUserInteraction)initWithData:(id)a3
{
  v4.receiver = self;
  v4.super_class = STStatusItemsStatusDomainUserInteraction;
  return [(STStatusItemsStatusDomainData *)&v4 initWithData:a3];
}

@end