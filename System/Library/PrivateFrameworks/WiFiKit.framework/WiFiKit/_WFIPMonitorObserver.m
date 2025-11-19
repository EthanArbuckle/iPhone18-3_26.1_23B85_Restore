@interface _WFIPMonitorObserver
- (WFIPMonitor)ipMonitor;
@end

@implementation _WFIPMonitorObserver

- (WFIPMonitor)ipMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_ipMonitor);

  return WeakRetained;
}

@end