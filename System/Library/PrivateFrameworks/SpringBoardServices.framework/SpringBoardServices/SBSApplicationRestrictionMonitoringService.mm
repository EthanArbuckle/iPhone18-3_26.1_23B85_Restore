@interface SBSApplicationRestrictionMonitoringService
+ (id)registerMonitor:(id)monitor;
@end

@implementation SBSApplicationRestrictionMonitoringService

+ (id)registerMonitor:(id)monitor
{
  monitorCopy = monitor;
  v4 = [[SBSApplicationRestrictionMonitorProxy alloc] initWithMonitor:monitorCopy];

  return v4;
}

@end