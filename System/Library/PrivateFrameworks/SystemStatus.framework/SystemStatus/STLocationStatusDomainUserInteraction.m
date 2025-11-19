@interface STLocationStatusDomainUserInteraction
- (STLocationStatusDomainUserInteraction)initWithData:(id)a3;
@end

@implementation STLocationStatusDomainUserInteraction

- (STLocationStatusDomainUserInteraction)initWithData:(id)a3
{
  v4.receiver = self;
  v4.super_class = STLocationStatusDomainUserInteraction;
  return [(STLocationStatusDomainData *)&v4 initWithData:a3];
}

@end