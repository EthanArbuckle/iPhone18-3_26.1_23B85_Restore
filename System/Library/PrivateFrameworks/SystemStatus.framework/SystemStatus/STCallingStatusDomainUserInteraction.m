@interface STCallingStatusDomainUserInteraction
- (STCallingStatusDomainUserInteraction)initWithData:(id)a3;
@end

@implementation STCallingStatusDomainUserInteraction

- (STCallingStatusDomainUserInteraction)initWithData:(id)a3
{
  v4.receiver = self;
  v4.super_class = STCallingStatusDomainUserInteraction;
  return [(STCallingStatusDomainData *)&v4 initWithData:a3];
}

@end