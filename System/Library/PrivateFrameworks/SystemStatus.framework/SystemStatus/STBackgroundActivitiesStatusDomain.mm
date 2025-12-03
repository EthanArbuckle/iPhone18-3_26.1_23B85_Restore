@interface STBackgroundActivitiesStatusDomain
- (void)observeData:(id)data;
@end

@implementation STBackgroundActivitiesStatusDomain

- (void)observeData:(id)data
{
  v3.receiver = self;
  v3.super_class = STBackgroundActivitiesStatusDomain;
  [(STStatusDomain *)&v3 observeData:data];
}

@end