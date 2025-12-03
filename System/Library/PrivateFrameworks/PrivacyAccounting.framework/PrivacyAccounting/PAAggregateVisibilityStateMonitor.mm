@interface PAAggregateVisibilityStateMonitor
- (PAAggregateVisibilityStateMonitor)initWithRawMonitor:(id)monitor startupInterval:(double)interval;
- (id)startMonitoringAggregateVisibilityStateForBundleIdentifiers:(id)identifiers onQueue:(id)queue withDelegate:(id)delegate;
@end

@implementation PAAggregateVisibilityStateMonitor

- (PAAggregateVisibilityStateMonitor)initWithRawMonitor:(id)monitor startupInterval:(double)interval
{
  monitorCopy = monitor;
  v12.receiver = self;
  v12.super_class = PAAggregateVisibilityStateMonitor;
  v8 = [(PAAggregateVisibilityStateMonitor *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rawMonitor, monitor);
    v9->_startupInterval = interval;
    v10 = v9;
  }

  return v9;
}

- (id)startMonitoringAggregateVisibilityStateForBundleIdentifiers:(id)identifiers onQueue:(id)queue withDelegate:(id)delegate
{
  identifiersCopy = identifiers;
  queueCopy = queue;
  delegateCopy = delegate;
  if ([identifiersCopy count])
  {
    v11 = [[PAAggregateVisibilityStateMonitorHandle alloc] initWithStartupInterval:queueCopy onQueue:delegateCopy delegate:self->_startupInterval];
    v12 = [(PAProcessStateMonitoring *)self->_rawMonitor startMonitoringVisibilityStateForBundleIdentifiers:identifiersCopy onQueue:queueCopy withDelegate:v11];
    [(PAAggregateVisibilityStateMonitorHandle *)v11 bindToRawHandle:v12];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end