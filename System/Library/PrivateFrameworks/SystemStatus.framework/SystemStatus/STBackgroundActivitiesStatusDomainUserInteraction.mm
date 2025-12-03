@interface STBackgroundActivitiesStatusDomainUserInteraction
- (STBackgroundActivitiesStatusDomainUserInteraction)initWithData:(id)data;
@end

@implementation STBackgroundActivitiesStatusDomainUserInteraction

- (STBackgroundActivitiesStatusDomainUserInteraction)initWithData:(id)data
{
  v4.receiver = self;
  v4.super_class = STBackgroundActivitiesStatusDomainUserInteraction;
  return [(STBackgroundActivitiesStatusDomainData *)&v4 initWithData:data];
}

@end