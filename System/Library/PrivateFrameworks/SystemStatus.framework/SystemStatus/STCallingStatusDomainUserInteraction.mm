@interface STCallingStatusDomainUserInteraction
- (STCallingStatusDomainUserInteraction)initWithData:(id)data;
@end

@implementation STCallingStatusDomainUserInteraction

- (STCallingStatusDomainUserInteraction)initWithData:(id)data
{
  v4.receiver = self;
  v4.super_class = STCallingStatusDomainUserInteraction;
  return [(STCallingStatusDomainData *)&v4 initWithData:data];
}

@end