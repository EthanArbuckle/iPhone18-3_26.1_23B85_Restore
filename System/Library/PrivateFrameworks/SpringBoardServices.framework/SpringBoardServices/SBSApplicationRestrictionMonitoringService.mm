@interface SBSApplicationRestrictionMonitoringService
+ (id)registerMonitor:(id)a3;
@end

@implementation SBSApplicationRestrictionMonitoringService

+ (id)registerMonitor:(id)a3
{
  v3 = a3;
  v4 = [[SBSApplicationRestrictionMonitorProxy alloc] initWithMonitor:v3];

  return v4;
}

@end