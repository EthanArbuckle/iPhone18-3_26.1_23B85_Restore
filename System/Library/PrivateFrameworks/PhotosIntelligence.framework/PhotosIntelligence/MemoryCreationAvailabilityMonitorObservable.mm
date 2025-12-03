@interface MemoryCreationAvailabilityMonitorObservable
- (void)stateDidChangeWithMonitor:(id)monitor;
@end

@implementation MemoryCreationAvailabilityMonitorObservable

- (void)stateDidChangeWithMonitor:(id)monitor
{
  monitorCopy = monitor;

  sub_1C6F66FFC(monitorCopy);
}

@end