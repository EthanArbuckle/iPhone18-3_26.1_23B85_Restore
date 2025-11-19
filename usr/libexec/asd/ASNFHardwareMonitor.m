@interface ASNFHardwareMonitor
- (ASNFHardwareMonitor)init;
- (void)hardwareStateDidChange;
- (void)waitForNotification;
@end

@implementation ASNFHardwareMonitor

- (ASNFHardwareMonitor)init
{
  v3 = dispatch_semaphore_create(0);
  notified = self->_notified;
  self->_notified = v3;

  if (self->_notified)
  {
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)waitForNotification
{
  dsema = [(ASNFHardwareMonitor *)self notified];
  v2 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(dsema, v2);
}

- (void)hardwareStateDidChange
{
  v2 = [(ASNFHardwareMonitor *)self notified];
  dispatch_semaphore_signal(v2);
}

@end