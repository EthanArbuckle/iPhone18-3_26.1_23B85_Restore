@interface STLocationStatusDomainUserInteraction
- (STLocationStatusDomainUserInteraction)initWithData:(id)data;
@end

@implementation STLocationStatusDomainUserInteraction

- (STLocationStatusDomainUserInteraction)initWithData:(id)data
{
  v4.receiver = self;
  v4.super_class = STLocationStatusDomainUserInteraction;
  return [(STLocationStatusDomainData *)&v4 initWithData:data];
}

@end