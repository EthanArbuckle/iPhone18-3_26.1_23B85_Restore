@interface WorkoutSafetyCheckIn
- (void)onMessagesAppInstalled;
- (void)onMessagesAppUninstalled;
@end

@implementation WorkoutSafetyCheckIn

- (void)onMessagesAppInstalled
{
  v2 = self;
  WorkoutSafetyCheckIn.onMessagesAppInstalled()();
}

- (void)onMessagesAppUninstalled
{
  v2 = self;
  WorkoutSafetyCheckIn.onMessagesAppUninstalled()();
}

@end