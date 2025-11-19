@interface BKWatchdogService
- (BKWatchdogService)init;
- (void)registerClientsForMonitoring;
@end

@implementation BKWatchdogService

- (void)registerClientsForMonitoring
{
  [(BKHIDSystemInterface *)self->_hidSystem registerWatchdog];
  tvOutController = self->_tvOutController;
  if (tvOutController)
  {
    workQueue = tvOutController->_workQueue;

    _wd_endpoint_add_queue(workQueue);
  }
}

- (BKWatchdogService)init
{
  v10.receiver = self;
  v10.super_class = BKWatchdogService;
  v2 = [(BKWatchdogService *)&v10 init];
  if (v2)
  {
    v3 = +[BKSystemShellSentinel sharedInstance];
    systemAppSentinel = v2->_systemAppSentinel;
    v2->_systemAppSentinel = v3;

    v5 = +[BKHIDSystemInterface sharedInstance];
    hidSystem = v2->_hidSystem;
    v2->_hidSystem = v5;

    v7 = sub_1000597A4();
    tvOutController = v2->_tvOutController;
    v2->_tvOutController = v7;
  }

  return v2;
}

@end