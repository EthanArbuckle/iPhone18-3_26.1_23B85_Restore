@interface STBackgroundActivitiesStatusDomain
- (void)observeData:(id)a3;
@end

@implementation STBackgroundActivitiesStatusDomain

- (void)observeData:(id)a3
{
  v3.receiver = self;
  v3.super_class = STBackgroundActivitiesStatusDomain;
  [(STStatusDomain *)&v3 observeData:a3];
}

@end