@interface DaemonServiceMatcher
- (BOOL)waitForService;
- (DaemonServiceMatcher)init;
@end

@implementation DaemonServiceMatcher

- (DaemonServiceMatcher)init
{
  v6.receiver = self;
  v6.super_class = DaemonServiceMatcher;
  v2 = [(TSDIOKServiceMatcher *)&v6 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    waitSemaphore = v2->_waitSemaphore;
    v2->_waitSemaphore = v3;
  }

  return v2;
}

- (BOOL)waitForService
{
  v3 = [IOKService serviceMatching:@"IOTimeSyncDaemonService"];
  v4 = [(TSDIOKServiceMatcher *)self startNotificationsWithMatchingDictionary:v3];

  if (!v4)
  {
    goto LABEL_5;
  }

  if (!dispatch_semaphore_wait(self->_waitSemaphore, 0xFFFFFFFFFFFFFFFFLL))
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    sub_10002CED0();
LABEL_5:
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end