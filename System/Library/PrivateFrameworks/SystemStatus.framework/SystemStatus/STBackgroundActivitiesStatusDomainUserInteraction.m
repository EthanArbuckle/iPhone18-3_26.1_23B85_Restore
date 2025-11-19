@interface STBackgroundActivitiesStatusDomainUserInteraction
- (STBackgroundActivitiesStatusDomainUserInteraction)initWithData:(id)a3;
@end

@implementation STBackgroundActivitiesStatusDomainUserInteraction

- (STBackgroundActivitiesStatusDomainUserInteraction)initWithData:(id)a3
{
  v4.receiver = self;
  v4.super_class = STBackgroundActivitiesStatusDomainUserInteraction;
  return [(STBackgroundActivitiesStatusDomainData *)&v4 initWithData:a3];
}

@end