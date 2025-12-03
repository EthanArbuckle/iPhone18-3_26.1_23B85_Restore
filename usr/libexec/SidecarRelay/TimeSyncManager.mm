@interface TimeSyncManager
- (void)interruptedConnectionForClockManager:(id)manager;
@end

@implementation TimeSyncManager

- (void)interruptedConnectionForClockManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  sub_10006E6F0();
}

@end