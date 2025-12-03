@interface AppState
- (void)applicationDidEnterBackgroundNotification;
- (void)applicationWillEnterForegroundNotification;
- (void)applicationWillTerminate;
@end

@implementation AppState

- (void)applicationWillTerminate
{
  selfCopy = self;
  sub_26B6E0084("AppState - applicationWillTerminate");
}

- (void)applicationDidEnterBackgroundNotification
{
  selfCopy = self;
  sub_26B6E0084("AppState - applicationDidEnterBackgroundNotification");
}

- (void)applicationWillEnterForegroundNotification
{
  selfCopy = self;
  sub_26B6E0084("AppState - applicationWillEnterForegroundNotification");
}

@end