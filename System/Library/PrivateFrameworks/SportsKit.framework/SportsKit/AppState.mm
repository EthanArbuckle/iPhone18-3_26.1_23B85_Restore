@interface AppState
- (void)applicationDidEnterBackgroundNotification;
- (void)applicationWillEnterForegroundNotification;
- (void)applicationWillTerminate;
@end

@implementation AppState

- (void)applicationWillTerminate
{
  v2 = self;
  sub_26B6E0084("AppState - applicationWillTerminate");
}

- (void)applicationDidEnterBackgroundNotification
{
  v2 = self;
  sub_26B6E0084("AppState - applicationDidEnterBackgroundNotification");
}

- (void)applicationWillEnterForegroundNotification
{
  v2 = self;
  sub_26B6E0084("AppState - applicationWillEnterForegroundNotification");
}

@end