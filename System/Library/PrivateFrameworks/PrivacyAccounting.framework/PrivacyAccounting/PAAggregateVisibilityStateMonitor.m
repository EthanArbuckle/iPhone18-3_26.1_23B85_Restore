@interface PAAggregateVisibilityStateMonitor
- (PAAggregateVisibilityStateMonitor)initWithRawMonitor:(id)a3 startupInterval:(double)a4;
- (id)startMonitoringAggregateVisibilityStateForBundleIdentifiers:(id)a3 onQueue:(id)a4 withDelegate:(id)a5;
@end

@implementation PAAggregateVisibilityStateMonitor

- (PAAggregateVisibilityStateMonitor)initWithRawMonitor:(id)a3 startupInterval:(double)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = PAAggregateVisibilityStateMonitor;
  v8 = [(PAAggregateVisibilityStateMonitor *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rawMonitor, a3);
    v9->_startupInterval = a4;
    v10 = v9;
  }

  return v9;
}

- (id)startMonitoringAggregateVisibilityStateForBundleIdentifiers:(id)a3 onQueue:(id)a4 withDelegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = [[PAAggregateVisibilityStateMonitorHandle alloc] initWithStartupInterval:v9 onQueue:v10 delegate:self->_startupInterval];
    v12 = [(PAProcessStateMonitoring *)self->_rawMonitor startMonitoringVisibilityStateForBundleIdentifiers:v8 onQueue:v9 withDelegate:v11];
    [(PAAggregateVisibilityStateMonitorHandle *)v11 bindToRawHandle:v12];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end