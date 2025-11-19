@interface UsageAnalytics
- (UsageAnalytics)init;
@end

@implementation UsageAnalytics

- (UsageAnalytics)init
{
  v3 = +[AnalyticsWorkspace defaultWorkspace];
  v4 = +[LiveUsage entityName];
  v7.receiver = self;
  v7.super_class = UsageAnalytics;
  v5 = [(ObjectAnalytics *)&v7 initWithWorkspace:v3 entityName:v4 withCache:1];

  return v5;
}

@end